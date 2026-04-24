; ModuleID = '<stdin>'
source_filename = "/tmp/tmpdy71gei7.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d,\00", align 1
@stdin = external local_unnamed_addr global ptr, align 8

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %s = alloca [300 x i32], align 16
  %n = alloca i32, align 4
  %c = alloca [300 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 1200, ptr nonnull %s) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #6
  call void @llvm.lifetime.start.p0(i64 1200, ptr nonnull %c) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1200) %c, i8 0, i64 1200, i1 false)
  store i32 1000, ptr %c, align 16
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  %0 = load ptr, ptr @stdin, align 8, !tbaa !5
  %call.i = call i32 @getc(ptr noundef %0)
  %1 = load i32, ptr %n, align 4, !tbaa !10
  %cmp22 = icmp sgt i32 %1, 0
  br i1 %cmp22, label %for.body, label %for.end50

for.cond5.preheader:                              ; preds = %for.body
  %cmp626 = icmp sgt i32 %3, 0
  br i1 %cmp626, label %for.body7.preheader, label %for.end50

for.body7.preheader:                              ; preds = %for.cond5.preheader
  %2 = zext nneg i32 %3 to i64
  %wide.trip.count44 = zext nneg i32 %3 to i64
  br label %for.body7

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds nuw [300 x i32], ptr %s, i64 0, i64 %indvars.iv
  %call2 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx)
  %arrayidx4 = getelementptr inbounds nuw [300 x i32], ptr %c, i64 0, i64 %indvars.iv
  store i32 0, ptr %arrayidx4, align 4, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %3 = load i32, ptr %n, align 4, !tbaa !10
  %4 = sext i32 %3 to i64
  %cmp = icmp slt i64 %indvars.iv.next, %4
  br i1 %cmp, label %for.body, label %for.cond5.preheader, !llvm.loop !12

for.cond5.loopexit:                               ; preds = %for.inc19, %for.body7
  %indvars.iv.next37 = add nuw nsw i64 %indvars.iv36, 1
  %exitcond45.not = icmp eq i64 %indvars.iv.next42, %wide.trip.count44
  br i1 %exitcond45.not, label %for.body27.preheader, label %for.body7, !llvm.loop !15

for.body27.preheader:                             ; preds = %for.cond5.loopexit
  %wide.trip.count49 = zext nneg i32 %3 to i64
  %min.iters.check = icmp ult i32 %3, 4
  br i1 %min.iters.check, label %for.body27.preheader65, label %vector.ph

vector.ph:                                        ; preds = %for.body27.preheader
  %n.vec = and i64 %wide.trip.count44, 2147483644
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ splat (i32 -2147483648), %vector.ph ], [ %7, %vector.body ]
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ]
  %5 = getelementptr inbounds nuw [300 x i32], ptr %c, i64 0, i64 %index
  %wide.load = load <4 x i32>, ptr %5, align 16, !tbaa !10
  %6 = icmp eq <4 x i32> %wide.load, zeroinitializer
  %7 = select <4 x i1> %6, <4 x i32> %vec.ind, <4 x i32> %vec.phi
  %index.next = add nuw i64 %index, 4
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 4)
  %8 = icmp eq i64 %index.next, %n.vec
  br i1 %8, label %middle.block, label %vector.body, !llvm.loop !16

middle.block:                                     ; preds = %vector.body
  %9 = call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %7)
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count44
  br i1 %cmp.n, label %for.cond36.preheader, label %for.body27.preheader65

for.body27.preheader65:                           ; preds = %for.body27.preheader, %middle.block
  %indvars.iv46.ph = phi i64 [ 0, %for.body27.preheader ], [ %n.vec, %middle.block ]
  %q.030.ph = phi i32 [ undef, %for.body27.preheader ], [ %9, %middle.block ]
  br label %for.body27

for.body7:                                        ; preds = %for.body7.preheader, %for.cond5.loopexit
  %indvars.iv41 = phi i64 [ 0, %for.body7.preheader ], [ %indvars.iv.next42, %for.cond5.loopexit ]
  %indvars.iv36 = phi i64 [ 1, %for.body7.preheader ], [ %indvars.iv.next37, %for.cond5.loopexit ]
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1
  %cmp924 = icmp samesign ult i64 %indvars.iv.next42, %2
  br i1 %cmp924, label %for.body10.lr.ph, label %for.cond5.loopexit

for.body10.lr.ph:                                 ; preds = %for.body7
  %arrayidx12 = getelementptr inbounds nuw [300 x i32], ptr %s, i64 0, i64 %indvars.iv41
  %10 = load i32, ptr %arrayidx12, align 4, !tbaa !10
  br label %for.body10

for.body10:                                       ; preds = %for.body10.lr.ph, %for.inc19
  %indvars.iv38 = phi i64 [ %indvars.iv36, %for.body10.lr.ph ], [ %indvars.iv.next39, %for.inc19 ]
  %arrayidx14 = getelementptr inbounds nuw [300 x i32], ptr %s, i64 0, i64 %indvars.iv38
  %11 = load i32, ptr %arrayidx14, align 4, !tbaa !10
  %cmp15 = icmp eq i32 %10, %11
  br i1 %cmp15, label %if.then, label %for.inc19

if.then:                                          ; preds = %for.body10
  %arrayidx17 = getelementptr inbounds nuw [300 x i32], ptr %c, i64 0, i64 %indvars.iv38
  %12 = load i32, ptr %arrayidx17, align 4, !tbaa !10
  %add18 = add nsw i32 %12, 1
  store i32 %add18, ptr %arrayidx17, align 4, !tbaa !10
  br label %for.inc19

for.inc19:                                        ; preds = %for.body10, %if.then
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next39, %wide.trip.count44
  br i1 %exitcond.not, label %for.cond5.loopexit, label %for.body10, !llvm.loop !19

for.cond36.preheader:                             ; preds = %for.body27, %middle.block
  %spec.select.lcssa = phi i32 [ %9, %middle.block ], [ %spec.select, %for.body27 ]
  %cmp3732 = icmp sgt i32 %spec.select.lcssa, 0
  br i1 %cmp3732, label %for.body38.preheader, label %for.end50

for.body38.preheader:                             ; preds = %for.cond36.preheader
  %wide.trip.count54 = zext nneg i32 %spec.select.lcssa to i64
  br label %for.body38

for.body27:                                       ; preds = %for.body27.preheader65, %for.body27
  %indvars.iv46 = phi i64 [ %indvars.iv.next47, %for.body27 ], [ %indvars.iv46.ph, %for.body27.preheader65 ]
  %q.030 = phi i32 [ %spec.select, %for.body27 ], [ %q.030.ph, %for.body27.preheader65 ]
  %arrayidx29 = getelementptr inbounds nuw [300 x i32], ptr %c, i64 0, i64 %indvars.iv46
  %13 = load i32, ptr %arrayidx29, align 4, !tbaa !10
  %cmp30 = icmp eq i32 %13, 0
  %14 = trunc nuw nsw i64 %indvars.iv46 to i32
  %spec.select = select i1 %cmp30, i32 %14, i32 %q.030
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 1
  %exitcond50.not = icmp eq i64 %indvars.iv.next47, %wide.trip.count49
  br i1 %exitcond50.not, label %for.cond36.preheader, label %for.body27, !llvm.loop !20

for.body38:                                       ; preds = %for.body38.preheader, %for.inc48
  %indvars.iv51 = phi i64 [ 0, %for.body38.preheader ], [ %indvars.iv.next52, %for.inc48 ]
  %arrayidx40 = getelementptr inbounds nuw [300 x i32], ptr %c, i64 0, i64 %indvars.iv51
  %15 = load i32, ptr %arrayidx40, align 4, !tbaa !10
  %cmp41 = icmp eq i32 %15, 0
  br i1 %cmp41, label %if.then42, label %for.inc48

if.then42:                                        ; preds = %for.body38
  %arrayidx44 = getelementptr inbounds nuw [300 x i32], ptr %s, i64 0, i64 %indvars.iv51
  %16 = load i32, ptr %arrayidx44, align 4, !tbaa !10
  %call45 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %16)
  %17 = load ptr, ptr @stdin, align 8, !tbaa !5
  %call.i20 = call i32 @getc(ptr noundef %17)
  br label %for.inc48

for.inc48:                                        ; preds = %for.body38, %if.then42
  %indvars.iv.next52 = add nuw nsw i64 %indvars.iv51, 1
  %exitcond55.not = icmp eq i64 %indvars.iv.next52, %wide.trip.count54
  br i1 %exitcond55.not, label %for.end50, label %for.body38, !llvm.loop !21

for.end50:                                        ; preds = %for.inc48, %entry, %for.cond5.preheader, %for.cond36.preheader
  %q.0.lcssa64 = phi i32 [ %spec.select.lcssa, %for.cond36.preheader ], [ undef, %for.cond5.preheader ], [ undef, %entry ], [ %spec.select.lcssa, %for.inc48 ]
  %idxprom51 = sext i32 %q.0.lcssa64 to i64
  %arrayidx52 = getelementptr inbounds [300 x i32], ptr %s, i64 0, i64 %idxprom51
  %18 = load i32, ptr %arrayidx52, align 4, !tbaa !10
  %call53 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %18)
  %19 = load ptr, ptr @stdin, align 8, !tbaa !5
  %call.i21 = call i32 @getc(ptr noundef %19)
  call void @llvm.lifetime.end.p0(i64 1200, ptr nonnull %c) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #6
  call void @llvm.lifetime.end.p0(i64 1200, ptr nonnull %s) #6
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smax.v4i32(<4 x i32>) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!6 = !{!"p1 _ZTS8_IO_FILE", !7, i64 0}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C++ TBAA"}
!10 = !{!11, !11, i64 0}
!11 = !{!"int", !8, i64 0}
!12 = distinct !{!12, !13, !14}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!"llvm.loop.unroll.disable"}
!15 = distinct !{!15, !13, !14}
!16 = distinct !{!16, !13, !14, !17, !18}
!17 = !{!"llvm.loop.isvectorized", i32 1}
!18 = !{!"llvm.loop.unroll.runtime.disable"}
!19 = distinct !{!19, !13, !14}
!20 = distinct !{!20, !13, !14, !17}
!21 = distinct !{!21, !13, !14}
