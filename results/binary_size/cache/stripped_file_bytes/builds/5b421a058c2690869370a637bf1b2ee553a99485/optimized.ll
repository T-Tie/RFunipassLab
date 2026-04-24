; ModuleID = '<stdin>'
source_filename = "/tmp/tmpm4sli50t.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }

@a = dso_local global [100 x [100 x i32]] zeroinitializer, align 16
@t = dso_local local_unnamed_addr global i32 0, align 4
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @_Z3sumiPA100_i(i32 noundef %n, ptr noundef captures(none) %a) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq i32 %n, 1
  br i1 %cmp, label %common.ret243, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %cmp174 = icmp sgt i32 %n, 0
  br i1 %cmp174, label %for.body.us.us.preheader, label %for.end66.thread

for.body.us.us.preheader:                         ; preds = %for.cond.preheader
  %wide.trip.count138 = zext nneg i32 %n to i64
  %0 = add nsw i64 %wide.trip.count138, -1
  %min.iters.check183 = icmp ult i32 %n, 5
  %n.vec186 = and i64 %0, -4
  %1 = or disjoint i64 %n.vec186, 1
  %cmp.n194 = icmp eq i64 %0, %n.vec186
  %min.iters.check = icmp ult i32 %n, 4
  %n.vec = and i64 %wide.trip.count138, 2147483644
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count138
  br label %for.body.us.us

for.body.us.us:                                   ; preds = %for.body.us.us.preheader, %for.cond17.for.inc27_crit_edge.us.us
  %indvars.iv135 = phi i64 [ 0, %for.body.us.us.preheader ], [ %indvars.iv.next136, %for.cond17.for.inc27_crit_edge.us.us ]
  %arrayidx.us.us = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv135
  %2 = load i32, ptr %arrayidx.us.us, align 4, !tbaa !5
  br i1 %min.iters.check183, label %for.body5.us.us.preheader, label %vector.ph184

vector.ph184:                                     ; preds = %for.body.us.us
  %broadcast.splatinsert187 = insertelement <4 x i32> poison, i32 %2, i64 0
  %broadcast.splat188 = shufflevector <4 x i32> %broadcast.splatinsert187, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body189

vector.body189:                                   ; preds = %vector.body189, %vector.ph184
  %index190 = phi i64 [ 0, %vector.ph184 ], [ %index.next192, %vector.body189 ]
  %vec.phi = phi <4 x i32> [ %broadcast.splat188, %vector.ph184 ], [ %4, %vector.body189 ]
  %offset.idx = or disjoint i64 %index190, 1
  %3 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv135, i64 %offset.idx
  %wide.load191 = load <4 x i32>, ptr %3, align 4, !tbaa !5
  %4 = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.load191, <4 x i32> %vec.phi)
  %index.next192 = add nuw i64 %index190, 4
  %5 = icmp eq i64 %index.next192, %n.vec186
  br i1 %5, label %middle.block193, label %vector.body189, !llvm.loop !9

middle.block193:                                  ; preds = %vector.body189
  %6 = tail call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %4)
  br i1 %cmp.n194, label %for.cond3.for.cond17.preheader_crit_edge.us.us, label %for.body5.us.us.preheader

for.body5.us.us.preheader:                        ; preds = %for.body.us.us, %middle.block193
  %indvars.iv.ph = phi i64 [ 1, %for.body.us.us ], [ %1, %middle.block193 ]
  %min.071.us.us.ph = phi i32 [ %2, %for.body.us.us ], [ %6, %middle.block193 ]
  br label %for.body5.us.us

for.body19.us.us:                                 ; preds = %for.body19.us.us.preheader, %for.body19.us.us
  %indvars.iv130 = phi i64 [ %indvars.iv.next131, %for.body19.us.us ], [ %indvars.iv130.ph, %for.body19.us.us.preheader ]
  %arrayidx23.us.us = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv135, i64 %indvars.iv130
  %7 = load i32, ptr %arrayidx23.us.us, align 4, !tbaa !5
  %sub.us.us = sub nsw i32 %7, %spec.select.us.us.lcssa
  store i32 %sub.us.us, ptr %arrayidx23.us.us, align 4, !tbaa !5
  %indvars.iv.next131 = add nuw nsw i64 %indvars.iv130, 1
  %exitcond134.not = icmp eq i64 %indvars.iv.next131, %wide.trip.count138
  br i1 %exitcond134.not, label %for.cond17.for.inc27_crit_edge.us.us, label %for.body19.us.us, !llvm.loop !14

for.body5.us.us:                                  ; preds = %for.body5.us.us.preheader, %for.body5.us.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body5.us.us ], [ %indvars.iv.ph, %for.body5.us.us.preheader ]
  %min.071.us.us = phi i32 [ %spec.select.us.us, %for.body5.us.us ], [ %min.071.us.us.ph, %for.body5.us.us.preheader ]
  %arrayidx9.us.us = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv135, i64 %indvars.iv
  %8 = load i32, ptr %arrayidx9.us.us, align 4, !tbaa !5
  %spec.select.us.us = tail call i32 @llvm.smin.i32(i32 %8, i32 %min.071.us.us)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count138
  br i1 %exitcond.not, label %for.cond3.for.cond17.preheader_crit_edge.us.us, label %for.body5.us.us, !llvm.loop !15

for.cond3.for.cond17.preheader_crit_edge.us.us:   ; preds = %for.body5.us.us, %middle.block193
  %spec.select.us.us.lcssa = phi i32 [ %6, %middle.block193 ], [ %spec.select.us.us, %for.body5.us.us ]
  br i1 %min.iters.check, label %for.body19.us.us.preheader, label %vector.ph

vector.ph:                                        ; preds = %for.cond3.for.cond17.preheader_crit_edge.us.us
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %spec.select.us.us.lcssa, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %9 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv135, i64 %index
  %wide.load = load <4 x i32>, ptr %9, align 4, !tbaa !5
  %10 = sub nsw <4 x i32> %wide.load, %broadcast.splat
  store <4 x i32> %10, ptr %9, align 4, !tbaa !5
  %index.next = add nuw i64 %index, 4
  %11 = icmp eq i64 %index.next, %n.vec
  br i1 %11, label %middle.block, label %vector.body, !llvm.loop !16

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %for.cond17.for.inc27_crit_edge.us.us, label %for.body19.us.us.preheader

for.body19.us.us.preheader:                       ; preds = %for.cond3.for.cond17.preheader_crit_edge.us.us, %middle.block
  %indvars.iv130.ph = phi i64 [ 0, %for.cond3.for.cond17.preheader_crit_edge.us.us ], [ %n.vec, %middle.block ]
  br label %for.body19.us.us

for.cond17.for.inc27_crit_edge.us.us:             ; preds = %for.body19.us.us, %middle.block
  %indvars.iv.next136 = add nuw nsw i64 %indvars.iv135, 1
  %exitcond139.not = icmp eq i64 %indvars.iv.next136, %wide.trip.count138
  br i1 %exitcond139.not, label %for.body32.us.preheader, label %for.body.us.us, !llvm.loop !17

for.body32.us.preheader:                          ; preds = %for.cond17.for.inc27_crit_edge.us.us
  %12 = tail call i32 @llvm.umax.i32(i32 %n, i32 2)
  %wide.trip.count153 = zext nneg i32 %n to i64
  %wide.trip.count143 = zext nneg i32 %12 to i64
  %13 = add nsw i64 %wide.trip.count143, -1
  %min.iters.check197 = icmp ult i32 %n, 5
  %n.vec200 = and i64 %13, -4
  %14 = or disjoint i64 %n.vec200, 1
  %cmp.n209 = icmp eq i64 %13, %n.vec200
  br label %for.body32.us

for.body32.us:                                    ; preds = %for.body32.us.preheader, %for.inc64.us
  %indvars.iv150 = phi i64 [ 0, %for.body32.us.preheader ], [ %indvars.iv.next151, %for.inc64.us ]
  %arrayidx35.us = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %indvars.iv150
  %15 = load i32, ptr %arrayidx35.us, align 4, !tbaa !5
  br i1 %min.iters.check197, label %for.body38.us.preheader, label %vector.ph198

vector.ph198:                                     ; preds = %for.body32.us
  %broadcast.splatinsert201 = insertelement <4 x i32> poison, i32 %15, i64 0
  %broadcast.splat202 = shufflevector <4 x i32> %broadcast.splatinsert201, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body203

vector.body203:                                   ; preds = %vector.body203, %vector.ph198
  %index204 = phi i64 [ 0, %vector.ph198 ], [ %index.next207, %vector.body203 ]
  %vec.phi205 = phi <4 x i32> [ %broadcast.splat202, %vector.ph198 ], [ %31, %vector.body203 ]
  %offset.idx206 = or disjoint i64 %index204, 1
  %16 = or disjoint i64 %index204, 2
  %17 = or disjoint i64 %index204, 3
  %18 = add i64 %index204, 4
  %19 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %offset.idx206, i64 %indvars.iv150
  %20 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %16, i64 %indvars.iv150
  %21 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %17, i64 %indvars.iv150
  %22 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %18, i64 %indvars.iv150
  %23 = load i32, ptr %19, align 4, !tbaa !5
  %24 = load i32, ptr %20, align 4, !tbaa !5
  %25 = load i32, ptr %21, align 4, !tbaa !5
  %26 = load i32, ptr %22, align 4, !tbaa !5
  %27 = insertelement <4 x i32> poison, i32 %23, i64 0
  %28 = insertelement <4 x i32> %27, i32 %24, i64 1
  %29 = insertelement <4 x i32> %28, i32 %25, i64 2
  %30 = insertelement <4 x i32> %29, i32 %26, i64 3
  %31 = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %30, <4 x i32> %vec.phi205)
  %index.next207 = add nuw i64 %index204, 4
  %32 = icmp eq i64 %index.next207, %n.vec200
  br i1 %32, label %middle.block208, label %vector.body203, !llvm.loop !18

middle.block208:                                  ; preds = %vector.body203
  %33 = tail call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %31)
  br i1 %cmp.n209, label %for.body55.us.preheader, label %for.body38.us.preheader

for.body38.us.preheader:                          ; preds = %for.body32.us, %middle.block208
  %indvars.iv140.ph = phi i64 [ 1, %for.body32.us ], [ %14, %middle.block208 ]
  %min.294.us.ph = phi i32 [ %15, %for.body32.us ], [ %33, %middle.block208 ]
  br label %for.body38.us

for.inc64.us:                                     ; preds = %for.body55.us
  %indvars.iv.next151 = add nuw nsw i64 %indvars.iv150, 1
  %exitcond154.not = icmp eq i64 %indvars.iv.next151, %wide.trip.count153
  br i1 %exitcond154.not, label %for.end66, label %for.body32.us, !llvm.loop !19

for.body55.us:                                    ; preds = %for.body55.us.preheader, %for.body55.us
  %indvars.iv145 = phi i64 [ 0, %for.body55.us.preheader ], [ %indvars.iv.next146, %for.body55.us ]
  %arrayidx59.us = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv145, i64 %indvars.iv150
  %34 = load i32, ptr %arrayidx59.us, align 4, !tbaa !5
  %sub60.us = sub nsw i32 %34, %spec.select68.us.lcssa
  store i32 %sub60.us, ptr %arrayidx59.us, align 4, !tbaa !5
  %indvars.iv.next146 = add nuw nsw i64 %indvars.iv145, 1
  %exitcond149.not = icmp eq i64 %indvars.iv.next146, %wide.trip.count153
  br i1 %exitcond149.not, label %for.inc64.us, label %for.body55.us, !llvm.loop !20

for.body38.us:                                    ; preds = %for.body38.us.preheader, %for.body38.us
  %indvars.iv140 = phi i64 [ %indvars.iv.next141, %for.body38.us ], [ %indvars.iv140.ph, %for.body38.us.preheader ]
  %min.294.us = phi i32 [ %spec.select68.us, %for.body38.us ], [ %min.294.us.ph, %for.body38.us.preheader ]
  %arrayidx42.us = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv140, i64 %indvars.iv150
  %35 = load i32, ptr %arrayidx42.us, align 4, !tbaa !5
  %spec.select68.us = tail call i32 @llvm.smin.i32(i32 %35, i32 %min.294.us)
  %indvars.iv.next141 = add nuw nsw i64 %indvars.iv140, 1
  %exitcond144.not = icmp eq i64 %indvars.iv.next141, %wide.trip.count143
  br i1 %exitcond144.not, label %for.body55.us.preheader, label %for.body38.us, !llvm.loop !21

for.body55.us.preheader:                          ; preds = %for.body38.us, %middle.block208
  %spec.select68.us.lcssa = phi i32 [ %33, %middle.block208 ], [ %spec.select68.us, %for.body38.us ]
  br label %for.body55.us

for.end66.thread:                                 ; preds = %for.cond.preheader
  %arrayidx68177 = getelementptr inbounds nuw i8, ptr %a, i64 404
  %36 = load i32, ptr %arrayidx68177, align 4, !tbaa !5
  %37 = load i32, ptr @t, align 4, !tbaa !5
  %add178 = add nsw i32 %37, %36
  store i32 %add178, ptr @t, align 4, !tbaa !5
  %.pre = add i32 %n, -1
  br label %for.end113

for.end66:                                        ; preds = %for.inc64.us
  %arrayidx68 = getelementptr inbounds nuw i8, ptr %a, i64 404
  %38 = load i32, ptr %arrayidx68, align 4, !tbaa !5
  %39 = load i32, ptr @t, align 4, !tbaa !5
  %add = add nsw i32 %39, %38
  store i32 %add, ptr @t, align 4, !tbaa !5
  %sub73 = add nsw i32 %n, -1
  %cmp74115 = icmp samesign ugt i32 %n, 2
  br i1 %cmp74115, label %for.cond72.preheader.us.preheader, label %for.end113

for.cond72.preheader.us.preheader:                ; preds = %for.end66
  %wide.trip.count164 = zext nneg i32 %n to i64
  %wide.trip.count159 = zext i32 %sub73 to i64
  %40 = add nsw i64 %wide.trip.count159, -1
  %min.iters.check213 = icmp ult i64 %40, 4
  %n.vec216 = and i64 %40, -4
  %41 = or disjoint i64 %n.vec216, 1
  %cmp.n223 = icmp eq i64 %40, %n.vec216
  br label %for.cond72.preheader.us

for.cond72.preheader.us:                          ; preds = %for.cond72.preheader.us.preheader, %for.cond72.for.inc88_crit_edge.us
  %indvars.iv161 = phi i64 [ 0, %for.cond72.preheader.us.preheader ], [ %indvars.iv.next162, %for.cond72.for.inc88_crit_edge.us ]
  br i1 %min.iters.check213, label %for.body75.us.preheader, label %vector.body217

vector.body217:                                   ; preds = %for.cond72.preheader.us, %vector.body217
  %index218 = phi i64 [ %index.next221, %vector.body217 ], [ 0, %for.cond72.preheader.us ]
  %offset.idx219 = or disjoint i64 %index218, 1
  %42 = or disjoint i64 %index218, 2
  %43 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv161, i64 %42
  %wide.load220 = load <4 x i32>, ptr %43, align 4, !tbaa !5
  %44 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv161, i64 %offset.idx219
  store <4 x i32> %wide.load220, ptr %44, align 4, !tbaa !5
  %index.next221 = add nuw i64 %index218, 4
  %45 = icmp eq i64 %index.next221, %n.vec216
  br i1 %45, label %middle.block222, label %vector.body217, !llvm.loop !22

middle.block222:                                  ; preds = %vector.body217
  br i1 %cmp.n223, label %for.cond72.for.inc88_crit_edge.us, label %for.body75.us.preheader

for.body75.us.preheader:                          ; preds = %for.cond72.preheader.us, %middle.block222
  %indvars.iv156.ph = phi i64 [ 1, %for.cond72.preheader.us ], [ %41, %middle.block222 ]
  br label %for.body75.us

for.body75.us:                                    ; preds = %for.body75.us.preheader, %for.body75.us
  %indvars.iv156 = phi i64 [ %indvars.iv.next157, %for.body75.us ], [ %indvars.iv156.ph, %for.body75.us.preheader ]
  %indvars.iv.next157 = add nuw nsw i64 %indvars.iv156, 1
  %arrayidx80.us = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv161, i64 %indvars.iv.next157
  %46 = load i32, ptr %arrayidx80.us, align 4, !tbaa !5
  %arrayidx84.us = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv161, i64 %indvars.iv156
  store i32 %46, ptr %arrayidx84.us, align 4, !tbaa !5
  %exitcond160.not = icmp eq i64 %indvars.iv.next157, %wide.trip.count159
  br i1 %exitcond160.not, label %for.cond72.for.inc88_crit_edge.us, label %for.body75.us, !llvm.loop !23

for.cond72.for.inc88_crit_edge.us:                ; preds = %for.body75.us, %middle.block222
  %indvars.iv.next162 = add nuw nsw i64 %indvars.iv161, 1
  %exitcond165.not = icmp eq i64 %indvars.iv.next162, %wide.trip.count164
  br i1 %exitcond165.not, label %for.cond91.preheader, label %for.cond72.preheader.us, !llvm.loop !24

for.cond91.preheader:                             ; preds = %for.cond72.for.inc88_crit_edge.us
  %cmp93121 = icmp sgt i32 %n, 2
  br i1 %cmp93121, label %for.cond95.preheader.lr.ph, label %for.end113

for.cond95.preheader.lr.ph:                       ; preds = %for.cond91.preheader
  %invariant.gep = getelementptr inbounds nuw i8, ptr %a, i64 400
  %wide.trip.count175 = zext nneg i32 %sub73 to i64
  %min.iters.check226 = icmp ult i32 %n, 5
  %n.vec229 = and i64 %wide.trip.count159, 4294967292
  %cmp.n235 = icmp eq i64 %n.vec229, %wide.trip.count159
  br label %for.cond95.preheader.us

for.cond95.preheader.us:                          ; preds = %for.cond95.for.inc111_crit_edge.us, %for.cond95.preheader.lr.ph
  %indvars.iv172 = phi i64 [ %indvars.iv.next173, %for.cond95.for.inc111_crit_edge.us ], [ 1, %for.cond95.preheader.lr.ph ]
  br i1 %min.iters.check226, label %for.body98.us.preheader, label %vector.body230

vector.body230:                                   ; preds = %for.cond95.preheader.us, %vector.body230
  %index231 = phi i64 [ %index.next233, %vector.body230 ], [ 0, %for.cond95.preheader.us ]
  %47 = getelementptr inbounds nuw [100 x i32], ptr %invariant.gep, i64 %indvars.iv172, i64 %index231
  %wide.load232 = load <4 x i32>, ptr %47, align 4, !tbaa !5
  %48 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv172, i64 %index231
  store <4 x i32> %wide.load232, ptr %48, align 4, !tbaa !5
  %index.next233 = add nuw i64 %index231, 4
  %49 = icmp eq i64 %index.next233, %n.vec229
  br i1 %49, label %middle.block234, label %vector.body230, !llvm.loop !25

middle.block234:                                  ; preds = %vector.body230
  br i1 %cmp.n235, label %for.cond95.for.inc111_crit_edge.us, label %for.body98.us.preheader

for.body98.us.preheader:                          ; preds = %for.cond95.preheader.us, %middle.block234
  %indvars.iv167.ph = phi i64 [ 0, %for.cond95.preheader.us ], [ %n.vec229, %middle.block234 ]
  br label %for.body98.us

for.body98.us:                                    ; preds = %for.body98.us.preheader, %for.body98.us
  %indvars.iv167 = phi i64 [ %indvars.iv.next168, %for.body98.us ], [ %indvars.iv167.ph, %for.body98.us.preheader ]
  %arrayidx103.us = getelementptr inbounds nuw [100 x i32], ptr %invariant.gep, i64 %indvars.iv172, i64 %indvars.iv167
  %50 = load i32, ptr %arrayidx103.us, align 4, !tbaa !5
  %arrayidx107.us = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv172, i64 %indvars.iv167
  store i32 %50, ptr %arrayidx107.us, align 4, !tbaa !5
  %indvars.iv.next168 = add nuw nsw i64 %indvars.iv167, 1
  %exitcond171.not = icmp eq i64 %indvars.iv.next168, %wide.trip.count175
  br i1 %exitcond171.not, label %for.cond95.for.inc111_crit_edge.us, label %for.body98.us, !llvm.loop !26

for.cond95.for.inc111_crit_edge.us:               ; preds = %for.body98.us, %middle.block234
  %indvars.iv.next173 = add nuw nsw i64 %indvars.iv172, 1
  %exitcond176.not = icmp eq i64 %indvars.iv.next173, %wide.trip.count175
  br i1 %exitcond176.not, label %for.end113, label %for.cond95.preheader.us, !llvm.loop !27

common.ret243:                                    ; preds = %entry, %for.end113
  %common.ret243.op = phi i32 [ %51, %for.end113 ], [ 1, %entry ]
  ret i32 %common.ret243.op

for.end113:                                       ; preds = %for.cond95.for.inc111_crit_edge.us, %for.end66.thread, %for.end66, %for.cond91.preheader
  %sub92.pre-phi181 = phi i32 [ %sub73, %for.cond91.preheader ], [ %sub73, %for.end66 ], [ %.pre, %for.end66.thread ], [ %sub73, %for.cond95.for.inc111_crit_edge.us ]
  %call = tail call noundef i32 @_Z3sumiPA100_i(i32 noundef %sub92.pre-phi181, ptr noundef nonnull %a)
  %51 = load i32, ptr @t, align 4, !tbaa !5
  br label %common.ret243
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 {
entry:
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #6
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp10 = icmp sgt i32 %0, 0
  br i1 %cmp10, label %for.cond1.preheader, label %for.end18

for.cond1.preheader:                              ; preds = %entry, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %1 = phi i32 [ %10, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit ], [ %0, %entry ]
  %i.011 = phi i32 [ %inc17, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit ], [ 0, %entry ]
  %cmp28 = icmp sgt i32 %1, 0
  br i1 %cmp28, label %for.cond4.preheader, label %for.end12

for.cond4.preheader:                              ; preds = %for.cond1.preheader, %for.inc10
  %2 = phi i32 [ %5, %for.inc10 ], [ %1, %for.cond1.preheader ]
  %indvars.iv15 = phi i64 [ %indvars.iv.next16, %for.inc10 ], [ 0, %for.cond1.preheader ]
  %cmp56 = icmp sgt i32 %2, 0
  br i1 %cmp56, label %for.body6, label %for.cond4.preheader.for.inc10_crit_edge

for.cond4.preheader.for.inc10_crit_edge:          ; preds = %for.cond4.preheader
  %.pre = sext i32 %2 to i64
  br label %for.inc10

for.body6:                                        ; preds = %for.cond4.preheader, %for.body6
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body6 ], [ 0, %for.cond4.preheader ]
  %arrayidx8 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv15, i64 %indvars.iv
  %call9 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx8)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %3 = load i32, ptr %n, align 4, !tbaa !5
  %4 = sext i32 %3 to i64
  %cmp5 = icmp slt i64 %indvars.iv.next, %4
  br i1 %cmp5, label %for.body6, label %for.inc10, !llvm.loop !28

for.inc10:                                        ; preds = %for.body6, %for.cond4.preheader.for.inc10_crit_edge
  %.pre-phi = phi i64 [ %.pre, %for.cond4.preheader.for.inc10_crit_edge ], [ %4, %for.body6 ]
  %5 = phi i32 [ %2, %for.cond4.preheader.for.inc10_crit_edge ], [ %3, %for.body6 ]
  %indvars.iv.next16 = add nuw nsw i64 %indvars.iv15, 1
  %cmp2 = icmp slt i64 %indvars.iv.next16, %.pre-phi
  br i1 %cmp2, label %for.cond4.preheader, label %for.end12, !llvm.loop !29

for.end12:                                        ; preds = %for.inc10, %for.cond1.preheader
  %.lcssa = phi i32 [ %1, %for.cond1.preheader ], [ %5, %for.inc10 ]
  %call13 = call noundef i32 @_Z3sumiPA100_i(i32 noundef %.lcssa, ptr noundef nonnull @a)
  %call14 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %call13)
  %vtable.i = load ptr, ptr %call14, align 8, !tbaa !31
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call14, i64 %vbase.offset.i
  %_M_ctype.i.i = getelementptr inbounds nuw i8, ptr %add.ptr.i, i64 240
  %6 = load ptr, ptr %_M_ctype.i.i, align 8, !tbaa !33
  %tobool.not.i.i.i = icmp eq ptr %6, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

if.then.i.i.i:                                    ; preds = %for.end12
  call void @_ZSt16__throw_bad_castv() #7
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %for.end12
  %_M_widen_ok.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 56
  %7 = load i8, ptr %_M_widen_ok.i.i.i, align 8, !tbaa !51
  %tobool.not.i1.i.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i1.i.i, label %if.end.i.i.i, label %if.then.i2.i.i

if.then.i2.i.i:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %arrayidx.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 67
  %8 = load i8, ptr %arrayidx.i.i.i, align 1, !tbaa !57
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

if.end.i.i.i:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %6)
  %vtable.i.i.i = load ptr, ptr %6, align 8, !tbaa !31
  %vfn.i.i.i = getelementptr inbounds nuw i8, ptr %vtable.i.i.i, i64 48
  %9 = load ptr, ptr %vfn.i.i.i, align 8
  %call.i.i.i = call noundef signext i8 %9(ptr noundef nonnull align 8 dereferenceable(570) %6, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %if.then.i2.i.i, %if.end.i.i.i
  %retval.0.i.i.i = phi i8 [ %8, %if.then.i2.i.i ], [ %call.i.i.i, %if.end.i.i.i ]
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call14, i8 noundef signext %retval.0.i.i.i)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  store i32 0, ptr @t, align 4, !tbaa !5
  %inc17 = add nuw nsw i32 %i.011, 1
  %10 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %inc17, %10
  br i1 %cmp, label %for.cond1.preheader, label %for.end18, !llvm.loop !58

for.end18:                                        ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %entry
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #6
  ret i32 0
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #4

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smin.v4i32(<4 x i32>, <4 x i32>) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smin.v4i32(<4 x i32>) #5

attributes #0 = { mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }
attributes #7 = { noreturn }

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
!9 = distinct !{!9, !10, !11, !12, !13}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = !{!"llvm.loop.isvectorized", i32 1}
!13 = !{!"llvm.loop.unroll.runtime.disable"}
!14 = distinct !{!14, !10, !11, !12}
!15 = distinct !{!15, !10, !11, !12}
!16 = distinct !{!16, !10, !11, !12, !13}
!17 = distinct !{!17, !10, !11}
!18 = distinct !{!18, !10, !11, !12, !13}
!19 = distinct !{!19, !10, !11}
!20 = distinct !{!20, !10, !11}
!21 = distinct !{!21, !10, !11, !12}
!22 = distinct !{!22, !10, !11, !12, !13}
!23 = distinct !{!23, !10, !11, !12}
!24 = distinct !{!24, !10, !11}
!25 = distinct !{!25, !10, !11, !12, !13}
!26 = distinct !{!26, !10, !11, !12}
!27 = distinct !{!27, !10, !11}
!28 = distinct !{!28, !10, !11}
!29 = distinct !{!29, !10, !11, !30}
!30 = !{!"llvm.loop.unswitch.partial.disable"}
!31 = !{!32, !32, i64 0}
!32 = !{!"vtable pointer", !8, i64 0}
!33 = !{!34, !48, i64 240}
!34 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !35, i64 0, !45, i64 216, !7, i64 224, !46, i64 225, !47, i64 232, !48, i64 240, !49, i64 248, !50, i64 256}
!35 = !{!"_ZTSSt8ios_base", !36, i64 8, !36, i64 16, !37, i64 24, !38, i64 28, !38, i64 32, !39, i64 40, !41, i64 48, !7, i64 64, !6, i64 192, !42, i64 200, !43, i64 208}
!36 = !{!"long", !7, i64 0}
!37 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!38 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!39 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !40, i64 0}
!40 = !{!"any pointer", !7, i64 0}
!41 = !{!"_ZTSNSt8ios_base6_WordsE", !40, i64 0, !36, i64 8}
!42 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !40, i64 0}
!43 = !{!"_ZTSSt6locale", !44, i64 0}
!44 = !{!"p1 _ZTSNSt6locale5_ImplE", !40, i64 0}
!45 = !{!"p1 _ZTSSo", !40, i64 0}
!46 = !{!"bool", !7, i64 0}
!47 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !40, i64 0}
!48 = !{!"p1 _ZTSSt5ctypeIcE", !40, i64 0}
!49 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !40, i64 0}
!50 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !40, i64 0}
!51 = !{!52, !7, i64 56}
!52 = !{!"_ZTSSt5ctypeIcE", !53, i64 0, !54, i64 16, !46, i64 24, !55, i64 32, !55, i64 40, !56, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!53 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!54 = !{!"p1 _ZTS15__locale_struct", !40, i64 0}
!55 = !{!"p1 int", !40, i64 0}
!56 = !{!"p1 short", !40, i64 0}
!57 = !{!7, !7, i64 0}
!58 = distinct !{!58, !10, !11}
