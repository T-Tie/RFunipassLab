; ModuleID = '<stdin>'
source_filename = "/tmp/tmps8v_9qsi.cpp"
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
  %mon1 = alloca i32, align 4
  %mon2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %n)
  br label %for.cond

for.cond:                                         ; preds = %if.end, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %if.end ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %i.0, %0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull %year) #6
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull %mon1) #6
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull %mon2) #6
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %year, ptr noundef nonnull %mon1, ptr noundef nonnull %mon2)
  %1 = load i32, ptr %mon1, align 4, !tbaa !5
  %2 = load i32, ptr %mon2, align 4, !tbaa !5
  %cmp2 = icmp sgt i32 %1, %2
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 %2, ptr %mon1, align 4, !tbaa !5
  store i32 %1, ptr %mon2, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %3 = phi i32 [ %1, %if.then ], [ %2, %for.body ]
  %4 = phi i32 [ %2, %if.then ], [ %1, %for.body ]
  %5 = load i32, ptr %year, align 4, !tbaa !5
  %call3 = call noundef i32 @_Z2fciii(i32 noundef %5, i32 noundef %4, i32 noundef %3) #6
  %cmp4 = icmp eq i32 %call3, 0
  %str.1.str = select i1 %cmp4, ptr @str.1, ptr @str
  %puts = call i32 @puts(ptr noundef nonnull dereferenceable(1) %str.1.str) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %mon2) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %mon1) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %year) #6
  %inc = add nuw nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #6
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef range(i32 0, 2) i32 @_Z2fciii(i32 noundef %year, i32 noundef %mon1, i32 noundef %mon2) local_unnamed_addr #3 {
entry:
  switch i32 %mon1, label %if.end22 [
    i32 2, label %if.then
    i32 1, label %land.lhs.true
  ]

land.lhs.true:                                    ; preds = %entry
  %cmp3 = icmp sgt i32 %mon2, 2
  br i1 %cmp3, label %if.then, label %if.end22

if.then:                                          ; preds = %entry, %land.lhs.true
  %0 = and i32 %year, 3
  %cmp4 = icmp eq i32 %0, 0
  %cmp6 = icmp sgt i32 %year, 3
  %or.cond = and i1 %cmp6, %cmp4
  %rem88 = urem i32 %year, 100
  %cmp9 = icmp ne i32 %rem88, 0
  %or.cond10 = and i1 %cmp9, %or.cond
  br i1 %or.cond10, label %if.end22, label %if.else

if.else:                                          ; preds = %if.then
  %rem12 = srem i32 %year, 100
  %cmp15 = icmp sgt i32 %year, 99
  %rem179 = urem i32 %year, 400
  %1 = or i32 %rem179, %rem12
  %2 = icmp eq i32 %1, 0
  %or.cond12 = and i1 %cmp15, %2
  %spec.select = zext i1 %or.cond12 to i32
  br label %if.end22

if.end22:                                         ; preds = %if.else, %if.then, %entry, %land.lhs.true
  %delta.1 = phi i32 [ 0, %land.lhs.true ], [ 0, %entry ], [ 1, %if.then ], [ %spec.select, %if.else ]
  ret i32 %delta.1
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
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
