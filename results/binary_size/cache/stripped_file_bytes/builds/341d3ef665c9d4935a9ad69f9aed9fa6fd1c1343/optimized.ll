; ModuleID = '<stdin>'
source_filename = "/tmp/tmpnlbbsxmi.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@__const.main.d = private unnamed_addr constant [13 x i32] [i32 31, i32 28, i32 31, i32 30, i32 31, i32 30, i32 31, i32 31, i32 30, i32 31, i32 30, i32 31, i32 0], align 16
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%d%d%d\00", align 1
@str.2 = private unnamed_addr constant [4 x i8] c"YES\00", align 1
@str.3 = private unnamed_addr constant [3 x i8] c"NO\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %a = alloca [200 x i32], align 16
  %b = alloca [200 x i32], align 16
  %c = alloca [200 x i32], align 16
  %d = alloca [13 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #6
  call void @llvm.lifetime.start.p0(i64 800, ptr nonnull %a) #6
  call void @llvm.lifetime.start.p0(i64 800, ptr nonnull %b) #6
  call void @llvm.lifetime.start.p0(i64 800, ptr nonnull %c) #6
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %d) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(52) %d, ptr noundef nonnull align 16 dereferenceable(52) @__const.main.d, i64 52, i1 false)
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp32 = icmp sgt i32 %0, 0
  br i1 %cmp32, label %for.body, label %for.end83

for.cond6.preheader:                              ; preds = %for.body
  %1 = icmp sgt i32 %2, 0
  br i1 %1, label %for.body8.lr.ph, label %for.end83

for.body8.lr.ph:                                  ; preds = %for.cond6.preheader
  %arrayidx34 = getelementptr inbounds nuw i8, ptr %d, i64 4
  br label %for.body8

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds nuw [200 x i32], ptr %a, i64 0, i64 %indvars.iv
  %arrayidx2 = getelementptr inbounds nuw [200 x i32], ptr %b, i64 0, i64 %indvars.iv
  %arrayidx4 = getelementptr inbounds nuw [200 x i32], ptr %c, i64 0, i64 %indvars.iv
  %call5 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %arrayidx, ptr noundef nonnull %arrayidx2, ptr noundef nonnull %arrayidx4)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %2 = load i32, ptr %n, align 4, !tbaa !5
  %3 = sext i32 %2 to i64
  %cmp = icmp slt i64 %indvars.iv.next, %3
  br i1 %cmp, label %for.body, label %for.cond6.preheader, !llvm.loop !9

for.body8:                                        ; preds = %for.body8.lr.ph, %if.end80
  %indvars.iv54 = phi i64 [ 0, %for.body8.lr.ph ], [ %indvars.iv.next55, %if.end80 ]
  %arrayidx10 = getelementptr inbounds nuw [200 x i32], ptr %b, i64 0, i64 %indvars.iv54
  %4 = load i32, ptr %arrayidx10, align 4, !tbaa !5
  %arrayidx12 = getelementptr inbounds nuw [200 x i32], ptr %c, i64 0, i64 %indvars.iv54
  %5 = load i32, ptr %arrayidx12, align 4, !tbaa !5
  %cmp13 = icmp sgt i32 %4, %5
  br i1 %cmp13, label %if.then, label %if.end

if.then:                                          ; preds = %for.body8
  store i32 %5, ptr %arrayidx10, align 4, !tbaa !5
  store i32 %4, ptr %arrayidx12, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body8
  %6 = phi i32 [ %4, %if.then ], [ %5, %for.body8 ]
  %7 = phi i32 [ %5, %if.then ], [ %4, %for.body8 ]
  %arrayidx23 = getelementptr inbounds nuw [200 x i32], ptr %a, i64 0, i64 %indvars.iv54
  %8 = load i32, ptr %arrayidx23, align 4, !tbaa !5
  %rem = srem i32 %8, 400
  %cmp24 = icmp eq i32 %rem, 0
  br i1 %cmp24, label %if.then33, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %9 = and i32 %8, 3
  %cmp28 = icmp ne i32 %9, 0
  %rem31 = srem i32 %8, 100
  %cmp32.not = icmp eq i32 %rem31, 0
  %or.cond = or i1 %cmp28, %cmp32.not
  br i1 %or.cond, label %if.else58, label %if.then33

if.then33:                                        ; preds = %lor.lhs.false, %if.end
  store i32 29, ptr %arrayidx34, align 4, !tbaa !5
  %cmp4137 = icmp slt i32 %7, %6
  br i1 %cmp4137, label %for.body42.preheader, label %for.end48.thread

for.end48.thread:                                 ; preds = %if.then33
  store i32 28, ptr %arrayidx34, align 4, !tbaa !5
  br label %if.else

for.body42.preheader:                             ; preds = %if.then33
  %10 = sext i32 %7 to i64
  %wide.trip.count52 = sext i32 %6 to i64
  %11 = sub nsw i64 %wide.trip.count52, %10
  %min.iters.check = icmp ult i64 %11, 4
  br i1 %min.iters.check, label %for.body42.preheader75, label %vector.ph

vector.ph:                                        ; preds = %for.body42.preheader
  %n.vec = and i64 %11, -4
  %12 = add nsw i64 %n.vec, %10
  %invariant.op85 = add i64 %10, -1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %14, %vector.body ]
  %.reass86 = add i64 %index, %invariant.op85
  %13 = getelementptr inbounds [13 x i32], ptr %d, i64 0, i64 %.reass86
  %wide.load = load <4 x i32>, ptr %13, align 4, !tbaa !5
  %14 = add <4 x i32> %wide.load, %vec.phi
  %index.next = add nuw i64 %index, 4
  %15 = icmp eq i64 %index.next, %n.vec
  br i1 %15, label %middle.block, label %vector.body, !llvm.loop !12

middle.block:                                     ; preds = %vector.body
  %16 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %14)
  %cmp.n = icmp eq i64 %11, %n.vec
  br i1 %cmp.n, label %for.end48, label %for.body42.preheader75

for.body42.preheader75:                           ; preds = %for.body42.preheader, %middle.block
  %indvars.iv48.ph = phi i64 [ %10, %for.body42.preheader ], [ %12, %middle.block ]
  %cha.138.ph = phi i32 [ 0, %for.body42.preheader ], [ %16, %middle.block ]
  br label %for.body42

for.body42:                                       ; preds = %for.body42.preheader75, %for.body42
  %indvars.iv48 = phi i64 [ %indvars.iv.next49, %for.body42 ], [ %indvars.iv48.ph, %for.body42.preheader75 ]
  %cha.138 = phi i32 [ %add45, %for.body42 ], [ %cha.138.ph, %for.body42.preheader75 ]
  %17 = add nsw i64 %indvars.iv48, -1
  %arrayidx44 = getelementptr inbounds [13 x i32], ptr %d, i64 0, i64 %17
  %18 = load i32, ptr %arrayidx44, align 4, !tbaa !5
  %add45 = add nsw i32 %18, %cha.138
  %indvars.iv.next49 = add nsw i64 %indvars.iv48, 1
  %exitcond53.not = icmp eq i64 %indvars.iv.next49, %wide.trip.count52
  br i1 %exitcond53.not, label %for.end48, label %for.body42, !llvm.loop !15

for.end48:                                        ; preds = %for.body42, %middle.block
  %add45.lcssa = phi i32 [ %16, %middle.block ], [ %add45, %for.body42 ]
  %19 = srem i32 %add45.lcssa, 7
  %20 = icmp eq i32 %19, 0
  store i32 28, ptr %arrayidx34, align 4, !tbaa !5
  br i1 %20, label %if.else, label %if.end80

if.else:                                          ; preds = %for.end48.thread, %for.end48
  br label %if.end80

if.else58:                                        ; preds = %lor.lhs.false
  %cmp6434 = icmp slt i32 %7, %6
  br i1 %cmp6434, label %for.body65.preheader, label %if.else77

for.body65.preheader:                             ; preds = %if.else58
  %21 = sext i32 %7 to i64
  %wide.trip.count = sext i32 %6 to i64
  %22 = sub nsw i64 %wide.trip.count, %21
  %min.iters.check61 = icmp ult i64 %22, 4
  br i1 %min.iters.check61, label %for.body65.preheader76, label %vector.ph62

vector.ph62:                                      ; preds = %for.body65.preheader
  %n.vec64 = and i64 %22, -4
  %23 = add nsw i64 %n.vec64, %21
  %invariant.op = add i64 %21, -1
  br label %vector.body65

vector.body65:                                    ; preds = %vector.body65, %vector.ph62
  %index66 = phi i64 [ 0, %vector.ph62 ], [ %index.next70, %vector.body65 ]
  %vec.phi67 = phi <4 x i32> [ zeroinitializer, %vector.ph62 ], [ %25, %vector.body65 ]
  %.reass = add i64 %index66, %invariant.op
  %24 = getelementptr inbounds [13 x i32], ptr %d, i64 0, i64 %.reass
  %wide.load69 = load <4 x i32>, ptr %24, align 4, !tbaa !5
  %25 = add <4 x i32> %wide.load69, %vec.phi67
  %index.next70 = add nuw i64 %index66, 4
  %26 = icmp eq i64 %index.next70, %n.vec64
  br i1 %26, label %middle.block71, label %vector.body65, !llvm.loop !16

middle.block71:                                   ; preds = %vector.body65
  %27 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %25)
  %cmp.n72 = icmp eq i64 %22, %n.vec64
  br i1 %cmp.n72, label %for.end72, label %for.body65.preheader76

for.body65.preheader76:                           ; preds = %for.body65.preheader, %middle.block71
  %indvars.iv44.ph = phi i64 [ %21, %for.body65.preheader ], [ %23, %middle.block71 ]
  %cha.235.ph = phi i32 [ 0, %for.body65.preheader ], [ %27, %middle.block71 ]
  br label %for.body65

for.body65:                                       ; preds = %for.body65.preheader76, %for.body65
  %indvars.iv44 = phi i64 [ %indvars.iv.next45, %for.body65 ], [ %indvars.iv44.ph, %for.body65.preheader76 ]
  %cha.235 = phi i32 [ %add69, %for.body65 ], [ %cha.235.ph, %for.body65.preheader76 ]
  %28 = add nsw i64 %indvars.iv44, -1
  %arrayidx68 = getelementptr inbounds [13 x i32], ptr %d, i64 0, i64 %28
  %29 = load i32, ptr %arrayidx68, align 4, !tbaa !5
  %add69 = add nsw i32 %29, %cha.235
  %indvars.iv.next45 = add nsw i64 %indvars.iv44, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next45, %wide.trip.count
  br i1 %exitcond.not, label %for.end72, label %for.body65, !llvm.loop !17

for.end72:                                        ; preds = %for.body65, %middle.block71
  %add69.lcssa = phi i32 [ %27, %middle.block71 ], [ %add69, %for.body65 ]
  %30 = srem i32 %add69.lcssa, 7
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %if.else77, label %if.end80

if.else77:                                        ; preds = %if.else58, %for.end72
  br label %if.end80

if.end80:                                         ; preds = %for.end72, %for.end48, %if.else77, %if.else
  %str.1.sink = phi ptr [ @str.2, %if.else77 ], [ @str.2, %if.else ], [ @str.3, %for.end48 ], [ @str.3, %for.end72 ]
  %puts29 = call i32 @puts(ptr nonnull dereferenceable(1) %str.1.sink)
  %indvars.iv.next55 = add nuw nsw i64 %indvars.iv54, 1
  %32 = load i32, ptr %n, align 4, !tbaa !5
  %33 = sext i32 %32 to i64
  %cmp7 = icmp slt i64 %indvars.iv.next55, %33
  br i1 %cmp7, label %for.body8, label %for.end83, !llvm.loop !18

for.end83:                                        ; preds = %if.end80, %entry, %for.cond6.preheader
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %d) #6
  call void @llvm.lifetime.end.p0(i64 800, ptr nonnull %c) #6
  call void @llvm.lifetime.end.p0(i64 800, ptr nonnull %b) #6
  call void @llvm.lifetime.end.p0(i64 800, ptr nonnull %a) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #6
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !10, !11, !13, !14}
!13 = !{!"llvm.loop.isvectorized", i32 1}
!14 = !{!"llvm.loop.unroll.runtime.disable"}
!15 = distinct !{!15, !10, !11, !13}
!16 = distinct !{!16, !10, !11, !13, !14}
!17 = distinct !{!17, !10, !11, !13}
!18 = distinct !{!18, !10, !11}
