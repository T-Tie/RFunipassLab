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
  call void @llvm.lifetime.start.p0(i64 501, ptr nonnull %dna1) #5
  call void @llvm.lifetime.start.p0(i64 501, ptr nonnull %dna2) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rate) #5
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
  %indvars36.le = trunc i64 %indvars.iv to i32
  br label %for.cond19

for.cond19:                                       ; preds = %if.then43, %for.end
  %indvars.iv39 = phi i64 [ %indvars.iv.next40, %if.then43 ], [ 0, %for.end ]
  %arrayidx21 = getelementptr inbounds nuw [501 x i8], ptr %dna2, i64 0, i64 %indvars.iv39
  %1 = load i8, ptr %arrayidx21, align 1, !tbaa !5
  switch i8 %1, label %if.end80 [
    i8 0, label %for.end49
    i8 65, label %if.then43
    i8 84, label %if.then43
    i8 71, label %if.then43
    i8 67, label %if.then43
  ]

if.then43:                                        ; preds = %for.cond19, %for.cond19, %for.cond19, %for.cond19
  %indvars.iv.next40 = add nuw nsw i64 %indvars.iv39, 1
  br label %for.cond19, !llvm.loop !11

for.end49:                                        ; preds = %for.cond19
  %indvars41 = trunc i64 %indvars.iv39 to i32
  %cmp50 = icmp ne i32 %indvars36.le, %indvars41
  %or.cond = or i1 %cmp52, %cmp50
  br i1 %or.cond, label %if.end80, label %for.cond56.preheader

for.cond56.preheader:                             ; preds = %for.end49
  %cmp5729.not = icmp eq i32 %indvars36.le, 0
  br i1 %cmp5729.not, label %for.end71, label %for.body58.preheader

for.body58.preheader:                             ; preds = %for.cond56.preheader
  %wide.trip.count = and i64 %indvars.iv, 4294967295
  %min.iters.check = icmp samesign ult i64 %wide.trip.count, 4
  br i1 %min.iters.check, label %for.body58.preheader60, label %vector.ph

vector.ph:                                        ; preds = %for.body58.preheader
  %n.vec = and i64 %indvars.iv, 4294967292
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %6, %vector.body ]
  %2 = getelementptr inbounds nuw [501 x i8], ptr %dna1, i64 0, i64 %index
  %wide.load = load <4 x i8>, ptr %2, align 4, !tbaa !5
  %3 = getelementptr inbounds nuw [501 x i8], ptr %dna2, i64 0, i64 %index
  %wide.load59 = load <4 x i8>, ptr %3, align 4, !tbaa !5
  %4 = icmp eq <4 x i8> %wide.load, %wide.load59
  %5 = zext <4 x i1> %4 to <4 x i32>
  %6 = add <4 x i32> %vec.phi, %5
  %index.next = add nuw i64 %index, 4
  %7 = icmp eq i64 %index.next, %n.vec
  br i1 %7, label %middle.block, label %vector.body, !llvm.loop !12

middle.block:                                     ; preds = %vector.body
  %8 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %6)
  %cmp.n = icmp eq i64 %wide.trip.count, %n.vec
  br i1 %cmp.n, label %for.end71.loopexit, label %for.body58.preheader60

for.body58.preheader60:                           ; preds = %for.body58.preheader, %middle.block
  %indvars.iv44.ph = phi i64 [ 0, %for.body58.preheader ], [ %n.vec, %middle.block ]
  %len.030.ph = phi i32 [ 0, %for.body58.preheader ], [ %8, %middle.block ]
  br label %for.body58

for.body58:                                       ; preds = %for.body58.preheader60, %for.body58
  %indvars.iv44 = phi i64 [ %indvars.iv.next45, %for.body58 ], [ %indvars.iv44.ph, %for.body58.preheader60 ]
  %len.030 = phi i32 [ %spec.select, %for.body58 ], [ %len.030.ph, %for.body58.preheader60 ]
  %arrayidx60 = getelementptr inbounds nuw [501 x i8], ptr %dna1, i64 0, i64 %indvars.iv44
  %9 = load i8, ptr %arrayidx60, align 1, !tbaa !5
  %arrayidx63 = getelementptr inbounds nuw [501 x i8], ptr %dna2, i64 0, i64 %indvars.iv44
  %10 = load i8, ptr %arrayidx63, align 1, !tbaa !5
  %cmp65 = icmp eq i8 %9, %10
  %inc67 = zext i1 %cmp65 to i32
  %spec.select = add nuw nsw i32 %len.030, %inc67
  %indvars.iv.next45 = add nuw nsw i64 %indvars.iv44, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next45, %wide.trip.count
  br i1 %exitcond.not, label %for.end71.loopexit, label %for.body58, !llvm.loop !15

for.end71.loopexit:                               ; preds = %for.body58, %middle.block
  %spec.select.lcssa = phi i32 [ %8, %middle.block ], [ %spec.select, %for.body58 ]
  %11 = uitofp nneg i32 %spec.select.lcssa to double
  br label %for.end71

for.end71:                                        ; preds = %for.end71.loopexit, %for.cond56.preheader
  %len.0.lcssa = phi double [ 0.000000e+00, %for.cond56.preheader ], [ %11, %for.end71.loopexit ]
  %conv73 = uitofp nneg i32 %indvars36.le to double
  %div = fdiv double %len.0.lcssa, %conv73
  %12 = load double, ptr %rate, align 8, !tbaa !16
  %cmp74 = fcmp ogt double %div, %12
  %.str.2..str.3 = select i1 %cmp74, ptr @.str.2, ptr @.str.3
  br label %if.end80

if.end80:                                         ; preds = %for.cond19, %for.end71, %for.end49
  %.str.2.sink = phi ptr [ @.str.1, %for.end49 ], [ %.str.2..str.3, %for.end71 ], [ @.str.1, %for.cond19 ]
  %call76 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %.str.2.sink)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rate) #5
  call void @llvm.lifetime.end.p0(i64 501, ptr nonnull %dna2) #5
  call void @llvm.lifetime.end.p0(i64 501, ptr nonnull %dna1) #5
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

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
!12 = distinct !{!12, !9, !10, !13, !14}
!13 = !{!"llvm.loop.isvectorized", i32 1}
!14 = !{!"llvm.loop.unroll.runtime.disable"}
!15 = distinct !{!15, !9, !10, !13}
!16 = !{!17, !17, i64 0}
!17 = !{!"double", !6, i64 0}
