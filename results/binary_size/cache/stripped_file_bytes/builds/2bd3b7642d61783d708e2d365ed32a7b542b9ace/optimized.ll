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
  call void @llvm.lifetime.start.p0(i64 300, ptr nonnull %c) #11
  call void @llvm.lifetime.start.p0(i64 2500, ptr nonnull %a) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2500) %a, i8 0, i64 2500, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #11
  call void @llvm.lifetime.start.p0(i64 2000, ptr nonnull %max) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2000) %max, i8 0, i64 2000, i1 false)
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %c)
  %0 = load i8, ptr %c, align 16, !tbaa !5
  %cmp.not29 = icmp eq i8 %0, 0
  br i1 %cmp.not29, label %for.cond5.preheader, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  %scevgep = getelementptr inbounds nuw i8, ptr %c, i64 1
  %strlen = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %scevgep)
  %1 = trunc i64 %strlen to i32
  %2 = add i32 %1, 1
  br label %for.cond5.preheader

for.cond5.preheader:                              ; preds = %for.body.preheader, %entry
  %s.0.lcssa = phi i32 [ 0, %entry ], [ %2, %for.body.preheader ]
  %3 = load i32, ptr %n, align 4, !tbaa !8
  %sub = sub nsw i32 %s.0.lcssa, %3
  %cmp6.not32 = icmp slt i32 %sub, 0
  br i1 %cmp6.not32, label %if.then51, label %for.body7.lr.ph

for.body7.lr.ph:                                  ; preds = %for.cond5.preheader
  %cmp4.i = icmp sgt i32 %3, 0
  %wide.trip.count.i = zext i32 %3 to i64
  br i1 %cmp4.i, label %for.body7.us.preheader, label %for.body17.preheader

for.body7.us.preheader:                           ; preds = %for.body7.lr.ph
  %4 = add i32 %s.0.lcssa, 1
  %5 = sub i32 %4, %3
  br label %for.body7.us

for.body7.us:                                     ; preds = %for.body7.us.preheader, %for.body7.us
  %p.035.us = phi ptr [ %incdec.ptr11.us, %for.body7.us ], [ %a, %for.body7.us.preheader ]
  %i.034.us = phi i32 [ %inc9.us, %for.body7.us ], [ 0, %for.body7.us.preheader ]
  %q.133.us = phi ptr [ %incdec.ptr10.us, %for.body7.us ], [ %c, %for.body7.us.preheader ]
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %p.035.us, ptr nonnull align 1 %q.133.us, i64 %wide.trip.count.i, i1 false), !tbaa !5
  %inc9.us = add nuw i32 %i.034.us, 1
  %incdec.ptr10.us = getelementptr inbounds nuw i8, ptr %q.133.us, i64 1
  %incdec.ptr11.us = getelementptr inbounds nuw i8, ptr %p.035.us, i64 5
  %exitcond.not = icmp eq i32 %inc9.us, %5
  br i1 %exitcond.not, label %for.body17.preheader, label %for.body7.us, !llvm.loop !10

for.body17.preheader:                             ; preds = %for.body7.us, %for.body7.lr.ph
  %6 = add i32 %s.0.lcssa, 1
  %7 = sub i32 %6, %3
  %8 = zext nneg i32 %sub to i64
  %wide.trip.count = zext i32 %7 to i64
  br label %for.body17

for.cond15.loopexit:                              ; preds = %for.inc31, %for.body17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond55.not = icmp eq i64 %indvars.iv.next53, %wide.trip.count
  br i1 %exitcond55.not, label %for.body39.preheader, label %for.body17, !llvm.loop !13

for.body39.preheader:                             ; preds = %for.cond15.loopexit
  %9 = add i32 %s.0.lcssa, 1
  %10 = sub i32 %9, %3
  %wide.trip.count59 = zext i32 %10 to i64
  %min.iters.check = icmp ult i32 %7, 4
  br i1 %min.iters.check, label %for.body39.preheader68, label %vector.ph

vector.ph:                                        ; preds = %for.body39.preheader
  %n.vec = and i64 %wide.trip.count, 4294967292
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %12, %vector.body ]
  %11 = getelementptr inbounds nuw [500 x i32], ptr %max, i64 0, i64 %index
  %wide.load = load <4 x i32>, ptr %11, align 16, !tbaa !8
  %12 = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load, <4 x i32> %vec.phi)
  %index.next = add nuw i64 %index, 4
  %13 = icmp eq i64 %index.next, %n.vec
  br i1 %13, label %middle.block, label %vector.body, !llvm.loop !14

middle.block:                                     ; preds = %vector.body
  %14 = call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %12)
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %for.end49, label %for.body39.preheader68

for.body39.preheader68:                           ; preds = %for.body39.preheader, %middle.block
  %indvars.iv56.ph = phi i64 [ 0, %for.body39.preheader ], [ %n.vec, %middle.block ]
  %da.043.ph = phi i32 [ 0, %for.body39.preheader ], [ %14, %middle.block ]
  br label %for.body39

for.body17:                                       ; preds = %for.body17.preheader, %for.cond15.loopexit
  %indvars.iv52 = phi i64 [ 0, %for.body17.preheader ], [ %indvars.iv.next53, %for.cond15.loopexit ]
  %indvars.iv = phi i64 [ 1, %for.body17.preheader ], [ %indvars.iv.next, %for.cond15.loopexit ]
  %indvars.iv.next53 = add nuw nsw i64 %indvars.iv52, 1
  %cmp20.not37.not = icmp samesign ult i64 %indvars.iv52, %8
  br i1 %cmp20.not37.not, label %for.body21.lr.ph, label %for.cond15.loopexit

for.body21.lr.ph:                                 ; preds = %for.body17
  %arrayidx = getelementptr inbounds nuw [500 x [5 x i8]], ptr %a, i64 0, i64 %indvars.iv52
  %arrayidx29 = getelementptr inbounds nuw [500 x i32], ptr %max, i64 0, i64 %indvars.iv52
  br label %for.body21

for.body21:                                       ; preds = %for.body21.lr.ph, %for.inc31
  %indvars.iv48 = phi i64 [ %indvars.iv, %for.body21.lr.ph ], [ %indvars.iv.next49, %for.inc31 ]
  %arrayidx24 = getelementptr inbounds nuw [500 x [5 x i8]], ptr %a, i64 0, i64 %indvars.iv48
  %call26 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %arrayidx, ptr noundef nonnull dereferenceable(1) %arrayidx24) #12
  %cmp27 = icmp eq i32 %call26, 0
  br i1 %cmp27, label %if.then, label %for.inc31

if.then:                                          ; preds = %for.body21
  %15 = load i32, ptr %arrayidx29, align 4, !tbaa !8
  %inc30 = add nsw i32 %15, 1
  store i32 %inc30, ptr %arrayidx29, align 4, !tbaa !8
  br label %for.inc31

for.inc31:                                        ; preds = %for.body21, %if.then
  %indvars.iv.next49 = add nuw nsw i64 %indvars.iv48, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next49 to i32
  %exitcond51.not = icmp eq i32 %7, %lftr.wideiv
  br i1 %exitcond51.not, label %for.cond15.loopexit, label %for.body21, !llvm.loop !17

for.body39:                                       ; preds = %for.body39.preheader68, %for.body39
  %indvars.iv56 = phi i64 [ %indvars.iv.next57, %for.body39 ], [ %indvars.iv56.ph, %for.body39.preheader68 ]
  %da.043 = phi i32 [ %spec.select, %for.body39 ], [ %da.043.ph, %for.body39.preheader68 ]
  %arrayidx41 = getelementptr inbounds nuw [500 x i32], ptr %max, i64 0, i64 %indvars.iv56
  %16 = load i32, ptr %arrayidx41, align 4, !tbaa !8
  %spec.select = call i32 @llvm.smax.i32(i32 %16, i32 %da.043)
  %indvars.iv.next57 = add nuw nsw i64 %indvars.iv56, 1
  %exitcond60.not = icmp eq i64 %indvars.iv.next57, %wide.trip.count59
  br i1 %exitcond60.not, label %for.end49, label %for.body39, !llvm.loop !18

for.end49:                                        ; preds = %for.body39, %middle.block
  %spec.select.lcssa = phi i32 [ %14, %middle.block ], [ %spec.select, %for.body39 ]
  %cmp50 = icmp eq i32 %spec.select.lcssa, 0
  br i1 %cmp50, label %if.then51, label %for.body57.preheader

if.then51:                                        ; preds = %for.cond5.preheader, %for.end49
  %call52 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2)
  br label %if.end70

for.body57.preheader:                             ; preds = %for.end49
  %add53 = add nuw nsw i32 %spec.select.lcssa, 1
  %call54 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %add53)
  %17 = add i32 %s.0.lcssa, 1
  %18 = sub i32 %17, %3
  %wide.trip.count64 = zext i32 %18 to i64
  br label %for.body57

for.body57:                                       ; preds = %for.body57.preheader, %for.inc67
  %indvars.iv61 = phi i64 [ 0, %for.body57.preheader ], [ %indvars.iv.next62, %for.inc67 ]
  %arrayidx59 = getelementptr inbounds nuw [500 x i32], ptr %max, i64 0, i64 %indvars.iv61
  %19 = load i32, ptr %arrayidx59, align 4, !tbaa !8
  %cmp60 = icmp eq i32 %spec.select.lcssa, %19
  br i1 %cmp60, label %if.then61, label %for.inc67

if.then61:                                        ; preds = %for.body57
  %arrayidx63 = getelementptr inbounds nuw [500 x [5 x i8]], ptr %a, i64 0, i64 %indvars.iv61
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) %arrayidx63)
  br label %for.inc67

for.inc67:                                        ; preds = %for.body57, %if.then61
  %indvars.iv.next62 = add nuw nsw i64 %indvars.iv61, 1
  %exitcond65.not = icmp eq i64 %indvars.iv.next62, %wide.trip.count64
  br i1 %exitcond65.not, label %if.end70, label %for.body57, !llvm.loop !19

if.end70:                                         ; preds = %for.inc67, %if.then51
  call void @llvm.lifetime.end.p0(i64 2000, ptr nonnull %max) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #11
  call void @llvm.lifetime.end.p0(i64 2500, ptr nonnull %a) #11
  call void @llvm.lifetime.end.p0(i64 300, ptr nonnull %c) #11
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
  %cmp4 = icmp sgt i32 %n, 0
  br i1 %cmp4, label %iter.check, label %for.end

iter.check:                                       ; preds = %entry
  %p7 = ptrtoint ptr %p to i64
  %q8 = ptrtoint ptr %q to i64
  %wide.trip.count = zext nneg i32 %n to i64
  %min.iters.check = icmp ult i32 %n, 4
  %0 = sub i64 %p7, %q8
  %diff.check = icmp ult i64 %0, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %for.body.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check9 = icmp ult i32 %n, 16
  br i1 %min.iters.check9, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %wide.trip.count, 2147483632
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %1 = getelementptr inbounds nuw i8, ptr %q, i64 %index
  %wide.load = load <16 x i8>, ptr %1, align 1, !tbaa !5
  %2 = getelementptr inbounds nuw i8, ptr %p, i64 %index
  store <16 x i8> %wide.load, ptr %2, align 1, !tbaa !5
  %index.next = add nuw i64 %index, 16
  %3 = icmp eq i64 %index.next, %n.vec
  br i1 %3, label %middle.block, label %vector.body, !llvm.loop !20

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %for.end, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %n.vec.remaining = and i64 %wide.trip.count, 12
  %min.epilog.iters.check = icmp eq i64 %n.vec.remaining, 0
  br i1 %min.epilog.iters.check, label %for.body.preheader, label %vec.epilog.ph

vec.epilog.ph:                                    ; preds = %vec.epilog.iter.check, %vector.main.loop.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec11 = and i64 %wide.trip.count, 2147483644
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index12 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next14, %vec.epilog.vector.body ]
  %4 = getelementptr inbounds nuw i8, ptr %q, i64 %index12
  %wide.load13 = load <4 x i8>, ptr %4, align 1, !tbaa !5
  %5 = getelementptr inbounds nuw i8, ptr %p, i64 %index12
  store <4 x i8> %wide.load13, ptr %5, align 1, !tbaa !5
  %index.next14 = add nuw i64 %index12, 4
  %6 = icmp eq i64 %index.next14, %n.vec11
  br i1 %6, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !21

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n15 = icmp eq i64 %n.vec11, %wide.trip.count
  br i1 %cmp.n15, label %for.end, label %for.body.preheader

for.body.preheader:                               ; preds = %vec.epilog.iter.check, %vec.epilog.middle.block, %iter.check
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec11, %vec.epilog.middle.block ]
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ %indvars.iv.ph, %for.body.preheader ]
  %add.ptr = getelementptr inbounds nuw i8, ptr %q, i64 %indvars.iv
  %7 = load i8, ptr %add.ptr, align 1, !tbaa !5
  %add.ptr2 = getelementptr inbounds nuw i8, ptr %p, i64 %indvars.iv
  store i8 %7, ptr %add.ptr2, align 1, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !22

for.end:                                          ; preds = %for.body, %middle.block, %vec.epilog.middle.block, %entry
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

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr captures(none)) local_unnamed_addr #9

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smax.v4i32(<4 x i32>) #8

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: read) }
attributes #10 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { nounwind }
attributes #12 = { nounwind willreturn memory(read) }

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
!14 = distinct !{!14, !11, !12, !15, !16}
!15 = !{!"llvm.loop.isvectorized", i32 1}
!16 = !{!"llvm.loop.unroll.runtime.disable"}
!17 = distinct !{!17, !11, !12}
!18 = distinct !{!18, !11, !12, !15}
!19 = distinct !{!19, !11, !12}
!20 = distinct !{!20, !11, !12, !15, !16}
!21 = distinct !{!21, !11, !12, !15, !16}
!22 = distinct !{!22, !11, !12, !15}
