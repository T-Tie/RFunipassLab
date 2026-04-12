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
  br i1 %cmp, label %for.cond.preheader, label %if.end127.sink.split136

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
  %Pivot53 = icmp slt i8 %0, 71
  br i1 %Pivot53, label %NodeBlock, label %NodeBlock50

NodeBlock50:                                      ; preds = %for.body
  %Pivot51 = icmp samesign ult i8 %0, 84
  br i1 %Pivot51, label %LeafBlock46, label %LeafBlock48

LeafBlock48:                                      ; preds = %NodeBlock50
  %SwitchLeaf49 = icmp eq i8 %0, 84
  br i1 %SwitchLeaf49, label %land.lhs.true, label %if.end127.sink.split136

LeafBlock46:                                      ; preds = %NodeBlock50
  %SwitchLeaf47 = icmp eq i8 %0, 71
  br i1 %SwitchLeaf47, label %land.lhs.true, label %if.end127.sink.split136

NodeBlock:                                        ; preds = %for.body
  %Pivot = icmp slt i8 %0, 67
  br i1 %Pivot, label %LeafBlock, label %LeafBlock44

LeafBlock44:                                      ; preds = %NodeBlock
  %SwitchLeaf45 = icmp eq i8 %0, 67
  br i1 %SwitchLeaf45, label %land.lhs.true, label %if.end127.sink.split136

LeafBlock:                                        ; preds = %NodeBlock
  %SwitchLeaf = icmp eq i8 %0, 65
  br i1 %SwitchLeaf, label %land.lhs.true, label %LeafBlock68

land.lhs.true:                                    ; preds = %LeafBlock48, %LeafBlock46, %LeafBlock44, %LeafBlock
  %arrayidx27 = getelementptr inbounds nuw [500 x i8], ptr %dna2, i64 0, i64 %indvars.iv
  %1 = load i8, ptr %arrayidx27, align 1, !tbaa !5, !invariant.load !8
  %Pivot67 = icmp slt i8 %1, 71
  br i1 %Pivot67, label %NodeBlock58, label %NodeBlock64

NodeBlock64:                                      ; preds = %land.lhs.true
  %Pivot65 = icmp samesign ult i8 %1, 84
  br i1 %Pivot65, label %LeafBlock60, label %LeafBlock62

LeafBlock62:                                      ; preds = %NodeBlock64
  %SwitchLeaf63 = icmp eq i8 %1, 84
  br i1 %SwitchLeaf63, label %if.then45, label %if.end63

LeafBlock60:                                      ; preds = %NodeBlock64
  %SwitchLeaf61 = icmp eq i8 %1, 71
  br i1 %SwitchLeaf61, label %if.then45, label %if.end63

NodeBlock58:                                      ; preds = %land.lhs.true
  %Pivot59 = icmp slt i8 %1, 67
  br i1 %Pivot59, label %LeafBlock54, label %LeafBlock56

LeafBlock56:                                      ; preds = %NodeBlock58
  %SwitchLeaf57 = icmp eq i8 %1, 67
  br i1 %SwitchLeaf57, label %if.then45, label %if.end63

LeafBlock54:                                      ; preds = %NodeBlock58
  %SwitchLeaf55 = icmp eq i8 %1, 65
  br i1 %SwitchLeaf55, label %if.then45, label %if.end63

if.then45:                                        ; preds = %LeafBlock62, %LeafBlock60, %LeafBlock56, %LeafBlock54
  %cmp52 = icmp eq i8 %0, %1
  %inc = zext i1 %cmp52 to i32
  %spec.select = add nsw i32 %t.0, %inc
  br i1 %cmp52, label %if.end63, label %for.inc

if.end63:                                         ; preds = %LeafBlock62, %LeafBlock60, %LeafBlock56, %LeafBlock54, %if.then45
  %t.2 = phi i32 [ %spec.select, %if.then45 ], [ %t.0, %LeafBlock54 ], [ %t.0, %LeafBlock56 ], [ %t.0, %LeafBlock60 ], [ %t.0, %LeafBlock62 ]
  br i1 %Pivot53, label %NodeBlock72, label %NodeBlock78

NodeBlock78:                                      ; preds = %if.end63
  %Pivot79 = icmp samesign ugt i8 %0, 83
  %SwitchLeaf75 = icmp eq i8 %0, 71
  %or.cond = or i1 %Pivot79, %SwitchLeaf75
  br i1 %or.cond, label %lor.lhs.false83, label %if.end127.sink.split136

NodeBlock72:                                      ; preds = %if.end63
  %Pivot73 = icmp samesign ult i8 %0, 67
  br i1 %Pivot73, label %LeafBlock68, label %LeafBlock70

LeafBlock70:                                      ; preds = %NodeBlock72
  %SwitchLeaf71 = icmp eq i8 %0, 67
  br i1 %SwitchLeaf71, label %lor.lhs.false83, label %if.end127.sink.split136

LeafBlock68:                                      ; preds = %LeafBlock, %NodeBlock72
  %t.2106125 = phi i32 [ %t.2, %NodeBlock72 ], [ %t.0, %LeafBlock ]
  %SwitchLeaf69 = icmp eq i8 %0, 65
  br i1 %SwitchLeaf69, label %LeafBlock68.lor.lhs.false83_crit_edge, label %if.end127.sink.split136

LeafBlock68.lor.lhs.false83_crit_edge:            ; preds = %LeafBlock68
  %arrayidx85.phi.trans.insert = getelementptr inbounds nuw [500 x i8], ptr %dna2, i64 0, i64 %indvars.iv
  %.pre134 = load i8, ptr %arrayidx85.phi.trans.insert, align 1, !tbaa !5
  br label %lor.lhs.false83

lor.lhs.false83:                                  ; preds = %NodeBlock78, %LeafBlock68.lor.lhs.false83_crit_edge, %LeafBlock70
  %2 = phi i8 [ %1, %LeafBlock70 ], [ %.pre134, %LeafBlock68.lor.lhs.false83_crit_edge ], [ %1, %NodeBlock78 ]
  %t.2105 = phi i32 [ %t.2, %LeafBlock70 ], [ %t.2106125, %LeafBlock68.lor.lhs.false83_crit_edge ], [ %t.2, %NodeBlock78 ]
  %Pivot95 = icmp slt i8 %2, 71
  br i1 %Pivot95, label %NodeBlock86, label %NodeBlock92

NodeBlock92:                                      ; preds = %lor.lhs.false83
  %Pivot93 = icmp samesign ult i8 %2, 84
  br i1 %Pivot93, label %LeafBlock88, label %LeafBlock90

LeafBlock90:                                      ; preds = %NodeBlock92
  %SwitchLeaf91 = icmp eq i8 %2, 84
  br i1 %SwitchLeaf91, label %for.inc, label %if.end127.sink.split136

LeafBlock88:                                      ; preds = %NodeBlock92
  %SwitchLeaf89 = icmp eq i8 %2, 71
  br i1 %SwitchLeaf89, label %for.inc, label %if.end127.sink.split136

NodeBlock86:                                      ; preds = %lor.lhs.false83
  %Pivot87 = icmp slt i8 %2, 67
  br i1 %Pivot87, label %LeafBlock82, label %LeafBlock84

LeafBlock84:                                      ; preds = %NodeBlock86
  %SwitchLeaf85 = icmp eq i8 %2, 67
  br i1 %SwitchLeaf85, label %for.inc, label %if.end127.sink.split136

LeafBlock82:                                      ; preds = %NodeBlock86
  %SwitchLeaf83 = icmp eq i8 %2, 65
  br i1 %SwitchLeaf83, label %for.inc, label %if.end127.sink.split136

for.inc:                                          ; preds = %LeafBlock90, %LeafBlock88, %LeafBlock84, %LeafBlock82, %if.then45
  %t.4 = phi i32 [ %spec.select, %if.then45 ], [ %t.2105, %LeafBlock82 ], [ %t.2105, %LeafBlock84 ], [ %t.2105, %LeafBlock88 ], [ %t.2105, %LeafBlock90 ]
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
  %call112 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2) #8
  %.pre = load double, ptr %a, align 8, !tbaa !12
  br label %if.end113

if.end113:                                        ; preds = %if.then111, %if.then107
  %4 = phi double [ %.pre, %if.then111 ], [ %3, %if.then107 ]
  %cmp114 = fcmp ugt double %div, %4
  br i1 %cmp114, label %if.end127, label %if.end127.sink.split136

if.end127.sink.split136:                          ; preds = %NodeBlock78, %LeafBlock68, %LeafBlock70, %LeafBlock82, %LeafBlock84, %LeafBlock88, %LeafBlock90, %LeafBlock48, %LeafBlock46, %LeafBlock44, %entry, %if.end113
  %.str.3.sink = phi ptr [ @.str.3, %if.end113 ], [ @.str.4, %entry ], [ @.str.4, %LeafBlock44 ], [ @.str.4, %LeafBlock46 ], [ @.str.4, %LeafBlock48 ], [ @.str.4, %LeafBlock90 ], [ @.str.4, %LeafBlock88 ], [ @.str.4, %LeafBlock84 ], [ @.str.4, %LeafBlock82 ], [ @.str.4, %LeafBlock70 ], [ @.str.4, %LeafBlock68 ], [ @.str.4, %NodeBlock78 ]
  %call116 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %.str.3.sink) #8
  br label %if.end127

if.end127:                                        ; preds = %if.end127.sink.split136, %if.end113
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
!8 = !{}
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = !{!13, !13, i64 0}
!13 = !{!"double", !6, i64 0}
