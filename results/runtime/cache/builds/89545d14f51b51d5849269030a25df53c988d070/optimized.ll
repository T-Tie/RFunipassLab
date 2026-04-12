; ModuleID = '<stdin>'
source_filename = "/tmp/tmp6qfz3a0a.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [9 x i8] c"%s\0A%s\0A%s\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %a = alloca [300 x i8], align 16
  %b = alloca [50 x i8], align 16
  %c = alloca [50 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 300, ptr nonnull %a) #6
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %b) #6
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %c) #6
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %a, ptr noundef nonnull %b, ptr noundef nonnull %c)
  %call4 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %b) #7
  %conv = trunc i64 %call4 to i32
  %call6 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %a) #7
  %conv7 = trunc i64 %call6 to i32
  %smax = call i32 @llvm.smax.i32(i32 %conv, i32 0)
  %smax28 = call i32 @llvm.smax.i32(i32 %conv7, i32 0)
  %wide.trip.count30 = zext nneg i32 %smax28 to i64
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond

for.cond:                                         ; preds = %for.inc20, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc20 ], [ 0, %entry ]
  %0 = phi i1 [ false, %for.inc20 ], [ true, %entry ]
  %exitcond31.not = icmp eq i64 %indvars.iv, %wide.trip.count30
  br i1 %exitcond31.not, label %for.end22, label %for.cond8

for.cond8:                                        ; preds = %for.cond, %for.inc
  %indvars.iv23 = phi i64 [ %indvars.iv.next24, %for.inc ], [ 0, %for.cond ]
  %indvars.iv21 = phi i64 [ %indvars.iv.next22, %for.inc ], [ %indvars.iv, %for.cond ]
  %exitcond.not = icmp eq i64 %indvars.iv23, %wide.trip.count
  br i1 %exitcond.not, label %for.cond25.preheader.loopexit, label %for.body10

for.body10:                                       ; preds = %for.cond8
  %arrayidx = getelementptr inbounds nuw [300 x i8], ptr %a, i64 0, i64 %indvars.iv21
  %1 = load i8, ptr %arrayidx, align 1, !tbaa !5
  %arrayidx13 = getelementptr inbounds nuw [50 x i8], ptr %b, i64 0, i64 %indvars.iv23
  %2 = load i8, ptr %arrayidx13, align 1, !tbaa !5
  %cmp15.not = icmp eq i8 %1, %2
  br i1 %cmp15.not, label %for.inc, label %for.inc20

for.inc:                                          ; preds = %for.body10
  %indvars.iv.next22 = add nuw nsw i64 %indvars.iv21, 1
  %indvars.iv.next24 = add nuw nsw i64 %indvars.iv23, 1
  br label %for.cond8, !llvm.loop !8

for.inc20:                                        ; preds = %for.body10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !11

for.end22:                                        ; preds = %for.cond
  br i1 %0, label %for.cond25.preheader, label %if.end36

for.cond25.preheader.loopexit:                    ; preds = %for.cond8
  %indvars29.le = trunc i64 %indvars.iv to i32
  br label %for.cond25.preheader

for.cond25.preheader:                             ; preds = %for.cond25.preheader.loopexit, %for.end22
  %i.02044 = phi i32 [ %smax28, %for.end22 ], [ %indvars29.le, %for.cond25.preheader.loopexit ]
  %add = add nsw i32 %i.02044, %conv
  %3 = zext nneg i32 %i.02044 to i64
  %smax39 = call i32 @llvm.smax.i32(i32 %i.02044, i32 %add)
  %4 = sub i32 %smax39, %i.02044
  %wide.trip.count40 = zext i32 %4 to i64
  br label %for.cond25

for.cond25:                                       ; preds = %for.cond25.preheader, %for.body27
  %indvars.iv34 = phi i64 [ 0, %for.cond25.preheader ], [ %indvars.iv.next35, %for.body27 ]
  %indvars.iv32 = phi i64 [ %3, %for.cond25.preheader ], [ %indvars.iv.next33, %for.body27 ]
  %exitcond41.not = icmp eq i64 %indvars.iv34, %wide.trip.count40
  br i1 %exitcond41.not, label %if.end36, label %for.body27

for.body27:                                       ; preds = %for.cond25
  %arrayidx29 = getelementptr inbounds nuw [50 x i8], ptr %c, i64 0, i64 %indvars.iv34
  %5 = load i8, ptr %arrayidx29, align 1, !tbaa !5
  %arrayidx31 = getelementptr inbounds nuw [300 x i8], ptr %a, i64 0, i64 %indvars.iv32
  store i8 %5, ptr %arrayidx31, align 1, !tbaa !5
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1
  %indvars.iv.next35 = add nuw nsw i64 %indvars.iv34, 1
  br label %for.cond25, !llvm.loop !12

if.end36:                                         ; preds = %for.cond25, %for.end22
  %call38 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef nonnull %a)
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %c) #6
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %b) #6
  call void @llvm.lifetime.end.p0(i64 300, ptr nonnull %a) #6
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

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
