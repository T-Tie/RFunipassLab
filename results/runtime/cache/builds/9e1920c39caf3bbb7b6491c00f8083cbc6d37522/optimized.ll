; ModuleID = '<stdin>'
source_filename = "/tmp/tmpedhr_zc_.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"No\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%c=%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %a = alloca [300 x i8], align 16
  %b = alloca [30 x i32], align 16
  %c = alloca [30 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 300, ptr nonnull %a) #6
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %b) #6
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %c) #6
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %exitcond.not = icmp eq i64 %indvars.iv, 26
  br i1 %exitcond.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [30 x i32], ptr %b, i64 0, i64 %indvars.iv
  store i32 0, ptr %arrayidx, align 4, !tbaa !5
  %arrayidx2 = getelementptr inbounds nuw [30 x i32], ptr %c, i64 0, i64 %indvars.iv
  store i32 0, ptr %arrayidx2, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %a)
  %call4 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %a) #7
  %conv = trunc i64 %call4 to i32
  %smax = call i32 @llvm.smax.i32(i32 %conv, i32 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc42, %for.end
  %indvars.iv32 = phi i64 [ %indvars.iv.next33, %for.inc42 ], [ 0, %for.end ]
  %m.0 = phi i32 [ %m.2, %for.inc42 ], [ 0, %for.end ]
  %exitcond35.not = icmp eq i64 %indvars.iv32, %wide.trip.count
  br i1 %exitcond35.not, label %for.end44, label %for.body7

for.body7:                                        ; preds = %for.cond5
  %arrayidx9 = getelementptr inbounds nuw [300 x i8], ptr %a, i64 0, i64 %indvars.iv32
  %0 = load i8, ptr %arrayidx9, align 1, !tbaa !12
  %1 = add i8 %0, -65
  %or.cond = icmp ult i8 %1, 26
  br i1 %or.cond, label %for.inc42.sink.split, label %if.end

if.end:                                           ; preds = %for.body7
  %2 = add i8 %0, -97
  %or.cond26 = icmp ult i8 %2, 26
  br i1 %or.cond26, label %for.inc42.sink.split, label %for.inc42

for.inc42.sink.split:                             ; preds = %if.end, %for.body7
  %.sink = phi i8 [ %1, %for.body7 ], [ %2, %if.end ]
  %b.sink = phi ptr [ %b, %for.body7 ], [ %c, %if.end ]
  %sub = zext nneg i8 %.sink to i64
  %arrayidx20 = getelementptr inbounds nuw [30 x i32], ptr %b.sink, i64 0, i64 %sub
  %3 = load i32, ptr %arrayidx20, align 4, !tbaa !5
  %inc21 = add nsw i32 %3, 1
  store i32 %inc21, ptr %arrayidx20, align 4, !tbaa !5
  %inc22 = add nsw i32 %m.0, 1
  br label %for.inc42

for.inc42:                                        ; preds = %for.inc42.sink.split, %if.end
  %m.2 = phi i32 [ %m.0, %if.end ], [ %inc22, %for.inc42.sink.split ]
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1
  br label %for.cond5, !llvm.loop !13

for.end44:                                        ; preds = %for.cond5
  %cmp45 = icmp eq i32 %m.0, 0
  br i1 %cmp45, label %if.then46, label %for.cond49.preheader

if.then46:                                        ; preds = %for.end44
  %call47 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1)
  br label %for.cond49.preheader

for.cond49.preheader:                             ; preds = %if.then46, %for.end44
  br label %for.cond49

for.cond49:                                       ; preds = %for.cond49.preheader, %for.inc60
  %indvars.iv36 = phi i64 [ %indvars.iv.next37, %for.inc60 ], [ 0, %for.cond49.preheader ]
  %exitcond40.not = icmp eq i64 %indvars.iv36, 26
  br i1 %exitcond40.not, label %for.cond63, label %for.body51

for.body51:                                       ; preds = %for.cond49
  %arrayidx53 = getelementptr inbounds nuw [30 x i32], ptr %b, i64 0, i64 %indvars.iv36
  %4 = load i32, ptr %arrayidx53, align 4, !tbaa !5
  %cmp54.not = icmp eq i32 %4, 0
  br i1 %cmp54.not, label %for.inc60, label %if.then55

if.then55:                                        ; preds = %for.body51
  %5 = trunc i64 %indvars.iv36 to i32
  %6 = add i32 %5, 65
  %call58 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %6, i32 noundef %4)
  br label %for.inc60

for.inc60:                                        ; preds = %for.body51, %if.then55
  %indvars.iv.next37 = add nuw nsw i64 %indvars.iv36, 1
  br label %for.cond49, !llvm.loop !14

for.cond63:                                       ; preds = %for.cond49, %for.inc75
  %indvars.iv41 = phi i64 [ %indvars.iv.next42, %for.inc75 ], [ 0, %for.cond49 ]
  %exitcond45.not = icmp eq i64 %indvars.iv41, 26
  br i1 %exitcond45.not, label %for.end77, label %for.body65

for.body65:                                       ; preds = %for.cond63
  %arrayidx67 = getelementptr inbounds nuw [30 x i32], ptr %c, i64 0, i64 %indvars.iv41
  %7 = load i32, ptr %arrayidx67, align 4, !tbaa !5
  %cmp68.not = icmp eq i32 %7, 0
  br i1 %cmp68.not, label %for.inc75, label %if.then69

if.then69:                                        ; preds = %for.body65
  %8 = trunc i64 %indvars.iv41 to i32
  %9 = add i32 %8, 97
  %call73 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %9, i32 noundef %7)
  br label %for.inc75

for.inc75:                                        ; preds = %for.body65, %if.then69
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1
  br label %for.cond63, !llvm.loop !15

for.end77:                                        ; preds = %for.cond63
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %c) #6
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %b) #6
  call void @llvm.lifetime.end.p0(i64 300, ptr nonnull %a) #6
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }
attributes #7 = { nounwind willreturn memory(read) }

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
