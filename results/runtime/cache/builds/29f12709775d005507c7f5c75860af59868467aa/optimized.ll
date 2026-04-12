; ModuleID = '<stdin>'
source_filename = "/tmp/tmpk_d3jsf8.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [5 x i8] c"%d%d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%d\0A%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %a) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %a, ptr noundef nonnull %b)
  %0 = load i32, ptr %b, align 4, !tbaa !5
  %1 = load i32, ptr %a, align 4, !tbaa !5
  %cmp = icmp sgt i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 %1, ptr %b, align 4, !tbaa !5
  store i32 %0, ptr %a, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = phi i32 [ %1, %if.then ], [ %0, %entry ]
  %3 = phi i32 [ %0, %if.then ], [ %1, %entry ]
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = phi i32 [ %2, %if.end ], [ %9, %for.inc ]
  %5 = phi i32 [ %3, %if.end ], [ %10, %for.inc ]
  %i.0 = phi i32 [ 3, %if.end ], [ %inc, %for.inc ]
  %exitcond.not = icmp eq i32 %i.0, 100
  br i1 %exitcond.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %c) #4
  %call2 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %c)
  %6 = load i32, ptr %c, align 4, !tbaa !5
  %7 = load i32, ptr %b, align 4, !tbaa !5
  %cmp3 = icmp sgt i32 %6, %7
  %8 = load i32, ptr %a, align 4
  %cmp4 = icmp slt i32 %6, %8
  %or.cond = select i1 %cmp3, i1 %cmp4, i1 false
  br i1 %or.cond, label %for.inc.sink.split, label %if.else

if.else:                                          ; preds = %for.body
  %cmp6 = icmp sgt i32 %6, %8
  br i1 %cmp6, label %if.then7, label %for.inc

if.then7:                                         ; preds = %if.else
  store i32 %6, ptr %a, align 4, !tbaa !5
  br label %for.inc.sink.split

for.inc.sink.split:                               ; preds = %for.body, %if.then7
  %.sink = phi i32 [ %8, %if.then7 ], [ %6, %for.body ]
  %.ph5 = phi i32 [ %6, %if.then7 ], [ %8, %for.body ]
  store i32 %.sink, ptr %b, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.inc.sink.split, %if.else
  %9 = phi i32 [ %7, %if.else ], [ %.sink, %for.inc.sink.split ]
  %10 = phi i32 [ %8, %if.else ], [ %.ph5, %for.inc.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %c) #4
  %inc = add nuw nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %call10 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %5, i32 noundef %4)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %a) #4
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) #3

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
