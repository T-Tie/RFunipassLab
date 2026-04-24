; ModuleID = '<stdin>'
source_filename = "/tmp/tmpbry9zrnj.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %a = alloca [100 x [100 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #7
  call void @llvm.lifetime.start.p0(i64 40000, ptr nonnull %a) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40000) %a, i8 0, i64 40000, i1 false)
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %tobool.not53 = icmp eq i32 %0, 0
  br i1 %tobool.not53, label %while.end22, label %for.cond.preheader.lr.ph

for.cond.preheader.lr.ph:                         ; preds = %entry
  %arrayidx1638 = getelementptr inbounds nuw i8, ptr %a, i64 404
  br label %for.cond.preheader

for.cond.preheaderthread-pre-split:               ; preds = %while.end
  %.pr = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %for.cond.preheaderthread-pre-split, %for.cond.preheader.lr.ph
  %1 = phi i32 [ %.pr, %for.cond.preheaderthread-pre-split ], [ %0, %for.cond.preheader.lr.ph ]
  %dec54.in = phi i32 [ %dec54, %for.cond.preheaderthread-pre-split ], [ %0, %for.cond.preheader.lr.ph ]
  %dec54 = add nsw i32 %dec54.in, -1
  %cmp44 = icmp sgt i32 %1, 0
  br i1 %cmp44, label %for.cond1.preheader, label %while.cond10.preheader

while.cond10.preheader:                           ; preds = %for.inc7, %for.cond.preheader
  %.lcssa = phi i32 [ %1, %for.cond.preheader ], [ %6, %for.inc7 ]
  %p.046 = add nsw i32 %.lcssa, -1
  %tobool11.not47 = icmp eq i32 %p.046, 0
  br i1 %tobool11.not47, label %while.end, label %while.body12.preheader

while.body12.preheader:                           ; preds = %while.cond10.preheader
  %2 = zext i32 %p.046 to i64
  br label %while.body12

for.cond1.preheader:                              ; preds = %for.cond.preheader, %for.inc7
  %3 = phi i32 [ %6, %for.inc7 ], [ %1, %for.cond.preheader ]
  %indvars.iv58 = phi i64 [ %indvars.iv.next59, %for.inc7 ], [ 0, %for.cond.preheader ]
  %cmp242 = icmp sgt i32 %3, 0
  br i1 %cmp242, label %for.body3, label %for.cond1.preheader.for.inc7_crit_edge

for.cond1.preheader.for.inc7_crit_edge:           ; preds = %for.cond1.preheader
  %.pre = sext i32 %3 to i64
  br label %for.inc7

for.body3:                                        ; preds = %for.cond1.preheader, %for.body3
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body3 ], [ 0, %for.cond1.preheader ]
  %arrayidx5 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv58, i64 %indvars.iv
  %call6 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx5)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %4 = load i32, ptr %n, align 4, !tbaa !5
  %5 = sext i32 %4 to i64
  %cmp2 = icmp slt i64 %indvars.iv.next, %5
  br i1 %cmp2, label %for.body3, label %for.inc7, !llvm.loop !9

for.inc7:                                         ; preds = %for.body3, %for.cond1.preheader.for.inc7_crit_edge
  %.pre-phi = phi i64 [ %.pre, %for.cond1.preheader.for.inc7_crit_edge ], [ %5, %for.body3 ]
  %6 = phi i32 [ %3, %for.cond1.preheader.for.inc7_crit_edge ], [ %4, %for.body3 ]
  %indvars.iv.next59 = add nuw nsw i64 %indvars.iv58, 1
  %cmp = icmp slt i64 %indvars.iv.next59, %.pre-phi
  br i1 %cmp, label %for.cond1.preheader, label %while.cond10.preheader, !llvm.loop !12

while.body12:                                     ; preds = %while.body12.preheader, %_Z4dealiPA100_i.exit
  %indvar = phi i64 [ 0, %while.body12.preheader ], [ %indvar.next, %_Z4dealiPA100_i.exit ]
  %indvars.iv62 = phi i64 [ %2, %while.body12.preheader ], [ %indvars.iv.next63, %_Z4dealiPA100_i.exit ]
  %sum.049 = phi i32 [ 0, %while.body12.preheader ], [ %add1740, %_Z4dealiPA100_i.exit ]
  %p.0.in48 = phi i32 [ %.lcssa, %while.body12.preheader ], [ %30, %_Z4dealiPA100_i.exit ]
  %7 = zext i32 %p.0.in48 to i64
  %8 = xor i64 %indvar, -1
  %9 = add i64 %8, %2
  %cmp28.i = icmp sgt i32 %p.0.in48, 0
  br i1 %cmp28.i, label %for.body.us30.preheader.i, label %_Z2m2iPA100_i.exit.thread

for.body.us30.preheader.i:                        ; preds = %while.body12
  %10 = zext nneg i32 %p.0.in48 to i64
  %min.iters.check72 = icmp ult i32 %p.0.in48, 4
  %n.vec75 = and i64 %7, 2147483644
  %cmp.n81 = icmp eq i64 %n.vec75, %7
  br label %for.body.us30.i

for.body.us30.i:                                  ; preds = %for.inc29.us38.i, %for.body.us30.preheader.i
  %indvars.iv56.i = phi i64 [ 0, %for.body.us30.preheader.i ], [ %indvars.iv.next57.i, %for.inc29.us38.i ]
  %arrayidx.us33.i = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv56.i
  %11 = load i32, ptr %arrayidx.us33.i, align 16, !tbaa !5
  %tobool21.us34.not.i = icmp eq i32 %11, 0
  br i1 %tobool21.us34.not.i, label %for.inc29.us38.i, label %if.end.us.i

for.end.us35.i:                                   ; preds = %if.end.us.i
  br i1 %tobool.us.i, label %for.body20.us41.i.preheader, label %for.inc29.us38.i

for.body20.us41.i.preheader:                      ; preds = %for.end.us35.i
  br i1 %min.iters.check72, label %for.body20.us41.i.preheader83, label %vector.ph73

vector.ph73:                                      ; preds = %for.body20.us41.i.preheader
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %spec.select.us.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body76

vector.body76:                                    ; preds = %vector.body76, %vector.ph73
  %index77 = phi i64 [ 0, %vector.ph73 ], [ %index.next79, %vector.body76 ]
  %12 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv56.i, i64 %index77
  %wide.load78 = load <4 x i32>, ptr %12, align 16, !tbaa !5
  %13 = sub nsw <4 x i32> %wide.load78, %broadcast.splat
  store <4 x i32> %13, ptr %12, align 16, !tbaa !5
  %index.next79 = add nuw i64 %index77, 4
  %14 = icmp eq i64 %index.next79, %n.vec75
  br i1 %14, label %middle.block80, label %vector.body76, !llvm.loop !14

middle.block80:                                   ; preds = %vector.body76
  br i1 %cmp.n81, label %for.inc29.us38.i, label %for.body20.us41.i.preheader83

for.body20.us41.i.preheader83:                    ; preds = %for.body20.us41.i.preheader, %middle.block80
  %indvars.iv53.i.ph = phi i64 [ 0, %for.body20.us41.i.preheader ], [ %n.vec75, %middle.block80 ]
  br label %for.body20.us41.i

for.inc29.us38.i:                                 ; preds = %for.body20.us41.i, %middle.block80, %for.end.us35.i, %for.body.us30.i
  %indvars.iv.next57.i = add nuw nsw i64 %indvars.iv56.i, 1
  %exitcond60.not.i = icmp eq i64 %indvars.iv.next57.i, %10
  br i1 %exitcond60.not.i, label %for.body.us30.i13, label %for.body.us30.i, !llvm.loop !17

for.body20.us41.i:                                ; preds = %for.body20.us41.i.preheader83, %for.body20.us41.i
  %indvars.iv53.i = phi i64 [ %indvars.iv.next54.i, %for.body20.us41.i ], [ %indvars.iv53.i.ph, %for.body20.us41.i.preheader83 ]
  %arrayidx24.us44.i = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv56.i, i64 %indvars.iv53.i
  %15 = load i32, ptr %arrayidx24.us44.i, align 4, !tbaa !5
  %sub.us45.i = sub nsw i32 %15, %spec.select.us.i
  store i32 %sub.us45.i, ptr %arrayidx24.us44.i, align 4, !tbaa !5
  %indvars.iv.next54.i = add nuw nsw i64 %indvars.iv53.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next54.i, %10
  br i1 %exitcond.not.i, label %for.inc29.us38.i, label %for.body20.us41.i, !llvm.loop !18

if.end.us.i:                                      ; preds = %for.body.us30.i, %if.end.us.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %if.end.us.i ], [ 0, %for.body.us30.i ]
  %min.023.us.i = phi i32 [ %spec.select.us.i, %if.end.us.i ], [ %11, %for.body.us30.i ]
  %arrayidx8.us.i = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv56.i, i64 %indvars.iv.i
  %16 = load i32, ptr %arrayidx8.us.i, align 4, !tbaa !5
  %spec.select.us.i = call i32 @llvm.smin.i32(i32 %16, i32 %min.023.us.i)
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %cmp3.us.i = icmp samesign ult i64 %indvars.iv.next.i, %10
  %tobool.us.i = icmp ne i32 %spec.select.us.i, 0
  %or.cond.us.i = select i1 %cmp3.us.i, i1 %tobool.us.i, i1 false
  br i1 %or.cond.us.i, label %if.end.us.i, label %for.end.us35.i, !llvm.loop !19

for.body.us30.i13:                                ; preds = %for.inc29.us38.i, %for.inc29.us38.i26
  %indvars.iv56.i14 = phi i64 [ %indvars.iv.next57.i27, %for.inc29.us38.i26 ], [ 0, %for.inc29.us38.i ]
  %arrayidx1.us33.i = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %indvars.iv56.i14
  %17 = load i32, ptr %arrayidx1.us33.i, align 4, !tbaa !5
  %tobool21.us34.not.i15 = icmp eq i32 %17, 0
  br i1 %tobool21.us34.not.i15, label %for.inc29.us38.i26, label %if.end.us.i16

for.end.us35.i25:                                 ; preds = %if.end.us.i16
  br i1 %tobool.us.i23, label %for.body20.us41.i29, label %for.inc29.us38.i26

for.inc29.us38.i26:                               ; preds = %for.body20.us41.i29, %for.end.us35.i25, %for.body.us30.i13
  %indvars.iv.next57.i27 = add nuw nsw i64 %indvars.iv56.i14, 1
  %exitcond60.not.i28 = icmp eq i64 %indvars.iv.next57.i27, %10
  br i1 %exitcond60.not.i28, label %_Z2m2iPA100_i.exit, label %for.body.us30.i13, !llvm.loop !20

for.body20.us41.i29:                              ; preds = %for.end.us35.i25, %for.body20.us41.i29
  %indvars.iv53.i30 = phi i64 [ %indvars.iv.next54.i33, %for.body20.us41.i29 ], [ 0, %for.end.us35.i25 ]
  %arrayidx24.us44.i31 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv53.i30, i64 %indvars.iv56.i14
  %18 = load i32, ptr %arrayidx24.us44.i31, align 4, !tbaa !5
  %sub.us45.i32 = sub nsw i32 %18, %spec.select.us.i20
  store i32 %sub.us45.i32, ptr %arrayidx24.us44.i31, align 4, !tbaa !5
  %indvars.iv.next54.i33 = add nuw nsw i64 %indvars.iv53.i30, 1
  %exitcond.not.i34 = icmp eq i64 %indvars.iv.next54.i33, %10
  br i1 %exitcond.not.i34, label %for.inc29.us38.i26, label %for.body20.us41.i29, !llvm.loop !21

if.end.us.i16:                                    ; preds = %for.body.us30.i13, %if.end.us.i16
  %indvars.iv.i17 = phi i64 [ %indvars.iv.next.i21, %if.end.us.i16 ], [ 0, %for.body.us30.i13 ]
  %min.023.us.i18 = phi i32 [ %spec.select.us.i20, %if.end.us.i16 ], [ %17, %for.body.us30.i13 ]
  %arrayidx8.us.i19 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv.i17, i64 %indvars.iv56.i14
  %19 = load i32, ptr %arrayidx8.us.i19, align 4, !tbaa !5
  %spec.select.us.i20 = call i32 @llvm.smin.i32(i32 %19, i32 %min.023.us.i18)
  %indvars.iv.next.i21 = add nuw nsw i64 %indvars.iv.i17, 1
  %cmp3.us.i22 = icmp samesign ult i64 %indvars.iv.next.i21, %10
  %tobool.us.i23 = icmp ne i32 %spec.select.us.i20, 0
  %or.cond.us.i24 = select i1 %cmp3.us.i22, i1 %tobool.us.i23, i1 false
  br i1 %or.cond.us.i24, label %if.end.us.i16, label %for.end.us35.i25, !llvm.loop !22

_Z2m2iPA100_i.exit.thread:                        ; preds = %while.body12
  %20 = load i32, ptr %arrayidx1638, align 4, !tbaa !5
  br label %_Z4dealiPA100_i.exit

_Z2m2iPA100_i.exit:                               ; preds = %for.inc29.us38.i26
  %21 = load i32, ptr %arrayidx1638, align 4, !tbaa !5
  %cmp221.i = icmp samesign ugt i32 %p.0.in48, 2
  br i1 %cmp221.i, label %for.cond1.preheader.us.i.preheader, label %_Z4dealiPA100_i.exit

for.cond1.preheader.us.i.preheader:               ; preds = %_Z2m2iPA100_i.exit
  %min.iters.check = icmp ult i64 %9, 4
  %n.vec = and i64 %9, -4
  %22 = or disjoint i64 %n.vec, 1
  %cmp.n = icmp eq i64 %9, %n.vec
  br label %for.cond1.preheader.us.i

for.cond1.preheader.us.i:                         ; preds = %for.cond1.preheader.us.i.preheader, %for.cond1.for.inc10_crit_edge.us.i
  %indvars.iv33.i = phi i64 [ %indvars.iv.next34.i, %for.cond1.for.inc10_crit_edge.us.i ], [ 0, %for.cond1.preheader.us.i.preheader ]
  br i1 %min.iters.check, label %for.body3.us.i.preheader, label %vector.body

vector.body:                                      ; preds = %for.cond1.preheader.us.i, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %for.cond1.preheader.us.i ]
  %offset.idx = or disjoint i64 %index, 1
  %23 = or disjoint i64 %index, 2
  %24 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv33.i, i64 %23
  %wide.load = load <4 x i32>, ptr %24, align 8, !tbaa !5
  %25 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv33.i, i64 %offset.idx
  store <4 x i32> %wide.load, ptr %25, align 4, !tbaa !5
  %index.next = add nuw i64 %index, 4
  %26 = icmp eq i64 %index.next, %n.vec
  br i1 %26, label %middle.block, label %vector.body, !llvm.loop !23

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %for.cond1.for.inc10_crit_edge.us.i, label %for.body3.us.i.preheader

for.body3.us.i.preheader:                         ; preds = %for.cond1.preheader.us.i, %middle.block
  %indvars.iv.i35.ph = phi i64 [ 1, %for.cond1.preheader.us.i ], [ %22, %middle.block ]
  br label %for.body3.us.i

for.body3.us.i:                                   ; preds = %for.body3.us.i.preheader, %for.body3.us.i
  %indvars.iv.i35 = phi i64 [ %indvars.iv.next.i36, %for.body3.us.i ], [ %indvars.iv.i35.ph, %for.body3.us.i.preheader ]
  %indvars.iv.next.i36 = add nuw nsw i64 %indvars.iv.i35, 1
  %arrayidx5.us.i = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv33.i, i64 %indvars.iv.next.i36
  %27 = load i32, ptr %arrayidx5.us.i, align 4, !tbaa !5
  %arrayidx9.us.i = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv33.i, i64 %indvars.iv.i35
  store i32 %27, ptr %arrayidx9.us.i, align 4, !tbaa !5
  %exitcond.not.i37 = icmp eq i64 %indvars.iv.next.i36, %indvars.iv62
  br i1 %exitcond.not.i37, label %for.cond1.for.inc10_crit_edge.us.i, label %for.body3.us.i, !llvm.loop !24

for.cond1.for.inc10_crit_edge.us.i:               ; preds = %for.body3.us.i, %middle.block
  %indvars.iv.next34.i = add nuw nsw i64 %indvars.iv33.i, 1
  %exitcond37.not.i = icmp eq i64 %indvars.iv.next34.i, %10
  br i1 %exitcond37.not.i, label %for.cond17.preheader.us.i, label %for.cond1.preheader.us.i, !llvm.loop !25

for.cond17.preheader.us.i:                        ; preds = %for.cond1.for.inc10_crit_edge.us.i, %for.cond17.for.inc33_crit_edge.us.i
  %indvars.iv43.i = phi i64 [ %indvars.iv.next44.i, %for.cond17.for.inc33_crit_edge.us.i ], [ 0, %for.cond1.for.inc10_crit_edge.us.i ]
  br label %for.body20.us.i

for.body20.us.i:                                  ; preds = %for.body20.us.i, %for.cond17.preheader.us.i
  %indvars.iv38.i = phi i64 [ 1, %for.cond17.preheader.us.i ], [ %indvars.iv.next39.i, %for.body20.us.i ]
  %indvars.iv.next39.i = add nuw nsw i64 %indvars.iv38.i, 1
  %arrayidx25.us.i = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv.next39.i, i64 %indvars.iv43.i
  %28 = load i32, ptr %arrayidx25.us.i, align 4, !tbaa !5
  %arrayidx29.us.i = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv38.i, i64 %indvars.iv43.i
  store i32 %28, ptr %arrayidx29.us.i, align 4, !tbaa !5
  %exitcond42.not.i = icmp eq i64 %indvars.iv.next39.i, %indvars.iv62
  br i1 %exitcond42.not.i, label %for.cond17.for.inc33_crit_edge.us.i, label %for.body20.us.i, !llvm.loop !26

for.cond17.for.inc33_crit_edge.us.i:              ; preds = %for.body20.us.i
  %indvars.iv.next44.i = add nuw nsw i64 %indvars.iv43.i, 1
  %exitcond47.not.i = icmp eq i64 %indvars.iv.next44.i, %indvars.iv62
  br i1 %exitcond47.not.i, label %_Z4dealiPA100_i.exit, label %for.cond17.preheader.us.i, !llvm.loop !27

_Z4dealiPA100_i.exit:                             ; preds = %for.cond17.for.inc33_crit_edge.us.i, %_Z2m2iPA100_i.exit.thread, %_Z2m2iPA100_i.exit
  %.pn = phi i32 [ %20, %_Z2m2iPA100_i.exit.thread ], [ %21, %_Z2m2iPA100_i.exit ], [ %21, %for.cond17.for.inc33_crit_edge.us.i ]
  %add1740 = add nsw i32 %.pn, %sum.049
  %indvars.iv.next63 = add nsw i64 %indvars.iv62, -1
  %29 = and i64 %indvars.iv.next63, 4294967295
  %tobool11.not = icmp eq i64 %29, 0
  %30 = trunc nuw i64 %indvars.iv62 to i32
  %indvar.next = add i64 %indvar, 1
  br i1 %tobool11.not, label %while.end, label %while.body12, !llvm.loop !28

while.end:                                        ; preds = %_Z4dealiPA100_i.exit, %while.cond10.preheader
  %sum.0.lcssa = phi i32 [ 0, %while.cond10.preheader ], [ %add1740, %_Z4dealiPA100_i.exit ]
  %call21 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %sum.0.lcssa)
  %tobool.not = icmp eq i32 %dec54, 0
  br i1 %tobool.not, label %while.end22, label %for.cond.preheaderthread-pre-split, !llvm.loop !29

while.end22:                                      ; preds = %while.end, %entry
  call void @llvm.lifetime.end.p0(i64 40000, ptr nonnull %a) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #7
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @_Z2m1iPA100_i(i32 noundef %n, ptr noundef captures(none) %a) local_unnamed_addr #4 {
entry:
  %cmp28 = icmp sgt i32 %n, 0
  br i1 %cmp28, label %for.body.us30.preheader, label %for.end31

for.body.us30.preheader:                          ; preds = %entry
  %0 = zext nneg i32 %n to i64
  %wide.trip.count59 = zext nneg i32 %n to i64
  %min.iters.check = icmp ult i32 %n, 4
  %n.vec = and i64 %0, 2147483644
  %cmp.n = icmp eq i64 %n.vec, %0
  br label %for.body.us30

for.body.us30:                                    ; preds = %for.body.us30.preheader, %for.inc29.us38
  %indvars.iv56 = phi i64 [ 0, %for.body.us30.preheader ], [ %indvars.iv.next57, %for.inc29.us38 ]
  %arrayidx.us33 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv56
  %1 = load i32, ptr %arrayidx.us33, align 4, !tbaa !5
  %tobool21.us34.not = icmp eq i32 %1, 0
  br i1 %tobool21.us34.not, label %for.inc29.us38, label %if.end.us

for.end.us35:                                     ; preds = %if.end.us
  br i1 %tobool.us, label %for.body20.us41.preheader, label %for.inc29.us38

for.body20.us41.preheader:                        ; preds = %for.end.us35
  br i1 %min.iters.check, label %for.body20.us41.preheader63, label %vector.ph

vector.ph:                                        ; preds = %for.body20.us41.preheader
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %spec.select.us, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %2 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv56, i64 %index
  %wide.load = load <4 x i32>, ptr %2, align 4, !tbaa !5
  %3 = sub nsw <4 x i32> %wide.load, %broadcast.splat
  store <4 x i32> %3, ptr %2, align 4, !tbaa !5
  %index.next = add nuw i64 %index, 4
  %4 = icmp eq i64 %index.next, %n.vec
  br i1 %4, label %middle.block, label %vector.body, !llvm.loop !30

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %for.inc29.us38, label %for.body20.us41.preheader63

for.body20.us41.preheader63:                      ; preds = %for.body20.us41.preheader, %middle.block
  %indvars.iv53.ph = phi i64 [ 0, %for.body20.us41.preheader ], [ %n.vec, %middle.block ]
  br label %for.body20.us41

for.inc29.us38:                                   ; preds = %for.body20.us41, %middle.block, %for.body.us30, %for.end.us35
  %indvars.iv.next57 = add nuw nsw i64 %indvars.iv56, 1
  %exitcond60.not = icmp eq i64 %indvars.iv.next57, %wide.trip.count59
  br i1 %exitcond60.not, label %for.end31, label %for.body.us30, !llvm.loop !17

for.body20.us41:                                  ; preds = %for.body20.us41.preheader63, %for.body20.us41
  %indvars.iv53 = phi i64 [ %indvars.iv.next54, %for.body20.us41 ], [ %indvars.iv53.ph, %for.body20.us41.preheader63 ]
  %arrayidx24.us44 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv56, i64 %indvars.iv53
  %5 = load i32, ptr %arrayidx24.us44, align 4, !tbaa !5
  %sub.us45 = sub nsw i32 %5, %spec.select.us
  store i32 %sub.us45, ptr %arrayidx24.us44, align 4, !tbaa !5
  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next54, %wide.trip.count59
  br i1 %exitcond.not, label %for.inc29.us38, label %for.body20.us41, !llvm.loop !31

if.end.us:                                        ; preds = %for.body.us30, %if.end.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end.us ], [ 0, %for.body.us30 ]
  %min.023.us = phi i32 [ %spec.select.us, %if.end.us ], [ %1, %for.body.us30 ]
  %arrayidx8.us = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv56, i64 %indvars.iv
  %6 = load i32, ptr %arrayidx8.us, align 4, !tbaa !5
  %spec.select.us = tail call i32 @llvm.smin.i32(i32 %6, i32 %min.023.us)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %cmp3.us = icmp samesign ult i64 %indvars.iv.next, %0
  %tobool.us = icmp ne i32 %spec.select.us, 0
  %or.cond.us = select i1 %cmp3.us, i1 %tobool.us, i1 false
  br i1 %or.cond.us, label %if.end.us, label %for.end.us35, !llvm.loop !19

for.end31:                                        ; preds = %for.inc29.us38, %entry
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @_Z2m2iPA100_i(i32 noundef %n, ptr noundef captures(none) %a) local_unnamed_addr #4 {
entry:
  %cmp28 = icmp sgt i32 %n, 0
  br i1 %cmp28, label %for.body.us30.preheader, label %for.end31

for.body.us30.preheader:                          ; preds = %entry
  %0 = zext nneg i32 %n to i64
  %wide.trip.count59 = zext nneg i32 %n to i64
  br label %for.body.us30

for.body.us30:                                    ; preds = %for.body.us30.preheader, %for.inc29.us38
  %indvars.iv56 = phi i64 [ 0, %for.body.us30.preheader ], [ %indvars.iv.next57, %for.inc29.us38 ]
  %arrayidx1.us33 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %indvars.iv56
  %1 = load i32, ptr %arrayidx1.us33, align 4, !tbaa !5
  %tobool21.us34.not = icmp eq i32 %1, 0
  br i1 %tobool21.us34.not, label %for.inc29.us38, label %if.end.us

for.end.us35:                                     ; preds = %if.end.us
  br i1 %tobool.us, label %for.body20.us41, label %for.inc29.us38

for.inc29.us38:                                   ; preds = %for.body20.us41, %for.body.us30, %for.end.us35
  %indvars.iv.next57 = add nuw nsw i64 %indvars.iv56, 1
  %exitcond60.not = icmp eq i64 %indvars.iv.next57, %wide.trip.count59
  br i1 %exitcond60.not, label %for.end31, label %for.body.us30, !llvm.loop !20

for.body20.us41:                                  ; preds = %for.end.us35, %for.body20.us41
  %indvars.iv53 = phi i64 [ %indvars.iv.next54, %for.body20.us41 ], [ 0, %for.end.us35 ]
  %arrayidx24.us44 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv53, i64 %indvars.iv56
  %2 = load i32, ptr %arrayidx24.us44, align 4, !tbaa !5
  %sub.us45 = sub nsw i32 %2, %spec.select.us
  store i32 %sub.us45, ptr %arrayidx24.us44, align 4, !tbaa !5
  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next54, %wide.trip.count59
  br i1 %exitcond.not, label %for.inc29.us38, label %for.body20.us41, !llvm.loop !21

if.end.us:                                        ; preds = %for.body.us30, %if.end.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end.us ], [ 0, %for.body.us30 ]
  %min.023.us = phi i32 [ %spec.select.us, %if.end.us ], [ %1, %for.body.us30 ]
  %arrayidx8.us = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv, i64 %indvars.iv56
  %3 = load i32, ptr %arrayidx8.us, align 4, !tbaa !5
  %spec.select.us = tail call i32 @llvm.smin.i32(i32 %3, i32 %min.023.us)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %cmp3.us = icmp samesign ult i64 %indvars.iv.next, %0
  %tobool.us = icmp ne i32 %spec.select.us, 0
  %or.cond.us = select i1 %cmp3.us, i1 %tobool.us, i1 false
  br i1 %or.cond.us, label %if.end.us, label %for.end.us35, !llvm.loop !22

for.end31:                                        ; preds = %for.inc29.us38, %entry
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @_Z4dealiPA100_i(i32 noundef %n, ptr noundef captures(none) %a) local_unnamed_addr #4 {
entry:
  %cmp23 = icmp sgt i32 %n, 0
  br i1 %cmp23, label %for.cond1.preheader.lr.ph, label %for.end35

for.cond1.preheader.lr.ph:                        ; preds = %entry
  %sub = add nsw i32 %n, -1
  %cmp221 = icmp samesign ugt i32 %n, 2
  br i1 %cmp221, label %for.cond1.preheader.us.preheader, label %for.cond13.preheader

for.cond1.preheader.us.preheader:                 ; preds = %for.cond1.preheader.lr.ph
  %wide.trip.count36 = zext nneg i32 %n to i64
  %wide.trip.count = zext i32 %sub to i64
  %0 = add nsw i64 %wide.trip.count, -1
  %min.iters.check = icmp ult i64 %0, 4
  %n.vec = and i64 %0, -4
  %1 = or disjoint i64 %n.vec, 1
  %cmp.n = icmp eq i64 %0, %n.vec
  br label %for.cond1.preheader.us

for.cond1.preheader.us:                           ; preds = %for.cond1.preheader.us.preheader, %for.cond1.for.inc10_crit_edge.us
  %indvars.iv33 = phi i64 [ 0, %for.cond1.preheader.us.preheader ], [ %indvars.iv.next34, %for.cond1.for.inc10_crit_edge.us ]
  br i1 %min.iters.check, label %for.body3.us.preheader, label %vector.body

vector.body:                                      ; preds = %for.cond1.preheader.us, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %for.cond1.preheader.us ]
  %offset.idx = or disjoint i64 %index, 1
  %2 = or disjoint i64 %index, 2
  %3 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv33, i64 %2
  %wide.load = load <4 x i32>, ptr %3, align 4, !tbaa !5
  %4 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv33, i64 %offset.idx
  store <4 x i32> %wide.load, ptr %4, align 4, !tbaa !5
  %index.next = add nuw i64 %index, 4
  %5 = icmp eq i64 %index.next, %n.vec
  br i1 %5, label %middle.block, label %vector.body, !llvm.loop !32

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %for.cond1.for.inc10_crit_edge.us, label %for.body3.us.preheader

for.body3.us.preheader:                           ; preds = %for.cond1.preheader.us, %middle.block
  %indvars.iv.ph = phi i64 [ 1, %for.cond1.preheader.us ], [ %1, %middle.block ]
  br label %for.body3.us

for.body3.us:                                     ; preds = %for.body3.us.preheader, %for.body3.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body3.us ], [ %indvars.iv.ph, %for.body3.us.preheader ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %arrayidx5.us = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv33, i64 %indvars.iv.next
  %6 = load i32, ptr %arrayidx5.us, align 4, !tbaa !5
  %arrayidx9.us = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv33, i64 %indvars.iv
  store i32 %6, ptr %arrayidx9.us, align 4, !tbaa !5
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.cond1.for.inc10_crit_edge.us, label %for.body3.us, !llvm.loop !33

for.cond1.for.inc10_crit_edge.us:                 ; preds = %for.body3.us, %middle.block
  %indvars.iv.next34 = add nuw nsw i64 %indvars.iv33, 1
  %exitcond37.not = icmp eq i64 %indvars.iv.next34, %wide.trip.count36
  br i1 %exitcond37.not, label %for.cond13.preheader, label %for.cond1.preheader.us, !llvm.loop !25

for.cond13.preheader:                             ; preds = %for.cond1.for.inc10_crit_edge.us, %for.cond1.preheader.lr.ph
  %or.cond = icmp ult i32 %n, 3
  br i1 %or.cond, label %for.end35, label %for.cond17.preheader.us.preheader

for.cond17.preheader.us.preheader:                ; preds = %for.cond13.preheader
  %wide.trip.count46 = zext nneg i32 %sub to i64
  br label %for.cond17.preheader.us

for.cond17.preheader.us:                          ; preds = %for.cond17.preheader.us.preheader, %for.cond17.for.inc33_crit_edge.us
  %indvars.iv43 = phi i64 [ 0, %for.cond17.preheader.us.preheader ], [ %indvars.iv.next44, %for.cond17.for.inc33_crit_edge.us ]
  br label %for.body20.us

for.body20.us:                                    ; preds = %for.cond17.preheader.us, %for.body20.us
  %indvars.iv38 = phi i64 [ 1, %for.cond17.preheader.us ], [ %indvars.iv.next39, %for.body20.us ]
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1
  %arrayidx25.us = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv.next39, i64 %indvars.iv43
  %7 = load i32, ptr %arrayidx25.us, align 4, !tbaa !5
  %arrayidx29.us = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv38, i64 %indvars.iv43
  store i32 %7, ptr %arrayidx29.us, align 4, !tbaa !5
  %exitcond42.not = icmp eq i64 %indvars.iv.next39, %wide.trip.count46
  br i1 %exitcond42.not, label %for.cond17.for.inc33_crit_edge.us, label %for.body20.us, !llvm.loop !26

for.cond17.for.inc33_crit_edge.us:                ; preds = %for.body20.us
  %indvars.iv.next44 = add nuw nsw i64 %indvars.iv43, 1
  %exitcond47.not = icmp eq i64 %indvars.iv.next44, %wide.trip.count46
  br i1 %exitcond47.not, label %for.end35, label %for.cond17.preheader.us, !llvm.loop !27

for.end35:                                        ; preds = %for.cond17.for.inc33_crit_edge.us, %entry, %for.cond13.preheader
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !10, !11, !13}
!13 = !{!"llvm.loop.unswitch.partial.disable"}
!14 = distinct !{!14, !10, !11, !15, !16}
!15 = !{!"llvm.loop.isvectorized", i32 1}
!16 = !{!"llvm.loop.unroll.runtime.disable"}
!17 = distinct !{!17, !10, !11}
!18 = distinct !{!18, !10, !11, !15}
!19 = distinct !{!19, !10, !11}
!20 = distinct !{!20, !10, !11}
!21 = distinct !{!21, !10, !11}
!22 = distinct !{!22, !10, !11}
!23 = distinct !{!23, !10, !11, !15, !16}
!24 = distinct !{!24, !10, !11, !15}
!25 = distinct !{!25, !10, !11}
!26 = distinct !{!26, !10, !11}
!27 = distinct !{!27, !10, !11}
!28 = distinct !{!28, !10, !11}
!29 = distinct !{!29, !10, !11}
!30 = distinct !{!30, !10, !11, !15, !16}
!31 = distinct !{!31, !10, !11, !15}
!32 = distinct !{!32, !10, !11, !15, !16}
!33 = distinct !{!33, !10, !11, !15}
