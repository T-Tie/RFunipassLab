; ModuleID = '<stdin>'
source_filename = "/tmp/tmp_5zu3n03.cpp"
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
  %year = alloca i32, align 4
  %montho = alloca i32, align 4
  %montht = alloca i32, align 4
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %year) #6
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %montho) #6
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %montht) #6
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #6
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %n)
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %i.0, %0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %year, ptr noundef nonnull %montho, ptr noundef nonnull %montht)
  %1 = load i32, ptr %year, align 4, !tbaa !5
  %2 = load i32, ptr %montht, align 4, !tbaa !5
  %call2 = call noundef i32 @_Z8DiJiTianiii(i32 noundef %1, i32 noundef %2, i32 noundef 1) #7
  %3 = load i32, ptr %montho, align 4, !tbaa !5
  %call3 = call noundef i32 @_Z8DiJiTianiii(i32 noundef %1, i32 noundef %3, i32 noundef 1) #7
  %sub = sub nsw i32 %call2, %call3
  %rem = srem i32 %sub, 7
  %cmp4 = icmp eq i32 %rem, 0
  %str.1.str = select i1 %cmp4, ptr @str.1, ptr @str
  %puts1 = call i32 @puts(ptr noundef nonnull dereferenceable(1) %str.1.str) #8
  %inc = add nuw nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #8
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %montht) #8
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %montho) #8
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %year) #8
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_Z8DiJiTianiii(i32 noundef %year, i32 noundef %month, i32 noundef %day) local_unnamed_addr #3 {
entry:
  %rem = srem i32 %year, 400
  %cmp25 = icmp eq i32 %rem, 0
  %0 = and i32 %year, 3
  %cmp28 = icmp eq i32 %0, 0
  %rem29 = srem i32 %year, 100
  %cmp30 = icmp ne i32 %rem29, 0
  %or.cond = and i1 %cmp28, %cmp30
  %smax = call i32 @llvm.smax.i32(i32 noundef %month, i32 noundef 1)
  %brmerge = or i1 %cmp25, %or.cond
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %result.0 = phi i32 [ 0, %entry ], [ %result.1, %for.inc ]
  %i.0 = phi i32 [ 1, %entry ], [ %inc, %for.inc ]
  %exitcond.not = icmp eq i32 %i.0, %smax
  br i1 %exitcond.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  switch i32 %i.0, label %for.inc [
    i32 1, label %if.then
    i32 3, label %if.then
    i32 5, label %if.then
    i32 7, label %if.then
    i32 8, label %if.then
    i32 10, label %if.then
    i32 12, label %if.then
    i32 4, label %if.then20
    i32 6, label %if.then20
    i32 9, label %if.then20
    i32 11, label %if.then20
    i32 2, label %if.then24
  ]

if.then:                                          ; preds = %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body
  %add = add nsw i32 %result.0, 31
  br label %for.inc

if.then20:                                        ; preds = %for.body, %for.body, %for.body, %for.body
  %add21 = add nsw i32 %result.0, 30
  br label %for.inc

if.then24:                                        ; preds = %for.body
  br i1 %brmerge, label %if.then31, label %if.else33

if.then31:                                        ; preds = %if.then24
  %add32 = add nsw i32 %result.0, 29
  br label %for.inc

if.else33:                                        ; preds = %if.then24
  %add34 = add nsw i32 %result.0, 28
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then, %if.else33, %if.then31, %if.then20
  %result.1 = phi i32 [ %add, %if.then ], [ %add21, %if.then20 ], [ %add32, %if.then31 ], [ %add34, %if.else33 ], [ %result.0, %for.body ]
  %inc = add nuw i32 %i.0, 1
  br label %for.cond, !llvm.loop !12

for.end:                                          ; preds = %for.cond
  %add38 = add nsw i32 %result.0, %day
  ret i32 %add38
}

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
attributes #7 = { nounwind memory(none) }
attributes #8 = { nounwind }

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
