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
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %1 = load i32, ptr %n, align 4, !tbaa !10
  %2 = sext i32 %1 to i64
  %cmp = icmp slt i64 %indvars.iv, %2
  br i1 %cmp, label %for.body, label %for.cond5.preheader

for.cond5.preheader:                              ; preds = %for.cond
  %smax = call i32 @llvm.smax.i32(i32 %1, i32 0)
  %wide.trip.count33 = zext nneg i32 %smax to i64
  %wide.trip.count = zext i32 %1 to i64
  br label %for.cond5

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [300 x i32], ptr %s, i64 0, i64 %indvars.iv
  %call2 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx)
  %arrayidx4 = getelementptr inbounds nuw [300 x i32], ptr %c, i64 0, i64 %indvars.iv
  store i32 0, ptr %arrayidx4, align 4, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !12

for.cond5.loopexit:                               ; preds = %for.cond8
  %indvars.iv.next30 = add nuw nsw i64 %indvars.iv29, 1
  %indvars.iv.next24 = add nuw nsw i64 %indvars.iv23, 1
  br label %for.cond5, !llvm.loop !15

for.cond5:                                        ; preds = %for.cond5.loopexit, %for.cond5.preheader
  %indvars.iv29 = phi i64 [ %indvars.iv.next30, %for.cond5.loopexit ], [ 0, %for.cond5.preheader ]
  %indvars.iv23 = phi i64 [ %indvars.iv.next24, %for.cond5.loopexit ], [ 1, %for.cond5.preheader ]
  %exitcond34.not = icmp eq i64 %indvars.iv29, %wide.trip.count33
  br i1 %exitcond34.not, label %for.cond25, label %for.body7

for.body7:                                        ; preds = %for.cond5
  %arrayidx12 = getelementptr inbounds nuw [300 x i32], ptr %s, i64 0, i64 %indvars.iv29
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc19, %for.body7
  %indvars.iv25 = phi i64 [ %indvars.iv.next26, %for.inc19 ], [ %indvars.iv23, %for.body7 ]
  %exitcond.not = icmp eq i64 %indvars.iv25, %wide.trip.count
  br i1 %exitcond.not, label %for.cond5.loopexit, label %for.body10

for.body10:                                       ; preds = %for.cond8
  %3 = load i32, ptr %arrayidx12, align 4, !tbaa !10
  %arrayidx14 = getelementptr inbounds nuw [300 x i32], ptr %s, i64 0, i64 %indvars.iv25
  %4 = load i32, ptr %arrayidx14, align 4, !tbaa !10
  %cmp15 = icmp eq i32 %3, %4
  br i1 %cmp15, label %if.then, label %for.inc19

if.then:                                          ; preds = %for.body10
  %arrayidx17 = getelementptr inbounds nuw [300 x i32], ptr %c, i64 0, i64 %indvars.iv25
  %5 = load i32, ptr %arrayidx17, align 4, !tbaa !10
  %add18 = add nsw i32 %5, 1
  store i32 %add18, ptr %arrayidx17, align 4, !tbaa !10
  br label %for.inc19

for.inc19:                                        ; preds = %for.body10, %if.then
  %indvars.iv.next26 = add nuw nsw i64 %indvars.iv25, 1
  br label %for.cond8, !llvm.loop !16

for.cond25:                                       ; preds = %for.cond5, %for.body27
  %indvars.iv35 = phi i64 [ %indvars.iv.next36, %for.body27 ], [ 0, %for.cond5 ]
  %q.0 = phi i32 [ %spec.select, %for.body27 ], [ undef, %for.cond5 ]
  %exitcond39.not = icmp eq i64 %indvars.iv35, %wide.trip.count33
  br i1 %exitcond39.not, label %for.cond36.preheader, label %for.body27

for.cond36.preheader:                             ; preds = %for.cond25
  %smax44 = call i32 @llvm.smax.i32(i32 %q.0, i32 0)
  %wide.trip.count45 = zext nneg i32 %smax44 to i64
  br label %for.cond36

for.body27:                                       ; preds = %for.cond25
  %arrayidx29 = getelementptr inbounds nuw [300 x i32], ptr %c, i64 0, i64 %indvars.iv35
  %6 = load i32, ptr %arrayidx29, align 4, !tbaa !10
  %cmp30 = icmp eq i32 %6, 0
  %7 = trunc nuw nsw i64 %indvars.iv35 to i32
  %spec.select = select i1 %cmp30, i32 %7, i32 %q.0
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv35, 1
  br label %for.cond25, !llvm.loop !17

for.cond36:                                       ; preds = %for.cond36.preheader, %for.inc48
  %indvars.iv40 = phi i64 [ 0, %for.cond36.preheader ], [ %indvars.iv.next41, %for.inc48 ]
  %exitcond46.not = icmp eq i64 %indvars.iv40, %wide.trip.count45
  br i1 %exitcond46.not, label %for.end50, label %for.body38

for.body38:                                       ; preds = %for.cond36
  %arrayidx40 = getelementptr inbounds nuw [300 x i32], ptr %c, i64 0, i64 %indvars.iv40
  %8 = load i32, ptr %arrayidx40, align 4, !tbaa !10
  %cmp41 = icmp eq i32 %8, 0
  br i1 %cmp41, label %if.then42, label %for.inc48

if.then42:                                        ; preds = %for.body38
  %arrayidx44 = getelementptr inbounds nuw [300 x i32], ptr %s, i64 0, i64 %indvars.iv40
  %9 = load i32, ptr %arrayidx44, align 4, !tbaa !10
  %call45 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %9)
  %10 = load ptr, ptr @stdin, align 8, !tbaa !5
  %call.i20 = call i32 @getc(ptr noundef %10)
  br label %for.inc48

for.inc48:                                        ; preds = %for.body38, %if.then42
  %indvars.iv.next41 = add nuw nsw i64 %indvars.iv40, 1
  br label %for.cond36, !llvm.loop !18

for.end50:                                        ; preds = %for.cond36
  %idxprom51 = sext i32 %q.0 to i64
  %arrayidx52 = getelementptr inbounds [300 x i32], ptr %s, i64 0, i64 %idxprom51
  %11 = load i32, ptr %arrayidx52, align 4, !tbaa !10
  %call53 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %11)
  %12 = load ptr, ptr @stdin, align 8, !tbaa !5
  %call.i21 = call i32 @getc(ptr noundef %12)
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
declare i32 @llvm.smax.i32(i32, i32) #5

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
!16 = distinct !{!16, !13, !14}
!17 = distinct !{!17, !13, !14}
!18 = distinct !{!18, !13, !14}
