; ModuleID = '<stdin>'
source_filename = "/tmp/tmpovyyzfq6.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [7 x i8] c"%s%s%s\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %str = alloca [257 x i8], align 16
  %s = alloca [257 x i8], align 16
  %r = alloca [257 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 257, ptr noundef nonnull align 16 %str) #5
  call void @llvm.lifetime.start.p0(i64 noundef 257, ptr noundef nonnull align 16 %s) #5
  call void @llvm.lifetime.start.p0(i64 noundef 257, ptr noundef nonnull %r) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 16 %str, ptr noundef nonnull align 16 %s, ptr noundef nonnull %r)
  %call4 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %str) #7
  %call6 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %s) #7
  %conv7 = trunc i64 %call6 to i32
  %0 = load i8, ptr %s, align 16
  %smax = call range(i32 0, -2147483648) i32 @llvm.smax.i32(i32 %conv7, i32 noundef 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %while.cond

while.cond:                                       ; preds = %if.end30, %entry
  %indvars.iv20 = phi i32 [ %indvars.iv.next21, %if.end30 ], [ %conv7, %entry ]
  %indvars.iv15 = phi i32 [ %indvars.iv.next16, %if.end30 ], [ 0, %entry ]
  %indvars.iv9 = phi i64 [ %indvars.iv.next10, %if.end30 ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds nuw [257 x i8], ptr %str, i64 0, i64 %indvars.iv9
  %1 = load i8, ptr %arrayidx, align 1, !tbaa !5
  %cmp.not = icmp eq i8 %1, 0
  br i1 %cmp.not, label %if.else, label %while.body

while.body:                                       ; preds = %while.cond
  %cmp17 = icmp eq i8 %1, %0
  br i1 %cmp17, label %for.cond, label %if.end30

for.cond:                                         ; preds = %while.body, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %while.body ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %2 = add nuw nsw i64 %indvars.iv, %indvars.iv9
  %arrayidx20 = getelementptr inbounds nuw [257 x i8], ptr %str, i64 0, i64 %2
  %3 = load i8, ptr %arrayidx20, align 1, !tbaa !5, !invariant.load !8
  %arrayidx23 = getelementptr inbounds nuw [257 x i8], ptr %s, i64 0, i64 %indvars.iv
  %4 = load i8, ptr %arrayidx23, align 1, !tbaa !5, !invariant.load !8
  %cmp25.not = icmp eq i8 %3, %4
  br i1 %cmp25.not, label %for.inc, label %for.end.split.loop.exit28

for.inc:                                          ; preds = %for.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.end.split.loop.exit28:                        ; preds = %for.body
  %5 = trunc nuw nsw i64 %indvars.iv to i32
  br label %for.end

for.end:                                          ; preds = %for.cond, %for.end.split.loop.exit28
  %i.0.lcssa = phi i32 [ %5, %for.end.split.loop.exit28 ], [ %smax, %for.cond ]
  %cmp27 = icmp eq i32 %i.0.lcssa, %conv7
  br i1 %cmp27, label %for.cond33.preheader, label %if.end30

for.cond33.preheader:                             ; preds = %for.end
  %wide.trip.count18 = zext i32 %indvars.iv15 to i64
  br label %for.cond33

if.end30:                                         ; preds = %for.end, %while.body
  %indvars.iv.next10 = add nuw nsw i64 %indvars.iv9, 1
  %indvars.iv.next16 = add nuw i32 %indvars.iv15, 1
  %indvars.iv.next21 = add i32 %indvars.iv20, 1
  br label %while.cond, !llvm.loop !12

for.cond33:                                       ; preds = %for.cond33.preheader, %for.inc40
  %indvars.iv12 = phi i64 [ 0, %for.cond33.preheader ], [ %indvars.iv.next13, %for.inc40 ]
  %exitcond19.not = icmp eq i64 %indvars.iv12, %wide.trip.count18
  br i1 %exitcond19.not, label %for.end42, label %for.inc40

for.inc40:                                        ; preds = %for.cond33
  %arrayidx37 = getelementptr inbounds nuw [257 x i8], ptr %str, i64 0, i64 %indvars.iv12
  %6 = load i8, ptr %arrayidx37, align 1, !tbaa !5, !invariant.load !8
  %conv38 = sext i8 %6 to i32
  %putchar4 = call i32 @putchar(i32 noundef %conv38) #8
  %indvars.iv.next13 = add nuw nsw i64 %indvars.iv12, 1
  br label %for.cond33, !llvm.loop !13

for.end42:                                        ; preds = %for.cond33
  %call44 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef nonnull %r) #8
  %7 = sext i32 %indvars.iv20 to i64
  %sext = shl i64 %call4, 32
  %8 = ashr exact i64 %sext, 32
  br label %for.cond46

for.cond46:                                       ; preds = %for.inc53, %for.end42
  %indvars.iv23 = phi i64 [ %indvars.iv.next24, %for.inc53 ], [ %7, %for.end42 ]
  %cmp47 = icmp slt i64 %indvars.iv23, %8
  br i1 %cmp47, label %for.inc53, label %if.end58

for.inc53:                                        ; preds = %for.cond46
  %arrayidx50 = getelementptr inbounds [257 x i8], ptr %str, i64 0, i64 %indvars.iv23
  %9 = load i8, ptr %arrayidx50, align 1, !tbaa !5, !invariant.load !8
  %conv51 = sext i8 %9 to i32
  %putchar = call i32 @putchar(i32 noundef %conv51) #8
  %indvars.iv.next24 = add nsw i64 %indvars.iv23, 1
  br label %for.cond46, !llvm.loop !14

if.else:                                          ; preds = %while.cond
  %call57 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef nonnull %str) #8
  br label %if.end58

if.end58:                                         ; preds = %for.cond46, %if.else
  call void @llvm.lifetime.end.p0(i64 noundef 257, ptr noundef nonnull %r) #8
  call void @llvm.lifetime.end.p0(i64 noundef 257, ptr noundef nonnull %s) #8
  call void @llvm.lifetime.end.p0(i64 noundef 257, ptr noundef nonnull %str) #8
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
declare noundef i32 @putchar(i32 noundef) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind willreturn memory(read) }
attributes #8 = { nounwind }

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
