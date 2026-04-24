; ModuleID = '<stdin>'
source_filename = "/tmp/tmpvm425bdv.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"No\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%c=%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %s = alloca [500 x i8], align 16
  %c = alloca [500 x i8], align 16
  %y = alloca [1005 x i32], align 16
  %a = alloca [1005 x i32], align 16
  %b = alloca [10005 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 500, ptr nonnull %s) #5
  call void @llvm.lifetime.start.p0(i64 500, ptr nonnull %c) #5
  call void @llvm.lifetime.start.p0(i64 4020, ptr nonnull %y) #5
  call void @llvm.lifetime.start.p0(i64 4020, ptr nonnull %a) #5
  call void @llvm.lifetime.start.p0(i64 40020, ptr nonnull %b) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %s)
  br label %for.cond

for.cond:                                         ; preds = %for.cond, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond ], [ 0, %entry ]
  %n.0 = phi i32 [ %1, %for.cond ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds nuw [500 x i8], ptr %s, i64 0, i64 %indvars.iv
  %0 = load i8, ptr %arrayidx, align 1, !tbaa !5
  %cmp.not = icmp eq i8 %0, 0
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %1 = trunc nuw nsw i64 %indvars.iv to i32
  br i1 %cmp.not, label %for.cond1, label %for.cond, !llvm.loop !8

for.cond1:                                        ; preds = %for.cond, %for.body3
  %indvars.iv64 = phi i64 [ %indvars.iv.next65, %for.body3 ], [ 0, %for.cond ]
  %exitcond.not = icmp eq i64 %indvars.iv64, 1004
  br i1 %exitcond.not, label %for.cond13.preheader, label %for.body3

for.cond13.preheader:                             ; preds = %for.cond1
  %2 = add nuw i32 %n.0, 1
  %wide.trip.count = zext i32 %2 to i64
  br label %for.cond13

for.body3:                                        ; preds = %for.cond1
  %arrayidx5 = getelementptr inbounds nuw [10005 x i32], ptr %b, i64 0, i64 %indvars.iv64
  store i32 0, ptr %arrayidx5, align 4, !tbaa !11
  %arrayidx7 = getelementptr inbounds nuw [1005 x i32], ptr %a, i64 0, i64 %indvars.iv64
  store i32 0, ptr %arrayidx7, align 4, !tbaa !11
  %arrayidx9 = getelementptr inbounds nuw [1005 x i32], ptr %y, i64 0, i64 %indvars.iv64
  store i32 0, ptr %arrayidx9, align 4, !tbaa !11
  %indvars.iv.next65 = add nuw nsw i64 %indvars.iv64, 1
  br label %for.cond1, !llvm.loop !13

for.cond13:                                       ; preds = %for.cond13.preheader, %for.inc86
  %indvars.iv77 = phi i64 [ 0, %for.cond13.preheader ], [ %indvars.iv.next78, %for.inc86 ]
  %arrayidx15 = getelementptr inbounds nuw [500 x i8], ptr %s, i64 0, i64 %indvars.iv77
  %3 = load i8, ptr %arrayidx15, align 1, !tbaa !5
  %cmp17.not = icmp eq i8 %3, 0
  br i1 %cmp17.not, label %for.cond89.preheader, label %for.body18

for.cond89.preheader:                             ; preds = %for.cond13
  %wide.trip.count83 = zext i32 %2 to i64
  br label %for.cond89

for.body18:                                       ; preds = %for.cond13
  %4 = and i8 %3, -33
  %5 = add i8 %4, -65
  %or.cond62 = icmp ult i8 %5, 26
  br i1 %or.cond62, label %if.then, label %for.inc86

if.then:                                          ; preds = %for.body18
  %arrayidx37 = getelementptr inbounds nuw [1005 x i32], ptr %a, i64 0, i64 %indvars.iv77
  %6 = load i32, ptr %arrayidx37, align 4, !tbaa !11
  %inc38 = add nsw i32 %6, 1
  store i32 %inc38, ptr %arrayidx37, align 4, !tbaa !11
  %arrayidx53 = getelementptr inbounds nuw [10005 x i32], ptr %b, i64 0, i64 %indvars.iv77
  br label %for.cond39

for.cond39:                                       ; preds = %for.inc55, %if.then
  %indvars.iv67 = phi i64 [ %indvars.iv.next68, %for.inc55 ], [ 0, %if.then ]
  %exitcond71 = icmp eq i64 %indvars.iv67, %wide.trip.count
  br i1 %exitcond71, label %for.end57, label %for.body41

for.body41:                                       ; preds = %for.cond39
  %cmp42 = icmp samesign ult i64 %indvars.iv67, %indvars.iv77
  br i1 %cmp42, label %land.lhs.true43, label %for.inc55

land.lhs.true43:                                  ; preds = %for.body41
  %arrayidx48 = getelementptr inbounds nuw [500 x i8], ptr %s, i64 0, i64 %indvars.iv67
  %7 = load i8, ptr %arrayidx48, align 1, !tbaa !5
  %cmp50 = icmp eq i8 %3, %7
  br i1 %cmp50, label %if.then51, label %for.inc55

if.then51:                                        ; preds = %land.lhs.true43
  %8 = load i32, ptr %arrayidx53, align 4, !tbaa !11
  %inc54 = add nsw i32 %8, 1
  store i32 %inc54, ptr %arrayidx53, align 4, !tbaa !11
  br label %for.inc55

for.inc55:                                        ; preds = %for.body41, %land.lhs.true43, %if.then51
  %indvars.iv.next68 = add nuw nsw i64 %indvars.iv67, 1
  br label %for.cond39, !llvm.loop !14

for.end57:                                        ; preds = %for.cond39
  %9 = load i32, ptr %arrayidx53, align 4, !tbaa !11
  %cmp60 = icmp sgt i32 %9, 0
  br i1 %cmp60, label %if.then61, label %for.cond64

if.then61:                                        ; preds = %for.end57
  store i32 %6, ptr %arrayidx37, align 4, !tbaa !11
  br label %for.inc86

for.cond64:                                       ; preds = %for.end57, %for.inc81
  %10 = phi i32 [ %12, %for.inc81 ], [ %inc38, %for.end57 ]
  %indvars.iv72 = phi i64 [ %indvars.iv.next73, %for.inc81 ], [ 0, %for.end57 ]
  %exitcond76 = icmp eq i64 %indvars.iv72, %wide.trip.count
  br i1 %exitcond76, label %for.inc86, label %for.body66

for.body66:                                       ; preds = %for.cond64
  %cmp67 = icmp samesign ugt i64 %indvars.iv72, %indvars.iv77
  br i1 %cmp67, label %land.lhs.true68, label %for.inc81

land.lhs.true68:                                  ; preds = %for.body66
  %arrayidx73 = getelementptr inbounds nuw [500 x i8], ptr %s, i64 0, i64 %indvars.iv72
  %11 = load i8, ptr %arrayidx73, align 1, !tbaa !5
  %cmp75 = icmp eq i8 %3, %11
  br i1 %cmp75, label %if.then76, label %for.inc81

if.then76:                                        ; preds = %land.lhs.true68
  %inc79 = add nsw i32 %10, 1
  store i32 %inc79, ptr %arrayidx37, align 4, !tbaa !11
  br label %for.inc81

for.inc81:                                        ; preds = %for.body66, %land.lhs.true68, %if.then76
  %12 = phi i32 [ %10, %for.body66 ], [ %10, %land.lhs.true68 ], [ %inc79, %if.then76 ]
  %indvars.iv.next73 = add nuw nsw i64 %indvars.iv72, 1
  br label %for.cond64, !llvm.loop !15

for.inc86:                                        ; preds = %for.cond64, %for.body18, %if.then61
  %indvars.iv.next78 = add nuw nsw i64 %indvars.iv77, 1
  br label %for.cond13, !llvm.loop !16

for.cond89:                                       ; preds = %for.cond89.preheader, %for.inc105
  %indvars.iv80 = phi i64 [ 0, %for.cond89.preheader ], [ %indvars.iv.next81, %for.inc105 ]
  %k.0 = phi i32 [ 0, %for.cond89.preheader ], [ %k.1, %for.inc105 ]
  %exitcond84 = icmp eq i64 %indvars.iv80, %wide.trip.count83
  br i1 %exitcond84, label %for.cond108.preheader, label %for.body91

for.cond108.preheader:                            ; preds = %for.cond89
  %sub = add nsw i32 %k.0, -1
  %smax92 = call i32 @llvm.smax.i32(i32 %sub, i32 0)
  br label %for.cond108

for.body91:                                       ; preds = %for.cond89
  %arrayidx93 = getelementptr inbounds nuw [1005 x i32], ptr %a, i64 0, i64 %indvars.iv80
  %13 = load i32, ptr %arrayidx93, align 4, !tbaa !11
  %cmp94.not = icmp eq i32 %13, 0
  br i1 %cmp94.not, label %for.inc105, label %if.then95

if.then95:                                        ; preds = %for.body91
  %idxprom98 = sext i32 %k.0 to i64
  %arrayidx99 = getelementptr inbounds [1005 x i32], ptr %y, i64 0, i64 %idxprom98
  store i32 %13, ptr %arrayidx99, align 4, !tbaa !11
  %arrayidx101 = getelementptr inbounds nuw [500 x i8], ptr %s, i64 0, i64 %indvars.iv80
  %14 = load i8, ptr %arrayidx101, align 1, !tbaa !5
  %arrayidx103 = getelementptr inbounds [500 x i8], ptr %c, i64 0, i64 %idxprom98
  store i8 %14, ptr %arrayidx103, align 1, !tbaa !5
  %add = add nsw i32 %k.0, 1
  br label %for.inc105

for.inc105:                                       ; preds = %for.body91, %if.then95
  %k.1 = phi i32 [ %add, %if.then95 ], [ %k.0, %for.body91 ]
  %indvars.iv.next81 = add nuw nsw i64 %indvars.iv80, 1
  br label %for.cond89, !llvm.loop !17

for.cond108:                                      ; preds = %for.cond108.preheader, %for.inc149
  %indvars.iv88 = phi i32 [ %sub, %for.cond108.preheader ], [ %indvars.iv.next89, %for.inc149 ]
  %j.0 = phi i32 [ 0, %for.cond108.preheader ], [ %inc150, %for.inc149 ]
  %exitcond93.not = icmp eq i32 %j.0, %smax92
  br i1 %exitcond93.not, label %for.end151, label %for.cond111.preheader

for.cond111.preheader:                            ; preds = %for.cond108
  %smax = call i32 @llvm.smax.i32(i32 %indvars.iv88, i32 0)
  %wide.trip.count90 = zext nneg i32 %smax to i64
  br label %for.cond111

for.cond111:                                      ; preds = %for.cond111.backedge, %for.cond111.preheader
  %indvars.iv85 = phi i64 [ 0, %for.cond111.preheader ], [ %indvars.iv.next86, %for.cond111.backedge ]
  %exitcond91.not = icmp eq i64 %indvars.iv85, %wide.trip.count90
  br i1 %exitcond91.not, label %for.inc149, label %for.body115

for.body115:                                      ; preds = %for.cond111
  %arrayidx117 = getelementptr inbounds nuw [500 x i8], ptr %c, i64 0, i64 %indvars.iv85
  %15 = load i8, ptr %arrayidx117, align 1, !tbaa !5
  %indvars.iv.next86 = add nuw nsw i64 %indvars.iv85, 1
  %arrayidx121 = getelementptr inbounds nuw [500 x i8], ptr %c, i64 0, i64 %indvars.iv.next86
  %16 = load i8, ptr %arrayidx121, align 1, !tbaa !5
  %cmp123 = icmp sgt i8 %15, %16
  br i1 %cmp123, label %if.then124, label %for.cond111.backedge

for.cond111.backedge:                             ; preds = %for.body115, %if.then124
  br label %for.cond111, !llvm.loop !18

if.then124:                                       ; preds = %for.body115
  %arrayidx126 = getelementptr inbounds nuw [1005 x i32], ptr %y, i64 0, i64 %indvars.iv85
  %17 = load i32, ptr %arrayidx126, align 4, !tbaa !11
  %arrayidx129 = getelementptr inbounds nuw [1005 x i32], ptr %y, i64 0, i64 %indvars.iv.next86
  %18 = load i32, ptr %arrayidx129, align 4, !tbaa !11
  store i32 %18, ptr %arrayidx126, align 4, !tbaa !11
  store i32 %17, ptr %arrayidx129, align 4, !tbaa !11
  store i8 %16, ptr %arrayidx117, align 1, !tbaa !5
  store i8 %15, ptr %arrayidx121, align 1, !tbaa !5
  br label %for.cond111.backedge

for.inc149:                                       ; preds = %for.cond111
  %inc150 = add nuw i32 %j.0, 1
  %indvars.iv.next89 = add i32 %indvars.iv88, -1
  br label %for.cond108, !llvm.loop !19

for.end151:                                       ; preds = %for.cond108
  %cmp152 = icmp eq i32 %k.0, 0
  br i1 %cmp152, label %if.then153, label %if.end155

if.then153:                                       ; preds = %for.end151
  %call154 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1)
  br label %if.end155

if.end155:                                        ; preds = %if.then153, %for.end151
  %smax98 = call i32 @llvm.smax.i32(i32 %k.0, i32 0)
  %wide.trip.count99 = zext nneg i32 %smax98 to i64
  br label %for.cond156

for.cond156:                                      ; preds = %for.body158, %if.end155
  %indvars.iv94 = phi i64 [ %indvars.iv.next95, %for.body158 ], [ 0, %if.end155 ]
  %exitcond100.not = icmp eq i64 %indvars.iv94, %wide.trip.count99
  br i1 %exitcond100.not, label %for.end167, label %for.body158

for.body158:                                      ; preds = %for.cond156
  %arrayidx160 = getelementptr inbounds nuw [500 x i8], ptr %c, i64 0, i64 %indvars.iv94
  %19 = load i8, ptr %arrayidx160, align 1, !tbaa !5
  %conv161 = sext i8 %19 to i32
  %arrayidx163 = getelementptr inbounds nuw [1005 x i32], ptr %y, i64 0, i64 %indvars.iv94
  %20 = load i32, ptr %arrayidx163, align 4, !tbaa !11
  %call164 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %conv161, i32 noundef %20)
  %indvars.iv.next95 = add nuw nsw i64 %indvars.iv94, 1
  br label %for.cond156, !llvm.loop !20

for.end167:                                       ; preds = %for.cond156
  call void @llvm.lifetime.end.p0(i64 40020, ptr nonnull %b) #5
  call void @llvm.lifetime.end.p0(i64 4020, ptr nonnull %a) #5
  call void @llvm.lifetime.end.p0(i64 4020, ptr nonnull %y) #5
  call void @llvm.lifetime.end.p0(i64 500, ptr nonnull %c) #5
  call void @llvm.lifetime.end.p0(i64 500, ptr nonnull %s) #5
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
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = distinct !{!8, !9, !10}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!"llvm.loop.unroll.disable"}
!11 = !{!12, !12, i64 0}
!12 = !{!"int", !6, i64 0}
!13 = distinct !{!13, !9, !10}
!14 = distinct !{!14, !9, !10}
!15 = distinct !{!15, !9, !10}
!16 = distinct !{!16, !9, !10}
!17 = distinct !{!17, !9, !10}
!18 = distinct !{!18, !9, !10}
!19 = distinct !{!19, !9, !10}
!20 = distinct !{!20, !9, !10}
