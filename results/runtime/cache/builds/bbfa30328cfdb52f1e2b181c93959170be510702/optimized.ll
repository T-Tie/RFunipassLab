; ModuleID = '<stdin>'
source_filename = "/tmp/tmp0p0f9f76.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [6 x i8] c"%d,%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%lf\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%d+%d\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"No\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %h = alloca i32, align 4
  %l = alloca i32, align 4
  %a = alloca [8 x [8 x double]], align 16
  %b = alloca [8 x [8 x double]], align 16
  %c = alloca [8 x [8 x double]], align 16
  %hm = alloca [8 x double], align 16
  %lm = alloca [8 x double], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %h) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %l) #6
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %a) #6
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %b) #6
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %c) #6
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %h, ptr noundef nonnull %l)
  br label %for.cond

for.cond:                                         ; preds = %for.inc23, %entry
  %indvars.iv71 = phi i64 [ %indvars.iv.next72, %for.inc23 ], [ 0, %entry ]
  %0 = load i32, ptr %h, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv71, %1
  br i1 %cmp, label %for.cond1, label %for.end25

for.cond1:                                        ; preds = %for.cond, %for.body3
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body3 ], [ 0, %for.cond ]
  %2 = load i32, ptr %l, align 4, !tbaa !5
  %3 = sext i32 %2 to i64
  %cmp2 = icmp slt i64 %indvars.iv, %3
  br i1 %cmp2, label %for.body3, label %for.inc23

for.body3:                                        ; preds = %for.cond1
  %arrayidx5 = getelementptr inbounds nuw [8 x [8 x double]], ptr %a, i64 0, i64 %indvars.iv71, i64 %indvars.iv
  %call6 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %arrayidx5)
  %4 = load double, ptr %arrayidx5, align 8, !tbaa !9
  %arrayidx14 = getelementptr inbounds nuw [8 x [8 x double]], ptr %b, i64 0, i64 %indvars.iv71, i64 %indvars.iv
  store double %4, ptr %arrayidx14, align 8, !tbaa !9
  %arrayidx22 = getelementptr inbounds nuw [8 x [8 x double]], ptr %c, i64 0, i64 %indvars.iv71, i64 %indvars.iv
  store double %4, ptr %arrayidx22, align 8, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond1, !llvm.loop !11

for.inc23:                                        ; preds = %for.cond1
  %indvars.iv.next72 = add nuw nsw i64 %indvars.iv71, 1
  br label %for.cond, !llvm.loop !14

for.end25:                                        ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %hm) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %hm, i8 0, i64 64, i1 false)
  %5 = load i32, ptr %l, align 4
  %sub = add i32 %5, -1
  %smax = call i32 @llvm.smax.i32(i32 %sub, i32 0)
  %smax81 = call i32 @llvm.smax.i32(i32 %0, i32 0)
  %wide.trip.count82 = zext nneg i32 %smax81 to i64
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond26

for.cond26:                                       ; preds = %for.inc75, %for.end25
  %indvars.iv77 = phi i64 [ %indvars.iv.next78, %for.inc75 ], [ 0, %for.end25 ]
  %exitcond83.not = icmp eq i64 %indvars.iv77, %wide.trip.count82
  br i1 %exitcond83.not, label %for.end77, label %for.cond29.preheader

for.cond29.preheader:                             ; preds = %for.cond26
  %arrayidx71 = getelementptr inbounds nuw [8 x double], ptr %hm, i64 0, i64 %indvars.iv77
  br label %for.cond29

for.cond29:                                       ; preds = %for.cond29.backedge, %for.cond29.preheader
  %indvars.iv74 = phi i64 [ 0, %for.cond29.preheader ], [ %indvars.iv.next75, %for.cond29.backedge ]
  %exitcond.not = icmp eq i64 %indvars.iv74, %wide.trip.count
  br i1 %exitcond.not, label %for.inc75, label %for.body31

for.body31:                                       ; preds = %for.cond29
  %arrayidx35 = getelementptr inbounds nuw [8 x [8 x double]], ptr %b, i64 0, i64 %indvars.iv77, i64 %indvars.iv74
  %6 = load double, ptr %arrayidx35, align 8, !tbaa !9
  %indvars.iv.next75 = add nuw nsw i64 %indvars.iv74, 1
  %arrayidx39 = getelementptr inbounds nuw [8 x [8 x double]], ptr %b, i64 0, i64 %indvars.iv77, i64 %indvars.iv.next75
  %7 = load double, ptr %arrayidx39, align 8, !tbaa !9
  %cmp40 = fcmp ogt double %6, %7
  br i1 %cmp40, label %if.then, label %if.else

if.then:                                          ; preds = %for.body31
  store double %6, ptr %arrayidx71, align 8, !tbaa !9
  store double %7, ptr %arrayidx35, align 8, !tbaa !9
  store double %6, ptr %arrayidx39, align 8, !tbaa !9
  br label %for.cond29.backedge

for.cond29.backedge:                              ; preds = %if.then, %if.else
  br label %for.cond29, !llvm.loop !15

if.else:                                          ; preds = %for.body31
  store double %7, ptr %arrayidx71, align 8, !tbaa !9
  br label %for.cond29.backedge

for.inc75:                                        ; preds = %for.cond29
  %indvars.iv.next78 = add nuw nsw i64 %indvars.iv77, 1
  br label %for.cond26, !llvm.loop !16

for.end77:                                        ; preds = %for.cond26
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %lm) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %lm, i8 0, i64 64, i1 false)
  %sub82 = add i32 %0, -1
  %smax87 = call i32 @llvm.smax.i32(i32 %sub82, i32 0)
  %smax93 = call i32 @llvm.smax.i32(i32 %5, i32 0)
  %wide.trip.count94 = zext nneg i32 %smax93 to i64
  %wide.trip.count88 = zext nneg i32 %smax87 to i64
  br label %for.cond78

for.cond78:                                       ; preds = %for.inc132, %for.end77
  %indvars.iv90 = phi i64 [ %indvars.iv.next91, %for.inc132 ], [ 0, %for.end77 ]
  %exitcond95.not = icmp eq i64 %indvars.iv90, %wide.trip.count94
  br i1 %exitcond95.not, label %for.cond135, label %for.cond81.preheader

for.cond81.preheader:                             ; preds = %for.cond78
  %arrayidx127 = getelementptr inbounds nuw [8 x double], ptr %lm, i64 0, i64 %indvars.iv90
  br label %for.cond81

for.cond81:                                       ; preds = %for.cond81.backedge, %for.cond81.preheader
  %indvars.iv84 = phi i64 [ 0, %for.cond81.preheader ], [ %indvars.iv.next85, %for.cond81.backedge ]
  %exitcond89.not = icmp eq i64 %indvars.iv84, %wide.trip.count88
  br i1 %exitcond89.not, label %for.inc132, label %for.body84

for.body84:                                       ; preds = %for.cond81
  %arrayidx88 = getelementptr inbounds nuw [8 x [8 x double]], ptr %c, i64 0, i64 %indvars.iv84, i64 %indvars.iv90
  %8 = load double, ptr %arrayidx88, align 8, !tbaa !9
  %indvars.iv.next85 = add nuw nsw i64 %indvars.iv84, 1
  %arrayidx93 = getelementptr inbounds nuw [8 x [8 x double]], ptr %c, i64 0, i64 %indvars.iv.next85, i64 %indvars.iv90
  %9 = load double, ptr %arrayidx93, align 8, !tbaa !9
  %cmp94 = fcmp olt double %8, %9
  br i1 %cmp94, label %if.then95, label %if.else120

if.then95:                                        ; preds = %for.body84
  store double %8, ptr %arrayidx127, align 8, !tbaa !9
  store double %9, ptr %arrayidx88, align 8, !tbaa !9
  store double %8, ptr %arrayidx93, align 8, !tbaa !9
  br label %for.cond81.backedge

for.cond81.backedge:                              ; preds = %if.then95, %if.else120
  br label %for.cond81, !llvm.loop !17

if.else120:                                       ; preds = %for.body84
  store double %9, ptr %arrayidx127, align 8, !tbaa !9
  br label %for.cond81.backedge

for.inc132:                                       ; preds = %for.cond81
  %indvars.iv.next91 = add nuw nsw i64 %indvars.iv90, 1
  br label %for.cond78, !llvm.loop !18

for.cond135:                                      ; preds = %for.cond78, %for.inc153
  %.pre102103 = phi i32 [ %.pre102104, %for.inc153 ], [ %5, %for.cond78 ]
  %10 = phi i32 [ %14, %for.inc153 ], [ %5, %for.cond78 ]
  %11 = phi i32 [ %.pre, %for.inc153 ], [ %0, %for.cond78 ]
  %indvars.iv99 = phi i64 [ %indvars.iv.next100, %for.inc153 ], [ 0, %for.cond78 ]
  %s.0 = phi i32 [ %s.1, %for.inc153 ], [ 0, %for.cond78 ]
  %12 = sext i32 %11 to i64
  %cmp136 = icmp slt i64 %indvars.iv99, %12
  br i1 %cmp136, label %for.cond138.preheader, label %for.end155

for.cond138.preheader:                            ; preds = %for.cond135
  %arrayidx142 = getelementptr inbounds nuw [8 x double], ptr %hm, i64 0, i64 %indvars.iv99
  %13 = trunc nuw nsw i64 %indvars.iv99 to i32
  br label %for.cond138

for.cond138:                                      ; preds = %for.cond138.preheader, %for.inc150
  %.pre102104 = phi i32 [ %.pre102103, %for.cond138.preheader ], [ %.pre102, %for.inc150 ]
  %14 = phi i32 [ %10, %for.cond138.preheader ], [ %.pre102, %for.inc150 ]
  %indvars.iv96 = phi i64 [ 0, %for.cond138.preheader ], [ %indvars.iv.next97, %for.inc150 ]
  %s.1 = phi i32 [ %s.0, %for.cond138.preheader ], [ %s.2, %for.inc150 ]
  %15 = sext i32 %14 to i64
  %cmp139 = icmp slt i64 %indvars.iv96, %15
  br i1 %cmp139, label %for.body140, label %for.inc153

for.body140:                                      ; preds = %for.cond138
  %16 = load double, ptr %arrayidx142, align 8, !tbaa !9
  %arrayidx144 = getelementptr inbounds nuw [8 x double], ptr %lm, i64 0, i64 %indvars.iv96
  %17 = load double, ptr %arrayidx144, align 8, !tbaa !9
  %cmp145 = fcmp oeq double %16, %17
  br i1 %cmp145, label %if.then146, label %for.inc150

if.then146:                                       ; preds = %for.body140
  %18 = trunc nuw nsw i64 %indvars.iv96 to i32
  %call147 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %13, i32 noundef %18)
  %inc148 = add nsw i32 %s.1, 1
  %.pre102.pre = load i32, ptr %l, align 4, !tbaa !5
  br label %for.inc150

for.inc150:                                       ; preds = %for.body140, %if.then146
  %.pre102 = phi i32 [ %.pre102.pre, %if.then146 ], [ %.pre102104, %for.body140 ]
  %s.2 = phi i32 [ %inc148, %if.then146 ], [ %s.1, %for.body140 ]
  %indvars.iv.next97 = add nuw nsw i64 %indvars.iv96, 1
  br label %for.cond138, !llvm.loop !19

for.inc153:                                       ; preds = %for.cond138
  %indvars.iv.next100 = add nuw nsw i64 %indvars.iv99, 1
  %.pre = load i32, ptr %h, align 4, !tbaa !5
  br label %for.cond135, !llvm.loop !20

for.end155:                                       ; preds = %for.cond135
  %cmp156 = icmp eq i32 %s.0, 0
  br i1 %cmp156, label %if.then157, label %if.end159

if.then157:                                       ; preds = %for.end155
  %call158 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3)
  br label %if.end159

if.end159:                                        ; preds = %if.then157, %for.end155
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %lm) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %hm) #6
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %c) #6
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %b) #6
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %a) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %l) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %h) #6
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
!9 = !{!10, !10, i64 0}
!10 = !{!"double", !7, i64 0}
!11 = distinct !{!11, !12, !13}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"llvm.loop.unroll.disable"}
!14 = distinct !{!14, !12, !13}
!15 = distinct !{!15, !12, !13}
!16 = distinct !{!16, !12, !13}
!17 = distinct !{!17, !12, !13}
!18 = distinct !{!18, !12, !13}
!19 = distinct !{!19, !12, !13}
!20 = distinct !{!20, !12, !13}
