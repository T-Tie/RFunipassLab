; ModuleID = '<stdin>'
source_filename = "/tmp/tmplrqaud1a.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%c\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %q = alloca [256 x i8], align 16
  %p = alloca [256 x i8], align 16
  %w = alloca [256 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 256, ptr noundef nonnull align 16 %q) #4
  call void @llvm.lifetime.start.p0(i64 noundef 256, ptr noundef nonnull align 16 %p) #4
  call void @llvm.lifetime.start.p0(i64 noundef 256, ptr noundef nonnull %w) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 16 %q)
  %call2 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %p)
  %call4 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %w)
  %call6 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %q) #6
  %conv = trunc i64 %call6 to i32
  %call8 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %p) #6
  %conv9 = trunc i64 %call8 to i32
  %0 = load i8, ptr %p, align 16
  %smax = call i32 @llvm.smax.i32(i32 %conv9, i32 1)
  %smax29 = call i32 @llvm.smax.i32(i32 %conv, i32 0)
  %wide.trip.count30 = zext nneg i32 %smax29 to i64
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond

for.cond:                                         ; preds = %if.end28, %entry
  %indvars.iv40 = phi i32 [ %indvars.iv.next41, %if.end28 ], [ %conv9, %entry ]
  %indvars.iv26 = phi i64 [ %indvars.iv.next27, %if.end28 ], [ 0, %entry ]
  %g.0 = phi i32 [ %g.1, %if.end28 ], [ undef, %entry ]
  %exitcond31.not = icmp eq i64 %indvars.iv26, %wide.trip.count30
  br i1 %exitcond31.not, label %if.else, label %for.body

for.body:                                         ; preds = %for.cond
  %arrayidx11 = getelementptr inbounds nuw [256 x i8], ptr %q, i64 0, i64 %indvars.iv26
  %1 = load i8, ptr %arrayidx11, align 1, !tbaa !5, !invariant.load !8
  %cmp13 = icmp eq i8 %0, %1
  br i1 %cmp13, label %for.cond14, label %if.end28

for.cond14:                                       ; preds = %for.body, %for.body16
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body16 ], [ 1, %for.body ]
  %g.2 = phi i32 [ %spec.select, %for.body16 ], [ %g.0, %for.body ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body16

for.body16:                                       ; preds = %for.cond14
  %arrayidx18 = getelementptr inbounds nuw [256 x i8], ptr %p, i64 0, i64 %indvars.iv
  %2 = load i8, ptr %arrayidx18, align 1, !tbaa !5, !invariant.load !8
  %3 = add nuw nsw i64 %indvars.iv, %indvars.iv26
  %arrayidx21 = getelementptr inbounds nuw [256 x i8], ptr %q, i64 0, i64 %3
  %4 = load i8, ptr %arrayidx21, align 1, !tbaa !5, !invariant.load !8
  %cmp23.not = icmp eq i8 %2, %4
  %spec.select = zext i1 %cmp23.not to i32
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond14, !llvm.loop !9

for.end:                                          ; preds = %for.cond14
  %cmp25 = icmp eq i32 %g.2, 1
  br i1 %cmp25, label %for.cond33.preheader, label %if.end28

for.cond33.preheader:                             ; preds = %for.end
  %wide.trip.count38 = and i64 %indvars.iv26, 4294967295
  br label %for.cond33

if.end28:                                         ; preds = %for.end, %for.body
  %g.1 = phi i32 [ %g.0, %for.body ], [ %g.2, %for.end ]
  %indvars.iv.next27 = add nuw nsw i64 %indvars.iv26, 1
  %indvars.iv.next41 = add i32 %indvars.iv40, 1
  br label %for.cond, !llvm.loop !12

for.cond33:                                       ; preds = %for.cond33.preheader, %for.body35
  %indvars.iv32 = phi i64 [ 0, %for.cond33.preheader ], [ %indvars.iv.next33, %for.body35 ]
  %exitcond39.not = icmp eq i64 %indvars.iv32, %wide.trip.count38
  br i1 %exitcond39.not, label %for.end42, label %for.body35

for.body35:                                       ; preds = %for.cond33
  %arrayidx37 = getelementptr inbounds nuw [256 x i8], ptr %q, i64 0, i64 %indvars.iv32
  %5 = load i8, ptr %arrayidx37, align 1, !tbaa !5
  %conv38 = sext i8 %5 to i32
  %putchar21 = call i32 @putchar(i32 %conv38)
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1
  br label %for.cond33, !llvm.loop !13

for.end42:                                        ; preds = %for.cond33
  %call44 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull %w)
  %6 = sext i32 %indvars.iv40 to i64
  %sext = shl i64 %call6, 32
  %7 = ashr exact i64 %sext, 32
  br label %for.cond46

for.cond46:                                       ; preds = %for.body48, %for.end42
  %indvars.iv43 = phi i64 [ %indvars.iv.next44, %for.body48 ], [ %6, %for.end42 ]
  %cmp47 = icmp slt i64 %indvars.iv43, %7
  br i1 %cmp47, label %for.body48, label %if.end58

for.body48:                                       ; preds = %for.cond46
  %arrayidx50 = getelementptr inbounds [256 x i8], ptr %q, i64 0, i64 %indvars.iv43
  %8 = load i8, ptr %arrayidx50, align 1, !tbaa !5
  %conv51 = sext i8 %8 to i32
  %putchar = call i32 @putchar(i32 %conv51)
  %indvars.iv.next44 = add nsw i64 %indvars.iv43, 1
  br label %for.cond46, !llvm.loop !14

if.else:                                          ; preds = %for.cond
  %call57 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull %q)
  br label %if.end58

if.end58:                                         ; preds = %for.cond46, %if.else
  call void @llvm.lifetime.end.p0(i64 noundef 256, ptr noundef nonnull %w) #7
  call void @llvm.lifetime.end.p0(i64 noundef 256, ptr noundef nonnull %p) #7
  call void @llvm.lifetime.end.p0(i64 noundef 256, ptr noundef nonnull %q) #7
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) local_unnamed_addr #3

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind willreturn memory(read) }
attributes #7 = { nounwind }

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
!8 = !{}
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !10, !11}
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
