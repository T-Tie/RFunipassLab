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
  call void @llvm.lifetime.start.p0(i64 noundef 256, ptr noundef nonnull %s1) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull writeonly align 16 dereferenceable(256) %s1, i8 noundef 0, i64 noundef 256, i1 noundef false) #7
  call void @llvm.lifetime.start.p0(i64 noundef 256, ptr noundef nonnull align 16 %s2) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull writeonly align 16 dereferenceable(256) %s2, i8 noundef 0, i64 noundef 256, i1 noundef false) #7
  call void @llvm.lifetime.start.p0(i64 noundef 256, ptr noundef nonnull %s3) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull writeonly align 16 dereferenceable(256) %s3, i8 noundef 0, i64 noundef 256, i1 noundef false) #7
  call void @llvm.lifetime.start.p0(i64 noundef 256, ptr noundef nonnull %t) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull writeonly align 16 dereferenceable(256) %t, i8 noundef 0, i64 noundef 256, i1 noundef false) #7
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
  %smax37 = call i32 @llvm.smax.i32(i32 %conv, i32 0)
  %wide.trip.count38 = zext nneg i32 %smax37 to i64
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond

for.cond:                                         ; preds = %if.else, %entry
  %indvars.iv32 = phi i64 [ %indvars.iv.next33, %if.else ], [ 0, %entry ]
  %indvars.iv27 = phi i32 [ %indvars.iv.next28, %if.else ], [ %conv, %entry ]
  %exitcond39.not = icmp eq i64 %indvars.iv32, %wide.trip.count38
  br i1 %exitcond39.not, label %for.end44, label %for.cond13.preheader

for.cond13.preheader:                             ; preds = %for.cond
  %wide.trip.count30 = zext i32 %indvars.iv27 to i64
  br label %for.cond13

for.cond13:                                       ; preds = %for.cond13.preheader, %if.end
  %indvars.iv = phi i64 [ 0, %for.cond13.preheader ], [ %indvars.iv.next, %if.end ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body15

for.body15:                                       ; preds = %for.cond13
  %exitcond31.not = icmp eq i64 %indvars.iv, %wide.trip.count30
  br i1 %exitcond31.not, label %for.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body15
  %0 = add nuw nsw i64 %indvars.iv, %indvars.iv32
  %arrayidx = getelementptr inbounds nuw [256 x i8], ptr %s1, i64 0, i64 %0
  %1 = load i8, ptr %arrayidx, align 1, !tbaa !5, !invariant.load !8
  %arrayidx20 = getelementptr inbounds nuw [256 x i8], ptr %s2, i64 0, i64 %indvars.iv
  %2 = load i8, ptr %arrayidx20, align 1, !tbaa !5, !invariant.load !8
  %cmp22.not = icmp eq i8 %1, %2
  br i1 %cmp22.not, label %if.end, label %for.end.split.loop.exit64

if.end:                                           ; preds = %lor.lhs.false
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond13, !llvm.loop !9

for.end.split.loop.exit64:                        ; preds = %lor.lhs.false
  %3 = trunc nuw nsw i64 %indvars.iv to i32
  br label %for.end

for.end:                                          ; preds = %for.body15, %for.cond13, %for.end.split.loop.exit64
  %j.0.lcssa = phi i32 [ %3, %for.end.split.loop.exit64 ], [ %smax, %for.cond13 ], [ %indvars.iv27, %for.body15 ]
  %cmp23 = icmp eq i32 %j.0.lcssa, %conv9
  br i1 %cmp23, label %for.cond25.preheader, label %if.else

for.cond25.preheader:                             ; preds = %for.end
  %smax48 = call i32 @llvm.smax.i32(i32 %conv12, i32 0)
  %wide.trip.count49 = zext nneg i32 %smax48 to i64
  br label %for.cond25

for.cond25:                                       ; preds = %for.cond25.preheader, %for.body27
  %indvars.iv43 = phi i64 [ %indvars.iv32, %for.cond25.preheader ], [ %indvars.iv.next44, %for.body27 ]
  %indvars.iv40 = phi i64 [ 0, %for.cond25.preheader ], [ %indvars.iv.next41, %for.body27 ]
  %exitcond50.not = icmp eq i64 %indvars.iv40, %wide.trip.count49
  br i1 %exitcond50.not, label %for.end35, label %for.body27

for.body27:                                       ; preds = %for.cond25
  %arrayidx29 = getelementptr inbounds nuw [256 x i8], ptr %s3, i64 0, i64 %indvars.iv40
  %4 = load i8, ptr %arrayidx29, align 1, !tbaa !5, !invariant.load !8
  %arrayidx31 = getelementptr inbounds nuw [256 x i8], ptr %t, i64 0, i64 %indvars.iv43
  store i8 %4, ptr %arrayidx31, align 1, !tbaa !5
  %indvars.iv.next44 = add nuw nsw i64 %indvars.iv43, 1
  %indvars.iv.next41 = add nuw nsw i64 %indvars.iv40, 1
  br label %for.cond25, !llvm.loop !12

for.end35:                                        ; preds = %for.cond25
  %5 = trunc nuw nsw i64 %indvars.iv32 to i32
  %add36 = add nsw i32 %5, %conv9
  %.pre = and i64 %indvars.iv43, 4294967295
  br label %for.end44

if.else:                                          ; preds = %for.end
  %arrayidx38 = getelementptr inbounds nuw [256 x i8], ptr %s1, i64 0, i64 %indvars.iv32
  %6 = load i8, ptr %arrayidx38, align 1, !tbaa !5, !invariant.load !8
  %arrayidx40 = getelementptr inbounds nuw [256 x i8], ptr %t, i64 0, i64 %indvars.iv32
  store i8 %6, ptr %arrayidx40, align 1, !tbaa !5
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1
  %indvars.iv.next28 = add i32 %indvars.iv27, -1
  br label %for.cond, !llvm.loop !13

for.end44:                                        ; preds = %for.cond, %for.end35
  %.pre-phi = phi i64 [ %.pre, %for.end35 ], [ %wide.trip.count38, %for.cond ]
  %i.1 = phi i32 [ %add36, %for.end35 ], [ %smax37, %for.cond ]
  %7 = sext i32 %i.1 to i64
  %smax58 = call i32 @llvm.smax.i32(i32 %i.1, i32 %conv)
  %wide.trip.count59 = sext i32 %smax58 to i64
  br label %for.cond45

for.cond45:                                       ; preds = %for.body47, %for.end44
  %indvars.iv53 = phi i64 [ %indvars.iv.next54, %for.body47 ], [ %7, %for.end44 ]
  %indvars.iv51 = phi i64 [ %indvars.iv.next52, %for.body47 ], [ %.pre-phi, %for.end44 ]
  %exitcond60.not = icmp eq i64 %indvars.iv53, %wide.trip.count59
  br i1 %exitcond60.not, label %for.end55, label %for.body47

for.body47:                                       ; preds = %for.cond45
  %arrayidx49 = getelementptr inbounds [256 x i8], ptr %s1, i64 0, i64 %indvars.iv53
  %8 = load i8, ptr %arrayidx49, align 1, !tbaa !5, !invariant.load !8
  %arrayidx51 = getelementptr inbounds nuw [256 x i8], ptr %t, i64 0, i64 %indvars.iv51
  store i8 %8, ptr %arrayidx51, align 1, !tbaa !5
  %indvars.iv.next52 = add nuw nsw i64 %indvars.iv51, 1
  %indvars.iv.next54 = add nsw i64 %indvars.iv53, 1
  br label %for.cond45, !llvm.loop !14

for.end55:                                        ; preds = %for.cond45
  %sext = shl i64 %indvars.iv51, 32
  %idxprom56 = ashr exact i64 %sext, 32
  %arrayidx57 = getelementptr inbounds [256 x i8], ptr %t, i64 0, i64 %idxprom56
  store i8 0, ptr %arrayidx57, align 1, !tbaa !5
  %call59 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull %t)
  call void @llvm.lifetime.end.p0(i64 noundef 256, ptr noundef nonnull %t) #9
  call void @llvm.lifetime.end.p0(i64 noundef 256, ptr noundef nonnull %s3) #9
  call void @llvm.lifetime.end.p0(i64 noundef 256, ptr noundef nonnull %s2) #9
  call void @llvm.lifetime.end.p0(i64 noundef 256, ptr noundef nonnull %s1) #9
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) local_unnamed_addr #4

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nofree nounwind }
attributes #7 = { nofree }
attributes #8 = { nounwind willreturn memory(read) }
attributes #9 = { nounwind }

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
!8 = !{}
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !10, !11}
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
