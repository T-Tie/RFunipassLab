; ModuleID = '<stdin>'
source_filename = "/tmp/tmp4z3g1pdi.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [8 x i8] c"%lf%s%s\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"no\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %dna1 = alloca [501 x i8], align 16
  %dna2 = alloca [501 x i8], align 16
  %rate = alloca double, align 8
  call void @llvm.lifetime.start.p0(i64 501, ptr nonnull %dna1) #4
  call void @llvm.lifetime.start.p0(i64 501, ptr nonnull %dna2) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rate) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %rate, ptr noundef nonnull %dna1, ptr noundef nonnull %dna2)
  br label %for.cond

for.cond:                                         ; preds = %if.then, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.then ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds nuw [501 x i8], ptr %dna1, i64 0, i64 %indvars.iv
  %0 = load i8, ptr %arrayidx, align 1, !tbaa !5
  switch i8 %0, label %for.end [
    i8 0, label %for.end.loopexit
    i8 65, label %if.then
    i8 84, label %if.then
    i8 71, label %if.then
    i8 67, label %if.then
  ]

if.then:                                          ; preds = %for.cond, %for.cond, %for.cond, %for.cond
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !8

for.end.loopexit:                                 ; preds = %for.cond
  br label %for.end

for.end:                                          ; preds = %for.cond, %for.end.loopexit
  %cmp52 = phi i1 [ false, %for.end.loopexit ], [ true, %for.cond ]
  %indvars33.le = trunc i64 %indvars.iv to i32
  br label %for.cond19

for.cond19:                                       ; preds = %if.then43, %for.end
  %indvars.iv36 = phi i64 [ %indvars.iv.next37, %if.then43 ], [ 0, %for.end ]
  %arrayidx21 = getelementptr inbounds nuw [501 x i8], ptr %dna2, i64 0, i64 %indvars.iv36
  %1 = load i8, ptr %arrayidx21, align 1, !tbaa !5
  switch i8 %1, label %if.end80 [
    i8 0, label %for.end49
    i8 65, label %if.then43
    i8 84, label %if.then43
    i8 71, label %if.then43
    i8 67, label %if.then43
  ]

if.then43:                                        ; preds = %for.cond19, %for.cond19, %for.cond19, %for.cond19
  %indvars.iv.next37 = add nuw nsw i64 %indvars.iv36, 1
  br label %for.cond19, !llvm.loop !11

for.end49:                                        ; preds = %for.cond19
  %indvars38 = trunc i64 %indvars.iv36 to i32
  %cmp50 = icmp ne i32 %indvars33.le, %indvars38
  %or.cond = or i1 %cmp52, %cmp50
  br i1 %or.cond, label %if.end80, label %for.cond56.preheader

for.cond56.preheader:                             ; preds = %for.end49
  %wide.trip.count = and i64 %indvars.iv, 4294967295
  br label %for.cond56

for.cond56:                                       ; preds = %for.cond56.preheader, %for.body58
  %indvars.iv41 = phi i64 [ 0, %for.cond56.preheader ], [ %indvars.iv.next42, %for.body58 ]
  %len.0 = phi i32 [ 0, %for.cond56.preheader ], [ %spec.select, %for.body58 ]
  %exitcond.not = icmp eq i64 %indvars.iv41, %wide.trip.count
  br i1 %exitcond.not, label %for.end71, label %for.body58

for.body58:                                       ; preds = %for.cond56
  %arrayidx60 = getelementptr inbounds nuw [501 x i8], ptr %dna1, i64 0, i64 %indvars.iv41
  %2 = load i8, ptr %arrayidx60, align 1, !tbaa !5
  %arrayidx63 = getelementptr inbounds nuw [501 x i8], ptr %dna2, i64 0, i64 %indvars.iv41
  %3 = load i8, ptr %arrayidx63, align 1, !tbaa !5
  %cmp65 = icmp eq i8 %2, %3
  %inc67 = zext i1 %cmp65 to i32
  %spec.select = add nuw nsw i32 %len.0, %inc67
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1
  br label %for.cond56, !llvm.loop !12

for.end71:                                        ; preds = %for.cond56
  %conv72 = uitofp nneg i32 %len.0 to double
  %conv73 = uitofp nneg i32 %indvars33.le to double
  %div = fdiv double %conv72, %conv73
  %4 = load double, ptr %rate, align 8, !tbaa !13
  %cmp74 = fcmp ogt double %div, %4
  %.str.2..str.3 = select i1 %cmp74, ptr @.str.2, ptr @.str.3
  br label %if.end80

if.end80:                                         ; preds = %for.cond19, %for.end71, %for.end49
  %.str.2.sink = phi ptr [ @.str.1, %for.end49 ], [ %.str.2..str.3, %for.end71 ], [ @.str.1, %for.cond19 ]
  %call76 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %.str.2.sink)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rate) #4
  call void @llvm.lifetime.end.p0(i64 501, ptr nonnull %dna2) #4
  call void @llvm.lifetime.end.p0(i64 501, ptr nonnull %dna1) #4
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
!13 = !{!14, !14, i64 0}
!14 = !{!"double", !6, i64 0}
