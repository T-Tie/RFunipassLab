; ModuleID = '<stdin>'
source_filename = "/tmp/tmpsb9ol05x.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local void @_Z3funPii(ptr noundef readonly captures(none) %p, i32 noundef %n) local_unnamed_addr #0 {
entry:
  %b = alloca [400 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 1600, ptr nonnull %b) #6
  %cmp22 = icmp sgt i32 %n, 0
  br i1 %cmp22, label %for.cond1.preheader.preheader, label %for.end15

for.cond1.preheader.preheader:                    ; preds = %entry
  %wide.trip.count30 = zext nneg i32 %n to i64
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.cond1.preheader.preheader, %for.inc13
  %indvars.iv27 = phi i64 [ 0, %for.cond1.preheader.preheader ], [ %indvars.iv.next28, %for.inc13 ]
  %q.024 = phi ptr [ %b, %for.cond1.preheader.preheader ], [ %q.1, %for.inc13 ]
  %cmp219.not = icmp eq i64 %indvars.iv27, 0
  br i1 %cmp219.not, label %for.end, label %for.body3.lr.ph

for.body3.lr.ph:                                  ; preds = %for.cond1.preheader
  %add.ptr = getelementptr inbounds nuw i32, ptr %p, i64 %indvars.iv27
  %0 = load i32, ptr %add.ptr, align 4, !tbaa !5
  br label %for.body3

for.body3:                                        ; preds = %for.body3.lr.ph, %for.inc
  %indvars.iv = phi i64 [ 0, %for.body3.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %add.ptr5 = getelementptr inbounds nuw i32, ptr %p, i64 %indvars.iv
  %1 = load i32, ptr %add.ptr5, align 4, !tbaa !5
  %cmp6 = icmp eq i32 %0, %1
  br i1 %cmp6, label %for.end.loopexit, label %for.inc

for.inc:                                          ; preds = %for.body3
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %indvars.iv27
  br i1 %exitcond.not, label %for.end.loopexit, label %for.body3, !llvm.loop !9

for.end.loopexit:                                 ; preds = %for.body3, %for.inc
  %j.0.lcssa.ph.in = phi i64 [ %indvars.iv27, %for.inc ], [ %indvars.iv, %for.body3 ]
  %2 = and i64 %j.0.lcssa.ph.in, 4294967295
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %for.cond1.preheader
  %j.0.lcssa = phi i64 [ 0, %for.cond1.preheader ], [ %2, %for.end.loopexit ]
  %cmp7 = icmp eq i64 %j.0.lcssa, %indvars.iv27
  br i1 %cmp7, label %if.then8, label %for.inc13

if.then8:                                         ; preds = %for.end
  %add.ptr10 = getelementptr inbounds nuw i32, ptr %p, i64 %indvars.iv27
  %3 = load i32, ptr %add.ptr10, align 4, !tbaa !5
  store i32 %3, ptr %q.024, align 4, !tbaa !5
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %q.024, i64 4
  store i32 -1000, ptr %incdec.ptr, align 4, !tbaa !5
  %incdec.ptr11 = getelementptr inbounds nuw i8, ptr %q.024, i64 8
  br label %for.inc13

for.inc13:                                        ; preds = %for.end, %if.then8
  %q.1 = phi ptr [ %incdec.ptr11, %if.then8 ], [ %q.024, %for.end ]
  %indvars.iv.next28 = add nuw nsw i64 %indvars.iv27, 1
  %exitcond31.not = icmp eq i64 %indvars.iv.next28, %wide.trip.count30
  br i1 %exitcond31.not, label %for.end15, label %for.cond1.preheader, !llvm.loop !12

for.end15:                                        ; preds = %for.inc13, %entry
  %q.0.lcssa = phi ptr [ %b, %entry ], [ %q.1, %for.inc13 ]
  %add.ptr16 = getelementptr inbounds i8, ptr %q.0.lcssa, i64 -4
  store i32 0, ptr %add.ptr16, align 4, !tbaa !5
  br label %for.cond18

for.cond18:                                       ; preds = %for.inc25, %for.end15
  %q.2 = phi ptr [ %b, %for.end15 ], [ %incdec.ptr26, %for.inc25 ]
  %4 = load i32, ptr %q.2, align 4, !tbaa !5
  switch i32 %4, label %if.else [
    i32 0, label %for.end27
    i32 -1000, label %if.then22
  ]

if.then22:                                        ; preds = %for.cond18
  %putchar = tail call i32 @putchar(i32 44)
  br label %for.inc25

if.else:                                          ; preds = %for.cond18
  %call23 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %4)
  br label %for.inc25

for.inc25:                                        ; preds = %if.then22, %if.else
  %incdec.ptr26 = getelementptr inbounds nuw i8, ptr %q.2, i64 4
  br label %for.cond18, !llvm.loop !13

for.end27:                                        ; preds = %for.cond18
  call void @llvm.lifetime.end.p0(i64 1600, ptr nonnull %b) #6
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #3 {
entry:
  %b.i = alloca [400 x i32], align 16
  %a = alloca [300 x i32], align 16
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 1200, ptr nonnull %a) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #6
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp4 = icmp sgt i32 %0, 0
  br i1 %cmp4, label %for.body, label %for.end.thread

for.end.thread:                                   ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1600, ptr nonnull %b.i) #6
  br label %for.end15.i

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %add.ptr = getelementptr inbounds nuw i32, ptr %a, i64 %indvars.iv
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %add.ptr)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %2 = sext i32 %1 to i64
  %cmp = icmp slt i64 %indvars.iv.next, %2
  br i1 %cmp, label %for.body, label %for.end, !llvm.loop !14

for.end:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 1600, ptr nonnull %b.i) #6
  %cmp22.i = icmp sgt i32 %1, 0
  br i1 %cmp22.i, label %for.cond1.preheader.preheader.i, label %for.end15.i

for.cond1.preheader.preheader.i:                  ; preds = %for.end
  %wide.trip.count30.i = zext nneg i32 %1 to i64
  br label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %for.inc13.i, %for.cond1.preheader.preheader.i
  %indvars.iv27.i = phi i64 [ 0, %for.cond1.preheader.preheader.i ], [ %indvars.iv.next28.i, %for.inc13.i ]
  %q.024.i = phi ptr [ %b.i, %for.cond1.preheader.preheader.i ], [ %q.1.i, %for.inc13.i ]
  %cmp219.not.i = icmp eq i64 %indvars.iv27.i, 0
  br i1 %cmp219.not.i, label %for.end.i, label %for.body3.lr.ph.i

for.body3.lr.ph.i:                                ; preds = %for.cond1.preheader.i
  %add.ptr.i = getelementptr inbounds nuw i32, ptr %a, i64 %indvars.iv27.i
  %3 = load i32, ptr %add.ptr.i, align 4, !tbaa !5
  br label %for.body3.i

for.body3.i:                                      ; preds = %for.inc.i, %for.body3.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %for.body3.lr.ph.i ], [ %indvars.iv.next.i, %for.inc.i ]
  %add.ptr5.i = getelementptr inbounds nuw i32, ptr %a, i64 %indvars.iv.i
  %4 = load i32, ptr %add.ptr5.i, align 4, !tbaa !5
  %cmp6.i = icmp eq i32 %3, %4
  br i1 %cmp6.i, label %for.end.loopexit.i, label %for.inc.i

for.inc.i:                                        ; preds = %for.body3.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %indvars.iv27.i
  br i1 %exitcond.not.i, label %for.end.loopexit.i, label %for.body3.i, !llvm.loop !9

for.end.loopexit.i:                               ; preds = %for.inc.i, %for.body3.i
  %j.0.lcssa.ph.in.i = phi i64 [ %indvars.iv27.i, %for.inc.i ], [ %indvars.iv.i, %for.body3.i ]
  %5 = and i64 %j.0.lcssa.ph.in.i, 4294967295
  br label %for.end.i

for.end.i:                                        ; preds = %for.end.loopexit.i, %for.cond1.preheader.i
  %j.0.lcssa.i = phi i64 [ 0, %for.cond1.preheader.i ], [ %5, %for.end.loopexit.i ]
  %cmp7.i = icmp eq i64 %j.0.lcssa.i, %indvars.iv27.i
  br i1 %cmp7.i, label %if.then8.i, label %for.inc13.i

if.then8.i:                                       ; preds = %for.end.i
  %add.ptr10.i = getelementptr inbounds nuw i32, ptr %a, i64 %indvars.iv27.i
  %6 = load i32, ptr %add.ptr10.i, align 4, !tbaa !5
  store i32 %6, ptr %q.024.i, align 4, !tbaa !5
  %incdec.ptr.i = getelementptr inbounds nuw i8, ptr %q.024.i, i64 4
  store i32 -1000, ptr %incdec.ptr.i, align 4, !tbaa !5
  %incdec.ptr11.i = getelementptr inbounds nuw i8, ptr %q.024.i, i64 8
  br label %for.inc13.i

for.inc13.i:                                      ; preds = %if.then8.i, %for.end.i
  %q.1.i = phi ptr [ %incdec.ptr11.i, %if.then8.i ], [ %q.024.i, %for.end.i ]
  %indvars.iv.next28.i = add nuw nsw i64 %indvars.iv27.i, 1
  %exitcond31.not.i = icmp eq i64 %indvars.iv.next28.i, %wide.trip.count30.i
  br i1 %exitcond31.not.i, label %for.end15.i, label %for.cond1.preheader.i, !llvm.loop !12

for.end15.i:                                      ; preds = %for.inc13.i, %for.end.thread, %for.end
  %q.0.lcssa.i = phi ptr [ %b.i, %for.end ], [ %b.i, %for.end.thread ], [ %q.1.i, %for.inc13.i ]
  %add.ptr16.i = getelementptr inbounds i8, ptr %q.0.lcssa.i, i64 -4
  store i32 0, ptr %add.ptr16.i, align 4, !tbaa !5
  br label %for.cond18.i

for.cond18.i:                                     ; preds = %for.inc25.i, %for.end15.i
  %q.2.i = phi ptr [ %b.i, %for.end15.i ], [ %incdec.ptr26.i, %for.inc25.i ]
  %7 = load i32, ptr %q.2.i, align 4, !tbaa !5
  switch i32 %7, label %if.else.i [
    i32 0, label %_Z3funPii.exit
    i32 -1000, label %if.then22.i
  ]

if.then22.i:                                      ; preds = %for.cond18.i
  %putchar.i = call i32 @putchar(i32 44)
  br label %for.inc25.i

if.else.i:                                        ; preds = %for.cond18.i
  %call23.i = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %7)
  br label %for.inc25.i

for.inc25.i:                                      ; preds = %if.else.i, %if.then22.i
  %incdec.ptr26.i = getelementptr inbounds nuw i8, ptr %q.2.i, i64 4
  br label %for.cond18.i, !llvm.loop !13

_Z3funPii.exit:                                   ; preds = %for.cond18.i
  call void @llvm.lifetime.end.p0(i64 1600, ptr nonnull %b.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #6
  call void @llvm.lifetime.end.p0(i64 1200, ptr nonnull %a) #6
  ret i32 0
}

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #5

attributes #0 = { mustprogress nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
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
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !10, !11}
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
