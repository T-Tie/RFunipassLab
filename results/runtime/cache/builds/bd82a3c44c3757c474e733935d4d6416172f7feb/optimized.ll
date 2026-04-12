; ModuleID = '<stdin>'
source_filename = "/tmp/tmpuw11o_u0.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%d%d%d\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"YES\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"NO\0A\00", align 1
@str = private unnamed_addr constant [3 x i8] c"NO\00", align 1
@str.1 = private unnamed_addr constant [4 x i8] c"YES\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %year = alloca i32, align 4
  %month1 = alloca i32, align 4
  %month2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #6
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %year) #6
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %month1) #6
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %month2) #6
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %n)
  br label %for.cond

for.cond:                                         ; preds = %for.end87, %entry
  %j.0 = phi i32 [ 0, %entry ], [ %inc96, %for.end87 ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %j.0, %0
  br i1 %cmp, label %for.body, label %for.end97

for.body:                                         ; preds = %for.cond
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %year, ptr noundef nonnull %month1, ptr noundef nonnull %month2)
  %1 = load i32, ptr %month1, align 4, !tbaa !5
  %2 = load i32, ptr %year, align 4
  %3 = and i32 %2, 3
  %cmp29 = icmp eq i32 %3, 0
  %rem30 = srem i32 %2, 100
  %cmp31 = icmp ne i32 %rem30, 0
  %or.cond = and i1 %cmp29, %cmp31
  %rem33 = srem i32 %2, 400
  %cmp34 = icmp eq i32 %rem33, 0
  %or.cond6 = or i1 %cmp34, %or.cond
  %.sink1 = select i1 %or.cond6, i32 29, i32 28
  %smax = call i32 @llvm.smax.i32(i32 %1, i32 noundef 1)
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body
  %i.0 = phi i32 [ 1, %for.body ], [ %inc, %for.inc ]
  %total1.0 = phi i32 [ 0, %for.body ], [ %total1.3, %for.inc ]
  %exitcond.not = icmp eq i32 %i.0, %smax
  br i1 %exitcond.not, label %for.cond40.preheader, label %for.body4

for.cond40.preheader:                             ; preds = %for.cond2
  %4 = load i32, ptr %month2, align 4, !tbaa !5
  %smax10 = call i32 @llvm.smax.i32(i32 %4, i32 noundef 1)
  br label %for.cond40

for.body4:                                        ; preds = %for.cond2
  br label %NodeBlock28

NodeBlock28:                                      ; preds = %for.body4
  %Pivot29 = icmp slt i32 %i.0, 7
  br i1 %Pivot29, label %NodeBlock16, label %NodeBlock26

NodeBlock26:                                      ; preds = %NodeBlock28
  %Pivot27 = icmp slt i32 %i.0, 10
  br i1 %Pivot27, label %LeafBlock18, label %NodeBlock24

NodeBlock24:                                      ; preds = %NodeBlock26
  %Pivot25 = icmp slt i32 %i.0, 12
  br i1 %Pivot25, label %LeafBlock20, label %LeafBlock22

LeafBlock22:                                      ; preds = %NodeBlock24
  %SwitchLeaf23 = icmp eq i32 %i.0, 12
  br i1 %SwitchLeaf23, label %if.then, label %if.end

LeafBlock20:                                      ; preds = %NodeBlock24
  %SwitchLeaf21 = icmp eq i32 %i.0, 10
  br i1 %SwitchLeaf21, label %if.then, label %if.end

LeafBlock18:                                      ; preds = %NodeBlock26
  %SwitchLeaf19 = icmp sle i32 %i.0, 8
  br i1 %SwitchLeaf19, label %if.then, label %if.end

NodeBlock16:                                      ; preds = %NodeBlock28
  %Pivot17 = icmp slt i32 %i.0, 3
  br i1 %Pivot17, label %LeafBlock, label %NodeBlock

NodeBlock:                                        ; preds = %NodeBlock16
  %Pivot = icmp slt i32 %i.0, 5
  br i1 %Pivot, label %LeafBlock12, label %LeafBlock14

LeafBlock14:                                      ; preds = %NodeBlock
  %SwitchLeaf15 = icmp eq i32 %i.0, 5
  br i1 %SwitchLeaf15, label %if.then, label %if.end

LeafBlock12:                                      ; preds = %NodeBlock
  %SwitchLeaf13 = icmp eq i32 %i.0, 3
  br i1 %SwitchLeaf13, label %if.then, label %if.end

LeafBlock:                                        ; preds = %NodeBlock16
  %SwitchLeaf = icmp eq i32 %i.0, 1
  br i1 %SwitchLeaf, label %if.then, label %if.end

if.then:                                          ; preds = %LeafBlock22, %LeafBlock20, %LeafBlock18, %LeafBlock14, %LeafBlock12, %LeafBlock
  %add = add nsw i32 %total1.0, 31
  br label %if.end

if.end:                                           ; preds = %LeafBlock22, %LeafBlock20, %LeafBlock18, %LeafBlock14, %LeafBlock12, %LeafBlock, %if.then
  %total1.1 = phi i32 [ %add, %if.then ], [ %total1.0, %LeafBlock ], [ %total1.0, %LeafBlock12 ], [ %total1.0, %LeafBlock14 ], [ %total1.0, %LeafBlock18 ], [ %total1.0, %LeafBlock20 ], [ %total1.0, %LeafBlock22 ]
  br label %NodeBlock46

NodeBlock46:                                      ; preds = %if.end
  %Pivot47 = icmp slt i32 %i.0, 6
  br i1 %Pivot47, label %NodeBlock34, label %NodeBlock44

NodeBlock44:                                      ; preds = %NodeBlock46
  %Pivot45 = icmp slt i32 %i.0, 9
  br i1 %Pivot45, label %LeafBlock36, label %NodeBlock42

NodeBlock42:                                      ; preds = %NodeBlock44
  %Pivot43 = icmp slt i32 %i.0, 11
  br i1 %Pivot43, label %LeafBlock38, label %LeafBlock40

LeafBlock40:                                      ; preds = %NodeBlock42
  %SwitchLeaf41 = icmp eq i32 %i.0, 11
  br i1 %SwitchLeaf41, label %if.end26.thread, label %for.inc

LeafBlock38:                                      ; preds = %NodeBlock42
  %SwitchLeaf39 = icmp eq i32 %i.0, 9
  br i1 %SwitchLeaf39, label %if.end26.thread, label %for.inc

LeafBlock36:                                      ; preds = %NodeBlock44
  %SwitchLeaf37 = icmp eq i32 %i.0, 6
  br i1 %SwitchLeaf37, label %if.end26.thread, label %for.inc

NodeBlock34:                                      ; preds = %NodeBlock46
  %Pivot35 = icmp slt i32 %i.0, 4
  br i1 %Pivot35, label %LeafBlock30, label %LeafBlock32

LeafBlock32:                                      ; preds = %NodeBlock34
  %SwitchLeaf33 = icmp eq i32 %i.0, 4
  br i1 %SwitchLeaf33, label %if.end26.thread, label %for.inc

LeafBlock30:                                      ; preds = %NodeBlock34
  %SwitchLeaf31 = icmp eq i32 %i.0, 2
  br i1 %SwitchLeaf31, label %if.then28, label %for.inc

if.end26.thread:                                  ; preds = %LeafBlock40, %LeafBlock38, %LeafBlock36, %LeafBlock32
  %add25 = add nsw i32 %total1.1, 30
  br label %for.inc

if.then28:                                        ; preds = %LeafBlock30
  %add37 = add nsw i32 %.sink1, %total1.1
  br label %for.inc

for.inc:                                          ; preds = %LeafBlock40, %LeafBlock38, %LeafBlock36, %LeafBlock32, %LeafBlock30, %if.then28, %if.end26.thread
  %total1.3 = phi i32 [ %add37, %if.then28 ], [ %add25, %if.end26.thread ], [ %total1.1, %LeafBlock30 ], [ %total1.1, %LeafBlock32 ], [ %total1.1, %LeafBlock36 ], [ %total1.1, %LeafBlock38 ], [ %total1.1, %LeafBlock40 ]
  %inc = add nuw i32 %i.0, 1
  br label %for.cond2, !llvm.loop !9

for.cond40:                                       ; preds = %for.cond40.preheader, %for.inc85
  %m.0 = phi i32 [ %inc86, %for.inc85 ], [ 1, %for.cond40.preheader ]
  %total2.0 = phi i32 [ %total2.3, %for.inc85 ], [ 0, %for.cond40.preheader ]
  %exitcond11.not = icmp eq i32 %m.0, %smax10
  br i1 %exitcond11.not, label %for.end87, label %for.body42

for.body42:                                       ; preds = %for.cond40
  br label %NodeBlock68

NodeBlock68:                                      ; preds = %for.body42
  %Pivot69 = icmp slt i32 %m.0, 7
  br i1 %Pivot69, label %NodeBlock56, label %NodeBlock66

NodeBlock66:                                      ; preds = %NodeBlock68
  %Pivot67 = icmp slt i32 %m.0, 10
  br i1 %Pivot67, label %LeafBlock58, label %NodeBlock64

NodeBlock64:                                      ; preds = %NodeBlock66
  %Pivot65 = icmp slt i32 %m.0, 12
  br i1 %Pivot65, label %LeafBlock60, label %LeafBlock62

LeafBlock62:                                      ; preds = %NodeBlock64
  %SwitchLeaf63 = icmp eq i32 %m.0, 12
  br i1 %SwitchLeaf63, label %if.then56, label %if.end58

LeafBlock60:                                      ; preds = %NodeBlock64
  %SwitchLeaf61 = icmp eq i32 %m.0, 10
  br i1 %SwitchLeaf61, label %if.then56, label %if.end58

LeafBlock58:                                      ; preds = %NodeBlock66
  %SwitchLeaf59 = icmp sle i32 %m.0, 8
  br i1 %SwitchLeaf59, label %if.then56, label %if.end58

NodeBlock56:                                      ; preds = %NodeBlock68
  %Pivot57 = icmp slt i32 %m.0, 3
  br i1 %Pivot57, label %LeafBlock48, label %NodeBlock54

NodeBlock54:                                      ; preds = %NodeBlock56
  %Pivot55 = icmp slt i32 %m.0, 5
  br i1 %Pivot55, label %LeafBlock50, label %LeafBlock52

LeafBlock52:                                      ; preds = %NodeBlock54
  %SwitchLeaf53 = icmp eq i32 %m.0, 5
  br i1 %SwitchLeaf53, label %if.then56, label %if.end58

LeafBlock50:                                      ; preds = %NodeBlock54
  %SwitchLeaf51 = icmp eq i32 %m.0, 3
  br i1 %SwitchLeaf51, label %if.then56, label %if.end58

LeafBlock48:                                      ; preds = %NodeBlock56
  %SwitchLeaf49 = icmp eq i32 %m.0, 1
  br i1 %SwitchLeaf49, label %if.then56, label %if.end58

if.then56:                                        ; preds = %LeafBlock62, %LeafBlock60, %LeafBlock58, %LeafBlock52, %LeafBlock50, %LeafBlock48
  %add57 = add nsw i32 %total2.0, 31
  br label %if.end58

if.end58:                                         ; preds = %LeafBlock62, %LeafBlock60, %LeafBlock58, %LeafBlock52, %LeafBlock50, %LeafBlock48, %if.then56
  %total2.1 = phi i32 [ %add57, %if.then56 ], [ %total2.0, %LeafBlock48 ], [ %total2.0, %LeafBlock50 ], [ %total2.0, %LeafBlock52 ], [ %total2.0, %LeafBlock58 ], [ %total2.0, %LeafBlock60 ], [ %total2.0, %LeafBlock62 ]
  br label %NodeBlock86

NodeBlock86:                                      ; preds = %if.end58
  %Pivot87 = icmp slt i32 %m.0, 6
  br i1 %Pivot87, label %NodeBlock74, label %NodeBlock84

NodeBlock84:                                      ; preds = %NodeBlock86
  %Pivot85 = icmp slt i32 %m.0, 9
  br i1 %Pivot85, label %LeafBlock76, label %NodeBlock82

NodeBlock82:                                      ; preds = %NodeBlock84
  %Pivot83 = icmp slt i32 %m.0, 11
  br i1 %Pivot83, label %LeafBlock78, label %LeafBlock80

LeafBlock80:                                      ; preds = %NodeBlock82
  %SwitchLeaf81 = icmp eq i32 %m.0, 11
  br i1 %SwitchLeaf81, label %if.end68.thread, label %for.inc85

LeafBlock78:                                      ; preds = %NodeBlock82
  %SwitchLeaf79 = icmp eq i32 %m.0, 9
  br i1 %SwitchLeaf79, label %if.end68.thread, label %for.inc85

LeafBlock76:                                      ; preds = %NodeBlock84
  %SwitchLeaf77 = icmp eq i32 %m.0, 6
  br i1 %SwitchLeaf77, label %if.end68.thread, label %for.inc85

NodeBlock74:                                      ; preds = %NodeBlock86
  %Pivot75 = icmp slt i32 %m.0, 4
  br i1 %Pivot75, label %LeafBlock70, label %LeafBlock72

LeafBlock72:                                      ; preds = %NodeBlock74
  %SwitchLeaf73 = icmp eq i32 %m.0, 4
  br i1 %SwitchLeaf73, label %if.end68.thread, label %for.inc85

LeafBlock70:                                      ; preds = %NodeBlock74
  %SwitchLeaf71 = icmp eq i32 %m.0, 2
  br i1 %SwitchLeaf71, label %if.then70, label %for.inc85

if.end68.thread:                                  ; preds = %LeafBlock80, %LeafBlock78, %LeafBlock76, %LeafBlock72
  %add67 = add nsw i32 %total2.1, 30
  br label %for.inc85

if.then70:                                        ; preds = %LeafBlock70
  %add82 = add nsw i32 %.sink1, %total2.1
  br label %for.inc85

for.inc85:                                        ; preds = %LeafBlock80, %LeafBlock78, %LeafBlock76, %LeafBlock72, %LeafBlock70, %if.then70, %if.end68.thread
  %total2.3 = phi i32 [ %add82, %if.then70 ], [ %add67, %if.end68.thread ], [ %total2.1, %LeafBlock70 ], [ %total2.1, %LeafBlock72 ], [ %total2.1, %LeafBlock76 ], [ %total2.1, %LeafBlock78 ], [ %total2.1, %LeafBlock80 ]
  %inc86 = add nuw i32 %m.0, 1
  br label %for.cond40, !llvm.loop !12

for.end87:                                        ; preds = %for.cond40
  %sub = sub nsw i32 %total1.0, %total2.0
  %rem88 = srem i32 %sub, 7
  %cmp89 = icmp eq i32 %rem88, 0
  %str.1.str = select i1 %cmp89, ptr @str.1, ptr @str
  %puts9 = call i32 @puts(ptr noundef nonnull dereferenceable(1) %str.1.str) #7
  %inc96 = add nuw nsw i32 %j.0, 1
  br label %for.cond, !llvm.loop !13

for.end97:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %month2) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %month1) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %year) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #7
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
