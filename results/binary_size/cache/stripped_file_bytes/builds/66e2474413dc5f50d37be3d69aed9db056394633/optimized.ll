; ModuleID = '<stdin>'
source_filename = "/tmp/tmpo0jhhppi.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [7 x i8] c"%c=%d\0A\00", align 1
@stdin = external local_unnamed_addr global ptr, align 8
@str = private unnamed_addr constant [3 x i8] c"No\00", align 1

; Function Attrs: mustprogress nofree norecurse nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %a = alloca [300 x i8], align 16
  %b = alloca [300 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 300, ptr nonnull %a) #5
  call void @llvm.lifetime.start.p0(i64 300, ptr nonnull %b) #5
  br label %while.cond.outer

while.cond.outer:                                 ; preds = %if.then12, %entry
  %j.0.ph = phi i32 [ %inc15, %if.then12 ], [ 0, %entry ]
  %i.0.ph = phi i32 [ %i.0.ph51, %if.then12 ], [ 0, %entry ]
  %l.0.ph = phi i32 [ %inc16, %if.then12 ], [ 0, %entry ]
  br label %while.cond.outer50

while.cond.outer50:                               ; preds = %while.cond.outer, %if.end.thread
  %i.0.ph51 = phi i32 [ %i.0.ph, %while.cond.outer ], [ %inc, %if.end.thread ]
  %l.0.ph52 = phi i32 [ %l.0.ph, %while.cond.outer ], [ %inc6, %if.end.thread ]
  br label %while.cond

while.cond:                                       ; preds = %while.cond.outer50, %if.end
  %0 = load ptr, ptr @stdin, align 8, !tbaa !5
  %call.i34 = tail call i32 @getc(ptr noundef %0)
  %sext = shl i32 %call.i34, 24
  %conv1 = ashr exact i32 %sext, 24
  %cmp.not = icmp eq i32 %sext, 167772160
  br i1 %cmp.not, label %for.cond.preheader, label %while.body

for.cond.preheader:                               ; preds = %while.cond
  %smax = tail call i32 @llvm.smax.i32(i32 %i.0.ph51, i32 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond

while.body:                                       ; preds = %while.cond
  %1 = add nsw i32 %conv1, -65
  %or.cond = icmp ult i32 %1, 26
  br i1 %or.cond, label %if.end.thread, label %if.end

if.end.thread:                                    ; preds = %while.body
  %c.0.le61 = trunc i32 %call.i34 to i8
  %idxprom = sext i32 %i.0.ph51 to i64
  %arrayidx = getelementptr inbounds [300 x i8], ptr %a, i64 0, i64 %idxprom
  store i8 %c.0.le61, ptr %arrayidx, align 1, !tbaa !10
  %inc = add nsw i32 %i.0.ph51, 1
  %inc6 = add nsw i32 %l.0.ph52, 1
  br label %while.cond.outer50, !llvm.loop !11

if.end:                                           ; preds = %while.body
  %2 = add nsw i32 %conv1, -97
  %or.cond1 = icmp ult i32 %2, 26
  br i1 %or.cond1, label %if.then12, label %while.cond, !llvm.loop !11

if.then12:                                        ; preds = %if.end
  %c.0.le = trunc i32 %call.i34 to i8
  %idxprom13 = zext nneg i32 %j.0.ph to i64
  %arrayidx14 = getelementptr inbounds nuw [300 x i8], ptr %b, i64 0, i64 %idxprom13
  store i8 %c.0.le, ptr %arrayidx14, align 1, !tbaa !10
  %inc15 = add nuw nsw i32 %j.0.ph, 1
  %inc16 = add nsw i32 %l.0.ph52, 1
  br label %while.cond.outer, !llvm.loop !11

for.cond:                                         ; preds = %for.cond.preheader, %for.inc36
  %i.2 = phi i32 [ %inc37, %for.inc36 ], [ 65, %for.cond.preheader ]
  %exitcond41.not = icmp eq i32 %i.2, 91
  br i1 %exitcond41.not, label %for.cond39.preheader, label %for.cond21

for.cond39.preheader:                             ; preds = %for.cond
  %wide.trip.count47 = zext nneg i32 %j.0.ph to i64
  br label %for.cond39

for.cond21:                                       ; preds = %for.cond, %for.body23
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body23 ], [ 0, %for.cond ]
  %k.0 = phi i32 [ %spec.select, %for.body23 ], [ 0, %for.cond ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body23

for.body23:                                       ; preds = %for.cond21
  %arrayidx25 = getelementptr inbounds nuw [300 x i8], ptr %a, i64 0, i64 %indvars.iv
  %3 = load i8, ptr %arrayidx25, align 1, !tbaa !10
  %conv26 = sext i8 %3 to i32
  %cmp27 = icmp eq i32 %i.2, %conv26
  %inc29 = zext i1 %cmp27 to i32
  %spec.select = add nuw nsw i32 %k.0, %inc29
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond21, !llvm.loop !14

for.end:                                          ; preds = %for.cond21
  %cmp32.not = icmp eq i32 %k.0, 0
  br i1 %cmp32.not, label %for.inc36, label %if.then33

if.then33:                                        ; preds = %for.end
  %call34 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.2, i32 noundef %k.0)
  br label %for.inc36

for.inc36:                                        ; preds = %for.end, %if.then33
  %inc37 = add nuw nsw i32 %i.2, 1
  br label %for.cond, !llvm.loop !15

for.cond39:                                       ; preds = %for.cond39.preheader, %for.inc59
  %i.3 = phi i32 [ %inc60, %for.inc59 ], [ 97, %for.cond39.preheader ]
  %exitcond49.not = icmp eq i32 %i.3, 123
  br i1 %exitcond49.not, label %for.end61, label %for.cond42

for.cond42:                                       ; preds = %for.cond39, %for.body44
  %indvars.iv42 = phi i64 [ %indvars.iv.next43, %for.body44 ], [ 0, %for.cond39 ]
  %k.2 = phi i32 [ %spec.select33, %for.body44 ], [ 0, %for.cond39 ]
  %exitcond48.not = icmp eq i64 %indvars.iv42, %wide.trip.count47
  br i1 %exitcond48.not, label %for.end54, label %for.body44

for.body44:                                       ; preds = %for.cond42
  %arrayidx46 = getelementptr inbounds nuw [300 x i8], ptr %b, i64 0, i64 %indvars.iv42
  %4 = load i8, ptr %arrayidx46, align 1, !tbaa !10
  %conv47 = sext i8 %4 to i32
  %cmp48 = icmp eq i32 %i.3, %conv47
  %inc50 = zext i1 %cmp48 to i32
  %spec.select33 = add nuw nsw i32 %k.2, %inc50
  %indvars.iv.next43 = add nuw nsw i64 %indvars.iv42, 1
  br label %for.cond42, !llvm.loop !16

for.end54:                                        ; preds = %for.cond42
  %cmp55.not = icmp eq i32 %k.2, 0
  br i1 %cmp55.not, label %for.inc59, label %if.then56

if.then56:                                        ; preds = %for.end54
  %call57 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.3, i32 noundef %k.2)
  br label %for.inc59

for.inc59:                                        ; preds = %for.end54, %if.then56
  %inc60 = add nuw nsw i32 %i.3, 1
  br label %for.cond39, !llvm.loop !17

for.end61:                                        ; preds = %for.cond39
  %cmp62 = icmp eq i32 %l.0.ph52, 0
  br i1 %cmp62, label %if.then63, label %if.end65

if.then63:                                        ; preds = %for.end61
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %if.end65

if.end65:                                         ; preds = %if.then63, %for.end61
  call void @llvm.lifetime.end.p0(i64 300, ptr nonnull %b) #5
  call void @llvm.lifetime.end.p0(i64 300, ptr nonnull %a) #5
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

attributes #0 = { mustprogress nofree norecurse nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
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
!6 = !{!"p1 _ZTS8_IO_FILE", !7, i64 0}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C++ TBAA"}
!10 = !{!8, !8, i64 0}
!11 = distinct !{!11, !12, !13}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"llvm.loop.unroll.disable"}
!14 = distinct !{!14, !12, !13}
!15 = distinct !{!15, !12, !13}
!16 = distinct !{!16, !12, !13}
!17 = distinct !{!17, !12, !13}
