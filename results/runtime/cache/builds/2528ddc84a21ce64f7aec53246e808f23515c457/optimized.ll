; ModuleID = '<stdin>'
source_filename = "/tmp/tmp_b80_mi6.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %temp = alloca i32, align 4
  %max = alloca i32, align 4
  %lmax = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #3
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = add i32 %0, -100
  %or.cond = icmp ult i32 %1, -98
  br i1 %or.cond, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull %temp) #4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull %max) #4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull %lmax) #4
  %call2 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %max)
  %call3 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %lmax)
  %2 = load i32, ptr %lmax, align 4, !tbaa !5
  %3 = load i32, ptr %max, align 4, !tbaa !5
  %cmp4 = icmp sgt i32 %2, %3
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  store i32 %2, ptr %temp, align 4, !tbaa !5
  store i32 %3, ptr %lmax, align 4, !tbaa !5
  store i32 %2, ptr %max, align 4, !tbaa !5
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end
  br label %while.cond

while.cond:                                       ; preds = %if.end14, %if.end6
  %i.0 = phi i32 [ 3, %if.end6 ], [ %inc, %if.end14 ]
  %4 = load i32, ptr %n, align 4, !tbaa !5
  %cmp7.not = icmp sgt i32 %i.0, %4
  br i1 %cmp7.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %call8 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %temp)
  %5 = load i32, ptr %temp, align 4, !tbaa !5
  %6 = load i32, ptr %max, align 4, !tbaa !5
  %cmp9 = icmp sgt i32 %5, %6
  br i1 %cmp9, label %if.then10, label %if.else

if.then10:                                        ; preds = %while.body
  store i32 %6, ptr %lmax, align 4, !tbaa !5
  br label %if.end14.gvnsink.split

if.else:                                          ; preds = %while.body
  %7 = load i32, ptr %lmax, align 4, !tbaa !5
  %cmp11 = icmp sgt i32 %5, %7
  br i1 %cmp11, label %if.end14.gvnsink.split, label %if.end14

if.end14.gvnsink.split:                           ; preds = %if.else, %if.then10
  %lmax.sink = phi ptr [ %max, %if.then10 ], [ %lmax, %if.else ]
  store i32 %5, ptr %lmax.sink, align 4, !tbaa !5
  br label %if.end14

if.end14:                                         ; preds = %if.end14.gvnsink.split, %if.else
  %inc = add nuw nsw i32 %i.0, 1
  br label %while.cond, !llvm.loop !9

while.end:                                        ; preds = %while.cond
  %8 = load i32, ptr %max, align 4, !tbaa !5
  %call15 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %8)
  %9 = load i32, ptr %lmax, align 4, !tbaa !5
  %call16 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %9)
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %lmax) #4
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %max) #4
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %temp) #4
  br label %cleanup

cleanup:                                          ; preds = %entry, %while.end
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #4
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

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
