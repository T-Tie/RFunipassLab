; ModuleID = '<stdin>'
source_filename = "/tmp/tmpx5n6iwvr.cpp"
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
  %x = alloca double, align 8
  %a = alloca [500 x i8], align 16
  %b = alloca [500 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %x) #6
  call void @llvm.lifetime.start.p0(i64 500, ptr nonnull %a) #6
  call void @llvm.lifetime.start.p0(i64 500, ptr nonnull %b) #6
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %x)
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %a)
  %call3 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %b)
  %call5 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %a) #7
  %conv = trunc i64 %call5 to i32
  %call7 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %b) #7
  %conv8 = trunc i64 %call7 to i32
  %cmp23 = icmp sgt i32 %conv, 0
  br i1 %cmp23, label %for.body.preheader, label %for.end63

for.body.preheader:                               ; preds = %entry
  %wide.trip.count = and i64 %call5, 2147483647
  %min.iters.check = icmp samesign ult i64 %wide.trip.count, 4
  br i1 %min.iters.check, label %for.body.preheader40, label %vector.ph

vector.ph:                                        ; preds = %for.body.preheader
  %n.vec = and i64 %call5, 2147483644
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %4, %vector.body ]
  %0 = getelementptr inbounds nuw [500 x i8], ptr %a, i64 0, i64 %index
  %wide.load = load <4 x i8>, ptr %0, align 4, !tbaa !5
  %1 = getelementptr inbounds nuw [500 x i8], ptr %b, i64 0, i64 %index
  %wide.load39 = load <4 x i8>, ptr %1, align 4, !tbaa !5
  %2 = icmp eq <4 x i8> %wide.load, %wide.load39
  %3 = zext <4 x i1> %2 to <4 x i32>
  %4 = add <4 x i32> %vec.phi, %3
  %index.next = add nuw i64 %index, 4
  %5 = icmp eq i64 %index.next, %n.vec
  br i1 %5, label %middle.block, label %vector.body, !llvm.loop !8

middle.block:                                     ; preds = %vector.body
  %6 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %4)
  %cmp.n = icmp eq i64 %wide.trip.count, %n.vec
  br i1 %cmp.n, label %for.body17.preheader, label %for.body.preheader40

for.body.preheader40:                             ; preds = %for.body.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %for.body.preheader ], [ %n.vec, %middle.block ]
  %e.024.ph = phi i32 [ 0, %for.body.preheader ], [ %6, %middle.block ]
  br label %for.body

for.body17.preheader:                             ; preds = %for.body, %middle.block
  %spec.select.lcssa = phi i32 [ %6, %middle.block ], [ %spec.select, %for.body ]
  %7 = uitofp nneg i32 %spec.select.lcssa to double
  %wide.trip.count34 = and i64 %call5, 2147483647
  br label %for.body17

for.body:                                         ; preds = %for.body.preheader40, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ %indvars.iv.ph, %for.body.preheader40 ]
  %e.024 = phi i32 [ %spec.select, %for.body ], [ %e.024.ph, %for.body.preheader40 ]
  %arrayidx = getelementptr inbounds nuw [500 x i8], ptr %a, i64 0, i64 %indvars.iv
  %8 = load i8, ptr %arrayidx, align 1, !tbaa !5
  %arrayidx11 = getelementptr inbounds nuw [500 x i8], ptr %b, i64 0, i64 %indvars.iv
  %9 = load i8, ptr %arrayidx11, align 1, !tbaa !5
  %cmp13 = icmp eq i8 %8, %9
  %inc = zext i1 %cmp13 to i32
  %spec.select = add nuw nsw i32 %e.024, %inc
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.body17.preheader, label %for.body, !llvm.loop !13

for.body17:                                       ; preds = %for.body17.preheader, %for.inc61
  %indvars.iv31 = phi i64 [ 0, %for.body17.preheader ], [ %indvars.iv.next32, %for.inc61 ]
  %m.027 = phi i32 [ 0, %for.body17.preheader ], [ %m.2, %for.inc61 ]
  %arrayidx19 = getelementptr inbounds nuw [500 x i8], ptr %a, i64 0, i64 %indvars.iv31
  %10 = load i8, ptr %arrayidx19, align 1, !tbaa !5
  switch i8 %10, label %if.end38 [
    i8 65, label %if.then36
    i8 84, label %if.then36
    i8 67, label %if.then36
    i8 71, label %if.then36
  ]

if.then36:                                        ; preds = %for.body17, %for.body17, %for.body17, %for.body17
  %inc37 = add nsw i32 %m.027, 1
  br label %if.end38

if.end38:                                         ; preds = %for.body17, %if.then36
  %m.1 = phi i32 [ %inc37, %if.then36 ], [ %m.027, %for.body17 ]
  %arrayidx40 = getelementptr inbounds nuw [500 x i8], ptr %b, i64 0, i64 %indvars.iv31
  %11 = load i8, ptr %arrayidx40, align 1, !tbaa !5
  switch i8 %11, label %for.inc61 [
    i8 65, label %if.then58
    i8 84, label %if.then58
    i8 67, label %if.then58
    i8 71, label %if.then58
  ]

if.then58:                                        ; preds = %if.end38, %if.end38, %if.end38, %if.end38
  %inc59 = add nsw i32 %m.1, 1
  br label %for.inc61

for.inc61:                                        ; preds = %if.end38, %if.then58
  %m.2 = phi i32 [ %inc59, %if.then58 ], [ %m.1, %if.end38 ]
  %indvars.iv.next32 = add nuw nsw i64 %indvars.iv31, 1
  %exitcond35.not = icmp eq i64 %indvars.iv.next32, %wide.trip.count34
  br i1 %exitcond35.not, label %for.end63, label %for.body17, !llvm.loop !14

for.end63:                                        ; preds = %for.inc61, %entry
  %e.0.lcssa37 = phi double [ 0.000000e+00, %entry ], [ %7, %for.inc61 ]
  %m.0.lcssa = phi i32 [ 0, %entry ], [ %m.2, %for.inc61 ]
  %conv65 = sitofp i32 %conv to double
  %div = fdiv double %e.0.lcssa37, %conv65
  %cmp66 = icmp eq i32 %conv, %conv8
  %add = add nsw i32 %conv8, %conv
  %cmp67 = icmp eq i32 %m.0.lcssa, %add
  %or.cond = select i1 %cmp66, i1 %cmp67, i1 false
  br i1 %or.cond, label %if.then68, label %if.end79.sink.split

if.then68:                                        ; preds = %for.end63
  %12 = load double, ptr %x, align 8, !tbaa !15
  %cmp69 = fcmp ult double %div, %12
  br i1 %cmp69, label %if.else, label %if.end79.sink.split

if.else:                                          ; preds = %if.then68
  %cmp72 = fcmp olt double %div, %12
  br i1 %cmp72, label %if.end79.sink.split, label %if.end79

if.end79.sink.split:                              ; preds = %for.end63, %if.else, %if.then68
  %.str.2.sink = phi ptr [ @.str.2, %if.then68 ], [ @.str.3, %if.else ], [ @.str.4, %for.end63 ]
  %call71 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %.str.2.sink)
  br label %if.end79

if.end79:                                         ; preds = %if.end79.sink.split, %if.else
  call void @llvm.lifetime.end.p0(i64 500, ptr nonnull %b) #6
  call void @llvm.lifetime.end.p0(i64 500, ptr nonnull %a) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %x) #6
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
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #5

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
!8 = distinct !{!8, !9, !10, !11, !12}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!"llvm.loop.unroll.disable"}
!11 = !{!"llvm.loop.isvectorized", i32 1}
!12 = !{!"llvm.loop.unroll.runtime.disable"}
!13 = distinct !{!13, !9, !10, !11}
!14 = distinct !{!14, !9, !10}
!15 = !{!16, !16, i64 0}
!16 = !{!"double", !6, i64 0}
