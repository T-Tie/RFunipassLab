; ModuleID = '<stdin>'
source_filename = "/tmp/tmpk_d3jsf8.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [5 x i8] c"%d%d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%d\0A%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %a) #3
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %b) #3
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %a, ptr noundef nonnull align 4 %b)
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
  %.sink = phi i32 [ 3, %if.end ], [ %inc, %for.inc ]
  %exitcond.not = icmp eq i32 %.sink, 100
  br i1 %exitcond.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull %c) #4
  %call2 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %c)
  %6 = load i32, ptr %c, align 4, !tbaa !5
  %7 = load i32, ptr %b, align 4, !tbaa !5
  %cmp3 = icmp sgt i32 %6, %7
  %8 = load i32, ptr %a, align 4, !tbaa !5
  %cmp4 = icmp slt i32 %6, %8
  %or.cond = select i1 %cmp3, i1 %cmp4, i1 false
  br i1 %or.cond, label %for.inc.gvnsink.split, label %if.else

if.else:                                          ; preds = %for.body
  %cmp6 = icmp sgt i32 %6, %8
  br i1 %cmp6, label %for.inc.gvnsink.split, label %for.inc

for.inc.gvnsink.split:                            ; preds = %for.body, %if.else
  %m.0 = phi i32 [ %6, %if.else ], [ %8, %for.body ]
  %phiofops = phi i32 [ %8, %if.else ], [ %6, %for.body ]
  store i32 %m.0, ptr %a, align 4, !tbaa !5
  store i32 %phiofops, ptr %b, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.inc.gvnsink.split, %if.else
  %9 = phi i32 [ %phiofops, %for.inc.gvnsink.split ], [ %7, %if.else ]
  %10 = phi i32 [ %m.0, %for.inc.gvnsink.split ], [ %8, %if.else ]
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %c) #4
  %inc = add nuw nsw i32 %.sink, 1
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %call10 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %5, i32 noundef %4)
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %b) #4
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %a) #4
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #2

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind willreturn }
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
