; ModuleID = '<stdin>'
source_filename = "/tmp/tmp841kixu_.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [7 x i8] c"%d,%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%d+%d\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"No\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %sz = alloca [8 x [8 x i32]], align 16
  %max = alloca [8 x i32], align 16
  %min = alloca [8 x i32], align 16
  %row = alloca i32, align 4
  %col = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %sz) #5
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %max) #5
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %min) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %row) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %col) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %row, ptr noundef nonnull %col)
  br label %for.cond

for.cond:                                         ; preds = %for.end, %entry
  %indvars.iv73 = phi i64 [ %indvars.iv.next74, %for.end ], [ 0, %entry ]
  %0 = load i32, ptr %row, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv73, %1
  br i1 %cmp, label %for.cond1, label %for.cond11.preheader

for.cond11.preheader:                             ; preds = %for.cond
  %2 = load i32, ptr %col, align 4
  %sub = add i32 %2, -1
  %smax = call i32 @llvm.smax.i32(i32 %sub, i32 0)
  %smax83 = call i32 @llvm.smax.i32(i32 %0, i32 0)
  %wide.trip.count84 = zext nneg i32 %smax83 to i64
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond11

for.cond1:                                        ; preds = %for.cond, %for.body3
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body3 ], [ 0, %for.cond ]
  %3 = load i32, ptr %col, align 4, !tbaa !5
  %4 = sext i32 %3 to i64
  %cmp2 = icmp slt i64 %indvars.iv, %4
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %arrayidx5 = getelementptr inbounds nuw [8 x [8 x i32]], ptr %sz, i64 0, i64 %indvars.iv73, i64 %indvars.iv
  %call6 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %arrayidx5)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond1, !llvm.loop !9

for.end:                                          ; preds = %for.cond1
  %call7 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.2)
  %indvars.iv.next74 = add nuw nsw i64 %indvars.iv73, 1
  br label %for.cond, !llvm.loop !12

for.cond11:                                       ; preds = %for.cond11.preheader, %for.end66
  %indvars.iv79 = phi i64 [ 0, %for.cond11.preheader ], [ %indvars.iv.next80, %for.end66 ]
  %exitcond85.not = icmp eq i64 %indvars.iv79, %wide.trip.count84
  br i1 %exitcond85.not, label %for.cond70.preheader, label %for.cond14.preheader

for.cond14.preheader:                             ; preds = %for.cond11
  %arrayidx36 = getelementptr inbounds nuw [8 x i32], ptr %max, i64 0, i64 %indvars.iv79
  br label %for.cond14

for.cond70.preheader:                             ; preds = %for.cond11
  %sub77 = add i32 %0, -1
  %smax89 = call i32 @llvm.smax.i32(i32 %sub77, i32 0)
  %smax95 = call i32 @llvm.smax.i32(i32 %2, i32 0)
  %wide.trip.count96 = zext nneg i32 %smax95 to i64
  %wide.trip.count90 = zext nneg i32 %smax89 to i64
  br label %for.cond70

for.cond14:                                       ; preds = %for.cond14.backedge, %for.cond14.preheader
  %indvars.iv76 = phi i64 [ 0, %for.cond14.preheader ], [ %indvars.iv.next77, %for.cond14.backedge ]
  %t.1 = phi i32 [ 0, %for.cond14.preheader ], [ %t.1.be, %for.cond14.backedge ]
  %exitcond.not = icmp eq i64 %indvars.iv76, %wide.trip.count
  br i1 %exitcond.not, label %for.end66, label %for.body16

for.body16:                                       ; preds = %for.cond14
  %arrayidx20 = getelementptr inbounds nuw [8 x [8 x i32]], ptr %sz, i64 0, i64 %indvars.iv79, i64 %indvars.iv76
  %5 = load i32, ptr %arrayidx20, align 4, !tbaa !5
  %indvars.iv.next77 = add nuw nsw i64 %indvars.iv76, 1
  %arrayidx24 = getelementptr inbounds nuw [8 x [8 x i32]], ptr %sz, i64 0, i64 %indvars.iv79, i64 %indvars.iv.next77
  %6 = load i32, ptr %arrayidx24, align 4, !tbaa !5
  %cmp25.not = icmp slt i32 %5, %6
  %cmp30.not = icmp slt i32 %5, %t.1
  %or.cond = select i1 %cmp25.not, i1 true, i1 %cmp30.not
  br i1 %or.cond, label %if.end, label %if.then

if.then:                                          ; preds = %for.body16
  %7 = trunc nuw nsw i64 %indvars.iv76 to i32
  store i32 %7, ptr %arrayidx36, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body16
  %t.2 = phi i32 [ %5, %if.then ], [ %t.1, %for.body16 ]
  %cmp46 = icmp sle i32 %6, %5
  %cmp53.not = icmp slt i32 %6, %t.2
  %or.cond67 = select i1 %cmp46, i1 true, i1 %cmp53.not
  br i1 %or.cond67, label %for.cond14.backedge, label %if.then54

for.cond14.backedge:                              ; preds = %if.end, %if.then54
  %t.1.be = phi i32 [ %t.2, %if.end ], [ %6, %if.then54 ]
  br label %for.cond14, !llvm.loop !13

if.then54:                                        ; preds = %if.end
  %8 = trunc nuw i64 %indvars.iv.next77 to i32
  store i32 %8, ptr %arrayidx36, align 4, !tbaa !5
  br label %for.cond14.backedge

for.end66:                                        ; preds = %for.cond14
  %indvars.iv.next80 = add nuw nsw i64 %indvars.iv79, 1
  br label %for.cond11, !llvm.loop !14

for.cond70:                                       ; preds = %for.cond70.preheader, %for.inc134
  %indvars.iv92 = phi i64 [ 0, %for.cond70.preheader ], [ %indvars.iv.next93, %for.inc134 ]
  %exitcond97.not = icmp eq i64 %indvars.iv92, %wide.trip.count96
  br i1 %exitcond97.not, label %for.cond137, label %for.body72

for.body72:                                       ; preds = %for.cond70
  %arrayidx75 = getelementptr inbounds nuw [8 x i32], ptr %sz, i64 0, i64 %indvars.iv92
  %9 = load i32, ptr %arrayidx75, align 4, !tbaa !5
  %arrayidx102 = getelementptr inbounds nuw [8 x i32], ptr %min, i64 0, i64 %indvars.iv92
  br label %for.cond76

for.cond76:                                       ; preds = %for.cond76.backedge, %for.body72
  %indvars.iv86 = phi i64 [ 0, %for.body72 ], [ %indvars.iv.next87, %for.cond76.backedge ]
  %m.0 = phi i32 [ %9, %for.body72 ], [ %m.0.be, %for.cond76.backedge ]
  %exitcond91.not = icmp eq i64 %indvars.iv86, %wide.trip.count90
  br i1 %exitcond91.not, label %for.inc134, label %for.body79

for.body79:                                       ; preds = %for.cond76
  %arrayidx83 = getelementptr inbounds nuw [8 x [8 x i32]], ptr %sz, i64 0, i64 %indvars.iv86, i64 %indvars.iv92
  %10 = load i32, ptr %arrayidx83, align 4, !tbaa !5
  %indvars.iv.next87 = add nuw nsw i64 %indvars.iv86, 1
  %arrayidx88 = getelementptr inbounds nuw [8 x [8 x i32]], ptr %sz, i64 0, i64 %indvars.iv.next87, i64 %indvars.iv92
  %11 = load i32, ptr %arrayidx88, align 4, !tbaa !5
  %cmp89.not = icmp sgt i32 %10, %11
  %cmp95.not = icmp sgt i32 %10, %m.0
  %or.cond68 = select i1 %cmp89.not, i1 true, i1 %cmp95.not
  br i1 %or.cond68, label %if.end103, label %if.then96

if.then96:                                        ; preds = %for.body79
  %12 = trunc nuw nsw i64 %indvars.iv86 to i32
  store i32 %12, ptr %arrayidx102, align 4, !tbaa !5
  br label %if.end103

if.end103:                                        ; preds = %if.then96, %for.body79
  %m.1 = phi i32 [ %10, %if.then96 ], [ %m.0, %for.body79 ]
  %cmp113 = icmp sge i32 %11, %10
  %cmp120.not = icmp sgt i32 %11, %m.1
  %or.cond69 = select i1 %cmp113, i1 true, i1 %cmp120.not
  br i1 %or.cond69, label %for.cond76.backedge, label %if.then121

for.cond76.backedge:                              ; preds = %if.end103, %if.then121
  %m.0.be = phi i32 [ %m.1, %if.end103 ], [ %11, %if.then121 ]
  br label %for.cond76, !llvm.loop !15

if.then121:                                       ; preds = %if.end103
  %13 = trunc nuw i64 %indvars.iv.next87 to i32
  store i32 %13, ptr %arrayidx102, align 4, !tbaa !5
  br label %for.cond76.backedge

for.inc134:                                       ; preds = %for.cond76
  %indvars.iv.next93 = add nuw nsw i64 %indvars.iv92, 1
  br label %for.cond70, !llvm.loop !16

for.cond137:                                      ; preds = %for.cond70, %for.inc149
  %.pre101 = phi i32 [ %.pre, %for.inc149 ], [ %0, %for.cond70 ]
  %indvars.iv98 = phi i64 [ %indvars.iv.next99, %for.inc149 ], [ 0, %for.cond70 ]
  %x.0 = phi i32 [ %x.1, %for.inc149 ], [ 0, %for.cond70 ]
  %14 = sext i32 %.pre101 to i64
  %cmp138 = icmp slt i64 %indvars.iv98, %14
  br i1 %cmp138, label %for.body139, label %for.end151

for.body139:                                      ; preds = %for.cond137
  %arrayidx141 = getelementptr inbounds nuw [8 x i32], ptr %max, i64 0, i64 %indvars.iv98
  %15 = load i32, ptr %arrayidx141, align 4, !tbaa !5
  %idxprom142 = sext i32 %15 to i64
  %arrayidx143 = getelementptr inbounds [8 x i32], ptr %min, i64 0, i64 %idxprom142
  %16 = load i32, ptr %arrayidx143, align 4, !tbaa !5
  %17 = zext i32 %16 to i64
  %cmp144 = icmp eq i64 %indvars.iv98, %17
  br i1 %cmp144, label %if.then145, label %if.else

if.then145:                                       ; preds = %for.body139
  %18 = trunc nuw nsw i64 %indvars.iv98 to i32
  %call146 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %18, i32 noundef %15)
  %.pre.pre = load i32, ptr %row, align 4, !tbaa !5
  br label %for.inc149

if.else:                                          ; preds = %for.body139
  %add147 = add nsw i32 %x.0, 1
  br label %for.inc149

for.inc149:                                       ; preds = %if.then145, %if.else
  %.pre = phi i32 [ %.pre.pre, %if.then145 ], [ %.pre101, %if.else ]
  %x.1 = phi i32 [ %x.0, %if.then145 ], [ %add147, %if.else ]
  %indvars.iv.next99 = add nuw nsw i64 %indvars.iv98, 1
  br label %for.cond137, !llvm.loop !17

for.end151:                                       ; preds = %for.cond137
  %cmp152 = icmp eq i32 %x.0, %.pre101
  br i1 %cmp152, label %if.then153, label %if.end155

if.then153:                                       ; preds = %for.end151
  %call154 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4)
  br label %if.end155

if.end155:                                        ; preds = %if.then153, %for.end151
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %col) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %row) #5
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %min) #5
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %max) #5
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %sz) #5
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
