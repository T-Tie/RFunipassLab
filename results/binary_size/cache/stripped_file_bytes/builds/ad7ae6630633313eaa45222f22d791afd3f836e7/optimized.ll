; ModuleID = '<stdin>'
source_filename = "/tmp/tmpwbm423v4.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"No\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%c=%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %p = alloca [300 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 300, ptr nonnull %p) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %p)
  %0 = load i8, ptr %p, align 16, !tbaa !5
  %cmp.not28 = icmp eq i8 %0, 0
  br i1 %cmp.not28, label %if.then20, label %for.body

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %1 = phi i8 [ %4, %for.body ], [ %0, %entry ]
  %a.030 = phi i32 [ %a.1, %for.body ], [ 0, %entry ]
  %2 = and i8 %1, -33
  %3 = add i8 %2, -65
  %or.cond27 = icmp ult i8 %3, 26
  %inc = zext i1 %or.cond27 to i32
  %a.1 = add nuw nsw i32 %a.030, %inc
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %arrayidx = getelementptr inbounds nuw [300 x i8], ptr %p, i64 0, i64 %indvars.iv.next
  %4 = load i8, ptr %arrayidx, align 1, !tbaa !5
  %cmp.not = icmp eq i8 %4, 0
  br i1 %cmp.not, label %for.end, label %for.body, !llvm.loop !8

for.end:                                          ; preds = %for.body
  %5 = icmp eq i32 %a.1, 0
  br i1 %5, label %if.then20, label %for.cond26.preheader

if.then20:                                        ; preds = %entry, %for.end
  %call21 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1)
  br label %if.end80

for.cond26.preheader:                             ; preds = %for.end, %for.inc48
  %indvars.iv45 = phi i32 [ %indvars.iv.next46, %for.inc48 ], [ 65, %for.end ]
  %6 = load i8, ptr %p, align 16, !tbaa !5
  %cmp30.not31 = icmp eq i8 %6, 0
  br i1 %cmp30.not31, label %for.inc48, label %for.body31

for.body31:                                       ; preds = %for.cond26.preheader, %for.body31
  %indvars.iv43 = phi i64 [ %indvars.iv.next44, %for.body31 ], [ 0, %for.cond26.preheader ]
  %7 = phi i8 [ %9, %for.body31 ], [ %6, %for.cond26.preheader ]
  %b.032 = phi i32 [ %spec.select, %for.body31 ], [ 0, %for.cond26.preheader ]
  %8 = zext i8 %7 to i32
  %cmp36 = icmp eq i32 %indvars.iv45, %8
  %inc38 = zext i1 %cmp36 to i32
  %spec.select = add nuw nsw i32 %b.032, %inc38
  %indvars.iv.next44 = add nuw nsw i64 %indvars.iv43, 1
  %arrayidx28 = getelementptr inbounds nuw [300 x i8], ptr %p, i64 0, i64 %indvars.iv.next44
  %9 = load i8, ptr %arrayidx28, align 1, !tbaa !5
  %cmp30.not = icmp eq i8 %9, 0
  br i1 %cmp30.not, label %for.end42, label %for.body31, !llvm.loop !11

for.end42:                                        ; preds = %for.body31
  %cmp43.not = icmp eq i32 %spec.select, 0
  br i1 %cmp43.not, label %for.inc48, label %if.then44

if.then44:                                        ; preds = %for.end42
  %call46 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %indvars.iv45, i32 noundef %spec.select)
  br label %for.inc48

for.inc48:                                        ; preds = %for.cond26.preheader, %for.end42, %if.then44
  %indvars.iv.next46 = add nuw nsw i32 %indvars.iv45, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next46, 91
  br i1 %exitcond.not, label %for.cond55.preheader, label %for.cond26.preheader, !llvm.loop !12

for.cond55.preheader:                             ; preds = %for.inc48, %for.inc77
  %indvars.iv50 = phi i32 [ %indvars.iv.next51, %for.inc77 ], [ 97, %for.inc48 ]
  %10 = load i8, ptr %p, align 16, !tbaa !5
  %cmp59.not37 = icmp eq i8 %10, 0
  br i1 %cmp59.not37, label %for.inc77, label %for.body60

for.body60:                                       ; preds = %for.cond55.preheader, %for.body60
  %indvars.iv48 = phi i64 [ %indvars.iv.next49, %for.body60 ], [ 0, %for.cond55.preheader ]
  %11 = phi i8 [ %13, %for.body60 ], [ %10, %for.cond55.preheader ]
  %b.238 = phi i32 [ %spec.select26, %for.body60 ], [ 0, %for.cond55.preheader ]
  %12 = zext i8 %11 to i32
  %cmp65 = icmp eq i32 %indvars.iv50, %12
  %inc67 = zext i1 %cmp65 to i32
  %spec.select26 = add nuw nsw i32 %b.238, %inc67
  %indvars.iv.next49 = add nuw nsw i64 %indvars.iv48, 1
  %arrayidx57 = getelementptr inbounds nuw [300 x i8], ptr %p, i64 0, i64 %indvars.iv.next49
  %13 = load i8, ptr %arrayidx57, align 1, !tbaa !5
  %cmp59.not = icmp eq i8 %13, 0
  br i1 %cmp59.not, label %for.end71, label %for.body60, !llvm.loop !13

for.end71:                                        ; preds = %for.body60
  %cmp72.not = icmp eq i32 %spec.select26, 0
  br i1 %cmp72.not, label %for.inc77, label %if.then73

if.then73:                                        ; preds = %for.end71
  %call75 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %indvars.iv50, i32 noundef %spec.select26)
  br label %for.inc77

for.inc77:                                        ; preds = %for.cond55.preheader, %for.end71, %if.then73
  %indvars.iv.next51 = add nuw nsw i32 %indvars.iv50, 1
  %exitcond53.not = icmp eq i32 %indvars.iv.next51, 123
  br i1 %exitcond53.not, label %if.end80, label %for.cond55.preheader, !llvm.loop !14

if.end80:                                         ; preds = %for.inc77, %if.then20
  call void @llvm.lifetime.end.p0(i64 300, ptr nonnull %p) #4
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
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = distinct !{!8, !9, !10}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!"llvm.loop.unroll.disable"}
!11 = distinct !{!11, !9, !10}
!12 = distinct !{!12, !9, !10}
!13 = distinct !{!13, !9, !10}
!14 = distinct !{!14, !9, !10}
