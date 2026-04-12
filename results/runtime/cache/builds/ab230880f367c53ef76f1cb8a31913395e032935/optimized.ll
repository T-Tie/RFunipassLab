; ModuleID = '<stdin>'
source_filename = "/tmp/tmpzv6v6w2o.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"NO\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %m = alloca i32, align 4
  %a = alloca [1000 x i8], align 16
  %c = alloca [1000 x i32], align 16
  %d = alloca [1000 x i32], align 16
  %b = alloca [1000 x [1000 x i8]], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %m) #8
  call void @llvm.lifetime.start.p0(i64 1000, ptr nonnull %a) #8
  call void @llvm.lifetime.start.p0(i64 4000, ptr nonnull %c) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4000) %c, i8 0, i64 4000, i1 false)
  call void @llvm.lifetime.start.p0(i64 4000, ptr nonnull %d) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4000) %d, i8 0, i64 4000, i1 false)
  call void @llvm.lifetime.start.p0(i64 1000000, ptr nonnull %b) #8
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %m)
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %a)
  %call3 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %a) #9
  %conv = trunc i64 %call3 to i32
  %add = add nsw i32 %conv, 1
  %0 = load i32, ptr %m, align 4, !tbaa !5
  %sub = sub i32 %add, %0
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 0)
  %smax57 = call i32 @llvm.smax.i32(i32 %sub, i32 0)
  %wide.trip.count58 = zext nneg i32 %smax57 to i64
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond

for.cond:                                         ; preds = %for.inc12, %entry
  %indvars.iv54 = phi i64 [ %indvars.iv.next55, %for.inc12 ], [ 0, %entry ]
  %exitcond59.not = icmp eq i64 %indvars.iv54, %wide.trip.count58
  br i1 %exitcond59.not, label %for.cond15.preheader, label %for.cond4

for.cond15.preheader:                             ; preds = %for.cond
  %wide.trip.count70 = zext i32 %sub to i64
  %wide.trip.count63 = zext nneg i32 %smax to i64
  br label %for.cond15

for.cond4:                                        ; preds = %for.cond, %for.body6
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body6 ], [ 0, %for.cond ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.inc12, label %for.body6

for.body6:                                        ; preds = %for.cond4
  %1 = add nuw nsw i64 %indvars.iv, %indvars.iv54
  %arrayidx = getelementptr inbounds nuw [1000 x i8], ptr %a, i64 0, i64 %1
  %2 = load i8, ptr %arrayidx, align 1, !tbaa !9
  %arrayidx11 = getelementptr inbounds nuw [1000 x [1000 x i8]], ptr %b, i64 0, i64 %indvars.iv54, i64 %indvars.iv
  store i8 %2, ptr %arrayidx11, align 1, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond4, !llvm.loop !10

for.inc12:                                        ; preds = %for.cond4
  %indvars.iv.next55 = add nuw nsw i64 %indvars.iv54, 1
  br label %for.cond, !llvm.loop !13

for.cond15.loopexit:                              ; preds = %for.cond19
  %indvars.iv.next73 = add nuw nsw i64 %indvars.iv72, 1
  %indvars.iv.next66 = add nuw nsw i64 %indvars.iv65, 1
  br label %for.cond15, !llvm.loop !14

for.cond15:                                       ; preds = %for.cond15.preheader, %for.cond15.loopexit
  %indvars.iv72 = phi i64 [ 0, %for.cond15.preheader ], [ %indvars.iv.next73, %for.cond15.loopexit ]
  %indvars.iv65 = phi i64 [ 1, %for.cond15.preheader ], [ %indvars.iv.next66, %for.cond15.loopexit ]
  %exitcond76.not = icmp eq i64 %indvars.iv72, %wide.trip.count58
  br i1 %exitcond76.not, label %for.cond56.preheader, label %for.body17

for.cond56.preheader:                             ; preds = %for.cond15
  %sub60 = add i32 %sub, -1
  %smax80 = call i32 @llvm.smax.i32(i32 %sub60, i32 0)
  %wide.trip.count81 = zext nneg i32 %smax80 to i64
  br label %for.cond56

for.body17:                                       ; preds = %for.cond15
  %arrayidx43 = getelementptr inbounds nuw [1000 x i32], ptr %c, i64 0, i64 %indvars.iv72
  %arrayidx49 = getelementptr inbounds nuw [1000 x i32], ptr %d, i64 0, i64 %indvars.iv72
  br label %for.cond19

for.cond19:                                       ; preds = %if.end45, %for.body17
  %indvars.iv67 = phi i64 [ %indvars.iv.next68, %if.end45 ], [ %indvars.iv65, %for.body17 ]
  %exitcond71.not = icmp eq i64 %indvars.iv67, %wide.trip.count70
  br i1 %exitcond71.not, label %for.cond15.loopexit, label %for.cond22

for.cond22:                                       ; preds = %for.cond19, %for.body24
  %indvars.iv60 = phi i64 [ %indvars.iv.next61, %for.body24 ], [ 0, %for.cond19 ]
  %x.0 = phi i32 [ %spec.select, %for.body24 ], [ 0, %for.cond19 ]
  %exitcond64.not = icmp eq i64 %indvars.iv60, %wide.trip.count63
  br i1 %exitcond64.not, label %for.end39, label %for.body24

for.body24:                                       ; preds = %for.cond22
  %arrayidx28 = getelementptr inbounds nuw [1000 x [1000 x i8]], ptr %b, i64 0, i64 %indvars.iv72, i64 %indvars.iv60
  %3 = load i8, ptr %arrayidx28, align 1, !tbaa !9
  %arrayidx33 = getelementptr inbounds nuw [1000 x [1000 x i8]], ptr %b, i64 0, i64 %indvars.iv67, i64 %indvars.iv60
  %4 = load i8, ptr %arrayidx33, align 1, !tbaa !9
  %cmp35 = icmp eq i8 %3, %4
  %add36 = zext i1 %cmp35 to i32
  %spec.select = add nuw nsw i32 %x.0, %add36
  %indvars.iv.next61 = add nuw nsw i64 %indvars.iv60, 1
  br label %for.cond22, !llvm.loop !15

for.end39:                                        ; preds = %for.cond22
  %cmp40 = icmp eq i32 %x.0, %0
  %.pre = load i32, ptr %arrayidx43, align 4, !tbaa !5
  br i1 %cmp40, label %if.then41, label %if.end45

if.then41:                                        ; preds = %for.end39
  %inc44 = add nsw i32 %.pre, 1
  store i32 %inc44, ptr %arrayidx43, align 4, !tbaa !5
  br label %if.end45

if.end45:                                         ; preds = %if.then41, %for.end39
  %5 = phi i32 [ %inc44, %if.then41 ], [ %.pre, %for.end39 ]
  store i32 %5, ptr %arrayidx49, align 4, !tbaa !5
  %indvars.iv.next68 = add nuw nsw i64 %indvars.iv67, 1
  br label %for.cond19, !llvm.loop !16

for.cond56:                                       ; preds = %for.cond56.preheader, %for.inc84
  %i.2 = phi i32 [ %inc85, %for.inc84 ], [ 0, %for.cond56.preheader ]
  %exitcond83.not = icmp eq i32 %i.2, %smax57
  br i1 %exitcond83.not, label %for.end86, label %for.cond59

for.cond59:                                       ; preds = %for.cond56, %for.cond59.backedge
  %indvars.iv77 = phi i64 [ %indvars.iv.next78, %for.cond59.backedge ], [ 0, %for.cond56 ]
  %exitcond82.not = icmp eq i64 %indvars.iv77, %wide.trip.count81
  br i1 %exitcond82.not, label %for.inc84, label %for.body62

for.body62:                                       ; preds = %for.cond59
  %arrayidx64 = getelementptr inbounds nuw [1000 x i32], ptr %c, i64 0, i64 %indvars.iv77
  %6 = load i32, ptr %arrayidx64, align 4, !tbaa !5
  %indvars.iv.next78 = add nuw nsw i64 %indvars.iv77, 1
  %arrayidx67 = getelementptr inbounds nuw [1000 x i32], ptr %c, i64 0, i64 %indvars.iv.next78
  %7 = load i32, ptr %arrayidx67, align 4, !tbaa !5
  %cmp68 = icmp sgt i32 %6, %7
  br i1 %cmp68, label %if.then69, label %for.cond59.backedge

for.cond59.backedge:                              ; preds = %for.body62, %if.then69
  br label %for.cond59, !llvm.loop !17

if.then69:                                        ; preds = %for.body62
  store i32 %6, ptr %arrayidx67, align 4, !tbaa !5
  store i32 %7, ptr %arrayidx64, align 4, !tbaa !5
  br label %for.cond59.backedge

for.inc84:                                        ; preds = %for.cond59
  %inc85 = add nuw i32 %i.2, 1
  br label %for.cond56, !llvm.loop !18

for.end86:                                        ; preds = %for.cond56
  %idxprom88 = sext i32 %sub60 to i64
  %arrayidx89 = getelementptr inbounds [1000 x i32], ptr %c, i64 0, i64 %idxprom88
  %8 = load i32, ptr %arrayidx89, align 4, !tbaa !5
  %cmp90 = icmp eq i32 %8, 0
  br i1 %cmp90, label %if.then91, label %if.else

if.then91:                                        ; preds = %for.end86
  %call92 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2)
  br label %if.end119

if.else:                                          ; preds = %for.end86
  %add93 = add nsw i32 %8, 1
  %call94 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %add93)
  br label %for.cond95

for.cond95:                                       ; preds = %for.inc116, %if.else
  %indvars.iv87 = phi i64 [ %indvars.iv.next88, %for.inc116 ], [ 0, %if.else ]
  %exitcond91.not = icmp eq i64 %indvars.iv87, %wide.trip.count58
  br i1 %exitcond91.not, label %if.end119, label %for.body97

for.body97:                                       ; preds = %for.cond95
  %arrayidx99 = getelementptr inbounds nuw [1000 x i32], ptr %d, i64 0, i64 %indvars.iv87
  %9 = load i32, ptr %arrayidx99, align 4, !tbaa !5
  %cmp100 = icmp eq i32 %9, %8
  br i1 %cmp100, label %for.cond102, label %for.inc116

for.cond102:                                      ; preds = %for.body97, %for.body104
  %indvars.iv84 = phi i64 [ %indvars.iv.next85, %for.body104 ], [ 0, %for.body97 ]
  %10 = load i32, ptr %m, align 4, !tbaa !5
  %11 = sext i32 %10 to i64
  %cmp103 = icmp slt i64 %indvars.iv84, %11
  br i1 %cmp103, label %for.body104, label %for.end113

for.body104:                                      ; preds = %for.cond102
  %arrayidx108 = getelementptr inbounds nuw [1000 x [1000 x i8]], ptr %b, i64 0, i64 %indvars.iv87, i64 %indvars.iv84
  %12 = load i8, ptr %arrayidx108, align 1, !tbaa !9
  %conv109 = sext i8 %12 to i32
  %putchar51 = call i32 @putchar(i32 %conv109)
  %indvars.iv.next85 = add nuw nsw i64 %indvars.iv84, 1
  br label %for.cond102, !llvm.loop !19

for.end113:                                       ; preds = %for.cond102
  %putchar = call i32 @putchar(i32 10)
  br label %for.inc116

for.inc116:                                       ; preds = %for.body97, %for.end113
  %indvars.iv.next88 = add nuw nsw i64 %indvars.iv87, 1
  br label %for.cond95, !llvm.loop !20

if.end119:                                        ; preds = %for.cond95, %if.then91
  call void @llvm.lifetime.end.p0(i64 1000000, ptr nonnull %b) #8
  call void @llvm.lifetime.end.p0(i64 4000, ptr nonnull %d) #8
  call void @llvm.lifetime.end.p0(i64 4000, ptr nonnull %c) #8
  call void @llvm.lifetime.end.p0(i64 1000, ptr nonnull %a) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %m) #8
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
!9 = !{!7, !7, i64 0}
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = distinct !{!13, !11, !12}
!14 = distinct !{!14, !11, !12}
!15 = distinct !{!15, !11, !12}
!16 = distinct !{!16, !11, !12}
!17 = distinct !{!17, !11, !12}
!18 = distinct !{!18, !11, !12}
!19 = distinct !{!19, !11, !12}
!20 = distinct !{!20, !11, !12}
