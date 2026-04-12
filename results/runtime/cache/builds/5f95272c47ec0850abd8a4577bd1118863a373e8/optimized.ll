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
@str.2 = private unnamed_addr constant [4 x i8] c"YES\00", align 1

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
  call void @llvm.lifetime.start.p0(i64 noundef 676, ptr noundef nonnull %f1) #6
  call void @llvm.lifetime.start.p0(i64 noundef 676, ptr noundef nonnull %f2) #6
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #6
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %year) #6
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %mon1) #6
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %mon2) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull writeonly align 16 dereferenceable(676) %f1, i8 noundef 0, i64 noundef 676, i1 noundef false) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull writeonly align 16 dereferenceable(676) %f2, i8 noundef 0, i64 noundef 676, i1 noundef false) #7
  br label %for.cond

for.cond.loopexit:                                ; preds = %for.cond2
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 1
  br label %for.cond, !llvm.loop !5

for.cond:                                         ; preds = %for.cond.loopexit, %entry
  %indvars.iv46 = phi i64 [ %indvars.iv.next47, %for.cond.loopexit ], [ 2, %entry ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond.loopexit ], [ 1, %entry ]
  %exitcond52.not = icmp eq i64 %indvars.iv46, 14
  br i1 %exitcond52.not, label %for.cond20, label %for.cond2

for.cond2:                                        ; preds = %for.cond, %for.inc14
  %indvars.iv48 = phi i64 [ %indvars.iv.next49, %for.inc14 ], [ %indvars.iv46, %for.cond ]
  %exitcond.not = icmp eq i64 %indvars.iv48, 13
  br i1 %exitcond.not, label %for.cond.loopexit, label %for.cond5

for.cond5:                                        ; preds = %for.cond2, %for.inc
  %indvars.iv43 = phi i64 [ %indvars.iv.next44, %for.inc ], [ %indvars.iv, %for.cond2 ]
  %sum.0 = phi i32 [ %add8, %for.inc ], [ 0, %for.cond2 ]
  %cmp6.not.not = icmp samesign ult i64 %indvars.iv43, %indvars.iv48
  br i1 %cmp6.not.not, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.cond5
  %arrayidx = getelementptr inbounds nuw [13 x i32], ptr @_ZL1a, i64 0, i64 %indvars.iv43
  %0 = load i32, ptr %arrayidx, align 4, !tbaa !8, !invariant.load !12
  %add8 = add nsw i32 %0, %sum.0
  %indvars.iv.next44 = add nuw nsw i64 %indvars.iv43, 1
  br label %for.cond5, !llvm.loop !13

for.end:                                          ; preds = %for.cond5
  %rem = srem i32 %sum.0, 7
  %cmp9 = icmp eq i32 %rem, 0
  br i1 %cmp9, label %if.then, label %for.inc14

if.then:                                          ; preds = %for.end
  %arrayidx13 = getelementptr inbounds nuw [13 x [13 x i32]], ptr %f1, i64 0, i64 %indvars.iv, i64 %indvars.iv48
  store i32 1, ptr %arrayidx13, align 4, !tbaa !8
  br label %for.inc14

for.inc14:                                        ; preds = %for.end, %if.then
  %indvars.iv.next49 = add nuw nsw i64 %indvars.iv48, 1
  br label %for.cond2, !llvm.loop !14

for.cond20:                                       ; preds = %for.cond, %for.inc27
  %indvars.iv53 = phi i64 [ %indvars.iv.next54, %for.inc27 ], [ 1, %for.cond ]
  %exitcond56.not = icmp eq i64 %indvars.iv53, 13
  br i1 %exitcond56.not, label %for.cond30, label %for.inc27

for.inc27:                                        ; preds = %for.cond20
  %arrayidx26 = getelementptr inbounds nuw [13 x [13 x i32]], ptr %f1, i64 0, i64 %indvars.iv53, i64 %indvars.iv53
  store i32 1, ptr %arrayidx26, align 4, !tbaa !8
  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53, 1
  br label %for.cond20, !llvm.loop !15

for.cond30:                                       ; preds = %for.cond20, %for.inc48
  %indvars.iv61 = phi i64 [ %indvars.iv.next62, %for.inc48 ], [ 1, %for.cond20 ]
  %exitcond64.not = icmp eq i64 %indvars.iv61, 13
  br i1 %exitcond64.not, label %for.cond51, label %for.cond33

for.cond33:                                       ; preds = %for.cond30, %for.inc45
  %indvars.iv57 = phi i64 [ %indvars.iv.next58, %for.inc45 ], [ 1, %for.cond30 ]
  %exitcond60.not = icmp eq i64 %indvars.iv57, %indvars.iv61
  br i1 %exitcond60.not, label %for.inc48, label %for.inc45

for.inc45:                                        ; preds = %for.cond33
  %arrayidx40 = getelementptr inbounds nuw [13 x [13 x i32]], ptr %f1, i64 0, i64 %indvars.iv57, i64 %indvars.iv61
  %1 = load i32, ptr %arrayidx40, align 4, !tbaa !8, !invariant.load !12
  %arrayidx44 = getelementptr inbounds nuw [13 x [13 x i32]], ptr %f1, i64 0, i64 %indvars.iv61, i64 %indvars.iv57
  store i32 %1, ptr %arrayidx44, align 4, !tbaa !8
  %indvars.iv.next58 = add nuw nsw i64 %indvars.iv57, 1
  br label %for.cond33, !llvm.loop !16

for.inc48:                                        ; preds = %for.cond33
  %indvars.iv.next62 = add nuw nsw i64 %indvars.iv61, 1
  br label %for.cond30, !llvm.loop !17

for.cond51.loopexit:                              ; preds = %for.cond55
  %indvars.iv.next66 = add nuw nsw i64 %indvars.iv65, 1
  %indvars.iv.next71 = add nuw nsw i64 %indvars.iv70, 1
  br label %for.cond51, !llvm.loop !18

for.cond51:                                       ; preds = %for.cond30, %for.cond51.loopexit
  %indvars.iv70 = phi i64 [ %indvars.iv.next71, %for.cond51.loopexit ], [ 2, %for.cond30 ]
  %indvars.iv65 = phi i64 [ %indvars.iv.next66, %for.cond51.loopexit ], [ 1, %for.cond30 ]
  %exitcond77.not = icmp eq i64 %indvars.iv70, 14
  br i1 %exitcond77.not, label %for.cond82, label %for.cond55

for.cond55:                                       ; preds = %for.cond51, %for.inc76
  %indvars.iv72 = phi i64 [ %indvars.iv.next73, %for.inc76 ], [ %indvars.iv70, %for.cond51 ]
  %exitcond75.not = icmp eq i64 %indvars.iv72, 13
  br i1 %exitcond75.not, label %for.cond51.loopexit, label %for.cond58

for.cond58:                                       ; preds = %for.cond55, %for.inc65
  %indvars.iv67 = phi i64 [ %indvars.iv.next68, %for.inc65 ], [ %indvars.iv65, %for.cond55 ]
  %sum.1 = phi i32 [ %add64, %for.inc65 ], [ 0, %for.cond55 ]
  %cmp60.not.not = icmp samesign ult i64 %indvars.iv67, %indvars.iv72
  br i1 %cmp60.not.not, label %for.inc65, label %for.end67

for.inc65:                                        ; preds = %for.cond58
  %arrayidx63 = getelementptr inbounds nuw [13 x i32], ptr @_ZL1b, i64 0, i64 %indvars.iv67
  %2 = load i32, ptr %arrayidx63, align 4, !tbaa !8
  %add64 = add nsw i32 %2, %sum.1
  %indvars.iv.next68 = add nuw nsw i64 %indvars.iv67, 1
  br label %for.cond58, !llvm.loop !19

for.end67:                                        ; preds = %for.cond58
  %rem68 = srem i32 %sum.1, 7
  %cmp69 = icmp eq i32 %rem68, 0
  br i1 %cmp69, label %if.then70, label %for.inc76

if.then70:                                        ; preds = %for.end67
  %arrayidx74 = getelementptr inbounds nuw [13 x [13 x i32]], ptr %f2, i64 0, i64 %indvars.iv65, i64 %indvars.iv72
  store i32 1, ptr %arrayidx74, align 4, !tbaa !8
  br label %for.inc76

for.inc76:                                        ; preds = %for.end67, %if.then70
  %indvars.iv.next73 = add nuw nsw i64 %indvars.iv72, 1
  br label %for.cond55, !llvm.loop !20

for.cond82:                                       ; preds = %for.cond51, %for.inc89
  %indvars.iv78 = phi i64 [ %indvars.iv.next79, %for.inc89 ], [ 1, %for.cond51 ]
  %exitcond81.not = icmp eq i64 %indvars.iv78, 13
  br i1 %exitcond81.not, label %for.cond92, label %for.inc89

for.inc89:                                        ; preds = %for.cond82
  %arrayidx88 = getelementptr inbounds nuw [13 x [13 x i32]], ptr %f2, i64 0, i64 %indvars.iv78, i64 %indvars.iv78
  store i32 1, ptr %arrayidx88, align 4, !tbaa !8
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 1
  br label %for.cond82, !llvm.loop !21

for.cond92:                                       ; preds = %for.cond82, %for.inc110
  %indvars.iv86 = phi i64 [ %indvars.iv.next87, %for.inc110 ], [ 1, %for.cond82 ]
  %exitcond89.not = icmp eq i64 %indvars.iv86, 13
  br i1 %exitcond89.not, label %for.end112, label %for.cond95

for.cond95:                                       ; preds = %for.cond92, %for.inc107
  %indvars.iv82 = phi i64 [ %indvars.iv.next83, %for.inc107 ], [ 1, %for.cond92 ]
  %exitcond85.not = icmp eq i64 %indvars.iv82, %indvars.iv86
  br i1 %exitcond85.not, label %for.inc110, label %for.inc107

for.inc107:                                       ; preds = %for.cond95
  %arrayidx102 = getelementptr inbounds nuw [13 x [13 x i32]], ptr %f2, i64 0, i64 %indvars.iv82, i64 %indvars.iv86
  %3 = load i32, ptr %arrayidx102, align 4, !tbaa !8
  %arrayidx106 = getelementptr inbounds nuw [13 x [13 x i32]], ptr %f2, i64 0, i64 %indvars.iv86, i64 %indvars.iv82
  store i32 %3, ptr %arrayidx106, align 4, !tbaa !8
  %indvars.iv.next83 = add nuw nsw i64 %indvars.iv82, 1
  br label %for.cond95, !llvm.loop !22

for.inc110:                                       ; preds = %for.cond95
  %indvars.iv.next87 = add nuw nsw i64 %indvars.iv86, 1
  br label %for.cond92, !llvm.loop !23

for.end112:                                       ; preds = %for.cond92
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  br label %for.cond113

for.cond113:                                      ; preds = %for.body115, %for.end112
  %i.6 = phi i32 [ 1, %for.end112 ], [ %inc142, %for.body115 ]
  %4 = load i32, ptr %n, align 4, !tbaa !8
  %cmp114.not = icmp sgt i32 %i.6, %4
  br i1 %cmp114.not, label %for.end143, label %for.body115

for.body115:                                      ; preds = %for.cond113
  %call116 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %year, ptr noundef nonnull %mon1, ptr noundef nonnull %mon2)
  %5 = load i32, ptr %year, align 4, !tbaa !8
  %call117 = call noundef i32 @_Z6is_runi(i32 noundef %5)
  %cmp118.not = icmp eq i32 %call117, 0
  %6 = load i32, ptr %mon1, align 4, !tbaa !8
  %7 = load i32, ptr %mon2, align 4, !tbaa !8
  %idxprom120 = sext i32 %6 to i64
  %idxprom122 = sext i32 %7 to i64
  %f1.f2 = select i1 %cmp118.not, ptr %f1, ptr %f2
  %arrayidx123 = getelementptr inbounds [13 x [13 x i32]], ptr %f1.f2, i64 0, i64 %idxprom120, i64 %idxprom122
  call void @outlined_ir_func_0(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %arrayidx123)
  %inc142 = add nuw nsw i32 %i.6, 1
  br label %for.cond113, !llvm.loop !24

for.end143:                                       ; preds = %for.cond113
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mon2) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mon1) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %year) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #8
  call void @llvm.lifetime.end.p0(i64 676, ptr nonnull %f2) #8
  call void @llvm.lifetime.end.p0(i64 676, ptr nonnull %f1) #8
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

; Function Attrs: minsize mustprogress nofree norecurse nounwind optsize uwtable
define internal void @outlined_ir_func_0(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %0) #5 {
if.then119_to_outline:
  %1 = load i32, ptr %0, align 4, !tbaa !8, !invariant.load !12
  %cmp124 = icmp eq i32 %1, 1
  %str.2.str = select i1 %cmp124, ptr @str.2, ptr @str
  %puts1 = tail call i32 @puts(ptr nonnull dereferenceable(1) %str.2.str)
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) #6

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { minsize mustprogress nofree norecurse nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { nofree }
attributes #8 = { nounwind }

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
