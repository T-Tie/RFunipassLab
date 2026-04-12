; ModuleID = '<stdin>'
source_filename = "/tmp/tmpnu02slb3.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [13 x i8] c"%d%d%d%d%d%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  %d = alloca i32, align 4
  %e = alloca i32, align 4
  %f = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %a) #3
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %b) #3
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %c) #3
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %d) #3
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %e) #3
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %f) #3
  br label %while.body

while.body:                                       ; preds = %entry, %if.else
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %a, ptr noundef nonnull align 4 %b, ptr noundef nonnull align 4 %c, ptr noundef nonnull align 4 %d, ptr noundef nonnull align 4 %e, ptr noundef nonnull align 4 %f)
  %0 = load i32, ptr %a, align 4, !tbaa !5
  %1 = load i32, ptr %b, align 4, !tbaa !5
  %cmp = icmp eq i32 %0, %1
  %.pre = load i32, ptr %c, align 4, !tbaa !5
  %cmp1 = icmp eq i32 %0, %.pre
  %or.cond1 = select i1 %cmp, i1 %cmp1, i1 false
  %2 = load i32, ptr %d, align 4
  %cmp3 = icmp eq i32 %0, %2
  %or.cond2 = select i1 %or.cond1, i1 %cmp3, i1 false
  %3 = load i32, ptr %e, align 4
  %cmp5 = icmp eq i32 %0, %3
  %or.cond3 = select i1 %or.cond2, i1 %cmp5, i1 false
  %4 = load i32, ptr %f, align 4, !tbaa !5
  %5 = or i32 %4, %0
  %or.cond = icmp eq i32 %5, 0
  %or.cond13 = select i1 %or.cond3, i1 %or.cond, i1 false
  br i1 %or.cond13, label %while.end, label %if.else

if.else:                                          ; preds = %while.body
  %cmp10 = icmp sgt i32 %.pre, %4
  %add = add nsw i32 %4, 60
  %sub12 = sext i1 %cmp10 to i32
  %.sink11 = add nsw i32 %3, %sub12
  %.sink10 = select i1 %cmp10, i32 59, i32 60
  %add.pn = select i1 %cmp10, i32 %add, i32 %4
  %cmp29.not = icmp sgt i32 %.sink11, %1
  %add31 = add nsw i32 %.sink10, %3
  %spec.select6 = select i1 %cmp29.not, i32 12, i32 11
  %spec.select7 = select i1 %cmp29.not, i32 %.sink11, i32 %add31
  %B.2 = sub nsw i32 %spec.select7, %1
  %add23 = sub i32 %2, %0
  %A.2 = add i32 %add23, %spec.select6
  %mul = mul nsw i32 %A.2, 3600
  %mul42 = mul nsw i32 %B.2, 60
  %add43 = sub i32 %add.pn, %.pre
  %C.1 = add i32 %add43, %mul
  %add44 = add i32 %C.1, %mul42
  %call45 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %add44)
  br label %while.body, !llvm.loop !9

while.end:                                        ; preds = %while.body
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %f) #4
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %e) #4
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %d) #4
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %c) #4
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %b) #4
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %a) #4
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
attributes #3 = { nofree nounwind }
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
