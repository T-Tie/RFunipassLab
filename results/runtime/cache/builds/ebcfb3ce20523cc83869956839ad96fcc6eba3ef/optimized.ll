; ModuleID = '<stdin>'
source_filename = "/tmp/tmpriweriyt.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %a = alloca [100 x [100 x i32]], align 16
  %min1 = alloca [100 x i32], align 16
  %min2 = alloca [100 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #5
  call void @llvm.lifetime.start.p0(i64 noundef 40000, ptr noundef nonnull align 16 %a) #5
  call void @llvm.lifetime.start.p0(i64 noundef 400, ptr noundef nonnull align 16 %min1) #5
  call void @llvm.lifetime.start.p0(i64 noundef 400, ptr noundef nonnull align 16 %min2) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %n)
  %arrayidx130 = getelementptr inbounds nuw i8, ptr %a, i64 404
  br label %for.cond

for.cond:                                         ; preds = %while.end, %entry
  %i.0 = phi i32 [ 1, %entry ], [ %inc180, %while.end ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp.not = icmp sgt i32 %i.0, %0
  br i1 %cmp.not, label %for.end181, label %for.cond1

for.cond1:                                        ; preds = %for.cond, %for.end
  %1 = phi i32 [ %3, %for.end ], [ %0, %for.cond ]
  %indvars.iv69 = phi i64 [ %indvars.iv.next70, %for.end ], [ 0, %for.cond ]
  %2 = sext i32 %1 to i64
  %cmp2 = icmp slt i64 %indvars.iv69, %2
  br i1 %cmp2, label %for.cond4, label %while.cond.preheader

while.cond.preheader:                             ; preds = %for.cond1
  %smax139 = call i32 @llvm.smax.i32(i32 %1, i32 noundef 0)
  br label %while.cond

for.cond4:                                        ; preds = %for.cond1, %for.body6
  %3 = phi i32 [ %.pre, %for.body6 ], [ %1, %for.cond1 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body6 ], [ 0, %for.cond1 ]
  %4 = sext i32 %3 to i64
  %cmp5 = icmp slt i64 %indvars.iv, %4
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %arrayidx8 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv69, i64 %indvars.iv
  %call9 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx8)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond4, !llvm.loop !9

for.end:                                          ; preds = %for.cond4
  %indvars.iv.next70 = add nuw nsw i64 %indvars.iv69, 1
  br label %for.cond1, !llvm.loop !12

while.cond:                                       ; preds = %while.cond.preheader, %for.end176
  %indvars.iv76 = phi i32 [ %1, %while.cond.preheader ], [ %indvars.iv.next77, %for.end176 ]
  %sum.0 = phi i32 [ 0, %while.cond.preheader ], [ %add, %for.end176 ]
  %p.0 = phi i32 [ 0, %while.cond.preheader ], [ %inc177, %for.end176 ]
  %exitcond140.not = icmp eq i32 %p.0, %smax139
  br i1 %exitcond140.not, label %while.end, label %for.cond14.preheader

for.cond14.preheader:                             ; preds = %while.cond
  %smax135 = call i32 @llvm.smax.i32(i32 %indvars.iv76, i32 noundef 0)
  %wide.trip.count81 = zext nneg i32 %smax135 to i64
  %wide.trip.count = zext i32 %indvars.iv76 to i64
  br label %for.cond14

for.cond14:                                       ; preds = %for.cond14.preheader, %for.end41
  %indvars.iv78 = phi i64 [ 0, %for.cond14.preheader ], [ %indvars.iv.next79, %for.end41 ]
  %exitcond82.not = icmp eq i64 %indvars.iv78, %wide.trip.count81
  br i1 %exitcond82.not, label %for.cond45, label %for.body16

for.body16:                                       ; preds = %for.cond14
  %arrayidx18 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv78
  %5 = load i32, ptr %arrayidx18, align 16, !tbaa !5, !invariant.load !13
  %arrayidx21 = getelementptr inbounds nuw [100 x i32], ptr %min1, i64 0, i64 %indvars.iv78
  store i32 %5, ptr %arrayidx21, align 4, !tbaa !5
  br label %for.cond22

for.cond22:                                       ; preds = %if.end, %for.body16
  %indvars.iv72 = phi i64 [ %indvars.iv.next73, %if.end ], [ 0, %for.body16 ]
  %exitcond.not = icmp eq i64 %indvars.iv72, %wide.trip.count
  br i1 %exitcond.not, label %for.end41, label %for.body25

for.body25:                                       ; preds = %for.cond22
  %arrayidx31 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv78, i64 %indvars.iv72
  %6 = load i32, ptr %arrayidx31, align 4, !tbaa !5, !invariant.load !13
  %cmp32 = icmp sgt i32 %5, %6
  br i1 %cmp32, label %if.then, label %if.end

if.then:                                          ; preds = %for.body25
  store i32 %6, ptr %arrayidx21, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body25
  %indvars.iv.next73 = add nuw nsw i64 %indvars.iv72, 1
  br label %for.cond22, !llvm.loop !14

for.end41:                                        ; preds = %for.cond22
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 1
  br label %for.cond14, !llvm.loop !15

for.cond45:                                       ; preds = %for.cond14, %for.end66
  %indvars.iv88 = phi i64 [ %indvars.iv.next89, %for.end66 ], [ 0, %for.cond14 ]
  %exitcond93.not = icmp eq i64 %indvars.iv88, %wide.trip.count81
  br i1 %exitcond93.not, label %for.cond70, label %for.cond49.preheader

for.cond49.preheader:                             ; preds = %for.cond45
  %arrayidx58 = getelementptr inbounds nuw [100 x i32], ptr %min1, i64 0, i64 %indvars.iv88
  br label %for.cond49

for.cond49:                                       ; preds = %for.cond49.preheader, %for.body52
  %indvars.iv83 = phi i64 [ 0, %for.cond49.preheader ], [ %indvars.iv.next84, %for.body52 ]
  %exitcond87.not = icmp eq i64 %indvars.iv83, %wide.trip.count
  br i1 %exitcond87.not, label %for.end66, label %for.body52

for.body52:                                       ; preds = %for.cond49
  %arrayidx56 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv88, i64 %indvars.iv83
  %7 = load i32, ptr %arrayidx56, align 4, !tbaa !5, !invariant.load !13
  %8 = load i32, ptr %arrayidx58, align 4, !tbaa !5, !invariant.load !13
  %sub59 = sub nsw i32 %7, %8
  store i32 %sub59, ptr %arrayidx56, align 4, !tbaa !5
  %indvars.iv.next84 = add nuw nsw i64 %indvars.iv83, 1
  br label %for.cond49, !llvm.loop !16

for.end66:                                        ; preds = %for.cond49
  %indvars.iv.next89 = add nuw nsw i64 %indvars.iv88, 1
  br label %for.cond45, !llvm.loop !17

for.cond70:                                       ; preds = %for.cond45, %for.end100
  %indvars.iv99 = phi i64 [ %indvars.iv.next100, %for.end100 ], [ 0, %for.cond45 ]
  %exitcond104.not = icmp eq i64 %indvars.iv99, %wide.trip.count81
  br i1 %exitcond104.not, label %for.cond104, label %for.body73

for.body73:                                       ; preds = %for.cond70
  %arrayidx76 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %indvars.iv99
  %9 = load i32, ptr %arrayidx76, align 4, !tbaa !5, !invariant.load !13
  %arrayidx78 = getelementptr inbounds nuw [100 x i32], ptr %min2, i64 0, i64 %indvars.iv99
  store i32 %9, ptr %arrayidx78, align 4, !tbaa !5
  br label %for.cond79

for.cond79:                                       ; preds = %if.end97, %for.body73
  %indvars.iv94 = phi i64 [ %indvars.iv.next95, %if.end97 ], [ 0, %for.body73 ]
  %exitcond98.not = icmp eq i64 %indvars.iv94, %wide.trip.count
  br i1 %exitcond98.not, label %for.end100, label %for.body82

for.body82:                                       ; preds = %for.cond79
  %arrayidx88 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv94, i64 %indvars.iv99
  %10 = load i32, ptr %arrayidx88, align 4, !tbaa !5, !invariant.load !13
  %cmp89 = icmp sgt i32 %9, %10
  br i1 %cmp89, label %if.then90, label %if.end97

if.then90:                                        ; preds = %for.body82
  store i32 %10, ptr %arrayidx78, align 4, !tbaa !5
  br label %if.end97

if.end97:                                         ; preds = %if.then90, %for.body82
  %indvars.iv.next95 = add nuw nsw i64 %indvars.iv94, 1
  br label %for.cond79, !llvm.loop !18

for.end100:                                       ; preds = %for.cond79
  %indvars.iv.next100 = add nuw nsw i64 %indvars.iv99, 1
  br label %for.cond70, !llvm.loop !19

for.cond104:                                      ; preds = %for.cond70, %for.end125
  %indvars.iv110 = phi i64 [ %indvars.iv.next111, %for.end125 ], [ 0, %for.cond70 ]
  %exitcond115.not = icmp eq i64 %indvars.iv110, %wide.trip.count81
  br i1 %exitcond115.not, label %for.end128, label %for.cond108

for.cond108:                                      ; preds = %for.cond104, %for.body111
  %indvars.iv105 = phi i64 [ %indvars.iv.next106, %for.body111 ], [ 0, %for.cond104 ]
  %exitcond109.not = icmp eq i64 %indvars.iv105, %wide.trip.count
  br i1 %exitcond109.not, label %for.end125, label %for.body111

for.body111:                                      ; preds = %for.cond108
  %arrayidx115 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv110, i64 %indvars.iv105
  %11 = load i32, ptr %arrayidx115, align 4, !tbaa !5, !invariant.load !13
  %arrayidx117 = getelementptr inbounds nuw [100 x i32], ptr %min2, i64 0, i64 %indvars.iv105
  %12 = load i32, ptr %arrayidx117, align 4, !tbaa !5, !invariant.load !13
  %sub118 = sub nsw i32 %11, %12
  store i32 %sub118, ptr %arrayidx115, align 4, !tbaa !5
  %indvars.iv.next106 = add nuw nsw i64 %indvars.iv105, 1
  br label %for.cond108, !llvm.loop !20

for.end125:                                       ; preds = %for.cond108
  %indvars.iv.next111 = add nuw nsw i64 %indvars.iv110, 1
  br label %for.cond104, !llvm.loop !21

for.end128:                                       ; preds = %for.cond104
  %13 = load i32, ptr %arrayidx130, align 4, !tbaa !5
  br label %for.cond131

for.cond131:                                      ; preds = %for.end150, %for.end128
  %indvars.iv121 = phi i64 [ %indvars.iv.next122, %for.end150 ], [ 0, %for.end128 ]
  %exitcond126.not = icmp eq i64 %indvars.iv121, %wide.trip.count81
  br i1 %exitcond126.not, label %for.cond154, label %for.cond135

for.cond135:                                      ; preds = %for.cond131, %for.body138
  %indvars.iv116 = phi i64 [ %indvars.iv.next117, %for.body138 ], [ 1, %for.cond131 ]
  %exitcond120.not = icmp eq i64 %indvars.iv116, %wide.trip.count
  br i1 %exitcond120.not, label %for.end150, label %for.body138

for.body138:                                      ; preds = %for.cond135
  %indvars.iv.next117 = add nuw nsw i64 %indvars.iv116, 1
  %arrayidx143 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv121, i64 %indvars.iv.next117
  %14 = load i32, ptr %arrayidx143, align 4, !tbaa !5, !invariant.load !13
  %arrayidx147 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv121, i64 %indvars.iv116
  store i32 %14, ptr %arrayidx147, align 4, !tbaa !5
  br label %for.cond135, !llvm.loop !22

for.end150:                                       ; preds = %for.cond135
  %indvars.iv.next122 = add nuw nsw i64 %indvars.iv121, 1
  br label %for.cond131, !llvm.loop !23

for.cond154:                                      ; preds = %for.cond131, %for.end173
  %indvars.iv132 = phi i64 [ %indvars.iv.next133, %for.end173 ], [ 0, %for.cond131 ]
  %exitcond137.not = icmp eq i64 %indvars.iv132, %wide.trip.count81
  br i1 %exitcond137.not, label %for.end176, label %for.cond158

for.cond158:                                      ; preds = %for.cond154, %for.body161
  %indvars.iv127 = phi i64 [ %indvars.iv.next128, %for.body161 ], [ 1, %for.cond154 ]
  %exitcond131.not = icmp eq i64 %indvars.iv127, %wide.trip.count
  br i1 %exitcond131.not, label %for.end173, label %for.body161

for.body161:                                      ; preds = %for.cond158
  %indvars.iv.next128 = add nuw nsw i64 %indvars.iv127, 1
  %arrayidx166 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv.next128, i64 %indvars.iv132
  %15 = load i32, ptr %arrayidx166, align 4, !tbaa !5, !invariant.load !13
  %arrayidx170 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv127, i64 %indvars.iv132
  store i32 %15, ptr %arrayidx170, align 4, !tbaa !5
  br label %for.cond158, !llvm.loop !24

for.end173:                                       ; preds = %for.cond158
  %indvars.iv.next133 = add nuw nsw i64 %indvars.iv132, 1
  br label %for.cond154, !llvm.loop !25

for.end176:                                       ; preds = %for.cond154
  %add = add nsw i32 %13, %sum.0
  %inc177 = add nuw i32 %p.0, 1
  %indvars.iv.next77 = add i32 %indvars.iv76, -1
  br label %while.cond, !llvm.loop !26

while.end:                                        ; preds = %while.cond
  %call178 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %sum.0) #6
  %inc180 = add nuw nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !27

for.end181:                                       ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 400, ptr noundef nonnull %min2) #6
  call void @llvm.lifetime.end.p0(i64 noundef 400, ptr noundef nonnull %min1) #6
  call void @llvm.lifetime.end.p0(i64 noundef 40000, ptr noundef nonnull %a) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #6
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nofree nounwind }
attributes #6 = { nounwind }

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
!13 = !{}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11}
!18 = distinct !{!18, !10, !11}
!19 = distinct !{!19, !10, !11}
!20 = distinct !{!20, !10, !11}
!21 = distinct !{!21, !10, !11}
!22 = distinct !{!22, !10, !11}
!23 = distinct !{!23, !10, !11}
!24 = distinct !{!24, !10, !11}
!25 = distinct !{!25, !10, !11}
!26 = distinct !{!26, !10, !11}
!27 = distinct !{!27, !10, !11}
