; ModuleID = '<stdin>'
source_filename = "/tmp/tmpnxt85rxy.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"%d %d %d\00", align 1
@str = private unnamed_addr constant [3 x i8] c"NO\00", align 1
@str.1 = private unnamed_addr constant [4 x i8] c"YES\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef range(i32 0, 2) i32 @_Z9isRunNiani(i32 noundef %year) local_unnamed_addr #0 {
entry:
  %rem = srem i32 %year, 400
  %cmp = icmp eq i32 %rem, 0
  br i1 %cmp, label %if.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %0 = and i32 %year, 3
  %cmp2 = icmp eq i32 %0, 0
  %rem3 = srem i32 %year, 100
  %cmp4.not = icmp ne i32 %rem3, 0
  %or.cond.not = and i1 %cmp2, %cmp4.not
  %spec.select = zext i1 %or.cond.not to i32
  br label %if.end

if.end:                                           ; preds = %lor.lhs.false, %entry
  %result.0 = phi i32 [ 1, %entry ], [ %spec.select, %lor.lhs.false ]
  ret i32 %result.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_Z8DijiTianiii(i32 noundef %year, i32 noundef %month, i32 noundef %day) local_unnamed_addr #0 {
entry:
  %cmp29 = icmp sgt i32 %month, 1
  br i1 %cmp29, label %for.body.lr.ph, label %for.cond.cleanup

for.body.lr.ph:                                   ; preds = %entry
  %rem.i = srem i32 %year, 400
  %cmp.i = icmp eq i32 %rem.i, 0
  br i1 %cmp.i, label %for.body.us, label %for.body.lr.ph.split

for.body.us:                                      ; preds = %for.body.lr.ph, %for.inc.us
  %i.031.us = phi i32 [ %inc.us, %for.inc.us ], [ 1, %for.body.lr.ph ]
  %result.030.us = phi i32 [ %result.1.us, %for.inc.us ], [ 0, %for.body.lr.ph ]
  %cmp12.us = icmp eq i32 %i.031.us, 12
  br i1 %cmp12.us, label %if.then.us, label %switch.early.test.us

switch.early.test.us:                             ; preds = %for.body.us
  %0 = and i32 %i.031.us, 2147483645
  switch i32 %0, label %if.else22.us [
    i32 8, label %if.then.us
    i32 5, label %if.then.us
    i32 1, label %if.then.us
    i32 9, label %if.then20.us
    i32 4, label %if.then20.us
  ]

if.then20.us:                                     ; preds = %switch.early.test.us, %switch.early.test.us
  %add21.us = add nsw i32 %result.030.us, 30
  br label %for.inc.us

if.else22.us:                                     ; preds = %switch.early.test.us
  %cmp23.us = icmp eq i32 %i.031.us, 2
  %add26.us = add nsw i32 %result.030.us, 29
  %spec.select = select i1 %cmp23.us, i32 %add26.us, i32 %result.030.us
  br label %for.inc.us

if.then.us:                                       ; preds = %switch.early.test.us, %switch.early.test.us, %switch.early.test.us, %for.body.us
  %add.us = add nsw i32 %result.030.us, 31
  br label %for.inc.us

for.inc.us:                                       ; preds = %if.else22.us, %if.then.us, %if.then20.us
  %result.1.us = phi i32 [ %add.us, %if.then.us ], [ %add21.us, %if.then20.us ], [ %spec.select, %if.else22.us ]
  %inc.us = add nuw nsw i32 %i.031.us, 1
  %exitcond56.not = icmp eq i32 %inc.us, %month
  br i1 %exitcond56.not, label %for.cond.cleanup, label %for.body.us, !llvm.loop !5

for.body.lr.ph.split:                             ; preds = %for.body.lr.ph
  %1 = and i32 %year, 3
  %cmp2.i = icmp ne i32 %1, 0
  %rem3.i = srem i32 %year, 100
  %cmp4.not.i = icmp eq i32 %rem3.i, 0
  %or.cond.not.i.not = or i1 %cmp2.i, %cmp4.not.i
  br i1 %or.cond.not.i.not, label %for.body.us33, label %for.body

for.body.us33:                                    ; preds = %for.body.lr.ph.split, %for.inc.us45
  %i.031.us34 = phi i32 [ %inc.us47, %for.inc.us45 ], [ 1, %for.body.lr.ph.split ]
  %result.030.us35 = phi i32 [ %result.1.us46, %for.inc.us45 ], [ 0, %for.body.lr.ph.split ]
  %cmp12.us36 = icmp eq i32 %i.031.us34, 12
  br i1 %cmp12.us36, label %if.then.us43, label %switch.early.test.us37

switch.early.test.us37:                           ; preds = %for.body.us33
  %2 = and i32 %i.031.us34, 2147483645
  switch i32 %2, label %if.else22.us40 [
    i32 8, label %if.then.us43
    i32 5, label %if.then.us43
    i32 1, label %if.then.us43
    i32 9, label %if.then20.us38
    i32 4, label %if.then20.us38
  ]

if.then20.us38:                                   ; preds = %switch.early.test.us37, %switch.early.test.us37
  %add21.us39 = add nsw i32 %result.030.us35, 30
  br label %for.inc.us45

if.else22.us40:                                   ; preds = %switch.early.test.us37
  %cmp23.us41 = icmp eq i32 %i.031.us34, 2
  %add28.us = add nsw i32 %result.030.us35, 28
  %spec.select51 = select i1 %cmp23.us41, i32 %add28.us, i32 %result.030.us35
  br label %for.inc.us45

if.then.us43:                                     ; preds = %switch.early.test.us37, %switch.early.test.us37, %switch.early.test.us37, %for.body.us33
  %add.us44 = add nsw i32 %result.030.us35, 31
  br label %for.inc.us45

for.inc.us45:                                     ; preds = %if.else22.us40, %if.then.us43, %if.then20.us38
  %result.1.us46 = phi i32 [ %add.us44, %if.then.us43 ], [ %add21.us39, %if.then20.us38 ], [ %spec.select51, %if.else22.us40 ]
  %inc.us47 = add nuw nsw i32 %i.031.us34, 1
  %exitcond55.not = icmp eq i32 %inc.us47, %month
  br i1 %exitcond55.not, label %for.cond.cleanup, label %for.body.us33, !llvm.loop !5

for.cond.cleanup:                                 ; preds = %for.inc, %for.inc.us45, %for.inc.us, %entry
  %result.0.lcssa = phi i32 [ 0, %entry ], [ %result.1.us, %for.inc.us ], [ %result.1.us46, %for.inc.us45 ], [ %result.1, %for.inc ]
  %add32 = add nsw i32 %result.0.lcssa, %day
  ret i32 %add32

for.body:                                         ; preds = %for.body.lr.ph.split, %for.inc
  %i.031 = phi i32 [ %inc, %for.inc ], [ 1, %for.body.lr.ph.split ]
  %result.030 = phi i32 [ %result.1, %for.inc ], [ 0, %for.body.lr.ph.split ]
  %cmp12 = icmp eq i32 %i.031, 12
  br i1 %cmp12, label %if.then, label %switch.early.test

switch.early.test:                                ; preds = %for.body
  %3 = and i32 %i.031, 2147483645
  switch i32 %3, label %if.else22 [
    i32 8, label %if.then
    i32 5, label %if.then
    i32 1, label %if.then
    i32 9, label %if.then20
    i32 4, label %if.then20
  ]

if.then:                                          ; preds = %switch.early.test, %switch.early.test, %switch.early.test, %for.body
  %add = add nsw i32 %result.030, 31
  br label %for.inc

if.then20:                                        ; preds = %switch.early.test, %switch.early.test
  %add21 = add nsw i32 %result.030, 30
  br label %for.inc

if.else22:                                        ; preds = %switch.early.test
  %cmp23 = icmp eq i32 %i.031, 2
  %add26 = add nsw i32 %result.030, 29
  %spec.select52 = select i1 %cmp23, i32 %add26, i32 %result.030
  br label %for.inc

for.inc:                                          ; preds = %if.else22, %if.then, %if.then20
  %result.1 = phi i32 [ %add, %if.then ], [ %add21, %if.then20 ], [ %spec.select52, %if.else22 ]
  %inc = add nuw nsw i32 %i.031, 1
  %exitcond.not = icmp eq i32 %inc, %month
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !llvm.loop !5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_Z4swapPiS_(ptr noundef captures(none) %a, ptr noundef captures(none) %b) local_unnamed_addr #2 {
entry:
  %0 = load i32, ptr %a, align 4, !tbaa !8
  %1 = load i32, ptr %b, align 4, !tbaa !8
  store i32 %1, ptr %a, align 4, !tbaa !8
  store i32 %0, ptr %b, align 4, !tbaa !8
  ret void
}

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #3 {
entry:
  %n = alloca i32, align 4
  %year = alloca i32, align 4
  %month1 = alloca i32, align 4
  %month2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %year) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %month1) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %month2) #6
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  %0 = load i32, ptr %n, align 4, !tbaa !8
  %cmp70 = icmp sgt i32 %0, 0
  br i1 %cmp70, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %_Z8DijiTianiii.exit65
  %i.071 = phi i32 [ %inc, %_Z8DijiTianiii.exit65 ], [ 0, %entry ]
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %year, ptr noundef nonnull %month1, ptr noundef nonnull %month2)
  %1 = load i32, ptr %month1, align 4, !tbaa !8
  %2 = load i32, ptr %month2, align 4, !tbaa !8
  %cmp2 = icmp sgt i32 %1, %2
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 %2, ptr %month1, align 4, !tbaa !8
  store i32 %1, ptr %month2, align 4, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %3 = phi i32 [ %2, %if.then ], [ %1, %for.body ]
  %4 = phi i32 [ %1, %if.then ], [ %2, %for.body ]
  %5 = load i32, ptr %year, align 4, !tbaa !8
  %cmp29.i = icmp sgt i32 %4, 1
  br i1 %cmp29.i, label %for.body.lr.ph.i, label %_Z8DijiTianiii.exit

for.body.lr.ph.i:                                 ; preds = %if.end
  %rem.i.i = srem i32 %5, 400
  %cmp.i.i = icmp eq i32 %rem.i.i, 0
  br i1 %cmp.i.i, label %for.body.us.i, label %for.body.lr.ph.split.i

for.body.us.i:                                    ; preds = %for.body.lr.ph.i, %for.inc.us.i
  %i.031.us.i = phi i32 [ %inc.us.i, %for.inc.us.i ], [ 1, %for.body.lr.ph.i ]
  %result.030.us.i = phi i32 [ %result.1.us.i, %for.inc.us.i ], [ 0, %for.body.lr.ph.i ]
  %cmp12.us.i = icmp eq i32 %i.031.us.i, 12
  br i1 %cmp12.us.i, label %if.then.us.i, label %switch.early.test.us.i

switch.early.test.us.i:                           ; preds = %for.body.us.i
  %6 = and i32 %i.031.us.i, 2147483645
  switch i32 %6, label %if.else22.us.i [
    i32 8, label %if.then.us.i
    i32 5, label %if.then.us.i
    i32 1, label %if.then.us.i
    i32 9, label %if.then20.us.i
    i32 4, label %if.then20.us.i
  ]

if.then20.us.i:                                   ; preds = %switch.early.test.us.i, %switch.early.test.us.i
  %add21.us.i = add nsw i32 %result.030.us.i, 30
  br label %for.inc.us.i

if.else22.us.i:                                   ; preds = %switch.early.test.us.i
  %cmp23.us.i = icmp eq i32 %i.031.us.i, 2
  %add26.us.i = add nsw i32 %result.030.us.i, 29
  %spec.select.i = select i1 %cmp23.us.i, i32 %add26.us.i, i32 %result.030.us.i
  br label %for.inc.us.i

if.then.us.i:                                     ; preds = %switch.early.test.us.i, %switch.early.test.us.i, %switch.early.test.us.i, %for.body.us.i
  %add.us.i = add nsw i32 %result.030.us.i, 31
  br label %for.inc.us.i

for.inc.us.i:                                     ; preds = %if.then.us.i, %if.else22.us.i, %if.then20.us.i
  %result.1.us.i = phi i32 [ %add.us.i, %if.then.us.i ], [ %add21.us.i, %if.then20.us.i ], [ %spec.select.i, %if.else22.us.i ]
  %inc.us.i = add nuw nsw i32 %i.031.us.i, 1
  %exitcond56.not.i = icmp eq i32 %inc.us.i, %4
  br i1 %exitcond56.not.i, label %_Z8DijiTianiii.exit, label %for.body.us.i, !llvm.loop !5

for.body.lr.ph.split.i:                           ; preds = %for.body.lr.ph.i
  %7 = and i32 %5, 3
  %cmp2.i.i = icmp ne i32 %7, 0
  %rem3.i.i = srem i32 %5, 100
  %cmp4.not.i.i = icmp eq i32 %rem3.i.i, 0
  %or.cond.not.i.not.i = or i1 %cmp2.i.i, %cmp4.not.i.i
  br i1 %or.cond.not.i.not.i, label %for.body.us33.i, label %for.body.i

for.body.us33.i:                                  ; preds = %for.body.lr.ph.split.i, %for.inc.us45.i
  %i.031.us34.i = phi i32 [ %inc.us47.i, %for.inc.us45.i ], [ 1, %for.body.lr.ph.split.i ]
  %result.030.us35.i = phi i32 [ %result.1.us46.i, %for.inc.us45.i ], [ 0, %for.body.lr.ph.split.i ]
  %cmp12.us36.i = icmp eq i32 %i.031.us34.i, 12
  br i1 %cmp12.us36.i, label %if.then.us43.i, label %switch.early.test.us37.i

switch.early.test.us37.i:                         ; preds = %for.body.us33.i
  %8 = and i32 %i.031.us34.i, 2147483645
  switch i32 %8, label %if.else22.us40.i [
    i32 8, label %if.then.us43.i
    i32 5, label %if.then.us43.i
    i32 1, label %if.then.us43.i
    i32 9, label %if.then20.us38.i
    i32 4, label %if.then20.us38.i
  ]

if.then20.us38.i:                                 ; preds = %switch.early.test.us37.i, %switch.early.test.us37.i
  %add21.us39.i = add nsw i32 %result.030.us35.i, 30
  br label %for.inc.us45.i

if.else22.us40.i:                                 ; preds = %switch.early.test.us37.i
  %cmp23.us41.i = icmp eq i32 %i.031.us34.i, 2
  %add28.us.i = add nsw i32 %result.030.us35.i, 28
  %spec.select51.i = select i1 %cmp23.us41.i, i32 %add28.us.i, i32 %result.030.us35.i
  br label %for.inc.us45.i

if.then.us43.i:                                   ; preds = %switch.early.test.us37.i, %switch.early.test.us37.i, %switch.early.test.us37.i, %for.body.us33.i
  %add.us44.i = add nsw i32 %result.030.us35.i, 31
  br label %for.inc.us45.i

for.inc.us45.i:                                   ; preds = %if.then.us43.i, %if.else22.us40.i, %if.then20.us38.i
  %result.1.us46.i = phi i32 [ %add.us44.i, %if.then.us43.i ], [ %add21.us39.i, %if.then20.us38.i ], [ %spec.select51.i, %if.else22.us40.i ]
  %inc.us47.i = add nuw nsw i32 %i.031.us34.i, 1
  %exitcond55.not.i = icmp eq i32 %inc.us47.i, %4
  br i1 %exitcond55.not.i, label %_Z8DijiTianiii.exit, label %for.body.us33.i, !llvm.loop !5

for.body.i:                                       ; preds = %for.body.lr.ph.split.i, %for.inc.i
  %i.031.i = phi i32 [ %inc.i, %for.inc.i ], [ 1, %for.body.lr.ph.split.i ]
  %result.030.i = phi i32 [ %result.1.i, %for.inc.i ], [ 0, %for.body.lr.ph.split.i ]
  %cmp12.i = icmp eq i32 %i.031.i, 12
  br i1 %cmp12.i, label %if.then.i, label %switch.early.test.i

switch.early.test.i:                              ; preds = %for.body.i
  %9 = and i32 %i.031.i, 2147483645
  switch i32 %9, label %if.else22.i [
    i32 8, label %if.then.i
    i32 5, label %if.then.i
    i32 1, label %if.then.i
    i32 9, label %if.then20.i
    i32 4, label %if.then20.i
  ]

if.then.i:                                        ; preds = %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %for.body.i
  %add.i = add nsw i32 %result.030.i, 31
  br label %for.inc.i

if.then20.i:                                      ; preds = %switch.early.test.i, %switch.early.test.i
  %add21.i = add nsw i32 %result.030.i, 30
  br label %for.inc.i

if.else22.i:                                      ; preds = %switch.early.test.i
  %cmp23.i = icmp eq i32 %i.031.i, 2
  %add26.i = add nsw i32 %result.030.i, 29
  %spec.select52.i = select i1 %cmp23.i, i32 %add26.i, i32 %result.030.i
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else22.i, %if.then20.i, %if.then.i
  %result.1.i = phi i32 [ %add.i, %if.then.i ], [ %add21.i, %if.then20.i ], [ %spec.select52.i, %if.else22.i ]
  %inc.i = add nuw nsw i32 %i.031.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %4
  br i1 %exitcond.not.i, label %_Z8DijiTianiii.exit, label %for.body.i, !llvm.loop !5

_Z8DijiTianiii.exit:                              ; preds = %for.inc.i, %for.inc.us45.i, %for.inc.us.i, %if.end
  %result.0.lcssa.i = phi i32 [ 0, %if.end ], [ %result.1.us.i, %for.inc.us.i ], [ %result.1.us46.i, %for.inc.us45.i ], [ %result.1.i, %for.inc.i ]
  %cmp29.i3 = icmp sgt i32 %3, 1
  br i1 %cmp29.i3, label %for.body.lr.ph.i6, label %_Z8DijiTianiii.exit65

for.body.lr.ph.i6:                                ; preds = %_Z8DijiTianiii.exit
  %rem.i.i7 = srem i32 %5, 400
  %cmp.i.i8 = icmp eq i32 %rem.i.i7, 0
  br i1 %cmp.i.i8, label %for.body.us.i48, label %for.body.lr.ph.split.i9

for.body.us.i48:                                  ; preds = %for.body.lr.ph.i6, %for.inc.us.i55
  %i.031.us.i49 = phi i32 [ %inc.us.i57, %for.inc.us.i55 ], [ 1, %for.body.lr.ph.i6 ]
  %result.030.us.i50 = phi i32 [ %result.1.us.i56, %for.inc.us.i55 ], [ 0, %for.body.lr.ph.i6 ]
  %cmp12.us.i51 = icmp eq i32 %i.031.us.i49, 12
  br i1 %cmp12.us.i51, label %if.then.us.i59, label %switch.early.test.us.i52

switch.early.test.us.i52:                         ; preds = %for.body.us.i48
  %10 = and i32 %i.031.us.i49, 2147483645
  switch i32 %10, label %if.else22.us.i61 [
    i32 8, label %if.then.us.i59
    i32 5, label %if.then.us.i59
    i32 1, label %if.then.us.i59
    i32 9, label %if.then20.us.i53
    i32 4, label %if.then20.us.i53
  ]

if.then20.us.i53:                                 ; preds = %switch.early.test.us.i52, %switch.early.test.us.i52
  %add21.us.i54 = add nsw i32 %result.030.us.i50, 30
  br label %for.inc.us.i55

if.else22.us.i61:                                 ; preds = %switch.early.test.us.i52
  %cmp23.us.i62 = icmp eq i32 %i.031.us.i49, 2
  %add26.us.i63 = add nsw i32 %result.030.us.i50, 29
  %spec.select.i64 = select i1 %cmp23.us.i62, i32 %add26.us.i63, i32 %result.030.us.i50
  br label %for.inc.us.i55

if.then.us.i59:                                   ; preds = %switch.early.test.us.i52, %switch.early.test.us.i52, %switch.early.test.us.i52, %for.body.us.i48
  %add.us.i60 = add nsw i32 %result.030.us.i50, 31
  br label %for.inc.us.i55

for.inc.us.i55:                                   ; preds = %if.then.us.i59, %if.else22.us.i61, %if.then20.us.i53
  %result.1.us.i56 = phi i32 [ %add.us.i60, %if.then.us.i59 ], [ %add21.us.i54, %if.then20.us.i53 ], [ %spec.select.i64, %if.else22.us.i61 ]
  %inc.us.i57 = add nuw nsw i32 %i.031.us.i49, 1
  %exitcond56.not.i58 = icmp eq i32 %inc.us.i57, %3
  br i1 %exitcond56.not.i58, label %_Z8DijiTianiii.exit65, label %for.body.us.i48, !llvm.loop !5

for.body.lr.ph.split.i9:                          ; preds = %for.body.lr.ph.i6
  %11 = and i32 %5, 3
  %cmp2.i.i10 = icmp ne i32 %11, 0
  %rem3.i.i11 = srem i32 %5, 100
  %cmp4.not.i.i12 = icmp eq i32 %rem3.i.i11, 0
  %or.cond.not.i.not.i13 = or i1 %cmp2.i.i10, %cmp4.not.i.i12
  br i1 %or.cond.not.i.not.i13, label %for.body.us33.i31, label %for.body.i14

for.body.us33.i31:                                ; preds = %for.body.lr.ph.split.i9, %for.inc.us45.i38
  %i.031.us34.i32 = phi i32 [ %inc.us47.i40, %for.inc.us45.i38 ], [ 1, %for.body.lr.ph.split.i9 ]
  %result.030.us35.i33 = phi i32 [ %result.1.us46.i39, %for.inc.us45.i38 ], [ 0, %for.body.lr.ph.split.i9 ]
  %cmp12.us36.i34 = icmp eq i32 %i.031.us34.i32, 12
  br i1 %cmp12.us36.i34, label %if.then.us43.i42, label %switch.early.test.us37.i35

switch.early.test.us37.i35:                       ; preds = %for.body.us33.i31
  %12 = and i32 %i.031.us34.i32, 2147483645
  switch i32 %12, label %if.else22.us40.i44 [
    i32 8, label %if.then.us43.i42
    i32 5, label %if.then.us43.i42
    i32 1, label %if.then.us43.i42
    i32 9, label %if.then20.us38.i36
    i32 4, label %if.then20.us38.i36
  ]

if.then20.us38.i36:                               ; preds = %switch.early.test.us37.i35, %switch.early.test.us37.i35
  %add21.us39.i37 = add nsw i32 %result.030.us35.i33, 30
  br label %for.inc.us45.i38

if.else22.us40.i44:                               ; preds = %switch.early.test.us37.i35
  %cmp23.us41.i45 = icmp eq i32 %i.031.us34.i32, 2
  %add28.us.i46 = add nsw i32 %result.030.us35.i33, 28
  %spec.select51.i47 = select i1 %cmp23.us41.i45, i32 %add28.us.i46, i32 %result.030.us35.i33
  br label %for.inc.us45.i38

if.then.us43.i42:                                 ; preds = %switch.early.test.us37.i35, %switch.early.test.us37.i35, %switch.early.test.us37.i35, %for.body.us33.i31
  %add.us44.i43 = add nsw i32 %result.030.us35.i33, 31
  br label %for.inc.us45.i38

for.inc.us45.i38:                                 ; preds = %if.then.us43.i42, %if.else22.us40.i44, %if.then20.us38.i36
  %result.1.us46.i39 = phi i32 [ %add.us44.i43, %if.then.us43.i42 ], [ %add21.us39.i37, %if.then20.us38.i36 ], [ %spec.select51.i47, %if.else22.us40.i44 ]
  %inc.us47.i40 = add nuw nsw i32 %i.031.us34.i32, 1
  %exitcond55.not.i41 = icmp eq i32 %inc.us47.i40, %3
  br i1 %exitcond55.not.i41, label %_Z8DijiTianiii.exit65, label %for.body.us33.i31, !llvm.loop !5

for.body.i14:                                     ; preds = %for.body.lr.ph.split.i9, %for.inc.i21
  %i.031.i15 = phi i32 [ %inc.i23, %for.inc.i21 ], [ 1, %for.body.lr.ph.split.i9 ]
  %result.030.i16 = phi i32 [ %result.1.i22, %for.inc.i21 ], [ 0, %for.body.lr.ph.split.i9 ]
  %cmp12.i17 = icmp eq i32 %i.031.i15, 12
  br i1 %cmp12.i17, label %if.then.i25, label %switch.early.test.i18

switch.early.test.i18:                            ; preds = %for.body.i14
  %13 = and i32 %i.031.i15, 2147483645
  switch i32 %13, label %if.else22.i27 [
    i32 8, label %if.then.i25
    i32 5, label %if.then.i25
    i32 1, label %if.then.i25
    i32 9, label %if.then20.i19
    i32 4, label %if.then20.i19
  ]

if.then.i25:                                      ; preds = %switch.early.test.i18, %switch.early.test.i18, %switch.early.test.i18, %for.body.i14
  %add.i26 = add nsw i32 %result.030.i16, 31
  br label %for.inc.i21

if.then20.i19:                                    ; preds = %switch.early.test.i18, %switch.early.test.i18
  %add21.i20 = add nsw i32 %result.030.i16, 30
  br label %for.inc.i21

if.else22.i27:                                    ; preds = %switch.early.test.i18
  %cmp23.i28 = icmp eq i32 %i.031.i15, 2
  %add26.i29 = add nsw i32 %result.030.i16, 29
  %spec.select52.i30 = select i1 %cmp23.i28, i32 %add26.i29, i32 %result.030.i16
  br label %for.inc.i21

for.inc.i21:                                      ; preds = %if.else22.i27, %if.then20.i19, %if.then.i25
  %result.1.i22 = phi i32 [ %add.i26, %if.then.i25 ], [ %add21.i20, %if.then20.i19 ], [ %spec.select52.i30, %if.else22.i27 ]
  %inc.i23 = add nuw nsw i32 %i.031.i15, 1
  %exitcond.not.i24 = icmp eq i32 %inc.i23, %3
  br i1 %exitcond.not.i24, label %_Z8DijiTianiii.exit65, label %for.body.i14, !llvm.loop !5

_Z8DijiTianiii.exit65:                            ; preds = %for.inc.i21, %for.inc.us45.i38, %for.inc.us.i55, %_Z8DijiTianiii.exit
  %result.0.lcssa.i4 = phi i32 [ 0, %_Z8DijiTianiii.exit ], [ %result.1.us.i56, %for.inc.us.i55 ], [ %result.1.us46.i39, %for.inc.us45.i38 ], [ %result.1.i22, %for.inc.i21 ]
  %sub = sub i32 %result.0.lcssa.i, %result.0.lcssa.i4
  %rem = srem i32 %sub, 7
  %cmp5 = icmp eq i32 %rem, 0
  %str.1.str = select i1 %cmp5, ptr @str.1, ptr @str
  %puts2 = call i32 @puts(ptr nonnull dereferenceable(1) %str.1.str)
  %inc = add nuw nsw i32 %i.071, 1
  %14 = load i32, ptr %n, align 4, !tbaa !8
  %cmp = icmp slt i32 %inc, %14
  br i1 %cmp, label %for.body, label %for.end, !llvm.loop !12

for.end:                                          ; preds = %_Z8DijiTianiii.exit65, %entry
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %month2) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %month1) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %year) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #6
  ret i32 0
}

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!5 = distinct !{!5, !6, !7}
!6 = !{!"llvm.loop.mustprogress"}
!7 = !{!"llvm.loop.unroll.disable"}
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C++ TBAA"}
!12 = distinct !{!12, !6, !7}
