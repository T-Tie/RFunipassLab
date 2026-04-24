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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = zext i32 %0 to i64
  %2 = call ptr @llvm.stacksave.p0()
  %3 = mul nuw i64 %1, %1
  %vla = alloca i32, i64 %3, align 16
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc13, %entry
  %4 = phi i32 [ %9, %for.inc13 ], [ %.pre, %entry ]
  %indvars.iv21 = phi i64 [ %indvars.iv.next22, %for.inc13 ], [ 0, %entry ]
  %t.0 = phi i32 [ %t.1, %for.inc13 ], [ 0, %entry ]
  %r1.0 = phi i32 [ %r1.1, %for.inc13 ], [ undef, %entry ]
  %c1.0 = phi i32 [ %c1.1, %for.inc13 ], [ undef, %entry ]
  %5 = sext i32 %4 to i64
  %cmp = icmp slt i64 %indvars.iv21, %5
  br i1 %cmp, label %for.cond1.preheader, label %for.cond16.preheader

for.cond1.preheader:                              ; preds = %for.cond
  %6 = mul nuw nsw i64 %indvars.iv21, %1
  %arrayidx = getelementptr inbounds nuw i32, ptr %vla, i64 %6
  %7 = trunc nuw nsw i64 %indvars.iv21 to i32
  br label %for.cond1

for.cond16.preheader:                             ; preds = %for.cond
  %8 = zext i32 %4 to i64
  br label %for.cond16

for.cond1:                                        ; preds = %for.cond1.preheader, %for.inc
  %9 = phi i32 [ %4, %for.cond1.preheader ], [ %.pre32, %for.inc ]
  %indvars.iv = phi i64 [ 0, %for.cond1.preheader ], [ %indvars.iv.next, %for.inc ]
  %t.1 = phi i32 [ %t.0, %for.cond1.preheader ], [ %t.2, %for.inc ]
  %r1.1 = phi i32 [ %r1.0, %for.cond1.preheader ], [ %r1.2, %for.inc ]
  %c1.1 = phi i32 [ %c1.0, %for.cond1.preheader ], [ %c1.2, %for.inc ]
  %10 = sext i32 %9 to i64
  %cmp2 = icmp slt i64 %indvars.iv, %10
  br i1 %cmp2, label %for.body3, label %for.inc13

for.body3:                                        ; preds = %for.cond1
  %arrayidx5 = getelementptr inbounds nuw i32, ptr %arrayidx, i64 %indvars.iv
  %call6 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx5)
  %cmp7 = icmp eq i32 %t.1, 0
  br i1 %cmp7, label %land.lhs.true, label %for.inc

land.lhs.true:                                    ; preds = %for.body3
  %11 = load i32, ptr %arrayidx5, align 4, !tbaa !5
  %cmp12 = icmp eq i32 %11, 0
  br i1 %cmp12, label %if.then, label %for.inc

if.then:                                          ; preds = %land.lhs.true
  %12 = trunc nuw nsw i64 %indvars.iv to i32
  br label %for.inc

for.inc:                                          ; preds = %for.body3, %land.lhs.true, %if.then
  %t.2 = phi i32 [ 1, %if.then ], [ 0, %land.lhs.true ], [ 1, %for.body3 ]
  %r1.2 = phi i32 [ %7, %if.then ], [ %r1.1, %land.lhs.true ], [ %r1.1, %for.body3 ]
  %c1.2 = phi i32 [ %12, %if.then ], [ %c1.1, %land.lhs.true ], [ %c1.1, %for.body3 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre32 = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !9

for.inc13:                                        ; preds = %for.cond1
  %indvars.iv.next22 = add nuw nsw i64 %indvars.iv21, 1
  br label %for.cond, !llvm.loop !12

for.cond16:                                       ; preds = %for.cond20, %for.cond16.preheader
  %indvars.iv28 = phi i64 [ %8, %for.cond16.preheader ], [ %indvars.iv.next29, %for.cond20 ]
  %t.3 = phi i32 [ 0, %for.cond16.preheader ], [ %t.4, %for.cond20 ]
  %r2.0 = phi i32 [ undef, %for.cond16.preheader ], [ %r2.1.ph, %for.cond20 ]
  %c2.0 = phi i32 [ undef, %for.cond16.preheader ], [ %c2.1.ph, %for.cond20 ]
  %indvars.iv.next29 = add nsw i64 %indvars.iv28, -1
  %indvars30 = trunc i64 %indvars.iv.next29 to i32
  %13 = trunc nuw i64 %indvars.iv28 to i32
  %cmp17 = icmp sgt i32 %13, 0
  br i1 %cmp17, label %for.body18, label %for.end41

for.body18:                                       ; preds = %for.cond16
  %14 = load i32, ptr %n, align 4, !tbaa !5
  %idxprom23 = and i64 %indvars.iv.next29, 4294967295
  %15 = mul nuw nsw i64 %idxprom23, %1
  %arrayidx24 = getelementptr inbounds nuw i32, ptr %vla, i64 %15
  %16 = zext i32 %14 to i64
  br label %for.cond20.outer

for.cond20.outer:                                 ; preds = %if.then35, %for.body18
  %indvars.iv24.ph = phi i64 [ %indvars.iv.next25, %if.then35 ], [ %16, %for.body18 ]
  %t.4.ph = phi i32 [ 1, %if.then35 ], [ %t.3, %for.body18 ]
  %r2.1.ph = phi i32 [ %indvars30, %if.then35 ], [ %r2.0, %for.body18 ]
  %c2.1.ph = phi i32 [ %indvars.le, %if.then35 ], [ %c2.0, %for.body18 ]
  br label %for.cond20

for.cond20:                                       ; preds = %for.cond20.backedge, %for.cond20.outer
  %indvars.iv24 = phi i64 [ %indvars.iv24.ph, %for.cond20.outer ], [ %indvars.iv.next25, %for.cond20.backedge ]
  %t.4 = phi i32 [ %t.4.ph, %for.cond20.outer ], [ %t.4.be, %for.cond20.backedge ]
  %indvars.iv.next25 = add nsw i64 %indvars.iv24, -1
  %17 = trunc nuw i64 %indvars.iv24 to i32
  %cmp21 = icmp sgt i32 %17, 0
  br i1 %cmp21, label %for.body22, label %for.cond16, !llvm.loop !13

for.body22:                                       ; preds = %for.cond20
  %idxprom25 = and i64 %indvars.iv.next25, 4294967295
  %arrayidx26 = getelementptr inbounds nuw i32, ptr %arrayidx24, i64 %idxprom25
  %call27 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx26)
  %cmp28 = icmp eq i32 %t.4, 0
  br i1 %cmp28, label %land.lhs.true29, label %for.cond20.backedge

for.cond20.backedge:                              ; preds = %for.body22, %land.lhs.true29
  %t.4.be = phi i32 [ 1, %for.body22 ], [ 0, %land.lhs.true29 ]
  br label %for.cond20, !llvm.loop !14

land.lhs.true29:                                  ; preds = %for.body22
  %18 = load i32, ptr %arrayidx26, align 4, !tbaa !5
  %cmp34 = icmp eq i32 %18, 0
  br i1 %cmp34, label %if.then35, label %for.cond20.backedge

if.then35:                                        ; preds = %land.lhs.true29
  %indvars.le = trunc i64 %indvars.iv.next25 to i32
  br label %for.cond20.outer, !llvm.loop !14

for.end41:                                        ; preds = %for.cond16
  %19 = xor i32 %r1.0, -1
  %sub43 = add i32 %r2.0, %19
  %20 = xor i32 %c1.0, -1
  %sub45 = add i32 %c2.0, %20
  %mul = mul nsw i32 %sub45, %sub43
  %call46 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %mul)
  call void @llvm.stackrestore.p0(ptr %2)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #5
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
!12 = distinct !{!12, !10, !11}
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
