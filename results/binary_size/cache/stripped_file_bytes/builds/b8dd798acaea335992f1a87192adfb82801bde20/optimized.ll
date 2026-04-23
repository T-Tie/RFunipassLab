; ModuleID = '<stdin>'
source_filename = "/tmp/tmpc8lfmidu.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [6 x i8] c"%d,%d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%d+%d\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"No\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %m = alloca i32, align 4
  %sz = alloca [8 x [8 x i32]], align 16
  %td = alloca [8 x [8 x i32]], align 16
  %zd = alloca [8 x i32], align 16
  %bj = alloca [8 x [8 x i32]], align 16
  %hd = alloca [8 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %m) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n, ptr noundef nonnull %m)
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %sz) #5
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %td) #5
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %zd) #5
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %bj) #5
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %hd) #5
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp69 = icmp sgt i32 %0, 0
  br i1 %cmp69, label %for.cond1.preheader.lr.ph, label %for.end152

for.cond1.preheader.lr.ph:                        ; preds = %entry
  %.pre147.pre.pre = load i32, ptr %m, align 4, !tbaa !5
  %1 = icmp sgt i32 %.pre147.pre.pre, 0
  br i1 %1, label %for.cond1.preheader, label %for.body142.preheader

for.cond1.preheader:                              ; preds = %for.cond1.preheader.lr.ph, %for.inc23
  %2 = phi i32 [ %10, %for.inc23 ], [ %0, %for.cond1.preheader.lr.ph ]
  %3 = phi i32 [ %11, %for.inc23 ], [ %.pre147.pre.pre, %for.cond1.preheader.lr.ph ]
  %indvars.iv100 = phi i64 [ %indvars.iv.next101, %for.inc23 ], [ 0, %for.cond1.preheader.lr.ph ]
  %cmp267 = icmp sgt i32 %3, 0
  br i1 %cmp267, label %for.body3, label %for.inc23

for.cond26.preheader:                             ; preds = %for.inc23
  %cmp2773 = icmp sgt i32 %10, 0
  br i1 %cmp2773, label %for.cond29.preheader.lr.ph, label %for.cond81.preheader

for.cond29.preheader.lr.ph:                       ; preds = %for.cond26.preheader
  %cmp3071 = icmp sgt i32 %11, 0
  br i1 %cmp3071, label %for.cond29.preheader.us.preheader, label %for.body142.preheader

for.cond29.preheader.us.preheader:                ; preds = %for.cond29.preheader.lr.ph
  %wide.trip.count109 = zext nneg i32 %10 to i64
  %wide.trip.count = zext nneg i32 %11 to i64
  br label %for.cond29.preheader.us

for.cond29.preheader.us:                          ; preds = %for.cond29.preheader.us.preheader, %for.cond29.for.inc53_crit_edge.us
  %indvars.iv106 = phi i64 [ 0, %for.cond29.preheader.us.preheader ], [ %indvars.iv.next107, %for.cond29.for.inc53_crit_edge.us ]
  %arrayidx35.us.phi.trans.insert = getelementptr inbounds nuw [8 x [8 x i32]], ptr %sz, i64 0, i64 %indvars.iv106, i64 0
  %.pre146 = load i32, ptr %arrayidx35.us.phi.trans.insert, align 16, !tbaa !5
  br label %for.body31.us

for.body31.us:                                    ; preds = %for.cond29.preheader.us, %for.inc50.us
  %4 = phi i32 [ %.pre146, %for.cond29.preheader.us ], [ %6, %for.inc50.us ]
  %indvars.iv103 = phi i64 [ 0, %for.cond29.preheader.us ], [ %indvars.iv.next104, %for.inc50.us ]
  %indvars.iv.next104 = add nuw nsw i64 %indvars.iv103, 1
  %arrayidx39.us = getelementptr inbounds nuw [8 x [8 x i32]], ptr %sz, i64 0, i64 %indvars.iv106, i64 %indvars.iv.next104
  %5 = load i32, ptr %arrayidx39.us, align 4, !tbaa !5
  %cmp40.us = icmp sgt i32 %4, %5
  br i1 %cmp40.us, label %if.then.us, label %for.inc50.us

if.then.us:                                       ; preds = %for.body31.us
  store i32 %4, ptr %arrayidx39.us, align 4, !tbaa !5
  br label %for.inc50.us

for.inc50.us:                                     ; preds = %if.then.us, %for.body31.us
  %6 = phi i32 [ %4, %if.then.us ], [ %5, %for.body31.us ]
  %exitcond.not = icmp eq i64 %indvars.iv.next104, %wide.trip.count
  br i1 %exitcond.not, label %for.cond29.for.inc53_crit_edge.us, label %for.body31.us, !llvm.loop !9

for.cond29.for.inc53_crit_edge.us:                ; preds = %for.inc50.us
  %indvars.iv.next107 = add nuw nsw i64 %indvars.iv106, 1
  %exitcond110.not = icmp eq i64 %indvars.iv.next107, %wide.trip.count109
  br i1 %exitcond110.not, label %for.cond59.preheader.lr.ph, label %for.cond29.preheader.us, !llvm.loop !12

for.body3:                                        ; preds = %for.cond1.preheader, %for.body3
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body3 ], [ 0, %for.cond1.preheader ]
  %arrayidx5 = getelementptr inbounds nuw [8 x [8 x i32]], ptr %sz, i64 0, i64 %indvars.iv100, i64 %indvars.iv
  %call6 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %arrayidx5)
  %7 = load i32, ptr %arrayidx5, align 4, !tbaa !5
  %arrayidx14 = getelementptr inbounds nuw [8 x [8 x i32]], ptr %td, i64 0, i64 %indvars.iv100, i64 %indvars.iv
  store i32 %7, ptr %arrayidx14, align 4, !tbaa !5
  %arrayidx22 = getelementptr inbounds nuw [8 x [8 x i32]], ptr %bj, i64 0, i64 %indvars.iv100, i64 %indvars.iv
  store i32 %7, ptr %arrayidx22, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %8 = load i32, ptr %m, align 4, !tbaa !5
  %9 = sext i32 %8 to i64
  %cmp2 = icmp slt i64 %indvars.iv.next, %9
  br i1 %cmp2, label %for.body3, label %for.inc23.loopexit, !llvm.loop !13

for.inc23.loopexit:                               ; preds = %for.body3
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.inc23

for.inc23:                                        ; preds = %for.inc23.loopexit, %for.cond1.preheader
  %10 = phi i32 [ %.pre, %for.inc23.loopexit ], [ %2, %for.cond1.preheader ]
  %11 = phi i32 [ %8, %for.inc23.loopexit ], [ %3, %for.cond1.preheader ]
  %indvars.iv.next101 = add nuw nsw i64 %indvars.iv100, 1
  %12 = sext i32 %10 to i64
  %cmp = icmp slt i64 %indvars.iv.next101, %12
  br i1 %cmp, label %for.cond1.preheader, label %for.cond26.preheader, !llvm.loop !14

for.cond59.preheader.lr.ph:                       ; preds = %for.cond29.for.inc53_crit_edge.us
  %sub = add nsw i32 %11, -1
  %idxprom68 = sext i32 %sub to i64
  %wide.trip.count119 = zext nneg i32 %10 to i64
  %wide.trip.count114 = zext nneg i32 %11 to i64
  %min.iters.check = icmp ult i32 %11, 4
  %n.vec = and i64 %wide.trip.count, 2147483644
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %for.cond59.preheader.us

for.cond59.preheader.us:                          ; preds = %for.cond59.preheader.lr.ph, %for.cond59.for.inc78_crit_edge.us
  %indvars.iv116 = phi i64 [ 0, %for.cond59.preheader.lr.ph ], [ %indvars.iv.next117, %for.cond59.for.inc78_crit_edge.us ]
  %arrayidx69.us = getelementptr inbounds [8 x [8 x i32]], ptr %sz, i64 0, i64 %indvars.iv116, i64 %idxprom68
  %13 = load i32, ptr %arrayidx69.us, align 4, !tbaa !5
  %arrayidx73.us = getelementptr inbounds nuw [8 x i32], ptr %zd, i64 0, i64 %indvars.iv116
  br i1 %min.iters.check, label %for.body61.us.preheader, label %vector.ph

vector.ph:                                        ; preds = %for.cond59.preheader.us
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %13, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %26, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %26 ]
  %14 = getelementptr inbounds nuw [8 x [8 x i32]], ptr %td, i64 0, i64 %indvars.iv116, i64 %index
  %wide.load = load <4 x i32>, ptr %14, align 16, !tbaa !5
  %15 = icmp eq <4 x i32> %wide.load, %broadcast.splat
  %16 = extractelement <4 x i1> %15, i64 0
  %17 = extractelement <4 x i1> %15, i64 1
  %18 = or i1 %16, %17
  %19 = extractelement <4 x i1> %15, i64 2
  %20 = or i1 %18, %19
  %21 = extractelement <4 x i1> %15, i64 3
  %22 = or i1 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %vector.body
  %24 = trunc i64 %index to i32
  %25 = zext i1 %17 to i32
  %spec.select261.v = select i1 %19, i32 2, i32 %25
  %spec.select262.v = select i1 %21, i32 3, i32 %spec.select261.v
  %spec.select262 = or disjoint i32 %spec.select262.v, %24
  store i32 %spec.select262, ptr %arrayidx73.us, align 4, !tbaa !5
  br label %26

26:                                               ; preds = %vector.body, %23
  %index.next = add nuw i64 %index, 4
  %27 = icmp eq i64 %index.next, %n.vec
  br i1 %27, label %middle.block, label %vector.body, !llvm.loop !16

middle.block:                                     ; preds = %26
  br i1 %cmp.n, label %for.cond59.for.inc78_crit_edge.us, label %for.body61.us.preheader

for.body61.us.preheader:                          ; preds = %for.cond59.preheader.us, %middle.block
  %indvars.iv111.ph = phi i64 [ 0, %for.cond59.preheader.us ], [ %n.vec, %middle.block ]
  br label %for.body61.us

for.body61.us:                                    ; preds = %for.body61.us.preheader, %for.inc75.us
  %indvars.iv111 = phi i64 [ %indvars.iv.next112, %for.inc75.us ], [ %indvars.iv111.ph, %for.body61.us.preheader ]
  %arrayidx65.us = getelementptr inbounds nuw [8 x [8 x i32]], ptr %td, i64 0, i64 %indvars.iv116, i64 %indvars.iv111
  %28 = load i32, ptr %arrayidx65.us, align 4, !tbaa !5
  %cmp70.us = icmp eq i32 %28, %13
  br i1 %cmp70.us, label %if.then71.us, label %for.inc75.us

if.then71.us:                                     ; preds = %for.body61.us
  %29 = trunc nuw nsw i64 %indvars.iv111 to i32
  store i32 %29, ptr %arrayidx73.us, align 4, !tbaa !5
  br label %for.inc75.us

for.inc75.us:                                     ; preds = %if.then71.us, %for.body61.us
  %indvars.iv.next112 = add nuw nsw i64 %indvars.iv111, 1
  %exitcond115.not = icmp eq i64 %indvars.iv.next112, %wide.trip.count114
  br i1 %exitcond115.not, label %for.cond59.for.inc78_crit_edge.us, label %for.body61.us, !llvm.loop !19

for.cond59.for.inc78_crit_edge.us:                ; preds = %for.inc75.us, %middle.block
  %indvars.iv.next117 = add nuw nsw i64 %indvars.iv116, 1
  %exitcond120.not = icmp eq i64 %indvars.iv.next117, %wide.trip.count119
  br i1 %exitcond120.not, label %for.cond81.preheader, label %for.cond59.preheader.us, !llvm.loop !20

for.cond81.preheader:                             ; preds = %for.cond59.for.inc78_crit_edge.us, %for.cond26.preheader
  %cmp8281 = icmp sgt i32 %11, 0
  br i1 %cmp8281, label %for.cond84.preheader.lr.ph, label %for.cond114.preheader.thread209

for.cond114.preheader.thread209:                  ; preds = %for.cond81.preheader
  br i1 %cmp2773, label %for.body142.preheader, label %for.end152

for.cond84.preheader.lr.ph:                       ; preds = %for.cond81.preheader
  br i1 %cmp2773, label %for.cond84.preheader.us.preheader, label %for.end152

for.cond84.preheader.us.preheader:                ; preds = %for.cond84.preheader.lr.ph
  %wide.trip.count129 = zext nneg i32 %11 to i64
  %wide.trip.count124 = zext nneg i32 %10 to i64
  br label %for.cond84.preheader.us

for.cond84.preheader.us:                          ; preds = %for.cond84.preheader.us.preheader, %for.cond84.for.inc111_crit_edge.us
  %indvars.iv126 = phi i64 [ 0, %for.cond84.preheader.us.preheader ], [ %indvars.iv.next127, %for.cond84.for.inc111_crit_edge.us ]
  %arrayidx90.us.phi.trans.insert = getelementptr inbounds nuw [8 x [8 x i32]], ptr %bj, i64 0, i64 0, i64 %indvars.iv126
  %.pre148 = load i32, ptr %arrayidx90.us.phi.trans.insert, align 4, !tbaa !5
  br label %for.body86.us

for.body86.us:                                    ; preds = %for.cond84.preheader.us, %for.body86.us
  %30 = phi i32 [ %.pre148, %for.cond84.preheader.us ], [ %spec.store.select.us, %for.body86.us ]
  %indvars.iv121 = phi i64 [ 0, %for.cond84.preheader.us ], [ %indvars.iv.next122, %for.body86.us ]
  %indvars.iv.next122 = add nuw nsw i64 %indvars.iv121, 1
  %arrayidx95.us = getelementptr inbounds nuw [8 x [8 x i32]], ptr %bj, i64 0, i64 %indvars.iv.next122, i64 %indvars.iv126
  %31 = load i32, ptr %arrayidx95.us, align 4, !tbaa !5
  %spec.store.select.us = call i32 @llvm.smin.i32(i32 %30, i32 %31)
  store i32 %spec.store.select.us, ptr %arrayidx95.us, align 4
  %exitcond125.not = icmp eq i64 %indvars.iv.next122, %wide.trip.count124
  br i1 %exitcond125.not, label %for.cond84.for.inc111_crit_edge.us, label %for.body86.us, !llvm.loop !21

for.cond84.for.inc111_crit_edge.us:               ; preds = %for.body86.us
  %indvars.iv.next127 = add nuw nsw i64 %indvars.iv126, 1
  %exitcond130.not = icmp eq i64 %indvars.iv.next127, %wide.trip.count129
  br i1 %exitcond130.not, label %for.cond117.preheader.lr.ph, label %for.cond84.preheader.us, !llvm.loop !22

for.cond117.preheader.lr.ph:                      ; preds = %for.cond84.for.inc111_crit_edge.us
  %sub124 = add nsw i32 %10, -1
  %idxprom125 = sext i32 %sub124 to i64
  %wide.trip.count139 = zext nneg i32 %11 to i64
  %wide.trip.count134 = zext nneg i32 %10 to i64
  br label %for.cond117.preheader.us

for.cond117.preheader.us:                         ; preds = %for.cond117.preheader.lr.ph, %for.cond117.for.inc137_crit_edge.us
  %indvars.iv136 = phi i64 [ 0, %for.cond117.preheader.lr.ph ], [ %indvars.iv.next137, %for.cond117.for.inc137_crit_edge.us ]
  %arrayidx128.us = getelementptr inbounds [8 x [8 x i32]], ptr %bj, i64 0, i64 %idxprom125, i64 %indvars.iv136
  %32 = load i32, ptr %arrayidx128.us, align 4, !tbaa !5
  %arrayidx132.us = getelementptr inbounds nuw [8 x i32], ptr %hd, i64 0, i64 %indvars.iv136
  br label %for.body119.us

for.body119.us:                                   ; preds = %for.cond117.preheader.us, %for.inc134.us
  %indvars.iv131 = phi i64 [ 0, %for.cond117.preheader.us ], [ %indvars.iv.next132, %for.inc134.us ]
  %arrayidx123.us = getelementptr inbounds nuw [8 x [8 x i32]], ptr %td, i64 0, i64 %indvars.iv131, i64 %indvars.iv136
  %33 = load i32, ptr %arrayidx123.us, align 4, !tbaa !5
  %cmp129.us = icmp eq i32 %33, %32
  br i1 %cmp129.us, label %if.then130.us, label %for.inc134.us

if.then130.us:                                    ; preds = %for.body119.us
  %34 = trunc nuw nsw i64 %indvars.iv131 to i32
  store i32 %34, ptr %arrayidx132.us, align 4, !tbaa !5
  br label %for.inc134.us

for.inc134.us:                                    ; preds = %if.then130.us, %for.body119.us
  %indvars.iv.next132 = add nuw nsw i64 %indvars.iv131, 1
  %exitcond135.not = icmp eq i64 %indvars.iv.next132, %wide.trip.count134
  br i1 %exitcond135.not, label %for.cond117.for.inc137_crit_edge.us, label %for.body119.us, !llvm.loop !23

for.cond117.for.inc137_crit_edge.us:              ; preds = %for.inc134.us
  %indvars.iv.next137 = add nuw nsw i64 %indvars.iv136, 1
  %exitcond140.not = icmp eq i64 %indvars.iv.next137, %wide.trip.count139
  br i1 %exitcond140.not, label %for.body142.preheader, label %for.cond117.preheader.us, !llvm.loop !24

for.body142.preheader:                            ; preds = %for.cond117.for.inc137_crit_edge.us, %for.cond29.preheader.lr.ph, %for.cond1.preheader.lr.ph, %for.cond114.preheader.thread209
  %.lcssa66155174197207223 = phi i32 [ %10, %for.cond114.preheader.thread209 ], [ %10, %for.cond29.preheader.lr.ph ], [ %0, %for.cond1.preheader.lr.ph ], [ %10, %for.cond117.for.inc137_crit_edge.us ]
  %wide.trip.count144 = zext nneg i32 %.lcssa66155174197207223 to i64
  br label %for.body142

for.body142:                                      ; preds = %for.body142.preheader, %for.inc150
  %indvars.iv141 = phi i64 [ 0, %for.body142.preheader ], [ %indvars.iv.next142, %for.inc150 ]
  %arrayidx144 = getelementptr inbounds nuw [8 x i32], ptr %zd, i64 0, i64 %indvars.iv141
  %35 = load i32, ptr %arrayidx144, align 4, !tbaa !5
  %idxprom145 = sext i32 %35 to i64
  %arrayidx146 = getelementptr inbounds [8 x i32], ptr %hd, i64 0, i64 %idxprom145
  %36 = load i32, ptr %arrayidx146, align 4, !tbaa !5
  %37 = zext i32 %36 to i64
  %cmp147 = icmp eq i64 %indvars.iv141, %37
  br i1 %cmp147, label %if.then148, label %for.inc150

if.then148:                                       ; preds = %for.body142
  %38 = trunc nuw nsw i64 %indvars.iv141 to i32
  %call149 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %38, i32 noundef %35)
  br label %cleanup

for.inc150:                                       ; preds = %for.body142
  %indvars.iv.next142 = add nuw nsw i64 %indvars.iv141, 1
  %exitcond145.not = icmp eq i64 %indvars.iv.next142, %wide.trip.count144
  br i1 %exitcond145.not, label %for.end152, label %for.body142, !llvm.loop !25

for.end152:                                       ; preds = %for.inc150, %entry, %for.cond84.preheader.lr.ph, %for.cond114.preheader.thread209
  %call153 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3)
  br label %cleanup

cleanup:                                          ; preds = %for.end152, %if.then148
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %hd) #5
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %bj) #5
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %zd) #5
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %td) #5
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %sz) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %m) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #5
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !10, !11}
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11, !15}
!15 = !{!"llvm.loop.unswitch.partial.disable"}
!16 = distinct !{!16, !10, !11, !17, !18}
!17 = !{!"llvm.loop.isvectorized", i32 1}
!18 = !{!"llvm.loop.unroll.runtime.disable"}
!19 = distinct !{!19, !10, !11, !17}
!20 = distinct !{!20, !10, !11}
!21 = distinct !{!21, !10, !11}
!22 = distinct !{!22, !10, !11}
!23 = distinct !{!23, !10, !11}
!24 = distinct !{!24, !10, !11}
!25 = distinct !{!25, !10, !11}
