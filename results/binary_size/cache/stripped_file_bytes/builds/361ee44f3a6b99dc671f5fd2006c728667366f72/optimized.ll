; ModuleID = '<stdin>'
source_filename = "/tmp/tmpuv1801mq.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"NO\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %s = alloca [510 x i8], align 16
  %a = alloca [500 x [5 x i8]], align 16
  %count = alloca [500 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #8
  call void @llvm.lifetime.start.p0(i64 510, ptr nonnull %s) #8
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %s)
  call void @llvm.lifetime.start.p0(i64 2500, ptr nonnull %a) #8
  call void @llvm.lifetime.start.p0(i64 2000, ptr nonnull %count) #8
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %entry
  %index = phi i64 [ 0, %entry ], [ %index.next, %vector.body ]
  %0 = getelementptr inbounds nuw [500 x i32], ptr %count, i64 0, i64 %index
  store <4 x i32> splat (i32 1), ptr %0, align 16, !tbaa !5
  %index.next = add nuw i64 %index, 4
  %1 = icmp eq i64 %index.next, 500
  br i1 %1, label %for.cond2.preheader, label %vector.body, !llvm.loop !9

for.cond2.preheader:                              ; preds = %vector.body
  %2 = load i32, ptr %n, align 4, !tbaa !5
  %invariant.op = add i32 %2, -1
  %idxprom335 = sext i32 %invariant.op to i64
  %arrayidx436 = getelementptr inbounds [510 x i8], ptr %s, i64 0, i64 %idxprom335
  %3 = load i8, ptr %arrayidx436, align 1, !tbaa !14
  %cmp5.not37 = icmp eq i8 %3, 0
  br i1 %cmp5.not37, label %if.then60.thread, label %for.cond7.preheader.lr.ph

if.then60.thread:                                 ; preds = %for.cond2.preheader
  %call6199 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef 0)
  br label %if.end78

for.cond7.preheader.lr.ph:                        ; preds = %for.cond2.preheader
  %cmp833 = icmp sgt i32 %2, 0
  br i1 %cmp833, label %for.cond7.preheader.us.preheader, label %for.cond7.preheader

for.cond7.preheader.us.preheader:                 ; preds = %for.cond7.preheader.lr.ph
  %4 = zext nneg i32 %2 to i64
  %idxprom22.us = zext nneg i32 %2 to i64
  br label %for.cond7.preheader.us

for.cond7.preheader.us:                           ; preds = %for.cond7.preheader.us.preheader, %for.cond7.preheader.us
  %indvar = phi i64 [ 0, %for.cond7.preheader.us.preheader ], [ %indvar.next, %for.cond7.preheader.us ]
  %5 = mul nuw nsw i64 %indvar, 5
  %scevgep = getelementptr nuw i8, ptr %a, i64 %5
  %scevgep56 = getelementptr nuw i8, ptr %s, i64 %indvar
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %scevgep, ptr nonnull align 1 %scevgep56, i64 %4, i1 false), !tbaa !14
  %arrayidx23.us = getelementptr inbounds nuw [500 x [5 x i8]], ptr %a, i64 0, i64 %indvar, i64 %idxprom22.us
  store i8 0, ptr %arrayidx23.us, align 1, !tbaa !14
  %indvar.next = add nuw nsw i64 %indvar, 1
  %6 = trunc i64 %indvar to i32
  %7 = add i32 %2, %6
  %idxprom3.us = sext i32 %7 to i64
  %arrayidx4.us = getelementptr inbounds [510 x i8], ptr %s, i64 0, i64 %idxprom3.us
  %8 = load i8, ptr %arrayidx4.us, align 1, !tbaa !14
  %cmp5.not.us = icmp eq i8 %8, 0
  br i1 %cmp5.not.us, label %for.body30.preheader, label %for.cond7.preheader.us, !llvm.loop !15

for.cond7.preheader:                              ; preds = %for.cond7.preheader.lr.ph, %for.cond7.preheader
  %indvars.iv51 = phi i64 [ %indvars.iv.next52, %for.cond7.preheader ], [ 0, %for.cond7.preheader.lr.ph ]
  %arrayidx23 = getelementptr inbounds nuw [500 x [5 x i8]], ptr %a, i64 0, i64 %indvars.iv51, i64 0
  store i8 0, ptr %arrayidx23, align 1, !tbaa !14
  %indvars.iv.next52 = add nuw nsw i64 %indvars.iv51, 1
  %9 = trunc nuw nsw i64 %indvars.iv51 to i32
  %sub.reass.reass = add i32 %2, %9
  %idxprom3 = sext i32 %sub.reass.reass to i64
  %arrayidx4 = getelementptr inbounds [510 x i8], ptr %s, i64 0, i64 %idxprom3
  %10 = load i8, ptr %arrayidx4, align 1, !tbaa !14
  %cmp5.not = icmp eq i8 %10, 0
  br i1 %cmp5.not, label %for.body30.preheader, label %for.cond7.preheader, !llvm.loop !15

for.body30.preheader:                             ; preds = %for.cond7.preheader, %for.cond7.preheader.us
  %indvar.next.lcssa.sink = phi i64 [ %indvar.next, %for.cond7.preheader.us ], [ %indvars.iv.next52, %for.cond7.preheader ]
  %11 = and i64 %indvar.next.lcssa.sink, 4294967295
  br label %for.body30

for.body30:                                       ; preds = %for.body30.preheader, %for.end48
  %indvars.iv73 = phi i64 [ 0, %for.body30.preheader ], [ %indvars.iv.next74, %for.end48 ]
  %indvars.iv66 = phi i64 [ 1, %for.body30.preheader ], [ %indvars.iv.next67, %for.end48 ]
  %max.046 = phi i32 [ 0, %for.body30.preheader ], [ %spec.select, %for.end48 ]
  %indvars.iv.next74 = add nuw nsw i64 %indvars.iv73, 1
  %cmp3342 = icmp samesign ult i64 %indvars.iv.next74, %11
  br i1 %cmp3342, label %for.body34.lr.ph, label %for.end48

for.body34.lr.ph:                                 ; preds = %for.body30
  %arrayidx36 = getelementptr inbounds nuw [500 x [5 x i8]], ptr %a, i64 0, i64 %indvars.iv73
  %arrayidx44 = getelementptr inbounds nuw [500 x i32], ptr %count, i64 0, i64 %indvars.iv73
  br label %for.body34

for.body34:                                       ; preds = %for.body34.lr.ph, %for.inc46
  %indvars.iv68 = phi i64 [ %indvars.iv66, %for.body34.lr.ph ], [ %indvars.iv.next69, %for.inc46 ]
  %arrayidx39 = getelementptr inbounds nuw [500 x [5 x i8]], ptr %a, i64 0, i64 %indvars.iv68
  %call41 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %arrayidx36, ptr noundef nonnull dereferenceable(1) %arrayidx39) #9
  %cmp42 = icmp eq i32 %call41, 0
  br i1 %cmp42, label %if.then, label %for.inc46

if.then:                                          ; preds = %for.body34
  %12 = load i32, ptr %arrayidx44, align 4, !tbaa !5
  %inc45 = add nsw i32 %12, 1
  store i32 %inc45, ptr %arrayidx44, align 4, !tbaa !5
  br label %for.inc46

for.inc46:                                        ; preds = %for.body34, %if.then
  %indvars.iv.next69 = add nuw nsw i64 %indvars.iv68, 1
  %exitcond72.not = icmp eq i64 %indvars.iv.next69, %11
  br i1 %exitcond72.not, label %for.end48, label %for.body34, !llvm.loop !16

for.end48:                                        ; preds = %for.inc46, %for.body30
  %arrayidx50 = getelementptr inbounds nuw [500 x i32], ptr %count, i64 0, i64 %indvars.iv73
  %13 = load i32, ptr %arrayidx50, align 4, !tbaa !5
  %spec.select = call i32 @llvm.smax.i32(i32 %13, i32 %max.046)
  %indvars.iv.next67 = add nuw nsw i64 %indvars.iv66, 1
  %exitcond77.not = icmp eq i64 %indvars.iv.next74, %11
  br i1 %exitcond77.not, label %for.end58, label %for.body30, !llvm.loop !17

for.end58:                                        ; preds = %for.end48
  %cmp59.not = icmp eq i32 %spec.select, 1
  br i1 %cmp59.not, label %if.else, label %for.body64.preheader

for.body64.preheader:                             ; preds = %for.end58
  %call61 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %spec.select)
  %wide.trip.count81 = and i64 %indvar.next.lcssa.sink, 4294967295
  br label %for.body64

for.body64:                                       ; preds = %for.body64.preheader, %for.inc74
  %indvars.iv78 = phi i64 [ 0, %for.body64.preheader ], [ %indvars.iv.next79, %for.inc74 ]
  %arrayidx66 = getelementptr inbounds nuw [500 x i32], ptr %count, i64 0, i64 %indvars.iv78
  %14 = load i32, ptr %arrayidx66, align 4, !tbaa !5
  %cmp67 = icmp eq i32 %14, %spec.select
  br i1 %cmp67, label %if.then68, label %for.inc74

if.then68:                                        ; preds = %for.body64
  %arrayidx70 = getelementptr inbounds nuw [500 x [5 x i8]], ptr %a, i64 0, i64 %indvars.iv78
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) %arrayidx70)
  br label %for.inc74

for.inc74:                                        ; preds = %for.body64, %if.then68
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 1
  %exitcond82.not = icmp eq i64 %indvars.iv.next79, %wide.trip.count81
  br i1 %exitcond82.not, label %if.end78, label %for.body64, !llvm.loop !18

if.else:                                          ; preds = %for.end58
  %call77 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4)
  br label %if.end78

if.end78:                                         ; preds = %for.inc74, %if.then60.thread, %if.else
  call void @llvm.lifetime.end.p0(i64 2000, ptr nonnull %count) #8
  call void @llvm.lifetime.end.p0(i64 2500, ptr nonnull %a) #8
  call void @llvm.lifetime.end.p0(i64 510, ptr nonnull %s) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #8
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #7

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nounwind }
attributes #9 = { nounwind willreturn memory(read) }

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
!9 = distinct !{!9, !10, !11, !12, !13}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = !{!"llvm.loop.isvectorized", i32 1}
!13 = !{!"llvm.loop.unroll.runtime.disable"}
!14 = !{!7, !7, i64 0}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11}
!18 = distinct !{!18, !10, !11}
