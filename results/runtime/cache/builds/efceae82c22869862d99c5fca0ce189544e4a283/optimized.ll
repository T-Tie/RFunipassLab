; ModuleID = '<stdin>'
source_filename = "/tmp/tmpvezd157u.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"%d %d %d\00", align 1
@str = private unnamed_addr constant [3 x i8] c"NO\00", align 1
@str.1 = private unnamed_addr constant [4 x i8] c"YES\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %year = alloca i32, align 4
  %m1 = alloca i32, align 4
  %m2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #7
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %year) #7
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %m1) #7
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %m2) #7
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %n)
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 1, %entry ], [ %inc, %for.body ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp.not = icmp sgt i32 %i.0, %0
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %year, ptr noundef nonnull %m1, ptr noundef nonnull %m2)
  %1 = load i32, ptr %year, align 4, !tbaa !5
  %2 = load i32, ptr %m1, align 4, !tbaa !5
  %3 = load i32, ptr %m2, align 4, !tbaa !5
  call void @_Z9xiangguaniii(i32 noundef %1, i32 noundef %2, i32 noundef %3) #8
  %inc = add nuw nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %m2) #8
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %m1) #8
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %year) #8
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #8
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local void @_Z9xiangguaniii(i32 noundef %y, i32 noundef %m1, i32 noundef %m2) local_unnamed_addr #3 {
entry:
  %smax = tail call i32 @llvm.smax.i32(i32 noundef %m1, i32 noundef 1) #9
  br label %for.cond

for.cond:                                         ; preds = %if.end12, %entry
  %x1.0 = phi i32 [ 0, %entry ], [ %x1.2, %if.end12 ]
  %i.0 = phi i32 [ 1, %entry ], [ %inc, %if.end12 ]
  %exitcond.not = icmp eq i32 %i.0, %smax
  br i1 %exitcond.not, label %for.cond13.preheader, label %for.body

for.cond13.preheader:                             ; preds = %for.cond
  %smax26 = tail call i32 @llvm.smax.i32(i32 noundef %m2, i32 noundef 1) #9
  br label %for.cond13

for.body:                                         ; preds = %for.cond
  %add = add nsw i32 %x1.0, 31
  %Pivot41 = icmp samesign ult i32 %i.0, 6
  br i1 %Pivot41, label %NodeBlock, label %NodeBlock38

NodeBlock38:                                      ; preds = %for.body
  %Pivot39 = icmp samesign ult i32 %i.0, 9
  br i1 %Pivot39, label %LeafBlock30, label %NodeBlock36

NodeBlock36:                                      ; preds = %NodeBlock38
  %Pivot37 = icmp samesign ult i32 %i.0, 11
  br i1 %Pivot37, label %LeafBlock32, label %LeafBlock34

LeafBlock34:                                      ; preds = %NodeBlock36
  %SwitchLeaf35 = icmp eq i32 %i.0, 11
  br i1 %SwitchLeaf35, label %if.end.thread, label %if.end12

LeafBlock32:                                      ; preds = %NodeBlock36
  %SwitchLeaf33 = icmp eq i32 %i.0, 9
  br i1 %SwitchLeaf33, label %if.end.thread, label %if.end12

LeafBlock30:                                      ; preds = %NodeBlock38
  %SwitchLeaf31 = icmp eq i32 %i.0, 6
  br i1 %SwitchLeaf31, label %if.end.thread, label %if.end12

NodeBlock:                                        ; preds = %for.body
  %Pivot = icmp samesign ult i32 %i.0, 4
  br i1 %Pivot, label %LeafBlock, label %LeafBlock28

LeafBlock28:                                      ; preds = %NodeBlock
  %SwitchLeaf29 = icmp eq i32 %i.0, 4
  br i1 %SwitchLeaf29, label %if.end.thread, label %if.end12

LeafBlock:                                        ; preds = %NodeBlock
  %SwitchLeaf = icmp eq i32 %i.0, 2
  br i1 %SwitchLeaf, label %if.then8, label %if.end12

if.end.thread:                                    ; preds = %LeafBlock34, %LeafBlock32, %LeafBlock30, %LeafBlock28
  %dec = add nsw i32 %x1.0, 30
  br label %if.end12

if.then8:                                         ; preds = %LeafBlock
  %call = tail call noundef i32 @_Z7runniani(i32 noundef %y) #8
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.else, label %if.then9

if.then9:                                         ; preds = %if.then8
  %sub = add nsw i32 %x1.0, 29
  br label %if.end12

if.else:                                          ; preds = %if.then8
  %sub10 = add nsw i32 %x1.0, 28
  br label %if.end12

if.end12:                                         ; preds = %LeafBlock34, %LeafBlock32, %LeafBlock30, %LeafBlock28, %LeafBlock, %if.then9, %if.else, %if.end.thread
  %x1.2 = phi i32 [ %dec, %if.end.thread ], [ %sub, %if.then9 ], [ %sub10, %if.else ], [ %add, %LeafBlock ], [ %add, %LeafBlock28 ], [ %add, %LeafBlock30 ], [ %add, %LeafBlock32 ], [ %add, %LeafBlock34 ]
  %inc = add nuw i32 %i.0, 1
  br label %for.cond, !llvm.loop !12

for.cond13:                                       ; preds = %for.cond13.preheader, %if.end36
  %x2.0 = phi i32 [ %x2.2, %if.end36 ], [ 0, %for.cond13.preheader ]
  %j.0 = phi i32 [ %inc38, %if.end36 ], [ 1, %for.cond13.preheader ]
  %exitcond27.not = icmp eq i32 %j.0, %smax26
  br i1 %exitcond27.not, label %for.end39, label %for.body15

for.body15:                                       ; preds = %for.cond13
  %add16 = add nsw i32 %x2.0, 31
  %Pivot59 = icmp samesign ult i32 %j.0, 6
  br i1 %Pivot59, label %NodeBlock46, label %NodeBlock56

NodeBlock56:                                      ; preds = %for.body15
  %Pivot57 = icmp samesign ult i32 %j.0, 9
  br i1 %Pivot57, label %LeafBlock48, label %NodeBlock54

NodeBlock54:                                      ; preds = %NodeBlock56
  %Pivot55 = icmp samesign ult i32 %j.0, 11
  br i1 %Pivot55, label %LeafBlock50, label %LeafBlock52

LeafBlock52:                                      ; preds = %NodeBlock54
  %SwitchLeaf53 = icmp eq i32 %j.0, 11
  br i1 %SwitchLeaf53, label %if.end26.thread, label %if.end36

LeafBlock50:                                      ; preds = %NodeBlock54
  %SwitchLeaf51 = icmp eq i32 %j.0, 9
  br i1 %SwitchLeaf51, label %if.end26.thread, label %if.end36

LeafBlock48:                                      ; preds = %NodeBlock56
  %SwitchLeaf49 = icmp eq i32 %j.0, 6
  br i1 %SwitchLeaf49, label %if.end26.thread, label %if.end36

NodeBlock46:                                      ; preds = %for.body15
  %Pivot47 = icmp samesign ult i32 %j.0, 4
  br i1 %Pivot47, label %LeafBlock42, label %LeafBlock44

LeafBlock44:                                      ; preds = %NodeBlock46
  %SwitchLeaf45 = icmp eq i32 %j.0, 4
  br i1 %SwitchLeaf45, label %if.end26.thread, label %if.end36

LeafBlock42:                                      ; preds = %NodeBlock46
  %SwitchLeaf43 = icmp eq i32 %j.0, 2
  br i1 %SwitchLeaf43, label %if.then28, label %if.end36

if.end26.thread:                                  ; preds = %LeafBlock52, %LeafBlock50, %LeafBlock48, %LeafBlock44
  %dec25 = add nsw i32 %x2.0, 30
  br label %if.end36

if.then28:                                        ; preds = %LeafBlock42
  %call29 = tail call noundef i32 @_Z7runniani(i32 noundef %y) #8
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.else33, label %if.then31

if.then31:                                        ; preds = %if.then28
  %sub32 = add nsw i32 %x2.0, 29
  br label %if.end36

if.else33:                                        ; preds = %if.then28
  %sub34 = add nsw i32 %x2.0, 28
  br label %if.end36

if.end36:                                         ; preds = %LeafBlock52, %LeafBlock50, %LeafBlock48, %LeafBlock44, %LeafBlock42, %if.then31, %if.else33, %if.end26.thread
  %x2.2 = phi i32 [ %dec25, %if.end26.thread ], [ %sub32, %if.then31 ], [ %sub34, %if.else33 ], [ %add16, %LeafBlock42 ], [ %add16, %LeafBlock44 ], [ %add16, %LeafBlock48 ], [ %add16, %LeafBlock50 ], [ %add16, %LeafBlock52 ]
  %inc38 = add nuw i32 %j.0, 1
  br label %for.cond13, !llvm.loop !13

for.end39:                                        ; preds = %for.cond13
  %sub40 = sub nsw i32 %x1.0, %x2.0
  %rem = srem i32 %sub40, 7
  %cmp41 = icmp eq i32 %rem, 0
  %str.1.str = select i1 %cmp41, ptr @str.1, ptr @str
  %puts = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) %str.1.str) #8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef range(i32 0, 2) i32 @_Z7runniani(i32 noundef %y) local_unnamed_addr #4 {
entry:
  %0 = and i32 %y, 3
  %cmp = icmp eq i32 %0, 0
  %rem1 = srem i32 %y, 100
  %cmp2 = icmp ne i32 %rem1, 0
  %or.cond = and i1 %cmp, %cmp2
  %rem3 = srem i32 %y, 400
  %cmp4 = icmp eq i32 %rem3, 0
  %or.cond2 = or i1 %cmp4, %or.cond
  %retval.0 = zext i1 %or.cond2 to i32
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nofree nounwind willreturn }
attributes #8 = { nounwind }
attributes #9 = { willreturn }

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
