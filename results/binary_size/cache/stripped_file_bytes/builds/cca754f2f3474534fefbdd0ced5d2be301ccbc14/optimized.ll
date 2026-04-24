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
  call void @llvm.lifetime.start.p0(i64 noundef 8, ptr noundef nonnull align 8 %x) #5
  call void @llvm.lifetime.start.p0(i64 noundef 500, ptr noundef nonnull align 16 %a) #5
  call void @llvm.lifetime.start.p0(i64 noundef 500, ptr noundef nonnull align 16 %b) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 8 %x)
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %a)
  %call3 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %b)
  %call5 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %a) #6
  %conv = trunc i64 %call5 to i32
  %call7 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %b) #6
  %smax = call i32 @llvm.smax.i32(i32 %conv, i32 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %e.0 = phi i32 [ %spec.select, %for.body ], [ 0, %entry ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.cond15.preheader, label %for.body

for.cond15.preheader:                             ; preds = %for.cond
  br label %for.cond15

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [500 x i8], ptr %a, i64 0, i64 %indvars.iv
  %0 = load i8, ptr %arrayidx, align 1, !tbaa !5, !invariant.load !8
  %arrayidx11 = getelementptr inbounds nuw [500 x i8], ptr %b, i64 0, i64 %indvars.iv
  %1 = load i8, ptr %arrayidx11, align 1, !tbaa !5, !invariant.load !8
  %cmp13 = icmp eq i8 %0, %1
  %inc = zext i1 %cmp13 to i32
  %spec.select = add nuw nsw i32 %e.0, %inc
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.cond15:                                       ; preds = %for.cond15.preheader, %for.inc61
  %indvars.iv9 = phi i64 [ 0, %for.cond15.preheader ], [ %indvars.iv.next10, %for.inc61 ]
  %m.0 = phi i32 [ 0, %for.cond15.preheader ], [ %m.2, %for.inc61 ]
  %exitcond13.not = icmp eq i64 %indvars.iv9, %wide.trip.count
  br i1 %exitcond13.not, label %for.end63, label %for.body17

for.body17:                                       ; preds = %for.cond15
  %arrayidx19 = getelementptr inbounds nuw [500 x i8], ptr %a, i64 0, i64 %indvars.iv9
  %2 = load i8, ptr %arrayidx19, align 1, !tbaa !5, !invariant.load !8
  switch i8 %2, label %if.end38 [
    i8 65, label %if.then36
    i8 84, label %if.then36
    i8 67, label %if.then36
    i8 71, label %if.then36
  ]

if.then36:                                        ; preds = %for.body17, %for.body17, %for.body17, %for.body17
  %inc37 = add nsw i32 %m.0, 1
  br label %if.end38

if.end38:                                         ; preds = %for.body17, %if.then36
  %m.1 = phi i32 [ %inc37, %if.then36 ], [ %m.0, %for.body17 ]
  %arrayidx40 = getelementptr inbounds nuw [500 x i8], ptr %b, i64 0, i64 %indvars.iv9
  %3 = load i8, ptr %arrayidx40, align 1, !tbaa !5, !invariant.load !8
  switch i8 %3, label %for.inc61 [
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
  %indvars.iv.next10 = add nuw nsw i64 %indvars.iv9, 1
  br label %for.cond15, !llvm.loop !12

for.end63:                                        ; preds = %for.cond15
  %conv8 = trunc i64 %call7 to i32
  %conv64 = uitofp nneg i32 %e.0 to double
  %conv65 = sitofp i32 %conv to double
  %div = fdiv double %conv64, %conv65
  %cmp66 = icmp eq i32 %conv, %conv8
  %add = add nsw i32 %conv8, %conv
  %cmp67 = icmp eq i32 %m.0, %add
  %or.cond = select i1 %cmp66, i1 %cmp67, i1 false
  br i1 %or.cond, label %if.then68, label %if.end79.gvnsink.split

if.then68:                                        ; preds = %for.end63
  %4 = load double, ptr %x, align 8, !tbaa !13
  %cmp69 = fcmp ult double %div, %4
  br i1 %cmp69, label %if.else, label %if.end79.gvnsink.split

if.else:                                          ; preds = %if.then68
  %cmp72 = fcmp olt double %div, %4
  br i1 %cmp72, label %if.end79.gvnsink.split, label %if.end79

if.end79.gvnsink.split:                           ; preds = %for.end63, %if.else, %if.then68
  %.str.4.sink = phi ptr [ @.str.2, %if.then68 ], [ @.str.3, %if.else ], [ @.str.4, %for.end63 ]
  %call78 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %.str.4.sink)
  br label %if.end79

if.end79:                                         ; preds = %if.end79.gvnsink.split, %if.else
  call void @llvm.lifetime.end.p0(i64 noundef 500, ptr noundef nonnull %b) #7
  call void @llvm.lifetime.end.p0(i64 noundef 500, ptr noundef nonnull %a) #7
  call void @llvm.lifetime.end.p0(i64 noundef 8, ptr noundef nonnull %x) #7
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
attributes #5 = { nofree nounwind }
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
!13 = !{!14, !14, i64 0}
!14 = !{!"double", !6, i64 0}
