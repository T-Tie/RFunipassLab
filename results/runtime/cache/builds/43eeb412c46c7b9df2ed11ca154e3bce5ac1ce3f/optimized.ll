; ModuleID = '<stdin>'
source_filename = "/tmp/tmp38sy0jg6.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [5 x i8] c"%d%d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
for.end32:
  %call15.loc = alloca ptr, align 8
  %call2.loc = alloca ptr, align 8
  %x1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %y2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 captures(none) dereferenceable(4) %x1) #7
  store i32 0, ptr %x1, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 captures(none) dereferenceable(4) %x2) #7
  store i32 0, ptr %x2, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 captures(none) dereferenceable(4) %y1) #7
  store i32 0, ptr %y1, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 captures(none) dereferenceable(4) %y2) #7
  store i32 0, ptr %y2, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 noundef -1, ptr noundef nonnull align 8 dereferenceable(8) %call2.loc) #8
  call fastcc void @outlined_ir_func_0(ptr noundef nonnull align 4 dereferenceable(4) %x1, ptr noundef nonnull align 4 dereferenceable(4) %y1, ptr noalias nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %call2.loc)
  %call2.reload = load ptr, ptr %call2.loc, align 8
  call void @llvm.lifetime.end.p0(i64 noundef -1, ptr noundef nonnull %call2.loc)
  call void @llvm.lifetime.start.p0(i64 noundef -1, ptr noundef nonnull align 8 dereferenceable(8) %call15.loc)
  call fastcc void @outlined_ir_func_0(ptr noundef nonnull align 4 dereferenceable(4) %x2, ptr noundef nonnull align 4 dereferenceable(4) %y2, ptr noalias nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %call15.loc)
  %call15.reload = load ptr, ptr %call15.loc, align 8
  call void @llvm.lifetime.end.p0(i64 noundef -1, ptr noundef nonnull %call15.loc)
  %0 = load i32, ptr %x1, align 4, !tbaa !5
  %1 = load i32, ptr %y2, align 4, !tbaa !5
  %mul33 = mul nsw i32 %1, %0
  %conv34 = sext i32 %mul33 to i64
  %mul35 = shl nsw i64 %conv34, 2
  %call36 = call noalias ptr @malloc(i64 noundef %mul35) #9
  %2 = load i32, ptr %x1, align 4, !tbaa !5
  %3 = load i32, ptr %y2, align 4
  %4 = load i32, ptr %x2, align 4
  %5 = load i32, ptr %y1, align 4
  %6 = sext i32 %3 to i64
  %smax = call i32 @llvm.smax.i32(i32 %4, i32 0)
  %smax10 = call i32 @llvm.smax.i32(i32 %3, i32 0)
  %7 = sext i32 %5 to i64
  %smax18 = call i32 @llvm.smax.i32(i32 %2, i32 0)
  %wide.trip.count19 = zext nneg i32 %smax18 to i64
  %wide.trip.count11 = zext nneg i32 %smax10 to i64
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond37

for.cond37:                                       ; preds = %for.inc74, %for.end32
  %indvars.iv13 = phi i64 [ %indvars.iv.next14, %for.inc74 ], [ 0, %for.end32 ]
  %exitcond20.not = icmp eq i64 %indvars.iv13, %wide.trip.count19
  br i1 %exitcond20.not, label %for.cond77, label %for.cond40.preheader

for.cond40.preheader:                             ; preds = %for.cond37
  %8 = mul nsw i64 %indvars.iv13, %6
  %9 = mul nsw i64 %indvars.iv13, %7
  %10 = getelementptr i32, ptr %call36, i64 %8
  %11 = getelementptr i32, ptr %call2.reload, i64 %9
  br label %for.cond40

for.cond40:                                       ; preds = %for.cond40.preheader, %for.inc71
  %indvars.iv6 = phi i64 [ 0, %for.cond40.preheader ], [ %indvars.iv.next7, %for.inc71 ]
  %exitcond12.not = icmp eq i64 %indvars.iv6, %wide.trip.count11
  br i1 %exitcond12.not, label %for.inc74, label %for.body42

for.body42:                                       ; preds = %for.cond40
  %arrayidx46 = getelementptr i32, ptr %10, i64 %indvars.iv6
  store i32 0, ptr %arrayidx46, align 4, !tbaa !5
  %invariant.gep = getelementptr i32, ptr %call15.reload, i64 %indvars.iv6
  br label %for.cond47

for.cond47:                                       ; preds = %for.inc68, %for.body42
  %12 = phi i32 [ %add63, %for.inc68 ], [ 0, %for.body42 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc68 ], [ 0, %for.body42 ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.inc71, label %for.inc68

for.inc68:                                        ; preds = %for.cond47
  %arrayidx57 = getelementptr i32, ptr %11, i64 %indvars.iv
  %13 = load i32, ptr %arrayidx57, align 4, !tbaa !5, !invariant.load !9
  %14 = mul nsw i64 %indvars.iv, %6
  %gep = getelementptr i32, ptr %invariant.gep, i64 %14
  %15 = load i32, ptr %gep, align 4, !tbaa !5, !invariant.load !9
  %mul62 = mul nsw i32 %15, %13
  %add63 = add nsw i32 %mul62, %12
  store i32 %add63, ptr %arrayidx46, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond47, !llvm.loop !10

for.inc71:                                        ; preds = %for.cond47
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv6, 1
  br label %for.cond40, !llvm.loop !13

for.inc74:                                        ; preds = %for.cond40
  %indvars.iv.next14 = add nuw nsw i64 %indvars.iv13, 1
  br label %for.cond37, !llvm.loop !14

for.cond77:                                       ; preds = %for.cond37, %for.inc98
  %16 = phi i32 [ %18, %for.inc98 ], [ %3, %for.cond37 ]
  %17 = phi i32 [ %.pre, %for.inc98 ], [ %2, %for.cond37 ]
  %i.3 = phi i32 [ %inc99, %for.inc98 ], [ 0, %for.cond37 ]
  %cmp78 = icmp slt i32 %i.3, %17
  br i1 %cmp78, label %for.cond80, label %for.end100

for.cond80:                                       ; preds = %for.cond77, %for.inc95
  %18 = phi i32 [ %.pre21, %for.inc95 ], [ %16, %for.cond77 ]
  %j.3 = phi i32 [ %inc96, %for.inc95 ], [ 0, %for.cond77 ]
  %cmp81 = icmp slt i32 %j.3, %18
  br i1 %cmp81, label %for.body82, label %for.inc98

for.body82:                                       ; preds = %for.cond80
  %mul83 = mul nsw i32 %18, %i.3
  %add84 = add nsw i32 %mul83, %j.3
  %idxprom85 = sext i32 %add84 to i64
  %arrayidx86 = getelementptr inbounds i32, ptr %call36, i64 %idxprom85
  %19 = load i32, ptr %arrayidx86, align 4, !tbaa !5
  %call87 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %19)
  %20 = load i32, ptr %y2, align 4, !tbaa !5
  %sub = add nsw i32 %20, -1
  %cmp88 = icmp slt i32 %j.3, %sub
  br i1 %cmp88, label %if.then, label %if.end

if.then:                                          ; preds = %for.body82
  %putchar = call i32 @putchar(i32 32)
  %.pre22 = load i32, ptr %y2, align 4, !tbaa !5
  %.pre24 = add nsw i32 %.pre22, -1
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body82
  %sub90.pre-phi = phi i32 [ %.pre24, %if.then ], [ %sub, %for.body82 ]
  %21 = phi i32 [ %.pre22, %if.then ], [ %20, %for.body82 ]
  %cmp91 = icmp eq i32 %j.3, %sub90.pre-phi
  br i1 %cmp91, label %if.then92, label %for.inc95

if.then92:                                        ; preds = %if.end
  %putchar1 = call i32 @putchar(i32 10)
  %.pre21.pre = load i32, ptr %y2, align 4, !tbaa !5
  br label %for.inc95

for.inc95:                                        ; preds = %if.end, %if.then92
  %.pre21 = phi i32 [ %21, %if.end ], [ %.pre21.pre, %if.then92 ]
  %inc96 = add nuw nsw i32 %j.3, 1
  br label %for.cond80, !llvm.loop !15

for.inc98:                                        ; preds = %for.cond80
  %inc99 = add nuw nsw i32 %i.3, 1
  %.pre = load i32, ptr %x1, align 4, !tbaa !5
  br label %for.cond77, !llvm.loop !16

for.end100:                                       ; preds = %for.cond77
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull captures(none) %y2) #10
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull captures(none) %y1) #10
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull captures(none) %x2) #10
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull captures(none) %x1) #10
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) local_unnamed_addr #3

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: minsize mustprogress norecurse optsize uwtable
define internal fastcc void @outlined_ir_func_0(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noalias nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #4 {
entry_to_outline:
  %call = tail call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %1)
  %3 = load i32, ptr %0, align 4, !tbaa !5
  %4 = load i32, ptr %1, align 4, !tbaa !5
  %mul = mul nsw i32 %4, %3
  %conv = sext i32 %mul to i64
  %mul1 = shl nsw i64 %conv, 2
  %call2 = tail call noalias ptr @malloc(i64 noundef %mul1) #9
  br label %for.cond

for.cond:                                         ; preds = %for.inc8, %entry_to_outline
  %i.0 = phi i32 [ 0, %entry_to_outline ], [ %inc9, %for.inc8 ]
  %5 = load i32, ptr %0, align 4, !tbaa !5
  %cmp = icmp slt i32 %i.0, %5
  br i1 %cmp, label %for.cond3, label %for.end10.exitStub

for.cond3:                                        ; preds = %for.cond, %for.inc
  %j.0 = phi i32 [ %inc, %for.inc ], [ 0, %for.cond ]
  %6 = load i32, ptr %1, align 4, !tbaa !5
  %cmp4 = icmp slt i32 %j.0, %6
  br i1 %cmp4, label %for.inc, label %for.inc8

for.inc:                                          ; preds = %for.cond3
  %mul6 = mul nsw i32 %6, %i.0
  %add = add nsw i32 %mul6, %j.0
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds i32, ptr %call2, i64 %idxprom
  %call7 = tail call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef %arrayidx)
  %inc = add nuw nsw i32 %j.0, 1
  br label %for.cond3, !llvm.loop !17

for.inc8:                                         ; preds = %for.cond3
  %inc9 = add nuw nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !18

for.end10.exitStub:                               ; preds = %for.cond
  store ptr %call2, ptr %2, align 8
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { minsize mustprogress norecurse optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nofree nounwind willreturn }
attributes #8 = { nofree willreturn }
attributes #9 = { nounwind allocsize(0) }
attributes #10 = { nounwind }

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
!16 = distinct !{!16, !11, !12}
!17 = distinct !{!17, !11, !12}
!18 = distinct !{!18, !11, !12}
