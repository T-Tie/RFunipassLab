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
  %4 = load i32, ptr %n, align 4, !tbaa !5
  %cmp27 = icmp sgt i32 %4, 0
  br i1 %cmp27, label %for.cond1.preheader, label %for.end41

for.cond1.preheader:                              ; preds = %entry, %for.inc13
  %5 = phi i32 [ %15, %for.inc13 ], [ %4, %entry ]
  %indvars.iv60 = phi i64 [ %indvars.iv.next61, %for.inc13 ], [ 0, %entry ]
  %c1.030 = phi i32 [ %c1.1.lcssa, %for.inc13 ], [ undef, %entry ]
  %r1.029 = phi i32 [ %r1.1.lcssa, %for.inc13 ], [ undef, %entry ]
  %t.028 = phi i32 [ %t.1.lcssa, %for.inc13 ], [ 0, %entry ]
  %cmp220 = icmp sgt i32 %5, 0
  br i1 %cmp220, label %for.body3.lr.ph, label %for.cond1.preheader.for.inc13_crit_edge

for.cond1.preheader.for.inc13_crit_edge:          ; preds = %for.cond1.preheader
  %.pre = sext i32 %5 to i64
  br label %for.inc13

for.body3.lr.ph:                                  ; preds = %for.cond1.preheader
  %6 = mul nuw nsw i64 %indvars.iv60, %1
  %arrayidx = getelementptr inbounds nuw i32, ptr %vla, i64 %6
  %7 = trunc nuw nsw i64 %indvars.iv60 to i32
  br label %for.body3

for.cond16.preheader:                             ; preds = %for.inc13
  %8 = xor i32 %r1.1.lcssa, -1
  %9 = xor i32 %c1.1.lcssa, -1
  %cmp1747 = icmp sgt i32 %15, 0
  br i1 %cmp1747, label %for.body18.preheader, label %for.end41

for.body18.preheader:                             ; preds = %for.cond16.preheader
  %r.146 = add nsw i32 %15, -1
  %10 = zext nneg i32 %r.146 to i64
  br label %for.body18

for.body3:                                        ; preds = %for.body3.lr.ph, %for.inc
  %indvars.iv = phi i64 [ 0, %for.body3.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %c1.123 = phi i32 [ %c1.030, %for.body3.lr.ph ], [ %c1.2, %for.inc ]
  %r1.122 = phi i32 [ %r1.029, %for.body3.lr.ph ], [ %r1.2, %for.inc ]
  %t.121 = phi i32 [ %t.028, %for.body3.lr.ph ], [ %t.2, %for.inc ]
  %arrayidx5 = getelementptr inbounds nuw i32, ptr %arrayidx, i64 %indvars.iv
  %call6 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx5)
  %cmp7 = icmp eq i32 %t.121, 0
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
  %r1.2 = phi i32 [ %7, %if.then ], [ %r1.122, %land.lhs.true ], [ %r1.122, %for.body3 ]
  %c1.2 = phi i32 [ %12, %if.then ], [ %c1.123, %land.lhs.true ], [ %c1.123, %for.body3 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %13 = load i32, ptr %n, align 4, !tbaa !5
  %14 = sext i32 %13 to i64
  %cmp2 = icmp slt i64 %indvars.iv.next, %14
  br i1 %cmp2, label %for.body3, label %for.inc13, !llvm.loop !9

for.inc13:                                        ; preds = %for.inc, %for.cond1.preheader.for.inc13_crit_edge
  %.pre-phi = phi i64 [ %.pre, %for.cond1.preheader.for.inc13_crit_edge ], [ %14, %for.inc ]
  %15 = phi i32 [ %5, %for.cond1.preheader.for.inc13_crit_edge ], [ %13, %for.inc ]
  %t.1.lcssa = phi i32 [ %t.028, %for.cond1.preheader.for.inc13_crit_edge ], [ %t.2, %for.inc ]
  %r1.1.lcssa = phi i32 [ %r1.029, %for.cond1.preheader.for.inc13_crit_edge ], [ %r1.2, %for.inc ]
  %c1.1.lcssa = phi i32 [ %c1.030, %for.cond1.preheader.for.inc13_crit_edge ], [ %c1.2, %for.inc ]
  %indvars.iv.next61 = add nuw nsw i64 %indvars.iv60, 1
  %cmp = icmp slt i64 %indvars.iv.next61, %.pre-phi
  br i1 %cmp, label %for.cond1.preheader, label %for.cond16.preheader, !llvm.loop !12

for.cond16.loopexit:                              ; preds = %for.inc37, %for.body18
  %t.4.lcssa = phi i32 [ %t.348, %for.body18 ], [ %t.5, %for.inc37 ]
  %r2.1.lcssa = phi i32 [ %r2.049, %for.body18 ], [ %r2.2, %for.inc37 ]
  %c2.1.lcssa = phi i32 [ %c2.050, %for.body18 ], [ %c2.2, %for.inc37 ]
  %indvars.iv.next67 = add nsw i64 %indvars.iv66, -1
  %cmp17 = icmp sgt i64 %indvars.iv66, 0
  br i1 %cmp17, label %for.body18, label %for.end41, !llvm.loop !14

for.body18:                                       ; preds = %for.body18.preheader, %for.cond16.loopexit
  %indvars.iv66 = phi i64 [ %10, %for.body18.preheader ], [ %indvars.iv.next67, %for.cond16.loopexit ]
  %c2.050 = phi i32 [ undef, %for.body18.preheader ], [ %c2.1.lcssa, %for.cond16.loopexit ]
  %r2.049 = phi i32 [ undef, %for.body18.preheader ], [ %r2.1.lcssa, %for.cond16.loopexit ]
  %t.348 = phi i32 [ 0, %for.body18.preheader ], [ %t.4.lcssa, %for.cond16.loopexit ]
  %16 = load i32, ptr %n, align 4, !tbaa !5
  %cmp2138 = icmp sgt i32 %16, 0
  br i1 %cmp2138, label %for.body22.lr.ph, label %for.cond16.loopexit

for.body22.lr.ph:                                 ; preds = %for.body18
  %17 = mul nuw nsw i64 %indvars.iv66, %1
  %arrayidx24 = getelementptr inbounds nuw i32, ptr %vla, i64 %17
  %18 = zext nneg i32 %16 to i64
  %19 = trunc nuw nsw i64 %indvars.iv66 to i32
  br label %for.body22

for.body22:                                       ; preds = %for.body22.lr.ph, %for.inc37
  %indvars.iv63 = phi i64 [ %18, %for.body22.lr.ph ], [ %indvars.iv.next64, %for.inc37 ]
  %c2.141 = phi i32 [ %c2.050, %for.body22.lr.ph ], [ %c2.2, %for.inc37 ]
  %r2.140 = phi i32 [ %r2.049, %for.body22.lr.ph ], [ %r2.2, %for.inc37 ]
  %t.439 = phi i32 [ %t.348, %for.body22.lr.ph ], [ %t.5, %for.inc37 ]
  %indvars.iv.next64 = add nsw i64 %indvars.iv63, -1
  %arrayidx26 = getelementptr inbounds nuw i32, ptr %arrayidx24, i64 %indvars.iv.next64
  %call27 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx26)
  %cmp28 = icmp eq i32 %t.439, 0
  br i1 %cmp28, label %land.lhs.true29, label %for.inc37

land.lhs.true29:                                  ; preds = %for.body22
  %20 = load i32, ptr %arrayidx26, align 4, !tbaa !5
  %cmp34 = icmp eq i32 %20, 0
  br i1 %cmp34, label %if.then35, label %for.inc37

if.then35:                                        ; preds = %land.lhs.true29
  %21 = trunc nuw nsw i64 %indvars.iv.next64 to i32
  br label %for.inc37

for.inc37:                                        ; preds = %for.body22, %land.lhs.true29, %if.then35
  %t.5 = phi i32 [ 1, %if.then35 ], [ 0, %land.lhs.true29 ], [ 1, %for.body22 ]
  %r2.2 = phi i32 [ %19, %if.then35 ], [ %r2.140, %land.lhs.true29 ], [ %r2.140, %for.body22 ]
  %c2.2 = phi i32 [ %21, %if.then35 ], [ %c2.141, %land.lhs.true29 ], [ %c2.141, %for.body22 ]
  %cmp21 = icmp samesign ugt i64 %indvars.iv63, 1
  br i1 %cmp21, label %for.body22, label %for.cond16.loopexit, !llvm.loop !15

for.end41:                                        ; preds = %for.cond16.loopexit, %entry, %for.cond16.preheader
  %c1.0.lcssa74 = phi i32 [ %9, %for.cond16.preheader ], [ undef, %entry ], [ %9, %for.cond16.loopexit ]
  %r1.0.lcssa73 = phi i32 [ %8, %for.cond16.preheader ], [ undef, %entry ], [ %8, %for.cond16.loopexit ]
  %r2.0.lcssa = phi i32 [ undef, %for.cond16.preheader ], [ undef, %entry ], [ %r2.1.lcssa, %for.cond16.loopexit ]
  %c2.0.lcssa = phi i32 [ undef, %for.cond16.preheader ], [ undef, %entry ], [ %c2.1.lcssa, %for.cond16.loopexit ]
  %sub43 = add i32 %r2.0.lcssa, %r1.0.lcssa73
  %sub45 = add i32 %c2.0.lcssa, %c1.0.lcssa74
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
!12 = distinct !{!12, !10, !11, !13}
!13 = !{!"llvm.loop.unswitch.partial.disable"}
!14 = distinct !{!14, !10, !11, !13}
!15 = distinct !{!15, !10, !11}
