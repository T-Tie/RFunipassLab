; ModuleID = '<stdin>'
source_filename = "/tmp/tmpyhn_v25g.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"%d %d %d\00", align 1
@str = private unnamed_addr constant [3 x i8] c"NO\00", align 1
@str.1 = private unnamed_addr constant [4 x i8] c"YES\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %y = alloca [200 x i32], align 16
  %m1 = alloca [200 x i32], align 16
  %m2 = alloca [200 x i32], align 16
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 800, ptr nonnull %y) #5
  call void @llvm.lifetime.start.p0(i64 800, ptr nonnull %m1) #5
  call void @llvm.lifetime.start.p0(i64 800, ptr nonnull %m2) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp55 = icmp sgt i32 %0, 0
  br i1 %cmp55, label %for.body, label %for.cond.cleanup8

for.cond6.preheader:                              ; preds = %for.body
  %1 = icmp sgt i32 %2, 0
  br i1 %1, label %for.body9, label %for.cond.cleanup8

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds nuw [200 x i32], ptr %y, i64 0, i64 %indvars.iv
  %arrayidx2 = getelementptr inbounds nuw [200 x i32], ptr %m1, i64 0, i64 %indvars.iv
  %arrayidx4 = getelementptr inbounds nuw [200 x i32], ptr %m2, i64 0, i64 %indvars.iv
  %call5 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %arrayidx, ptr noundef nonnull %arrayidx2, ptr noundef nonnull %arrayidx4)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %2 = load i32, ptr %n, align 4, !tbaa !5
  %3 = sext i32 %2 to i64
  %cmp = icmp slt i64 %indvars.iv.next, %3
  br i1 %cmp, label %for.body, label %for.cond6.preheader, !llvm.loop !9

for.cond.cleanup8:                                ; preds = %_Z8dijitianiii.exit52, %entry, %for.cond6.preheader
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #5
  call void @llvm.lifetime.end.p0(i64 800, ptr nonnull %m2) #5
  call void @llvm.lifetime.end.p0(i64 800, ptr nonnull %m1) #5
  call void @llvm.lifetime.end.p0(i64 800, ptr nonnull %y) #5
  ret i32 0

for.body9:                                        ; preds = %for.cond6.preheader, %_Z8dijitianiii.exit52
  %indvars.iv62 = phi i64 [ %indvars.iv.next63, %_Z8dijitianiii.exit52 ], [ 0, %for.cond6.preheader ]
  %arrayidx11 = getelementptr inbounds nuw [200 x i32], ptr %y, i64 0, i64 %indvars.iv62
  %4 = load i32, ptr %arrayidx11, align 4, !tbaa !5
  %arrayidx13 = getelementptr inbounds nuw [200 x i32], ptr %m1, i64 0, i64 %indvars.iv62
  %5 = load i32, ptr %arrayidx13, align 4, !tbaa !5
  %cmp30.i = icmp sgt i32 %5, 0
  br i1 %cmp30.i, label %for.body.lr.ph.i, label %_Z8dijitianiii.exit

for.body.lr.ph.i:                                 ; preds = %for.body9
  %6 = and i32 %4, 3
  %cmp23.i = icmp eq i32 %6, 0
  %rem24.i = srem i32 %4, 100
  %cmp25.not.i = icmp ne i32 %rem24.i, 0
  %or.cond27.not29.i = and i1 %cmp23.i, %cmp25.not.i
  %rem27.i = srem i32 %4, 400
  %cmp28.i = icmp eq i32 %rem27.i, 0
  %or.cond28.i = or i1 %cmp28.i, %or.cond27.not29.i
  br i1 %or.cond28.i, label %for.body.us.i, label %for.body.i

for.body.us.i:                                    ; preds = %for.body.lr.ph.i, %for.inc.us.i
  %k.032.us.i = phi i32 [ %inc.us.i, %for.inc.us.i ], [ 0, %for.body.lr.ph.i ]
  %d.031.us.i = phi i32 [ %d.1.us.i, %for.inc.us.i ], [ 0, %for.body.lr.ph.i ]
  %7 = and i32 %k.032.us.i, 2147483645
  switch i32 %7, label %if.else20.us.i [
    i32 8, label %if.then.us.i
    i32 5, label %if.then.us.i
    i32 1, label %if.then.us.i
    i32 9, label %if.then18.us.i
    i32 4, label %if.then18.us.i
  ]

if.then18.us.i:                                   ; preds = %for.body.us.i, %for.body.us.i
  %add19.us.i = add nsw i32 %d.031.us.i, 30
  br label %for.inc.us.i

if.then.us.i:                                     ; preds = %for.body.us.i, %for.body.us.i, %for.body.us.i
  %add.us.i = add nsw i32 %d.031.us.i, 31
  br label %for.inc.us.i

if.else20.us.i:                                   ; preds = %for.body.us.i
  %cmp21.us.i = icmp eq i32 %k.032.us.i, 2
  %add30.us.i = add nsw i32 %d.031.us.i, 29
  %spec.select.i = select i1 %cmp21.us.i, i32 %add30.us.i, i32 %d.031.us.i
  br label %for.inc.us.i

for.inc.us.i:                                     ; preds = %if.else20.us.i, %if.then.us.i, %if.then18.us.i
  %d.1.us.i = phi i32 [ %add.us.i, %if.then.us.i ], [ %add19.us.i, %if.then18.us.i ], [ %spec.select.i, %if.else20.us.i ]
  %inc.us.i = add nuw nsw i32 %k.032.us.i, 1
  %exitcond35.not.i = icmp eq i32 %inc.us.i, %5
  br i1 %exitcond35.not.i, label %_Z8dijitianiii.exit, label %for.body.us.i, !llvm.loop !12

for.body.i:                                       ; preds = %for.body.lr.ph.i, %for.inc.i
  %k.032.i = phi i32 [ %inc.i, %for.inc.i ], [ 0, %for.body.lr.ph.i ]
  %d.031.i = phi i32 [ %d.1.i, %for.inc.i ], [ 0, %for.body.lr.ph.i ]
  %8 = and i32 %k.032.i, 2147483645
  switch i32 %8, label %if.else20.i [
    i32 8, label %if.then.i
    i32 5, label %if.then.i
    i32 1, label %if.then.i
    i32 9, label %if.then18.i
    i32 4, label %if.then18.i
  ]

if.then.i:                                        ; preds = %for.body.i, %for.body.i, %for.body.i
  %add.i = add nsw i32 %d.031.i, 31
  br label %for.inc.i

if.then18.i:                                      ; preds = %for.body.i, %for.body.i
  %add19.i = add nsw i32 %d.031.i, 30
  br label %for.inc.i

if.else20.i:                                      ; preds = %for.body.i
  %cmp21.i = icmp eq i32 %k.032.i, 2
  %add32.i = add nsw i32 %d.031.i, 28
  %spec.select33.i = select i1 %cmp21.i, i32 %add32.i, i32 %d.031.i
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else20.i, %if.then18.i, %if.then.i
  %d.1.i = phi i32 [ %add.i, %if.then.i ], [ %add19.i, %if.then18.i ], [ %spec.select33.i, %if.else20.i ]
  %inc.i = add nuw nsw i32 %k.032.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %5
  br i1 %exitcond.not.i, label %_Z8dijitianiii.exit, label %for.body.i, !llvm.loop !12

_Z8dijitianiii.exit:                              ; preds = %for.inc.i, %for.inc.us.i, %for.body9
  %d.0.lcssa.i = phi i32 [ 0, %for.body9 ], [ %d.1.us.i, %for.inc.us.i ], [ %d.1.i, %for.inc.i ]
  %arrayidx18 = getelementptr inbounds nuw [200 x i32], ptr %m2, i64 0, i64 %indvars.iv62
  %9 = load i32, ptr %arrayidx18, align 4, !tbaa !5
  %cmp30.i11 = icmp sgt i32 %9, 0
  br i1 %cmp30.i11, label %for.body.lr.ph.i14, label %_Z8dijitianiii.exit52

for.body.lr.ph.i14:                               ; preds = %_Z8dijitianiii.exit
  %10 = and i32 %4, 3
  %cmp23.i15 = icmp eq i32 %10, 0
  %rem24.i16 = srem i32 %4, 100
  %cmp25.not.i17 = icmp ne i32 %rem24.i16, 0
  %or.cond27.not29.i18 = and i1 %cmp23.i15, %cmp25.not.i17
  %rem27.i19 = srem i32 %4, 400
  %cmp28.i20 = icmp eq i32 %rem27.i19, 0
  %or.cond28.i21 = or i1 %cmp28.i20, %or.cond27.not29.i18
  br i1 %or.cond28.i21, label %for.body.us.i37, label %for.body.i22

for.body.us.i37:                                  ; preds = %for.body.lr.ph.i14, %for.inc.us.i42
  %k.032.us.i38 = phi i32 [ %inc.us.i44, %for.inc.us.i42 ], [ 0, %for.body.lr.ph.i14 ]
  %d.031.us.i39 = phi i32 [ %d.1.us.i43, %for.inc.us.i42 ], [ 0, %for.body.lr.ph.i14 ]
  %11 = and i32 %k.032.us.i38, 2147483645
  switch i32 %11, label %if.else20.us.i48 [
    i32 8, label %if.then.us.i46
    i32 5, label %if.then.us.i46
    i32 1, label %if.then.us.i46
    i32 9, label %if.then18.us.i40
    i32 4, label %if.then18.us.i40
  ]

if.then18.us.i40:                                 ; preds = %for.body.us.i37, %for.body.us.i37
  %add19.us.i41 = add nsw i32 %d.031.us.i39, 30
  br label %for.inc.us.i42

if.then.us.i46:                                   ; preds = %for.body.us.i37, %for.body.us.i37, %for.body.us.i37
  %add.us.i47 = add nsw i32 %d.031.us.i39, 31
  br label %for.inc.us.i42

if.else20.us.i48:                                 ; preds = %for.body.us.i37
  %cmp21.us.i49 = icmp eq i32 %k.032.us.i38, 2
  %add30.us.i50 = add nsw i32 %d.031.us.i39, 29
  %spec.select.i51 = select i1 %cmp21.us.i49, i32 %add30.us.i50, i32 %d.031.us.i39
  br label %for.inc.us.i42

for.inc.us.i42:                                   ; preds = %if.else20.us.i48, %if.then.us.i46, %if.then18.us.i40
  %d.1.us.i43 = phi i32 [ %add.us.i47, %if.then.us.i46 ], [ %add19.us.i41, %if.then18.us.i40 ], [ %spec.select.i51, %if.else20.us.i48 ]
  %inc.us.i44 = add nuw nsw i32 %k.032.us.i38, 1
  %exitcond35.not.i45 = icmp eq i32 %inc.us.i44, %9
  br i1 %exitcond35.not.i45, label %_Z8dijitianiii.exit52, label %for.body.us.i37, !llvm.loop !12

for.body.i22:                                     ; preds = %for.body.lr.ph.i14, %for.inc.i27
  %k.032.i23 = phi i32 [ %inc.i29, %for.inc.i27 ], [ 0, %for.body.lr.ph.i14 ]
  %d.031.i24 = phi i32 [ %d.1.i28, %for.inc.i27 ], [ 0, %for.body.lr.ph.i14 ]
  %12 = and i32 %k.032.i23, 2147483645
  switch i32 %12, label %if.else20.i33 [
    i32 8, label %if.then.i31
    i32 5, label %if.then.i31
    i32 1, label %if.then.i31
    i32 9, label %if.then18.i25
    i32 4, label %if.then18.i25
  ]

if.then.i31:                                      ; preds = %for.body.i22, %for.body.i22, %for.body.i22
  %add.i32 = add nsw i32 %d.031.i24, 31
  br label %for.inc.i27

if.then18.i25:                                    ; preds = %for.body.i22, %for.body.i22
  %add19.i26 = add nsw i32 %d.031.i24, 30
  br label %for.inc.i27

if.else20.i33:                                    ; preds = %for.body.i22
  %cmp21.i34 = icmp eq i32 %k.032.i23, 2
  %add32.i35 = add nsw i32 %d.031.i24, 28
  %spec.select33.i36 = select i1 %cmp21.i34, i32 %add32.i35, i32 %d.031.i24
  br label %for.inc.i27

for.inc.i27:                                      ; preds = %if.else20.i33, %if.then18.i25, %if.then.i31
  %d.1.i28 = phi i32 [ %add.i32, %if.then.i31 ], [ %add19.i26, %if.then18.i25 ], [ %spec.select33.i36, %if.else20.i33 ]
  %inc.i29 = add nuw nsw i32 %k.032.i23, 1
  %exitcond.not.i30 = icmp eq i32 %inc.i29, %9
  br i1 %exitcond.not.i30, label %_Z8dijitianiii.exit52, label %for.body.i22, !llvm.loop !12

_Z8dijitianiii.exit52:                            ; preds = %for.inc.i27, %for.inc.us.i42, %_Z8dijitianiii.exit
  %d.0.lcssa.i12 = phi i32 [ 0, %_Z8dijitianiii.exit ], [ %d.1.us.i43, %for.inc.us.i42 ], [ %d.1.i28, %for.inc.i27 ]
  %sub = sub i32 %d.0.lcssa.i, %d.0.lcssa.i12
  %rem = srem i32 %sub, 7
  %cmp20 = icmp eq i32 %rem, 0
  %str.1.str = select i1 %cmp20, ptr @str.1, ptr @str
  %puts10 = call i32 @puts(ptr nonnull dereferenceable(1) %str.1.str)
  %indvars.iv.next63 = add nuw nsw i64 %indvars.iv62, 1
  %13 = load i32, ptr %n, align 4, !tbaa !5
  %14 = sext i32 %13 to i64
  %cmp7 = icmp slt i64 %indvars.iv.next63, %14
  br i1 %cmp7, label %for.body9, label %for.cond.cleanup8, !llvm.loop !13
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_Z8dijitianiii(i32 noundef %y, i32 noundef %m, i32 noundef %day) local_unnamed_addr #3 {
entry:
  %cmp30 = icmp sgt i32 %m, 0
  br i1 %cmp30, label %for.body.lr.ph, label %for.cond.cleanup

for.body.lr.ph:                                   ; preds = %entry
  %0 = and i32 %y, 3
  %cmp23 = icmp eq i32 %0, 0
  %rem24 = srem i32 %y, 100
  %cmp25.not = icmp ne i32 %rem24, 0
  %or.cond27.not29 = and i1 %cmp23, %cmp25.not
  %rem27 = srem i32 %y, 400
  %cmp28 = icmp eq i32 %rem27, 0
  %or.cond28 = or i1 %cmp28, %or.cond27.not29
  br i1 %or.cond28, label %for.body.us, label %for.body

for.body.us:                                      ; preds = %for.body.lr.ph, %for.inc.us
  %k.032.us = phi i32 [ %inc.us, %for.inc.us ], [ 0, %for.body.lr.ph ]
  %d.031.us = phi i32 [ %d.1.us, %for.inc.us ], [ 0, %for.body.lr.ph ]
  %1 = and i32 %k.032.us, 2147483645
  switch i32 %1, label %if.else20.us [
    i32 8, label %if.then.us
    i32 5, label %if.then.us
    i32 1, label %if.then.us
    i32 9, label %if.then18.us
    i32 4, label %if.then18.us
  ]

if.then18.us:                                     ; preds = %for.body.us, %for.body.us
  %add19.us = add nsw i32 %d.031.us, 30
  br label %for.inc.us

if.then.us:                                       ; preds = %for.body.us, %for.body.us, %for.body.us
  %add.us = add nsw i32 %d.031.us, 31
  br label %for.inc.us

if.else20.us:                                     ; preds = %for.body.us
  %cmp21.us = icmp eq i32 %k.032.us, 2
  %add30.us = add nsw i32 %d.031.us, 29
  %spec.select = select i1 %cmp21.us, i32 %add30.us, i32 %d.031.us
  br label %for.inc.us

for.inc.us:                                       ; preds = %if.else20.us, %if.then.us, %if.then18.us
  %d.1.us = phi i32 [ %add.us, %if.then.us ], [ %add19.us, %if.then18.us ], [ %spec.select, %if.else20.us ]
  %inc.us = add nuw nsw i32 %k.032.us, 1
  %exitcond35.not = icmp eq i32 %inc.us, %m
  br i1 %exitcond35.not, label %for.cond.cleanup, label %for.body.us, !llvm.loop !12

for.cond.cleanup:                                 ; preds = %for.inc, %for.inc.us, %entry
  %d.0.lcssa = phi i32 [ 0, %entry ], [ %d.1.us, %for.inc.us ], [ %d.1, %for.inc ]
  %add36 = add nsw i32 %d.0.lcssa, %day
  ret i32 %add36

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %k.032 = phi i32 [ %inc, %for.inc ], [ 0, %for.body.lr.ph ]
  %d.031 = phi i32 [ %d.1, %for.inc ], [ 0, %for.body.lr.ph ]
  %2 = and i32 %k.032, 2147483645
  switch i32 %2, label %if.else20 [
    i32 8, label %if.then
    i32 5, label %if.then
    i32 1, label %if.then
    i32 9, label %if.then18
    i32 4, label %if.then18
  ]

if.then:                                          ; preds = %for.body, %for.body, %for.body
  %add = add nsw i32 %d.031, 31
  br label %for.inc

if.then18:                                        ; preds = %for.body, %for.body
  %add19 = add nsw i32 %d.031, 30
  br label %for.inc

if.else20:                                        ; preds = %for.body
  %cmp21 = icmp eq i32 %k.032, 2
  %add32 = add nsw i32 %d.031, 28
  %spec.select33 = select i1 %cmp21, i32 %add32, i32 %d.031
  br label %for.inc

for.inc:                                          ; preds = %if.else20, %if.then, %if.then18
  %d.1 = phi i32 [ %add, %if.then ], [ %add19, %if.then18 ], [ %spec.select33, %if.else20 ]
  %inc = add nuw nsw i32 %k.032, 1
  %exitcond.not = icmp eq i32 %inc, %m
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !llvm.loop !12
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
attributes #5 = { nounwind }

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
