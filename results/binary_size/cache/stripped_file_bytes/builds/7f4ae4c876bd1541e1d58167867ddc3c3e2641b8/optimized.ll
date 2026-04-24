; ModuleID = '<stdin>'
source_filename = "/tmp/tmpxlorsae9.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@a = dso_local global [500 x i8] zeroinitializer, align 16
@post = dso_local local_unnamed_addr global [500 x i32] zeroinitializer, align 16
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"%c\0A\00", align 1
@str = private unnamed_addr constant [3 x i8] c"NO\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #7
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull @a)
  %call2 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) @a) #8
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %.fr = freeze i32 %0
  %conv3 = sext i32 %.fr to i64
  %cmp12.not27 = icmp slt i32 %.fr, 1
  br i1 %cmp12.not27, label %for.cond4.preheader.us.preheader, label %for.cond4.preheader.preheader

for.cond4.preheader.preheader:                    ; preds = %entry
  %1 = add i64 %call2, 1
  %2 = sub i64 %1, %conv3
  %wide.trip.count = zext nneg i32 %.fr to i64
  br label %for.cond11.preheader.preheader

for.cond4.preheader.us.preheader:                 ; preds = %entry
  %3 = trunc i64 %call2 to i32
  %4 = add i32 %3, 1
  %5 = sub i32 %4, %.fr
  %6 = add i64 %call2, 1
  %7 = sub i64 %6, %conv3
  %min.iters.check = icmp ult i64 %7, 4
  br i1 %min.iters.check, label %for.end26.us.preheader, label %vector.ph

vector.ph:                                        ; preds = %for.cond4.preheader.us.preheader
  %n.vec = and i64 %7, -4
  %.cast = trunc i64 %n.vec to i32
  %8 = sub i32 %5, %.cast
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %5, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = add <4 x i32> %broadcast.splat, <i32 0, i32 -1, i32 -2, i32 -3>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.ind = phi <4 x i32> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %10, %vector.body ]
  %9 = getelementptr inbounds nuw [500 x i32], ptr @post, i64 0, i64 %index
  store <4 x i32> %vec.ind, ptr %9, align 16, !tbaa !5
  %10 = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.ind, <4 x i32> %vec.phi)
  %index.next = add nuw i64 %index, 4
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 -4)
  %11 = icmp eq i64 %index.next, %n.vec
  br i1 %11, label %middle.block, label %vector.body, !llvm.loop !9

middle.block:                                     ; preds = %vector.body
  %12 = call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %10)
  %cmp.n = icmp eq i64 %7, %n.vec
  br i1 %cmp.n, label %for.end34, label %for.end26.us.preheader

for.end26.us.preheader:                           ; preds = %for.cond4.preheader.us.preheader, %middle.block
  %indvars.iv64.ph = phi i32 [ %5, %for.cond4.preheader.us.preheader ], [ %8, %middle.block ]
  %indvars.iv60.ph = phi i64 [ 0, %for.cond4.preheader.us.preheader ], [ %n.vec, %middle.block ]
  %max.036.us.ph = phi i32 [ 0, %for.cond4.preheader.us.preheader ], [ %12, %middle.block ]
  br label %for.end26.us

for.end26.us:                                     ; preds = %for.end26.us.preheader, %for.end26.us
  %indvars.iv64 = phi i32 [ %indvars.iv.next65, %for.end26.us ], [ %indvars.iv64.ph, %for.end26.us.preheader ]
  %indvars.iv60 = phi i64 [ %indvars.iv.next61, %for.end26.us ], [ %indvars.iv60.ph, %for.end26.us.preheader ]
  %max.036.us = phi i32 [ %spec.select26.us, %for.end26.us ], [ %max.036.us.ph, %for.end26.us.preheader ]
  %arrayidx28.us = getelementptr inbounds nuw [500 x i32], ptr @post, i64 0, i64 %indvars.iv60
  store i32 %indvars.iv64, ptr %arrayidx28.us, align 4, !tbaa !5
  %spec.select26.us = call i32 @llvm.smax.i32(i32 %indvars.iv64, i32 %max.036.us)
  %indvars.iv.next61 = add nuw nsw i64 %indvars.iv60, 1
  %indvars.iv.next65 = add i32 %indvars.iv64, -1
  %exitcond68 = icmp eq i64 %indvars.iv.next61, %7
  br i1 %exitcond68, label %for.end34, label %for.end26.us, !llvm.loop !14

for.cond11.preheader.preheader:                   ; preds = %for.end26, %for.cond4.preheader.preheader
  %indvars.iv52 = phi i64 [ 0, %for.cond4.preheader.preheader ], [ %indvars.iv.next53, %for.end26 ]
  %max.036 = phi i32 [ 0, %for.cond4.preheader.preheader ], [ %spec.select26, %for.end26 ]
  br label %for.cond11.preheader

for.cond11.preheader:                             ; preds = %for.cond11.preheader.preheader, %for.end
  %indvars.iv54 = phi i64 [ %indvars.iv52, %for.cond11.preheader.preheader ], [ %indvars.iv.next55, %for.end ]
  %count.134 = phi i32 [ 0, %for.cond11.preheader.preheader ], [ %spec.select, %for.end ]
  br label %for.body13

for.body13:                                       ; preds = %for.body13, %for.cond11.preheader
  %indvars.iv = phi i64 [ 0, %for.cond11.preheader ], [ %indvars.iv.next, %for.body13 ]
  %13 = add nuw nsw i64 %indvars.iv, %indvars.iv52
  %arrayidx = getelementptr inbounds nuw [500 x i8], ptr @a, i64 0, i64 %13
  %14 = load i8, ptr %arrayidx, align 1, !tbaa !15
  %15 = add nuw nsw i64 %indvars.iv, %indvars.iv54
  %arrayidx17 = getelementptr inbounds nuw [500 x i8], ptr @a, i64 0, i64 %15
  %16 = load i8, ptr %arrayidx17, align 1, !tbaa !15
  %cmp19.not = icmp eq i8 %14, %16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp ne i64 %indvars.iv.next, %wide.trip.count
  %or.cond.not = select i1 %cmp19.not, i1 %exitcond.not, i1 false
  br i1 %or.cond.not, label %for.body13, label %for.end, !llvm.loop !16

for.end:                                          ; preds = %for.body13
  %inc22 = zext i1 %cmp19.not to i32
  %spec.select = add nuw nsw i32 %count.134, %inc22
  %indvars.iv.next55 = add nuw nsw i64 %indvars.iv54, 1
  %exitcond57 = icmp eq i64 %indvars.iv.next55, %2
  br i1 %exitcond57, label %for.end26, label %for.cond11.preheader, !llvm.loop !17

for.end26:                                        ; preds = %for.end
  %arrayidx28 = getelementptr inbounds nuw [500 x i32], ptr @post, i64 0, i64 %indvars.iv52
  store i32 %spec.select, ptr %arrayidx28, align 4, !tbaa !5
  %spec.select26 = call i32 @llvm.smax.i32(i32 %spec.select, i32 %max.036)
  %indvars.iv.next53 = add nuw nsw i64 %indvars.iv52, 1
  %exitcond59 = icmp eq i64 %indvars.iv.next53, %2
  br i1 %exitcond59, label %for.end34, label %for.cond11.preheader.preheader, !llvm.loop !18

for.end34:                                        ; preds = %for.end26, %for.end26.us, %middle.block
  %.us-phi40 = phi i32 [ %12, %middle.block ], [ %spec.select26.us, %for.end26.us ], [ %spec.select26, %for.end26 ]
  %.us-phi41.in = phi i64 [ %7, %middle.block ], [ %7, %for.end26.us ], [ %2, %for.end26 ]
  %cmp35 = icmp slt i32 %.us-phi40, 2
  br i1 %cmp35, label %if.then36, label %if.else

if.then36:                                        ; preds = %for.end34
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %if.end66

if.else:                                          ; preds = %for.end34
  %call38 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %.us-phi40)
  %wide.trip.count76 = and i64 %.us-phi41.in, 4294967295
  br label %for.body41

for.body41:                                       ; preds = %if.else, %for.inc63
  %indvars.iv69 = phi i64 [ 0, %if.else ], [ %indvars.iv.next70, %for.inc63 ]
  %arrayidx43 = getelementptr inbounds nuw [500 x i32], ptr @post, i64 0, i64 %indvars.iv69
  %17 = load i32, ptr %arrayidx43, align 4, !tbaa !5
  %cmp44 = icmp eq i32 %17, %.us-phi40
  br i1 %cmp44, label %for.cond46.preheader, label %for.inc63

for.cond46.preheader:                             ; preds = %for.body41
  %indvars75 = trunc i64 %indvars.iv69 to i32
  %add47 = add nsw i32 %indvars75, -1
  %18 = load i32, ptr %n, align 4, !tbaa !5
  %19 = trunc i64 %indvars.iv69 to i32
  %20 = add i32 %19, -1
  %sub4842 = add i32 %20, %18
  %21 = sext i32 %sub4842 to i64
  %cmp4943 = icmp slt i64 %indvars.iv69, %21
  br i1 %cmp4943, label %for.body50, label %for.end57

for.body50:                                       ; preds = %for.cond46.preheader, %for.body50
  %indvars.iv71 = phi i64 [ %indvars.iv.next72, %for.body50 ], [ %indvars.iv69, %for.cond46.preheader ]
  %arrayidx52 = getelementptr inbounds nuw [500 x i8], ptr @a, i64 0, i64 %indvars.iv71
  %22 = load i8, ptr %arrayidx52, align 1, !tbaa !15
  %conv53 = sext i8 %22 to i32
  %putchar = call i32 @putchar(i32 %conv53)
  %indvars.iv.next72 = add nuw nsw i64 %indvars.iv71, 1
  %23 = load i32, ptr %n, align 4, !tbaa !5
  %sub48 = add i32 %add47, %23
  %24 = trunc nuw i64 %indvars.iv.next72 to i32
  %cmp49 = icmp sgt i32 %sub48, %24
  br i1 %cmp49, label %for.body50, label %for.end57, !llvm.loop !19

for.end57:                                        ; preds = %for.body50, %for.cond46.preheader
  %k.1.lcssa = phi i64 [ %indvars.iv69, %for.cond46.preheader ], [ %indvars.iv.next72, %for.body50 ]
  %idxprom58 = and i64 %k.1.lcssa, 4294967295
  %arrayidx59 = getelementptr inbounds nuw [500 x i8], ptr @a, i64 0, i64 %idxprom58
  %25 = load i8, ptr %arrayidx59, align 1, !tbaa !15
  %conv60 = sext i8 %25 to i32
  %call61 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i32 noundef %conv60)
  br label %for.inc63

for.inc63:                                        ; preds = %for.body41, %for.end57
  %indvars.iv.next70 = add nuw nsw i64 %indvars.iv69, 1
  %exitcond77.not = icmp eq i64 %indvars.iv.next70, %wide.trip.count76
  br i1 %exitcond77.not, label %if.end66, label %for.body41, !llvm.loop !20

if.end66:                                         ; preds = %for.inc63, %if.then36
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #7
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smax.v4i32(<4 x i32>) #6

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }
attributes #8 = { nounwind willreturn memory(read) }

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
!15 = !{!7, !7, i64 0}
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11}
!18 = distinct !{!18, !10, !11}
!19 = distinct !{!19, !10, !11}
!20 = distinct !{!20, !10, !11}
