; ModuleID = '<stdin>'
source_filename = "/tmp/tmpscfokitl.cpp"
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
  %c = alloca [300 x i8], align 16
  %a = alloca [500 x [5 x i8]], align 16
  %n = alloca i32, align 4
  %max = alloca [500 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 300, ptr nonnull %c) #9
  call void @llvm.lifetime.start.p0(i64 2500, ptr nonnull %a) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2500) %a, i8 0, i64 2500, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #9
  call void @llvm.lifetime.start.p0(i64 2000, ptr nonnull %max) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2000) %max, i8 0, i64 2000, i1 false)
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %c)
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %q.0 = phi ptr [ %c, %entry ], [ %incdec.ptr, %for.body ]
  %s.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  %0 = load i8, ptr %q.0, align 1, !tbaa !5
  %cmp.not = icmp eq i8 %0, 0
  br i1 %cmp.not, label %for.cond5.preheader, label %for.body

for.cond5.preheader:                              ; preds = %for.cond
  %1 = load i32, ptr %n, align 4, !tbaa !8
  %smax.i = call i32 @llvm.smax.i32(i32 %1, i32 0)
  %wide.trip.count.i = zext nneg i32 %smax.i to i64
  %2 = sub i32 %s.0, %1
  %smax = call i32 @llvm.smax.i32(i32 %2, i32 -1)
  %3 = add i32 %smax, 1
  br label %for.cond5

for.body:                                         ; preds = %for.cond
  %inc = add nuw nsw i32 %s.0, 1
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %q.0, i64 1
  br label %for.cond, !llvm.loop !10

for.cond5:                                        ; preds = %for.cond5.preheader, %_Z5chuanPA5_cPci.exit
  %q.1 = phi ptr [ %incdec.ptr10, %_Z5chuanPA5_cPci.exit ], [ %c, %for.cond5.preheader ]
  %i.0 = phi i32 [ %inc9, %_Z5chuanPA5_cPci.exit ], [ 0, %for.cond5.preheader ]
  %p.0 = phi ptr [ %incdec.ptr11, %_Z5chuanPA5_cPci.exit ], [ %a, %for.cond5.preheader ]
  %exitcond = icmp eq i32 %i.0, %3
  br i1 %exitcond, label %for.cond15.preheader, label %for.cond.i

for.cond15.preheader:                             ; preds = %for.cond5
  %sub = sub nsw i32 %s.0, %1
  %4 = sext i32 %sub to i64
  br label %for.cond15

for.cond.i:                                       ; preds = %for.cond5, %for.body.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.body.i ], [ 0, %for.cond5 ]
  %exitcond.not.i = icmp eq i64 %indvars.iv.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_Z5chuanPA5_cPci.exit, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %add.ptr.i = getelementptr inbounds nuw i8, ptr %q.1, i64 %indvars.iv.i
  %5 = load i8, ptr %add.ptr.i, align 1, !tbaa !5
  %add.ptr2.i = getelementptr inbounds nuw i8, ptr %p.0, i64 %indvars.iv.i
  store i8 %5, ptr %add.ptr2.i, align 1, !tbaa !5
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br label %for.cond.i, !llvm.loop !13

_Z5chuanPA5_cPci.exit:                            ; preds = %for.cond.i
  %inc9 = add nuw i32 %i.0, 1
  %incdec.ptr10 = getelementptr inbounds nuw i8, ptr %q.1, i64 1
  %incdec.ptr11 = getelementptr inbounds nuw i8, ptr %p.0, i64 5
  br label %for.cond5, !llvm.loop !14

for.cond15.loopexit:                              ; preds = %for.cond19
  %indvars.iv.next34 = add nuw nsw i64 %indvars.iv33, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond15, !llvm.loop !15

for.cond15:                                       ; preds = %for.cond15.loopexit, %for.cond15.preheader
  %indvars.iv33 = phi i64 [ %indvars.iv.next34, %for.cond15.loopexit ], [ 0, %for.cond15.preheader ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond15.loopexit ], [ 1, %for.cond15.preheader ]
  %cmp16.not = icmp sgt i64 %indvars.iv33, %4
  br i1 %cmp16.not, label %for.cond37, label %for.body17

for.body17:                                       ; preds = %for.cond15
  %arrayidx = getelementptr inbounds nuw [500 x [5 x i8]], ptr %a, i64 0, i64 %indvars.iv33
  %arrayidx29 = getelementptr inbounds nuw [500 x i32], ptr %max, i64 0, i64 %indvars.iv33
  br label %for.cond19

for.cond19:                                       ; preds = %for.inc31, %for.body17
  %indvars.iv30 = phi i64 [ %indvars.iv.next31, %for.inc31 ], [ %indvars.iv, %for.body17 ]
  %6 = trunc nuw i64 %indvars.iv30 to i32
  %cmp20.not = icmp slt i32 %sub, %6
  br i1 %cmp20.not, label %for.cond15.loopexit, label %for.body21

for.body21:                                       ; preds = %for.cond19
  %arrayidx24 = getelementptr inbounds nuw [500 x [5 x i8]], ptr %a, i64 0, i64 %indvars.iv30
  %call26 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %arrayidx, ptr noundef nonnull dereferenceable(1) %arrayidx24) #10
  %cmp27 = icmp eq i32 %call26, 0
  br i1 %cmp27, label %if.then, label %for.inc31

if.then:                                          ; preds = %for.body21
  %7 = load i32, ptr %arrayidx29, align 4, !tbaa !8
  %inc30 = add nsw i32 %7, 1
  store i32 %inc30, ptr %arrayidx29, align 4, !tbaa !8
  br label %for.inc31

for.inc31:                                        ; preds = %for.body21, %if.then
  %indvars.iv.next31 = add nuw nsw i64 %indvars.iv30, 1
  br label %for.cond19, !llvm.loop !16

for.cond37:                                       ; preds = %for.cond15, %for.body39
  %indvars.iv36 = phi i64 [ %indvars.iv.next37, %for.body39 ], [ 0, %for.cond15 ]
  %da.0 = phi i32 [ %spec.select, %for.body39 ], [ 0, %for.cond15 ]
  %cmp38.not = icmp sgt i64 %indvars.iv36, %4
  br i1 %cmp38.not, label %for.end49, label %for.body39

for.body39:                                       ; preds = %for.cond37
  %arrayidx41 = getelementptr inbounds nuw [500 x i32], ptr %max, i64 0, i64 %indvars.iv36
  %8 = load i32, ptr %arrayidx41, align 4, !tbaa !8
  %spec.select = call i32 @llvm.smax.i32(i32 %8, i32 %da.0)
  %indvars.iv.next37 = add nuw nsw i64 %indvars.iv36, 1
  br label %for.cond37, !llvm.loop !17

for.end49:                                        ; preds = %for.cond37
  %cmp50 = icmp eq i32 %da.0, 0
  br i1 %cmp50, label %if.then51, label %if.else

if.then51:                                        ; preds = %for.end49
  %call52 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2)
  br label %if.end70

if.else:                                          ; preds = %for.end49
  %add53 = add nuw nsw i32 %da.0, 1
  %call54 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %add53)
  br label %for.cond55

for.cond55:                                       ; preds = %for.inc67, %if.else
  %indvars.iv39 = phi i64 [ %indvars.iv.next40, %for.inc67 ], [ 0, %if.else ]
  %cmp56.not = icmp sgt i64 %indvars.iv39, %4
  br i1 %cmp56.not, label %if.end70, label %for.body57

for.body57:                                       ; preds = %for.cond55
  %arrayidx59 = getelementptr inbounds nuw [500 x i32], ptr %max, i64 0, i64 %indvars.iv39
  %9 = load i32, ptr %arrayidx59, align 4, !tbaa !8
  %cmp60 = icmp eq i32 %da.0, %9
  br i1 %cmp60, label %if.then61, label %for.inc67

if.then61:                                        ; preds = %for.body57
  %arrayidx63 = getelementptr inbounds nuw [500 x [5 x i8]], ptr %a, i64 0, i64 %indvars.iv39
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) %arrayidx63)
  br label %for.inc67

for.inc67:                                        ; preds = %for.body57, %if.then61
  %indvars.iv.next40 = add nuw nsw i64 %indvars.iv39, 1
  br label %for.cond55, !llvm.loop !18

if.end70:                                         ; preds = %for.cond55, %if.then51
  call void @llvm.lifetime.end.p0(i64 2000, ptr nonnull %max) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #9
  call void @llvm.lifetime.end.p0(i64 2500, ptr nonnull %a) #9
  call void @llvm.lifetime.end.p0(i64 300, ptr nonnull %c) #9
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @_Z5chuanPA5_cPci(ptr noundef writeonly captures(none) %p, ptr noundef readonly captures(none) %q, i32 noundef %n) local_unnamed_addr #4 {
entry:
  %smax = tail call i32 @llvm.smax.i32(i32 %n, i32 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %add.ptr = getelementptr inbounds nuw i8, ptr %q, i64 %indvars.iv
  %0 = load i8, ptr %add.ptr, align 1, !tbaa !5
  %add.ptr2 = getelementptr inbounds nuw i8, ptr %p, i64 %indvars.iv
  store i8 %0, ptr %add.ptr2, align 1, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !13

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }
attributes #10 = { nounwind willreturn memory(read) }

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
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !6, i64 0}
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = distinct !{!13, !11, !12}
!14 = distinct !{!14, !11, !12}
!15 = distinct !{!15, !11, !12}
!16 = distinct !{!16, !11, !12}
!17 = distinct !{!17, !11, !12}
!18 = distinct !{!18, !11, !12}
