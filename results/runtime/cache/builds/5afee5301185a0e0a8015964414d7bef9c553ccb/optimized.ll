; ModuleID = '<stdin>'
source_filename = "/tmp/tmpviewnt9e.cpp"
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
  %s = alloca [501 x i8], align 16
  %a = alloca [501 x [5 x i8]], align 16
  %n = alloca i32, align 4
  %b = alloca [500 x i32], align 16
  %c = alloca [500 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 501, ptr noundef nonnull align 16 %s) #6
  call void @llvm.lifetime.start.p0(i64 noundef 2505, ptr noundef nonnull align 16 %a) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull writeonly align 16 dereferenceable(2505) %a, i8 noundef 0, i64 noundef 2505, i1 noundef false) #8
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #6
  call void @llvm.lifetime.start.p0(i64 noundef 2000, ptr noundef nonnull align 16 %b) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull writeonly align 16 dereferenceable(2000) %b, i8 noundef 0, i64 noundef 2000, i1 noundef false) #8
  call void @llvm.lifetime.start.p0(i64 noundef 2000, ptr noundef nonnull align 16 %c) #6
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %n)
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %s)
  %call3 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %s) #9
  %conv = trunc i64 %call3 to i32
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %sub = add i32 %conv, 1
  %add = sub i32 %sub, %0
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 noundef 0)
  %smax22 = call i32 @llvm.smax.i32(i32 %add, i32 noundef 0)
  %wide.trip.count23 = zext nneg i32 %smax22 to i64
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond

for.cond:                                         ; preds = %for.inc12, %entry
  %indvars.iv19 = phi i64 [ %indvars.iv.next20, %for.inc12 ], [ 0, %entry ]
  %exitcond24.not = icmp eq i64 %indvars.iv19, %wide.trip.count23
  br i1 %exitcond24.not, label %for.cond15.preheader, label %for.cond4

for.cond15.preheader:                             ; preds = %for.cond
  %wide.trip.count30 = zext i32 %add to i64
  br label %for.cond15

for.cond4:                                        ; preds = %for.cond, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.cond ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.inc12, label %for.inc

for.inc:                                          ; preds = %for.cond4
  %1 = add nuw nsw i64 %indvars.iv, %indvars.iv19
  %arrayidx = getelementptr inbounds nuw [501 x i8], ptr %s, i64 0, i64 %1
  %2 = load i8, ptr %arrayidx, align 1, !tbaa !9
  %arrayidx11 = getelementptr inbounds nuw [501 x [5 x i8]], ptr %a, i64 0, i64 %indvars.iv19, i64 %indvars.iv
  store i8 %2, ptr %arrayidx11, align 1, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond4, !llvm.loop !10

for.inc12:                                        ; preds = %for.cond4
  %indvars.iv.next20 = add nuw nsw i64 %indvars.iv19, 1
  br label %for.cond, !llvm.loop !13

for.cond15.loopexit:                              ; preds = %for.cond21
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1
  %indvars.iv.next26 = add nuw nsw i64 %indvars.iv25, 1
  br label %for.cond15, !llvm.loop !14

for.cond15:                                       ; preds = %for.cond15.loopexit, %for.cond15.preheader
  %indvars.iv32 = phi i64 [ %indvars.iv.next33, %for.cond15.loopexit ], [ 0, %for.cond15.preheader ]
  %indvars.iv25 = phi i64 [ %indvars.iv.next26, %for.cond15.loopexit ], [ 1, %for.cond15.preheader ]
  %exitcond36.not = icmp eq i64 %indvars.iv32, %wide.trip.count23
  br i1 %exitcond36.not, label %for.cond45, label %for.body19

for.body19:                                       ; preds = %for.cond15
  %arrayidx27 = getelementptr inbounds nuw [501 x [5 x i8]], ptr %a, i64 0, i64 %indvars.iv32
  %arrayidx35 = getelementptr inbounds nuw [500 x i32], ptr %b, i64 0, i64 %indvars.iv32
  br label %for.cond21

for.cond21:                                       ; preds = %for.inc39, %for.body19
  %indvars.iv27 = phi i64 [ %indvars.iv.next28, %for.inc39 ], [ %indvars.iv25, %for.body19 ]
  %exitcond31.not = icmp eq i64 %indvars.iv27, %wide.trip.count30
  br i1 %exitcond31.not, label %for.cond15.loopexit, label %for.body25

for.body25:                                       ; preds = %for.cond21
  %arrayidx30 = getelementptr inbounds nuw [501 x [5 x i8]], ptr %a, i64 0, i64 %indvars.iv27
  %call32 = call i32 @strcmp(ptr noundef nonnull readonly captures(none) dereferenceable(1) %arrayidx27, ptr noundef nonnull readonly captures(none) dereferenceable(1) %arrayidx30) #9
  %cmp33 = icmp eq i32 %call32, 0
  br i1 %cmp33, label %if.then, label %for.inc39

if.then:                                          ; preds = %for.body25
  %3 = load i32, ptr %arrayidx35, align 4, !tbaa !5
  %add36 = add nsw i32 %3, 1
  store i32 %add36, ptr %arrayidx35, align 4, !tbaa !5
  br label %for.inc39

for.inc39:                                        ; preds = %if.then, %for.body25
  %indvars.iv.next28 = add nuw nsw i64 %indvars.iv27, 1
  br label %for.cond21, !llvm.loop !15

for.cond45:                                       ; preds = %for.cond15, %for.inc66
  %z.0 = phi i32 [ %z.1, %for.inc66 ], [ 0, %for.cond15 ]
  %4 = phi i32 [ %dec, %for.inc66 ], [ 500, %for.cond15 ]
  %cmp46.not = icmp eq i32 %4, 0
  br i1 %cmp46.not, label %for.end67, label %land.end

land.end:                                         ; preds = %for.cond45
  %cmp47 = icmp eq i32 %z.0, 0
  br i1 %cmp47, label %for.cond49, label %if.else71.loopexit

for.cond49:                                       ; preds = %land.end, %for.inc63
  %indvars.iv37 = phi i64 [ %indvars.iv.next38, %for.inc63 ], [ 0, %land.end ]
  %z.1 = phi i32 [ %z.2, %for.inc63 ], [ 0, %land.end ]
  %exitcond41.not = icmp eq i64 %indvars.iv37, %wide.trip.count23
  br i1 %exitcond41.not, label %for.inc66, label %for.body53

for.body53:                                       ; preds = %for.cond49
  %arrayidx55 = getelementptr inbounds nuw [500 x i32], ptr %b, i64 0, i64 %indvars.iv37
  %5 = load i32, ptr %arrayidx55, align 4, !tbaa !5
  %cmp56 = icmp eq i32 %5, %4
  br i1 %cmp56, label %if.then57, label %for.inc63

if.then57:                                        ; preds = %for.body53
  %idxprom58 = sext i32 %z.1 to i64
  %arrayidx59 = getelementptr inbounds [500 x i32], ptr %c, i64 0, i64 %idxprom58
  %6 = trunc nuw nsw i64 %indvars.iv37 to i32
  store i32 %6, ptr %arrayidx59, align 4, !tbaa !5
  %add60 = add nsw i32 %z.1, 1
  br label %for.inc63

for.inc63:                                        ; preds = %if.then57, %for.body53
  %z.2 = phi i32 [ %add60, %if.then57 ], [ %z.1, %for.body53 ]
  %indvars.iv.next38 = add nuw nsw i64 %indvars.iv37, 1
  br label %for.cond49, !llvm.loop !16

for.inc66:                                        ; preds = %for.cond49
  %dec = add nsw i32 %4, -1
  br label %for.cond45, !llvm.loop !17

for.end67:                                        ; preds = %for.cond45
  %cmp68 = icmp eq i32 %z.0, 0
  br i1 %cmp68, label %if.then69, label %if.else71

if.then69:                                        ; preds = %for.end67
  %call70 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2) #10
  br label %if.end86

if.else71.loopexit:                               ; preds = %land.end
  %7 = add nsw i32 %4, 2
  br label %if.else71

if.else71:                                        ; preds = %if.else71.loopexit, %for.end67
  %add72 = phi i32 [ %7, %if.else71.loopexit ], [ 2, %for.end67 ]
  %call73 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %add72) #10
  %smax45 = call i32 @llvm.smax.i32(i32 %z.0, i32 noundef 0)
  %wide.trip.count46 = zext nneg i32 %smax45 to i64
  br label %for.cond74

for.cond74:                                       ; preds = %for.inc83, %if.else71
  %indvars.iv42 = phi i64 [ %indvars.iv.next43, %for.inc83 ], [ 0, %if.else71 ]
  %exitcond47.not = icmp eq i64 %indvars.iv42, %wide.trip.count46
  br i1 %exitcond47.not, label %if.end86, label %for.inc83

for.inc83:                                        ; preds = %for.cond74
  %arrayidx78 = getelementptr inbounds nuw [500 x i32], ptr %c, i64 0, i64 %indvars.iv42
  %8 = load i32, ptr %arrayidx78, align 4, !tbaa !5
  %idxprom79 = sext i32 %8 to i64
  %arrayidx80 = getelementptr inbounds [501 x [5 x i8]], ptr %a, i64 0, i64 %idxprom79
  %puts = call i32 @puts(ptr noundef nonnull readonly captures(none) dereferenceable(1) %arrayidx80) #10
  %indvars.iv.next43 = add nuw nsw i64 %indvars.iv42, 1
  br label %for.cond74, !llvm.loop !18

if.end86:                                         ; preds = %for.cond74, %if.then69
  call void @llvm.lifetime.end.p0(i64 noundef 2000, ptr noundef nonnull %c) #10
  call void @llvm.lifetime.end.p0(i64 noundef 2000, ptr noundef nonnull %b) #10
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #10
  call void @llvm.lifetime.end.p0(i64 noundef 2505, ptr noundef nonnull %a) #10
  call void @llvm.lifetime.end.p0(i64 noundef 501, ptr noundef nonnull %s) #10
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

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nofree }
attributes #9 = { nounwind willreturn memory(read) }
attributes #10 = { nounwind }

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
!15 = distinct !{!15, !11, !12}
!16 = distinct !{!16, !11, !12}
!17 = distinct !{!17, !11, !12}
!18 = distinct !{!18, !11, !12}
