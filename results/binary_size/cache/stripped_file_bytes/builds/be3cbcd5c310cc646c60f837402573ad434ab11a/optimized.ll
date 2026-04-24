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
  br label %for.cond

for.cond:                                         ; preds = %for.end170, %entry
  %k.0 = phi i32 [ 0, %entry ], [ %inc173, %for.end170 ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %k.0, %0
  br i1 %cmp, label %for.body, label %for.end174

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 40000, ptr nonnull %a) #5
  call void @llvm.lifetime.start.p0(i64 400, ptr nonnull %s) #5
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc10, %for.body
  %1 = phi i32 [ %4, %for.inc10 ], [ %0, %for.body ]
  %indvars.iv69 = phi i64 [ %indvars.iv.next70, %for.inc10 ], [ 0, %for.body ]
  %2 = sext i32 %1 to i64
  %cmp2 = icmp slt i64 %indvars.iv69, %2
  br i1 %cmp2, label %for.cond4, label %for.cond13.preheader

for.cond13.preheader:                             ; preds = %for.cond1
  %smax = call i32 @llvm.smax.i32(i32 %1, i32 0)
  %3 = call i32 @llvm.smax.i32(i32 %1, i32 1)
  %smax113 = add nsw i32 %3, -1
  %wide.trip.count114 = zext nneg i32 %smax113 to i64
  %wide.trip.count86 = zext nneg i32 %smax to i64
  %wide.trip.count = zext i32 %1 to i64
  %wide.trip.count92 = zext i32 %1 to i64
  br label %for.cond13

for.cond4:                                        ; preds = %for.cond1, %for.body6
  %4 = phi i32 [ %.pre, %for.body6 ], [ %1, %for.cond1 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body6 ], [ 0, %for.cond1 ]
  %5 = sext i32 %4 to i64
  %cmp5 = icmp slt i64 %indvars.iv, %5
  br i1 %cmp5, label %for.body6, label %for.inc10

for.body6:                                        ; preds = %for.cond4
  %arrayidx8 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv69, i64 %indvars.iv
  %call9 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx8)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond4, !llvm.loop !9

for.inc10:                                        ; preds = %for.cond4
  %indvars.iv.next70 = add nuw nsw i64 %indvars.iv69, 1
  br label %for.cond1, !llvm.loop !12

for.cond13:                                       ; preds = %for.cond142, %for.cond13.preheader
  %indvars.iv110 = phi i64 [ 0, %for.cond13.preheader ], [ %indvars.iv.next111, %for.cond142 ]
  %exitcond115.not = icmp eq i64 %indvars.iv110, %wide.trip.count114
  br i1 %exitcond115.not, label %for.cond161, label %for.cond16

for.cond16:                                       ; preds = %for.cond13, %for.inc71
  %indvars.iv82 = phi i64 [ %indvars.iv.next83, %for.inc71 ], [ 0, %for.cond13 ]
  %exitcond87.not = icmp eq i64 %indvars.iv82, %wide.trip.count86
  br i1 %exitcond87.not, label %for.cond74, label %for.body18

for.body18:                                       ; preds = %for.cond16
  %arrayidx20 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv82
  %6 = load i32, ptr %arrayidx20, align 16, !tbaa !5
  %cmp22 = icmp sgt i32 %6, -1
  br i1 %cmp22, label %for.cond28, label %for.inc71

for.cond28:                                       ; preds = %for.body18, %for.body30
  %7 = phi i32 [ %spec.store.select, %for.body30 ], [ %6, %for.body18 ]
  %indvars.iv72 = phi i64 [ %indvars.iv.next73, %for.body30 ], [ 0, %for.body18 ]
  %exitcond.not = icmp eq i64 %indvars.iv72, %wide.trip.count
  br i1 %exitcond.not, label %for.cond53, label %for.body30

for.body30:                                       ; preds = %for.cond28
  %arrayidx34 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv82, i64 %indvars.iv72
  %8 = load i32, ptr %arrayidx34, align 4, !tbaa !5
  %9 = call i32 @llvm.smin.i32(i32 %8, i32 %7)
  %cmp4267 = icmp slt i32 %8, 0
  %spec.store.select = select i1 %cmp4267, i32 %7, i32 %9
  %indvars.iv.next73 = add nuw nsw i64 %indvars.iv72, 1
  br label %for.cond28, !llvm.loop !13

for.cond53:                                       ; preds = %for.cond28, %for.body55
  %indvars.iv76 = phi i64 [ %indvars.iv.next77, %for.body55 ], [ 0, %for.cond28 ]
  %exitcond81.not = icmp eq i64 %indvars.iv76, %wide.trip.count
  br i1 %exitcond81.not, label %for.inc71, label %for.body55

for.body55:                                       ; preds = %for.cond53
  %arrayidx59 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv82, i64 %indvars.iv76
  %10 = load i32, ptr %arrayidx59, align 4, !tbaa !5
  %sub62 = sub nsw i32 %10, %7
  store i32 %sub62, ptr %arrayidx59, align 4, !tbaa !5
  %indvars.iv.next77 = add nuw nsw i64 %indvars.iv76, 1
  br label %for.cond53, !llvm.loop !14

for.inc71:                                        ; preds = %for.cond53, %for.body18
  %indvars.iv.next83 = add nuw nsw i64 %indvars.iv82, 1
  br label %for.cond16, !llvm.loop !15

for.cond74:                                       ; preds = %for.cond16, %for.inc132
  %indvars.iv100 = phi i64 [ %indvars.iv.next101, %for.inc132 ], [ 0, %for.cond16 ]
  %exitcond104.not = icmp eq i64 %indvars.iv100, %wide.trip.count86
  br i1 %exitcond104.not, label %for.end134, label %for.body76

for.body76:                                       ; preds = %for.cond74
  %arrayidx79 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %indvars.iv100
  %11 = load i32, ptr %arrayidx79, align 4, !tbaa !5
  %cmp80 = icmp sgt i32 %11, -1
  br i1 %cmp80, label %for.cond87, label %for.inc132

for.cond87:                                       ; preds = %for.body76, %for.inc111
  %12 = phi i32 [ %15, %for.inc111 ], [ %11, %for.body76 ]
  %indvars.iv88 = phi i64 [ %indvars.iv.next89, %for.inc111 ], [ 0, %for.body76 ]
  %exitcond93.not = icmp eq i64 %indvars.iv88, %wide.trip.count92
  br i1 %exitcond93.not, label %for.cond114, label %for.body89

for.body89:                                       ; preds = %for.cond87
  %arrayidx93 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv88, i64 %indvars.iv100
  %13 = load i32, ptr %arrayidx93, align 4, !tbaa !5
  %cmp96 = icmp slt i32 %13, %12
  br i1 %cmp96, label %land.lhs.true97, label %for.inc111

land.lhs.true97:                                  ; preds = %for.body89
  %arrayidx101 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv100, i64 %indvars.iv88
  %14 = load i32, ptr %arrayidx101, align 4, !tbaa !5
  %cmp102124 = icmp slt i32 %14, 0
  %spec.select = select i1 %cmp102124, i32 %12, i32 %13
  br label %for.inc111

for.inc111:                                       ; preds = %land.lhs.true97, %for.body89
  %15 = phi i32 [ %12, %for.body89 ], [ %spec.select, %land.lhs.true97 ]
  %indvars.iv.next89 = add nuw nsw i64 %indvars.iv88, 1
  br label %for.cond87, !llvm.loop !16

for.cond114:                                      ; preds = %for.cond87, %for.body116
  %indvars.iv94 = phi i64 [ %indvars.iv.next95, %for.body116 ], [ 0, %for.cond87 ]
  %exitcond99.not = icmp eq i64 %indvars.iv94, %wide.trip.count92
  br i1 %exitcond99.not, label %for.inc132, label %for.body116

for.body116:                                      ; preds = %for.cond114
  %arrayidx120 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv94, i64 %indvars.iv100
  %16 = load i32, ptr %arrayidx120, align 4, !tbaa !5
  %sub123 = sub nsw i32 %16, %12
  store i32 %sub123, ptr %arrayidx120, align 4, !tbaa !5
  %indvars.iv.next95 = add nuw nsw i64 %indvars.iv94, 1
  br label %for.cond114, !llvm.loop !17

for.inc132:                                       ; preds = %for.cond114, %for.body76
  %indvars.iv.next101 = add nuw nsw i64 %indvars.iv100, 1
  br label %for.cond74, !llvm.loop !18

for.end134:                                       ; preds = %for.cond74
  %indvars.iv.next111 = add nuw nsw i64 %indvars.iv110, 1
  %arrayidx139 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv.next111, i64 %indvars.iv.next111
  %17 = load i32, ptr %arrayidx139, align 4, !tbaa !5
  %arrayidx141 = getelementptr inbounds nuw [100 x i32], ptr %s, i64 0, i64 %indvars.iv110
  store i32 %17, ptr %arrayidx141, align 4, !tbaa !5
  br label %for.cond142

for.cond142:                                      ; preds = %for.body144, %for.end134
  %indvars.iv105 = phi i64 [ %indvars.iv.next106, %for.body144 ], [ 0, %for.end134 ]
  %exitcond109.not = icmp eq i64 %indvars.iv105, %wide.trip.count86
  br i1 %exitcond109.not, label %for.cond13, label %for.body144, !llvm.loop !19

for.body144:                                      ; preds = %for.cond142
  %arrayidx149 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv.next111, i64 %indvars.iv105
  store i32 -1, ptr %arrayidx149, align 4, !tbaa !5
  %arrayidx154 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv105, i64 %indvars.iv.next111
  store i32 -1, ptr %arrayidx154, align 4, !tbaa !5
  %indvars.iv.next106 = add nuw nsw i64 %indvars.iv105, 1
  br label %for.cond142, !llvm.loop !20

for.cond161:                                      ; preds = %for.cond13, %for.body164
  %indvars.iv116 = phi i64 [ %indvars.iv.next117, %for.body164 ], [ 0, %for.cond13 ]
  %sum.0 = phi i32 [ %add167, %for.body164 ], [ 0, %for.cond13 ]
  %exitcond120.not = icmp eq i64 %indvars.iv116, %wide.trip.count114
  br i1 %exitcond120.not, label %for.end170, label %for.body164

for.body164:                                      ; preds = %for.cond161
  %arrayidx166 = getelementptr inbounds nuw [100 x i32], ptr %s, i64 0, i64 %indvars.iv116
  %18 = load i32, ptr %arrayidx166, align 4, !tbaa !5
  %add167 = add nsw i32 %18, %sum.0
  %indvars.iv.next117 = add nuw nsw i64 %indvars.iv116, 1
  br label %for.cond161, !llvm.loop !21

for.end170:                                       ; preds = %for.cond161
  %call171 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %sum.0)
  call void @llvm.lifetime.end.p0(i64 400, ptr nonnull %s) #5
  call void @llvm.lifetime.end.p0(i64 40000, ptr nonnull %a) #5
  %inc173 = add nuw nsw i32 %k.0, 1
  br label %for.cond, !llvm.loop !22

for.end174:                                       ; preds = %for.cond
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
!17 = distinct !{!17, !10, !11}
!18 = distinct !{!18, !10, !11}
!19 = distinct !{!19, !10, !11}
!20 = distinct !{!20, !10, !11}
!21 = distinct !{!21, !10, !11}
!22 = distinct !{!22, !10, !11}
