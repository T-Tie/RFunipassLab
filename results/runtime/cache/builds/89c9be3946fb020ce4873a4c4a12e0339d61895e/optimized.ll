; ModuleID = '<stdin>'
source_filename = "/tmp/tmpuw11o_u0.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%d%d%d\00", align 1
@str = private unnamed_addr constant [3 x i8] c"NO\00", align 1
@str.1 = private unnamed_addr constant [4 x i8] c"YES\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %year = alloca i32, align 4
  %month1 = alloca i32, align 4
  %month2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %year) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %month1) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %month2) #5
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
  %or.cond42 = or i1 %cmp34, %or.cond
  %smax = call i32 @llvm.smax.i32(i32 %1, i32 noundef 1)
  br label %for.cond2

for.cond2:                                        ; preds = %if.end39, %for.body
  %i.0 = phi i32 [ 1, %for.body ], [ %inc, %if.end39 ]
  %total1.0 = phi i32 [ 0, %for.body ], [ %total1.3, %if.end39 ]
  %exitcond.not = icmp eq i32 %i.0, %smax
  br i1 %exitcond.not, label %for.cond40.preheader, label %for.body4

for.cond40.preheader:                             ; preds = %for.cond2
  %4 = load i32, ptr %month2, align 4, !tbaa !5
  %smax46 = call i32 @llvm.smax.i32(i32 %4, i32 noundef 1)
  br label %for.cond40

for.body4:                                        ; preds = %for.cond2
  %Pivot65 = icmp samesign ult i32 %i.0, 7
  br i1 %Pivot65, label %NodeBlock52, label %NodeBlock62

NodeBlock62:                                      ; preds = %for.body4
  %Pivot63 = icmp samesign ult i32 %i.0, 10
  br i1 %Pivot63, label %LeafBlock54, label %NodeBlock60

NodeBlock60:                                      ; preds = %NodeBlock62
  %Pivot61 = icmp samesign ult i32 %i.0, 12
  br i1 %Pivot61, label %LeafBlock56, label %LeafBlock58

LeafBlock58:                                      ; preds = %NodeBlock60
  %SwitchLeaf59 = icmp eq i32 %i.0, 12
  %add159 = add nsw i32 %total1.0, 31
  %spec.select = select i1 %SwitchLeaf59, i32 %add159, i32 %total1.0
  br label %if.end39

LeafBlock56:                                      ; preds = %NodeBlock60
  %SwitchLeaf57 = icmp eq i32 %i.0, 10
  br i1 %SwitchLeaf57, label %LeafBlock74, label %if.end26.thread

LeafBlock54:                                      ; preds = %NodeBlock62
  %SwitchLeaf55.not = icmp eq i32 %i.0, 9
  br i1 %SwitchLeaf55.not, label %if.end26.thread, label %LeafBlock72

NodeBlock52:                                      ; preds = %for.body4
  %Pivot53 = icmp samesign ult i32 %i.0, 3
  br i1 %Pivot53, label %LeafBlock, label %NodeBlock

NodeBlock:                                        ; preds = %NodeBlock52
  %Pivot = icmp samesign ult i32 %i.0, 5
  br i1 %Pivot, label %LeafBlock48, label %LeafBlock50

LeafBlock50:                                      ; preds = %NodeBlock
  %SwitchLeaf51 = icmp eq i32 %i.0, 5
  br i1 %SwitchLeaf51, label %LeafBlock68, label %if.end26.thread

LeafBlock48:                                      ; preds = %NodeBlock
  %SwitchLeaf49 = icmp eq i32 %i.0, 3
  br i1 %SwitchLeaf49, label %NodeBlock70.thread170, label %if.end26.thread

LeafBlock:                                        ; preds = %NodeBlock52
  %SwitchLeaf = icmp eq i32 %i.0, 1
  br i1 %SwitchLeaf, label %NodeBlock70.thread170, label %LeafBlock66

LeafBlock74:                                      ; preds = %LeafBlock56
  %add159208 = add nsw i32 %total1.0, 31
  br label %if.end39

LeafBlock72:                                      ; preds = %LeafBlock54
  %add = add nsw i32 %total1.0, 31
  br label %if.end39

NodeBlock70.thread170:                            ; preds = %LeafBlock48, %LeafBlock
  %add135171 = add nsw i32 %total1.0, 31
  br label %LeafBlock66

LeafBlock68:                                      ; preds = %LeafBlock50
  %add135 = add nsw i32 %total1.0, 31
  br label %if.end39

LeafBlock66:                                      ; preds = %LeafBlock, %NodeBlock70.thread170
  %total1.1132165 = phi i32 [ %add135171, %NodeBlock70.thread170 ], [ %total1.0, %LeafBlock ]
  %SwitchLeaf67 = icmp eq i32 %i.0, 2
  br i1 %SwitchLeaf67, label %if.then28, label %if.end39

if.end26.thread:                                  ; preds = %LeafBlock56, %LeafBlock54, %LeafBlock48, %LeafBlock50
  %add25 = add nsw i32 %total1.0, 30
  br label %if.end39

if.then28:                                        ; preds = %LeafBlock66
  br i1 %or.cond42, label %if.then35, label %if.else

if.then35:                                        ; preds = %if.then28
  %add36 = add nsw i32 %total1.1132165, 29
  br label %if.end39

if.else:                                          ; preds = %if.then28
  %add37 = add nsw i32 %total1.1132165, 28
  br label %if.end39

if.end39:                                         ; preds = %LeafBlock58, %LeafBlock74, %LeafBlock68, %LeafBlock72, %LeafBlock66, %if.then35, %if.else, %if.end26.thread
  %total1.3 = phi i32 [ %add25, %if.end26.thread ], [ %add36, %if.then35 ], [ %add37, %if.else ], [ %total1.1132165, %LeafBlock66 ], [ %add135, %LeafBlock68 ], [ %add, %LeafBlock72 ], [ %add159208, %LeafBlock74 ], [ %spec.select, %LeafBlock58 ]
  %inc = add nuw i32 %i.0, 1
  br label %for.cond2, !llvm.loop !9

for.cond40:                                       ; preds = %for.cond40.preheader, %if.end84
  %m.0 = phi i32 [ %inc86, %if.end84 ], [ 1, %for.cond40.preheader ]
  %total2.0 = phi i32 [ %total2.3, %if.end84 ], [ 0, %for.cond40.preheader ]
  %exitcond47.not = icmp eq i32 %m.0, %smax46
  br i1 %exitcond47.not, label %for.end87, label %for.body42

for.body42:                                       ; preds = %for.cond40
  %Pivot105 = icmp samesign ult i32 %m.0, 7
  br i1 %Pivot105, label %NodeBlock92, label %NodeBlock102

NodeBlock102:                                     ; preds = %for.body42
  %Pivot103 = icmp samesign ult i32 %m.0, 10
  br i1 %Pivot103, label %LeafBlock94, label %NodeBlock100

NodeBlock100:                                     ; preds = %NodeBlock102
  %Pivot101 = icmp samesign ult i32 %m.0, 12
  br i1 %Pivot101, label %LeafBlock96, label %LeafBlock98

LeafBlock98:                                      ; preds = %NodeBlock100
  %SwitchLeaf99 = icmp eq i32 %m.0, 12
  %add57184 = add nsw i32 %total2.0, 31
  %spec.select234 = select i1 %SwitchLeaf99, i32 %add57184, i32 %total2.0
  br label %if.end84

LeafBlock96:                                      ; preds = %NodeBlock100
  %SwitchLeaf97 = icmp eq i32 %m.0, 10
  br i1 %SwitchLeaf97, label %LeafBlock114, label %if.end68.thread

LeafBlock94:                                      ; preds = %NodeBlock102
  %SwitchLeaf95.not = icmp eq i32 %m.0, 9
  br i1 %SwitchLeaf95.not, label %if.end68.thread, label %LeafBlock112

NodeBlock92:                                      ; preds = %for.body42
  %Pivot93 = icmp samesign ult i32 %m.0, 3
  br i1 %Pivot93, label %LeafBlock84, label %NodeBlock90

NodeBlock90:                                      ; preds = %NodeBlock92
  %Pivot91 = icmp samesign ult i32 %m.0, 5
  br i1 %Pivot91, label %LeafBlock86, label %LeafBlock88

LeafBlock88:                                      ; preds = %NodeBlock90
  %SwitchLeaf89 = icmp eq i32 %m.0, 5
  br i1 %SwitchLeaf89, label %LeafBlock108, label %if.end68.thread

LeafBlock86:                                      ; preds = %NodeBlock90
  %SwitchLeaf87 = icmp eq i32 %m.0, 3
  br i1 %SwitchLeaf87, label %NodeBlock110.thread195, label %if.end68.thread

LeafBlock84:                                      ; preds = %NodeBlock92
  %SwitchLeaf85 = icmp eq i32 %m.0, 1
  br i1 %SwitchLeaf85, label %NodeBlock110.thread195, label %LeafBlock106

LeafBlock114:                                     ; preds = %LeafBlock96
  %add57184220 = add nsw i32 %total2.0, 31
  br label %if.end84

LeafBlock112:                                     ; preds = %LeafBlock94
  %add57 = add nsw i32 %total2.0, 31
  br label %if.end84

NodeBlock110.thread195:                           ; preds = %LeafBlock86, %LeafBlock84
  %add57148196 = add nsw i32 %total2.0, 31
  br label %LeafBlock106

LeafBlock108:                                     ; preds = %LeafBlock88
  %add57148 = add nsw i32 %total2.0, 31
  br label %if.end84

LeafBlock106:                                     ; preds = %LeafBlock84, %NodeBlock110.thread195
  %total2.1145190 = phi i32 [ %add57148196, %NodeBlock110.thread195 ], [ %total2.0, %LeafBlock84 ]
  %SwitchLeaf107 = icmp eq i32 %m.0, 2
  br i1 %SwitchLeaf107, label %if.then70, label %if.end84

if.end68.thread:                                  ; preds = %LeafBlock96, %LeafBlock94, %LeafBlock86, %LeafBlock88
  %add67 = add nsw i32 %total2.0, 30
  br label %if.end84

if.then70:                                        ; preds = %LeafBlock106
  br i1 %or.cond42, label %if.then79, label %if.else81

if.then79:                                        ; preds = %if.then70
  %add80 = add nsw i32 %total2.1145190, 29
  br label %if.end84

if.else81:                                        ; preds = %if.then70
  %add82 = add nsw i32 %total2.1145190, 28
  br label %if.end84

if.end84:                                         ; preds = %LeafBlock98, %LeafBlock114, %LeafBlock108, %LeafBlock112, %LeafBlock106, %if.then79, %if.else81, %if.end68.thread
  %total2.3 = phi i32 [ %add67, %if.end68.thread ], [ %add80, %if.then79 ], [ %add82, %if.else81 ], [ %total2.1145190, %LeafBlock106 ], [ %add57148, %LeafBlock108 ], [ %add57, %LeafBlock112 ], [ %add57184220, %LeafBlock114 ], [ %spec.select234, %LeafBlock98 ]
  %inc86 = add nuw i32 %m.0, 1
  br label %for.cond40, !llvm.loop !12

for.end87:                                        ; preds = %for.cond40
  %sub = sub nsw i32 %total1.0, %total2.0
  %rem88 = srem i32 %sub, 7
  %cmp89 = icmp eq i32 %rem88, 0
  %str.1.str = select i1 %cmp89, ptr @str.1, ptr @str
  %puts = call i32 @puts(ptr noundef nonnull dereferenceable(1) %str.1.str) #6
  %inc96 = add nuw nsw i32 %j.0, 1
  br label %for.cond, !llvm.loop !13

for.end97:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %month2) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %month1) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %year) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #6
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nofree nounwind willreturn }
attributes #6 = { nounwind }

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
