; ModuleID = '<stdin>'
source_filename = "/tmp/tmpjq4l32fp.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"NO\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %flag = alloca [550 x i32], align 16
  %s = alloca [550 x i8], align 16
  %s1 = alloca [550 x [6 x i8]], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #8
  call void @llvm.lifetime.start.p0(i64 2200, ptr nonnull %flag) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2200) %flag, i8 0, i64 2200, i1 false)
  call void @llvm.lifetime.start.p0(i64 550, ptr nonnull %s) #8
  call void @llvm.lifetime.start.p0(i64 3300, ptr nonnull %s1) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(3300) %s1, i8 0, i64 3300, i1 false)
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %s)
  %call3 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %s) #9
  %conv = trunc i64 %call3 to i32
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %sub = sub nsw i32 %conv, %0
  %add = add nsw i32 %sub, 1
  br label %do.body

do.body:                                          ; preds = %do.body, %entry
  %k.0 = phi i32 [ 0, %entry ], [ %k.1, %do.body ]
  %j.0 = phi i32 [ 1, %entry ], [ %j.1, %do.body ]
  %i.0 = phi i32 [ 0, %entry ], [ %i.1, %do.body ]
  %idx.ext = sext i32 %i.0 to i64
  %add.ptr = getelementptr inbounds i8, ptr %s, i64 %idx.ext
  %1 = load i8, ptr %add.ptr, align 1, !tbaa !9
  %idx.ext6 = zext nneg i32 %j.0 to i64
  %add.ptr7 = getelementptr inbounds nuw [6 x i8], ptr %s1, i64 %idx.ext6
  %idx.ext9 = sext i32 %k.0 to i64
  %add.ptr10 = getelementptr inbounds i8, ptr %add.ptr7, i64 %idx.ext9
  store i8 %1, ptr %add.ptr10, align 1, !tbaa !9
  %inc = add nsw i32 %i.0, 1
  %inc11 = add nsw i32 %k.0, 1
  %cmp = icmp eq i32 %inc11, %0
  %k.1 = select i1 %cmp, i32 0, i32 %inc11
  %inc12 = zext i1 %cmp to i32
  %j.1 = add nuw nsw i32 %j.0, %inc12
  %i.1 = select i1 %cmp, i32 %j.0, i32 %inc
  %cmp13.not = icmp sgt i32 %j.1, %add
  br i1 %cmp13.not, label %for.cond.preheader, label %do.body, !llvm.loop !10

for.cond.preheader:                               ; preds = %do.body
  %cmp15.not31 = icmp slt i32 %sub, 1
  br i1 %cmp15.not31, label %if.then55, label %for.body.preheader

for.body.preheader:                               ; preds = %for.cond.preheader
  %wide.trip.count = zext nneg i32 %add to i64
  br label %for.body

for.cond.loopexit:                                ; preds = %for.inc
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next42, %wide.trip.count
  br i1 %exitcond.not, label %for.body41.preheader, label %for.body, !llvm.loop !13

for.body:                                         ; preds = %for.body.preheader, %for.cond.loopexit
  %indvars.iv41 = phi i64 [ 1, %for.body.preheader ], [ %indvars.iv.next42, %for.cond.loopexit ]
  %indvars.iv = phi i64 [ 2, %for.body.preheader ], [ %indvars.iv.next, %for.cond.loopexit ]
  %add.ptr22 = getelementptr inbounds nuw [6 x i8], ptr %s1, i64 %indvars.iv41
  %arrayidx = getelementptr inbounds nuw [550 x i32], ptr %flag, i64 0, i64 %indvars.iv41
  br label %for.body19

for.body19:                                       ; preds = %for.body, %for.inc
  %indvars.iv38 = phi i64 [ %indvars.iv, %for.body ], [ %indvars.iv.next39, %for.inc ]
  %add.ptr26 = getelementptr inbounds nuw [6 x i8], ptr %s1, i64 %indvars.iv38
  %call28 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %add.ptr22, ptr noundef nonnull dereferenceable(1) %add.ptr26) #9
  %cmp29 = icmp eq i32 %call28, 0
  br i1 %cmp29, label %if.then30, label %for.inc

if.then30:                                        ; preds = %for.body19
  %2 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %inc31 = add nsw i32 %2, 1
  store i32 %inc31, ptr %arrayidx, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body19, %if.then30
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1
  %3 = trunc nuw i64 %indvars.iv38 to i32
  %cmp18.not = icmp slt i32 %sub, %3
  br i1 %cmp18.not, label %for.cond.loopexit, label %for.body19, !llvm.loop !14

for.body41.preheader:                             ; preds = %for.cond.loopexit
  %add.ptr38.phi.trans.insert = getelementptr inbounds nuw i8, ptr %flag, i64 4
  %.pre = load i32, ptr %add.ptr38.phi.trans.insert, align 4, !tbaa !5
  %4 = add i32 %conv, 2
  %5 = sub i32 %4, %0
  %wide.trip.count47 = zext i32 %5 to i64
  %6 = add nsw i64 %wide.trip.count47, -2
  %min.iters.check = icmp ult i64 %6, 4
  br i1 %min.iters.check, label %for.body41.preheader56, label %vector.ph

vector.ph:                                        ; preds = %for.body41.preheader
  %n.vec = and i64 %6, -4
  %7 = or disjoint i64 %n.vec, 2
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.pre, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %invariant.gep = getelementptr i8, ptr %flag, i64 8
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %8, %vector.body ]
  %gep = getelementptr i32, ptr %invariant.gep, i64 %index
  %wide.load = load <4 x i32>, ptr %gep, align 8, !tbaa !5
  %8 = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load, <4 x i32> %vec.phi)
  %index.next = add nuw i64 %index, 4
  %9 = icmp eq i64 %index.next, %n.vec
  br i1 %9, label %middle.block, label %vector.body, !llvm.loop !15

middle.block:                                     ; preds = %vector.body
  %10 = call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %8)
  %cmp.n = icmp eq i64 %6, %n.vec
  br i1 %cmp.n, label %for.end53, label %for.body41.preheader56

for.body41.preheader56:                           ; preds = %for.body41.preheader, %middle.block
  %indvars.iv44.ph = phi i64 [ 2, %for.body41.preheader ], [ %7, %middle.block ]
  %max.035.ph = phi i32 [ %.pre, %for.body41.preheader ], [ %10, %middle.block ]
  br label %for.body41

for.body41:                                       ; preds = %for.body41.preheader56, %for.body41
  %indvars.iv44 = phi i64 [ %indvars.iv.next45, %for.body41 ], [ %indvars.iv44.ph, %for.body41.preheader56 ]
  %max.035 = phi i32 [ %spec.select, %for.body41 ], [ %max.035.ph, %for.body41.preheader56 ]
  %add.ptr44 = getelementptr inbounds nuw i32, ptr %flag, i64 %indvars.iv44
  %11 = load i32, ptr %add.ptr44, align 4, !tbaa !5
  %spec.select = call i32 @llvm.smax.i32(i32 %11, i32 %max.035)
  %indvars.iv.next45 = add nuw nsw i64 %indvars.iv44, 1
  %exitcond48 = icmp eq i64 %indvars.iv.next45, %wide.trip.count47
  br i1 %exitcond48, label %for.end53, label %for.body41, !llvm.loop !18

for.end53:                                        ; preds = %for.body41, %middle.block
  %spec.select.lcssa = phi i32 [ %10, %middle.block ], [ %spec.select, %for.body41 ]
  %cmp54 = icmp eq i32 %spec.select.lcssa, 0
  br i1 %cmp54, label %if.then55, label %if.else

if.then55:                                        ; preds = %for.cond.preheader, %for.end53
  %call56 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2)
  br label %if.end75

if.else:                                          ; preds = %for.end53
  %add57 = add nsw i32 %spec.select.lcssa, 1
  %call58 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %add57)
  %12 = add i32 %conv, 2
  %13 = sub i32 %12, %0
  %wide.trip.count52 = zext i32 %13 to i64
  br label %for.body61

for.body61:                                       ; preds = %if.else, %for.inc72
  %indvars.iv49 = phi i64 [ 1, %if.else ], [ %indvars.iv.next50, %for.inc72 ]
  %arrayidx63 = getelementptr inbounds nuw [550 x i32], ptr %flag, i64 0, i64 %indvars.iv49
  %14 = load i32, ptr %arrayidx63, align 4, !tbaa !5
  %cmp64 = icmp eq i32 %14, %spec.select.lcssa
  br i1 %cmp64, label %if.then65, label %for.inc72

if.then65:                                        ; preds = %for.body61
  %add.ptr68 = getelementptr inbounds nuw [6 x i8], ptr %s1, i64 %indvars.iv49
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) %add.ptr68)
  br label %for.inc72

for.inc72:                                        ; preds = %for.body61, %if.then65
  %indvars.iv.next50 = add nuw nsw i64 %indvars.iv49, 1
  %exitcond53 = icmp eq i64 %indvars.iv.next50, %wide.trip.count52
  br i1 %exitcond53, label %if.end75, label %for.body61, !llvm.loop !19

if.end75:                                         ; preds = %for.inc72, %if.then55
  call void @llvm.lifetime.end.p0(i64 3300, ptr nonnull %s1) #8
  call void @llvm.lifetime.end.p0(i64 550, ptr nonnull %s) #8
  call void @llvm.lifetime.end.p0(i64 2200, ptr nonnull %flag) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #8
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smax.v4i32(<4 x i32>) #7

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }
attributes #9 = { nounwind willreturn memory(read) }

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
!9 = !{!7, !7, i64 0}
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = distinct !{!13, !11, !12}
!14 = distinct !{!14, !11, !12}
!15 = distinct !{!15, !11, !12, !16, !17}
!16 = !{!"llvm.loop.isvectorized", i32 1}
!17 = !{!"llvm.loop.unroll.runtime.disable"}
!18 = distinct !{!18, !11, !12, !16}
!19 = distinct !{!19, !11, !12}
