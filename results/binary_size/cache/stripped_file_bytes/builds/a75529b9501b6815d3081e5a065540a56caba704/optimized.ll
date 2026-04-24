; ModuleID = '<stdin>'
source_filename = "/tmp/tmpfd2pw882.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"\0A%s\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"NO\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %a = alloca [501 x i8], align 16
  %b = alloca [501 x [501 x i8]], align 16
  %d = alloca [501 x [501 x i8]], align 16
  %str = alloca [501 x i8], align 16
  %n = alloca i32, align 4
  %c = alloca [501 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 501, ptr noundef nonnull align 16 %a) #6
  call void @llvm.lifetime.start.p0(i64 noundef 251001, ptr noundef nonnull align 16 %b) #6
  call void @llvm.lifetime.start.p0(i64 noundef 251001, ptr noundef nonnull %d) #6
  call void @llvm.lifetime.start.p0(i64 noundef 501, ptr noundef nonnull %str) #6
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #6
  call void @llvm.lifetime.start.p0(i64 noundef 2004, ptr noundef nonnull align 16 %c) #6
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %n)
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %a)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %exitcond.not = icmp eq i64 %indvars.iv, 501
  br i1 %exitcond.not, label %for.cond2.preheader, label %for.inc

for.cond2.preheader:                              ; preds = %for.cond
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %conv5 = sext i32 %0 to i64
  br label %for.cond2

for.inc:                                          ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [501 x i32], ptr %c, i64 0, i64 %indvars.iv
  store i32 1, ptr %arrayidx, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.cond2:                                        ; preds = %for.cond2.preheader, %for.inc23
  %indvars.iv42 = phi i32 [ 0, %for.cond2.preheader ], [ %indvars.iv.next43, %for.inc23 ]
  %indvars.iv35 = phi i32 [ -1, %for.cond2.preheader ], [ %indvars.iv.next36, %for.inc23 ]
  %indvars.iv13 = phi i64 [ 0, %for.cond2.preheader ], [ %indvars.iv.next14, %for.inc23 ]
  %call4 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %a) #7
  %reass.sub = sub i64 %call4, %conv5
  %add.reass = add i64 %reass.sub, 1
  %cmp6 = icmp ugt i64 %add.reass, %indvars.iv13
  br i1 %cmp6, label %for.cond8.preheader, label %for.cond26.preheader

for.cond8.preheader:                              ; preds = %for.cond2
  %1 = add nsw i64 %indvars.iv13, %conv5
  br label %for.cond8

for.cond26.preheader:                             ; preds = %for.cond2
  %wide.trip.count44 = zext i32 %indvars.iv42 to i64
  %wide.trip.count37 = zext i32 %indvars.iv35 to i64
  br label %for.cond26

for.cond8:                                        ; preds = %for.cond8.preheader, %for.inc19
  %indvars.iv17 = phi i64 [ 0, %for.cond8.preheader ], [ %indvars.iv.next18, %for.inc19 ]
  %indvars.iv15 = phi i64 [ %indvars.iv13, %for.cond8.preheader ], [ %indvars.iv.next16, %for.inc19 ]
  %cmp10 = icmp slt i64 %indvars.iv15, %1
  br i1 %cmp10, label %for.inc19, label %for.inc23

for.inc19:                                        ; preds = %for.cond8
  %arrayidx13 = getelementptr inbounds nuw [501 x i8], ptr %a, i64 0, i64 %indvars.iv15
  %2 = load i8, ptr %arrayidx13, align 1, !tbaa !12, !invariant.load !13
  %arrayidx17 = getelementptr inbounds nuw [501 x [501 x i8]], ptr %b, i64 0, i64 %indvars.iv13, i64 %indvars.iv17
  store i8 %2, ptr %arrayidx17, align 1, !tbaa !12
  %indvars.iv.next18 = add nuw nsw i64 %indvars.iv17, 1
  %indvars.iv.next16 = add nuw nsw i64 %indvars.iv15, 1
  br label %for.cond8, !llvm.loop !14

for.inc23:                                        ; preds = %for.cond8
  %indvars.iv.next14 = add nuw nsw i64 %indvars.iv13, 1
  %indvars.iv.next36 = add nsw i32 %indvars.iv35, 1
  %indvars.iv.next43 = add nuw i32 %indvars.iv42, 1
  br label %for.cond2, !llvm.loop !15

for.cond26:                                       ; preds = %for.cond26.preheader, %for.inc70
  %indvars.iv30 = phi i64 [ 0, %for.cond26.preheader ], [ %indvars.iv.next31, %for.inc70 ]
  %exitcond45.not = icmp eq i64 %indvars.iv30, %wide.trip.count44
  br i1 %exitcond45.not, label %for.cond73.preheader, label %for.cond30.preheader

for.cond30.preheader:                             ; preds = %for.cond26
  %arrayidx34 = getelementptr inbounds nuw [501 x [501 x i8]], ptr %b, i64 0, i64 %indvars.iv30
  %arrayidx47 = getelementptr inbounds nuw [501 x i32], ptr %c, i64 0, i64 %indvars.iv30
  %arrayidx60 = getelementptr inbounds nuw [501 x [501 x i8]], ptr %d, i64 0, i64 %indvars.iv30
  br label %for.cond30

for.cond73.preheader:                             ; preds = %for.cond26
  %umax = call i32 @llvm.umax.i32(i32 %indvars.iv42, i32 1)
  br label %for.cond73

for.cond30:                                       ; preds = %for.cond30.preheader, %for.inc66
  %indvars.iv32 = phi i64 [ %indvars.iv30, %for.cond30.preheader ], [ %indvars.iv.next33, %for.inc66 ]
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1
  %exitcond38.not = icmp eq i64 %indvars.iv32, %wide.trip.count37
  br i1 %exitcond38.not, label %for.inc70, label %for.body32

for.body32:                                       ; preds = %for.cond30
  %arrayidx37 = getelementptr inbounds nuw [501 x [501 x i8]], ptr %b, i64 0, i64 %indvars.iv.next33
  %call39 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %arrayidx34, ptr noundef nonnull dereferenceable(1) %arrayidx37) #7
  %cmp40 = icmp eq i32 %call39, 0
  br i1 %cmp40, label %land.lhs.true, label %for.inc66

land.lhs.true:                                    ; preds = %for.body32
  %3 = load i8, ptr %arrayidx34, align 1, !tbaa !12, !invariant.load !13
  %cmp45.not = icmp eq i8 %3, 38
  br i1 %cmp45.not, label %for.inc66, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %4 = load i32, ptr %arrayidx47, align 4, !tbaa !5, !invariant.load !13
  %add48 = add nsw i32 %4, 1
  store i32 %add48, ptr %arrayidx47, align 4, !tbaa !5
  %5 = load i32, ptr %n, align 4, !tbaa !5
  %smax = call i32 @llvm.smax.i32(i32 %5, i32 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond49

for.cond49:                                       ; preds = %for.inc56, %if.then
  %indvars.iv26 = phi i64 [ %indvars.iv.next27, %for.inc56 ], [ 0, %if.then ]
  %exitcond29.not = icmp eq i64 %indvars.iv26, %wide.trip.count
  br i1 %exitcond29.not, label %for.end58, label %for.inc56

for.inc56:                                        ; preds = %for.cond49
  %arrayidx55 = getelementptr inbounds nuw [501 x [501 x i8]], ptr %b, i64 0, i64 %indvars.iv.next33, i64 %indvars.iv26
  store i8 38, ptr %arrayidx55, align 1, !tbaa !12
  %indvars.iv.next27 = add nuw nsw i64 %indvars.iv26, 1
  br label %for.cond49, !llvm.loop !16

for.end58:                                        ; preds = %for.cond49
  %call65 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %arrayidx60, ptr noundef nonnull dereferenceable(1) %arrayidx34) #8
  br label %for.inc66

for.inc66:                                        ; preds = %for.body32, %land.lhs.true, %for.end58
  br label %for.cond30, !llvm.loop !17

for.inc70:                                        ; preds = %for.cond30
  %indvars.iv.next31 = add nuw nsw i64 %indvars.iv30, 1
  br label %for.cond26, !llvm.loop !18

for.cond73:                                       ; preds = %for.cond73.preheader, %for.inc120
  %indvars.iv50 = phi i32 [ %indvars.iv35, %for.cond73.preheader ], [ %indvars.iv.next51, %for.inc120 ]
  %i.2 = phi i32 [ 1, %for.cond73.preheader ], [ %inc121, %for.inc120 ]
  %exitcond55.not = icmp eq i32 %i.2, %umax
  br i1 %exitcond55.not, label %for.end122, label %for.cond76.preheader

for.cond76.preheader:                             ; preds = %for.cond73
  %wide.trip.count52 = zext i32 %indvars.iv50 to i64
  br label %for.cond76

for.cond76:                                       ; preds = %for.cond76.preheader, %for.inc117
  %indvars.iv46 = phi i64 [ 0, %for.cond76.preheader ], [ %indvars.iv.next47, %for.inc117 ]
  %exitcond53.not = icmp eq i64 %indvars.iv46, %wide.trip.count52
  br i1 %exitcond53.not, label %for.inc120, label %for.body79

for.body79:                                       ; preds = %for.cond76
  %arrayidx81 = getelementptr inbounds nuw [501 x i32], ptr %c, i64 0, i64 %indvars.iv46
  %6 = load i32, ptr %arrayidx81, align 4, !tbaa !5, !invariant.load !13
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 1
  %arrayidx84 = getelementptr inbounds nuw [501 x i32], ptr %c, i64 0, i64 %indvars.iv.next47
  %7 = load i32, ptr %arrayidx84, align 4, !tbaa !5, !invariant.load !13
  %cmp85 = icmp slt i32 %6, %7
  br i1 %cmp85, label %if.then86, label %for.inc117

if.then86:                                        ; preds = %for.body79
  store i32 %7, ptr %arrayidx81, align 4, !tbaa !5
  store i32 %6, ptr %arrayidx84, align 4, !tbaa !5
  %arrayidx99 = getelementptr inbounds nuw [501 x [501 x i8]], ptr %d, i64 0, i64 %indvars.iv46
  %call101 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %str, ptr noundef nonnull dereferenceable(1) %arrayidx99) #8
  %arrayidx107 = getelementptr inbounds nuw [501 x [501 x i8]], ptr %d, i64 0, i64 %indvars.iv.next47
  %call109 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %arrayidx99, ptr noundef nonnull dereferenceable(1) %arrayidx107) #8
  %call115 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %arrayidx107, ptr noundef nonnull dereferenceable(1) %str) #8
  br label %for.inc117

for.inc117:                                       ; preds = %for.body79, %if.then86
  br label %for.cond76, !llvm.loop !19

for.inc120:                                       ; preds = %for.cond76
  %inc121 = add nuw i32 %i.2, 1
  %indvars.iv.next51 = add nsw i32 %indvars.iv50, -1
  br label %for.cond73, !llvm.loop !20

for.end122:                                       ; preds = %for.cond73
  %8 = load i32, ptr %c, align 16, !tbaa !5
  %cmp124 = icmp sgt i32 %8, 1
  br i1 %cmp124, label %if.then125, label %if.else144

if.then125:                                       ; preds = %for.end122
  %call127 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %8)
  br label %for.cond128

for.cond128:                                      ; preds = %for.inc141, %if.then125
  %indvars.iv56 = phi i64 [ %indvars.iv.next57, %for.inc141 ], [ 0, %if.then125 ]
  %exitcond61.not = icmp eq i64 %indvars.iv56, %wide.trip.count44
  br i1 %exitcond61.not, label %if.end146, label %for.body130

for.body130:                                      ; preds = %for.cond128
  %arrayidx132 = getelementptr inbounds nuw [501 x i32], ptr %c, i64 0, i64 %indvars.iv56
  %9 = load i32, ptr %arrayidx132, align 4, !tbaa !5, !invariant.load !13
  %cmp134 = icmp eq i32 %9, %8
  br i1 %cmp134, label %for.inc141, label %if.end146

for.inc141:                                       ; preds = %for.body130
  %arrayidx137 = getelementptr inbounds nuw [501 x [501 x i8]], ptr %d, i64 0, i64 %indvars.iv56
  %call139 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef nonnull %arrayidx137)
  %indvars.iv.next57 = add nuw nsw i64 %indvars.iv56, 1
  br label %for.cond128, !llvm.loop !21

if.else144:                                       ; preds = %for.end122
  %call145 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4)
  br label %if.end146

if.end146:                                        ; preds = %for.cond128, %for.body130, %if.else144
  call void @llvm.lifetime.end.p0(i64 noundef 2004, ptr noundef nonnull %c) #8
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #8
  call void @llvm.lifetime.end.p0(i64 noundef 501, ptr noundef nonnull %str) #8
  call void @llvm.lifetime.end.p0(i64 noundef 251001, ptr noundef nonnull %d) #8
  call void @llvm.lifetime.end.p0(i64 noundef 251001, ptr noundef nonnull %b) #8
  call void @llvm.lifetime.end.p0(i64 noundef 501, ptr noundef nonnull %a) #8
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strcmp(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare ptr @strcpy(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nofree nounwind }
attributes #7 = { nounwind willreturn memory(read) }
attributes #8 = { nounwind }

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
!12 = !{!7, !7, i64 0}
!13 = !{}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11}
!18 = distinct !{!18, !10, !11}
!19 = distinct !{!19, !10, !11}
!20 = distinct !{!20, !10, !11}
!21 = distinct !{!21, !10, !11}
