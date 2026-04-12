; ModuleID = '<stdin>'
source_filename = "/tmp/tmpe_52ltit.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@_ZL1a = internal unnamed_addr constant [13 x i32] [i32 0, i32 31, i32 28, i32 31, i32 30, i32 31, i32 30, i32 31, i32 31, i32 30, i32 31, i32 30, i32 31], align 16
@_ZL1b = internal unnamed_addr constant [13 x i32] [i32 0, i32 31, i32 29, i32 31, i32 30, i32 31, i32 30, i32 31, i32 31, i32 30, i32 31, i32 30, i32 31], align 16
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"%d %d %d\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"YES\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"NO\0A\00", align 1
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
  %or.cond1 = or i1 %cmp4, %or.cond
  %retval.0 = zext i1 %or.cond1 to i32
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

for.cond:                                         ; preds = %for.inc17, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc17 ], [ 1, %entry ]
  %exitcond22.not = icmp eq i64 %indvars.iv, 13
  br i1 %exitcond22.not, label %for.cond20, label %for.cond2

for.cond2:                                        ; preds = %for.cond, %for.inc14
  %indvars.iv18 = phi i64 [ %indvars.iv.next19, %for.inc14 ], [ %indvars.iv, %for.cond ]
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1
  %exitcond.not = icmp eq i64 %indvars.iv18, 12
  br i1 %exitcond.not, label %for.inc17, label %for.cond5

for.cond5:                                        ; preds = %for.cond2, %for.inc
  %indvars.iv15 = phi i64 [ %indvars.iv.next16, %for.inc ], [ %indvars.iv, %for.cond2 ]
  %sum.0 = phi i32 [ %add8, %for.inc ], [ 0, %for.cond2 ]
  %cmp6.not = icmp samesign ugt i64 %indvars.iv15, %indvars.iv18
  br i1 %cmp6.not, label %for.end, label %for.inc

for.inc:                                          ; preds = %for.cond5
  %arrayidx = getelementptr inbounds nuw [13 x i32], ptr @_ZL1a, i64 0, i64 %indvars.iv15
  %0 = load i32, ptr %arrayidx, align 4, !tbaa !5, !invariant.load !9
  %add8 = add nsw i32 %0, %sum.0
  %indvars.iv.next16 = add nuw nsw i64 %indvars.iv15, 1
  br label %for.cond5, !llvm.loop !10

for.end:                                          ; preds = %for.cond5
  %rem = srem i32 %sum.0, 7
  %cmp9 = icmp eq i32 %rem, 0
  br i1 %cmp9, label %if.then, label %for.inc14

if.then:                                          ; preds = %for.end
  %arrayidx13 = getelementptr inbounds nuw [13 x [13 x i32]], ptr %f1, i64 0, i64 %indvars.iv, i64 %indvars.iv.next19
  store i32 1, ptr %arrayidx13, align 4, !tbaa !5
  br label %for.inc14

for.inc14:                                        ; preds = %for.end, %if.then
  br label %for.cond2, !llvm.loop !13

for.inc17:                                        ; preds = %for.cond2
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !14

for.cond20:                                       ; preds = %for.cond, %for.inc27
  %indvars.iv23 = phi i64 [ %indvars.iv.next24, %for.inc27 ], [ 1, %for.cond ]
  %exitcond26.not = icmp eq i64 %indvars.iv23, 13
  br i1 %exitcond26.not, label %for.cond30, label %for.inc27

for.inc27:                                        ; preds = %for.cond20
  %arrayidx26 = getelementptr inbounds nuw [13 x [13 x i32]], ptr %f1, i64 0, i64 %indvars.iv23, i64 %indvars.iv23
  store i32 1, ptr %arrayidx26, align 4, !tbaa !5
  %indvars.iv.next24 = add nuw nsw i64 %indvars.iv23, 1
  br label %for.cond20, !llvm.loop !15

for.cond30:                                       ; preds = %for.cond20, %for.inc48
  %indvars.iv31 = phi i64 [ %indvars.iv.next32, %for.inc48 ], [ 1, %for.cond20 ]
  %exitcond34.not = icmp eq i64 %indvars.iv31, 13
  br i1 %exitcond34.not, label %for.cond51, label %for.cond33

for.cond33:                                       ; preds = %for.cond30, %for.inc45
  %indvars.iv27 = phi i64 [ %indvars.iv.next28, %for.inc45 ], [ 1, %for.cond30 ]
  %exitcond30.not = icmp eq i64 %indvars.iv27, %indvars.iv31
  br i1 %exitcond30.not, label %for.inc48, label %for.inc45

for.inc45:                                        ; preds = %for.cond33
  %arrayidx40 = getelementptr inbounds nuw [13 x [13 x i32]], ptr %f1, i64 0, i64 %indvars.iv27, i64 %indvars.iv31
  %1 = load i32, ptr %arrayidx40, align 4, !tbaa !5
  %arrayidx44 = getelementptr inbounds nuw [13 x [13 x i32]], ptr %f1, i64 0, i64 %indvars.iv31, i64 %indvars.iv27
  store i32 %1, ptr %arrayidx44, align 4, !tbaa !5
  %indvars.iv.next28 = add nuw nsw i64 %indvars.iv27, 1
  br label %for.cond33, !llvm.loop !16

for.inc48:                                        ; preds = %for.cond33
  %indvars.iv.next32 = add nuw nsw i64 %indvars.iv31, 1
  br label %for.cond30, !llvm.loop !17

for.cond51:                                       ; preds = %for.cond30, %for.inc79
  %indvars.iv35 = phi i64 [ %indvars.iv.next36, %for.inc79 ], [ 1, %for.cond30 ]
  %exitcond45.not = icmp eq i64 %indvars.iv35, 13
  br i1 %exitcond45.not, label %for.cond82, label %for.cond55

for.cond55:                                       ; preds = %for.cond51, %for.inc76
  %indvars.iv40 = phi i64 [ %indvars.iv.next41, %for.inc76 ], [ %indvars.iv35, %for.cond51 ]
  %indvars.iv.next41 = add nuw nsw i64 %indvars.iv40, 1
  %exitcond43.not = icmp eq i64 %indvars.iv40, 12
  br i1 %exitcond43.not, label %for.inc79, label %for.cond58

for.cond58:                                       ; preds = %for.cond55, %for.inc65
  %indvars.iv37 = phi i64 [ %indvars.iv.next38, %for.inc65 ], [ %indvars.iv35, %for.cond55 ]
  %sum.1 = phi i32 [ %add64, %for.inc65 ], [ 0, %for.cond55 ]
  %cmp60.not = icmp samesign ugt i64 %indvars.iv37, %indvars.iv40
  br i1 %cmp60.not, label %for.end67, label %for.inc65

for.inc65:                                        ; preds = %for.cond58
  %arrayidx63 = getelementptr inbounds nuw [13 x i32], ptr @_ZL1b, i64 0, i64 %indvars.iv37
  %2 = load i32, ptr %arrayidx63, align 4, !tbaa !5
  %add64 = add nsw i32 %2, %sum.1
  %indvars.iv.next38 = add nuw nsw i64 %indvars.iv37, 1
  br label %for.cond58, !llvm.loop !18

for.end67:                                        ; preds = %for.cond58
  %rem68 = srem i32 %sum.1, 7
  %cmp69 = icmp eq i32 %rem68, 0
  br i1 %cmp69, label %if.then70, label %for.inc76

if.then70:                                        ; preds = %for.end67
  %arrayidx74 = getelementptr inbounds nuw [13 x [13 x i32]], ptr %f2, i64 0, i64 %indvars.iv35, i64 %indvars.iv.next41
  store i32 1, ptr %arrayidx74, align 4, !tbaa !5
  br label %for.inc76

for.inc76:                                        ; preds = %for.end67, %if.then70
  br label %for.cond55, !llvm.loop !19

for.inc79:                                        ; preds = %for.cond55
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv35, 1
  br label %for.cond51, !llvm.loop !20

for.cond82:                                       ; preds = %for.cond51, %for.inc89
  %indvars.iv46 = phi i64 [ %indvars.iv.next47, %for.inc89 ], [ 1, %for.cond51 ]
  %exitcond49.not = icmp eq i64 %indvars.iv46, 13
  br i1 %exitcond49.not, label %for.cond92, label %for.inc89

for.inc89:                                        ; preds = %for.cond82
  %arrayidx88 = getelementptr inbounds nuw [13 x [13 x i32]], ptr %f2, i64 0, i64 %indvars.iv46, i64 %indvars.iv46
  store i32 1, ptr %arrayidx88, align 4, !tbaa !5
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 1
  br label %for.cond82, !llvm.loop !21

for.cond92:                                       ; preds = %for.cond82, %for.inc110
  %indvars.iv54 = phi i64 [ %indvars.iv.next55, %for.inc110 ], [ 1, %for.cond82 ]
  %exitcond57.not = icmp eq i64 %indvars.iv54, 13
  br i1 %exitcond57.not, label %for.end112, label %for.cond95

for.cond95:                                       ; preds = %for.cond92, %for.inc107
  %indvars.iv50 = phi i64 [ %indvars.iv.next51, %for.inc107 ], [ 1, %for.cond92 ]
  %exitcond53.not = icmp eq i64 %indvars.iv50, %indvars.iv54
  br i1 %exitcond53.not, label %for.inc110, label %for.inc107

for.inc107:                                       ; preds = %for.cond95
  %arrayidx102 = getelementptr inbounds nuw [13 x [13 x i32]], ptr %f2, i64 0, i64 %indvars.iv50, i64 %indvars.iv54
  %3 = load i32, ptr %arrayidx102, align 4, !tbaa !5
  %arrayidx106 = getelementptr inbounds nuw [13 x [13 x i32]], ptr %f2, i64 0, i64 %indvars.iv54, i64 %indvars.iv50
  store i32 %3, ptr %arrayidx106, align 4, !tbaa !5
  %indvars.iv.next51 = add nuw nsw i64 %indvars.iv50, 1
  br label %for.cond95, !llvm.loop !22

for.inc110:                                       ; preds = %for.cond95
  %indvars.iv.next55 = add nuw nsw i64 %indvars.iv54, 1
  br label %for.cond92, !llvm.loop !23

for.end112:                                       ; preds = %for.cond92
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  br label %for.cond113

for.cond113:                                      ; preds = %for.inc141, %for.end112
  %i.2 = phi i32 [ 1, %for.end112 ], [ %inc142, %for.inc141 ]
  %4 = load i32, ptr %n, align 4, !tbaa !5
  %cmp114.not = icmp sgt i32 %i.2, %4
  br i1 %cmp114.not, label %for.end143, label %for.body115

for.body115:                                      ; preds = %for.cond113
  %call116 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %year, ptr noundef nonnull %mon1, ptr noundef nonnull %mon2)
  %5 = load i32, ptr %year, align 4, !tbaa !5
  %call117 = call noundef i32 @_Z6is_runi(i32 noundef %5) #7
  %cmp118.not = icmp eq i32 %call117, 0
  %6 = load i32, ptr %mon1, align 4, !tbaa !5
  %idxprom130 = sext i32 %6 to i64
  %7 = load i32, ptr %mon2, align 4, !tbaa !5
  %idxprom132 = sext i32 %7 to i64
  br i1 %cmp118.not, label %if.else129, label %if.then119

if.then119:                                       ; preds = %for.body115
  %arrayidx123 = getelementptr inbounds [13 x [13 x i32]], ptr %f2, i64 0, i64 %idxprom130, i64 %idxprom132
  %8 = load i32, ptr %arrayidx123, align 4, !tbaa !5
  %cmp124 = icmp eq i32 %8, 1
  %str.3.str.2 = select i1 %cmp124, ptr @str.3, ptr @str.2
  br label %for.inc141

if.else129:                                       ; preds = %for.body115
  %arrayidx133 = getelementptr inbounds [13 x [13 x i32]], ptr %f1, i64 0, i64 %idxprom130, i64 %idxprom132
  %9 = load i32, ptr %arrayidx133, align 4, !tbaa !5
  %cmp134 = icmp eq i32 %9, 1
  %str.1.str = select i1 %cmp134, ptr @str.1, ptr @str
  br label %for.inc141

for.inc141:                                       ; preds = %if.else129, %if.then119
  %str.2.sink = phi ptr [ %str.3.str.2, %if.then119 ], [ %str.1.str, %if.else129 ]
  %puts13 = call i32 @puts(ptr nonnull dereferenceable(1) %str.2.sink)
  %inc142 = add nuw nsw i32 %i.2, 1
  br label %for.cond113, !llvm.loop !24

for.end143:                                       ; preds = %for.cond113
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mon2) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mon1) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %year) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #7
  call void @llvm.lifetime.end.p0(i64 676, ptr nonnull %f2) #7
  call void @llvm.lifetime.end.p0(i64 676, ptr nonnull %f1) #7
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #4

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #2

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
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
!23 = distinct !{!23, !11, !12}
!24 = distinct !{!24, !11, !12}
