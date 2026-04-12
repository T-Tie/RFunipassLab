; ModuleID = '<stdin>'
source_filename = "/tmp/tmpe_52ltit.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@_ZL1a = internal unnamed_addr constant [13 x i32] [i32 0, i32 31, i32 28, i32 31, i32 30, i32 31, i32 30, i32 31, i32 31, i32 30, i32 31, i32 30, i32 31], align 16
@_ZL1b = internal unnamed_addr constant [13 x i32] [i32 0, i32 31, i32 29, i32 31, i32 30, i32 31, i32 30, i32 31, i32 31, i32 30, i32 31, i32 30, i32 31], align 16
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"%d %d %d\00", align 1
@str = private unnamed_addr constant [3 x i8] c"NO\00", align 1
@str.1 = private unnamed_addr constant [4 x i8] c"YES\00", align 1
@str.2 = private unnamed_addr constant [3 x i8] c"NO\00", align 1
@str.3 = private unnamed_addr constant [4 x i8] c"YES\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef range(i32 0, 2) i32 @_Z6is_runi(i32 noundef %x) local_unnamed_addr #0 {
entry:
  %rem = srem i32 %x, 100
  %cmp = icmp ne i32 %rem, 0
  %0 = and i32 %x, 3
  %cmp2 = icmp eq i32 %0, 0
  %or.cond = and i1 %cmp, %cmp2
  %rem3 = srem i32 %x, 400
  %cmp4 = icmp eq i32 %rem3, 0
  %or.cond2 = or i1 %cmp4, %or.cond
  %retval.0 = zext i1 %or.cond2 to i32
  ret i32 %retval.0
}

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #1 {
entry:
  %f1 = alloca [13 x [13 x i32]], align 16
  %f2 = alloca [13 x [13 x i32]], align 16
  %n = alloca i32, align 4
  %year = alloca i32, align 4
  %mon1 = alloca i32, align 4
  %mon2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 676, ptr noundef nonnull %f1) #5
  call void @llvm.lifetime.start.p0(i64 noundef 676, ptr noundef nonnull %f2) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %year) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %mon1) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %mon2) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull writeonly align 16 dereferenceable(676) %f1, i8 noundef 0, i64 noundef 676, i1 noundef false) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull writeonly align 16 dereferenceable(676) %f2, i8 noundef 0, i64 noundef 676, i1 noundef false) #6
  br label %for.cond

for.cond.loopexit:                                ; preds = %for.cond2
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %indvars.iv.next52 = add nuw nsw i64 %indvars.iv51, 1
  br label %for.cond, !llvm.loop !5

for.cond:                                         ; preds = %for.cond.loopexit, %entry
  %indvars.iv51 = phi i64 [ %indvars.iv.next52, %for.cond.loopexit ], [ 2, %entry ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond.loopexit ], [ 1, %entry ]
  %exitcond57.not = icmp eq i64 %indvars.iv51, 14
  br i1 %exitcond57.not, label %for.cond20, label %for.cond2

for.cond2:                                        ; preds = %for.cond, %if.end
  %indvars.iv53 = phi i64 [ %indvars.iv.next54, %if.end ], [ %indvars.iv51, %for.cond ]
  %exitcond.not = icmp eq i64 %indvars.iv53, 13
  br i1 %exitcond.not, label %for.cond.loopexit, label %for.cond5

for.cond5:                                        ; preds = %for.cond2, %for.body7
  %indvars.iv48 = phi i64 [ %indvars.iv.next49, %for.body7 ], [ %indvars.iv, %for.cond2 ]
  %sum.0 = phi i32 [ %add8, %for.body7 ], [ 0, %for.cond2 ]
  %cmp6.not.not = icmp samesign ult i64 %indvars.iv48, %indvars.iv53
  br i1 %cmp6.not.not, label %for.body7, label %for.end

for.body7:                                        ; preds = %for.cond5
  %arrayidx = getelementptr inbounds nuw [13 x i32], ptr @_ZL1a, i64 0, i64 %indvars.iv48
  %0 = load i32, ptr %arrayidx, align 4, !tbaa !8, !invariant.load !12
  %add8 = add nsw i32 %0, %sum.0
  %indvars.iv.next49 = add nuw nsw i64 %indvars.iv48, 1
  br label %for.cond5, !llvm.loop !13

for.end:                                          ; preds = %for.cond5
  %rem = srem i32 %sum.0, 7
  %cmp9 = icmp eq i32 %rem, 0
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %arrayidx13 = getelementptr inbounds nuw [13 x [13 x i32]], ptr %f1, i64 0, i64 %indvars.iv, i64 %indvars.iv53
  store i32 1, ptr %arrayidx13, align 4, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53, 1
  br label %for.cond2, !llvm.loop !14

for.cond20:                                       ; preds = %for.cond, %for.body22
  %indvars.iv58 = phi i64 [ %indvars.iv.next59, %for.body22 ], [ 1, %for.cond ]
  %exitcond61.not = icmp eq i64 %indvars.iv58, 13
  br i1 %exitcond61.not, label %for.cond30, label %for.body22

for.body22:                                       ; preds = %for.cond20
  %arrayidx26 = getelementptr inbounds nuw [13 x [13 x i32]], ptr %f1, i64 0, i64 %indvars.iv58, i64 %indvars.iv58
  store i32 1, ptr %arrayidx26, align 4, !tbaa !8
  %indvars.iv.next59 = add nuw nsw i64 %indvars.iv58, 1
  br label %for.cond20, !llvm.loop !15

for.cond30:                                       ; preds = %for.cond20, %for.end47
  %indvars.iv66 = phi i64 [ %indvars.iv.next67, %for.end47 ], [ 1, %for.cond20 ]
  %exitcond69.not = icmp eq i64 %indvars.iv66, 13
  br i1 %exitcond69.not, label %for.cond51, label %for.cond33

for.cond33:                                       ; preds = %for.cond30, %for.body36
  %indvars.iv62 = phi i64 [ %indvars.iv.next63, %for.body36 ], [ 1, %for.cond30 ]
  %exitcond65.not = icmp eq i64 %indvars.iv62, %indvars.iv66
  br i1 %exitcond65.not, label %for.end47, label %for.body36

for.body36:                                       ; preds = %for.cond33
  %arrayidx40 = getelementptr inbounds nuw [13 x [13 x i32]], ptr %f1, i64 0, i64 %indvars.iv62, i64 %indvars.iv66
  %1 = load i32, ptr %arrayidx40, align 4, !tbaa !8
  %arrayidx44 = getelementptr inbounds nuw [13 x [13 x i32]], ptr %f1, i64 0, i64 %indvars.iv66, i64 %indvars.iv62
  store i32 %1, ptr %arrayidx44, align 4, !tbaa !8
  %indvars.iv.next63 = add nuw nsw i64 %indvars.iv62, 1
  br label %for.cond33, !llvm.loop !16

for.end47:                                        ; preds = %for.cond33
  %indvars.iv.next67 = add nuw nsw i64 %indvars.iv66, 1
  br label %for.cond30, !llvm.loop !17

for.cond51.loopexit:                              ; preds = %for.cond55
  %indvars.iv.next71 = add nuw nsw i64 %indvars.iv70, 1
  %indvars.iv.next76 = add nuw nsw i64 %indvars.iv75, 1
  br label %for.cond51, !llvm.loop !18

for.cond51:                                       ; preds = %for.cond30, %for.cond51.loopexit
  %indvars.iv75 = phi i64 [ %indvars.iv.next76, %for.cond51.loopexit ], [ 2, %for.cond30 ]
  %indvars.iv70 = phi i64 [ %indvars.iv.next71, %for.cond51.loopexit ], [ 1, %for.cond30 ]
  %exitcond82.not = icmp eq i64 %indvars.iv75, 14
  br i1 %exitcond82.not, label %for.cond82, label %for.cond55

for.cond55:                                       ; preds = %for.cond51, %if.end75
  %indvars.iv77 = phi i64 [ %indvars.iv.next78, %if.end75 ], [ %indvars.iv75, %for.cond51 ]
  %exitcond80.not = icmp eq i64 %indvars.iv77, 13
  br i1 %exitcond80.not, label %for.cond51.loopexit, label %for.cond58

for.cond58:                                       ; preds = %for.cond55, %for.body61
  %indvars.iv72 = phi i64 [ %indvars.iv.next73, %for.body61 ], [ %indvars.iv70, %for.cond55 ]
  %sum.1 = phi i32 [ %add64, %for.body61 ], [ 0, %for.cond55 ]
  %cmp60.not.not = icmp samesign ult i64 %indvars.iv72, %indvars.iv77
  br i1 %cmp60.not.not, label %for.body61, label %for.end67

for.body61:                                       ; preds = %for.cond58
  %arrayidx63 = getelementptr inbounds nuw [13 x i32], ptr @_ZL1b, i64 0, i64 %indvars.iv72
  %2 = load i32, ptr %arrayidx63, align 4, !tbaa !8
  %add64 = add nsw i32 %2, %sum.1
  %indvars.iv.next73 = add nuw nsw i64 %indvars.iv72, 1
  br label %for.cond58, !llvm.loop !19

for.end67:                                        ; preds = %for.cond58
  %rem68 = srem i32 %sum.1, 7
  %cmp69 = icmp eq i32 %rem68, 0
  br i1 %cmp69, label %if.then70, label %if.end75

if.then70:                                        ; preds = %for.end67
  %arrayidx74 = getelementptr inbounds nuw [13 x [13 x i32]], ptr %f2, i64 0, i64 %indvars.iv70, i64 %indvars.iv77
  store i32 1, ptr %arrayidx74, align 4, !tbaa !8
  br label %if.end75

if.end75:                                         ; preds = %if.then70, %for.end67
  %indvars.iv.next78 = add nuw nsw i64 %indvars.iv77, 1
  br label %for.cond55, !llvm.loop !20

for.cond82:                                       ; preds = %for.cond51, %for.body84
  %indvars.iv83 = phi i64 [ %indvars.iv.next84, %for.body84 ], [ 1, %for.cond51 ]
  %exitcond86.not = icmp eq i64 %indvars.iv83, 13
  br i1 %exitcond86.not, label %for.cond92, label %for.body84

for.body84:                                       ; preds = %for.cond82
  %arrayidx88 = getelementptr inbounds nuw [13 x [13 x i32]], ptr %f2, i64 0, i64 %indvars.iv83, i64 %indvars.iv83
  store i32 1, ptr %arrayidx88, align 4, !tbaa !8
  %indvars.iv.next84 = add nuw nsw i64 %indvars.iv83, 1
  br label %for.cond82, !llvm.loop !21

for.cond92:                                       ; preds = %for.cond82, %for.end109
  %indvars.iv91 = phi i64 [ %indvars.iv.next92, %for.end109 ], [ 1, %for.cond82 ]
  %exitcond94.not = icmp eq i64 %indvars.iv91, 13
  br i1 %exitcond94.not, label %for.end112, label %for.cond95

for.cond95:                                       ; preds = %for.cond92, %for.body98
  %indvars.iv87 = phi i64 [ %indvars.iv.next88, %for.body98 ], [ 1, %for.cond92 ]
  %exitcond90.not = icmp eq i64 %indvars.iv87, %indvars.iv91
  br i1 %exitcond90.not, label %for.end109, label %for.body98

for.body98:                                       ; preds = %for.cond95
  %arrayidx102 = getelementptr inbounds nuw [13 x [13 x i32]], ptr %f2, i64 0, i64 %indvars.iv87, i64 %indvars.iv91
  %3 = load i32, ptr %arrayidx102, align 4, !tbaa !8
  %arrayidx106 = getelementptr inbounds nuw [13 x [13 x i32]], ptr %f2, i64 0, i64 %indvars.iv91, i64 %indvars.iv87
  store i32 %3, ptr %arrayidx106, align 4, !tbaa !8
  %indvars.iv.next88 = add nuw nsw i64 %indvars.iv87, 1
  br label %for.cond95, !llvm.loop !22

for.end109:                                       ; preds = %for.cond95
  %indvars.iv.next92 = add nuw nsw i64 %indvars.iv91, 1
  br label %for.cond92, !llvm.loop !23

for.end112:                                       ; preds = %for.cond92
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  br label %for.cond113

for.cond113:                                      ; preds = %if.end140, %for.end112
  %i.6 = phi i32 [ 1, %for.end112 ], [ %inc142, %if.end140 ]
  %4 = load i32, ptr %n, align 4, !tbaa !8
  %cmp114.not = icmp sgt i32 %i.6, %4
  br i1 %cmp114.not, label %for.end143, label %for.body115

for.body115:                                      ; preds = %for.cond113
  %call116 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %year, ptr noundef nonnull %mon1, ptr noundef nonnull %mon2)
  %5 = load i32, ptr %year, align 4, !tbaa !8
  %call117 = call noundef i32 @_Z6is_runi(i32 noundef %5) #7
  %cmp118.not = icmp eq i32 %call117, 0
  %6 = load i32, ptr %mon1, align 4, !tbaa !8
  %7 = load i32, ptr %mon2, align 4, !tbaa !8
  %idxprom120 = sext i32 %6 to i64
  %idxprom122 = sext i32 %7 to i64
  br i1 %cmp118.not, label %if.else129, label %if.then119

if.then119:                                       ; preds = %for.body115
  %arrayidx123 = getelementptr inbounds [13 x [13 x i32]], ptr %f2, i64 0, i64 %idxprom120, i64 %idxprom122
  %8 = load i32, ptr %arrayidx123, align 4, !tbaa !8
  %cmp124 = icmp eq i32 %8, 1
  %str.3.str.2 = select i1 %cmp124, ptr @str.3, ptr @str.2
  br label %if.end140

if.else129:                                       ; preds = %for.body115
  %arrayidx133 = getelementptr inbounds [13 x [13 x i32]], ptr %f1, i64 0, i64 %idxprom120, i64 %idxprom122
  %9 = load i32, ptr %arrayidx133, align 4, !tbaa !8
  %cmp134 = icmp eq i32 %9, 1
  %str.1.str = select i1 %cmp134, ptr @str.1, ptr @str
  br label %if.end140

if.end140:                                        ; preds = %if.else129, %if.then119
  %str.1.sink = phi ptr [ %str.3.str.2, %if.then119 ], [ %str.1.str, %if.else129 ]
  %puts45 = call i32 @puts(ptr nonnull dereferenceable(1) %str.1.sink) #7
  %inc142 = add nuw nsw i32 %i.6, 1
  br label %for.cond113, !llvm.loop !24

for.end143:                                       ; preds = %for.cond113
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %mon2) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %mon1) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %year) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #7
  call void @llvm.lifetime.end.p0(i64 noundef 676, ptr noundef nonnull %f2) #7
  call void @llvm.lifetime.end.p0(i64 noundef 676, ptr noundef nonnull %f1) #7
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #2

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { nofree }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.1.8 (https://github.com/llvm/llvm-project.git 2078da43e25a4623cab2d0d60decddf709aaea28)"}
!5 = distinct !{!5, !6, !7}
!6 = !{!"llvm.loop.mustprogress"}
!7 = !{!"llvm.loop.unroll.disable"}
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C++ TBAA"}
!12 = !{}
!13 = distinct !{!13, !6, !7}
!14 = distinct !{!14, !6, !7}
!15 = distinct !{!15, !6, !7}
!16 = distinct !{!16, !6, !7}
!17 = distinct !{!17, !6, !7}
!18 = distinct !{!18, !6, !7}
!19 = distinct !{!19, !6, !7}
!20 = distinct !{!20, !6, !7}
!21 = distinct !{!21, !6, !7}
!22 = distinct !{!22, !6, !7}
!23 = distinct !{!23, !6, !7}
!24 = distinct !{!24, !6, !7}
