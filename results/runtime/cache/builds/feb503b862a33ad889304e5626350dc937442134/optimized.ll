; ModuleID = '<stdin>'
source_filename = "/tmp/tmpamx87_gl.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_Z2f1Piii(ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %p, i32 noundef %n, i32 noundef %k) local_unnamed_addr #0 {
entry:
  %smax = tail call i32 @llvm.smax.i32(i32 noundef %n, i32 noundef 0) #5
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %tailrecurse

tailrecurse:                                      ; preds = %if.then15, %entry
  %p.tr = phi ptr [ %p, %entry ], [ %add.ptr16, %if.then15 ]
  %k.tr = phi i32 [ %k, %entry ], [ %sub17, %if.then15 ]
  %0 = load i32, ptr %p.tr, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.body, %tailrecurse
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %tailrecurse ]
  %m.0 = phi i32 [ %spec.select, %for.body ], [ %0, %tailrecurse ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.cond4.preheader, label %for.body

for.cond4.preheader:                              ; preds = %for.cond
  br label %for.cond4

for.body:                                         ; preds = %for.cond
  %add.ptr = getelementptr inbounds nuw i32, ptr %p.tr, i64 %indvars.iv
  %1 = load i32, ptr %add.ptr, align 4, !tbaa !5, !invariant.load !9
  %spec.select = tail call i32 @llvm.smin.i32(i32 %1, i32 %m.0) #5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !10

for.cond4:                                        ; preds = %for.cond4.preheader, %for.inc11
  %indvars.iv10 = phi i64 [ %indvars.iv.next11, %for.inc11 ], [ 0, %for.cond4.preheader ]
  %exitcond14.not = icmp eq i64 %indvars.iv10, %wide.trip.count
  br i1 %exitcond14.not, label %for.end13, label %for.inc11

for.inc11:                                        ; preds = %for.cond4
  %add.ptr8 = getelementptr inbounds nuw i32, ptr %p.tr, i64 %indvars.iv10
  %2 = load i32, ptr %add.ptr8, align 4, !tbaa !5, !invariant.load !9
  %sub = sub nsw i32 %2, %m.0
  store i32 %sub, ptr %add.ptr8, align 4, !tbaa !5
  %indvars.iv.next11 = add nuw nsw i64 %indvars.iv10, 1
  br label %for.cond4, !llvm.loop !13

for.end13:                                        ; preds = %for.cond4
  %cmp14 = icmp sgt i32 %k.tr, 1
  br i1 %cmp14, label %if.then15, label %if.end18

if.then15:                                        ; preds = %for.end13
  %add.ptr16 = getelementptr inbounds nuw i8, ptr %p.tr, i64 400
  %sub17 = add nsw i32 %k.tr, -1
  br label %tailrecurse

if.end18:                                         ; preds = %for.end13
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_Z2f2Piii(ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %p, i32 noundef %n, i32 noundef %k) local_unnamed_addr #0 {
entry:
  %smax = tail call i32 @llvm.smax.i32(i32 noundef %n, i32 noundef 0) #5
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %tailrecurse

tailrecurse:                                      ; preds = %if.then18, %entry
  %p.tr = phi ptr [ %p, %entry ], [ %add.ptr19, %if.then18 ]
  %k.tr = phi i32 [ %k, %entry ], [ %sub20, %if.then18 ]
  %0 = load i32, ptr %p.tr, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.body, %tailrecurse
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %tailrecurse ]
  %m.0 = phi i32 [ %spec.select, %for.body ], [ %0, %tailrecurse ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.cond5.preheader, label %for.body

for.cond5.preheader:                              ; preds = %for.cond
  br label %for.cond5

for.body:                                         ; preds = %for.cond
  %add.ptr.idx = mul nuw nsw i64 %indvars.iv, 400
  %add.ptr = getelementptr inbounds nuw i8, ptr %p.tr, i64 %add.ptr.idx
  %1 = load i32, ptr %add.ptr, align 4, !tbaa !5, !invariant.load !9
  %spec.select = tail call i32 @llvm.smin.i32(i32 %1, i32 %m.0) #5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !14

for.cond5:                                        ; preds = %for.cond5.preheader, %for.inc14
  %indvars.iv11 = phi i64 [ %indvars.iv.next12, %for.inc14 ], [ 0, %for.cond5.preheader ]
  %exitcond16.not = icmp eq i64 %indvars.iv11, %wide.trip.count
  br i1 %exitcond16.not, label %for.end16, label %for.inc14

for.inc14:                                        ; preds = %for.cond5
  %add.ptr10.idx = mul nuw nsw i64 %indvars.iv11, 400
  %add.ptr10 = getelementptr inbounds nuw i8, ptr %p.tr, i64 %add.ptr10.idx
  %2 = load i32, ptr %add.ptr10, align 4, !tbaa !5, !invariant.load !9
  %sub = sub nsw i32 %2, %m.0
  store i32 %sub, ptr %add.ptr10, align 4, !tbaa !5
  %indvars.iv.next12 = add nuw nsw i64 %indvars.iv11, 1
  br label %for.cond5, !llvm.loop !15

for.end16:                                        ; preds = %for.cond5
  %cmp17 = icmp sgt i32 %k.tr, 1
  br i1 %cmp17, label %if.then18, label %if.end21

if.then18:                                        ; preds = %for.end16
  %add.ptr19 = getelementptr inbounds nuw i8, ptr %p.tr, i64 4
  %sub20 = add nsw i32 %k.tr, -1
  br label %tailrecurse

if.end21:                                         ; preds = %for.end16
  ret void
}

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 {
entry:
  %a = alloca [100 x [100 x i32]], align 16
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 40000, ptr noundef nonnull align 16 captures(none) dereferenceable(40000) %a) #6
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #6
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %n)
  %arrayidx18 = getelementptr inbounds nuw i8, ptr %a, i64 404
  br label %for.cond

for.cond:                                         ; preds = %for.inc66, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc67, %for.inc66 ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %i.0, %0
  br i1 %cmp, label %for.cond1, label %for.end68

for.cond1:                                        ; preds = %for.cond, %for.inc10
  %1 = phi i32 [ %6, %for.inc10 ], [ %0, %for.cond ]
  %indvars.iv34 = phi i64 [ %indvars.iv.next35, %for.inc10 ], [ 0, %for.cond ]
  %2 = sext i32 %1 to i64
  %cmp2 = icmp slt i64 %indvars.iv34, %2
  br i1 %cmp2, label %for.cond4, label %for.cond14.preheader

for.cond14.preheader:                             ; preds = %for.cond1
  %3 = add i32 %1, -1
  %4 = zext i32 %3 to i64
  %5 = zext i32 %1 to i64
  br label %for.cond14

for.cond4:                                        ; preds = %for.cond1, %for.inc
  %6 = phi i32 [ %.pre, %for.inc ], [ %1, %for.cond1 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.cond1 ]
  %7 = sext i32 %6 to i64
  %cmp5 = icmp slt i64 %indvars.iv, %7
  br i1 %cmp5, label %for.inc, label %for.inc10

for.inc:                                          ; preds = %for.cond4
  %arrayidx8 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv34, i64 %indvars.iv
  %call9 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx8)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond4, !llvm.loop !16

for.inc10:                                        ; preds = %for.cond4
  %indvars.iv.next35 = add nuw nsw i64 %indvars.iv34, 1
  br label %for.cond1, !llvm.loop !17

for.cond14:                                       ; preds = %for.cond14.preheader, %for.inc63
  %indvars.iv61 = phi i64 [ %5, %for.cond14.preheader ], [ %indvars.iv.next62, %for.inc63 ]
  %indvars.iv58 = phi i64 [ %4, %for.cond14.preheader ], [ %indvars.iv.next59, %for.inc63 ]
  %h.0 = phi i32 [ 0, %for.cond14.preheader ], [ %add, %for.inc63 ]
  %8 = trunc nuw i64 %indvars.iv61 to i32
  %cmp15 = icmp sgt i32 %8, 1
  br i1 %cmp15, label %for.body16, label %for.inc66

for.body16:                                       ; preds = %for.cond14
  call void @_Z2f1Piii(ptr nofree noundef nonnull align 16 captures(none) dereferenceable(40000) %a, i32 noundef %8, i32 noundef %8) #7
  call void @_Z2f2Piii(ptr nofree noundef nonnull align 16 captures(none) dereferenceable(40000) %a, i32 noundef %8, i32 noundef %8) #7
  %9 = load i32, ptr %arrayidx18, align 4, !tbaa !5
  br label %for.cond19

for.cond19:                                       ; preds = %for.inc37, %for.body16
  %indvars.iv43 = phi i64 [ %indvars.iv.next44, %for.inc37 ], [ 0, %for.body16 ]
  %exitcond47.not = icmp eq i64 %indvars.iv43, %indvars.iv61
  br i1 %exitcond47.not, label %for.cond40, label %for.cond22

for.cond22:                                       ; preds = %for.cond19, %for.inc34
  %indvars.iv37 = phi i64 [ %indvars.iv.next38, %for.inc34 ], [ 1, %for.cond19 ]
  %exitcond.not = icmp eq i64 %indvars.iv37, %indvars.iv58
  br i1 %exitcond.not, label %for.inc37, label %for.inc34

for.inc34:                                        ; preds = %for.cond22
  %indvars.iv.next38 = add nuw nsw i64 %indvars.iv37, 1
  %arrayidx29 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv43, i64 %indvars.iv.next38
  %10 = load i32, ptr %arrayidx29, align 4, !tbaa !5, !invariant.load !9
  %arrayidx33 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv43, i64 %indvars.iv37
  store i32 %10, ptr %arrayidx33, align 4, !tbaa !5
  br label %for.cond22, !llvm.loop !18

for.inc37:                                        ; preds = %for.cond22
  %indvars.iv.next44 = add nuw nsw i64 %indvars.iv43, 1
  br label %for.cond19, !llvm.loop !19

for.cond40:                                       ; preds = %for.cond19, %for.inc60
  %indvars.iv53 = phi i64 [ %indvars.iv.next54, %for.inc60 ], [ 0, %for.cond19 ]
  %exitcond57.not = icmp eq i64 %indvars.iv53, %indvars.iv58
  br i1 %exitcond57.not, label %for.inc63, label %for.cond44

for.cond44:                                       ; preds = %for.cond40, %for.inc57
  %indvars.iv48 = phi i64 [ %indvars.iv.next49, %for.inc57 ], [ 1, %for.cond40 ]
  %exitcond52.not = icmp eq i64 %indvars.iv48, %indvars.iv58
  br i1 %exitcond52.not, label %for.inc60, label %for.inc57

for.inc57:                                        ; preds = %for.cond44
  %indvars.iv.next49 = add nuw nsw i64 %indvars.iv48, 1
  %arrayidx52 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv.next49, i64 %indvars.iv53
  %11 = load i32, ptr %arrayidx52, align 4, !tbaa !5, !invariant.load !9
  %arrayidx56 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv48, i64 %indvars.iv53
  store i32 %11, ptr %arrayidx56, align 4, !tbaa !5
  br label %for.cond44, !llvm.loop !20

for.inc60:                                        ; preds = %for.cond44
  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53, 1
  br label %for.cond40, !llvm.loop !21

for.inc63:                                        ; preds = %for.cond40
  %add = add nsw i32 %9, %h.0
  %indvars.iv.next62 = add nsw i64 %indvars.iv61, -1
  %indvars.iv.next59 = add nsw i64 %indvars.iv58, -1
  br label %for.cond14, !llvm.loop !22

for.inc66:                                        ; preds = %for.cond14
  %call65 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %h.0)
  %inc67 = add nuw nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !23

for.end68:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #7
  call void @llvm.lifetime.end.p0(i64 noundef 40000, ptr noundef nonnull align 16 captures(none) dereferenceable(40000) %a) #7
  ret i32 0
}

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #3

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { willreturn }
attributes #6 = { nofree nounwind }
attributes #7 = { nounwind }

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
!9 = !{}
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
!21 = distinct !{!21, !11, !12}
!22 = distinct !{!22, !11, !12}
!23 = distinct !{!23, !11, !12}
