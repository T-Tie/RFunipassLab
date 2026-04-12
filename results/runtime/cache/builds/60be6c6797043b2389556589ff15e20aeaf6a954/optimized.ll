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
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #4
  call void @llvm.lifetime.start.p0(i64 noundef 40000, ptr noundef nonnull align 16 %a) #4
  call void @llvm.lifetime.start.p0(i64 noundef 400, ptr noundef nonnull align 16 %min1) #4
  call void @llvm.lifetime.start.p0(i64 noundef 400, ptr noundef nonnull align 16 %min2) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %n)
  %arrayidx130 = getelementptr inbounds nuw i8, ptr %a, i64 404
  br label %for.cond

for.cond:                                         ; preds = %for.inc179, %entry
  %i.0 = phi i32 [ 1, %entry ], [ %inc180, %for.inc179 ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp.not = icmp sgt i32 %i.0, %0
  br i1 %cmp.not, label %for.end181, label %for.cond1

for.cond1:                                        ; preds = %for.cond, %for.inc10
  %1 = phi i32 [ %3, %for.inc10 ], [ %0, %for.cond ]
  %indvars.iv79 = phi i64 [ %indvars.iv.next80, %for.inc10 ], [ 0, %for.cond ]
  %2 = sext i32 %1 to i64
  %cmp2 = icmp slt i64 %indvars.iv79, %2
  br i1 %cmp2, label %for.cond4, label %while.cond.preheader

while.cond.preheader:                             ; preds = %for.cond1
  %smax149 = call i32 @llvm.smax.i32(i32 %1, i32 noundef 0)
  br label %while.cond

for.cond4:                                        ; preds = %for.cond1, %for.inc
  %3 = phi i32 [ %.pre, %for.inc ], [ %1, %for.cond1 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.cond1 ]
  %4 = sext i32 %3 to i64
  %cmp5 = icmp slt i64 %indvars.iv, %4
  br i1 %cmp5, label %for.inc, label %for.inc10

for.inc:                                          ; preds = %for.cond4
  %arrayidx8 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv79, i64 %indvars.iv
  %call9 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx8)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond4, !llvm.loop !9

for.inc10:                                        ; preds = %for.cond4
  %indvars.iv.next80 = add nuw nsw i64 %indvars.iv79, 1
  br label %for.cond1, !llvm.loop !12

while.cond:                                       ; preds = %while.cond.preheader, %for.end176
  %indvars.iv86 = phi i32 [ %1, %while.cond.preheader ], [ %indvars.iv.next87, %for.end176 ]
  %sum.0 = phi i32 [ 0, %while.cond.preheader ], [ %add, %for.end176 ]
  %p.0 = phi i32 [ 0, %while.cond.preheader ], [ %inc177, %for.end176 ]
  %exitcond150.not = icmp eq i32 %p.0, %smax149
  br i1 %exitcond150.not, label %for.inc179, label %for.cond14.preheader

for.cond14.preheader:                             ; preds = %while.cond
  %smax145 = call i32 @llvm.smax.i32(i32 %indvars.iv86, i32 noundef 0)
  %wide.trip.count91 = zext nneg i32 %smax145 to i64
  %wide.trip.count = zext i32 %indvars.iv86 to i64
  br label %for.cond14

for.cond14:                                       ; preds = %for.cond14.preheader, %for.inc42
  %indvars.iv88 = phi i64 [ 0, %for.cond14.preheader ], [ %indvars.iv.next89, %for.inc42 ]
  %exitcond92.not = icmp eq i64 %indvars.iv88, %wide.trip.count91
  br i1 %exitcond92.not, label %for.cond45.preheader, label %for.body16

for.cond45.preheader:                             ; preds = %for.cond14
  br label %for.cond45

for.body16:                                       ; preds = %for.cond14
  %arrayidx18 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv88
  %5 = load i32, ptr %arrayidx18, align 16, !tbaa !5, !invariant.load !13
  %arrayidx21 = getelementptr inbounds nuw [100 x i32], ptr %min1, i64 0, i64 %indvars.iv88
  store i32 %5, ptr %arrayidx21, align 4, !tbaa !5
  br label %for.cond22

for.cond22:                                       ; preds = %for.inc39, %for.body16
  %indvars.iv82 = phi i64 [ %indvars.iv.next83, %for.inc39 ], [ 0, %for.body16 ]
  %exitcond.not = icmp eq i64 %indvars.iv82, %wide.trip.count
  br i1 %exitcond.not, label %for.inc42, label %for.body25

for.body25:                                       ; preds = %for.cond22
  %arrayidx31 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv88, i64 %indvars.iv82
  %6 = load i32, ptr %arrayidx31, align 4, !tbaa !5, !invariant.load !13
  %cmp32 = icmp sgt i32 %5, %6
  br i1 %cmp32, label %if.then, label %for.inc39

if.then:                                          ; preds = %for.body25
  store i32 %6, ptr %arrayidx21, align 4, !tbaa !5
  br label %for.inc39

for.inc39:                                        ; preds = %for.body25, %if.then
  %indvars.iv.next83 = add nuw nsw i64 %indvars.iv82, 1
  br label %for.cond22, !llvm.loop !14

for.inc42:                                        ; preds = %for.cond22
  %indvars.iv.next89 = add nuw nsw i64 %indvars.iv88, 1
  br label %for.cond14, !llvm.loop !15

for.cond45:                                       ; preds = %for.cond45.preheader, %for.inc67
  %indvars.iv98 = phi i64 [ 0, %for.cond45.preheader ], [ %indvars.iv.next99, %for.inc67 ]
  %exitcond103.not = icmp eq i64 %indvars.iv98, %wide.trip.count91
  br i1 %exitcond103.not, label %for.cond70.preheader, label %for.cond49.preheader

for.cond70.preheader:                             ; preds = %for.cond45
  br label %for.cond70

for.cond49.preheader:                             ; preds = %for.cond45
  %arrayidx58 = getelementptr inbounds nuw [100 x i32], ptr %min1, i64 0, i64 %indvars.iv98
  br label %for.cond49

for.cond49:                                       ; preds = %for.cond49.preheader, %for.inc64
  %indvars.iv93 = phi i64 [ 0, %for.cond49.preheader ], [ %indvars.iv.next94, %for.inc64 ]
  %exitcond97.not = icmp eq i64 %indvars.iv93, %wide.trip.count
  br i1 %exitcond97.not, label %for.inc67, label %for.inc64

for.inc64:                                        ; preds = %for.cond49
  %arrayidx56 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv98, i64 %indvars.iv93
  %7 = load i32, ptr %arrayidx56, align 4, !tbaa !5, !invariant.load !13
  %8 = load i32, ptr %arrayidx58, align 4, !tbaa !5, !invariant.load !13
  %sub59 = sub nsw i32 %7, %8
  store i32 %sub59, ptr %arrayidx56, align 4, !tbaa !5
  %indvars.iv.next94 = add nuw nsw i64 %indvars.iv93, 1
  br label %for.cond49, !llvm.loop !16

for.inc67:                                        ; preds = %for.cond49
  %indvars.iv.next99 = add nuw nsw i64 %indvars.iv98, 1
  br label %for.cond45, !llvm.loop !17

for.cond70:                                       ; preds = %for.cond70.preheader, %for.inc101
  %indvars.iv109 = phi i64 [ 0, %for.cond70.preheader ], [ %indvars.iv.next110, %for.inc101 ]
  %exitcond114.not = icmp eq i64 %indvars.iv109, %wide.trip.count91
  br i1 %exitcond114.not, label %for.cond104.preheader, label %for.body73

for.cond104.preheader:                            ; preds = %for.cond70
  br label %for.cond104

for.body73:                                       ; preds = %for.cond70
  %arrayidx76 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %indvars.iv109
  %9 = load i32, ptr %arrayidx76, align 4, !tbaa !5, !invariant.load !13
  %arrayidx78 = getelementptr inbounds nuw [100 x i32], ptr %min2, i64 0, i64 %indvars.iv109
  store i32 %9, ptr %arrayidx78, align 4, !tbaa !5
  br label %for.cond79

for.cond79:                                       ; preds = %for.inc98, %for.body73
  %indvars.iv104 = phi i64 [ %indvars.iv.next105, %for.inc98 ], [ 0, %for.body73 ]
  %exitcond108.not = icmp eq i64 %indvars.iv104, %wide.trip.count
  br i1 %exitcond108.not, label %for.inc101, label %for.body82

for.body82:                                       ; preds = %for.cond79
  %arrayidx88 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv104, i64 %indvars.iv109
  %10 = load i32, ptr %arrayidx88, align 4, !tbaa !5, !invariant.load !13
  %cmp89 = icmp sgt i32 %9, %10
  br i1 %cmp89, label %if.then90, label %for.inc98

if.then90:                                        ; preds = %for.body82
  store i32 %10, ptr %arrayidx78, align 4, !tbaa !5
  br label %for.inc98

for.inc98:                                        ; preds = %for.body82, %if.then90
  %indvars.iv.next105 = add nuw nsw i64 %indvars.iv104, 1
  br label %for.cond79, !llvm.loop !18

for.inc101:                                       ; preds = %for.cond79
  %indvars.iv.next110 = add nuw nsw i64 %indvars.iv109, 1
  br label %for.cond70, !llvm.loop !19

for.cond104:                                      ; preds = %for.cond104.preheader, %for.inc126
  %indvars.iv120 = phi i64 [ 0, %for.cond104.preheader ], [ %indvars.iv.next121, %for.inc126 ]
  %exitcond125.not = icmp eq i64 %indvars.iv120, %wide.trip.count91
  br i1 %exitcond125.not, label %for.end128, label %for.cond108

for.cond108:                                      ; preds = %for.cond104, %for.inc123
  %indvars.iv115 = phi i64 [ %indvars.iv.next116, %for.inc123 ], [ 0, %for.cond104 ]
  %exitcond119.not = icmp eq i64 %indvars.iv115, %wide.trip.count
  br i1 %exitcond119.not, label %for.inc126, label %for.inc123

for.inc123:                                       ; preds = %for.cond108
  %arrayidx115 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv120, i64 %indvars.iv115
  %11 = load i32, ptr %arrayidx115, align 4, !tbaa !5, !invariant.load !13
  %arrayidx117 = getelementptr inbounds nuw [100 x i32], ptr %min2, i64 0, i64 %indvars.iv115
  %12 = load i32, ptr %arrayidx117, align 4, !tbaa !5, !invariant.load !13
  %sub118 = sub nsw i32 %11, %12
  store i32 %sub118, ptr %arrayidx115, align 4, !tbaa !5
  %indvars.iv.next116 = add nuw nsw i64 %indvars.iv115, 1
  br label %for.cond108, !llvm.loop !20

for.inc126:                                       ; preds = %for.cond108
  %indvars.iv.next121 = add nuw nsw i64 %indvars.iv120, 1
  br label %for.cond104, !llvm.loop !21

for.end128:                                       ; preds = %for.cond104
  %13 = load i32, ptr %arrayidx130, align 4, !tbaa !5
  br label %for.cond131

for.cond131:                                      ; preds = %for.inc151, %for.end128
  %indvars.iv131 = phi i64 [ %indvars.iv.next132, %for.inc151 ], [ 0, %for.end128 ]
  %exitcond136.not = icmp eq i64 %indvars.iv131, %wide.trip.count91
  br i1 %exitcond136.not, label %for.cond154.preheader, label %for.cond135

for.cond154.preheader:                            ; preds = %for.cond131
  br label %for.cond154

for.cond135:                                      ; preds = %for.cond131, %for.inc148
  %indvars.iv126 = phi i64 [ %indvars.iv.next127, %for.inc148 ], [ 1, %for.cond131 ]
  %exitcond130.not = icmp eq i64 %indvars.iv126, %wide.trip.count
  br i1 %exitcond130.not, label %for.inc151, label %for.inc148

for.inc148:                                       ; preds = %for.cond135
  %indvars.iv.next127 = add nuw nsw i64 %indvars.iv126, 1
  %arrayidx143 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv131, i64 %indvars.iv.next127
  %14 = load i32, ptr %arrayidx143, align 4, !tbaa !5, !invariant.load !13
  %arrayidx147 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv131, i64 %indvars.iv126
  store i32 %14, ptr %arrayidx147, align 4, !tbaa !5
  br label %for.cond135, !llvm.loop !22

for.inc151:                                       ; preds = %for.cond135
  %indvars.iv.next132 = add nuw nsw i64 %indvars.iv131, 1
  br label %for.cond131, !llvm.loop !23

for.cond154:                                      ; preds = %for.cond154.preheader, %for.inc174
  %indvars.iv142 = phi i64 [ 0, %for.cond154.preheader ], [ %indvars.iv.next143, %for.inc174 ]
  %exitcond147.not = icmp eq i64 %indvars.iv142, %wide.trip.count91
  br i1 %exitcond147.not, label %for.end176, label %for.cond158

for.cond158:                                      ; preds = %for.cond154, %for.inc171
  %indvars.iv137 = phi i64 [ %indvars.iv.next138, %for.inc171 ], [ 1, %for.cond154 ]
  %exitcond141.not = icmp eq i64 %indvars.iv137, %wide.trip.count
  br i1 %exitcond141.not, label %for.inc174, label %for.inc171

for.inc171:                                       ; preds = %for.cond158
  %indvars.iv.next138 = add nuw nsw i64 %indvars.iv137, 1
  %arrayidx166 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv.next138, i64 %indvars.iv142
  %15 = load i32, ptr %arrayidx166, align 4, !tbaa !5, !invariant.load !13
  %arrayidx170 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv137, i64 %indvars.iv142
  store i32 %15, ptr %arrayidx170, align 4, !tbaa !5
  br label %for.cond158, !llvm.loop !24

for.inc174:                                       ; preds = %for.cond158
  %indvars.iv.next143 = add nuw nsw i64 %indvars.iv142, 1
  br label %for.cond154, !llvm.loop !25

for.end176:                                       ; preds = %for.cond154
  %add = add nsw i32 %13, %sum.0
  %inc177 = add nuw i32 %p.0, 1
  %indvars.iv.next87 = add i32 %indvars.iv86, -1
  br label %while.cond, !llvm.loop !26

for.inc179:                                       ; preds = %while.cond
  %call178 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %sum.0)
  %inc180 = add nuw nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !27

for.end181:                                       ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 400, ptr noundef nonnull %min2) #5
  call void @llvm.lifetime.end.p0(i64 noundef 400, ptr noundef nonnull %min1) #5
  call void @llvm.lifetime.end.p0(i64 noundef 40000, ptr noundef nonnull %a) #5
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
