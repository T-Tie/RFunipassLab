; ModuleID = '<stdin>'
source_filename = "/tmp/tmpb_oj3uxi.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%d\0A%d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %n)
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull %a) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull %b) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull %c) #5
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %a)
  %call2 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %c)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 1, %entry ], [ %inc, %for.inc ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %sub = add nsw i32 %0, -2
  %cmp.not = icmp sgt i32 %i.0, %sub
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %call3 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %b)
  %1 = load i32, ptr %b, align 4, !tbaa !5
  %2 = load i32, ptr %a, align 4, !tbaa !5
  %cmp4 = icmp sgt i32 %1, %2
  %3 = load i32, ptr %c, align 4
  %cmp5 = icmp sgt i32 %2, %3
  %or.cond = select i1 %cmp4, i1 %cmp5, i1 false
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 %2, ptr %c, align 4, !tbaa !5
  store i32 %1, ptr %a, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %4 = phi i32 [ %1, %if.then ], [ %2, %for.body ]
  %5 = phi i32 [ %2, %if.then ], [ %3, %for.body ]
  %cmp6 = icmp sgt i32 %1, %5
  br i1 %cmp6, label %land.lhs.true7, label %if.end10.thread

land.lhs.true7:                                   ; preds = %if.end
  %cmp8 = icmp sgt i32 %5, %4
  br i1 %cmp8, label %for.inc.sink.split, label %if.end10

if.end10:                                         ; preds = %land.lhs.true7
  %cmp11.not = icmp sgt i32 %4, %1
  br i1 %cmp11.not, label %if.then14, label %if.end25

if.end10.thread:                                  ; preds = %if.end
  %cmp111 = icmp sle i32 %4, %1
  br label %if.end15

if.then14:                                        ; preds = %if.end10
  store i32 %1, ptr %c, align 4, !tbaa !5
  br label %if.end15

if.end15:                                         ; preds = %if.end10.thread, %if.then14
  %6 = phi i32 [ %1, %if.then14 ], [ %5, %if.end10.thread ]
  %cmp112 = phi i1 [ false, %if.then14 ], [ %cmp111, %if.end10.thread ]
  %cmp21 = icmp sle i32 %6, %4
  %brmerge5 = or i1 %cmp21, %cmp112
  br i1 %brmerge5, label %if.end25, label %if.then24

if.then24:                                        ; preds = %if.end15
  store i32 %4, ptr %c, align 4, !tbaa !5
  store i32 %6, ptr %a, align 4, !tbaa !5
  br label %if.end25

if.end25:                                         ; preds = %if.end10, %if.end15, %if.then24
  %7 = phi i32 [ %4, %if.end15 ], [ %6, %if.then24 ], [ %4, %if.end10 ]
  %8 = phi i32 [ %6, %if.end15 ], [ %4, %if.then24 ], [ %5, %if.end10 ]
  %cmp26 = icmp sgt i32 %8, %1
  %cmp28 = icmp sgt i32 %1, %7
  %or.cond6 = and i1 %cmp26, %cmp28
  br i1 %or.cond6, label %if.then29, label %for.inc

if.then29:                                        ; preds = %if.end25
  store i32 %8, ptr %a, align 4, !tbaa !5
  br label %for.inc.sink.split

for.inc.sink.split:                               ; preds = %land.lhs.true7, %if.then29
  %a.sink = phi ptr [ %c, %if.then29 ], [ %a, %land.lhs.true7 ]
  store i32 %1, ptr %a.sink, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.inc.sink.split, %if.end25
  %inc = add nuw nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %9 = load i32, ptr %a, align 4, !tbaa !5
  %10 = load i32, ptr %c, align 4, !tbaa !5
  %call31 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %9, i32 noundef %10) #5
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %c) #5
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %b) #5
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %a) #5
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #5
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind willreturn }
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
