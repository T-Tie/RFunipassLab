; ModuleID = '<stdin>'
source_filename = "/tmp/tmpmqvlwl51.cpp"
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
  %a = alloca [8 x [8 x i32]], align 16
  %n = alloca i32, align 4
  %m = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %a) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %m) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n, ptr noundef nonnull %m)
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %indvars.iv38 = phi i64 [ %indvars.iv.next39, %for.inc7 ], [ 0, %entry ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv38, %1
  br i1 %cmp, label %for.cond1, label %for.cond10

for.cond1:                                        ; preds = %for.cond, %for.body3
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body3 ], [ 0, %for.cond ]
  %2 = load i32, ptr %m, align 4, !tbaa !5
  %3 = sext i32 %2 to i64
  %cmp2 = icmp slt i64 %indvars.iv, %3
  br i1 %cmp2, label %for.body3, label %for.inc7

for.body3:                                        ; preds = %for.cond1
  %arrayidx5 = getelementptr inbounds nuw [8 x [8 x i32]], ptr %a, i64 0, i64 %indvars.iv38, i64 %indvars.iv
  %call6 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %arrayidx5)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond1, !llvm.loop !9

for.inc7:                                         ; preds = %for.cond1
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1
  br label %for.cond, !llvm.loop !12

for.cond10:                                       ; preds = %for.cond, %for.inc72
  %4 = phi i32 [ %.pre, %for.inc72 ], [ %0, %for.cond ]
  %indvars.iv53 = phi i64 [ %indvars.iv.next54, %for.inc72 ], [ 0, %for.cond ]
  %max.0 = phi i32 [ %max.3, %for.inc72 ], [ 0, %for.cond ]
  %min.0 = phi i32 [ %min.1, %for.inc72 ], [ 0, %for.cond ]
  %t.0 = phi i32 [ %t.1, %for.inc72 ], [ 0, %for.cond ]
  %r.0 = phi i32 [ %r.1, %for.inc72 ], [ undef, %for.cond ]
  %s.0 = phi i32 [ %s.1, %for.inc72 ], [ undef, %for.cond ]
  %5 = sext i32 %4 to i64
  %cmp11 = icmp slt i64 %indvars.iv53, %5
  br i1 %cmp11, label %for.cond13.preheader, label %for.end74

for.cond13.preheader:                             ; preds = %for.cond10
  %6 = load i32, ptr %m, align 4, !tbaa !5
  %arrayidx18 = getelementptr inbounds nuw [8 x [8 x i32]], ptr %a, i64 0, i64 %indvars.iv53
  %smax = call i32 @llvm.smax.i32(i32 %6, i32 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond13

for.cond13:                                       ; preds = %for.cond13.preheader, %for.inc31
  %indvars.iv41 = phi i64 [ 0, %for.cond13.preheader ], [ %indvars.iv.next42, %for.inc31 ]
  %max.1 = phi i32 [ %max.0, %for.cond13.preheader ], [ %max.2, %for.inc31 ]
  %r.1 = phi i32 [ %r.0, %for.cond13.preheader ], [ %r.2, %for.inc31 ]
  %exitcond.not = icmp eq i64 %indvars.iv41, %wide.trip.count
  br i1 %exitcond.not, label %for.cond34.preheader, label %for.body15

for.cond34.preheader:                             ; preds = %for.cond13
  %7 = zext i32 %r.1 to i64
  br label %for.cond34

for.body15:                                       ; preds = %for.cond13
  %cmp16 = icmp eq i64 %indvars.iv41, 0
  br i1 %cmp16, label %if.then, label %if.else

if.then:                                          ; preds = %for.body15
  %8 = load i32, ptr %arrayidx18, align 16, !tbaa !5
  br label %for.inc31

if.else:                                          ; preds = %for.body15
  %arrayidx23 = getelementptr inbounds nuw [8 x [8 x i32]], ptr %a, i64 0, i64 %indvars.iv53, i64 %indvars.iv41
  %9 = load i32, ptr %arrayidx23, align 4, !tbaa !5
  %cmp24 = icmp sgt i32 %9, %max.1
  %spec.select = call i32 @llvm.smax.i32(i32 %9, i32 %max.1)
  %10 = trunc nuw nsw i64 %indvars.iv41 to i32
  %spec.select33 = select i1 %cmp24, i32 %10, i32 %r.1
  br label %for.inc31

for.inc31:                                        ; preds = %if.else, %if.then
  %max.2 = phi i32 [ %8, %if.then ], [ %spec.select, %if.else ]
  %r.2 = phi i32 [ 0, %if.then ], [ %spec.select33, %if.else ]
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1
  br label %for.cond13, !llvm.loop !13

for.cond34:                                       ; preds = %for.cond34.preheader, %for.inc69
  %.pre5657 = phi i32 [ %6, %for.cond34.preheader ], [ %.pre56, %for.inc69 ]
  %indvars.iv50 = phi i64 [ 0, %for.cond34.preheader ], [ %indvars.iv.next51, %for.inc69 ]
  %max.3 = phi i32 [ %max.1, %for.cond34.preheader ], [ %max.4, %for.inc69 ]
  %min.1 = phi i32 [ %min.0, %for.cond34.preheader ], [ %min.4, %for.inc69 ]
  %t.1 = phi i32 [ %t.0, %for.cond34.preheader ], [ %t.2, %for.inc69 ]
  %s.1 = phi i32 [ %s.0, %for.cond34.preheader ], [ %s.2, %for.inc69 ]
  %11 = sext i32 %.pre5657 to i64
  %cmp35 = icmp slt i64 %indvars.iv50, %11
  br i1 %cmp35, label %for.cond37.preheader, label %for.inc72

for.cond37.preheader:                             ; preds = %for.cond34
  %12 = load i32, ptr %n, align 4, !tbaa !5
  %arrayidx44 = getelementptr inbounds nuw [8 x i32], ptr %a, i64 0, i64 %indvars.iv50
  %smax47 = call i32 @llvm.smax.i32(i32 %12, i32 0)
  %wide.trip.count48 = zext nneg i32 %smax47 to i64
  br label %for.cond37

for.cond37:                                       ; preds = %for.cond37.preheader, %for.inc58
  %indvars.iv44 = phi i64 [ 0, %for.cond37.preheader ], [ %indvars.iv.next45, %for.inc58 ]
  %min.2 = phi i32 [ %min.1, %for.cond37.preheader ], [ %min.3, %for.inc58 ]
  %s.2 = phi i32 [ %s.1, %for.cond37.preheader ], [ %s.3, %for.inc58 ]
  %exitcond49.not = icmp eq i64 %indvars.iv44, %wide.trip.count48
  br i1 %exitcond49.not, label %for.end60, label %for.body39

for.body39:                                       ; preds = %for.cond37
  %cmp40 = icmp eq i64 %indvars.iv44, 0
  br i1 %cmp40, label %if.then41, label %if.else45

if.then41:                                        ; preds = %for.body39
  %13 = load i32, ptr %arrayidx44, align 4, !tbaa !5
  br label %for.inc58

if.else45:                                        ; preds = %for.body39
  %arrayidx49 = getelementptr inbounds nuw [8 x [8 x i32]], ptr %a, i64 0, i64 %indvars.iv44, i64 %indvars.iv50
  %14 = load i32, ptr %arrayidx49, align 4, !tbaa !5
  %cmp50 = icmp slt i32 %14, %min.2
  %spec.select34 = call i32 @llvm.smin.i32(i32 %14, i32 %min.2)
  %15 = trunc nuw nsw i64 %indvars.iv44 to i32
  %spec.select35 = select i1 %cmp50, i32 %15, i32 %s.2
  br label %for.inc58

for.inc58:                                        ; preds = %if.else45, %if.then41
  %min.3 = phi i32 [ %13, %if.then41 ], [ %spec.select34, %if.else45 ]
  %s.3 = phi i32 [ 0, %if.then41 ], [ %spec.select35, %if.else45 ]
  %indvars.iv.next45 = add nuw nsw i64 %indvars.iv44, 1
  br label %for.cond37, !llvm.loop !14

for.end60:                                        ; preds = %for.cond37
  %cmp61 = icmp eq i32 %max.3, %min.2
  %16 = zext i32 %s.2 to i64
  %cmp62 = icmp eq i64 %indvars.iv53, %16
  %or.cond = select i1 %cmp61, i1 %cmp62, i1 false
  %cmp64 = icmp eq i64 %indvars.iv50, %7
  %or.cond36 = select i1 %or.cond, i1 %cmp64, i1 false
  br i1 %or.cond36, label %if.then65, label %for.inc69

if.then65:                                        ; preds = %for.end60
  %call66 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %s.2, i32 noundef %r.1)
  %inc67 = add nsw i32 %t.1, 1
  %.pre56.pre = load i32, ptr %m, align 4, !tbaa !5
  br label %for.inc69

for.inc69:                                        ; preds = %for.end60, %if.then65
  %.pre56 = phi i32 [ %.pre56.pre, %if.then65 ], [ %.pre5657, %for.end60 ]
  %max.4 = phi i32 [ 0, %if.then65 ], [ %max.3, %for.end60 ]
  %min.4 = phi i32 [ 100, %if.then65 ], [ %min.2, %for.end60 ]
  %t.2 = phi i32 [ %inc67, %if.then65 ], [ %t.1, %for.end60 ]
  %indvars.iv.next51 = add nuw nsw i64 %indvars.iv50, 1
  br label %for.cond34, !llvm.loop !15

for.inc72:                                        ; preds = %for.cond34
  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond10, !llvm.loop !16

for.end74:                                        ; preds = %for.cond10
  %cmp75 = icmp eq i32 %t.0, 0
  br i1 %cmp75, label %if.then76, label %if.end78

if.then76:                                        ; preds = %for.end74
  %call77 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3)
  br label %if.end78

if.end78:                                         ; preds = %if.then76, %for.end74
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %m) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #5
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %a) #5
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !10, !11}
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
