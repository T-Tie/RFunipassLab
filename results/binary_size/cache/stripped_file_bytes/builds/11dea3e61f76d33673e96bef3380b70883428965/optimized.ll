; ModuleID = '<stdin>'
source_filename = "/tmp/tmp9jyiknei.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"NO\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@str = private unnamed_addr constant [3 x i8] c"NO\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %s = alloca [501 x i8], align 16
  %str = alloca [500 x [5 x i8]], align 16
  %a = alloca [500 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #6
  call void @llvm.lifetime.start.p0(i64 noundef 501, ptr noundef nonnull align 16 %s) #6
  call void @llvm.lifetime.start.p0(i64 noundef 2500, ptr noundef nonnull align 16 %str) #6
  call void @llvm.lifetime.start.p0(i64 noundef 2000, ptr noundef nonnull align 16 %a) #6
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %n)
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %s)
  %call3 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %s) #8
  %conv = trunc i64 %call3 to i32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2500) %str, i8 noundef 0, i64 noundef 2500, i1 noundef false)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %sub = sub nsw i32 %conv, %0
  %smax = call i32 @llvm.smax.i32(i32 %sub, i32 noundef -1)
  %1 = add i32 %smax, 1
  %wide.trip.count = zext i32 %1 to i64
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %exitcond = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond, label %for.cond5.preheader, label %for.body

for.cond5.preheader:                              ; preds = %for.cond
  %smax15 = call i32 @llvm.smax.i32(i32 %0, i32 noundef 0)
  %wide.trip.count16 = zext nneg i32 %smax15 to i64
  br label %for.cond5

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [500 x i32], ptr %a, i64 0, i64 %indvars.iv
  store i32 1, ptr %arrayidx, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.cond5:                                        ; preds = %for.cond5.preheader, %for.end21
  %indvars.iv18 = phi i64 [ 0, %for.cond5.preheader ], [ %indvars.iv.next19, %for.end21 ]
  %exitcond22 = icmp eq i64 %indvars.iv18, %wide.trip.count
  br i1 %exitcond22, label %for.cond25.preheader, label %for.cond9

for.cond25.preheader:                             ; preds = %for.cond5
  %smax36 = call i32 @llvm.smax.i32(i32 %sub, i32 noundef 0)
  %wide.trip.count37 = zext nneg i32 %smax36 to i64
  %wide.trip.count26 = zext nneg i32 %smax15 to i64
  br label %for.cond25

for.cond9:                                        ; preds = %for.cond5, %for.body11
  %indvars.iv9 = phi i64 [ %indvars.iv.next10, %for.body11 ], [ 0, %for.cond5 ]
  %exitcond17.not = icmp eq i64 %indvars.iv9, %wide.trip.count16
  br i1 %exitcond17.not, label %for.end21, label %for.body11

for.body11:                                       ; preds = %for.cond9
  %2 = add nuw nsw i64 %indvars.iv9, %indvars.iv18
  %arrayidx13 = getelementptr inbounds nuw [501 x i8], ptr %s, i64 0, i64 %2
  %3 = load i8, ptr %arrayidx13, align 1, !tbaa !12, !invariant.load !13
  %arrayidx17 = getelementptr inbounds nuw [500 x [5 x i8]], ptr %str, i64 0, i64 %indvars.iv18, i64 %indvars.iv9
  store i8 %3, ptr %arrayidx17, align 1, !tbaa !12
  %indvars.iv.next10 = add nuw nsw i64 %indvars.iv9, 1
  br label %for.cond9, !llvm.loop !14

for.end21:                                        ; preds = %for.cond9
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1
  br label %for.cond5, !llvm.loop !15

for.cond25.loopexit:                              ; preds = %for.cond30
  %indvars.iv.next34 = add nuw nsw i64 %indvars.iv33, 1
  %indvars.iv.next29 = add nuw nsw i64 %indvars.iv28, 1
  br label %for.cond25, !llvm.loop !16

for.cond25:                                       ; preds = %for.cond25.preheader, %for.cond25.loopexit
  %indvars.iv33 = phi i64 [ 0, %for.cond25.preheader ], [ %indvars.iv.next34, %for.cond25.loopexit ]
  %indvars.iv28 = phi i64 [ 1, %for.cond25.preheader ], [ %indvars.iv.next29, %for.cond25.loopexit ]
  %exitcond38.not = icmp eq i64 %indvars.iv33, %wide.trip.count37
  br i1 %exitcond38.not, label %for.end71, label %for.body28

for.body28:                                       ; preds = %for.cond25
  %arrayidx35 = getelementptr inbounds nuw [500 x [5 x i8]], ptr %str, i64 0, i64 %indvars.iv33
  %arrayidx54 = getelementptr inbounds nuw [500 x i32], ptr %a, i64 0, i64 %indvars.iv33
  br label %for.cond30

for.cond30:                                       ; preds = %if.end, %for.body28
  %indvars.iv30 = phi i64 [ %indvars.iv.next31, %if.end ], [ %indvars.iv28, %for.body28 ]
  %4 = trunc nuw i64 %indvars.iv30 to i32
  %cmp32.not = icmp slt i32 %sub, %4
  br i1 %cmp32.not, label %for.cond25.loopexit, label %for.body33

for.body33:                                       ; preds = %for.cond30
  %5 = load i8, ptr %arrayidx35, align 1, !tbaa !12
  %cmp38.not = icmp eq i8 %5, 48
  br i1 %cmp38.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body33
  %arrayidx40 = getelementptr inbounds nuw [500 x [5 x i8]], ptr %str, i64 0, i64 %indvars.iv30
  %6 = load i8, ptr %arrayidx40, align 1, !tbaa !12, !invariant.load !13
  %cmp43.not = icmp eq i8 %6, 48
  br i1 %cmp43.not, label %if.end, label %land.lhs.true44

land.lhs.true44:                                  ; preds = %land.lhs.true
  %call51 = call i32 @strcmp(ptr noundef nonnull readonly captures(none) dereferenceable(1) %arrayidx35, ptr noundef nonnull readonly captures(none) dereferenceable(1) %arrayidx40) #8
  %cmp52 = icmp eq i32 %call51, 0
  br i1 %cmp52, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true44
  %7 = load i32, ptr %arrayidx54, align 4, !tbaa !5, !invariant.load !13
  %inc55 = add nsw i32 %7, 1
  store i32 %inc55, ptr %arrayidx54, align 4, !tbaa !5
  br label %for.cond56

for.cond56:                                       ; preds = %for.body58, %if.then
  %indvars.iv23 = phi i64 [ %indvars.iv.next24, %for.body58 ], [ 0, %if.then ]
  %exitcond27.not = icmp eq i64 %indvars.iv23, %wide.trip.count26
  br i1 %exitcond27.not, label %if.end, label %for.body58

for.body58:                                       ; preds = %for.cond56
  %arrayidx62 = getelementptr inbounds nuw [500 x [5 x i8]], ptr %str, i64 0, i64 %indvars.iv30, i64 %indvars.iv23
  store i8 48, ptr %arrayidx62, align 1, !tbaa !12
  %indvars.iv.next24 = add nuw nsw i64 %indvars.iv23, 1
  br label %for.cond56, !llvm.loop !17

if.end:                                           ; preds = %for.cond56, %land.lhs.true44, %land.lhs.true, %for.body33
  %indvars.iv.next31 = add nuw nsw i64 %indvars.iv30, 1
  br label %for.cond30, !llvm.loop !18

for.end71:                                        ; preds = %for.cond25
  %8 = load i32, ptr %a, align 16, !tbaa !5
  %9 = add nuw i32 %smax36, 1
  %wide.trip.count42 = zext i32 %9 to i64
  br label %for.cond73

for.cond73:                                       ; preds = %for.body76, %for.end71
  %indvars.iv39 = phi i64 [ %indvars.iv.next40, %for.body76 ], [ 1, %for.end71 ]
  %m.0 = phi i32 [ %spec.select, %for.body76 ], [ %8, %for.end71 ]
  %exitcond43 = icmp eq i64 %indvars.iv39, %wide.trip.count42
  br i1 %exitcond43, label %for.end86, label %for.body76

for.body76:                                       ; preds = %for.cond73
  %arrayidx78 = getelementptr inbounds nuw [500 x i32], ptr %a, i64 0, i64 %indvars.iv39
  %10 = load i32, ptr %arrayidx78, align 4, !tbaa !5, !invariant.load !13
  %spec.select = call i32 @llvm.smax.i32(i32 %m.0, i32 %10)
  %indvars.iv.next40 = add nuw nsw i64 %indvars.iv39, 1
  br label %for.cond73, !llvm.loop !19

for.end86:                                        ; preds = %for.cond73
  %cmp87 = icmp slt i32 %m.0, 2
  br i1 %cmp87, label %if.then88, label %if.else

if.then88:                                        ; preds = %for.end86
  %puts7 = call i32 @puts(ptr noundef nonnull dereferenceable(1) @str) #9
  br label %cleanup

if.else:                                          ; preds = %for.end86
  %call90 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %m.0) #9
  br label %for.cond91

for.cond91:                                       ; preds = %if.end103, %if.else
  %indvars.iv44 = phi i64 [ %indvars.iv.next45, %if.end103 ], [ 0, %if.else ]
  %11 = load i32, ptr %n, align 4, !tbaa !5
  %sub92 = sub nsw i32 %conv, %11
  %12 = sext i32 %sub92 to i64
  %cmp93.not = icmp sgt i64 %indvars.iv44, %12
  br i1 %cmp93.not, label %cleanup, label %for.body94

for.body94:                                       ; preds = %for.cond91
  %arrayidx96 = getelementptr inbounds nuw [500 x i32], ptr %a, i64 0, i64 %indvars.iv44
  %13 = load i32, ptr %arrayidx96, align 4, !tbaa !5, !invariant.load !13
  %cmp97 = icmp eq i32 %13, %m.0
  br i1 %cmp97, label %if.then98, label %if.end103

if.then98:                                        ; preds = %for.body94
  %arrayidx100 = getelementptr inbounds nuw [500 x [5 x i8]], ptr %str, i64 0, i64 %indvars.iv44
  %puts = call i32 @puts(ptr noundef nonnull readonly captures(none) dereferenceable(1) %arrayidx100) #9
  br label %if.end103

if.end103:                                        ; preds = %if.then98, %for.body94
  %indvars.iv.next45 = add nuw nsw i64 %indvars.iv44, 1
  br label %for.cond91, !llvm.loop !20

cleanup:                                          ; preds = %for.cond91, %if.then88
  call void @llvm.lifetime.end.p0(i64 noundef 2000, ptr noundef nonnull %a) #9
  call void @llvm.lifetime.end.p0(i64 noundef 2500, ptr noundef nonnull %str) #9
  call void @llvm.lifetime.end.p0(i64 noundef 501, ptr noundef nonnull %s) #9
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #9
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = !{!7, !7, i64 0}
!13 = !{}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11}
!18 = distinct !{!18, !10, !11}
!19 = distinct !{!19, !10, !11}
!20 = distinct !{!20, !10, !11}
