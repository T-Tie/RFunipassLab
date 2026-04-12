; ModuleID = '<stdin>'
source_filename = "/tmp/tmp8zpu5yfo.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%d%d%d\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"YES\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"NO\0A\00", align 1
@str = private unnamed_addr constant [3 x i8] c"NO\00", align 1
@str.4 = private unnamed_addr constant [4 x i8] c"YES\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %y = alloca i32, align 4
  %m1 = alloca i32, align 4
  %m2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #6
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %n)
  br label %for.cond

for.cond:                                         ; preds = %for.inc164, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc165, %for.inc164 ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %i.0, %0
  br i1 %cmp, label %for.body, label %for.end166

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull %y) #7
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull %m1) #7
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 captures(none) dereferenceable(4) %m2) #7
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %y, ptr noundef nonnull %m1, ptr noundef nonnull align 4 dereferenceable(4) %m2)
  %1 = load i32, ptr %y, align 4, !tbaa !5
  %2 = and i32 %1, 3
  %cmp2 = icmp eq i32 %2, 0
  %rem3 = srem i32 %1, 100
  %cmp4 = icmp ne i32 %rem3, 0
  %or.cond = and i1 %cmp2, %cmp4
  %rem5 = srem i32 %1, 400
  %cmp6 = icmp eq i32 %rem5, 0
  %or.cond1 = or i1 %cmp6, %or.cond
  %3 = load i32, ptr %m1, align 4, !tbaa !5
  %smax2 = call i32 @llvm.smax.i32(i32 %3, i32 1)
  br i1 %or.cond1, label %for.cond7, label %for.cond85

for.cond7:                                        ; preds = %for.body, %for.inc
  %n1.0 = phi i32 [ %add, %for.inc ], [ 0, %for.body ]
  %j.0 = phi i32 [ %inc, %for.inc ], [ 1, %for.body ]
  %exitcond3.not = icmp eq i32 %j.0, %smax2
  br i1 %exitcond3.not, label %for.end, label %for.body9

for.body9:                                        ; preds = %for.cond7
  switch i32 %j.0, label %if.else27 [
    i32 2, label %for.inc
    i32 1, label %if.then25
    i32 3, label %if.then25
    i32 5, label %if.then25
    i32 7, label %if.then25
    i32 8, label %if.then25
    i32 10, label %if.then25
    i32 12, label %if.then25
  ]

if.then25:                                        ; preds = %for.body9, %for.body9, %for.body9, %for.body9, %for.body9, %for.body9, %for.body9
  br label %for.inc

if.else27:                                        ; preds = %for.body9
  br label %for.inc

for.inc:                                          ; preds = %for.body9, %if.else27, %if.then25
  %.sink = phi i32 [ 30, %if.else27 ], [ 31, %if.then25 ], [ 29, %for.body9 ]
  %add = add nuw nsw i32 %n1.0, %.sink
  %inc = add nuw i32 %j.0, 1
  br label %for.cond7, !llvm.loop !9

for.end:                                          ; preds = %for.cond7
  call fastcc void @outlined_ir_func_0(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %m2, i32 noundef 29, i32 %n1.0)
  br label %for.inc164

for.cond85:                                       ; preds = %for.body, %for.inc109
  %n182.0 = phi i32 [ %add90, %for.inc109 ], [ 0, %for.body ]
  %j81.0 = phi i32 [ %inc110, %for.inc109 ], [ 1, %for.body ]
  %exitcond.not = icmp eq i32 %j81.0, %smax2
  br i1 %exitcond.not, label %for.end111, label %for.body87

for.body87:                                       ; preds = %for.cond85
  switch i32 %j81.0, label %if.else105 [
    i32 2, label %for.inc109
    i32 1, label %if.then103
    i32 3, label %if.then103
    i32 5, label %if.then103
    i32 7, label %if.then103
    i32 8, label %if.then103
    i32 10, label %if.then103
  ]

if.then103:                                       ; preds = %for.body87, %for.body87, %for.body87, %for.body87, %for.body87, %for.body87
  br label %for.inc109

if.else105:                                       ; preds = %for.body87
  br label %for.inc109

for.inc109:                                       ; preds = %for.body87, %if.else105, %if.then103
  %.sink4 = phi i32 [ 30, %if.else105 ], [ 31, %if.then103 ], [ 28, %for.body87 ]
  %add90 = add nuw nsw i32 %n182.0, %.sink4
  %inc110 = add nuw i32 %j81.0, 1
  br label %for.cond85, !llvm.loop !12

for.end111:                                       ; preds = %for.cond85
  call fastcc void @outlined_ir_func_0(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %m2, i32 noundef 28, i32 %n182.0)
  br label %for.inc164

for.inc164:                                       ; preds = %for.end, %for.end111
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %m2) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %m1) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %y) #7
  %inc165 = add nuw nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !13

for.end166:                                       ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #7
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: minsize mustprogress nofree norecurse nounwind optsize uwtable
define internal fastcc void @outlined_ir_func_0(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %0, i32 noundef %1, i32 %2) unnamed_addr #3 {
for.end_to_outline:
  %3 = load i32, ptr %0, align 4, !tbaa !5, !invariant.load !14
  br label %for.cond30

for.cond30:                                       ; preds = %for.inc56, %for.end_to_outline
  %n2.0 = phi i32 [ 0, %for.end_to_outline ], [ %n2.1, %for.inc56 ]
  %j.1 = phi i32 [ 1, %for.end_to_outline ], [ %inc57, %for.inc56 ]
  %cmp31 = icmp slt i32 %j.1, %3
  br i1 %cmp31, label %for.body32, label %for.end58

for.body32:                                       ; preds = %for.cond30
  switch i32 %j.1, label %if.else52 [
    i32 2, label %for.inc56
    i32 1, label %if.then50
    i32 3, label %if.then50
    i32 5, label %if.then50
    i32 7, label %if.then50
    i32 8, label %if.then50
    i32 10, label %if.then50
    i32 12, label %if.then50
  ]

if.then50:                                        ; preds = %for.body32, %for.body32, %for.body32, %for.body32, %for.body32, %for.body32, %for.body32
  br label %for.inc56

if.else52:                                        ; preds = %for.body32
  br label %for.inc56

for.inc56:                                        ; preds = %for.body32, %if.else52, %if.then50
  %.pn = phi i32 [ 31, %if.then50 ], [ 30, %if.else52 ], [ %1, %for.body32 ]
  %n2.1 = add nsw i32 %.pn, %n2.0
  %inc57 = add nuw nsw i32 %j.1, 1
  br label %for.cond30, !llvm.loop !15

for.end58:                                        ; preds = %for.cond30
  %cmp59 = icmp slt i32 %2, %n2.0
  br i1 %cmp59, label %if.then60, label %if.end68

if.then60:                                        ; preds = %for.end58
  %sub = sub nsw i32 %n2.0, %2
  tail call fastcc void @outlined_ir_func_0.3(i32 %sub)
  br label %if.end68

if.end68:                                         ; preds = %if.then60, %for.end58
  %cmp69 = icmp sgt i32 %2, %n2.0
  br i1 %cmp69, label %if.then70, label %if.end163.exitStub

if.then70:                                        ; preds = %if.end68
  %sub71 = sub nsw i32 %2, %n2.0
  tail call fastcc void @outlined_ir_func_0.3(i32 %sub71)
  br label %if.end163.exitStub

if.end163.exitStub:                               ; preds = %if.end68, %if.then70
  ret void
}

; Function Attrs: minsize mustprogress nofree norecurse nounwind optsize uwtable
define internal fastcc void @outlined_ir_func_0.3(i32 %0) unnamed_addr #3 {
if.then60_to_outline:
  %rem61 = srem i32 %0, 7
  %cmp62 = icmp eq i32 %rem61, 0
  %str.4.str = select i1 %cmp62, ptr @str.4, ptr @str
  %puts1 = tail call i32 @puts(ptr nonnull dereferenceable(1) %str.4.str)
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { minsize mustprogress nofree norecurse nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nofree nounwind willreturn }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.1.8 (https://github.com/llvm/llvm-project.git 2078da43e25a4623cab2d0d60decddf709aaea28)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !10, !11}
!13 = distinct !{!13, !10, !11}
!14 = !{}
!15 = distinct !{!15, !10, !11}
