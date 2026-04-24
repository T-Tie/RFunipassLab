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
  br i1 %cmp.not, label %for.cond1.preheader, label %for.cond, !llvm.loop !8

for.cond1.preheader:                              ; preds = %for.cond
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4016) %b, i8 0, i64 4016, i1 false), !tbaa !11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4016) %a, i8 0, i64 4016, i1 false), !tbaa !11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4016) %y, i8 0, i64 4016, i1 false), !tbaa !11
  %2 = load i8, ptr %s, align 16, !tbaa !5
  %cmp17.not66 = icmp eq i8 %2, 0
  %.pre112 = add nuw i32 %n.0, 1
  br i1 %cmp17.not66, label %for.cond89.preheader, label %for.body18.preheader

for.body18.preheader:                             ; preds = %for.cond1.preheader
  %wide.trip.count = zext i32 %.pre112 to i64
  br label %for.body18

for.cond89.preheader:                             ; preds = %for.inc86, %for.cond1.preheader
  %wide.trip.count96 = zext i32 %.pre112 to i64
  br label %for.body91

for.body18:                                       ; preds = %for.body18.preheader, %for.inc86
  %indvars.iv90 = phi i64 [ 0, %for.body18.preheader ], [ %indvars.iv.next91, %for.inc86 ]
  %3 = phi i8 [ %2, %for.body18.preheader ], [ %13, %for.inc86 ]
  %4 = and i8 %3, -33
  %5 = add i8 %4, -65
  %or.cond62 = icmp ult i8 %5, 26
  br i1 %or.cond62, label %if.then, label %for.inc86

if.then:                                          ; preds = %for.body18
  %arrayidx37 = getelementptr inbounds nuw [1005 x i32], ptr %a, i64 0, i64 %indvars.iv90
  %6 = load i32, ptr %arrayidx37, align 4, !tbaa !11
  %inc38 = add nsw i32 %6, 1
  store i32 %inc38, ptr %arrayidx37, align 4, !tbaa !11
  %arrayidx53 = getelementptr inbounds nuw [10005 x i32], ptr %b, i64 0, i64 %indvars.iv90
  br label %for.body41

for.body41:                                       ; preds = %if.then, %for.inc55
  %indvars.iv81 = phi i64 [ 0, %if.then ], [ %indvars.iv.next82, %for.inc55 ]
  %cmp42 = icmp samesign ult i64 %indvars.iv81, %indvars.iv90
  br i1 %cmp42, label %land.lhs.true43, label %for.inc55

land.lhs.true43:                                  ; preds = %for.body41
  %arrayidx48 = getelementptr inbounds nuw [500 x i8], ptr %s, i64 0, i64 %indvars.iv81
  %7 = load i8, ptr %arrayidx48, align 1, !tbaa !5
  %cmp50 = icmp eq i8 %3, %7
  br i1 %cmp50, label %if.then51, label %for.inc55

if.then51:                                        ; preds = %land.lhs.true43
  %8 = load i32, ptr %arrayidx53, align 4, !tbaa !11
  %inc54 = add nsw i32 %8, 1
  store i32 %inc54, ptr %arrayidx53, align 4, !tbaa !11
  br label %for.inc55

for.inc55:                                        ; preds = %for.body41, %land.lhs.true43, %if.then51
  %indvars.iv.next82 = add nuw nsw i64 %indvars.iv81, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next82, %wide.trip.count
  br i1 %exitcond.not, label %for.end57, label %for.body41, !llvm.loop !13

for.end57:                                        ; preds = %for.inc55
  %9 = load i32, ptr %arrayidx53, align 4, !tbaa !11
  %cmp60 = icmp sgt i32 %9, 0
  br i1 %cmp60, label %if.then61, label %for.body66

if.then61:                                        ; preds = %for.end57
  store i32 %6, ptr %arrayidx37, align 4, !tbaa !11
  br label %for.inc86

for.body66:                                       ; preds = %for.end57, %for.inc81
  %10 = phi i32 [ %12, %for.inc81 ], [ %inc38, %for.end57 ]
  %indvars.iv85 = phi i64 [ %indvars.iv.next86, %for.inc81 ], [ 0, %for.end57 ]
  %cmp67 = icmp samesign ugt i64 %indvars.iv85, %indvars.iv90
  br i1 %cmp67, label %land.lhs.true68, label %for.inc81

land.lhs.true68:                                  ; preds = %for.body66
  %arrayidx73 = getelementptr inbounds nuw [500 x i8], ptr %s, i64 0, i64 %indvars.iv85
  %11 = load i8, ptr %arrayidx73, align 1, !tbaa !5
  %cmp75 = icmp eq i8 %3, %11
  br i1 %cmp75, label %if.then76, label %for.inc81

if.then76:                                        ; preds = %land.lhs.true68
  %inc79 = add nsw i32 %10, 1
  store i32 %inc79, ptr %arrayidx37, align 4, !tbaa !11
  br label %for.inc81

for.inc81:                                        ; preds = %for.body66, %land.lhs.true68, %if.then76
  %12 = phi i32 [ %10, %for.body66 ], [ %10, %land.lhs.true68 ], [ %inc79, %if.then76 ]
  %indvars.iv.next86 = add nuw nsw i64 %indvars.iv85, 1
  %exitcond89.not = icmp eq i64 %indvars.iv.next86, %wide.trip.count
  br i1 %exitcond89.not, label %for.inc86, label %for.body66, !llvm.loop !14

for.inc86:                                        ; preds = %for.inc81, %for.body18, %if.then61
  %indvars.iv.next91 = add nuw nsw i64 %indvars.iv90, 1
  %arrayidx15 = getelementptr inbounds nuw [500 x i8], ptr %s, i64 0, i64 %indvars.iv.next91
  %13 = load i8, ptr %arrayidx15, align 1, !tbaa !5
  %cmp17.not = icmp eq i8 %13, 0
  br i1 %cmp17.not, label %for.cond89.preheader, label %for.body18, !llvm.loop !15

for.cond108.preheader:                            ; preds = %for.inc105
  %sub = add i32 %k.1, -1
  %cmp10973 = icmp sgt i32 %k.1, 1
  br i1 %cmp10973, label %for.cond111.preheader, label %for.end151

for.body91:                                       ; preds = %for.cond89.preheader, %for.inc105
  %indvars.iv92 = phi i64 [ 0, %for.cond89.preheader ], [ %indvars.iv.next93, %for.inc105 ]
  %k.069 = phi i32 [ 0, %for.cond89.preheader ], [ %k.1, %for.inc105 ]
  %arrayidx93 = getelementptr inbounds nuw [1005 x i32], ptr %a, i64 0, i64 %indvars.iv92
  %14 = load i32, ptr %arrayidx93, align 4, !tbaa !11
  %cmp94.not = icmp eq i32 %14, 0
  br i1 %cmp94.not, label %for.inc105, label %if.then95

if.then95:                                        ; preds = %for.body91
  %idxprom98 = sext i32 %k.069 to i64
  %arrayidx99 = getelementptr inbounds [1005 x i32], ptr %y, i64 0, i64 %idxprom98
  store i32 %14, ptr %arrayidx99, align 4, !tbaa !11
  %arrayidx101 = getelementptr inbounds nuw [500 x i8], ptr %s, i64 0, i64 %indvars.iv92
  %15 = load i8, ptr %arrayidx101, align 1, !tbaa !5
  %arrayidx103 = getelementptr inbounds [500 x i8], ptr %c, i64 0, i64 %idxprom98
  store i8 %15, ptr %arrayidx103, align 1, !tbaa !5
  %add = add nsw i32 %k.069, 1
  br label %for.inc105

for.inc105:                                       ; preds = %for.body91, %if.then95
  %k.1 = phi i32 [ %add, %if.then95 ], [ %k.069, %for.body91 ]
  %indvars.iv.next93 = add nuw nsw i64 %indvars.iv92, 1
  %exitcond97.not = icmp eq i64 %indvars.iv.next93, %wide.trip.count96
  br i1 %exitcond97.not, label %for.cond108.preheader, label %for.body91, !llvm.loop !16

for.cond111.preheader:                            ; preds = %for.cond108.preheader, %for.inc149
  %indvars.iv101 = phi i32 [ %indvars.iv.next102, %for.inc149 ], [ %sub, %for.cond108.preheader ]
  %j.074 = phi i32 [ %inc150, %for.inc149 ], [ 0, %for.cond108.preheader ]
  %cmp11471 = icmp sgt i32 %sub, %j.074
  br i1 %cmp11471, label %for.body115.preheader, label %for.inc149

for.body115.preheader:                            ; preds = %for.cond111.preheader
  %wide.trip.count103 = zext i32 %indvars.iv101 to i64
  %.pre = load i8, ptr %c, align 16, !tbaa !5
  br label %for.body115

for.body115:                                      ; preds = %for.body115.preheader, %for.inc146
  %16 = phi i8 [ %.pre, %for.body115.preheader ], [ %20, %for.inc146 ]
  %indvars.iv98 = phi i64 [ 0, %for.body115.preheader ], [ %indvars.iv.next99, %for.inc146 ]
  %indvars.iv.next99 = add nuw nsw i64 %indvars.iv98, 1
  %arrayidx121 = getelementptr inbounds nuw [500 x i8], ptr %c, i64 0, i64 %indvars.iv.next99
  %17 = load i8, ptr %arrayidx121, align 1, !tbaa !5
  %cmp123 = icmp sgt i8 %16, %17
  br i1 %cmp123, label %if.then124, label %for.inc146

if.then124:                                       ; preds = %for.body115
  %arrayidx117 = getelementptr inbounds nuw [500 x i8], ptr %c, i64 0, i64 %indvars.iv98
  %arrayidx126 = getelementptr inbounds nuw [1005 x i32], ptr %y, i64 0, i64 %indvars.iv98
  %18 = load <2 x i32>, ptr %arrayidx126, align 4, !tbaa !11
  %19 = shufflevector <2 x i32> %18, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %19, ptr %arrayidx126, align 4, !tbaa !11
  store i8 %17, ptr %arrayidx117, align 1, !tbaa !5
  store i8 %16, ptr %arrayidx121, align 1, !tbaa !5
  br label %for.inc146

for.inc146:                                       ; preds = %for.body115, %if.then124
  %20 = phi i8 [ %17, %for.body115 ], [ %16, %if.then124 ]
  %exitcond104.not = icmp eq i64 %indvars.iv.next99, %wide.trip.count103
  br i1 %exitcond104.not, label %for.inc149, label %for.body115, !llvm.loop !17

for.inc149:                                       ; preds = %for.inc146, %for.cond111.preheader
  %inc150 = add nuw nsw i32 %j.074, 1
  %indvars.iv.next102 = add i32 %indvars.iv101, -1
  %exitcond105.not = icmp eq i32 %inc150, %sub
  br i1 %exitcond105.not, label %for.end151, label %for.cond111.preheader, !llvm.loop !18

for.end151:                                       ; preds = %for.inc149, %for.cond108.preheader
  %cmp152 = icmp eq i32 %k.1, 0
  br i1 %cmp152, label %if.end155.thread, label %if.end155

if.end155.thread:                                 ; preds = %for.end151
  %call154 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1)
  br label %for.end167

if.end155:                                        ; preds = %for.end151
  %cmp15775 = icmp sgt i32 %k.1, 0
  br i1 %cmp15775, label %for.body158.preheader, label %for.end167

for.body158.preheader:                            ; preds = %if.end155
  %wide.trip.count110 = zext nneg i32 %k.1 to i64
  br label %for.body158

for.body158:                                      ; preds = %for.body158.preheader, %for.body158
  %indvars.iv106 = phi i64 [ 0, %for.body158.preheader ], [ %indvars.iv.next107, %for.body158 ]
  %arrayidx160 = getelementptr inbounds nuw [500 x i8], ptr %c, i64 0, i64 %indvars.iv106
  %21 = load i8, ptr %arrayidx160, align 1, !tbaa !5
  %conv161 = sext i8 %21 to i32
  %arrayidx163 = getelementptr inbounds nuw [1005 x i32], ptr %y, i64 0, i64 %indvars.iv106
  %22 = load i32, ptr %arrayidx163, align 4, !tbaa !11
  %call164 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %conv161, i32 noundef %22)
  %indvars.iv.next107 = add nuw nsw i64 %indvars.iv106, 1
  %exitcond111.not = icmp eq i64 %indvars.iv.next107, %wide.trip.count110
  br i1 %exitcond111.not, label %for.end167, label %for.body158, !llvm.loop !19

for.end167:                                       ; preds = %for.body158, %if.end155.thread, %if.end155
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

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: write) }
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
