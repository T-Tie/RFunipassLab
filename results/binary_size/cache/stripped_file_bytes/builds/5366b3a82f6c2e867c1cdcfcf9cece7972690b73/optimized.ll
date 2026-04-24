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
  %aa = alloca ptr, align 8
  %bb = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 captures(none) dereferenceable(4) %x1) #7
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 captures(none) dereferenceable(4) %y1) #7
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 captures(none) dereferenceable(4) %x2) #7
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 captures(none) dereferenceable(4) %y2) #7
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 dereferenceable(4) %i) #7
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 dereferenceable(4) %j) #7
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 dereferenceable(4) %x1, ptr noundef nonnull align 4 dereferenceable(4) %y1)
  call void @llvm.lifetime.start.p0(i64 noundef 8, ptr noundef nonnull align 8 dereferenceable(8) %aa) #8
  call fastcc void @outlined_ir_func_0(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %x1, ptr noalias nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %aa, ptr noalias nofree noundef nonnull align 4 captures(none) dereferenceable(4) %i, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %y1, ptr noalias nofree noundef nonnull align 4 captures(none) dereferenceable(4) %j)
  %call16 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 dereferenceable(4) %x2, ptr noundef nonnull align 4 dereferenceable(4) %y2)
  call void @llvm.lifetime.start.p0(i64 noundef 8, ptr noundef nonnull align 8 dereferenceable(8) %bb) #8
  call fastcc void @outlined_ir_func_0(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %x2, ptr noalias nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %bb, ptr noalias nofree noundef nonnull align 4 captures(none) dereferenceable(4) %i, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %y2, ptr noalias nofree noundef nonnull align 4 captures(none) dereferenceable(4) %j)
  %0 = load i32, ptr %x1, align 4, !tbaa !5
  %conv42 = sext i32 %0 to i64
  %mul43 = shl nsw i64 %conv42, 3
  %call44 = call noalias ptr @malloc(i64 noundef %mul43) #9
  %1 = load ptr, ptr %aa, align 8
  %2 = load ptr, ptr %bb, align 8
  br label %for.cond45

for.cond45:                                       ; preds = %for.inc88, %for.end41
  %indvars.iv24 = phi i64 [ %indvars.iv.next25, %for.inc88 ], [ 0, %for.end41 ]
  %3 = load i32, ptr %x1, align 4, !tbaa !5
  %4 = sext i32 %3 to i64
  %cmp46 = icmp slt i64 %indvars.iv24, %4
  br i1 %cmp46, label %for.body47, label %for.cond91

for.body47:                                       ; preds = %for.cond45
  %5 = load i32, ptr %y2, align 4, !tbaa !5
  %conv48 = sext i32 %5 to i64
  %mul49 = shl nsw i64 %conv48, 2
  %call50 = call noalias ptr @malloc(i64 noundef %mul49) #9
  %arrayidx52 = getelementptr inbounds nuw ptr, ptr %call44, i64 %indvars.iv24
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
  %arrayidx70 = getelementptr inbounds nuw ptr, ptr %1, i64 %indvars.iv24
  %smax15 = call i32 @llvm.smax.i32(i32 %7, i32 0)
  %wide.trip.count16 = zext nneg i32 %smax15 to i64
  br label %for.cond63

for.inc60:                                        ; preds = %for.cond53
  %arrayidx59 = getelementptr inbounds nuw i32, ptr %call50, i64 %indvars.iv
  store i32 0, ptr %arrayidx59, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond53, !llvm.loop !12

for.cond63:                                       ; preds = %for.cond63.preheader, %for.inc85
  %indvars.iv18 = phi i64 [ 0, %for.cond63.preheader ], [ %indvars.iv.next19, %for.inc85 ]
  %exitcond23.not = icmp eq i64 %indvars.iv18, %wide.trip.count
  br i1 %exitcond23.not, label %for.inc88, label %for.cond66.preheader

for.cond66.preheader:                             ; preds = %for.cond63
  %arrayidx81 = getelementptr inbounds nuw i32, ptr %call50, i64 %indvars.iv18
  br label %for.cond66

for.cond66:                                       ; preds = %for.cond66.preheader, %for.inc82
  %indvars.iv12 = phi i64 [ 0, %for.cond66.preheader ], [ %indvars.iv.next13, %for.inc82 ]
  %exitcond17.not = icmp eq i64 %indvars.iv12, %wide.trip.count16
  br i1 %exitcond17.not, label %for.inc85, label %for.inc82

for.inc82:                                        ; preds = %for.cond66
  %8 = load ptr, ptr %arrayidx70, align 8, !tbaa !9, !invariant.load !15
  %arrayidx72 = getelementptr inbounds nuw i32, ptr %8, i64 %indvars.iv12
  %9 = load i32, ptr %arrayidx72, align 4, !tbaa !5, !invariant.load !15
  %arrayidx74 = getelementptr inbounds nuw ptr, ptr %2, i64 %indvars.iv12
  %10 = load ptr, ptr %arrayidx74, align 8, !tbaa !9, !invariant.load !15
  %arrayidx76 = getelementptr inbounds nuw i32, ptr %10, i64 %indvars.iv18
  %11 = load i32, ptr %arrayidx76, align 4, !tbaa !5, !invariant.load !15
  %mul77 = mul nsw i32 %11, %9
  %12 = load i32, ptr %arrayidx81, align 4, !tbaa !5, !invariant.load !15
  %add = add nsw i32 %12, %mul77
  store i32 %add, ptr %arrayidx81, align 4, !tbaa !5
  %indvars.iv.next13 = add nuw nsw i64 %indvars.iv12, 1
  br label %for.cond66, !llvm.loop !16

for.inc85:                                        ; preds = %for.cond66
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1
  br label %for.cond63, !llvm.loop !17

for.inc88:                                        ; preds = %for.cond63
  %indvars.iv.next25 = add nuw nsw i64 %indvars.iv24, 1
  br label %for.cond45, !llvm.loop !18

for.cond91:                                       ; preds = %for.cond45, %for.end104
  %13 = phi i32 [ %.pre, %for.end104 ], [ %3, %for.cond45 ]
  %cmp92 = icmp sgt i32 %13, 0
  br i1 %cmp92, label %for.cond94.preheader, label %for.end112

for.cond94.preheader:                             ; preds = %for.cond91
  %14 = load ptr, ptr %call44, align 8, !tbaa !9, !invariant.load !15
  %15 = load i32, ptr %14, align 4, !tbaa !5, !invariant.load !15
  br label %for.cond94

for.cond94:                                       ; preds = %for.cond94.preheader, %for.body96
  %16 = load i32, ptr %y2, align 4, !tbaa !5
  %cmp95 = icmp sgt i32 %16, 1
  br i1 %cmp95, label %for.body96, label %for.end104

for.body96:                                       ; preds = %for.cond94
  %call101 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %15)
  br label %for.cond94

for.end104:                                       ; preds = %for.cond94
  %call109 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %15)
  %.pre = load i32, ptr %x1, align 4, !tbaa !5
  br label %for.cond91

for.end112:                                       ; preds = %for.cond91
  call void @llvm.lifetime.end.p0(i64 noundef 8, ptr noundef nonnull %bb) #8
  call void @llvm.lifetime.end.p0(i64 noundef 8, ptr noundef nonnull %aa) #8
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull align 4 dereferenceable(4) %j) #8
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull align 4 dereferenceable(4) %i) #8
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
define internal fastcc void @outlined_ir_func_0(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %0, ptr noalias nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %1, ptr noalias nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) initializes((0, 4)) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr noalias nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %4) unnamed_addr #4 {
entry_to_outline:
  %5 = load i32, ptr %0, align 4, !tbaa !5
  %conv = sext i32 %5 to i64
  %mul = shl nsw i64 %conv, 3
  %call1 = tail call noalias ptr @malloc(i64 noundef %mul) #9
  store ptr %call1, ptr %1, align 8, !tbaa !19
  br label %for.cond

for.cond:                                         ; preds = %for.end, %entry_to_outline
  %indvars.iv3 = phi i64 [ %indvars.iv.next4, %for.end ], [ 0, %entry_to_outline ]
  %6 = trunc nuw nsw i64 %indvars.iv3 to i32
  store i32 %6, ptr %2, align 4, !tbaa !5
  %7 = load i32, ptr %0, align 4, !tbaa !5
  %cmp = icmp sgt i32 %7, 0
  br i1 %cmp, label %for.body, label %for.end15.exitStub

for.body:                                         ; preds = %for.cond
  %8 = load i32, ptr %3, align 4, !tbaa !5
  %conv2 = sext i32 %8 to i64
  %mul3 = shl nsw i64 %conv2, 2
  %call4 = tail call noalias ptr @malloc(i64 noundef %mul3) #9
  %arrayidx = getelementptr inbounds nuw ptr, ptr %call1, i64 %indvars.iv3
  store ptr %call4, ptr %arrayidx, align 8, !tbaa !9
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.body ]
  %9 = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %9, ptr %4, align 4, !tbaa !5
  %10 = load i32, ptr %3, align 4, !tbaa !5
  %11 = sext i32 %10 to i64
  %cmp6 = icmp slt i64 %indvars.iv, %11
  br i1 %cmp6, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.cond5
  %arrayidx11 = getelementptr inbounds nuw i32, ptr %call4, i64 %indvars.iv
  %call12 = tail call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef %arrayidx11)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond5, !llvm.loop !22

for.end:                                          ; preds = %for.cond5
  %indvars.iv.next4 = add nuw nsw i64 %indvars.iv3, 1
  br label %for.cond

for.end15.exitStub:                               ; preds = %for.cond
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { minsize mustprogress norecurse optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nofree nounwind }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(0) }

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
!19 = !{!20, !20, i64 0}
!20 = !{!"p2 int", !21, i64 0}
!21 = !{!"any p2 pointer", !11, i64 0}
!22 = distinct !{!22, !13, !14}
