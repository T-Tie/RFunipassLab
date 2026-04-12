; ModuleID = '<stdin>'
source_filename = "/tmp/tmp1sg02844.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [5 x i8] c"%d%d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %x1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %y2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %x1) #6
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %x2) #6
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %y1) #6
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %y2) #6
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %x1, ptr noundef nonnull align 4 %y1)
  %0 = load i32, ptr %x1, align 4, !tbaa !5
  %1 = zext i32 %0 to i64
  %2 = load i32, ptr %y1, align 4, !tbaa !5
  %3 = zext i32 %2 to i64
  %4 = call ptr @llvm.stacksave.p0()
  %5 = mul nuw i64 %3, %1
  %vla = alloca i32, i64 %5, align 16
  br label %for.cond

for.cond:                                         ; preds = %for.end, %entry
  %indvars.iv22 = phi i64 [ %indvars.iv.next23, %for.end ], [ 0, %entry ]
  %6 = load i32, ptr %x1, align 4, !tbaa !5
  %cmp = icmp sgt i32 %6, 0
  br i1 %cmp, label %for.cond1.preheader, label %for.end9

for.cond1.preheader:                              ; preds = %for.cond
  %7 = mul nuw nsw i64 %indvars.iv22, %3
  %arrayidx = getelementptr inbounds nuw i32, ptr %vla, i64 %7
  br label %for.cond1

for.cond1:                                        ; preds = %for.cond1.preheader, %for.inc
  %indvars.iv = phi i64 [ 0, %for.cond1.preheader ], [ %indvars.iv.next, %for.inc ]
  %8 = load i32, ptr %y1, align 4, !tbaa !5
  %9 = sext i32 %8 to i64
  %cmp2 = icmp slt i64 %indvars.iv, %9
  br i1 %cmp2, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.cond1
  %arrayidx5 = getelementptr inbounds nuw i32, ptr %arrayidx, i64 %indvars.iv
  %call6 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %arrayidx5)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond1, !llvm.loop !9

for.end:                                          ; preds = %for.cond1
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv22, 1
  br label %for.cond

for.end9:                                         ; preds = %for.cond
  %call10 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %x2, ptr noundef nonnull %y2)
  %10 = load i32, ptr %x2, align 4, !tbaa !5
  %11 = zext i32 %10 to i64
  %12 = load i32, ptr %y2, align 4, !tbaa !5
  %13 = zext i32 %12 to i64
  %14 = mul nuw i64 %13, %11
  %vla11 = alloca i32, i64 %14, align 16
  br label %for.cond12

for.cond12:                                       ; preds = %for.end25, %for.end9
  %15 = phi i32 [ %18, %for.end25 ], [ %12, %for.end9 ]
  %16 = phi i32 [ %.pre, %for.end25 ], [ %10, %for.end9 ]
  %indvars.iv28 = phi i64 [ %indvars.iv.next29, %for.end25 ], [ 0, %for.end9 ]
  %cmp13 = icmp sgt i32 %16, 0
  br i1 %cmp13, label %for.cond15.preheader, label %for.cond80

for.cond15.preheader:                             ; preds = %for.cond12
  %17 = mul nuw nsw i64 %indvars.iv28, %13
  %arrayidx19 = getelementptr inbounds nuw i32, ptr %vla11, i64 %17
  br label %for.cond15

for.cond15:                                       ; preds = %for.cond15.preheader, %for.inc23
  %18 = phi i32 [ %15, %for.cond15.preheader ], [ %.pre31, %for.inc23 ]
  %indvars.iv25 = phi i64 [ 0, %for.cond15.preheader ], [ %indvars.iv.next26, %for.inc23 ]
  %19 = sext i32 %18 to i64
  %cmp16 = icmp slt i64 %indvars.iv25, %19
  br i1 %cmp16, label %for.inc23, label %for.end25

for.inc23:                                        ; preds = %for.cond15
  %arrayidx21 = getelementptr inbounds nuw i32, ptr %arrayidx19, i64 %indvars.iv25
  %call22 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %arrayidx21)
  %indvars.iv.next26 = add nuw nsw i64 %indvars.iv25, 1
  %.pre31 = load i32, ptr %y2, align 4, !tbaa !5
  br label %for.cond15, !llvm.loop !12

for.end25:                                        ; preds = %for.cond15
  %indvars.iv.next29 = add nuw nsw i64 %indvars.iv28, 1
  %.pre = load i32, ptr %x2, align 4, !tbaa !5
  br label %for.cond12

for.cond80:                                       ; preds = %for.cond12, %for.end97
  %20 = load i32, ptr %x1, align 4, !tbaa !5
  %cmp81 = icmp sgt i32 %20, 0
  br i1 %cmp81, label %for.cond87.preheader, label %for.end101

for.cond87.preheader:                             ; preds = %for.cond80
  %call94.peel = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef 0) #7
  %21 = load i32, ptr %y2, align 4, !tbaa !5
  %cmp88.peel = icmp sgt i32 %21, 1
  br i1 %cmp88.peel, label %for.cond87, label %for.end97

for.cond87:                                       ; preds = %for.cond87.preheader, %for.cond87
  %call94 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef 0) #7
  %22 = load i32, ptr %y2, align 4, !tbaa !5
  %cmp88 = icmp sgt i32 %22, 1
  br i1 %cmp88, label %for.cond87, label %for.end97, !llvm.loop !13

for.end97:                                        ; preds = %for.cond87, %for.cond87.preheader
  %putchar = call i32 @putchar(i32 10)
  br label %for.cond80

for.end101:                                       ; preds = %for.cond80
  call void @llvm.stackrestore.p0(ptr %4)
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %y2) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %y1) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %x2) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %x1) #7
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #3

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore.p0(ptr) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #5

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) #6

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #6 = { nofree nounwind }
attributes #7 = { nounwind }

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
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.peeled.count", i32 1}
