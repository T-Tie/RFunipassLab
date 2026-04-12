; ModuleID = '<stdin>'
source_filename = "/tmp/tmpjoeiciju.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [4 x i8] c"%lf\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"error\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %dna1 = alloca [500 x i8], align 16
  %dna2 = alloca [500 x i8], align 16
  %a = alloca double, align 8
  call void @llvm.lifetime.start.p0(i64 noundef 500, ptr noundef nonnull align 16 %dna1) #5
  call void @llvm.lifetime.start.p0(i64 noundef 500, ptr noundef nonnull align 16 %dna2) #5
  call void @llvm.lifetime.start.p0(i64 noundef 8, ptr noundef nonnull align 8 %a) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 8 %a)
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %dna1)
  %call3 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %dna2)
  %call5 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %dna1) #6
  %conv = trunc i64 %call5 to i32
  %call7 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %dna2) #6
  %conv8 = trunc i64 %call7 to i32
  %cmp = icmp eq i32 %conv, %conv8
  br i1 %cmp, label %for.cond.preheader, label %if.end127.sink.split

for.cond.preheader:                               ; preds = %entry
  %smax = call i32 @llvm.smax.i32(i32 %conv, i32 noundef 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond

for.cond:                                         ; preds = %for.cond.preheader, %for.inc
  %indvars.iv = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next, %for.inc ]
  %t.0 = phi i32 [ 0, %for.cond.preheader ], [ %t.4, %for.inc ]
  %exitcond.not.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not.not, label %if.then107, label %for.body

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [500 x i8], ptr %dna1, i64 0, i64 %indvars.iv
  %0 = load i8, ptr %arrayidx, align 1, !tbaa !5, !invariant.load !8
  switch i8 %0, label %if.end63 [
    i8 65, label %land.lhs.true
    i8 84, label %land.lhs.true
    i8 71, label %land.lhs.true
    i8 67, label %land.lhs.true
  ]

land.lhs.true:                                    ; preds = %for.body, %for.body, %for.body, %for.body
  %arrayidx27 = getelementptr inbounds nuw [500 x i8], ptr %dna2, i64 0, i64 %indvars.iv
  %1 = load i8, ptr %arrayidx27, align 1, !tbaa !5, !invariant.load !8
  switch i8 %1, label %if.end63 [
    i8 65, label %if.then45
    i8 84, label %if.then45
    i8 71, label %if.then45
    i8 67, label %if.then45
  ]

if.then45:                                        ; preds = %land.lhs.true, %land.lhs.true, %land.lhs.true, %land.lhs.true
  %cmp52 = icmp eq i8 %0, %1
  %inc = zext i1 %cmp52 to i32
  %spec.select = add nsw i32 %inc, %t.0
  br i1 %cmp52, label %if.end63, label %for.inc

if.end63:                                         ; preds = %land.lhs.true, %for.body, %if.then45
  %t.2 = phi i32 [ %spec.select, %if.then45 ], [ %t.0, %for.body ], [ %t.0, %land.lhs.true ]
  switch i8 %0, label %if.end127.sink.split [
    i8 65, label %lor.lhs.false83
    i8 84, label %lor.lhs.false83
    i8 71, label %lor.lhs.false83
    i8 67, label %lor.lhs.false83
  ]

lor.lhs.false83:                                  ; preds = %if.end63, %if.end63, %if.end63, %if.end63
  %arrayidx85 = getelementptr inbounds nuw [500 x i8], ptr %dna2, i64 0, i64 %indvars.iv
  %2 = load i8, ptr %arrayidx85, align 1, !tbaa !5
  switch i8 %2, label %if.end127.sink.split [
    i8 65, label %for.inc
    i8 84, label %for.inc
    i8 71, label %for.inc
    i8 67, label %for.inc
  ]

for.inc:                                          ; preds = %lor.lhs.false83, %lor.lhs.false83, %lor.lhs.false83, %lor.lhs.false83, %if.then45
  %t.4 = phi i32 [ %spec.select, %if.then45 ], [ %t.2, %lor.lhs.false83 ], [ %t.2, %lor.lhs.false83 ], [ %t.2, %lor.lhs.false83 ], [ %t.2, %lor.lhs.false83 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

if.then107:                                       ; preds = %for.cond
  %conv108 = sitofp i32 %t.0 to double
  %conv109 = sitofp i32 %conv to double
  %div = fdiv double %conv108, %conv109
  %3 = load double, ptr %a, align 8, !tbaa !12
  %cmp110 = fcmp ogt double %div, %3
  br i1 %cmp110, label %if.then111, label %if.end113

if.then111:                                       ; preds = %if.then107
  %call112 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2)
  %.pre = load double, ptr %a, align 8, !tbaa !12
  br label %if.end113

if.end113:                                        ; preds = %if.then111, %if.then107
  %4 = phi double [ %.pre, %if.then111 ], [ %3, %if.then107 ]
  %cmp114 = fcmp ugt double %div, %4
  br i1 %cmp114, label %if.end127, label %if.then115

if.then115:                                       ; preds = %if.end113
  %call116 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3)
  br label %if.end127

if.end127.sink.split:                             ; preds = %lor.lhs.false83, %if.end63, %entry
  %call12240 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4)
  br label %if.end127

if.end127:                                        ; preds = %if.then115, %if.end113, %if.end127.sink.split
  call void @llvm.lifetime.end.p0(i64 noundef 8, ptr noundef nonnull %a) #7
  call void @llvm.lifetime.end.p0(i64 noundef 500, ptr noundef nonnull %dna2) #7
  call void @llvm.lifetime.end.p0(i64 noundef 500, ptr noundef nonnull %dna1) #7
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

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nofree nounwind willreturn }
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
!12 = !{!13, !13, i64 0}
!13 = !{!"double", !6, i64 0}
