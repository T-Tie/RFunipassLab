; ModuleID = '<stdin>'
source_filename = "/tmp/tmp8hkjgngt.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [9 x i8] c"%d%d%d%d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %t = alloca i32, align 4
  %c = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %a) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n, ptr noundef nonnull %a, ptr noundef nonnull %b, ptr noundef nonnull %t)
  %0 = load i32, ptr %a, align 4, !tbaa !5
  %1 = load i32, ptr %b, align 4, !tbaa !5
  %cmp = icmp sgt i32 %0, %1
  br i1 %cmp, label %for.cond.preheader, label %if.else

if.else:                                          ; preds = %entry
  store i32 %0, ptr %t, align 4, !tbaa !5
  store i32 %1, ptr %a, align 4, !tbaa !5
  store i32 %0, ptr %b, align 4, !tbaa !5
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry, %if.else
  %.ph6 = phi i32 [ %1, %if.else ], [ %0, %entry ]
  br label %for.cond

for.cond:                                         ; preds = %for.cond.preheader, %if.end13
  %2 = phi i32 [ %7, %if.end13 ], [ %.ph6, %for.cond.preheader ]
  %i.0 = phi i32 [ %inc, %if.end13 ], [ 3, %for.cond.preheader ]
  %3 = load i32, ptr %n, align 4, !tbaa !5
  %cmp1.not = icmp sgt i32 %i.0, %3
  br i1 %cmp1.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %c) #4
  %call2 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %c)
  %4 = load i32, ptr %c, align 4, !tbaa !5
  %5 = load i32, ptr %a, align 4, !tbaa !5
  %cmp3 = icmp sgt i32 %4, %5
  %6 = load i32, ptr %b, align 4
  %cmp4 = icmp sgt i32 %4, %6
  %or.cond = select i1 %cmp3, i1 %cmp4, i1 false
  br i1 %or.cond, label %if.then5, label %if.else6

if.then5:                                         ; preds = %for.body
  store i32 %5, ptr %t, align 4, !tbaa !5
  store i32 %4, ptr %a, align 4, !tbaa !5
  br label %if.end13.sink.split

if.else6:                                         ; preds = %for.body
  %cmp7 = icmp slt i32 %4, %5
  %or.cond5 = select i1 %cmp7, i1 %cmp4, i1 false
  br i1 %or.cond5, label %if.end13.sink.split, label %if.end13

if.end13.sink.split:                              ; preds = %if.else6, %if.then5
  %.sink = phi i32 [ %5, %if.then5 ], [ %4, %if.else6 ]
  %.ph = phi i32 [ %4, %if.then5 ], [ %5, %if.else6 ]
  store i32 %.sink, ptr %b, align 4, !tbaa !5
  br label %if.end13

if.end13:                                         ; preds = %if.end13.sink.split, %if.else6
  %7 = phi i32 [ %5, %if.else6 ], [ %.ph, %if.end13.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %c) #4
  %inc = add nuw nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %call14 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %2)
  %8 = load i32, ptr %b, align 4, !tbaa !5
  %call15 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %8)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %a) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #4
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

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
