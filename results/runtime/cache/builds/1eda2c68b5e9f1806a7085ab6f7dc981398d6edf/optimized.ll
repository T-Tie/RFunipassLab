; ModuleID = '<stdin>'
source_filename = "/tmp/tmp9u97oujt.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [4 x i8] c"%lf\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"error\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %percent = alloca double, align 8
  %a = alloca [501 x i8], align 16
  %b = alloca [501 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 8, ptr noundef nonnull align 8 %percent) #6
  call void @llvm.lifetime.start.p0(i64 noundef 501, ptr noundef nonnull align 16 %a) #6
  call void @llvm.lifetime.start.p0(i64 noundef 501, ptr noundef nonnull align 16 %b) #6
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 8 %percent)
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %a)
  %call3 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %b)
  %call5 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %a) #7
  %call7 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %b) #7
  %cmp.not = icmp eq i64 %call5, %call7
  br i1 %cmp.not, label %for.cond, label %cleanup

for.cond:                                         ; preds = %entry, %if.then47
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.then47 ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds nuw [501 x i8], ptr %a, i64 0, i64 %indvars.iv
  %0 = load i8, ptr %arrayidx, align 1, !tbaa !5
  %Pivot32 = icmp slt i8 %0, 67
  br i1 %Pivot32, label %NodeBlock, label %NodeBlock29

NodeBlock29:                                      ; preds = %for.cond
  %Pivot30 = icmp samesign ult i8 %0, 71
  br i1 %Pivot30, label %LeafBlock21, label %NodeBlock27

NodeBlock27:                                      ; preds = %NodeBlock29
  %Pivot28 = icmp samesign ult i8 %0, 84
  br i1 %Pivot28, label %LeafBlock23, label %LeafBlock25

LeafBlock25:                                      ; preds = %NodeBlock27
  %SwitchLeaf26 = icmp eq i8 %0, 84
  br i1 %SwitchLeaf26, label %land.lhs.true, label %cleanup

LeafBlock23:                                      ; preds = %NodeBlock27
  %SwitchLeaf24 = icmp eq i8 %0, 71
  br i1 %SwitchLeaf24, label %land.lhs.true, label %cleanup

LeafBlock21:                                      ; preds = %NodeBlock29
  %SwitchLeaf22 = icmp eq i8 %0, 67
  br i1 %SwitchLeaf22, label %land.lhs.true, label %cleanup

NodeBlock:                                        ; preds = %for.cond
  %Pivot = icmp slt i8 %0, 65
  br i1 %Pivot, label %LeafBlock, label %LeafBlock19

LeafBlock19:                                      ; preds = %NodeBlock
  %SwitchLeaf20 = icmp eq i8 %0, 65
  br i1 %SwitchLeaf20, label %land.lhs.true, label %cleanup

LeafBlock:                                        ; preds = %NodeBlock
  %SwitchLeaf = icmp ne i8 %0, 0
  call void @llvm.assume(i1 noundef %SwitchLeaf)
  br label %cleanup

land.lhs.true:                                    ; preds = %LeafBlock25, %LeafBlock23, %LeafBlock21, %LeafBlock19
  %arrayidx29 = getelementptr inbounds nuw [501 x i8], ptr %b, i64 0, i64 %indvars.iv
  %1 = load i8, ptr %arrayidx29, align 1, !tbaa !5, !invariant.load !8
  %Pivot46 = icmp slt i8 %1, 71
  br i1 %Pivot46, label %NodeBlock37, label %NodeBlock43

NodeBlock43:                                      ; preds = %land.lhs.true
  %Pivot44 = icmp samesign ult i8 %1, 84
  br i1 %Pivot44, label %LeafBlock39, label %LeafBlock41

LeafBlock41:                                      ; preds = %NodeBlock43
  %SwitchLeaf42 = icmp eq i8 %1, 84
  br i1 %SwitchLeaf42, label %if.then47, label %cleanup

LeafBlock39:                                      ; preds = %NodeBlock43
  %SwitchLeaf40 = icmp eq i8 %1, 71
  br i1 %SwitchLeaf40, label %if.then47, label %cleanup

NodeBlock37:                                      ; preds = %land.lhs.true
  %Pivot38 = icmp slt i8 %1, 67
  br i1 %Pivot38, label %LeafBlock33, label %LeafBlock35

LeafBlock35:                                      ; preds = %NodeBlock37
  %SwitchLeaf36 = icmp eq i8 %1, 67
  br i1 %SwitchLeaf36, label %if.then47, label %cleanup

LeafBlock33:                                      ; preds = %NodeBlock37
  %SwitchLeaf34 = icmp eq i8 %1, 65
  br i1 %SwitchLeaf34, label %if.then47, label %cleanup

if.then47:                                        ; preds = %LeafBlock41, %LeafBlock39, %LeafBlock35, %LeafBlock33
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

cleanup:                                          ; preds = %LeafBlock41, %LeafBlock39, %LeafBlock35, %LeafBlock33, %LeafBlock25, %LeafBlock23, %LeafBlock21, %LeafBlock19, %LeafBlock, %entry
  %call75 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2) #8
  call void @llvm.lifetime.end.p0(i64 noundef 501, ptr noundef nonnull %b) #8
  call void @llvm.lifetime.end.p0(i64 noundef 501, ptr noundef nonnull %a) #8
  call void @llvm.lifetime.end.p0(i64 noundef 8, ptr noundef nonnull %percent) #8
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

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { nofree nounwind }
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
