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
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %a) #4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %b) #4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %c) #4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %d) #4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %e) #4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %f) #4
  br label %while.cond

while.cond:                                       ; preds = %if.end41, %entry
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %a, ptr noundef nonnull align 4 %b, ptr noundef nonnull align 4 %c, ptr noundef nonnull align 4 %d, ptr noundef nonnull align 4 %e, ptr noundef nonnull align 4 %f)
  %0 = load i32, ptr %a, align 4, !tbaa !5
  %1 = load i32, ptr %b, align 4, !tbaa !5
  %cmp = icmp eq i32 %0, %1
  %.pre = load i32, ptr %c, align 4, !tbaa !5
  %cmp1 = icmp eq i32 %0, %.pre
  %or.cond8 = select i1 %cmp, i1 %cmp1, i1 false
  %2 = load i32, ptr %d, align 4
  %cmp3 = icmp eq i32 %0, %2
  %or.cond9 = select i1 %or.cond8, i1 %cmp3, i1 false
  %3 = load i32, ptr %e, align 4
  %cmp5 = icmp eq i32 %0, %3
  %or.cond10 = select i1 %or.cond9, i1 %cmp5, i1 false
  br i1 %or.cond10, label %land.lhs.true6, label %if.else

land.lhs.true6:                                   ; preds = %while.cond
  %4 = load i32, ptr %f, align 4, !tbaa !5
  %5 = or i32 %4, %0
  %or.cond = icmp eq i32 %5, 0
  br i1 %or.cond, label %while.end, label %if.else

if.else:                                          ; preds = %land.lhs.true6, %while.cond
  %6 = load i32, ptr %f, align 4, !tbaa !5
  %cmp10 = icmp sgt i32 %.pre, %6
  br i1 %cmp10, label %if.then11, label %if.then27

if.then11:                                        ; preds = %if.else
  %add = add nsw i32 %6, 60
  %7 = load i32, ptr %e, align 4, !tbaa !5
  %sub12 = add nsw i32 %7, -1
  %cmp13.not = icmp sgt i32 %sub12, %1
  %add16 = add nsw i32 %7, 59
  %B.1.v = select i1 %cmp13.not, i32 %sub12, i32 %add16
  br label %if.end41

if.then27:                                        ; preds = %if.else
  %8 = load i32, ptr %e, align 4, !tbaa !5
  %cmp29.not = icmp sgt i32 %8, %1
  %add31 = add nsw i32 %8, 60
  %B.4.v = select i1 %cmp29.not, i32 %8, i32 %add31
  br label %if.end41

if.end41:                                         ; preds = %if.then27, %if.then11
  %cmp29.not.sink = phi i1 [ %cmp29.not, %if.then27 ], [ %cmp13.not, %if.then11 ]
  %B.1.v.pn = phi i32 [ %B.4.v, %if.then27 ], [ %B.1.v, %if.then11 ]
  %add.pn = phi i32 [ %6, %if.then27 ], [ %add, %if.then11 ]
  %.sink = select i1 %cmp29.not.sink, i32 12, i32 11
  %9 = load i32, ptr %d, align 4, !tbaa !5
  %add37 = add nsw i32 %.sink, %9
  %A.1 = sub nsw i32 %add37, %0
  %B.2 = sub nsw i32 %B.1.v.pn, %1
  %mul = mul nsw i32 %A.1, 3600
  %mul42 = mul nsw i32 %B.2, 60
  %add43 = sub i32 %add.pn, %.pre
  %C.1 = add i32 %add43, %mul42
  %add44 = add i32 %C.1, %mul
  %call45 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %add44) #5
  br label %while.cond, !llvm.loop !9

while.end:                                        ; preds = %land.lhs.true6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %f) #5
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %e) #5
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %d) #5
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %c) #5
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %b) #5
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %a) #5
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
