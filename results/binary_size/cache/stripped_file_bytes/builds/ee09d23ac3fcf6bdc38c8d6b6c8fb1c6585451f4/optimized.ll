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
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %s1) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %s1, i8 0, i64 256, i1 false)
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %s2) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %s2, i8 0, i64 256, i1 false)
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %s3) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %s3, i8 0, i64 256, i1 false)
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %t) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %t, i8 0, i64 256, i1 false)
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %s1)
  %call2 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %s2)
  %call4 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %s3)
  %call6 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %s1) #8
  %conv = trunc i64 %call6 to i32
  %call8 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %s2) #8
  %conv9 = trunc i64 %call8 to i32
  %call11 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %s3) #8
  %conv12 = trunc i64 %call11 to i32
  %smax = call i32 @llvm.smax.i32(i32 %conv9, i32 0)
  %smax41 = call i32 @llvm.smax.i32(i32 %conv, i32 0)
  %wide.trip.count42 = zext nneg i32 %smax41 to i64
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond

for.cond:                                         ; preds = %if.else, %entry
  %indvars.iv36 = phi i64 [ %indvars.iv.next37, %if.else ], [ 0, %entry ]
  %indvars.iv31 = phi i32 [ %indvars.iv.next32, %if.else ], [ %conv, %entry ]
  %exitcond43.not = icmp eq i64 %indvars.iv36, %wide.trip.count42
  br i1 %exitcond43.not, label %for.end44, label %for.cond13.preheader

for.cond13.preheader:                             ; preds = %for.cond
  %wide.trip.count34 = zext i32 %indvars.iv31 to i64
  br label %for.cond13

for.cond13:                                       ; preds = %for.cond13.preheader, %for.inc
  %indvars.iv = phi i64 [ 0, %for.cond13.preheader ], [ %indvars.iv.next, %for.inc ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body15

for.body15:                                       ; preds = %for.cond13
  %exitcond35.not = icmp eq i64 %indvars.iv, %wide.trip.count34
  br i1 %exitcond35.not, label %for.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body15
  %0 = add nuw nsw i64 %indvars.iv, %indvars.iv36
  %arrayidx = getelementptr inbounds nuw [256 x i8], ptr %s1, i64 0, i64 %0
  %1 = load i8, ptr %arrayidx, align 1, !tbaa !5
  %arrayidx20 = getelementptr inbounds nuw [256 x i8], ptr %s2, i64 0, i64 %indvars.iv
  %2 = load i8, ptr %arrayidx20, align 1, !tbaa !5
  %cmp22.not = icmp eq i8 %1, %2
  br i1 %cmp22.not, label %for.inc, label %for.end.split.loop.exit66

for.inc:                                          ; preds = %lor.lhs.false
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond13, !llvm.loop !8

for.end.split.loop.exit66:                        ; preds = %lor.lhs.false
  %3 = trunc nuw nsw i64 %indvars.iv to i32
  br label %for.end

for.end:                                          ; preds = %for.cond13, %for.body15, %for.end.split.loop.exit66
  %j.0.lcssa = phi i32 [ %3, %for.end.split.loop.exit66 ], [ %indvars.iv31, %for.body15 ], [ %smax, %for.cond13 ]
  %cmp23 = icmp eq i32 %j.0.lcssa, %conv9
  br i1 %cmp23, label %for.cond25.preheader, label %if.else

for.cond25.preheader:                             ; preds = %for.end
  %smax52 = call i32 @llvm.smax.i32(i32 %conv12, i32 0)
  %wide.trip.count53 = zext nneg i32 %smax52 to i64
  br label %for.cond25

for.cond25:                                       ; preds = %for.cond25.preheader, %for.body27
  %indvars.iv47 = phi i64 [ %indvars.iv36, %for.cond25.preheader ], [ %indvars.iv.next48, %for.body27 ]
  %indvars.iv44 = phi i64 [ 0, %for.cond25.preheader ], [ %indvars.iv.next45, %for.body27 ]
  %exitcond54.not = icmp eq i64 %indvars.iv44, %wide.trip.count53
  br i1 %exitcond54.not, label %for.end35, label %for.body27

for.body27:                                       ; preds = %for.cond25
  %arrayidx29 = getelementptr inbounds nuw [256 x i8], ptr %s3, i64 0, i64 %indvars.iv44
  %4 = load i8, ptr %arrayidx29, align 1, !tbaa !5
  %arrayidx31 = getelementptr inbounds nuw [256 x i8], ptr %t, i64 0, i64 %indvars.iv47
  store i8 %4, ptr %arrayidx31, align 1, !tbaa !5
  %indvars.iv.next48 = add nuw nsw i64 %indvars.iv47, 1
  %indvars.iv.next45 = add nuw nsw i64 %indvars.iv44, 1
  br label %for.cond25, !llvm.loop !11

for.end35:                                        ; preds = %for.cond25
  %5 = trunc nuw nsw i64 %indvars.iv36 to i32
  %add36 = add nsw i32 %5, %conv9
  %.pre = and i64 %indvars.iv47, 4294967295
  br label %for.end44

if.else:                                          ; preds = %for.end
  %arrayidx38 = getelementptr inbounds nuw [256 x i8], ptr %s1, i64 0, i64 %indvars.iv36
  %6 = load i8, ptr %arrayidx38, align 1, !tbaa !5
  %arrayidx40 = getelementptr inbounds nuw [256 x i8], ptr %t, i64 0, i64 %indvars.iv36
  store i8 %6, ptr %arrayidx40, align 1, !tbaa !5
  %indvars.iv.next37 = add nuw nsw i64 %indvars.iv36, 1
  %indvars.iv.next32 = add i32 %indvars.iv31, -1
  br label %for.cond, !llvm.loop !12

for.end44:                                        ; preds = %for.cond, %for.end35
  %.pre-phi = phi i64 [ %.pre, %for.end35 ], [ %wide.trip.count42, %for.cond ]
  %i.1 = phi i32 [ %add36, %for.end35 ], [ %smax41, %for.cond ]
  %7 = sext i32 %i.1 to i64
  %smax62 = call i32 @llvm.smax.i32(i32 %i.1, i32 %conv)
  %wide.trip.count63 = sext i32 %smax62 to i64
  br label %for.cond45

for.cond45:                                       ; preds = %for.body47, %for.end44
  %indvars.iv57 = phi i64 [ %indvars.iv.next58, %for.body47 ], [ %7, %for.end44 ]
  %indvars.iv55 = phi i64 [ %indvars.iv.next56, %for.body47 ], [ %.pre-phi, %for.end44 ]
  %exitcond64.not = icmp eq i64 %indvars.iv57, %wide.trip.count63
  br i1 %exitcond64.not, label %for.end55, label %for.body47

for.body47:                                       ; preds = %for.cond45
  %arrayidx49 = getelementptr inbounds [256 x i8], ptr %s1, i64 0, i64 %indvars.iv57
  %8 = load i8, ptr %arrayidx49, align 1, !tbaa !5
  %arrayidx51 = getelementptr inbounds nuw [256 x i8], ptr %t, i64 0, i64 %indvars.iv55
  store i8 %8, ptr %arrayidx51, align 1, !tbaa !5
  %indvars.iv.next56 = add nuw nsw i64 %indvars.iv55, 1
  %indvars.iv.next58 = add nsw i64 %indvars.iv57, 1
  br label %for.cond45, !llvm.loop !13

for.end55:                                        ; preds = %for.cond45
  %sext = shl i64 %indvars.iv55, 32
  %idxprom56 = ashr exact i64 %sext, 32
  %arrayidx57 = getelementptr inbounds [256 x i8], ptr %t, i64 0, i64 %idxprom56
  store i8 0, ptr %arrayidx57, align 1, !tbaa !5
  %call59 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull %t)
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %t) #7
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %s3) #7
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %s2) #7
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %s1) #7
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

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = distinct !{!8, !9, !10}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!"llvm.loop.unroll.disable"}
!11 = distinct !{!11, !9, !10}
!12 = distinct !{!12, !9, !10}
!13 = distinct !{!13, !9, !10}
