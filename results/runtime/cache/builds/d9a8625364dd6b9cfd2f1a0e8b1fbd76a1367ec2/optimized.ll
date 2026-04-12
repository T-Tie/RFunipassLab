; ModuleID = '<stdin>'
source_filename = "/tmp/tmpuw11o_u0.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%d%d%d\00", align 1
@str = private unnamed_addr constant [3 x i8] c"NO\00", align 1
@str.2 = private unnamed_addr constant [4 x i8] c"YES\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %year = alloca i32, align 4
  %month1 = alloca i32, align 4
  %month2 = alloca i32, align 4
  %i = alloca i32, align 4
  %m = alloca i32, align 4
  %total1 = alloca i32, align 4
  %total2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #6
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 captures(none) dereferenceable(4) %year) #6
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 captures(none) dereferenceable(4) %month1) #6
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 captures(none) dereferenceable(4) %month2) #6
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 captures(none) dereferenceable(4) %i) #6
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 captures(none) dereferenceable(4) %m) #6
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %n)
  br label %for.cond

for.cond:                                         ; preds = %for.end87, %entry
  %j.0 = phi i32 [ 0, %entry ], [ %inc96, %for.end87 ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %j.0, %0
  br i1 %cmp, label %for.end87, label %for.end97

for.end87:                                        ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 captures(none) dereferenceable(4) %total1) #7
  store i32 0, ptr %total1, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 captures(none) dereferenceable(4) %total2) #7
  store i32 0, ptr %total2, align 4, !tbaa !5
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull align 4 dereferenceable(4) %year, ptr noundef nonnull align 4 dereferenceable(4) %month1, ptr noundef nonnull align 4 dereferenceable(4) %month2)
  call fastcc void @outlined_ir_func_0(ptr noalias nofree noundef nonnull align 4 captures(none) dereferenceable(4) %i, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %month1, ptr noalias nofree noundef nonnull align 4 captures(none) dereferenceable(4) %total1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %year) #7
  call fastcc void @outlined_ir_func_0(ptr noalias nofree noundef nonnull align 4 captures(none) dereferenceable(4) %m, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %month2, ptr noalias nofree noundef nonnull align 4 captures(none) dereferenceable(4) %total2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %year) #7
  %1 = load i32, ptr %total1, align 4, !tbaa !5
  %2 = load i32, ptr %total2, align 4, !tbaa !5
  %sub = sub nsw i32 %1, %2
  %rem88 = srem i32 %sub, 7
  %cmp89 = icmp eq i32 %rem88, 0
  %str.2.str = select i1 %cmp89, ptr @str.2, ptr @str
  %puts1 = call i32 @puts(ptr nonnull dereferenceable(1) %str.2.str)
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull captures(none) %total2) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull captures(none) %total1) #7
  %inc96 = add nuw nsw i32 %j.0, 1
  br label %for.cond, !llvm.loop !9

for.end97:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull align 4 captures(none) dereferenceable(4) %m) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull align 4 captures(none) dereferenceable(4) %i) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull align 4 dereferenceable(4) %month2) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull align 4 dereferenceable(4) %month1) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull align 4 dereferenceable(4) %year) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #7
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: minsize mustprogress nofree norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc void @outlined_ir_func_0(ptr noalias nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %1, ptr noalias nofree noundef nonnull align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3) unnamed_addr #3 {
for.body_to_outline:
  %4 = load i32, ptr %1, align 4, !tbaa !5, !invariant.load !12
  %.promoted = load i32, ptr %2, align 1
  %5 = load i32, ptr %3, align 4
  %6 = and i32 %5, 3
  %cmp29 = icmp eq i32 %6, 0
  %rem30 = srem i32 %5, 100
  %cmp31 = icmp ne i32 %rem30, 0
  %or.cond = and i1 %cmp29, %cmp31
  %rem33 = srem i32 %5, 400
  %cmp34 = icmp eq i32 %rem33, 0
  %or.cond5 = or i1 %cmp34, %or.cond
  %.sink1 = select i1 %or.cond5, i32 29, i32 28
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body_to_outline
  %7 = phi i32 [ %.promoted, %for.body_to_outline ], [ %10, %for.inc ]
  %.sink = phi i32 [ 1, %for.body_to_outline ], [ %inc, %for.inc ]
  %cmp3 = icmp slt i32 %.sink, %4
  br i1 %cmp3, label %for.body4, label %for.end.exitStub

for.body4:                                        ; preds = %for.cond2
  switch i32 %.sink, label %for.inc [
    i32 1, label %if.then
    i32 3, label %if.then
    i32 5, label %if.then
    i32 7, label %if.then
    i32 8, label %if.then
    i32 10, label %if.then
    i32 12, label %if.then
    i32 4, label %if.end26.thread
    i32 6, label %if.end26.thread
    i32 9, label %if.end26.thread
    i32 11, label %if.end26.thread
    i32 2, label %if.then28
  ]

if.then:                                          ; preds = %for.body4, %for.body4, %for.body4, %for.body4, %for.body4, %for.body4, %for.body4
  %add = add nsw i32 %7, 31
  store i32 %add, ptr %2, align 4, !tbaa !5
  switch i32 %.sink, label %for.inc [
    i32 4, label %if.end26.thread
    i32 6, label %if.end26.thread
    i32 9, label %if.end26.thread
    i32 11, label %if.end26.thread
    i32 2, label %if.then28
  ]

if.end26.thread:                                  ; preds = %for.body4, %for.body4, %for.body4, %for.body4, %if.then, %if.then, %if.then, %if.then
  %8 = phi i32 [ %7, %for.body4 ], [ %7, %for.body4 ], [ %7, %for.body4 ], [ %7, %for.body4 ], [ %add, %if.then ], [ %add, %if.then ], [ %add, %if.then ], [ %add, %if.then ]
  %add25 = add nsw i32 %8, 30
  br label %for.inc.sink.split

if.then28:                                        ; preds = %for.body4, %if.then
  %9 = phi i32 [ %7, %for.body4 ], [ %add, %if.then ]
  %add37 = add nsw i32 %9, %.sink1
  br label %for.inc.sink.split

for.inc.sink.split:                               ; preds = %if.then28, %if.end26.thread
  %add25.sink = phi i32 [ %add25, %if.end26.thread ], [ %add37, %if.then28 ]
  store i32 %add25.sink, ptr %2, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.inc.sink.split, %for.body4, %if.then
  %10 = phi i32 [ %7, %for.body4 ], [ %add, %if.then ], [ %add25.sink, %for.inc.sink.split ]
  %inc = add nuw nsw i32 %.sink, 1
  br label %for.cond2, !llvm.loop !13

for.end.exitStub:                                 ; preds = %for.cond2
  %smax = tail call i32 @llvm.smax.i32(i32 %4, i32 1)
  store i32 %smax, ptr %0, align 4, !tbaa !5
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { minsize mustprogress nofree norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!12 = !{}
!13 = distinct !{!13, !10, !11}
