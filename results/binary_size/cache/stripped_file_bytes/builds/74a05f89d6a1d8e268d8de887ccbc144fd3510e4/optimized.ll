; ModuleID = '<stdin>'
source_filename = "/tmp/tmpt07virzf.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = zext i32 %0 to i64
  %2 = call ptr @llvm.stacksave.p0()
  %3 = mul nuw i64 %1, %1
  %vla = alloca i32, i64 %3, align 16
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc13, %entry
  %4 = phi i32 [ %8, %for.inc13 ], [ %.pre, %entry ]
  %indvars.iv8 = phi i64 [ %indvars.iv.next9, %for.inc13 ], [ 0, %entry ]
  %t.0 = phi i32 [ %t.1, %for.inc13 ], [ 0, %entry ]
  %r1.0 = phi i32 [ %r1.1, %for.inc13 ], [ undef, %entry ]
  %c1.0 = phi i32 [ %c1.1, %for.inc13 ], [ undef, %entry ]
  %5 = sext i32 %4 to i64
  %cmp = icmp slt i64 %indvars.iv8, %5
  br i1 %cmp, label %for.cond1.preheader, label %for.cond16.preheader

for.cond1.preheader:                              ; preds = %for.cond
  %6 = mul nuw nsw i64 %indvars.iv8, %1
  %arrayidx = getelementptr inbounds nuw i32, ptr %vla, i64 %6
  %7 = trunc nuw nsw i64 %indvars.iv8 to i32
  br label %for.cond1

for.cond16.preheader:                             ; preds = %for.cond
  br label %for.cond16

for.cond1:                                        ; preds = %for.cond1.preheader, %for.inc
  %8 = phi i32 [ %4, %for.cond1.preheader ], [ %.pre18, %for.inc ]
  %indvars.iv = phi i64 [ 0, %for.cond1.preheader ], [ %indvars.iv.next, %for.inc ]
  %t.1 = phi i32 [ %t.0, %for.cond1.preheader ], [ %t.2, %for.inc ]
  %r1.1 = phi i32 [ %r1.0, %for.cond1.preheader ], [ %r1.2, %for.inc ]
  %c1.1 = phi i32 [ %c1.0, %for.cond1.preheader ], [ %c1.2, %for.inc ]
  %9 = sext i32 %8 to i64
  %cmp2 = icmp slt i64 %indvars.iv, %9
  br i1 %cmp2, label %for.body3, label %for.inc13

for.body3:                                        ; preds = %for.cond1
  %arrayidx5 = getelementptr inbounds nuw i32, ptr %arrayidx, i64 %indvars.iv
  %call6 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx5)
  %cmp7 = icmp eq i32 %t.1, 0
  br i1 %cmp7, label %land.lhs.true, label %for.inc

land.lhs.true:                                    ; preds = %for.body3
  %10 = load i32, ptr %arrayidx5, align 4, !tbaa !5, !invariant.load !9
  %cmp12 = icmp eq i32 %10, 0
  br i1 %cmp12, label %if.then, label %for.inc

if.then:                                          ; preds = %land.lhs.true
  %11 = trunc nuw nsw i64 %indvars.iv to i32
  br label %for.inc

for.inc:                                          ; preds = %for.body3, %land.lhs.true, %if.then
  %t.2 = phi i32 [ 1, %if.then ], [ 0, %land.lhs.true ], [ %t.1, %for.body3 ]
  %r1.2 = phi i32 [ %7, %if.then ], [ %r1.1, %land.lhs.true ], [ %r1.1, %for.body3 ]
  %c1.2 = phi i32 [ %11, %if.then ], [ %c1.1, %land.lhs.true ], [ %c1.1, %for.body3 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre18 = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !10

for.inc13:                                        ; preds = %for.cond1
  %indvars.iv.next9 = add nuw nsw i64 %indvars.iv8, 1
  br label %for.cond, !llvm.loop !13

for.cond16:                                       ; preds = %for.cond20, %for.cond16.preheader
  %indvars.iv15 = phi i64 [ %5, %for.cond16.preheader ], [ %indvars.iv.next16, %for.cond20 ]
  %t.3 = phi i32 [ 0, %for.cond16.preheader ], [ %t.4, %for.cond20 ]
  %r2.0 = phi i32 [ undef, %for.cond16.preheader ], [ %r2.1, %for.cond20 ]
  %c2.0 = phi i32 [ undef, %for.cond16.preheader ], [ %c2.1, %for.cond20 ]
  %indvars.iv.next16 = add nsw i64 %indvars.iv15, -1
  %cmp17 = icmp sgt i64 %indvars.iv15, 0
  br i1 %cmp17, label %for.body18, label %for.end41

for.body18:                                       ; preds = %for.cond16
  %12 = load i32, ptr %n, align 4, !tbaa !5
  %13 = mul nsw i64 %indvars.iv.next16, %1
  %arrayidx24 = getelementptr inbounds i32, ptr %vla, i64 %13
  %14 = sext i32 %12 to i64
  %15 = trunc nsw i64 %indvars.iv.next16 to i32
  br label %for.cond20

for.cond20:                                       ; preds = %for.inc37, %for.body18
  %indvars.iv11 = phi i64 [ %indvars.iv.next12, %for.inc37 ], [ %14, %for.body18 ]
  %t.4 = phi i32 [ %t.5, %for.inc37 ], [ %t.3, %for.body18 ]
  %r2.1 = phi i32 [ %r2.2, %for.inc37 ], [ %r2.0, %for.body18 ]
  %c2.1 = phi i32 [ %c2.2, %for.inc37 ], [ %c2.0, %for.body18 ]
  %indvars.iv.next12 = add nsw i64 %indvars.iv11, -1
  %cmp21 = icmp sgt i64 %indvars.iv11, 0
  br i1 %cmp21, label %for.body22, label %for.cond16, !llvm.loop !14

for.body22:                                       ; preds = %for.cond20
  %arrayidx26 = getelementptr inbounds i32, ptr %arrayidx24, i64 %indvars.iv.next12
  %call27 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx26)
  %cmp28 = icmp eq i32 %t.4, 0
  br i1 %cmp28, label %land.lhs.true29, label %for.inc37

land.lhs.true29:                                  ; preds = %for.body22
  %16 = load i32, ptr %arrayidx26, align 4, !tbaa !5, !invariant.load !9
  %cmp34 = icmp eq i32 %16, 0
  br i1 %cmp34, label %if.then35, label %for.inc37

if.then35:                                        ; preds = %land.lhs.true29
  %17 = trunc nsw i64 %indvars.iv.next12 to i32
  br label %for.inc37

for.inc37:                                        ; preds = %for.body22, %land.lhs.true29, %if.then35
  %t.5 = phi i32 [ 1, %if.then35 ], [ 0, %land.lhs.true29 ], [ %t.4, %for.body22 ]
  %r2.2 = phi i32 [ %15, %if.then35 ], [ %r2.1, %land.lhs.true29 ], [ %r2.1, %for.body22 ]
  %c2.2 = phi i32 [ %17, %if.then35 ], [ %c2.1, %land.lhs.true29 ], [ %c2.1, %for.body22 ]
  br label %for.cond20, !llvm.loop !15

for.end41:                                        ; preds = %for.cond16
  %18 = xor i32 %r1.0, -1
  %sub43 = add i32 %r2.0, %18
  %19 = xor i32 %c1.0, -1
  %sub45 = add i32 %c2.0, %19
  %mul = mul nsw i32 %sub45, %sub43
  %call46 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %mul) #6
  call void @llvm.stackrestore.p0(ptr %2)
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #6
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

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind willreturn }
attributes #6 = { nounwind }

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
!9 = !{}
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = distinct !{!13, !11, !12}
!14 = distinct !{!14, !11, !12}
!15 = distinct !{!15, !11, !12}
