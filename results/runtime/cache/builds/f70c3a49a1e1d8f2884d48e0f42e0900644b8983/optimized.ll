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
@str.2 = private unnamed_addr constant [4 x i8] c"YES\00", align 1
@str.3 = private unnamed_addr constant [3 x i8] c"NO\00", align 1
@str.4 = private unnamed_addr constant [4 x i8] c"YES\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %y = alloca i32, align 4
  %m1 = alloca i32, align 4
  %m2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #7
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %n)
  br label %for.cond

for.cond:                                         ; preds = %for.inc164, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc165, %for.inc164 ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %i.0, %0
  br i1 %cmp, label %for.body, label %for.end166

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull %y) #8
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull %m1) #8
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 captures(none) dereferenceable(4) %m2) #8
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %y, ptr noundef nonnull %m1, ptr noundef nonnull align 4 dereferenceable(4) %m2)
  %1 = load i32, ptr %y, align 4, !tbaa !5
  %2 = and i32 %1, 3
  %cmp2 = icmp eq i32 %2, 0
  %rem3 = srem i32 %1, 100
  %cmp4 = icmp ne i32 %rem3, 0
  %or.cond = and i1 %cmp2, %cmp4
  %rem5 = srem i32 %1, 400
  %cmp6 = icmp eq i32 %rem5, 0
  %or.cond4 = or i1 %cmp6, %or.cond
  %3 = load i32, ptr %m1, align 4, !tbaa !5
  %smax16 = call i32 @llvm.smax.i32(i32 %3, i32 noundef 1)
  br i1 %or.cond4, label %for.cond7, label %for.cond85

for.cond7:                                        ; preds = %for.body, %for.inc
  %n1.0 = phi i32 [ %add28, %for.inc ], [ 0, %for.body ]
  %j.0 = phi i32 [ %inc, %for.inc ], [ 1, %for.body ]
  %exitcond17.not = icmp eq i32 %j.0, %smax16
  br i1 %exitcond17.not, label %for.end, label %for.body9

for.body9:                                        ; preds = %for.cond7
  br label %NodeBlock36

NodeBlock36:                                      ; preds = %for.body9
  %Pivot37 = icmp slt i32 %j.0, 5
  br i1 %Pivot37, label %NodeBlock20, label %NodeBlock34

NodeBlock34:                                      ; preds = %NodeBlock36
  %Pivot35 = icmp slt i32 %j.0, 10
  br i1 %Pivot35, label %NodeBlock26, label %NodeBlock32

NodeBlock32:                                      ; preds = %NodeBlock34
  %Pivot33 = icmp slt i32 %j.0, 12
  br i1 %Pivot33, label %LeafBlock28, label %LeafBlock30

LeafBlock30:                                      ; preds = %NodeBlock32
  %SwitchLeaf31 = icmp eq i32 %j.0, 12
  br i1 %SwitchLeaf31, label %for.inc.fold.split, label %if.else27

LeafBlock28:                                      ; preds = %NodeBlock32
  %SwitchLeaf29 = icmp eq i32 %j.0, 10
  br i1 %SwitchLeaf29, label %for.inc.fold.split, label %if.else27

NodeBlock26:                                      ; preds = %NodeBlock34
  %Pivot27 = icmp slt i32 %j.0, 7
  br i1 %Pivot27, label %LeafBlock22, label %LeafBlock24

LeafBlock24:                                      ; preds = %NodeBlock26
  %SwitchLeaf25 = icmp sle i32 %j.0, 8
  br i1 %SwitchLeaf25, label %for.inc.fold.split, label %if.else27

LeafBlock22:                                      ; preds = %NodeBlock26
  %SwitchLeaf23 = icmp eq i32 %j.0, 5
  br i1 %SwitchLeaf23, label %for.inc.fold.split, label %if.else27

NodeBlock20:                                      ; preds = %NodeBlock36
  %Pivot21 = icmp slt i32 %j.0, 2
  br i1 %Pivot21, label %LeafBlock, label %NodeBlock

NodeBlock:                                        ; preds = %NodeBlock20
  %Pivot = icmp slt i32 %j.0, 3
  br i1 %Pivot, label %for.inc, label %LeafBlock18

LeafBlock18:                                      ; preds = %NodeBlock
  %SwitchLeaf19 = icmp eq i32 %j.0, 3
  br i1 %SwitchLeaf19, label %for.inc.fold.split, label %if.else27

LeafBlock:                                        ; preds = %NodeBlock20
  %SwitchLeaf = icmp eq i32 %j.0, 1
  br i1 %SwitchLeaf, label %for.inc.fold.split, label %if.else27

if.else27:                                        ; preds = %LeafBlock30, %LeafBlock28, %LeafBlock24, %LeafBlock22, %LeafBlock18, %LeafBlock
  br label %for.inc

for.inc.fold.split:                               ; preds = %LeafBlock30, %LeafBlock28, %LeafBlock24, %LeafBlock22, %LeafBlock18, %LeafBlock
  br label %for.inc

for.inc:                                          ; preds = %NodeBlock, %for.inc.fold.split, %if.else27
  %.sink3.sink = phi i32 [ 29, %NodeBlock ], [ 30, %if.else27 ], [ 31, %for.inc.fold.split ]
  %add28 = add nuw nsw i32 %.sink3.sink, %n1.0
  %inc = add nuw i32 %j.0, 1
  br label %for.cond7, !llvm.loop !9

for.end:                                          ; preds = %for.cond7
  call fastcc void @outlined_ir_func_0(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %m2, i32 noundef 29, i32 %n1.0) #8
  br label %for.inc164

for.cond85:                                       ; preds = %for.body, %for.inc109
  %n182.0 = phi i32 [ %add106, %for.inc109 ], [ 0, %for.body ]
  %j81.0 = phi i32 [ %inc110, %for.inc109 ], [ 1, %for.body ]
  %exitcond.not = icmp eq i32 %j81.0, %smax16
  br i1 %exitcond.not, label %for.end111, label %for.body87

for.body87:                                       ; preds = %for.cond85
  br label %NodeBlock56

NodeBlock56:                                      ; preds = %for.body87
  %Pivot57 = icmp slt i32 %j81.0, 5
  br i1 %Pivot57, label %NodeBlock44, label %NodeBlock54

NodeBlock54:                                      ; preds = %NodeBlock56
  %Pivot55 = icmp slt i32 %j81.0, 7
  br i1 %Pivot55, label %LeafBlock46, label %NodeBlock52

NodeBlock52:                                      ; preds = %NodeBlock54
  %Pivot53 = icmp slt i32 %j81.0, 10
  br i1 %Pivot53, label %LeafBlock48, label %LeafBlock50

LeafBlock50:                                      ; preds = %NodeBlock52
  %SwitchLeaf51 = icmp eq i32 %j81.0, 10
  br i1 %SwitchLeaf51, label %for.inc109.fold.split, label %if.else105

LeafBlock48:                                      ; preds = %NodeBlock52
  %SwitchLeaf49 = icmp sle i32 %j81.0, 8
  br i1 %SwitchLeaf49, label %for.inc109.fold.split, label %if.else105

LeafBlock46:                                      ; preds = %NodeBlock54
  %SwitchLeaf47 = icmp eq i32 %j81.0, 5
  br i1 %SwitchLeaf47, label %for.inc109.fold.split, label %if.else105

NodeBlock44:                                      ; preds = %NodeBlock56
  %Pivot45 = icmp slt i32 %j81.0, 2
  br i1 %Pivot45, label %LeafBlock38, label %NodeBlock42

NodeBlock42:                                      ; preds = %NodeBlock44
  %Pivot43 = icmp slt i32 %j81.0, 3
  br i1 %Pivot43, label %for.inc109, label %LeafBlock40

LeafBlock40:                                      ; preds = %NodeBlock42
  %SwitchLeaf41 = icmp eq i32 %j81.0, 3
  br i1 %SwitchLeaf41, label %for.inc109.fold.split, label %if.else105

LeafBlock38:                                      ; preds = %NodeBlock44
  %SwitchLeaf39 = icmp eq i32 %j81.0, 1
  br i1 %SwitchLeaf39, label %for.inc109.fold.split, label %if.else105

if.else105:                                       ; preds = %LeafBlock50, %LeafBlock48, %LeafBlock46, %LeafBlock40, %LeafBlock38
  br label %for.inc109

for.inc109.fold.split:                            ; preds = %LeafBlock50, %LeafBlock48, %LeafBlock46, %LeafBlock40, %LeafBlock38
  br label %for.inc109

for.inc109:                                       ; preds = %NodeBlock42, %for.inc109.fold.split, %if.else105
  %.sink1.sink = phi i32 [ 28, %NodeBlock42 ], [ 30, %if.else105 ], [ 31, %for.inc109.fold.split ]
  %add106 = add nuw nsw i32 %.sink1.sink, %n182.0
  %inc110 = add nuw i32 %j81.0, 1
  br label %for.cond85, !llvm.loop !12

for.end111:                                       ; preds = %for.cond85
  call fastcc void @outlined_ir_func_0(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %m2, i32 noundef 28, i32 %n182.0) #8
  br label %for.inc164

for.inc164:                                       ; preds = %for.end111, %for.end
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %m2) #8
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %m1) #8
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %y) #8
  %inc165 = add nuw nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !13

for.end166:                                       ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #8
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: minsize mustprogress nofree norecurse nounwind optsize uwtable
define internal fastcc void @outlined_ir_func_0(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %0, i32 noundef %1, i32 %2) unnamed_addr #4 {
for.end_to_outline:
  %3 = load i32, ptr %0, align 4, !tbaa !5, !invariant.load !14
  br label %for.cond30

for.cond30:                                       ; preds = %for.inc56, %for.end_to_outline
  %n2.0 = phi i32 [ 0, %for.end_to_outline ], [ %add53, %for.inc56 ]
  %j.1 = phi i32 [ 1, %for.end_to_outline ], [ %inc57, %for.inc56 ]
  %cmp31 = icmp slt i32 %j.1, %3
  br i1 %cmp31, label %for.body32, label %for.end58

for.body32:                                       ; preds = %for.cond30
  br label %NodeBlock26

NodeBlock26:                                      ; preds = %for.body32
  %Pivot27 = icmp slt i32 %j.1, 5
  br i1 %Pivot27, label %NodeBlock10, label %NodeBlock24

NodeBlock24:                                      ; preds = %NodeBlock26
  %Pivot25 = icmp slt i32 %j.1, 10
  br i1 %Pivot25, label %NodeBlock16, label %NodeBlock22

NodeBlock22:                                      ; preds = %NodeBlock24
  %Pivot23 = icmp slt i32 %j.1, 12
  br i1 %Pivot23, label %LeafBlock18, label %LeafBlock20

LeafBlock20:                                      ; preds = %NodeBlock22
  %SwitchLeaf21 = icmp eq i32 %j.1, 12
  br i1 %SwitchLeaf21, label %for.inc56.fold.split, label %if.else52

LeafBlock18:                                      ; preds = %NodeBlock22
  %SwitchLeaf19 = icmp eq i32 %j.1, 10
  br i1 %SwitchLeaf19, label %for.inc56.fold.split, label %if.else52

NodeBlock16:                                      ; preds = %NodeBlock24
  %Pivot17 = icmp slt i32 %j.1, 7
  br i1 %Pivot17, label %LeafBlock12, label %LeafBlock14

LeafBlock14:                                      ; preds = %NodeBlock16
  %SwitchLeaf15 = icmp sle i32 %j.1, 8
  br i1 %SwitchLeaf15, label %for.inc56.fold.split, label %if.else52

LeafBlock12:                                      ; preds = %NodeBlock16
  %SwitchLeaf13 = icmp eq i32 %j.1, 5
  br i1 %SwitchLeaf13, label %for.inc56.fold.split, label %if.else52

NodeBlock10:                                      ; preds = %NodeBlock26
  %Pivot11 = icmp slt i32 %j.1, 2
  br i1 %Pivot11, label %for.inc56.fold.split, label %NodeBlock

NodeBlock:                                        ; preds = %NodeBlock10
  %Pivot = icmp slt i32 %j.1, 3
  br i1 %Pivot, label %for.inc56, label %LeafBlock

LeafBlock:                                        ; preds = %NodeBlock
  %SwitchLeaf = icmp eq i32 %j.1, 3
  br i1 %SwitchLeaf, label %for.inc56.fold.split, label %if.else52

if.else52:                                        ; preds = %LeafBlock20, %LeafBlock18, %LeafBlock14, %LeafBlock12, %LeafBlock
  br label %for.inc56

for.inc56.fold.split:                             ; preds = %LeafBlock20, %LeafBlock18, %LeafBlock14, %LeafBlock12, %NodeBlock10, %LeafBlock
  br label %for.inc56

for.inc56:                                        ; preds = %NodeBlock, %for.inc56.fold.split, %if.else52
  %.sink2.sink = phi i32 [ %1, %NodeBlock ], [ 30, %if.else52 ], [ 31, %for.inc56.fold.split ]
  %add53 = add nsw i32 %.sink2.sink, %n2.0
  %inc57 = add nuw nsw i32 %j.1, 1
  br label %for.cond30, !llvm.loop !15

for.end58:                                        ; preds = %for.cond30
  %cmp59 = icmp slt i32 %2, %n2.0
  br i1 %cmp59, label %if.then60, label %if.end68

if.then60:                                        ; preds = %for.end58
  %sub = sub nsw i32 %n2.0, %2
  %rem61 = urem i32 %sub, 7
  %cmp62 = icmp eq i32 %rem61, 0
  %str.2.str = select i1 %cmp62, ptr @str.2, ptr @str
  %puts7 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) %str.2.str) #8
  br label %if.end68

if.end68:                                         ; preds = %if.then60, %for.end58
  %cmp69 = icmp sgt i32 %2, %n2.0
  br i1 %cmp69, label %if.then70, label %for.inc164.exitStub

if.then70:                                        ; preds = %if.end68
  %sub71 = sub nsw i32 %2, %n2.0
  %rem72 = urem i32 %sub71, 7
  %cmp73 = icmp eq i32 %rem72, 0
  %str.4.str.3 = select i1 %cmp73, ptr @str.4, ptr @str.3
  %puts8 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) %str.4.str.3) #8
  br label %for.inc164.exitStub

for.inc164.exitStub:                              ; preds = %if.then70, %if.end68
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { minsize mustprogress nofree norecurse nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nofree nounwind willreturn }
attributes #8 = { nounwind }

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
