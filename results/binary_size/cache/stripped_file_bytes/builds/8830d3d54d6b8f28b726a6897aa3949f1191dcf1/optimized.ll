; ModuleID = '<stdin>'
source_filename = "/tmp/tmpwsc_wcra.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%d%d%d\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"YES\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"NO\0A\00", align 1
@str = private unnamed_addr constant [3 x i8] c"NO\00", align 1
@str.1 = private unnamed_addr constant [4 x i8] c"YES\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef range(i32 0, 335) i32 @_Z3dayi(i32 noundef %m) local_unnamed_addr #0 {
entry:
  switch i32 %m, label %sw.epilog [
    i32 12, label %sw.bb
    i32 11, label %sw.bb1
    i32 10, label %sw.bb3
    i32 9, label %sw.bb5
    i32 8, label %sw.bb7
    i32 7, label %sw.bb9
    i32 6, label %sw.bb11
    i32 5, label %sw.bb13
    i32 4, label %sw.bb15
    i32 3, label %sw.bb17
    i32 2, label %sw.bb19
  ]

sw.bb:                                            ; preds = %entry
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry
  br label %sw.epilog

sw.bb13:                                          ; preds = %entry
  br label %sw.epilog

sw.bb15:                                          ; preds = %entry
  br label %sw.epilog

sw.bb17:                                          ; preds = %entry
  br label %sw.epilog

sw.bb19:                                          ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb17, %sw.bb13, %sw.bb9, %sw.bb5, %sw.bb1, %sw.bb, %sw.bb3, %sw.bb7, %sw.bb11, %sw.bb15, %sw.bb19, %entry
  %d.0 = phi i32 [ 0, %entry ], [ 334, %sw.bb ], [ 304, %sw.bb1 ], [ 273, %sw.bb3 ], [ 243, %sw.bb5 ], [ 212, %sw.bb7 ], [ 181, %sw.bb9 ], [ 151, %sw.bb11 ], [ 120, %sw.bb13 ], [ 90, %sw.bb15 ], [ 59, %sw.bb17 ], [ 31, %sw.bb19 ]
  ret i32 %d.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 {
entry:
  %n = alloca i32, align 4
  %y = alloca i32, align 4
  %m1 = alloca i32, align 4
  %m2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %y) #4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %m1) #4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %m2) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %n)
  br label %while.cond

while.cond:                                       ; preds = %if.end14, %entry
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %dec = add nsw i32 %0, -1
  store i32 %dec, ptr %n, align 4, !tbaa !5
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %y, ptr noundef nonnull %m1, ptr noundef nonnull %m2)
  %1 = load i32, ptr %m1, align 4, !tbaa !5
  %call2 = call noundef range(i32 -2147483617, -2147483648) i32 @_Z3dayi(i32 noundef %1)
  %2 = load i32, ptr %m2, align 4, !tbaa !5
  %call3 = call noundef range(i32 -2147483617, -2147483648) i32 @_Z3dayi(i32 noundef %2)
  %3 = load i32, ptr %y, align 4, !tbaa !5
  %4 = and i32 %3, 3
  %cmp = icmp eq i32 %4, 0
  %rem4 = srem i32 %3, 100
  %cmp5 = icmp ne i32 %rem4, 0
  %or.cond = and i1 %cmp, %cmp5
  %rem6 = srem i32 %3, 400
  %cmp7 = icmp eq i32 %rem6, 0
  %or.cond5 = or i1 %cmp7, %or.cond
  br i1 %or.cond5, label %if.then, label %if.end14

if.then:                                          ; preds = %while.body
  %cmp8 = icmp sgt i32 %1, 2
  %inc = zext i1 %cmp8 to i32
  %spec.select = add nuw nsw i32 %call2, %inc
  %cmp10 = icmp sgt i32 %2, 2
  %inc12 = zext i1 %cmp10 to i32
  %spec.select6 = add nuw nsw i32 %call3, %inc12
  br label %if.end14

if.end14:                                         ; preds = %if.then, %while.body
  %d1.0 = phi i32 [ %call2, %while.body ], [ %spec.select, %if.then ]
  %d2.0 = phi i32 [ %call3, %while.body ], [ %spec.select6, %if.then ]
  %sub = sub nsw i32 %d1.0, %d2.0
  %rem15.lhs.trunc = trunc nsw i32 %sub to i16
  %rem154 = srem i16 %rem15.lhs.trunc, 7
  %cmp16 = icmp eq i16 %rem154, 0
  %str.1.str = select i1 %cmp16, ptr @str.1, ptr @str
  %puts = call i32 @puts(ptr noundef nonnull dereferenceable(1) %str.1.str) #5
  br label %while.cond, !llvm.loop !9

while.end:                                        ; preds = %while.cond
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %m2) #5
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %m1) #5
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %y) #5
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #5
  ret i32 0
}

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #3

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
attributes #5 = { nounwind }

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
