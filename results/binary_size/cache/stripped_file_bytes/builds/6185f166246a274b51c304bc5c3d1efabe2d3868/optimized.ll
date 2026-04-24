; ModuleID = '<stdin>'
source_filename = "/tmp/tmprf1lput4.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [6 x i8] c"%d %d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
for.end41:
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 captures(none) dereferenceable(4) %x1) #6
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 captures(none) dereferenceable(4) %y1) #6
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 captures(none) dereferenceable(4) %x2) #6
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 captures(none) dereferenceable(4) %y2) #6
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 captures(none) dereferenceable(4) %i) #6
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 captures(none) dereferenceable(4) %j) #6
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 dereferenceable(4) %x1, ptr noundef nonnull align 4 dereferenceable(4) %y1)
  %0 = load i32, ptr %x1, align 4, !tbaa !5
  %conv = sext i32 %0 to i64
  %mul = shl nsw i64 %conv, 3
  %call1 = call noalias ptr @malloc(i64 noundef %mul) #7
  call fastcc void @outlined_ir_func_0(ptr noalias nofree noundef nonnull align 4 captures(none) dereferenceable(4) %i, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %x1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %y1, ptr noalias nofree captures(none) %call1, ptr noalias nofree noundef nonnull align 4 captures(none) dereferenceable(4) %j)
  %call16 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 dereferenceable(4) %x2, ptr noundef nonnull align 4 dereferenceable(4) %y2)
  %1 = load i32, ptr %x2, align 4, !tbaa !5
  %conv17 = sext i32 %1 to i64
  %mul18 = shl nsw i64 %conv17, 3
  %call19 = call noalias ptr @malloc(i64 noundef %mul18) #7
  call fastcc void @outlined_ir_func_0(ptr noalias nofree noundef nonnull align 4 captures(none) dereferenceable(4) %i, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %x2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %y2, ptr noalias nofree captures(none) %call19, ptr noalias nofree noundef nonnull align 4 captures(none) dereferenceable(4) %j)
  %2 = load i32, ptr %x1, align 4, !tbaa !5
  %conv42 = sext i32 %2 to i64
  %mul43 = shl nsw i64 %conv42, 3
  %call44 = call noalias ptr @malloc(i64 noundef %mul43) #7
  br label %for.cond45

for.cond45:                                       ; preds = %for.inc88, %for.end41
  %indvars.iv30 = phi i64 [ %indvars.iv.next31, %for.inc88 ], [ 0, %for.end41 ]
  %3 = load i32, ptr %x1, align 4, !tbaa !5
  %4 = sext i32 %3 to i64
  %cmp46 = icmp slt i64 %indvars.iv30, %4
  br i1 %cmp46, label %for.body47, label %for.cond91

for.body47:                                       ; preds = %for.cond45
  %5 = load i32, ptr %y2, align 4, !tbaa !5
  %conv48 = sext i32 %5 to i64
  %mul49 = shl nsw i64 %conv48, 2
  %call50 = call noalias ptr @malloc(i64 noundef %mul49) #7
  %arrayidx52 = getelementptr inbounds nuw ptr, ptr %call44, i64 %indvars.iv30
  store ptr %call50, ptr %arrayidx52, align 8, !tbaa !9
  %6 = load i32, ptr %y2, align 4, !tbaa !5
  %smax = call i32 @llvm.smax.i32(i32 %6, i32 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond53

for.cond53:                                       ; preds = %for.inc60, %for.body47
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc60 ], [ 0, %for.body47 ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.cond63.preheader, label %for.inc60

for.cond63.preheader:                             ; preds = %for.cond53
  %7 = load i32, ptr %x2, align 4
  %arrayidx70 = getelementptr inbounds nuw ptr, ptr %call1, i64 %indvars.iv30
  %smax21 = call i32 @llvm.smax.i32(i32 %7, i32 0)
  %wide.trip.count22 = zext nneg i32 %smax21 to i64
  br label %for.cond63

for.inc60:                                        ; preds = %for.cond53
  %arrayidx59 = getelementptr inbounds nuw i32, ptr %call50, i64 %indvars.iv
  store i32 0, ptr %arrayidx59, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond53, !llvm.loop !12

for.cond63:                                       ; preds = %for.cond63.preheader, %for.inc85
  %indvars.iv24 = phi i64 [ 0, %for.cond63.preheader ], [ %indvars.iv.next25, %for.inc85 ]
  %exitcond29.not = icmp eq i64 %indvars.iv24, %wide.trip.count
  br i1 %exitcond29.not, label %for.inc88, label %for.cond66.preheader

for.cond66.preheader:                             ; preds = %for.cond63
  %arrayidx81 = getelementptr inbounds nuw i32, ptr %call50, i64 %indvars.iv24
  br label %for.cond66

for.cond66:                                       ; preds = %for.cond66.preheader, %for.inc82
  %indvars.iv18 = phi i64 [ 0, %for.cond66.preheader ], [ %indvars.iv.next19, %for.inc82 ]
  %exitcond23.not = icmp eq i64 %indvars.iv18, %wide.trip.count22
  br i1 %exitcond23.not, label %for.inc85, label %for.inc82

for.inc82:                                        ; preds = %for.cond66
  %8 = load ptr, ptr %arrayidx70, align 8, !tbaa !9, !invariant.load !15
  %arrayidx72 = getelementptr inbounds nuw i32, ptr %8, i64 %indvars.iv18
  %9 = load i32, ptr %arrayidx72, align 4, !tbaa !5, !invariant.load !15
  %arrayidx74 = getelementptr inbounds nuw ptr, ptr %call19, i64 %indvars.iv18
  %10 = load ptr, ptr %arrayidx74, align 8, !tbaa !9, !invariant.load !15
  %arrayidx76 = getelementptr inbounds nuw i32, ptr %10, i64 %indvars.iv24
  %11 = load i32, ptr %arrayidx76, align 4, !tbaa !5, !invariant.load !15
  %mul77 = mul nsw i32 %11, %9
  %12 = load i32, ptr %arrayidx81, align 4, !tbaa !5, !invariant.load !15
  %add = add nsw i32 %12, %mul77
  store i32 %add, ptr %arrayidx81, align 4, !tbaa !5
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1
  br label %for.cond66, !llvm.loop !16

for.inc85:                                        ; preds = %for.cond66
  %indvars.iv.next25 = add nuw nsw i64 %indvars.iv24, 1
  br label %for.cond63, !llvm.loop !17

for.inc88:                                        ; preds = %for.cond63
  %indvars.iv.next31 = add nuw nsw i64 %indvars.iv30, 1
  br label %for.cond45, !llvm.loop !18

for.cond91:                                       ; preds = %for.cond45, %for.inc110
  %13 = phi i32 [ %.pre, %for.inc110 ], [ %3, %for.cond45 ]
  %indvars.iv36 = phi i64 [ %indvars.iv.next37, %for.inc110 ], [ 0, %for.cond45 ]
  %14 = sext i32 %13 to i64
  %cmp92 = icmp slt i64 %indvars.iv36, %14
  br i1 %cmp92, label %for.cond94.preheader, label %for.end112

for.cond94.preheader:                             ; preds = %for.cond91
  %arrayidx98 = getelementptr inbounds nuw ptr, ptr %call44, i64 %indvars.iv36
  br label %for.cond94

for.cond94:                                       ; preds = %for.cond94.preheader, %for.inc102
  %indvars.iv33 = phi i64 [ 0, %for.cond94.preheader ], [ %indvars.iv.next34, %for.inc102 ]
  %15 = load i32, ptr %y2, align 4, !tbaa !5
  %sub = add nsw i32 %15, -1
  %16 = sext i32 %sub to i64
  %cmp95 = icmp slt i64 %indvars.iv33, %16
  br i1 %cmp95, label %for.inc102, label %for.inc110

for.inc102:                                       ; preds = %for.cond94
  %17 = load ptr, ptr %arrayidx98, align 8, !tbaa !9, !invariant.load !15
  %arrayidx100 = getelementptr inbounds nuw i32, ptr %17, i64 %indvars.iv33
  %18 = load i32, ptr %arrayidx100, align 4, !tbaa !5, !invariant.load !15
  %call101 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %18)
  %indvars.iv.next34 = add nuw nsw i64 %indvars.iv33, 1
  br label %for.cond94, !llvm.loop !19

for.inc110:                                       ; preds = %for.cond94
  %19 = load ptr, ptr %arrayidx98, align 8, !tbaa !9, !invariant.load !15
  %idxprom107 = and i64 %indvars.iv33, 4294967295
  %arrayidx108 = getelementptr inbounds nuw i32, ptr %19, i64 %idxprom107
  %20 = load i32, ptr %arrayidx108, align 4, !tbaa !5, !invariant.load !15
  %call109 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %20)
  %indvars.iv.next37 = add nuw nsw i64 %indvars.iv36, 1
  %.pre = load i32, ptr %x1, align 4, !tbaa !5
  br label %for.cond91, !llvm.loop !20

for.end112:                                       ; preds = %for.cond91
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull captures(none) %j) #8
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull captures(none) %i) #8
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %y2) #8
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %x2) #8
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %y1) #8
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %x1) #8
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: minsize mustprogress norecurse optsize uwtable
define internal fastcc void @outlined_ir_func_0(ptr noalias nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) initializes((0, 4)) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr noalias nofree writeonly captures(none) %3, ptr noalias nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %4) unnamed_addr #4 {
entry_to_outline:
  %5 = load i32, ptr %1, align 4, !tbaa !5, !invariant.load !15
  %6 = load i32, ptr %2, align 4
  %conv2 = sext i32 %6 to i64
  %mul3 = shl nsw i64 %conv2, 2
  %smax = call i32 @llvm.smax.i32(i32 %6, i32 0)
  %smax6 = call i32 @llvm.smax.i32(i32 %5, i32 0)
  %wide.trip.count7 = zext nneg i32 %smax6 to i64
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond

for.cond:                                         ; preds = %for.inc13, %entry_to_outline
  %indvars.iv3 = phi i64 [ %indvars.iv.next4, %for.inc13 ], [ 0, %entry_to_outline ]
  %7 = trunc nuw nsw i64 %indvars.iv3 to i32
  store i32 %7, ptr %0, align 4, !tbaa !5
  %exitcond8.not = icmp eq i64 %indvars.iv3, %wide.trip.count7
  br i1 %exitcond8.not, label %for.end15.exitStub, label %for.body

for.body:                                         ; preds = %for.cond
  %call4 = tail call noalias ptr @malloc(i64 noundef %mul3) #7
  %arrayidx = getelementptr inbounds nuw ptr, ptr %3, i64 %indvars.iv3
  store ptr %call4, ptr %arrayidx, align 8, !tbaa !9
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.body ]
  %8 = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %8, ptr %4, align 4, !tbaa !5
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.inc13, label %for.inc

for.inc:                                          ; preds = %for.cond5
  %arrayidx11 = getelementptr inbounds nuw i32, ptr %call4, i64 %indvars.iv
  %call12 = tail call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef %arrayidx11)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond5, !llvm.loop !21

for.inc13:                                        ; preds = %for.cond5
  %indvars.iv.next4 = add nuw nsw i64 %indvars.iv3, 1
  br label %for.cond, !llvm.loop !22

for.end15.exitStub:                               ; preds = %for.cond
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { minsize mustprogress norecurse optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nofree nounwind }
attributes #7 = { nounwind allocsize(0) }
attributes #8 = { nounwind }

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
!9 = !{!10, !10, i64 0}
!10 = !{!"p1 int", !11, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = distinct !{!12, !13, !14}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!"llvm.loop.unroll.disable"}
!15 = !{}
!16 = distinct !{!16, !13, !14}
!17 = distinct !{!17, !13, !14}
!18 = distinct !{!18, !13, !14}
!19 = distinct !{!19, !13, !14}
!20 = distinct !{!20, !13, !14}
!21 = distinct !{!21, !13, !14}
!22 = distinct !{!22, !13, !14}
