; ModuleID = '<stdin>'
source_filename = "/tmp/tmpc05jlvox.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@__const.main.month = private unnamed_addr constant [13 x i32] [i32 0, i32 3, i32 0, i32 3, i32 2, i32 3, i32 2, i32 3, i32 3, i32 2, i32 3, i32 2, i32 3], align 16
@.str.1 = private unnamed_addr constant [9 x i8] c"%d %d %d\00", align 1
@str = private unnamed_addr constant [3 x i8] c"NO\00", align 1
@str.1 = private unnamed_addr constant [4 x i8] c"YES\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %a) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %c) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp13 = icmp sgt i32 %0, 0
  br i1 %cmp13, label %for.body, label %for.end24

for.body:                                         ; preds = %entry, %if.end15
  %i.014 = phi i32 [ %inc23, %if.end15 ], [ 0, %entry ]
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %a, ptr noundef nonnull %b, ptr noundef nonnull %c)
  %1 = load i32, ptr %b, align 4, !tbaa !5
  %2 = load i32, ptr %c, align 4, !tbaa !5
  %cmp2 = icmp sgt i32 %1, %2
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 %2, ptr %b, align 4, !tbaa !5
  store i32 %1, ptr %c, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %3 = phi i32 [ %1, %if.then ], [ %2, %for.body ]
  %4 = phi i32 [ %2, %if.then ], [ %1, %for.body ]
  %cmp49 = icmp slt i32 %4, %3
  br i1 %cmp49, label %for.body5.preheader, label %for.end

for.body5.preheader:                              ; preds = %if.end
  %5 = call i32 @llvm.smin.i32(i32 %2, i32 %1)
  %smin = sext i32 %5 to i64
  %6 = add i32 %3, %5
  %7 = sub i32 %6, %4
  %8 = add i32 %5, -1
  %9 = add i32 %8, %3
  %10 = add i32 %4, %5
  %11 = sub i32 %9, %10
  %12 = zext i32 %11 to i64
  %13 = add nuw nsw i64 %12, 1
  %min.iters.check = icmp ult i32 %11, 3
  br i1 %min.iters.check, label %for.body5.preheader15, label %vector.ph

vector.ph:                                        ; preds = %for.body5.preheader
  %n.vec = and i64 %13, 8589934588
  %14 = add nsw i64 %n.vec, %smin
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %16, %vector.body ]
  %offset.idx = add i64 %index, %smin
  %15 = getelementptr inbounds [13 x i32], ptr @__const.main.month, i64 0, i64 %offset.idx
  %wide.load = load <4 x i32>, ptr %15, align 4, !tbaa !5
  %16 = add <4 x i32> %wide.load, %vec.phi
  %index.next = add nuw i64 %index, 4
  %17 = icmp eq i64 %index.next, %n.vec
  br i1 %17, label %middle.block, label %vector.body, !llvm.loop !9

middle.block:                                     ; preds = %vector.body
  %18 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %16)
  %cmp.n = icmp eq i64 %13, %n.vec
  br i1 %cmp.n, label %for.end, label %for.body5.preheader15

for.body5.preheader15:                            ; preds = %for.body5.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %smin, %for.body5.preheader ], [ %14, %middle.block ]
  %d.011.ph = phi i32 [ 0, %for.body5.preheader ], [ %18, %middle.block ]
  br label %for.body5

for.body5:                                        ; preds = %for.body5.preheader15, %for.body5
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body5 ], [ %indvars.iv.ph, %for.body5.preheader15 ]
  %d.011 = phi i32 [ %add, %for.body5 ], [ %d.011.ph, %for.body5.preheader15 ]
  %arrayidx = getelementptr inbounds [13 x i32], ptr @__const.main.month, i64 0, i64 %indvars.iv
  %19 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %add = add nsw i32 %19, %d.011
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %7, %lftr.wideiv
  br i1 %exitcond.not, label %for.end, label %for.body5, !llvm.loop !14

for.end:                                          ; preds = %for.body5, %middle.block, %if.end
  %d.0.lcssa = phi i32 [ 0, %if.end ], [ %18, %middle.block ], [ %add, %for.body5 ]
  %20 = load i32, ptr %a, align 4, !tbaa !5
  %21 = and i32 %20, 3
  %cmp6 = icmp ne i32 %21, 0
  %rem7 = srem i32 %20, 100
  %cmp8.not = icmp eq i32 %rem7, 0
  %or.cond8 = or i1 %cmp6, %cmp8.not
  br i1 %or.cond8, label %lor.lhs.false, label %land.lhs.true11

lor.lhs.false:                                    ; preds = %for.end
  %rem9 = srem i32 %20, 400
  %cmp10 = icmp eq i32 %rem9, 0
  %cmp12 = icmp slt i32 %4, 3
  %or.cond = and i1 %cmp12, %cmp10
  br i1 %or.cond, label %if.then13, label %if.end15

land.lhs.true11:                                  ; preds = %for.end
  %cmp12.old = icmp slt i32 %4, 3
  br i1 %cmp12.old, label %if.then13, label %if.end15

if.then13:                                        ; preds = %lor.lhs.false, %land.lhs.true11
  %inc14 = add nsw i32 %d.0.lcssa, 1
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %land.lhs.true11, %lor.lhs.false
  %d.1 = phi i32 [ %inc14, %if.then13 ], [ %d.0.lcssa, %land.lhs.true11 ], [ %d.0.lcssa, %lor.lhs.false ]
  %rem16 = srem i32 %d.1, 7
  %cmp17 = icmp eq i32 %rem16, 0
  %str.1.str = select i1 %cmp17, ptr @str.1, ptr @str
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) %str.1.str)
  %inc23 = add nuw nsw i32 %i.014, 1
  %22 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %inc23, %22
  br i1 %cmp, label %for.body, label %for.end24, !llvm.loop !15

for.end24:                                        ; preds = %if.end15, %entry
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %c) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %a) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #5
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
!9 = distinct !{!9, !10, !11, !12, !13}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = !{!"llvm.loop.isvectorized", i32 1}
!13 = !{!"llvm.loop.unroll.runtime.disable"}
!14 = distinct !{!14, !10, !11, !12}
!15 = distinct !{!15, !10, !11}
