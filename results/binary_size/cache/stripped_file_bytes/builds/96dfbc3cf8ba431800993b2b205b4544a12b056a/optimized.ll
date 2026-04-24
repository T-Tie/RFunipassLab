; ModuleID = '<stdin>'
source_filename = "/tmp/tmp4pq0hl3x.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@__const.main.m1 = private unnamed_addr constant [12 x i32] [i32 31, i32 28, i32 31, i32 30, i32 31, i32 30, i32 31, i32 31, i32 30, i32 31, i32 30, i32 31], align 16
@__const.main.m = private unnamed_addr constant [12 x i32] [i32 31, i32 29, i32 31, i32 30, i32 31, i32 30, i32 31, i32 31, i32 30, i32 31, i32 30, i32 31], align 16
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"%d%d%d\0A\00", align 1
@str.6 = private unnamed_addr constant [3 x i8] c"NO\00", align 1
@str.7 = private unnamed_addr constant [4 x i8] c"YES\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %y = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %a) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  br label %for.cond

for.cond:                                         ; preds = %if.end89, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc91, %if.end89 ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %i.0, %0
  br i1 %cmp, label %for.body, label %for.end92

for.body:                                         ; preds = %for.cond
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %y, ptr noundef nonnull %a, ptr noundef nonnull %b)
  %1 = load i32, ptr %y, align 4, !tbaa !5
  %2 = and i32 %1, 3
  %cmp2 = icmp eq i32 %2, 0
  %rem3 = srem i32 %1, 100
  %cmp4.not = icmp ne i32 %rem3, 0
  %or.cond.not31 = and i1 %cmp2, %cmp4.not
  %rem5 = srem i32 %1, 400
  %cmp6 = icmp eq i32 %rem5, 0
  %or.cond30 = or i1 %cmp6, %or.cond.not31
  %3 = load i32, ptr %a, align 4, !tbaa !5
  %4 = load i32, ptr %b, align 4, !tbaa !5
  %cmp7 = icmp sgt i32 %3, %4
  br i1 %or.cond30, label %if.then, label %if.else43

if.then:                                          ; preds = %for.body
  br i1 %cmp7, label %for.cond9.preheader, label %if.else19

for.cond9.preheader:                              ; preds = %if.then
  %sub = sub nsw i32 %3, %4
  %add = add i32 %4, -1
  %wide.trip.count49 = zext nneg i32 %sub to i64
  br label %for.cond9

for.cond9:                                        ; preds = %for.cond9.preheader, %for.body11
  %indvars.iv45 = phi i64 [ 0, %for.cond9.preheader ], [ %indvars.iv.next46, %for.body11 ]
  %c.0 = phi i32 [ 0, %for.cond9.preheader ], [ %add13, %for.body11 ]
  %exitcond50.not = icmp eq i64 %indvars.iv45, %wide.trip.count49
  br i1 %exitcond50.not, label %for.end, label %for.body11

for.body11:                                       ; preds = %for.cond9
  %5 = trunc nuw nsw i64 %indvars.iv45 to i32
  %sub12 = add i32 %add, %5
  %idxprom = sext i32 %sub12 to i64
  %arrayidx = getelementptr inbounds [12 x i32], ptr @__const.main.m, i64 0, i64 %idxprom
  %6 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %add13 = add nsw i32 %6, %c.0
  %indvars.iv.next46 = add nuw nsw i64 %indvars.iv45, 1
  br label %for.cond9, !llvm.loop !9

for.end:                                          ; preds = %for.cond9
  %rem14 = srem i32 %c.0, 7
  %cmp15 = icmp eq i32 %rem14, 0
  %str.7.str.6 = select i1 %cmp15, ptr @str.7, ptr @str.6
  br label %if.end89.sink.split

if.else19:                                        ; preds = %if.then
  %cmp20 = icmp slt i32 %3, %4
  br i1 %cmp20, label %for.cond22.preheader, label %if.end89

for.cond22.preheader:                             ; preds = %if.else19
  %sub23 = sub nsw i32 %4, %3
  %add26 = add i32 %3, -1
  %wide.trip.count43 = zext nneg i32 %sub23 to i64
  br label %for.cond22

for.cond22:                                       ; preds = %for.cond22.preheader, %for.body25
  %indvars.iv39 = phi i64 [ 0, %for.cond22.preheader ], [ %indvars.iv.next40, %for.body25 ]
  %c.1 = phi i32 [ 0, %for.cond22.preheader ], [ %add30, %for.body25 ]
  %exitcond44.not = icmp eq i64 %indvars.iv39, %wide.trip.count43
  br i1 %exitcond44.not, label %for.end33, label %for.body25

for.body25:                                       ; preds = %for.cond22
  %7 = trunc nuw nsw i64 %indvars.iv39 to i32
  %sub27 = add i32 %add26, %7
  %idxprom28 = sext i32 %sub27 to i64
  %arrayidx29 = getelementptr inbounds [12 x i32], ptr @__const.main.m, i64 0, i64 %idxprom28
  %8 = load i32, ptr %arrayidx29, align 4, !tbaa !5
  %add30 = add nsw i32 %8, %c.1
  %indvars.iv.next40 = add nuw nsw i64 %indvars.iv39, 1
  br label %for.cond22, !llvm.loop !12

for.end33:                                        ; preds = %for.cond22
  %rem34 = srem i32 %c.1, 7
  %cmp35 = icmp eq i32 %rem34, 0
  %str.5.str.4 = select i1 %cmp35, ptr @str.7, ptr @str.6
  br label %if.end89.sink.split

if.else43:                                        ; preds = %for.body
  br i1 %cmp7, label %for.cond46.preheader, label %if.else65

for.cond46.preheader:                             ; preds = %if.else43
  %sub47 = sub nsw i32 %3, %4
  %add50 = add i32 %4, -1
  %wide.trip.count37 = zext nneg i32 %sub47 to i64
  br label %for.cond46

for.cond46:                                       ; preds = %for.cond46.preheader, %for.body49
  %indvars.iv33 = phi i64 [ 0, %for.cond46.preheader ], [ %indvars.iv.next34, %for.body49 ]
  %c.2 = phi i32 [ 0, %for.cond46.preheader ], [ %add54, %for.body49 ]
  %exitcond38.not = icmp eq i64 %indvars.iv33, %wide.trip.count37
  br i1 %exitcond38.not, label %for.end57, label %for.body49

for.body49:                                       ; preds = %for.cond46
  %9 = trunc nuw nsw i64 %indvars.iv33 to i32
  %sub51 = add i32 %add50, %9
  %idxprom52 = sext i32 %sub51 to i64
  %arrayidx53 = getelementptr inbounds [12 x i32], ptr @__const.main.m1, i64 0, i64 %idxprom52
  %10 = load i32, ptr %arrayidx53, align 4, !tbaa !5
  %add54 = add nsw i32 %10, %c.2
  %indvars.iv.next34 = add nuw nsw i64 %indvars.iv33, 1
  br label %for.cond46, !llvm.loop !13

for.end57:                                        ; preds = %for.cond46
  %rem58 = srem i32 %c.2, 7
  %cmp59 = icmp eq i32 %rem58, 0
  %str.3.str.2 = select i1 %cmp59, ptr @str.7, ptr @str.6
  br label %if.end89.sink.split

if.else65:                                        ; preds = %if.else43
  %cmp66 = icmp slt i32 %3, %4
  br i1 %cmp66, label %for.cond68.preheader, label %if.end89

for.cond68.preheader:                             ; preds = %if.else65
  %sub69 = sub nsw i32 %4, %3
  %add72 = add i32 %3, -1
  %wide.trip.count = zext nneg i32 %sub69 to i64
  br label %for.cond68

for.cond68:                                       ; preds = %for.cond68.preheader, %for.body71
  %indvars.iv = phi i64 [ 0, %for.cond68.preheader ], [ %indvars.iv.next, %for.body71 ]
  %c.3 = phi i32 [ 0, %for.cond68.preheader ], [ %add76, %for.body71 ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.end79, label %for.body71

for.body71:                                       ; preds = %for.cond68
  %11 = trunc nuw nsw i64 %indvars.iv to i32
  %sub73 = add i32 %add72, %11
  %idxprom74 = sext i32 %sub73 to i64
  %arrayidx75 = getelementptr inbounds [12 x i32], ptr @__const.main.m1, i64 0, i64 %idxprom74
  %12 = load i32, ptr %arrayidx75, align 4, !tbaa !5
  %add76 = add nsw i32 %12, %c.3
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond68, !llvm.loop !14

for.end79:                                        ; preds = %for.cond68
  %rem80 = srem i32 %c.3, 7
  %cmp81 = icmp eq i32 %rem80, 0
  %str.1.str = select i1 %cmp81, ptr @str.7, ptr @str.6
  br label %if.end89.sink.split

if.end89.sink.split:                              ; preds = %for.end79, %for.end57, %for.end33, %for.end
  %str.2.sink = phi ptr [ %str.7.str.6, %for.end ], [ %str.5.str.4, %for.end33 ], [ %str.3.str.2, %for.end57 ], [ %str.1.str, %for.end79 ]
  %puts24 = call i32 @puts(ptr nonnull dereferenceable(1) %str.2.sink)
  br label %if.end89

if.end89:                                         ; preds = %if.end89.sink.split, %if.else65, %if.else19
  %inc91 = add nuw nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !15

for.end92:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %a) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #4
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #3

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
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
