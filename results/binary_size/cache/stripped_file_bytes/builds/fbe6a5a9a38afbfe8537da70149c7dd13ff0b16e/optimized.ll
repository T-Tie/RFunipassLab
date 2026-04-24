; ModuleID = '<stdin>'
source_filename = "/tmp/tmp32bltf1x.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %s1 = alloca [256 x i8], align 16
  %s2 = alloca [256 x i8], align 16
  %s3 = alloca [256 x i8], align 16
  %t = alloca [256 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %s1) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %s1, i8 0, i64 256, i1 false)
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %s2) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %s2, i8 0, i64 256, i1 false)
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %s3) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %s3, i8 0, i64 256, i1 false)
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %t) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %t, i8 0, i64 256, i1 false)
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %s1)
  %call2 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %s2)
  %call4 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %s3)
  %call6 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %s1) #9
  %conv = trunc i64 %call6 to i32
  %call8 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %s2) #9
  %conv9 = trunc i64 %call8 to i32
  %call11 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %s3) #9
  %conv12 = trunc i64 %call11 to i32
  %cmp32 = icmp sgt i32 %conv, 0
  br i1 %cmp32, label %for.cond13.preheader.lr.ph, label %for.end44

for.cond13.preheader.lr.ph:                       ; preds = %entry
  %cmp1428 = icmp sgt i32 %conv9, 0
  br i1 %cmp1428, label %for.cond13.preheader.us.preheader, label %for.cond13.preheader.lr.ph.split

for.cond13.preheader.us.preheader:                ; preds = %for.cond13.preheader.lr.ph
  %wide.trip.count72 = and i64 %call6, 2147483647
  %wide.trip.count65 = and i64 %call8, 2147483647
  br label %for.cond13.preheader.us

for.cond13.preheader.us:                          ; preds = %for.cond13.preheader.us.preheader, %if.else.us
  %indvars.iv67 = phi i64 [ 0, %for.cond13.preheader.us.preheader ], [ %indvars.iv.next68, %if.else.us ]
  %indvars.iv61 = phi i32 [ %conv, %for.cond13.preheader.us.preheader ], [ %indvars.iv.next62, %if.else.us ]
  %wide.trip.count64 = zext i32 %indvars.iv61 to i64
  br label %for.body15.us

for.body15.us:                                    ; preds = %for.cond13.preheader.us, %for.inc.us
  %indvars.iv = phi i64 [ 0, %for.cond13.preheader.us ], [ %indvars.iv.next, %for.inc.us ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count64
  br i1 %exitcond.not, label %for.end.us, label %lor.lhs.false.us

lor.lhs.false.us:                                 ; preds = %for.body15.us
  %0 = add nuw nsw i64 %indvars.iv, %indvars.iv67
  %arrayidx.us = getelementptr inbounds nuw [256 x i8], ptr %s1, i64 0, i64 %0
  %1 = load i8, ptr %arrayidx.us, align 1, !tbaa !5
  %arrayidx20.us = getelementptr inbounds nuw [256 x i8], ptr %s2, i64 0, i64 %indvars.iv
  %2 = load i8, ptr %arrayidx20.us, align 1, !tbaa !5
  %cmp22.not.us = icmp eq i8 %1, %2
  br i1 %cmp22.not.us, label %for.inc.us, label %for.end.us.split.loop.exit

for.end.us.split.loop.exit:                       ; preds = %lor.lhs.false.us
  %3 = trunc nuw nsw i64 %indvars.iv to i32
  br label %for.end.us

for.end.us:                                       ; preds = %for.body15.us, %for.end.us.split.loop.exit
  %j.0.lcssa.us = phi i32 [ %3, %for.end.us.split.loop.exit ], [ %indvars.iv61, %for.body15.us ]
  %cmp23.us = icmp eq i32 %j.0.lcssa.us, %conv9
  br i1 %cmp23.us, label %for.cond25.preheader.loopexit, label %if.else.us

if.else.us:                                       ; preds = %for.end.us
  %arrayidx38.us = getelementptr inbounds nuw [256 x i8], ptr %s1, i64 0, i64 %indvars.iv67
  %4 = load i8, ptr %arrayidx38.us, align 1, !tbaa !5
  %arrayidx40.us = getelementptr inbounds nuw [256 x i8], ptr %t, i64 0, i64 %indvars.iv67
  store i8 %4, ptr %arrayidx40.us, align 1, !tbaa !5
  %indvars.iv.next68 = add nuw nsw i64 %indvars.iv67, 1
  %indvars.iv.next62 = add i32 %indvars.iv61, -1
  %exitcond73.not = icmp eq i64 %indvars.iv.next68, %wide.trip.count72
  br i1 %exitcond73.not, label %for.end55, label %for.cond13.preheader.us, !llvm.loop !8

for.inc.us:                                       ; preds = %lor.lhs.false.us
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond66.not = icmp eq i64 %indvars.iv.next, %wide.trip.count65
  br i1 %exitcond66.not, label %for.cond25.preheader.loopexit, label %for.body15.us, !llvm.loop !11

for.cond13.preheader.lr.ph.split:                 ; preds = %for.cond13.preheader.lr.ph
  %cmp23 = icmp eq i32 %conv9, 0
  br i1 %cmp23, label %for.cond25.preheader, label %for.cond13.preheader.preheader

for.cond13.preheader.preheader:                   ; preds = %for.cond13.preheader.lr.ph.split
  %5 = and i64 %call6, 2147483647
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %t, ptr nonnull align 16 %s1, i64 %5, i1 false), !tbaa !5
  %6 = trunc i64 %call6 to i32
  br label %for.end44

for.cond25.preheader.loopexit:                    ; preds = %for.end.us, %for.inc.us
  %7 = trunc nuw nsw i64 %indvars.iv67 to i32
  br label %for.cond25.preheader

for.cond25.preheader:                             ; preds = %for.cond25.preheader.loopexit, %for.cond13.preheader.lr.ph.split
  %.us-phi = phi i32 [ 0, %for.cond13.preheader.lr.ph.split ], [ %7, %for.cond25.preheader.loopexit ]
  %cmp2647 = icmp sgt i32 %conv12, 0
  br i1 %cmp2647, label %for.body27.preheader, label %for.end35

for.body27.preheader:                             ; preds = %for.cond25.preheader
  %8 = zext nneg i32 %.us-phi to i64
  %scevgep = getelementptr i8, ptr %t, i64 %8
  %9 = and i64 %call11, 2147483647
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %scevgep, ptr nonnull align 16 %s3, i64 %9, i1 false), !tbaa !5
  %10 = trunc i64 %call11 to i32
  %11 = add i32 %.us-phi, %10
  br label %for.end35

for.end35:                                        ; preds = %for.body27.preheader, %for.cond25.preheader
  %k.2.lcssa = phi i32 [ %.us-phi, %for.cond25.preheader ], [ %11, %for.body27.preheader ]
  %add36 = add nsw i32 %.us-phi, %conv9
  br label %for.end44

for.end44:                                        ; preds = %for.cond13.preheader.preheader, %entry, %for.end35
  %k.1 = phi i32 [ %k.2.lcssa, %for.end35 ], [ 0, %entry ], [ %6, %for.cond13.preheader.preheader ]
  %i.1 = phi i32 [ %add36, %for.end35 ], [ 0, %entry ], [ %6, %for.cond13.preheader.preheader ]
  %cmp4650 = icmp slt i32 %i.1, %conv
  br i1 %cmp4650, label %for.body47.preheader, label %for.end55

for.body47.preheader:                             ; preds = %for.end44
  %12 = sext i32 %k.1 to i64
  %scevgep83 = getelementptr i8, ptr %t, i64 %12
  %13 = sext i32 %i.1 to i64
  %scevgep84 = getelementptr i8, ptr %s1, i64 %13
  %14 = xor i32 %i.1, -1
  %15 = add i32 %14, %conv
  %16 = zext i32 %15 to i64
  %17 = add nuw nsw i64 %16, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep83, ptr noundef nonnull align 1 dereferenceable(1) %scevgep84, i64 %17, i1 false), !tbaa !5
  %sext = shl i64 %call6, 32
  %wide.trip.count92 = ashr exact i64 %sext, 32
  %18 = sub nsw i64 %wide.trip.count92, %13
  %min.iters.check = icmp ult i64 %18, 2
  br i1 %min.iters.check, label %for.body47.preheader113, label %vector.ph

vector.ph:                                        ; preds = %for.body47.preheader
  %n.vec = and i64 %18, -2
  %19 = add nsw i64 %n.vec, %13
  %20 = insertelement <2 x i64> <i64 poison, i64 0>, i64 %12, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <2 x i64> [ %20, %vector.ph ], [ %21, %vector.body ]
  %21 = add <2 x i64> %vec.phi, splat (i64 1)
  %index.next = add nuw i64 %index, 2
  %22 = icmp eq i64 %index.next, %n.vec
  br i1 %22, label %middle.block, label %vector.body, !llvm.loop !12

middle.block:                                     ; preds = %vector.body
  %23 = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %21)
  %cmp.n = icmp eq i64 %18, %n.vec
  br i1 %cmp.n, label %for.end55.loopexit, label %for.body47.preheader113

for.body47.preheader113:                          ; preds = %for.body47.preheader, %middle.block
  %indvars.iv87.ph = phi i64 [ %12, %for.body47.preheader ], [ %23, %middle.block ]
  %indvars.iv85.ph = phi i64 [ %13, %for.body47.preheader ], [ %19, %middle.block ]
  br label %for.body47

for.body47:                                       ; preds = %for.body47.preheader113, %for.body47
  %indvars.iv87 = phi i64 [ %indvars.iv.next88, %for.body47 ], [ %indvars.iv87.ph, %for.body47.preheader113 ]
  %indvars.iv85 = phi i64 [ %indvars.iv.next86, %for.body47 ], [ %indvars.iv85.ph, %for.body47.preheader113 ]
  %indvars.iv.next88 = add nsw i64 %indvars.iv87, 1
  %indvars.iv.next86 = add nsw i64 %indvars.iv85, 1
  %exitcond93.not = icmp eq i64 %indvars.iv.next86, %wide.trip.count92
  br i1 %exitcond93.not, label %for.end55.loopexit, label %for.body47, !llvm.loop !15

for.end55.loopexit:                               ; preds = %for.body47, %middle.block
  %indvars.iv.next88.lcssa = phi i64 [ %23, %middle.block ], [ %indvars.iv.next88, %for.body47 ]
  %24 = trunc nsw i64 %indvars.iv.next88.lcssa to i32
  br label %for.end55

for.end55:                                        ; preds = %if.else.us, %for.end55.loopexit, %for.end44
  %k.3.lcssa = phi i32 [ %k.1, %for.end44 ], [ %24, %for.end55.loopexit ], [ %conv, %if.else.us ]
  %idxprom56 = sext i32 %k.3.lcssa to i64
  %arrayidx57 = getelementptr inbounds [256 x i8], ptr %t, i64 0, i64 %idxprom56
  store i8 0, ptr %arrayidx57, align 1, !tbaa !5
  %call59 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull %t)
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %t) #8
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %s3) #8
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %s2) #8
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %s1) #8
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #7

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
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
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = distinct !{!8, !9, !10}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!"llvm.loop.unroll.disable"}
!11 = distinct !{!11, !9, !10}
!12 = distinct !{!12, !9, !10, !13, !14}
!13 = !{!"llvm.loop.isvectorized", i32 1}
!14 = !{!"llvm.loop.unroll.runtime.disable"}
!15 = distinct !{!15, !9, !10, !13}
