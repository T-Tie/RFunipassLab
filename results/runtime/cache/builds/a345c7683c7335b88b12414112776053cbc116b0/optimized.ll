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
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #6
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %year) #6
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %m1) #6
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %m2) #6
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
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %m2) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %m1) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %year) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #7
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local void @_Z9xiangguaniii(i32 noundef %y, i32 noundef %m1, i32 noundef %m2) local_unnamed_addr #3 {
entry:
  %x1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 captures(none) dereferenceable(4) %x1) #6
  store i32 0, ptr %x1, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 captures(none) dereferenceable(4) %x2) #6
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 captures(none) dereferenceable(4) %i) #6
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 captures(none) dereferenceable(4) %j) #6
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %0 = phi i32 [ %.pre, %for.body ], [ 1, %entry ]
  %cmp = icmp slt i32 %0, %m1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %x1, align 4, !tbaa !5
  %add = add nsw i32 %1, 31
  store i32 %add, ptr %x1, align 4, !tbaa !5
  call void @outlined_ir_func_0(ptr noalias nofree noundef nonnull align 4 captures(none) dereferenceable(4) %i, ptr noalias nofree noundef nonnull align 4 captures(none) dereferenceable(4) %x1, i32 noundef %y) #6
  %.pre = load i32, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, ptr %j, align 4, !tbaa !5
  br label %for.cond13

for.cond13:                                       ; preds = %for.body15, %for.end
  %2 = phi i32 [ %.pre3, %for.body15 ], [ 0, %for.end ]
  %3 = phi i32 [ %.pre2, %for.body15 ], [ 1, %for.end ]
  %cmp14 = icmp slt i32 %3, %m2
  br i1 %cmp14, label %for.body15, label %for.end39

for.body15:                                       ; preds = %for.cond13
  %add16 = add nsw i32 %2, 31
  store i32 %add16, ptr %x2, align 4, !tbaa !5
  call void @outlined_ir_func_0(ptr noalias nofree noundef nonnull align 4 captures(none) dereferenceable(4) %j, ptr noalias nofree noundef nonnull align 4 captures(none) dereferenceable(4) %x2, i32 noundef %y) #6
  %.pre2 = load i32, ptr %j, align 4, !tbaa !5
  %.pre3 = load i32, ptr %x2, align 4, !tbaa !5
  br label %for.cond13

for.end39:                                        ; preds = %for.cond13
  %4 = load i32, ptr %x1, align 4, !tbaa !5
  %sub40 = sub nsw i32 %4, %2
  %rem = srem i32 %sub40, 7
  %cmp41 = icmp eq i32 %rem, 0
  %str.2.str = select i1 %cmp41, ptr @str.2, ptr @str
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) %str.2.str)
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull captures(none) %j) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull captures(none) %i) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull captures(none) %x2) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull captures(none) %x1) #6
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

; Function Attrs: minsize mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal void @outlined_ir_func_0(ptr noalias nofree noundef nonnull align 4 captures(none) dereferenceable(4) %0, ptr noalias nofree noundef nonnull align 4 captures(none) dereferenceable(4) %1, i32 noundef %2) #5 {
for.body_to_outline:
  %3 = load i32, ptr %0, align 4, !tbaa !5
  switch i32 %3, label %for.cond.exitStub [
    i32 4, label %if.end.thread
    i32 6, label %if.end.thread
    i32 9, label %if.end.thread
    i32 11, label %if.end.thread
    i32 2, label %if.then8
  ]

if.end.thread:                                    ; preds = %for.body_to_outline, %for.body_to_outline, %for.body_to_outline, %for.body_to_outline
  %4 = load i32, ptr %1, align 4, !tbaa !5
  %dec = add nsw i32 %4, -1
  br label %for.cond.exitStub.sink.split

if.then8:                                         ; preds = %for.body_to_outline
  %call = tail call noundef i32 @_Z7runniani(i32 noundef %2) #8
  %tobool.not = icmp eq i32 %call, 0
  %5 = load i32, ptr %1, align 4, !tbaa !5
  br i1 %tobool.not, label %if.else, label %if.then9

if.then9:                                         ; preds = %if.then8
  %sub = add nsw i32 %5, -2
  br label %for.cond.exitStub.sink.split

if.else:                                          ; preds = %if.then8
  %sub10 = add nsw i32 %5, -3
  br label %for.cond.exitStub.sink.split

for.cond.exitStub.sink.split:                     ; preds = %if.else, %if.then9, %if.end.thread
  %dec.sink = phi i32 [ %dec, %if.end.thread ], [ %sub, %if.then9 ], [ %sub10, %if.else ]
  store i32 %dec.sink, ptr %1, align 4, !tbaa !5
  br label %for.cond.exitStub

for.cond.exitStub:                                ; preds = %for.cond.exitStub.sink.split, %for.body_to_outline
  %inc = add nsw i32 %3, 1
  store i32 %inc, ptr %0, align 4, !tbaa !5
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) #6

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { minsize mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { nounwind }
attributes #8 = { nofree nosync willreturn }

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
