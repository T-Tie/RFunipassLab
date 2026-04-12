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
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 captures(none) dereferenceable(4) %x1) #8
  store i32 0, ptr %x1, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 captures(none) dereferenceable(4) %x2) #8
  store i32 0, ptr %x2, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 captures(none) dereferenceable(4) %y1) #8
  store i32 0, ptr %y1, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 captures(none) dereferenceable(4) %y2) #8
  store i32 0, ptr %y2, align 4, !tbaa !5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 dereferenceable(4) %x1, ptr noundef nonnull align 4 dereferenceable(4) %y1)
  call void @llvm.lifetime.start.p0(i64 noundef -1, ptr noundef nonnull align 8 captures(none) dereferenceable(8) %call2.loc)
  call fastcc void @outlined_ir_func_0(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %x1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %y1, ptr noalias nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %call2.loc)
  %call2.reload = load ptr, ptr %call2.loc, align 8
  call void @llvm.lifetime.end.p0(i64 noundef -1, ptr noundef nonnull captures(none) %call2.loc)
  %call11 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 dereferenceable(4) %x2, ptr noundef nonnull align 4 dereferenceable(4) %y2)
  call void @llvm.lifetime.start.p0(i64 noundef -1, ptr noundef nonnull align 8 captures(none) dereferenceable(8) %call15.loc)
  call fastcc void @outlined_ir_func_0(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %x2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %y2, ptr noalias nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %call15.loc)
  %call15.reload = load ptr, ptr %call15.loc, align 8
  call void @llvm.lifetime.end.p0(i64 noundef -1, ptr noundef nonnull captures(none) %call15.loc)
  %0 = load i32, ptr %x1, align 4, !tbaa !5
  %1 = load i32, ptr %y2, align 4, !tbaa !5
  %mul33 = mul nsw i32 %1, %0
  %conv34 = sext i32 %mul33 to i64
  %mul35 = shl nsw i64 %conv34, 2
  %call36 = call noalias ptr @malloc(i64 noundef %mul35) #9
  %2 = load i32, ptr %x2, align 4
  %3 = load i32, ptr %y1, align 4
  %4 = sext i32 %1 to i64
  %smax = call i32 @llvm.smax.i32(i32 %2, i32 noundef 0)
  %smax13 = call i32 @llvm.smax.i32(i32 %1, i32 noundef 0)
  %5 = sext i32 %3 to i64
  %smax21 = call i32 @llvm.smax.i32(i32 %0, i32 noundef 0)
  %wide.trip.count22 = zext nneg i32 %smax21 to i64
  %wide.trip.count14 = zext nneg i32 %smax13 to i64
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond37

for.cond37:                                       ; preds = %for.inc74, %for.end32
  %indvars.iv16 = phi i64 [ %indvars.iv.next17, %for.inc74 ], [ 0, %for.end32 ]
  %exitcond23.not = icmp eq i64 %indvars.iv16, %wide.trip.count22
  br i1 %exitcond23.not, label %for.cond77, label %for.cond40.preheader

for.cond40.preheader:                             ; preds = %for.cond37
  %6 = mul nsw i64 %indvars.iv16, %4
  %7 = mul nsw i64 %indvars.iv16, %5
  %invariant.gep28 = getelementptr i32, ptr %call36, i64 %6
  %8 = getelementptr i32, ptr %call2.reload, i64 %7
  br label %for.cond40

for.cond40:                                       ; preds = %for.cond40.preheader, %for.inc71
  %indvars.iv9 = phi i64 [ 0, %for.cond40.preheader ], [ %indvars.iv.next10, %for.inc71 ]
  %exitcond15.not = icmp eq i64 %indvars.iv9, %wide.trip.count14
  br i1 %exitcond15.not, label %for.inc74, label %for.body42

for.body42:                                       ; preds = %for.cond40
  %gep29 = getelementptr i32, ptr %invariant.gep28, i64 %indvars.iv9
  store i32 0, ptr %gep29, align 4, !tbaa !5
  %invariant.gep = getelementptr i32, ptr %call15.reload, i64 %indvars.iv9
  br label %for.cond47

for.cond47:                                       ; preds = %for.inc68, %for.body42
  %9 = phi i32 [ %add63, %for.inc68 ], [ 0, %for.body42 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc68 ], [ 0, %for.body42 ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.inc71, label %for.inc68

for.inc68:                                        ; preds = %for.cond47
  %arrayidx57 = getelementptr i32, ptr %8, i64 %indvars.iv
  %10 = load i32, ptr %arrayidx57, align 4, !tbaa !5, !invariant.load !9
  %11 = mul nsw i64 %indvars.iv, %4
  %gep = getelementptr i32, ptr %invariant.gep, i64 %11
  %12 = load i32, ptr %gep, align 4, !tbaa !5, !invariant.load !9
  %mul62 = mul nsw i32 %12, %10
  %add63 = add nsw i32 %mul62, %9
  store i32 %add63, ptr %gep29, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond47, !llvm.loop !10

for.inc71:                                        ; preds = %for.cond47
  %indvars.iv.next10 = add nuw nsw i64 %indvars.iv9, 1
  br label %for.cond40, !llvm.loop !13

for.inc74:                                        ; preds = %for.cond40
  %indvars.iv.next17 = add nuw nsw i64 %indvars.iv16, 1
  br label %for.cond37, !llvm.loop !14

for.cond77:                                       ; preds = %for.cond37, %for.inc98
  %13 = phi i32 [ %15, %for.inc98 ], [ %1, %for.cond37 ]
  %14 = phi i32 [ %.pre, %for.inc98 ], [ %0, %for.cond37 ]
  %i.3 = phi i32 [ %inc99, %for.inc98 ], [ 0, %for.cond37 ]
  %cmp78 = icmp slt i32 %i.3, %14
  br i1 %cmp78, label %for.cond80, label %for.end100

for.cond80:                                       ; preds = %for.cond77, %for.inc95
  %15 = phi i32 [ %.pre24, %for.inc95 ], [ %13, %for.cond77 ]
  %j.3 = phi i32 [ %inc96, %for.inc95 ], [ 0, %for.cond77 ]
  %cmp81 = icmp slt i32 %j.3, %15
  br i1 %cmp81, label %for.body82, label %for.inc98

for.body82:                                       ; preds = %for.cond80
  %mul83 = mul nsw i32 %15, %i.3
  %add84 = add nsw i32 %mul83, %j.3
  %idxprom85 = sext i32 %add84 to i64
  %arrayidx86 = getelementptr inbounds i32, ptr %call36, i64 %idxprom85
  %16 = load i32, ptr %arrayidx86, align 4, !tbaa !5
  %call87 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %16) #10
  %17 = load i32, ptr %y2, align 4, !tbaa !5
  %sub = add nsw i32 %17, -1
  %cmp88 = icmp slt i32 %j.3, %sub
  br i1 %cmp88, label %if.then, label %if.end

if.then:                                          ; preds = %for.body82
  %putchar = call i32 @putchar(i32 noundef 32) #10
  %.pre25 = load i32, ptr %y2, align 4, !tbaa !5
  %.pre27 = add nsw i32 %.pre25, -1
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body82
  %sub90.pre-phi = phi i32 [ %.pre27, %if.then ], [ %sub, %for.body82 ]
  %18 = phi i32 [ %.pre25, %if.then ], [ %17, %for.body82 ]
  %cmp91 = icmp eq i32 %j.3, %sub90.pre-phi
  br i1 %cmp91, label %if.then92, label %for.inc95

if.then92:                                        ; preds = %if.end
  %putchar4 = call i32 @putchar(i32 noundef 10) #10
  %.pre24.pre = load i32, ptr %y2, align 4, !tbaa !5
  br label %for.inc95

for.inc95:                                        ; preds = %if.end, %if.then92
  %.pre24 = phi i32 [ %18, %if.end ], [ %.pre24.pre, %if.then92 ]
  %inc96 = add nuw nsw i32 %j.3, 1
  br label %for.cond80, !llvm.loop !15

for.inc98:                                        ; preds = %for.cond80
  %inc99 = add nuw nsw i32 %i.3, 1
  %.pre = load i32, ptr %x1, align 4, !tbaa !5
  br label %for.cond77, !llvm.loop !16

for.end100:                                       ; preds = %for.cond77
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %y2) #10
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %y1) #10
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %x2) #10
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %x1) #10
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: minsize mustprogress norecurse optsize uwtable
define internal fastcc void @outlined_ir_func_0(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %1, ptr noalias nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #5 {
entry_to_outline:
  %3 = load i32, ptr %0, align 4, !tbaa !5, !invariant.load !9
  %4 = load i32, ptr %1, align 4, !tbaa !5, !invariant.load !9
  %mul = mul nsw i32 %4, %3
  %conv = sext i32 %mul to i64
  %mul1 = shl nsw i64 %conv, 2
  %call2 = tail call noalias ptr @malloc(i64 noundef %mul1) #11
  %smax = call i32 @llvm.smax.i32(i32 %4, i32 noundef 0) #12
  %5 = sext i32 %4 to i64
  %smax7 = call i32 @llvm.smax.i32(i32 %3, i32 noundef 0) #12
  %wide.trip.count8 = zext nneg i32 %smax7 to i64
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond

for.cond:                                         ; preds = %for.inc8, %entry_to_outline
  %indvars.iv3 = phi i64 [ %indvars.iv.next4, %for.inc8 ], [ 0, %entry_to_outline ]
  %exitcond9.not = icmp eq i64 %indvars.iv3, %wide.trip.count8
  br i1 %exitcond9.not, label %for.end10.exitStub, label %for.cond3.preheader

for.cond3.preheader:                              ; preds = %for.cond
  %6 = mul nsw i64 %indvars.iv3, %5
  %invariant.gep = getelementptr i32, ptr %call2, i64 %6
  br label %for.cond3

for.cond3:                                        ; preds = %for.cond3.preheader, %for.inc
  %indvars.iv = phi i64 [ 0, %for.cond3.preheader ], [ %indvars.iv.next, %for.inc ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.inc8, label %for.inc

for.inc:                                          ; preds = %for.cond3
  %gep = getelementptr i32, ptr %invariant.gep, i64 %indvars.iv
  %call7 = tail call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef %gep)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond3, !llvm.loop !17

for.inc8:                                         ; preds = %for.cond3
  %indvars.iv.next4 = add nuw nsw i64 %indvars.iv3, 1
  br label %for.cond, !llvm.loop !18

for.end10.exitStub:                               ; preds = %for.cond
  store ptr %call2, ptr %2, align 8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) #7

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { minsize mustprogress norecurse optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nofree nounwind }
attributes #8 = { nofree nounwind willreturn }
attributes #9 = { nounwind allocsize(0) }
attributes #10 = { nounwind }
attributes #11 = { nofree nounwind willreturn allocsize(0) }
attributes #12 = { nofree willreturn }

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
