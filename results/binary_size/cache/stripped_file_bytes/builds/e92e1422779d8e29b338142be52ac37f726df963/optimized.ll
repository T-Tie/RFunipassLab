; ModuleID = '<stdin>'
source_filename = "/tmp/tmpc8lfmidu.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [6 x i8] c"%d,%d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%d+%d\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"No\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %m = alloca i32, align 4
  %sz = alloca [8 x [8 x i32]], align 16
  %td = alloca [8 x [8 x i32]], align 16
  %zd = alloca [8 x i32], align 16
  %bj = alloca [8 x [8 x i32]], align 16
  %hd = alloca [8 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %m) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %n, ptr noundef nonnull align 4 %m)
  call void @llvm.lifetime.start.p0(i64 noundef 256, ptr noundef nonnull %sz) #5
  call void @llvm.lifetime.start.p0(i64 noundef 256, ptr noundef nonnull %td) #5
  call void @llvm.lifetime.start.p0(i64 noundef 32, ptr noundef nonnull %zd) #5
  call void @llvm.lifetime.start.p0(i64 noundef 256, ptr noundef nonnull %bj) #5
  call void @llvm.lifetime.start.p0(i64 noundef 32, ptr noundef nonnull %hd) #5
  br label %for.cond

for.cond:                                         ; preds = %for.inc23, %entry
  %indvars.iv17 = phi i64 [ %indvars.iv.next18, %for.inc23 ], [ 0, %entry ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv17, %1
  br i1 %cmp, label %for.cond1, label %for.cond26.preheader

for.cond26.preheader:                             ; preds = %for.cond
  %2 = load i32, ptr %m, align 4
  %smax = call i32 @llvm.smax.i32(i32 %2, i32 0)
  %smax27 = call i32 @llvm.smax.i32(i32 %0, i32 0)
  %wide.trip.count28 = zext nneg i32 %smax27 to i64
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond26

for.cond1:                                        ; preds = %for.cond, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.cond ]
  %3 = load i32, ptr %m, align 4, !tbaa !5
  %4 = sext i32 %3 to i64
  %cmp2 = icmp slt i64 %indvars.iv, %4
  br i1 %cmp2, label %for.inc, label %for.inc23

for.inc:                                          ; preds = %for.cond1
  %arrayidx5 = getelementptr inbounds nuw [8 x [8 x i32]], ptr %sz, i64 0, i64 %indvars.iv17, i64 %indvars.iv
  %call6 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %arrayidx5)
  %5 = load i32, ptr %arrayidx5, align 4, !tbaa !5, !invariant.load !9
  %arrayidx14 = getelementptr inbounds nuw [8 x [8 x i32]], ptr %td, i64 0, i64 %indvars.iv17, i64 %indvars.iv
  store i32 %5, ptr %arrayidx14, align 4, !tbaa !5
  %arrayidx22 = getelementptr inbounds nuw [8 x [8 x i32]], ptr %bj, i64 0, i64 %indvars.iv17, i64 %indvars.iv
  store i32 %5, ptr %arrayidx22, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond1, !llvm.loop !10

for.inc23:                                        ; preds = %for.cond1
  %indvars.iv.next18 = add nuw nsw i64 %indvars.iv17, 1
  br label %for.cond, !llvm.loop !13

for.cond26:                                       ; preds = %for.cond26.preheader, %for.inc53
  %indvars.iv23 = phi i64 [ 0, %for.cond26.preheader ], [ %indvars.iv.next24, %for.inc53 ]
  %exitcond29.not = icmp eq i64 %indvars.iv23, %wide.trip.count28
  br i1 %exitcond29.not, label %for.cond56.preheader, label %for.cond29

for.cond56.preheader:                             ; preds = %for.cond26
  %sub = add nsw i32 %2, -1
  %idxprom68 = sext i32 %sub to i64
  %wide.trip.count34 = zext nneg i32 %smax to i64
  br label %for.cond56

for.cond29:                                       ; preds = %for.cond26, %for.inc50
  %indvars.iv20 = phi i64 [ %indvars.iv.next21, %for.inc50 ], [ 0, %for.cond26 ]
  %exitcond.not = icmp eq i64 %indvars.iv20, %wide.trip.count
  br i1 %exitcond.not, label %for.inc53, label %for.body31

for.body31:                                       ; preds = %for.cond29
  %arrayidx35 = getelementptr inbounds nuw [8 x [8 x i32]], ptr %sz, i64 0, i64 %indvars.iv23, i64 %indvars.iv20
  %6 = load i32, ptr %arrayidx35, align 4, !tbaa !5, !invariant.load !9
  %indvars.iv.next21 = add nuw nsw i64 %indvars.iv20, 1
  %arrayidx39 = getelementptr inbounds nuw [8 x [8 x i32]], ptr %sz, i64 0, i64 %indvars.iv23, i64 %indvars.iv.next21
  %7 = load i32, ptr %arrayidx39, align 4, !tbaa !5, !invariant.load !9
  %cmp40 = icmp sgt i32 %6, %7
  br i1 %cmp40, label %if.then, label %for.inc50

if.then:                                          ; preds = %for.body31
  store i32 %6, ptr %arrayidx39, align 4, !tbaa !5
  br label %for.inc50

for.inc50:                                        ; preds = %for.body31, %if.then
  br label %for.cond29, !llvm.loop !14

for.inc53:                                        ; preds = %for.cond29
  %indvars.iv.next24 = add nuw nsw i64 %indvars.iv23, 1
  br label %for.cond26, !llvm.loop !15

for.cond56:                                       ; preds = %for.cond56.preheader, %for.inc78
  %indvars.iv36 = phi i64 [ 0, %for.cond56.preheader ], [ %indvars.iv.next37, %for.inc78 ]
  %exitcond40.not = icmp eq i64 %indvars.iv36, %wide.trip.count28
  br i1 %exitcond40.not, label %for.cond81.preheader, label %for.cond59.preheader

for.cond59.preheader:                             ; preds = %for.cond56
  %arrayidx69 = getelementptr inbounds [8 x [8 x i32]], ptr %sz, i64 0, i64 %indvars.iv36, i64 %idxprom68
  %arrayidx73 = getelementptr inbounds nuw [8 x i32], ptr %zd, i64 0, i64 %indvars.iv36
  br label %for.cond59

for.cond81.preheader:                             ; preds = %for.cond56
  %wide.trip.count50 = zext nneg i32 %smax to i64
  br label %for.cond81

for.cond59:                                       ; preds = %for.cond59.preheader, %for.inc75
  %indvars.iv30 = phi i64 [ 0, %for.cond59.preheader ], [ %indvars.iv.next31, %for.inc75 ]
  %exitcond35.not = icmp eq i64 %indvars.iv30, %wide.trip.count34
  br i1 %exitcond35.not, label %for.inc78, label %for.body61

for.body61:                                       ; preds = %for.cond59
  %arrayidx65 = getelementptr inbounds nuw [8 x [8 x i32]], ptr %td, i64 0, i64 %indvars.iv36, i64 %indvars.iv30
  %8 = load i32, ptr %arrayidx65, align 4, !tbaa !5, !invariant.load !9
  %9 = load i32, ptr %arrayidx69, align 4, !tbaa !5, !invariant.load !9
  %cmp70 = icmp eq i32 %8, %9
  br i1 %cmp70, label %if.then71, label %for.inc75

if.then71:                                        ; preds = %for.body61
  %10 = trunc nuw nsw i64 %indvars.iv30 to i32
  store i32 %10, ptr %arrayidx73, align 4, !tbaa !5
  br label %for.inc75

for.inc75:                                        ; preds = %for.body61, %if.then71
  %indvars.iv.next31 = add nuw nsw i64 %indvars.iv30, 1
  br label %for.cond59, !llvm.loop !16

for.inc78:                                        ; preds = %for.cond59
  %indvars.iv.next37 = add nuw nsw i64 %indvars.iv36, 1
  br label %for.cond56, !llvm.loop !17

for.cond81:                                       ; preds = %for.cond81.preheader, %for.inc111
  %indvars.iv46 = phi i64 [ 0, %for.cond81.preheader ], [ %indvars.iv.next47, %for.inc111 ]
  %exitcond51.not = icmp eq i64 %indvars.iv46, %wide.trip.count50
  br i1 %exitcond51.not, label %for.cond114.preheader, label %for.cond84

for.cond114.preheader:                            ; preds = %for.cond81
  %sub124 = add nsw i32 %0, -1
  %idxprom125 = sext i32 %sub124 to i64
  br label %for.cond114

for.cond84:                                       ; preds = %for.cond81, %for.body86
  %indvars.iv41 = phi i64 [ %indvars.iv.next42, %for.body86 ], [ 0, %for.cond81 ]
  %exitcond45.not = icmp eq i64 %indvars.iv41, %wide.trip.count28
  br i1 %exitcond45.not, label %for.inc111, label %for.body86

for.body86:                                       ; preds = %for.cond84
  %arrayidx90 = getelementptr inbounds nuw [8 x [8 x i32]], ptr %bj, i64 0, i64 %indvars.iv41, i64 %indvars.iv46
  %11 = load i32, ptr %arrayidx90, align 4, !tbaa !5, !invariant.load !9
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1
  %arrayidx95 = getelementptr inbounds nuw [8 x [8 x i32]], ptr %bj, i64 0, i64 %indvars.iv.next42, i64 %indvars.iv46
  %12 = load i32, ptr %arrayidx95, align 4, !tbaa !5, !invariant.load !9
  %spec.store.select = call i32 @llvm.smin.i32(i32 %11, i32 %12)
  store i32 %spec.store.select, ptr %arrayidx95, align 4
  br label %for.cond84, !llvm.loop !18

for.inc111:                                       ; preds = %for.cond84
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 1
  br label %for.cond81, !llvm.loop !19

for.cond114:                                      ; preds = %for.cond114.preheader, %for.inc137
  %indvars.iv57 = phi i64 [ 0, %for.cond114.preheader ], [ %indvars.iv.next58, %for.inc137 ]
  %exitcond61.not = icmp eq i64 %indvars.iv57, %wide.trip.count50
  br i1 %exitcond61.not, label %for.cond140, label %for.cond117.preheader

for.cond117.preheader:                            ; preds = %for.cond114
  %arrayidx128 = getelementptr inbounds [8 x [8 x i32]], ptr %bj, i64 0, i64 %idxprom125, i64 %indvars.iv57
  %arrayidx132 = getelementptr inbounds nuw [8 x i32], ptr %hd, i64 0, i64 %indvars.iv57
  br label %for.cond117

for.cond117:                                      ; preds = %for.cond117.preheader, %for.inc134
  %indvars.iv52 = phi i64 [ 0, %for.cond117.preheader ], [ %indvars.iv.next53, %for.inc134 ]
  %exitcond56.not = icmp eq i64 %indvars.iv52, %wide.trip.count28
  br i1 %exitcond56.not, label %for.inc137, label %for.body119

for.body119:                                      ; preds = %for.cond117
  %arrayidx123 = getelementptr inbounds nuw [8 x [8 x i32]], ptr %td, i64 0, i64 %indvars.iv52, i64 %indvars.iv57
  %13 = load i32, ptr %arrayidx123, align 4, !tbaa !5, !invariant.load !9
  %14 = load i32, ptr %arrayidx128, align 4, !tbaa !5, !invariant.load !9
  %cmp129 = icmp eq i32 %13, %14
  br i1 %cmp129, label %if.then130, label %for.inc134

if.then130:                                       ; preds = %for.body119
  %15 = trunc nuw nsw i64 %indvars.iv52 to i32
  store i32 %15, ptr %arrayidx132, align 4, !tbaa !5
  br label %for.inc134

for.inc134:                                       ; preds = %for.body119, %if.then130
  %indvars.iv.next53 = add nuw nsw i64 %indvars.iv52, 1
  br label %for.cond117, !llvm.loop !20

for.inc137:                                       ; preds = %for.cond117
  %indvars.iv.next58 = add nuw nsw i64 %indvars.iv57, 1
  br label %for.cond114, !llvm.loop !21

for.cond140:                                      ; preds = %for.cond114, %for.inc150
  %indvars.iv62 = phi i64 [ %indvars.iv.next63, %for.inc150 ], [ 0, %for.cond114 ]
  %exitcond66.not = icmp eq i64 %indvars.iv62, %wide.trip.count28
  br i1 %exitcond66.not, label %for.end152, label %for.body142

for.body142:                                      ; preds = %for.cond140
  %arrayidx144 = getelementptr inbounds nuw [8 x i32], ptr %zd, i64 0, i64 %indvars.iv62
  %16 = load i32, ptr %arrayidx144, align 4, !tbaa !5, !invariant.load !9
  %idxprom145 = sext i32 %16 to i64
  %arrayidx146 = getelementptr inbounds [8 x i32], ptr %hd, i64 0, i64 %idxprom145
  %17 = load i32, ptr %arrayidx146, align 4, !tbaa !5, !invariant.load !9
  %18 = zext i32 %17 to i64
  %cmp147 = icmp eq i64 %indvars.iv62, %18
  br i1 %cmp147, label %if.then148, label %for.inc150

if.then148:                                       ; preds = %for.body142
  %19 = trunc nuw nsw i64 %indvars.iv62 to i32
  %call149 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %19, i32 noundef %16)
  br label %cleanup

for.inc150:                                       ; preds = %for.body142
  %indvars.iv.next63 = add nuw nsw i64 %indvars.iv62, 1
  br label %for.cond140, !llvm.loop !22

for.end152:                                       ; preds = %for.cond140
  %call153 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3)
  br label %cleanup

cleanup:                                          ; preds = %for.end152, %if.then148
  call void @llvm.lifetime.end.p0(i64 noundef 32, ptr noundef nonnull %hd) #5
  call void @llvm.lifetime.end.p0(i64 noundef 256, ptr noundef nonnull %bj) #5
  call void @llvm.lifetime.end.p0(i64 noundef 32, ptr noundef nonnull %zd) #5
  call void @llvm.lifetime.end.p0(i64 noundef 256, ptr noundef nonnull %td) #5
  call void @llvm.lifetime.end.p0(i64 noundef 256, ptr noundef nonnull %sz) #5
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %m) #5
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #5
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nofree nounwind }
attributes #5 = { nounwind }

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
!9 = !{}
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = distinct !{!13, !11, !12}
!14 = distinct !{!14, !11, !12}
!15 = distinct !{!15, !11, !12}
!16 = distinct !{!16, !11, !12}
!17 = distinct !{!17, !11, !12}
!18 = distinct !{!18, !11, !12}
!19 = distinct !{!19, !11, !12}
!20 = distinct !{!20, !11, !12}
!21 = distinct !{!21, !11, !12}
!22 = distinct !{!22, !11, !12}
