; ModuleID = '<stdin>'
source_filename = "/tmp/tmpqlq7dl2w.cpp"
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
  %s = alloca [100 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp95 = icmp sgt i32 %0, 0
  br i1 %cmp95, label %for.body, label %for.end174

for.body:                                         ; preds = %entry, %for.end170
  %1 = phi i32 [ %25, %for.end170 ], [ %0, %entry ]
  %k.096 = phi i32 [ %inc173, %for.end170 ], [ 0, %entry ]
  call void @llvm.lifetime.start.p0(i64 40000, ptr nonnull %a) #5
  call void @llvm.lifetime.start.p0(i64 400, ptr nonnull %s) #5
  %cmp270 = icmp sgt i32 %1, 0
  br i1 %cmp270, label %for.cond4.preheader, label %for.end170

for.cond13.preheader:                             ; preds = %for.inc10
  %sub = add i32 %5, -1
  %cmp1488 = icmp sgt i32 %5, 1
  br i1 %cmp1488, label %for.body15.lr.ph, label %for.end170

for.body15.lr.ph:                                 ; preds = %for.cond13.preheader
  %wide.trip.count141 = zext i32 %sub to i64
  %wide.trip.count116 = zext nneg i32 %5 to i64
  %wide.trip.count131 = zext nneg i32 %5 to i64
  %wide.trip.count136 = zext nneg i32 %5 to i64
  %min.iters.check162 = icmp ult i32 %5, 4
  %n.vec165 = and i64 %wide.trip.count116, 2147483644
  %cmp.n171 = icmp eq i64 %n.vec165, %wide.trip.count116
  br label %for.body18.preheader

for.cond4.preheader:                              ; preds = %for.body, %for.inc10
  %2 = phi i32 [ %5, %for.inc10 ], [ %1, %for.body ]
  %indvars.iv102 = phi i64 [ %indvars.iv.next103, %for.inc10 ], [ 0, %for.body ]
  %cmp568 = icmp sgt i32 %2, 0
  br i1 %cmp568, label %for.body6, label %for.cond4.preheader.for.inc10_crit_edge

for.cond4.preheader.for.inc10_crit_edge:          ; preds = %for.cond4.preheader
  %.pre = sext i32 %2 to i64
  br label %for.inc10

for.body6:                                        ; preds = %for.cond4.preheader, %for.body6
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body6 ], [ 0, %for.cond4.preheader ]
  %arrayidx8 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv102, i64 %indvars.iv
  %call9 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx8)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %3 = load i32, ptr %n, align 4, !tbaa !5
  %4 = sext i32 %3 to i64
  %cmp5 = icmp slt i64 %indvars.iv.next, %4
  br i1 %cmp5, label %for.body6, label %for.inc10, !llvm.loop !9

for.inc10:                                        ; preds = %for.body6, %for.cond4.preheader.for.inc10_crit_edge
  %.pre-phi = phi i64 [ %.pre, %for.cond4.preheader.for.inc10_crit_edge ], [ %4, %for.body6 ]
  %5 = phi i32 [ %2, %for.cond4.preheader.for.inc10_crit_edge ], [ %3, %for.body6 ]
  %indvars.iv.next103 = add nuw nsw i64 %indvars.iv102, 1
  %cmp2 = icmp slt i64 %indvars.iv.next103, %.pre-phi
  br i1 %cmp2, label %for.cond4.preheader, label %for.cond13.preheader, !llvm.loop !12

for.body164.preheader:                            ; preds = %for.end157
  %wide.trip.count146 = zext nneg i32 %sub to i64
  %min.iters.check = icmp ult i32 %5, 5
  br i1 %min.iters.check, label %for.body164.preheader173, label %vector.ph

vector.ph:                                        ; preds = %for.body164.preheader
  %n.vec = and i64 %wide.trip.count141, 4294967292
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %7, %vector.body ]
  %6 = getelementptr inbounds nuw [100 x i32], ptr %s, i64 0, i64 %index
  %wide.load = load <4 x i32>, ptr %6, align 16, !tbaa !5
  %7 = add <4 x i32> %wide.load, %vec.phi
  %index.next = add nuw i64 %index, 4
  %8 = icmp eq i64 %index.next, %n.vec
  br i1 %8, label %middle.block, label %vector.body, !llvm.loop !14

middle.block:                                     ; preds = %vector.body
  %9 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %7)
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count141
  br i1 %cmp.n, label %for.end170, label %for.body164.preheader173

for.body164.preheader173:                         ; preds = %for.body164.preheader, %middle.block
  %indvars.iv143.ph = phi i64 [ 0, %for.body164.preheader ], [ %n.vec, %middle.block ]
  %sum.093.ph = phi i32 [ 0, %for.body164.preheader ], [ %9, %middle.block ]
  br label %for.body164

for.body18.preheader:                             ; preds = %for.end157, %for.body15.lr.ph
  %indvars.iv138 = phi i64 [ 0, %for.body15.lr.ph ], [ %indvars.iv.next139, %for.end157 ]
  br label %for.body18

for.body18:                                       ; preds = %for.body18.preheader, %for.inc71
  %indvars.iv113 = phi i64 [ 0, %for.body18.preheader ], [ %indvars.iv.next114, %for.inc71 ]
  %arrayidx20 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv113
  %10 = load i32, ptr %arrayidx20, align 16, !tbaa !5
  %cmp22 = icmp sgt i32 %10, -1
  br i1 %cmp22, label %for.body30, label %for.inc71

for.cond28.for.cond53.preheader_crit_edge:        ; preds = %for.body30
  br i1 %min.iters.check162, label %for.body55.preheader, label %vector.ph163

vector.ph163:                                     ; preds = %for.cond28.for.cond53.preheader_crit_edge
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %spec.store.select, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body166

vector.body166:                                   ; preds = %vector.body166, %vector.ph163
  %index167 = phi i64 [ 0, %vector.ph163 ], [ %index.next169, %vector.body166 ]
  %11 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv113, i64 %index167
  %wide.load168 = load <4 x i32>, ptr %11, align 16, !tbaa !5
  %12 = sub nsw <4 x i32> %wide.load168, %broadcast.splat
  store <4 x i32> %12, ptr %11, align 16, !tbaa !5
  %index.next169 = add nuw i64 %index167, 4
  %13 = icmp eq i64 %index.next169, %n.vec165
  br i1 %13, label %middle.block170, label %vector.body166, !llvm.loop !17

middle.block170:                                  ; preds = %vector.body166
  br i1 %cmp.n171, label %for.inc71, label %for.body55.preheader

for.body55.preheader:                             ; preds = %for.cond28.for.cond53.preheader_crit_edge, %middle.block170
  %indvars.iv108.ph = phi i64 [ 0, %for.cond28.for.cond53.preheader_crit_edge ], [ %n.vec165, %middle.block170 ]
  br label %for.body55

for.body30:                                       ; preds = %for.body18, %for.body30
  %indvars.iv105 = phi i64 [ %indvars.iv.next106, %for.body30 ], [ 0, %for.body18 ]
  %spec.store.select74 = phi i32 [ %spec.store.select, %for.body30 ], [ %10, %for.body18 ]
  %arrayidx34 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv113, i64 %indvars.iv105
  %14 = load i32, ptr %arrayidx34, align 4, !tbaa !5
  %15 = call i32 @llvm.smin.i32(i32 %14, i32 %spec.store.select74)
  %cmp4267 = icmp slt i32 %14, 0
  %spec.store.select = select i1 %cmp4267, i32 %spec.store.select74, i32 %15
  %indvars.iv.next106 = add nuw nsw i64 %indvars.iv105, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next106, %wide.trip.count116
  br i1 %exitcond.not, label %for.cond28.for.cond53.preheader_crit_edge, label %for.body30, !llvm.loop !18

for.body55:                                       ; preds = %for.body55.preheader, %for.body55
  %indvars.iv108 = phi i64 [ %indvars.iv.next109, %for.body55 ], [ %indvars.iv108.ph, %for.body55.preheader ]
  %arrayidx59 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv113, i64 %indvars.iv108
  %16 = load i32, ptr %arrayidx59, align 4, !tbaa !5
  %sub62 = sub nsw i32 %16, %spec.store.select
  store i32 %sub62, ptr %arrayidx59, align 4, !tbaa !5
  %indvars.iv.next109 = add nuw nsw i64 %indvars.iv108, 1
  %exitcond112.not = icmp eq i64 %indvars.iv.next109, %wide.trip.count116
  br i1 %exitcond112.not, label %for.inc71, label %for.body55, !llvm.loop !19

for.inc71:                                        ; preds = %for.body55, %middle.block170, %for.body18
  %indvars.iv.next114 = add nuw nsw i64 %indvars.iv113, 1
  %exitcond117.not = icmp eq i64 %indvars.iv.next114, %wide.trip.count116
  br i1 %exitcond117.not, label %for.body76, label %for.body18, !llvm.loop !20

for.body76:                                       ; preds = %for.inc71, %for.inc132
  %indvars.iv128 = phi i64 [ %indvars.iv.next129, %for.inc132 ], [ 0, %for.inc71 ]
  %arrayidx79 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %indvars.iv128
  %17 = load i32, ptr %arrayidx79, align 4, !tbaa !5
  %cmp80 = icmp sgt i32 %17, -1
  br i1 %cmp80, label %for.body89, label %for.inc132

for.body89:                                       ; preds = %for.body76, %for.inc111
  %indvars.iv118 = phi i64 [ %indvars.iv.next119, %for.inc111 ], [ 0, %for.body76 ]
  %18 = phi i32 [ %21, %for.inc111 ], [ %17, %for.body76 ]
  %arrayidx93 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv118, i64 %indvars.iv128
  %19 = load i32, ptr %arrayidx93, align 4, !tbaa !5
  %cmp96 = icmp slt i32 %19, %18
  br i1 %cmp96, label %land.lhs.true97, label %for.inc111

land.lhs.true97:                                  ; preds = %for.body89
  %arrayidx101 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv128, i64 %indvars.iv118
  %20 = load i32, ptr %arrayidx101, align 4, !tbaa !5
  %cmp10297 = icmp slt i32 %20, 0
  %spec.select = select i1 %cmp10297, i32 %18, i32 %19
  br label %for.inc111

for.inc111:                                       ; preds = %land.lhs.true97, %for.body89
  %21 = phi i32 [ %18, %for.body89 ], [ %spec.select, %land.lhs.true97 ]
  %indvars.iv.next119 = add nuw nsw i64 %indvars.iv118, 1
  %exitcond122.not = icmp eq i64 %indvars.iv.next119, %wide.trip.count131
  br i1 %exitcond122.not, label %for.body116, label %for.body89, !llvm.loop !21

for.body116:                                      ; preds = %for.inc111, %for.body116
  %indvars.iv123 = phi i64 [ %indvars.iv.next124, %for.body116 ], [ 0, %for.inc111 ]
  %arrayidx120 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv123, i64 %indvars.iv128
  %22 = load i32, ptr %arrayidx120, align 4, !tbaa !5
  %sub123 = sub nsw i32 %22, %21
  store i32 %sub123, ptr %arrayidx120, align 4, !tbaa !5
  %indvars.iv.next124 = add nuw nsw i64 %indvars.iv123, 1
  %exitcond127.not = icmp eq i64 %indvars.iv.next124, %wide.trip.count131
  br i1 %exitcond127.not, label %for.inc132, label %for.body116, !llvm.loop !22

for.inc132:                                       ; preds = %for.body116, %for.body76
  %indvars.iv.next129 = add nuw nsw i64 %indvars.iv128, 1
  %exitcond132.not = icmp eq i64 %indvars.iv.next129, %wide.trip.count131
  br i1 %exitcond132.not, label %for.body144.preheader, label %for.body76, !llvm.loop !23

for.body144.preheader:                            ; preds = %for.inc132
  %indvars.iv.next139 = add nuw nsw i64 %indvars.iv138, 1
  %arrayidx139 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv.next139, i64 %indvars.iv.next139
  %23 = load i32, ptr %arrayidx139, align 4, !tbaa !5
  %arrayidx141 = getelementptr inbounds nuw [100 x i32], ptr %s, i64 0, i64 %indvars.iv138
  store i32 %23, ptr %arrayidx141, align 4, !tbaa !5
  br label %for.body144

for.body144:                                      ; preds = %for.body144.preheader, %for.body144
  %indvars.iv133 = phi i64 [ 0, %for.body144.preheader ], [ %indvars.iv.next134, %for.body144 ]
  %arrayidx149 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv.next139, i64 %indvars.iv133
  store i32 -1, ptr %arrayidx149, align 4, !tbaa !5
  %arrayidx154 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv133, i64 %indvars.iv.next139
  store i32 -1, ptr %arrayidx154, align 4, !tbaa !5
  %indvars.iv.next134 = add nuw nsw i64 %indvars.iv133, 1
  %exitcond137.not = icmp eq i64 %indvars.iv.next134, %wide.trip.count136
  br i1 %exitcond137.not, label %for.end157, label %for.body144, !llvm.loop !24

for.end157:                                       ; preds = %for.body144
  %exitcond142.not = icmp eq i64 %indvars.iv.next139, %wide.trip.count141
  br i1 %exitcond142.not, label %for.body164.preheader, label %for.body18.preheader, !llvm.loop !25

for.body164:                                      ; preds = %for.body164.preheader173, %for.body164
  %indvars.iv143 = phi i64 [ %indvars.iv.next144, %for.body164 ], [ %indvars.iv143.ph, %for.body164.preheader173 ]
  %sum.093 = phi i32 [ %add167, %for.body164 ], [ %sum.093.ph, %for.body164.preheader173 ]
  %arrayidx166 = getelementptr inbounds nuw [100 x i32], ptr %s, i64 0, i64 %indvars.iv143
  %24 = load i32, ptr %arrayidx166, align 4, !tbaa !5
  %add167 = add nsw i32 %24, %sum.093
  %indvars.iv.next144 = add nuw nsw i64 %indvars.iv143, 1
  %exitcond147.not = icmp eq i64 %indvars.iv.next144, %wide.trip.count146
  br i1 %exitcond147.not, label %for.end170, label %for.body164, !llvm.loop !26

for.end170:                                       ; preds = %for.body164, %middle.block, %for.body, %for.cond13.preheader
  %sum.0.lcssa = phi i32 [ 0, %for.cond13.preheader ], [ 0, %for.body ], [ %9, %middle.block ], [ %add167, %for.body164 ]
  %call171 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %sum.0.lcssa)
  call void @llvm.lifetime.end.p0(i64 400, ptr nonnull %s) #5
  call void @llvm.lifetime.end.p0(i64 40000, ptr nonnull %a) #5
  %inc173 = add nuw nsw i32 %k.096, 1
  %25 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %inc173, %25
  br i1 %cmp, label %for.body, label %for.end174, !llvm.loop !27

for.end174:                                       ; preds = %for.end170, %entry
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #5
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #4

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
!12 = distinct !{!12, !10, !11, !13}
!13 = !{!"llvm.loop.unswitch.partial.disable"}
!14 = distinct !{!14, !10, !11, !15, !16}
!15 = !{!"llvm.loop.isvectorized", i32 1}
!16 = !{!"llvm.loop.unroll.runtime.disable"}
!17 = distinct !{!17, !10, !11, !15, !16}
!18 = distinct !{!18, !10, !11}
!19 = distinct !{!19, !10, !11, !15}
!20 = distinct !{!20, !10, !11}
!21 = distinct !{!21, !10, !11}
!22 = distinct !{!22, !10, !11}
!23 = distinct !{!23, !10, !11}
!24 = distinct !{!24, !10, !11}
!25 = distinct !{!25, !10, !11}
!26 = distinct !{!26, !10, !11, !15}
!27 = distinct !{!27, !10, !11}
