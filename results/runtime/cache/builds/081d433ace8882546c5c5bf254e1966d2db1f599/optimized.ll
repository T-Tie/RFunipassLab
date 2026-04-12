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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #4
  call void @llvm.lifetime.start.p0(i64 40000, ptr nonnull %a) #4
  call void @llvm.lifetime.start.p0(i64 400, ptr nonnull %min1) #4
  call void @llvm.lifetime.start.p0(i64 400, ptr nonnull %min2) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  %arrayidx130 = getelementptr inbounds nuw i8, ptr %a, i64 404
  br label %for.cond

for.cond:                                         ; preds = %for.inc179, %entry
  %i.0 = phi i32 [ 1, %entry ], [ %inc180, %for.inc179 ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp.not = icmp sgt i32 %i.0, %0
  br i1 %cmp.not, label %for.end181, label %for.cond1

for.cond1:                                        ; preds = %for.cond, %for.inc10
  %1 = phi i32 [ %3, %for.inc10 ], [ %0, %for.cond ]
  %indvars.iv77 = phi i64 [ %indvars.iv.next78, %for.inc10 ], [ 0, %for.cond ]
  %2 = sext i32 %1 to i64
  %cmp2 = icmp slt i64 %indvars.iv77, %2
  br i1 %cmp2, label %for.cond4, label %while.cond.preheader

while.cond.preheader:                             ; preds = %for.cond1
  %smax147 = call i32 @llvm.smax.i32(i32 %1, i32 0)
  br label %while.cond

for.cond4:                                        ; preds = %for.cond1, %for.inc
  %3 = phi i32 [ %.pre, %for.inc ], [ %1, %for.cond1 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.cond1 ]
  %4 = sext i32 %3 to i64
  %cmp5 = icmp slt i64 %indvars.iv, %4
  br i1 %cmp5, label %for.inc, label %for.inc10

for.inc:                                          ; preds = %for.cond4
  %arrayidx8 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv77, i64 %indvars.iv
  %call9 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx8)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond4, !llvm.loop !9

for.inc10:                                        ; preds = %for.cond4
  %indvars.iv.next78 = add nuw nsw i64 %indvars.iv77, 1
  br label %for.cond1, !llvm.loop !12

while.cond:                                       ; preds = %while.cond.preheader, %for.end176
  %indvars.iv84 = phi i32 [ %1, %while.cond.preheader ], [ %indvars.iv.next85, %for.end176 ]
  %sum.0 = phi i32 [ 0, %while.cond.preheader ], [ %add, %for.end176 ]
  %p.0 = phi i32 [ 0, %while.cond.preheader ], [ %inc177, %for.end176 ]
  %exitcond148.not = icmp eq i32 %p.0, %smax147
  br i1 %exitcond148.not, label %for.inc179, label %for.cond14.preheader

for.cond14.preheader:                             ; preds = %while.cond
  %smax143 = call i32 @llvm.smax.i32(i32 %indvars.iv84, i32 0)
  %wide.trip.count89 = zext nneg i32 %smax143 to i64
  %wide.trip.count = zext i32 %indvars.iv84 to i64
  br label %for.cond14

for.cond14:                                       ; preds = %for.cond14.preheader, %for.inc42
  %indvars.iv86 = phi i64 [ 0, %for.cond14.preheader ], [ %indvars.iv.next87, %for.inc42 ]
  %exitcond90.not = icmp eq i64 %indvars.iv86, %wide.trip.count89
  br i1 %exitcond90.not, label %for.cond45.preheader, label %for.body16

for.cond45.preheader:                             ; preds = %for.cond14
  %wide.trip.count94 = zext i32 %indvars.iv84 to i64
  br label %for.cond45

for.body16:                                       ; preds = %for.cond14
  %arrayidx18 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv86
  %5 = load i32, ptr %arrayidx18, align 16, !tbaa !5
  %arrayidx21 = getelementptr inbounds nuw [100 x i32], ptr %min1, i64 0, i64 %indvars.iv86
  store i32 %5, ptr %arrayidx21, align 4, !tbaa !5
  br label %for.cond22

for.cond22:                                       ; preds = %for.body25, %for.body16
  %6 = phi i32 [ %spec.store.select, %for.body25 ], [ %5, %for.body16 ]
  %indvars.iv80 = phi i64 [ %indvars.iv.next81, %for.body25 ], [ 0, %for.body16 ]
  %exitcond.not = icmp eq i64 %indvars.iv80, %wide.trip.count
  br i1 %exitcond.not, label %for.inc42, label %for.body25

for.body25:                                       ; preds = %for.cond22
  %arrayidx31 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv86, i64 %indvars.iv80
  %7 = load i32, ptr %arrayidx31, align 4, !tbaa !5
  %spec.store.select = call i32 @llvm.smin.i32(i32 %6, i32 %7)
  store i32 %spec.store.select, ptr %arrayidx21, align 4
  %indvars.iv.next81 = add nuw nsw i64 %indvars.iv80, 1
  br label %for.cond22, !llvm.loop !13

for.inc42:                                        ; preds = %for.cond22
  %indvars.iv.next87 = add nuw nsw i64 %indvars.iv86, 1
  br label %for.cond14, !llvm.loop !14

for.cond45:                                       ; preds = %for.cond45.preheader, %for.inc67
  %indvars.iv96 = phi i64 [ 0, %for.cond45.preheader ], [ %indvars.iv.next97, %for.inc67 ]
  %exitcond101.not = icmp eq i64 %indvars.iv96, %wide.trip.count89
  br i1 %exitcond101.not, label %for.cond70.preheader, label %for.cond49.preheader

for.cond70.preheader:                             ; preds = %for.cond45
  %wide.trip.count105 = zext i32 %indvars.iv84 to i64
  br label %for.cond70

for.cond49.preheader:                             ; preds = %for.cond45
  %arrayidx58 = getelementptr inbounds nuw [100 x i32], ptr %min1, i64 0, i64 %indvars.iv96
  br label %for.cond49

for.cond49:                                       ; preds = %for.cond49.preheader, %for.inc64
  %indvars.iv91 = phi i64 [ 0, %for.cond49.preheader ], [ %indvars.iv.next92, %for.inc64 ]
  %exitcond95.not = icmp eq i64 %indvars.iv91, %wide.trip.count94
  br i1 %exitcond95.not, label %for.inc67, label %for.inc64

for.inc64:                                        ; preds = %for.cond49
  %arrayidx56 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv96, i64 %indvars.iv91
  %8 = load i32, ptr %arrayidx56, align 4, !tbaa !5
  %9 = load i32, ptr %arrayidx58, align 4, !tbaa !5
  %sub59 = sub nsw i32 %8, %9
  store i32 %sub59, ptr %arrayidx56, align 4, !tbaa !5
  %indvars.iv.next92 = add nuw nsw i64 %indvars.iv91, 1
  br label %for.cond49, !llvm.loop !15

for.inc67:                                        ; preds = %for.cond49
  %indvars.iv.next97 = add nuw nsw i64 %indvars.iv96, 1
  br label %for.cond45, !llvm.loop !16

for.cond70:                                       ; preds = %for.cond70.preheader, %for.inc101
  %indvars.iv107 = phi i64 [ 0, %for.cond70.preheader ], [ %indvars.iv.next108, %for.inc101 ]
  %exitcond112.not = icmp eq i64 %indvars.iv107, %wide.trip.count89
  br i1 %exitcond112.not, label %for.cond104.preheader, label %for.body73

for.cond104.preheader:                            ; preds = %for.cond70
  %wide.trip.count116 = zext i32 %indvars.iv84 to i64
  br label %for.cond104

for.body73:                                       ; preds = %for.cond70
  %arrayidx76 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %indvars.iv107
  %10 = load i32, ptr %arrayidx76, align 4, !tbaa !5
  %arrayidx78 = getelementptr inbounds nuw [100 x i32], ptr %min2, i64 0, i64 %indvars.iv107
  store i32 %10, ptr %arrayidx78, align 4, !tbaa !5
  br label %for.cond79

for.cond79:                                       ; preds = %for.body82, %for.body73
  %11 = phi i32 [ %spec.store.select75, %for.body82 ], [ %10, %for.body73 ]
  %indvars.iv102 = phi i64 [ %indvars.iv.next103, %for.body82 ], [ 0, %for.body73 ]
  %exitcond106.not = icmp eq i64 %indvars.iv102, %wide.trip.count105
  br i1 %exitcond106.not, label %for.inc101, label %for.body82

for.body82:                                       ; preds = %for.cond79
  %arrayidx88 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv102, i64 %indvars.iv107
  %12 = load i32, ptr %arrayidx88, align 4, !tbaa !5
  %spec.store.select75 = call i32 @llvm.smin.i32(i32 %11, i32 %12)
  store i32 %spec.store.select75, ptr %arrayidx78, align 4
  %indvars.iv.next103 = add nuw nsw i64 %indvars.iv102, 1
  br label %for.cond79, !llvm.loop !17

for.inc101:                                       ; preds = %for.cond79
  %indvars.iv.next108 = add nuw nsw i64 %indvars.iv107, 1
  br label %for.cond70, !llvm.loop !18

for.cond104:                                      ; preds = %for.cond104.preheader, %for.inc126
  %indvars.iv118 = phi i64 [ 0, %for.cond104.preheader ], [ %indvars.iv.next119, %for.inc126 ]
  %exitcond123.not = icmp eq i64 %indvars.iv118, %wide.trip.count89
  br i1 %exitcond123.not, label %for.end128, label %for.cond108

for.cond108:                                      ; preds = %for.cond104, %for.inc123
  %indvars.iv113 = phi i64 [ %indvars.iv.next114, %for.inc123 ], [ 0, %for.cond104 ]
  %exitcond117.not = icmp eq i64 %indvars.iv113, %wide.trip.count116
  br i1 %exitcond117.not, label %for.inc126, label %for.inc123

for.inc123:                                       ; preds = %for.cond108
  %arrayidx115 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv118, i64 %indvars.iv113
  %13 = load i32, ptr %arrayidx115, align 4, !tbaa !5
  %arrayidx117 = getelementptr inbounds nuw [100 x i32], ptr %min2, i64 0, i64 %indvars.iv113
  %14 = load i32, ptr %arrayidx117, align 4, !tbaa !5
  %sub118 = sub nsw i32 %13, %14
  store i32 %sub118, ptr %arrayidx115, align 4, !tbaa !5
  %indvars.iv.next114 = add nuw nsw i64 %indvars.iv113, 1
  br label %for.cond108, !llvm.loop !19

for.inc126:                                       ; preds = %for.cond108
  %indvars.iv.next119 = add nuw nsw i64 %indvars.iv118, 1
  br label %for.cond104, !llvm.loop !20

for.end128:                                       ; preds = %for.cond104
  %15 = load i32, ptr %arrayidx130, align 4, !tbaa !5
  %wide.trip.count127 = zext i32 %indvars.iv84 to i64
  br label %for.cond131

for.cond131:                                      ; preds = %for.inc151, %for.end128
  %indvars.iv129 = phi i64 [ %indvars.iv.next130, %for.inc151 ], [ 0, %for.end128 ]
  %exitcond134.not = icmp eq i64 %indvars.iv129, %wide.trip.count89
  br i1 %exitcond134.not, label %for.cond154.preheader, label %for.cond135

for.cond154.preheader:                            ; preds = %for.cond131
  %wide.trip.count138 = zext i32 %indvars.iv84 to i64
  br label %for.cond154

for.cond135:                                      ; preds = %for.cond131, %for.inc148
  %indvars.iv124 = phi i64 [ %indvars.iv.next125, %for.inc148 ], [ 1, %for.cond131 ]
  %exitcond128.not = icmp eq i64 %indvars.iv124, %wide.trip.count127
  br i1 %exitcond128.not, label %for.inc151, label %for.inc148

for.inc148:                                       ; preds = %for.cond135
  %indvars.iv.next125 = add nuw nsw i64 %indvars.iv124, 1
  %arrayidx143 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv129, i64 %indvars.iv.next125
  %16 = load i32, ptr %arrayidx143, align 4, !tbaa !5
  %arrayidx147 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv129, i64 %indvars.iv124
  store i32 %16, ptr %arrayidx147, align 4, !tbaa !5
  br label %for.cond135, !llvm.loop !21

for.inc151:                                       ; preds = %for.cond135
  %indvars.iv.next130 = add nuw nsw i64 %indvars.iv129, 1
  br label %for.cond131, !llvm.loop !22

for.cond154:                                      ; preds = %for.cond154.preheader, %for.inc174
  %indvars.iv140 = phi i64 [ 0, %for.cond154.preheader ], [ %indvars.iv.next141, %for.inc174 ]
  %exitcond145.not = icmp eq i64 %indvars.iv140, %wide.trip.count89
  br i1 %exitcond145.not, label %for.end176, label %for.cond158

for.cond158:                                      ; preds = %for.cond154, %for.inc171
  %indvars.iv135 = phi i64 [ %indvars.iv.next136, %for.inc171 ], [ 1, %for.cond154 ]
  %exitcond139.not = icmp eq i64 %indvars.iv135, %wide.trip.count138
  br i1 %exitcond139.not, label %for.inc174, label %for.inc171

for.inc171:                                       ; preds = %for.cond158
  %indvars.iv.next136 = add nuw nsw i64 %indvars.iv135, 1
  %arrayidx166 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv.next136, i64 %indvars.iv140
  %17 = load i32, ptr %arrayidx166, align 4, !tbaa !5
  %arrayidx170 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv135, i64 %indvars.iv140
  store i32 %17, ptr %arrayidx170, align 4, !tbaa !5
  br label %for.cond158, !llvm.loop !23

for.inc174:                                       ; preds = %for.cond158
  %indvars.iv.next141 = add nuw nsw i64 %indvars.iv140, 1
  br label %for.cond154, !llvm.loop !24

for.end176:                                       ; preds = %for.cond154
  %add = add nsw i32 %15, %sum.0
  %inc177 = add nuw i32 %p.0, 1
  %indvars.iv.next85 = add i32 %indvars.iv84, -1
  br label %while.cond, !llvm.loop !25

for.inc179:                                       ; preds = %while.cond
  %call178 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %sum.0)
  %inc180 = add nuw nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !26

for.end181:                                       ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 400, ptr nonnull %min2) #4
  call void @llvm.lifetime.end.p0(i64 400, ptr nonnull %min1) #4
  call void @llvm.lifetime.end.p0(i64 40000, ptr nonnull %a) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #4
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
attributes #4 = { nounwind }

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
