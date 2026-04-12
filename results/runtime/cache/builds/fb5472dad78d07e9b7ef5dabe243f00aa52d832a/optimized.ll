; ModuleID = '<stdin>'
source_filename = "/tmp/tmpw0obuhph.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%d%d%d\00", align 1
@str = private unnamed_addr constant [3 x i8] c"NO\00", align 1
@str.1 = private unnamed_addr constant [4 x i8] c"YES\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main(i32 noundef %argc, ptr nofree noundef readnone captures(none) %argv) local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %year = alloca i32, align 4
  %m1 = alloca i32, align 4
  %m2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #6
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %year) #6
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %m1) #6
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %m2) #6
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %n)
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %i.0, %0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %year, ptr noundef nonnull %m1, ptr noundef nonnull %m2)
  %1 = load i32, ptr %year, align 4, !tbaa !5
  %2 = load i32, ptr %m1, align 4, !tbaa !5
  %call2 = call noundef i32 @_Z8DiJiTianii(i32 noundef %1, i32 noundef %2) #7
  %3 = load i32, ptr %m2, align 4, !tbaa !5
  %call3 = call noundef i32 @_Z8DiJiTianii(i32 noundef %1, i32 noundef %3) #7
  %sub = sub nsw i32 %call2, %call3
  %4 = call i32 @llvm.abs.i32(i32 %sub, i1 noundef true)
  %rem8 = urem i32 %4, 7
  %cmp4 = icmp eq i32 %rem8, 0
  %str.1.str = select i1 %cmp4, ptr @str.1, ptr @str
  %puts = call i32 @puts(ptr noundef nonnull dereferenceable(1) %str.1.str) #7
  %inc = add nuw nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %m2) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %m1) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %year) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #7
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_Z8DiJiTianii(i32 noundef %year, i32 noundef %month) local_unnamed_addr #3 {
entry:
  %rem = srem i32 %year, 400
  %cmp25 = icmp eq i32 %rem, 0
  %rem27 = srem i32 %year, 100
  %cmp28 = icmp ne i32 %rem27, 0
  %0 = and i32 %year, 3
  %cmp30 = icmp eq i32 %0, 0
  %or.cond = and i1 %cmp28, %cmp30
  %smax = tail call i32 @llvm.smax.i32(i32 noundef %month, i32 noundef 1)
  %brmerge = or i1 %cmp25, %or.cond
  br label %for.cond

for.cond:                                         ; preds = %if.end37, %entry
  %i.0 = phi i32 [ 1, %entry ], [ %inc, %if.end37 ]
  %result.0 = phi i32 [ 1, %entry ], [ %result.1, %if.end37 ]
  %exitcond.not = icmp eq i32 %i.0, %smax
  br i1 %exitcond.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %Pivot39 = icmp samesign ult i32 %i.0, 6
  br i1 %Pivot39, label %NodeBlock24, label %NodeBlock36

NodeBlock36:                                      ; preds = %for.body
  %Pivot37 = icmp samesign ult i32 %i.0, 10
  br i1 %Pivot37, label %NodeBlock, label %NodeBlock34

NodeBlock34:                                      ; preds = %NodeBlock36
  %Pivot35 = icmp eq i32 %i.0, 10
  br i1 %Pivot35, label %if.then, label %NodeBlock32

NodeBlock32:                                      ; preds = %NodeBlock34
  %Pivot33 = icmp samesign ult i32 %i.0, 12
  br i1 %Pivot33, label %if.then20, label %LeafBlock30

LeafBlock30:                                      ; preds = %NodeBlock32
  %SwitchLeaf31 = icmp eq i32 %i.0, 12
  br i1 %SwitchLeaf31, label %if.then, label %if.end37

NodeBlock:                                        ; preds = %NodeBlock36
  %Pivot = icmp slt i32 %i.0, 9
  br i1 %Pivot, label %LeafBlock, label %if.then20

LeafBlock:                                        ; preds = %NodeBlock
  %SwitchLeaf = icmp eq i32 %i.0, 6
  br i1 %SwitchLeaf, label %if.then20, label %if.then

NodeBlock24:                                      ; preds = %for.body
  %Pivot25 = icmp samesign ult i32 %i.0, 3
  br i1 %Pivot25, label %NodeBlock59, label %NodeBlock55

NodeBlock55:                                      ; preds = %NodeBlock24
  %Pivot56 = icmp slt i32 %i.0, 5
  br i1 %Pivot56, label %LeafBlock53, label %if.then

LeafBlock53:                                      ; preds = %NodeBlock55
  %SwitchLeaf54 = icmp eq i32 %i.0, 3
  br i1 %SwitchLeaf54, label %if.then, label %if.then20

NodeBlock59:                                      ; preds = %NodeBlock24
  %Pivot60 = icmp slt i32 %i.0, 2
  br i1 %Pivot60, label %LeafBlock57, label %if.then24

LeafBlock57:                                      ; preds = %NodeBlock59
  %SwitchLeaf58 = icmp eq i32 %i.0, 1
  br i1 %SwitchLeaf58, label %if.then, label %if.end37

if.then:                                          ; preds = %LeafBlock57, %NodeBlock55, %LeafBlock53, %LeafBlock, %NodeBlock34, %LeafBlock30
  %add = add nsw i32 %result.0, 31
  br label %if.end37

if.then20:                                        ; preds = %LeafBlock53, %NodeBlock, %LeafBlock, %NodeBlock32
  %add21 = add nsw i32 %result.0, 30
  br label %if.end37

if.then24:                                        ; preds = %NodeBlock59
  br i1 %brmerge, label %if.then31, label %if.else33

if.then31:                                        ; preds = %if.then24
  %add32 = add nsw i32 %result.0, 29
  br label %if.end37

if.else33:                                        ; preds = %if.then24
  %add34 = add nsw i32 %result.0, 28
  br label %if.end37

if.end37:                                         ; preds = %LeafBlock57, %LeafBlock30, %if.then20, %if.then31, %if.else33, %if.then
  %result.1 = phi i32 [ %add, %if.then ], [ %add21, %if.then20 ], [ %add32, %if.then31 ], [ %add34, %if.else33 ], [ %result.0, %LeafBlock30 ], [ %result.0, %LeafBlock57 ]
  %inc = add nuw i32 %i.0, 1
  br label %for.cond, !llvm.loop !12

for.end:                                          ; preds = %for.cond
  ret i32 %result.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nofree nounwind }
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
