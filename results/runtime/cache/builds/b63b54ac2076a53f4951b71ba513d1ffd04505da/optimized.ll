; ModuleID = '<stdin>'
source_filename = "/tmp/tmp9u97oujt.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [4 x i8] c"%lf\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"no\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %percent = alloca double, align 8
  %a = alloca [501 x i8], align 16
  %b = alloca [501 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 8, ptr noundef nonnull align 8 %percent) #5
  call void @llvm.lifetime.start.p0(i64 noundef 501, ptr noundef nonnull align 16 %a) #5
  call void @llvm.lifetime.start.p0(i64 noundef 501, ptr noundef nonnull align 16 %b) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 8 %percent)
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %a)
  %call3 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %b)
  %call5 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %a) #6
  %call7 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %b) #6
  %cmp.not = icmp eq i64 %call5, %call7
  br i1 %cmp.not, label %for.cond, label %cleanup

for.cond:                                         ; preds = %entry, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds nuw [501 x i8], ptr %a, i64 0, i64 %indvars.iv
  %0 = load i8, ptr %arrayidx, align 1, !tbaa !5
  br label %NodeBlock17

NodeBlock17:                                      ; preds = %for.cond
  %Pivot18 = icmp slt i8 %0, 67
  br i1 %Pivot18, label %NodeBlock, label %NodeBlock15

NodeBlock15:                                      ; preds = %NodeBlock17
  %Pivot16 = icmp slt i8 %0, 71
  br i1 %Pivot16, label %LeafBlock7, label %NodeBlock13

NodeBlock13:                                      ; preds = %NodeBlock15
  %Pivot14 = icmp slt i8 %0, 84
  br i1 %Pivot14, label %LeafBlock9, label %LeafBlock11

LeafBlock11:                                      ; preds = %NodeBlock13
  %SwitchLeaf12 = icmp eq i8 %0, 84
  br i1 %SwitchLeaf12, label %land.lhs.true, label %cleanup

LeafBlock9:                                       ; preds = %NodeBlock13
  %SwitchLeaf10 = icmp eq i8 %0, 71
  br i1 %SwitchLeaf10, label %land.lhs.true, label %cleanup

LeafBlock7:                                       ; preds = %NodeBlock15
  %SwitchLeaf8 = icmp eq i8 %0, 67
  br i1 %SwitchLeaf8, label %land.lhs.true, label %cleanup

NodeBlock:                                        ; preds = %NodeBlock17
  %Pivot = icmp slt i8 %0, 65
  br i1 %Pivot, label %LeafBlock, label %LeafBlock5

LeafBlock5:                                       ; preds = %NodeBlock
  %SwitchLeaf6 = icmp eq i8 %0, 65
  br i1 %SwitchLeaf6, label %land.lhs.true, label %cleanup

LeafBlock:                                        ; preds = %NodeBlock
  %SwitchLeaf = icmp eq i8 %0, 0
  br i1 %SwitchLeaf, label %for.cond50, label %cleanup

land.lhs.true:                                    ; preds = %LeafBlock11, %LeafBlock9, %LeafBlock7, %LeafBlock5
  %arrayidx29 = getelementptr inbounds nuw [501 x i8], ptr %b, i64 0, i64 %indvars.iv
  %1 = load i8, ptr %arrayidx29, align 1, !tbaa !5
  br label %NodeBlock31

NodeBlock31:                                      ; preds = %land.lhs.true
  %Pivot32 = icmp slt i8 %1, 71
  br i1 %Pivot32, label %NodeBlock23, label %NodeBlock29

NodeBlock29:                                      ; preds = %NodeBlock31
  %Pivot30 = icmp slt i8 %1, 84
  br i1 %Pivot30, label %LeafBlock25, label %LeafBlock27

LeafBlock27:                                      ; preds = %NodeBlock29
  %SwitchLeaf28 = icmp eq i8 %1, 84
  br i1 %SwitchLeaf28, label %for.inc, label %cleanup

LeafBlock25:                                      ; preds = %NodeBlock29
  %SwitchLeaf26 = icmp eq i8 %1, 71
  br i1 %SwitchLeaf26, label %for.inc, label %cleanup

NodeBlock23:                                      ; preds = %NodeBlock31
  %Pivot24 = icmp slt i8 %1, 67
  br i1 %Pivot24, label %LeafBlock19, label %LeafBlock21

LeafBlock21:                                      ; preds = %NodeBlock23
  %SwitchLeaf22 = icmp eq i8 %1, 67
  br i1 %SwitchLeaf22, label %for.inc, label %cleanup

LeafBlock19:                                      ; preds = %NodeBlock23
  %SwitchLeaf20 = icmp eq i8 %1, 65
  br i1 %SwitchLeaf20, label %for.inc, label %cleanup

for.inc:                                          ; preds = %LeafBlock27, %LeafBlock25, %LeafBlock21, %LeafBlock19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !8

for.cond50:                                       ; preds = %LeafBlock, %for.body55
  %indvars.iv2 = phi i64 [ %indvars.iv.next3, %for.body55 ], [ 0, %LeafBlock ]
  %number.0 = phi i32 [ %spec.select, %for.body55 ], [ 0, %LeafBlock ]
  %arrayidx52 = getelementptr inbounds nuw [501 x i8], ptr %a, i64 0, i64 %indvars.iv2
  %2 = load i8, ptr %arrayidx52, align 1, !tbaa !5
  %cmp54.not = icmp eq i8 %2, 0
  br i1 %cmp54.not, label %for.end68, label %for.body55

for.body55:                                       ; preds = %for.cond50
  %arrayidx60 = getelementptr inbounds nuw [501 x i8], ptr %b, i64 0, i64 %indvars.iv2
  %3 = load i8, ptr %arrayidx60, align 1, !tbaa !5
  %cmp62 = icmp eq i8 %2, %3
  %inc64 = zext i1 %cmp62 to i32
  %spec.select = add nuw nsw i32 %number.0, %inc64
  %indvars.iv.next3 = add nuw nsw i64 %indvars.iv2, 1
  br label %for.cond50, !llvm.loop !11

for.end68:                                        ; preds = %for.cond50
  %conv69 = uitofp nneg i32 %number.0 to double
  %conv72 = uitofp i64 %call5 to double
  %4 = load double, ptr %percent, align 8, !tbaa !12
  %mul = fmul double %4, %conv72
  %cmp73 = fcmp olt double %mul, %conv69
  br i1 %cmp73, label %cleanup, label %if.else76

if.else76:                                        ; preds = %for.end68
  br label %cleanup

cleanup:                                          ; preds = %LeafBlock27, %LeafBlock25, %LeafBlock21, %LeafBlock19, %LeafBlock11, %LeafBlock9, %LeafBlock7, %LeafBlock5, %LeafBlock, %for.end68, %entry, %if.else76
  %.str.4.sink = phi ptr [ @.str.4, %if.else76 ], [ @.str.2, %entry ], [ @.str.3, %for.end68 ], [ @.str.2, %LeafBlock ], [ @.str.2, %LeafBlock5 ], [ @.str.2, %LeafBlock7 ], [ @.str.2, %LeafBlock9 ], [ @.str.2, %LeafBlock11 ], [ @.str.2, %LeafBlock19 ], [ @.str.2, %LeafBlock21 ], [ @.str.2, %LeafBlock25 ], [ @.str.2, %LeafBlock27 ]
  %call77 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %.str.4.sink) #7
  call void @llvm.lifetime.end.p0(i64 noundef 501, ptr noundef nonnull %b) #7
  call void @llvm.lifetime.end.p0(i64 noundef 501, ptr noundef nonnull %a) #7
  call void @llvm.lifetime.end.p0(i64 noundef 8, ptr noundef nonnull %percent) #7
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

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!8 = distinct !{!8, !9, !10}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!"llvm.loop.unroll.disable"}
!11 = distinct !{!11, !9, !10}
!12 = !{!13, !13, i64 0}
!13 = !{!"double", !6, i64 0}
