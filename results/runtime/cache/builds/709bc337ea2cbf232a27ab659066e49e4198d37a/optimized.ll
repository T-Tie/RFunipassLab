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
  call void @llvm.lifetime.start.p0(i64 noundef 500, ptr noundef nonnull align 16 %dna1) #6
  call void @llvm.lifetime.start.p0(i64 noundef 500, ptr noundef nonnull align 16 %dna2) #6
  call void @llvm.lifetime.start.p0(i64 noundef 8, ptr noundef nonnull align 8 %a) #6
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 8 %a)
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %dna1)
  %call3 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %dna2)
  %call5 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %dna1) #7
  %conv = trunc i64 %call5 to i32
  %call7 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %dna2) #7
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
  %0 = load i8, ptr %arrayidx, align 1, !tbaa !5
  br label %NodeBlock22

NodeBlock22:                                      ; preds = %for.body
  %Pivot23 = icmp slt i8 %0, 71
  br i1 %Pivot23, label %NodeBlock, label %NodeBlock20

NodeBlock20:                                      ; preds = %NodeBlock22
  %Pivot21 = icmp slt i8 %0, 84
  br i1 %Pivot21, label %LeafBlock16, label %LeafBlock18

LeafBlock18:                                      ; preds = %NodeBlock20
  %SwitchLeaf19 = icmp eq i8 %0, 84
  br i1 %SwitchLeaf19, label %land.lhs.true, label %if.end63

LeafBlock16:                                      ; preds = %NodeBlock20
  %SwitchLeaf17 = icmp eq i8 %0, 71
  br i1 %SwitchLeaf17, label %land.lhs.true, label %if.end63

NodeBlock:                                        ; preds = %NodeBlock22
  %Pivot = icmp slt i8 %0, 67
  br i1 %Pivot, label %LeafBlock, label %LeafBlock14

LeafBlock14:                                      ; preds = %NodeBlock
  %SwitchLeaf15 = icmp eq i8 %0, 67
  br i1 %SwitchLeaf15, label %land.lhs.true, label %if.end63

LeafBlock:                                        ; preds = %NodeBlock
  %SwitchLeaf = icmp eq i8 %0, 65
  br i1 %SwitchLeaf, label %land.lhs.true, label %if.end63

land.lhs.true:                                    ; preds = %LeafBlock18, %LeafBlock16, %LeafBlock14, %LeafBlock
  %arrayidx27 = getelementptr inbounds nuw [500 x i8], ptr %dna2, i64 0, i64 %indvars.iv
  %1 = load i8, ptr %arrayidx27, align 1, !tbaa !5
  br label %NodeBlock36

NodeBlock36:                                      ; preds = %land.lhs.true
  %Pivot37 = icmp slt i8 %1, 71
  br i1 %Pivot37, label %NodeBlock28, label %NodeBlock34

NodeBlock34:                                      ; preds = %NodeBlock36
  %Pivot35 = icmp slt i8 %1, 84
  br i1 %Pivot35, label %LeafBlock30, label %LeafBlock32

LeafBlock32:                                      ; preds = %NodeBlock34
  %SwitchLeaf33 = icmp eq i8 %1, 84
  br i1 %SwitchLeaf33, label %if.then45, label %if.end63

LeafBlock30:                                      ; preds = %NodeBlock34
  %SwitchLeaf31 = icmp eq i8 %1, 71
  br i1 %SwitchLeaf31, label %if.then45, label %if.end63

NodeBlock28:                                      ; preds = %NodeBlock36
  %Pivot29 = icmp slt i8 %1, 67
  br i1 %Pivot29, label %LeafBlock24, label %LeafBlock26

LeafBlock26:                                      ; preds = %NodeBlock28
  %SwitchLeaf27 = icmp eq i8 %1, 67
  br i1 %SwitchLeaf27, label %if.then45, label %if.end63

LeafBlock24:                                      ; preds = %NodeBlock28
  %SwitchLeaf25 = icmp eq i8 %1, 65
  br i1 %SwitchLeaf25, label %if.then45, label %if.end63

if.then45:                                        ; preds = %LeafBlock32, %LeafBlock30, %LeafBlock26, %LeafBlock24
  %cmp52 = icmp eq i8 %0, %1
  %inc = zext i1 %cmp52 to i32
  %spec.select = add nsw i32 %t.0, %inc
  br i1 %cmp52, label %if.end63, label %for.inc

if.end63:                                         ; preds = %LeafBlock32, %LeafBlock30, %LeafBlock26, %LeafBlock24, %LeafBlock18, %LeafBlock16, %LeafBlock14, %LeafBlock, %if.then45
  %t.2 = phi i32 [ %spec.select, %if.then45 ], [ %t.0, %LeafBlock ], [ %t.0, %LeafBlock14 ], [ %t.0, %LeafBlock16 ], [ %t.0, %LeafBlock18 ], [ %t.0, %LeafBlock24 ], [ %t.0, %LeafBlock26 ], [ %t.0, %LeafBlock30 ], [ %t.0, %LeafBlock32 ]
  br label %NodeBlock50

NodeBlock50:                                      ; preds = %if.end63
  %Pivot51 = icmp slt i8 %0, 71
  br i1 %Pivot51, label %NodeBlock42, label %NodeBlock48

NodeBlock48:                                      ; preds = %NodeBlock50
  %Pivot49 = icmp slt i8 %0, 84
  br i1 %Pivot49, label %LeafBlock44, label %LeafBlock46

LeafBlock46:                                      ; preds = %NodeBlock48
  %SwitchLeaf47 = icmp eq i8 %0, 84
  br i1 %SwitchLeaf47, label %lor.lhs.false83, label %if.end119

LeafBlock44:                                      ; preds = %NodeBlock48
  %SwitchLeaf45 = icmp eq i8 %0, 71
  br i1 %SwitchLeaf45, label %lor.lhs.false83, label %if.end119

NodeBlock42:                                      ; preds = %NodeBlock50
  %Pivot43 = icmp slt i8 %0, 67
  br i1 %Pivot43, label %LeafBlock38, label %LeafBlock40

LeafBlock40:                                      ; preds = %NodeBlock42
  %SwitchLeaf41 = icmp eq i8 %0, 67
  br i1 %SwitchLeaf41, label %lor.lhs.false83, label %if.end119

LeafBlock38:                                      ; preds = %NodeBlock42
  %SwitchLeaf39 = icmp eq i8 %0, 65
  br i1 %SwitchLeaf39, label %lor.lhs.false83, label %if.end119

lor.lhs.false83:                                  ; preds = %LeafBlock46, %LeafBlock44, %LeafBlock40, %LeafBlock38
  %arrayidx85 = getelementptr inbounds nuw [500 x i8], ptr %dna2, i64 0, i64 %indvars.iv
  %2 = load i8, ptr %arrayidx85, align 1, !tbaa !5
  br label %NodeBlock64

NodeBlock64:                                      ; preds = %lor.lhs.false83
  %Pivot65 = icmp slt i8 %2, 71
  br i1 %Pivot65, label %NodeBlock56, label %NodeBlock62

NodeBlock62:                                      ; preds = %NodeBlock64
  %Pivot63 = icmp slt i8 %2, 84
  br i1 %Pivot63, label %LeafBlock58, label %LeafBlock60

LeafBlock60:                                      ; preds = %NodeBlock62
  %SwitchLeaf61 = icmp eq i8 %2, 84
  br i1 %SwitchLeaf61, label %for.inc, label %if.end119

LeafBlock58:                                      ; preds = %NodeBlock62
  %SwitchLeaf59 = icmp eq i8 %2, 71
  br i1 %SwitchLeaf59, label %for.inc, label %if.end119

NodeBlock56:                                      ; preds = %NodeBlock64
  %Pivot57 = icmp slt i8 %2, 67
  br i1 %Pivot57, label %LeafBlock52, label %LeafBlock54

LeafBlock54:                                      ; preds = %NodeBlock56
  %SwitchLeaf55 = icmp eq i8 %2, 67
  br i1 %SwitchLeaf55, label %for.inc, label %if.end119

LeafBlock52:                                      ; preds = %NodeBlock56
  %SwitchLeaf53 = icmp eq i8 %2, 65
  br i1 %SwitchLeaf53, label %for.inc, label %if.end119

for.inc:                                          ; preds = %LeafBlock60, %LeafBlock58, %LeafBlock54, %LeafBlock52, %if.then45
  %t.4 = phi i32 [ %spec.select, %if.then45 ], [ %t.2, %LeafBlock52 ], [ %t.2, %LeafBlock54 ], [ %t.2, %LeafBlock58 ], [ %t.2, %LeafBlock60 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !8

if.then107:                                       ; preds = %for.cond
  %conv108 = sitofp i32 %t.0 to double
  %conv109 = sitofp i32 %conv to double
  %div = fdiv double %conv108, %conv109
  %3 = load double, ptr %a, align 8, !tbaa !11
  %cmp110 = fcmp ogt double %div, %3
  br i1 %cmp110, label %if.then111, label %if.end113

if.then111:                                       ; preds = %if.then107
  %call112 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2) #8
  %.pre = load double, ptr %a, align 8, !tbaa !11
  br label %if.end113

if.end113:                                        ; preds = %if.then111, %if.then107
  %4 = phi double [ %.pre, %if.then111 ], [ %3, %if.then107 ]
  %cmp114 = fcmp ugt double %div, %4
  br i1 %cmp114, label %if.end119, label %if.then115

if.then115:                                       ; preds = %if.end113
  %call116 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3) #8
  br label %if.end119

if.end119:                                        ; preds = %LeafBlock60, %LeafBlock58, %LeafBlock54, %LeafBlock52, %LeafBlock46, %LeafBlock44, %LeafBlock40, %LeafBlock38, %if.then115, %if.end113
  br i1 true, label %if.end123, label %if.then121

if.then121:                                       ; preds = %if.end119
  unreachable

if.end123:                                        ; preds = %if.end119
  br i1 %exitcond.not.not, label %if.end127, label %if.end127.sink.split

if.end127.sink.split:                             ; preds = %if.end123, %entry
  %call12212 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4) #8
  br label %if.end127

if.end127:                                        ; preds = %if.end127.sink.split, %if.end123
  call void @llvm.lifetime.end.p0(i64 noundef 8, ptr noundef nonnull %a) #8
  call void @llvm.lifetime.end.p0(i64 noundef 500, ptr noundef nonnull %dna2) #8
  call void @llvm.lifetime.end.p0(i64 noundef 500, ptr noundef nonnull %dna1) #8
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

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nofree nounwind willreturn }
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
!8 = distinct !{!8, !9, !10}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!"llvm.loop.unroll.disable"}
!11 = !{!12, !12, i64 0}
!12 = !{!"double", !6, i64 0}
