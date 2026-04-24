; ModuleID = '<stdin>'
source_filename = "/tmp/tmpwbm423v4.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"No\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%c=%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %p = alloca [300 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 300, ptr noundef nonnull align 16 %p) #3
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 16 %p)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %a.0 = phi i32 [ %a.1, %for.inc ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds nuw [300 x i8], ptr %p, i64 0, i64 %indvars.iv
  %0 = load i8, ptr %arrayidx, align 1, !tbaa !5
  %cmp.not = icmp eq i8 %0, 0
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %cmp4 = icmp sgt i8 %0, 64
  br i1 %cmp4, label %land.lhs.true, label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %cmp8 = icmp samesign ult i8 %0, 91
  %1 = add nsw i8 %0, -97
  %or.cond = icmp ult i8 %1, 26
  %or.cond4 = select i1 %cmp8, i1 true, i1 %or.cond
  %inc = zext i1 %or.cond4 to i32
  %spec.select5 = add nsw i32 %a.0, %inc
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true, %for.body
  %a.1 = phi i32 [ %a.0, %for.body ], [ %spec.select5, %land.lhs.true ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %cmp19 = icmp eq i32 %a.0, 0
  br i1 %cmp19, label %if.end80, label %for.body25

for.body25:                                       ; preds = %for.end, %outlined_ir_func_0.exit
  %j.0 = phi i8 [ %inc49.i, %outlined_ir_func_0.exit ], [ 65, %for.end ]
  br label %for.cond26

for.cond26:                                       ; preds = %for.body31, %for.body25
  %indvars.iv7 = phi i64 [ %indvars.iv.next8, %for.body31 ], [ 0, %for.body25 ]
  %b.0 = phi i32 [ %spec.select, %for.body31 ], [ 0, %for.body25 ]
  %arrayidx28 = getelementptr inbounds nuw [300 x i8], ptr %p, i64 0, i64 %indvars.iv7
  %2 = load i8, ptr %arrayidx28, align 1, !tbaa !5, !invariant.load !11
  %cmp30.not = icmp eq i8 %2, 0
  br i1 %cmp30.not, label %for.end42, label %for.body31

for.body31:                                       ; preds = %for.cond26
  %cmp36 = icmp eq i8 %2, %j.0
  %inc38 = zext i1 %cmp36 to i32
  %spec.select = add nuw nsw i32 %b.0, %inc38
  %indvars.iv.next8 = add nuw nsw i64 %indvars.iv7, 1
  br label %for.cond26, !llvm.loop !12

for.end42:                                        ; preds = %for.cond26
  %cmp43.not.i = icmp eq i32 %b.0, 0
  br i1 %cmp43.not.i, label %outlined_ir_func_0.exit, label %if.then44.i

if.then44.i:                                      ; preds = %for.end42
  %conv45.i = sext i8 %j.0 to i32
  %call46.i = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %conv45.i, i32 noundef %b.0), !noalias !13
  br label %outlined_ir_func_0.exit

outlined_ir_func_0.exit:                          ; preds = %for.end42, %if.then44.i
  %inc49.i = add i8 %j.0, 1
  br label %for.body25

if.end80:                                         ; preds = %for.end
  %call21 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1)
  call void @llvm.lifetime.end.p0(i64 noundef 300, ptr noundef nonnull %p) #4
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
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = distinct !{!8, !9, !10}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!"llvm.loop.unroll.disable"}
!11 = !{}
!12 = distinct !{!12, !9, !10}
!13 = !{!14}
!14 = distinct !{!14, !15, !"outlined_ir_func_0: argument 0"}
!15 = distinct !{!15, !"outlined_ir_func_0"}
