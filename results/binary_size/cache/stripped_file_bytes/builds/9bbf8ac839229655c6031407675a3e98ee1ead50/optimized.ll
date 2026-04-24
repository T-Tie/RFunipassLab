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
  call void @llvm.lifetime.start.p0(i64 501, ptr nonnull %a) #7
  call void @llvm.lifetime.start.p0(i64 251001, ptr nonnull %b) #7
  call void @llvm.lifetime.start.p0(i64 251001, ptr nonnull %d) #7
  call void @llvm.lifetime.start.p0(i64 501, ptr nonnull %str) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #7
  call void @llvm.lifetime.start.p0(i64 2004, ptr nonnull %c) #7
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %a)
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %exitcond.not = icmp eq i64 %indvars.iv, 501
  br i1 %exitcond.not, label %for.cond2.preheader, label %for.body

for.cond2.preheader:                              ; preds = %for.cond
  %call4 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %a) #8
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %conv5 = sext i32 %0 to i64
  %sub = add i64 %call4, 1
  %add = sub i64 %sub, %conv5
  br label %for.cond2

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [501 x i32], ptr %c, i64 0, i64 %indvars.iv
  store i32 1, ptr %arrayidx, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.cond2:                                        ; preds = %for.cond2.preheader, %for.end21
  %indvars.iv52 = phi i64 [ 0, %for.cond2.preheader ], [ %indvars.iv.next53, %for.end21 ]
  %exitcond65.not = icmp eq i64 %indvars.iv52, %add
  br i1 %exitcond65.not, label %for.cond26.preheader, label %for.cond8.preheader

for.cond8.preheader:                              ; preds = %for.cond2
  %1 = add nsw i64 %indvars.iv52, %conv5
  br label %for.cond8

for.cond26.preheader:                             ; preds = %for.cond2
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 0)
  %2 = and i64 %add, 4294967295
  %3 = trunc i64 %call4 to i32
  %4 = add i32 %3, 1
  %5 = sub i32 %4, %0
  %wide.trip.count80 = zext i32 %5 to i64
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond26

for.cond8:                                        ; preds = %for.cond8.preheader, %for.body11
  %indvars.iv56 = phi i64 [ 0, %for.cond8.preheader ], [ %indvars.iv.next57, %for.body11 ]
  %indvars.iv54 = phi i64 [ %indvars.iv52, %for.cond8.preheader ], [ %indvars.iv.next55, %for.body11 ]
  %cmp10 = icmp slt i64 %indvars.iv54, %1
  br i1 %cmp10, label %for.body11, label %for.end21

for.body11:                                       ; preds = %for.cond8
  %arrayidx13 = getelementptr inbounds nuw [501 x i8], ptr %a, i64 0, i64 %indvars.iv54
  %6 = load i8, ptr %arrayidx13, align 1, !tbaa !12
  %arrayidx17 = getelementptr inbounds nuw [501 x [501 x i8]], ptr %b, i64 0, i64 %indvars.iv52, i64 %indvars.iv56
  store i8 %6, ptr %arrayidx17, align 1, !tbaa !12
  %indvars.iv.next57 = add nuw nsw i64 %indvars.iv56, 1
  %indvars.iv.next55 = add nuw nsw i64 %indvars.iv54, 1
  br label %for.cond8, !llvm.loop !13

for.end21:                                        ; preds = %for.cond8
  %indvars.iv.next53 = add nuw i64 %indvars.iv52, 1
  br label %for.cond2, !llvm.loop !14

for.cond26:                                       ; preds = %for.cond26.preheader, %for.end68
  %indvars.iv75 = phi i64 [ 0, %for.cond26.preheader ], [ %indvars.iv.next76, %for.end68 ]
  %indvars.iv70 = phi i64 [ 1, %for.cond26.preheader ], [ %indvars.iv.next71, %for.end68 ]
  %exitcond81.not = icmp eq i64 %indvars.iv75, %wide.trip.count80
  br i1 %exitcond81.not, label %for.cond73.preheader, label %for.body28

for.cond73.preheader:                             ; preds = %for.cond26
  %7 = sub i32 %3, %0
  %umax = call i32 @llvm.umax.i32(i32 %5, i32 1)
  br label %for.cond73

for.body28:                                       ; preds = %for.cond26
  %arrayidx34 = getelementptr inbounds nuw [501 x [501 x i8]], ptr %b, i64 0, i64 %indvars.iv75
  %arrayidx47 = getelementptr inbounds nuw [501 x i32], ptr %c, i64 0, i64 %indvars.iv75
  %arrayidx60 = getelementptr [501 x [501 x i8]], ptr %d, i64 0, i64 %indvars.iv75
  br label %for.cond30

for.cond30:                                       ; preds = %for.inc66, %for.body28
  %indvars.iv72 = phi i64 [ %indvars.iv.next73, %for.inc66 ], [ %indvars.iv70, %for.body28 ]
  %cmp31 = icmp samesign ult i64 %indvars.iv72, %2
  br i1 %cmp31, label %for.body32, label %for.end68

for.body32:                                       ; preds = %for.cond30
  %arrayidx37 = getelementptr inbounds nuw [501 x [501 x i8]], ptr %b, i64 0, i64 %indvars.iv72
  %call39 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %arrayidx34, ptr noundef nonnull dereferenceable(1) %arrayidx37) #8
  %cmp40 = icmp eq i32 %call39, 0
  br i1 %cmp40, label %land.lhs.true, label %for.inc66

land.lhs.true:                                    ; preds = %for.body32
  %8 = load i8, ptr %arrayidx34, align 1, !tbaa !12
  %cmp45.not = icmp eq i8 %8, 38
  br i1 %cmp45.not, label %for.inc66, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %9 = load i32, ptr %arrayidx47, align 4, !tbaa !5
  %add48 = add nsw i32 %9, 1
  store i32 %add48, ptr %arrayidx47, align 4, !tbaa !5
  br label %for.cond49

for.cond49:                                       ; preds = %for.body51, %if.then
  %indvars.iv66 = phi i64 [ %indvars.iv.next67, %for.body51 ], [ 0, %if.then ]
  %exitcond69.not = icmp eq i64 %indvars.iv66, %wide.trip.count
  br i1 %exitcond69.not, label %for.end58, label %for.body51

for.body51:                                       ; preds = %for.cond49
  %arrayidx55 = getelementptr inbounds nuw [501 x [501 x i8]], ptr %b, i64 0, i64 %indvars.iv72, i64 %indvars.iv66
  store i8 38, ptr %arrayidx55, align 1, !tbaa !12
  %indvars.iv.next67 = add nuw nsw i64 %indvars.iv66, 1
  br label %for.cond49, !llvm.loop !15

for.end58:                                        ; preds = %for.cond49
  %call65 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %arrayidx60, ptr noundef nonnull dereferenceable(1) %arrayidx34) #7
  br label %for.inc66

for.inc66:                                        ; preds = %for.body32, %land.lhs.true, %for.end58
  %indvars.iv.next73 = add nuw nsw i64 %indvars.iv72, 1
  br label %for.cond30, !llvm.loop !16

for.end68:                                        ; preds = %for.cond30
  %indvars.iv.next76 = add nuw nsw i64 %indvars.iv75, 1
  %indvars.iv.next71 = add nuw nsw i64 %indvars.iv70, 1
  br label %for.cond26, !llvm.loop !17

for.cond73:                                       ; preds = %for.cond73.preheader, %for.inc120
  %indvars.iv85 = phi i32 [ %7, %for.cond73.preheader ], [ %indvars.iv.next86, %for.inc120 ]
  %i.3 = phi i32 [ 1, %for.cond73.preheader ], [ %inc121, %for.inc120 ]
  %exitcond89.not = icmp eq i32 %i.3, %umax
  br i1 %exitcond89.not, label %for.end122, label %for.cond76.preheader

for.cond76.preheader:                             ; preds = %for.cond73
  %wide.trip.count87 = zext i32 %indvars.iv85 to i64
  br label %for.cond76

for.cond76:                                       ; preds = %for.cond76.backedge, %for.cond76.preheader
  %indvars.iv82 = phi i64 [ 0, %for.cond76.preheader ], [ %indvars.iv.next83, %for.cond76.backedge ]
  %exitcond88.not = icmp eq i64 %indvars.iv82, %wide.trip.count87
  br i1 %exitcond88.not, label %for.inc120, label %for.body79

for.body79:                                       ; preds = %for.cond76
  %arrayidx81 = getelementptr inbounds nuw [501 x i32], ptr %c, i64 0, i64 %indvars.iv82
  %10 = load i32, ptr %arrayidx81, align 4, !tbaa !5
  %indvars.iv.next83 = add nuw nsw i64 %indvars.iv82, 1
  %arrayidx84 = getelementptr inbounds nuw [501 x i32], ptr %c, i64 0, i64 %indvars.iv.next83
  %11 = load i32, ptr %arrayidx84, align 4, !tbaa !5
  %cmp85 = icmp slt i32 %10, %11
  br i1 %cmp85, label %if.then86, label %for.cond76.backedge

for.cond76.backedge:                              ; preds = %for.body79, %if.then86
  br label %for.cond76, !llvm.loop !18

if.then86:                                        ; preds = %for.body79
  store i32 %11, ptr %arrayidx81, align 4, !tbaa !5
  store i32 %10, ptr %arrayidx84, align 4, !tbaa !5
  %arrayidx99 = getelementptr inbounds nuw [501 x [501 x i8]], ptr %d, i64 0, i64 %indvars.iv82
  %call101 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %str, ptr noundef nonnull dereferenceable(1) %arrayidx99) #7
  %arrayidx107 = getelementptr inbounds nuw [501 x [501 x i8]], ptr %d, i64 0, i64 %indvars.iv.next83
  %call109 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %arrayidx99, ptr noundef nonnull dereferenceable(1) %arrayidx107) #7
  %call115 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %arrayidx107, ptr noundef nonnull dereferenceable(1) %str) #7
  br label %for.cond76.backedge

for.inc120:                                       ; preds = %for.cond76
  %inc121 = add nuw i32 %i.3, 1
  %indvars.iv.next86 = add i32 %indvars.iv85, -1
  br label %for.cond73, !llvm.loop !19

for.end122:                                       ; preds = %for.cond73
  %12 = load i32, ptr %c, align 16, !tbaa !5
  %cmp124 = icmp sgt i32 %12, 1
  br i1 %cmp124, label %if.then125, label %if.else144

if.then125:                                       ; preds = %for.end122
  %call127 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %12)
  br label %for.cond128

for.cond128:                                      ; preds = %if.then135, %if.then125
  %indvars.iv90 = phi i64 [ %indvars.iv.next91, %if.then135 ], [ 0, %if.then125 ]
  %exitcond94.not = icmp eq i64 %indvars.iv90, %wide.trip.count80
  br i1 %exitcond94.not, label %if.end146, label %for.body130

for.body130:                                      ; preds = %for.cond128
  %arrayidx132 = getelementptr inbounds nuw [501 x i32], ptr %c, i64 0, i64 %indvars.iv90
  %13 = load i32, ptr %arrayidx132, align 4, !tbaa !5
  %cmp134 = icmp eq i32 %13, %12
  br i1 %cmp134, label %if.then135, label %if.end146

if.then135:                                       ; preds = %for.body130
  %arrayidx137 = getelementptr inbounds nuw [501 x [501 x i8]], ptr %d, i64 0, i64 %indvars.iv90
  %call139 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef nonnull %arrayidx137)
  %indvars.iv.next91 = add nuw nsw i64 %indvars.iv90, 1
  br label %for.cond128, !llvm.loop !20

if.else144:                                       ; preds = %for.end122
  %call145 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4)
  br label %if.end146

if.end146:                                        ; preds = %for.cond128, %for.body130, %if.else144
  call void @llvm.lifetime.end.p0(i64 2004, ptr nonnull %c) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #7
  call void @llvm.lifetime.end.p0(i64 501, ptr nonnull %str) #7
  call void @llvm.lifetime.end.p0(i64 251001, ptr nonnull %d) #7
  call void @llvm.lifetime.end.p0(i64 251001, ptr nonnull %b) #7
  call void @llvm.lifetime.end.p0(i64 501, ptr nonnull %a) #7
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none)) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #6

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }
attributes #8 = { nounwind willreturn memory(read) }

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
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11}
!18 = distinct !{!18, !10, !11}
!19 = distinct !{!19, !10, !11}
!20 = distinct !{!20, !10, !11}
