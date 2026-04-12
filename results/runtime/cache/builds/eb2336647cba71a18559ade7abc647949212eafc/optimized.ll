; ModuleID = '<stdin>'
source_filename = "/tmp/tmpvezd157u.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"%d %d %d\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"YES\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"NO\0A\00", align 1
@str = private unnamed_addr constant [3 x i8] c"NO\00", align 1
@str.2 = private unnamed_addr constant [4 x i8] c"YES\00", align 1

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

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 1, %entry ], [ %inc, %for.inc ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp.not = icmp sgt i32 %i.0, %0
  br i1 %cmp.not, label %for.end, label %for.inc

for.inc:                                          ; preds = %for.cond
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %year, ptr noundef nonnull %m1, ptr noundef nonnull %m2)
  %1 = load i32, ptr %year, align 4, !tbaa !5
  %2 = load i32, ptr %m1, align 4, !tbaa !5
  %3 = load i32, ptr %m2, align 4, !tbaa !5
  call void @_Z9xiangguaniii(i32 noundef %1, i32 noundef %2, i32 noundef %3)
  %inc = add nuw nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %m2) #8
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %m1) #8
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %year) #8
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #8
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local void @_Z9xiangguaniii(i32 noundef %y, i32 noundef %m1, i32 noundef %m2) local_unnamed_addr #3 {
for.end39:
  %x1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 dereferenceable(4) %x1) #9
  store i32 0, ptr %x1, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 dereferenceable(4) %x2) #9
  store i32 0, ptr %x2, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 dereferenceable(4) %i) #9
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 dereferenceable(4) %j) #9
  call fastcc void @outlined_ir_func_0(ptr noalias nofree noundef nonnull align 4 captures(none) dereferenceable(4) %i, i32 noundef %m1, ptr noalias nofree noundef nonnull align 4 captures(none) dereferenceable(4) %x1, i32 noundef %y) #10
  call fastcc void @outlined_ir_func_0(ptr noalias nofree noundef nonnull align 4 captures(none) dereferenceable(4) %j, i32 noundef %m2, ptr noalias nofree noundef nonnull align 4 captures(none) dereferenceable(4) %x2, i32 noundef %y) #10
  %0 = load i32, ptr %x1, align 4, !tbaa !5
  %1 = load i32, ptr %x2, align 4, !tbaa !5
  %sub40 = sub nsw i32 %0, %1
  %rem = srem i32 %sub40, 7
  %cmp41 = icmp eq i32 %rem, 0
  %str.2.str = select i1 %cmp41, ptr @str.2, ptr @str
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) %str.2.str)
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %j) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %i) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %x2) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %x1) #7
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
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
  %or.cond1 = or i1 %cmp4, %or.cond
  %retval.0 = zext i1 %or.cond1 to i32
  ret i32 %retval.0
}

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: minsize mustprogress nofree norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc void @outlined_ir_func_0(ptr noalias nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %0, i32 noundef %1, ptr noalias nofree noundef nonnull align 4 captures(none) dereferenceable(4) %2, i32 noundef %3) unnamed_addr #5 {
entry_to_outline:
  %.promoted = load i32, ptr %2, align 1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry_to_outline
  %sub103 = phi i32 [ %.promoted, %entry_to_outline ], [ %sub104, %for.inc ]
  %storemerge = phi i32 [ 1, %entry_to_outline ], [ %inc, %for.inc ]
  %cmp = icmp slt i32 %storemerge, %1
  br i1 %cmp, label %for.body, label %for.end.exitStub

for.body:                                         ; preds = %for.cond
  %add = add nsw i32 %sub103, 31
  store i32 %add, ptr %2, align 4, !tbaa !5
  switch i32 %storemerge, label %for.inc [
    i32 4, label %if.end.thread
    i32 6, label %if.end.thread
    i32 9, label %if.end.thread
    i32 11, label %if.end.thread
    i32 2, label %if.then8
  ]

if.end.thread:                                    ; preds = %for.body, %for.body, %for.body, %for.body
  %dec = add nsw i32 %sub103, 30
  br label %for.inc.sink.split

if.then8:                                         ; preds = %for.body
  %call = tail call noundef i32 @_Z7runniani(i32 noundef %3) #10
  %tobool.not = icmp eq i32 %call, 0
  %spec.select.neg = select i1 %tobool.not, i32 -3, i32 -2
  %sub10 = add nsw i32 %spec.select.neg, %add
  br label %for.inc.sink.split

for.inc.sink.split:                               ; preds = %if.then8, %if.end.thread
  %dec.sink = phi i32 [ %dec, %if.end.thread ], [ %sub10, %if.then8 ]
  store i32 %dec.sink, ptr %2, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.inc.sink.split, %for.body
  %sub104 = phi i32 [ %add, %for.body ], [ %dec.sink, %for.inc.sink.split ]
  %inc = add nuw nsw i32 %storemerge, 1
  br label %for.cond, !llvm.loop !12

for.end.exitStub:                                 ; preds = %for.cond
  %smax = call i32 @llvm.smax.i32(i32 %1, i32 1)
  store i32 %smax, ptr %0, align 4, !tbaa !5
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) #7

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { minsize mustprogress nofree norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nofree nounwind }
attributes #8 = { nounwind }
attributes #9 = { nofree nounwind willreturn }
attributes #10 = { nofree nosync nounwind }

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
