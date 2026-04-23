; ModuleID = '<stdin>'
source_filename = "/tmp/tmpdt89ij21.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }

@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %a = alloca [111 x [111 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #5
  call void @llvm.lifetime.start.p0(i64 49284, ptr nonnull %a) #5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp.not173 = icmp slt i32 %0, 1
  br i1 %cmp.not173, label %for.end186, label %for.cond1.preheader.lr.ph

for.cond1.preheader.lr.ph:                        ; preds = %entry
  %arrayidx19 = getelementptr inbounds nuw i8, ptr %a, i64 444
  %arrayidx27 = getelementptr inbounds nuw i8, ptr %a, i64 448
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.cond1.preheader.lr.ph, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %1 = phi i32 [ %0, %for.cond1.preheader.lr.ph ], [ %94, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit ]
  %i.0174 = phi i32 [ 1, %for.cond1.preheader.lr.ph ], [ %inc185, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit ]
  %cmp2.not139 = icmp slt i32 %1, 1
  br i1 %cmp2.not139, label %for.end181, label %for.cond4.preheader

for.cond13.preheader:                             ; preds = %for.inc10
  %cmp14169 = icmp sgt i32 %12, 1
  br i1 %cmp14169, label %for.body15.preheader, label %for.end181

for.body15.preheader:                             ; preds = %for.cond13.preheader
  %2 = add nuw i32 %12, 1
  %wide.trip.count234 = zext nneg i32 %12 to i64
  %wide.trip.count = zext i32 %2 to i64
  %wide.trip.count189 = zext i32 %2 to i64
  %wide.trip.count204 = zext i32 %2 to i64
  %wide.trip.count209 = zext i32 %2 to i64
  %wide.trip.count214 = zext i32 %2 to i64
  %wide.trip.count229 = zext i32 %2 to i64
  %3 = add nsw i64 %wide.trip.count, -2
  %4 = add nsw i64 %wide.trip.count, -2
  %5 = add nsw i64 %wide.trip.count, -2
  %6 = add nsw i64 %wide.trip.count, -2
  %7 = add nsw i64 %wide.trip.count, -2
  %8 = add nsw i64 %wide.trip.count, -2
  br label %for.body18.preheader

for.cond4.preheader:                              ; preds = %for.cond1.preheader, %for.inc10
  %9 = phi i32 [ %12, %for.inc10 ], [ %1, %for.cond1.preheader ]
  %indvars.iv178 = phi i64 [ %indvars.iv.next179, %for.inc10 ], [ 1, %for.cond1.preheader ]
  %cmp5.not137 = icmp slt i32 %9, 1
  br i1 %cmp5.not137, label %for.cond4.preheader.for.inc10_crit_edge, label %for.body6

for.cond4.preheader.for.inc10_crit_edge:          ; preds = %for.cond4.preheader
  %.pre237 = sext i32 %9 to i64
  br label %for.inc10

for.body6:                                        ; preds = %for.cond4.preheader, %for.body6
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body6 ], [ 1, %for.cond4.preheader ]
  %arrayidx8 = getelementptr inbounds nuw [111 x [111 x i32]], ptr %a, i64 0, i64 %indvars.iv178, i64 %indvars.iv
  %call9 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx8)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %10 = load i32, ptr %n, align 4, !tbaa !5
  %11 = sext i32 %10 to i64
  %cmp5.not.not = icmp slt i64 %indvars.iv, %11
  br i1 %cmp5.not.not, label %for.body6, label %for.inc10, !llvm.loop !9

for.inc10:                                        ; preds = %for.body6, %for.cond4.preheader.for.inc10_crit_edge
  %.pre-phi = phi i64 [ %.pre237, %for.cond4.preheader.for.inc10_crit_edge ], [ %11, %for.body6 ]
  %12 = phi i32 [ %9, %for.cond4.preheader.for.inc10_crit_edge ], [ %10, %for.body6 ]
  %indvars.iv.next179 = add nuw nsw i64 %indvars.iv178, 1
  %cmp2.not.not = icmp slt i64 %indvars.iv178, %.pre-phi
  br i1 %cmp2.not.not, label %for.cond4.preheader, label %for.cond13.preheader, !llvm.loop !12

for.body18.preheader:                             ; preds = %for.end171, %for.body15.preheader
  %indvar = phi i64 [ %indvar.next, %for.end171 ], [ 0, %for.body15.preheader ]
  %indvars.iv231 = phi i64 [ %indvars.iv.next232, %for.end171 ], [ 1, %for.body15.preheader ]
  %indvars.iv181 = phi i64 [ %indvars.iv.next182, %for.end171 ], [ 2, %for.body15.preheader ]
  %sum.0170 = phi i32 [ %add178, %for.end171 ], [ 0, %for.body15.preheader ]
  %13 = sub i64 %8, %indvar
  %14 = sub i64 %7, %indvar
  %15 = sub i64 %6, %indvar
  %16 = sub i64 %5, %indvar
  %17 = sub i64 %4, %indvar
  %18 = sub i64 %3, %indvar
  %indvars.iv.next232 = add nuw nsw i64 %indvars.iv231, 1
  %min.iters.check301 = icmp ult i64 %13, 4
  br i1 %min.iters.check301, label %for.body18.preheader317, label %vector.ph302

vector.ph302:                                     ; preds = %for.body18.preheader
  %n.vec304 = and i64 %13, -4
  %19 = add i64 %indvars.iv181, %n.vec304
  br label %vector.body305

vector.body305:                                   ; preds = %vector.body305, %vector.ph302
  %index306 = phi i64 [ 0, %vector.ph302 ], [ %index.next310, %vector.body305 ]
  %vec.phi307 = phi <4 x i32> [ splat (i32 10000), %vector.ph302 ], [ %21, %vector.body305 ]
  %offset.idx308 = add i64 %indvars.iv181, %index306
  %20 = getelementptr inbounds nuw [111 x i32], ptr %arrayidx19, i64 0, i64 %offset.idx308
  %wide.load309 = load <4 x i32>, ptr %20, align 4, !tbaa !5
  %21 = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.load309, <4 x i32> %vec.phi307)
  %index.next310 = add nuw i64 %index306, 4
  %22 = icmp eq i64 %index.next310, %n.vec304
  br i1 %22, label %middle.block311, label %vector.body305, !llvm.loop !14

middle.block311:                                  ; preds = %vector.body305
  %23 = call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %21)
  %cmp.n312 = icmp eq i64 %13, %n.vec304
  br i1 %cmp.n312, label %for.body32.preheader, label %for.body18.preheader317

for.body18.preheader317:                          ; preds = %for.body18.preheader, %middle.block311
  %indvars.iv183.ph = phi i64 [ %indvars.iv181, %for.body18.preheader ], [ %19, %middle.block311 ]
  %Min.0142.ph = phi i32 [ 10000, %for.body18.preheader ], [ %23, %middle.block311 ]
  br label %for.body18

for.body18:                                       ; preds = %for.body18.preheader317, %for.body18
  %indvars.iv183 = phi i64 [ %indvars.iv.next184, %for.body18 ], [ %indvars.iv183.ph, %for.body18.preheader317 ]
  %Min.0142 = phi i32 [ %.sroa.speculated113, %for.body18 ], [ %Min.0142.ph, %for.body18.preheader317 ]
  %arrayidx21 = getelementptr inbounds nuw [111 x i32], ptr %arrayidx19, i64 0, i64 %indvars.iv183
  %24 = load i32, ptr %arrayidx21, align 4, !tbaa !5
  %.sroa.speculated113 = call i32 @llvm.smin.i32(i32 %24, i32 %Min.0142)
  %indvars.iv.next184 = add nuw nsw i64 %indvars.iv183, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next184, %wide.trip.count
  br i1 %exitcond.not, label %for.body32.preheader, label %for.body18, !llvm.loop !17

for.body32.preheader:                             ; preds = %for.body18, %middle.block311
  %.sroa.speculated113.lcssa = phi i32 [ %23, %middle.block311 ], [ %.sroa.speculated113, %for.body18 ]
  %25 = load i32, ptr %arrayidx27, align 16, !tbaa !5
  %.sroa.speculated110 = call i32 @llvm.smin.i32(i32 %25, i32 %.sroa.speculated113.lcssa)
  %min.iters.check286 = icmp ult i64 %14, 4
  br i1 %min.iters.check286, label %for.body32.preheader316, label %vector.ph287

vector.ph287:                                     ; preds = %for.body32.preheader
  %n.vec289 = and i64 %14, -4
  %26 = add i64 %indvars.iv181, %n.vec289
  %broadcast.splatinsert290 = insertelement <4 x i32> poison, i32 %.sroa.speculated110, i64 0
  %broadcast.splat291 = shufflevector <4 x i32> %broadcast.splatinsert290, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body292

vector.body292:                                   ; preds = %vector.body292, %vector.ph287
  %index293 = phi i64 [ 0, %vector.ph287 ], [ %index.next296, %vector.body292 ]
  %offset.idx294 = add i64 %indvars.iv181, %index293
  %27 = getelementptr inbounds nuw [111 x i32], ptr %arrayidx19, i64 0, i64 %offset.idx294
  %wide.load295 = load <4 x i32>, ptr %27, align 4, !tbaa !5
  %28 = sub nsw <4 x i32> %wide.load295, %broadcast.splat291
  store <4 x i32> %28, ptr %27, align 4, !tbaa !5
  %index.next296 = add nuw i64 %index293, 4
  %29 = icmp eq i64 %index.next296, %n.vec289
  br i1 %29, label %middle.block297, label %vector.body292, !llvm.loop !18

middle.block297:                                  ; preds = %vector.body292
  %cmp.n298 = icmp eq i64 %14, %n.vec289
  br i1 %cmp.n298, label %for.cond52.preheader.preheader, label %for.body32.preheader316

for.body32.preheader316:                          ; preds = %for.body32.preheader, %middle.block297
  %indvars.iv186.ph = phi i64 [ %indvars.iv181, %for.body32.preheader ], [ %26, %middle.block297 ]
  br label %for.body32

for.body32:                                       ; preds = %for.body32.preheader316, %for.body32
  %indvars.iv186 = phi i64 [ %indvars.iv.next187, %for.body32 ], [ %indvars.iv186.ph, %for.body32.preheader316 ]
  %arrayidx35 = getelementptr inbounds nuw [111 x i32], ptr %arrayidx19, i64 0, i64 %indvars.iv186
  %30 = load i32, ptr %arrayidx35, align 4, !tbaa !5
  %sub = sub nsw i32 %30, %.sroa.speculated110
  store i32 %sub, ptr %arrayidx35, align 4, !tbaa !5
  %indvars.iv.next187 = add nuw nsw i64 %indvars.iv186, 1
  %exitcond190.not = icmp eq i64 %indvars.iv.next187, %wide.trip.count189
  br i1 %exitcond190.not, label %for.cond52.preheader.preheader, label %for.body32, !llvm.loop !19

for.cond52.preheader.preheader:                   ; preds = %for.body32, %middle.block297
  %.pre = load i32, ptr %arrayidx27, align 16, !tbaa !5
  %sub44 = sub nsw i32 %.pre, %.sroa.speculated110
  store i32 %sub44, ptr %arrayidx27, align 16, !tbaa !5
  %min.iters.check271 = icmp ult i64 %15, 4
  %n.vec274 = and i64 %15, -4
  %31 = add i64 %indvars.iv181, %n.vec274
  %cmp.n282 = icmp eq i64 %15, %n.vec274
  %min.iters.check259 = icmp ult i64 %16, 4
  %n.vec262 = and i64 %16, -4
  %32 = add i64 %indvars.iv181, %n.vec262
  %cmp.n268 = icmp eq i64 %16, %n.vec262
  br label %for.cond52.preheader

for.cond52.preheader:                             ; preds = %for.cond52.preheader.preheader, %for.end82
  %indvars.iv201 = phi i64 [ %indvars.iv181, %for.cond52.preheader.preheader ], [ %indvars.iv.next202, %for.end82 ]
  br i1 %min.iters.check271, label %for.body54.preheader, label %vector.body275

vector.body275:                                   ; preds = %for.cond52.preheader, %vector.body275
  %index276 = phi i64 [ %index.next280, %vector.body275 ], [ 0, %for.cond52.preheader ]
  %vec.phi277 = phi <4 x i32> [ %34, %vector.body275 ], [ splat (i32 10000), %for.cond52.preheader ]
  %offset.idx278 = add i64 %indvars.iv181, %index276
  %33 = getelementptr inbounds nuw [111 x [111 x i32]], ptr %a, i64 0, i64 %indvars.iv201, i64 %offset.idx278
  %wide.load279 = load <4 x i32>, ptr %33, align 4, !tbaa !5
  %34 = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.load279, <4 x i32> %vec.phi277)
  %index.next280 = add nuw i64 %index276, 4
  %35 = icmp eq i64 %index.next280, %n.vec274
  br i1 %35, label %middle.block281, label %vector.body275, !llvm.loop !20

middle.block281:                                  ; preds = %vector.body275
  %36 = call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %34)
  br i1 %cmp.n282, label %for.end62, label %for.body54.preheader

for.body54.preheader:                             ; preds = %for.cond52.preheader, %middle.block281
  %indvars.iv191.ph = phi i64 [ %indvars.iv181, %for.cond52.preheader ], [ %31, %middle.block281 ]
  %Min.1148.ph = phi i32 [ 10000, %for.cond52.preheader ], [ %36, %middle.block281 ]
  br label %for.body54

for.body54:                                       ; preds = %for.body54.preheader, %for.body54
  %indvars.iv191 = phi i64 [ %indvars.iv.next192, %for.body54 ], [ %indvars.iv191.ph, %for.body54.preheader ]
  %Min.1148 = phi i32 [ %.sroa.speculated107, %for.body54 ], [ %Min.1148.ph, %for.body54.preheader ]
  %arrayidx58 = getelementptr inbounds nuw [111 x [111 x i32]], ptr %a, i64 0, i64 %indvars.iv201, i64 %indvars.iv191
  %37 = load i32, ptr %arrayidx58, align 4, !tbaa !5
  %.sroa.speculated107 = call i32 @llvm.smin.i32(i32 %37, i32 %Min.1148)
  %indvars.iv.next192 = add nuw nsw i64 %indvars.iv191, 1
  %exitcond195.not = icmp eq i64 %indvars.iv.next192, %wide.trip.count204
  br i1 %exitcond195.not, label %for.end62, label %for.body54, !llvm.loop !21

for.end62:                                        ; preds = %for.body54, %middle.block281
  %.sroa.speculated107.lcssa = phi i32 [ %36, %middle.block281 ], [ %.sroa.speculated107, %for.body54 ]
  %arrayidx65 = getelementptr inbounds nuw [111 x [111 x i32]], ptr %a, i64 0, i64 %indvars.iv201, i64 1
  %38 = load i32, ptr %arrayidx65, align 4, !tbaa !5
  %.sroa.speculated104 = call i32 @llvm.smin.i32(i32 %38, i32 %.sroa.speculated107.lcssa)
  br i1 %min.iters.check259, label %for.body70.preheader, label %vector.ph260

vector.ph260:                                     ; preds = %for.end62
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.sroa.speculated104, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body263

vector.body263:                                   ; preds = %vector.body263, %vector.ph260
  %index264 = phi i64 [ 0, %vector.ph260 ], [ %index.next266, %vector.body263 ]
  %offset.idx265 = add i64 %indvars.iv181, %index264
  %39 = getelementptr inbounds nuw [111 x [111 x i32]], ptr %a, i64 0, i64 %indvars.iv201, i64 %offset.idx265
  %wide.load = load <4 x i32>, ptr %39, align 4, !tbaa !5
  %40 = sub nsw <4 x i32> %wide.load, %broadcast.splat
  store <4 x i32> %40, ptr %39, align 4, !tbaa !5
  %index.next266 = add nuw i64 %index264, 4
  %41 = icmp eq i64 %index.next266, %n.vec262
  br i1 %41, label %middle.block267, label %vector.body263, !llvm.loop !22

middle.block267:                                  ; preds = %vector.body263
  br i1 %cmp.n268, label %for.end82, label %for.body70.preheader

for.body70.preheader:                             ; preds = %for.end62, %middle.block267
  %indvars.iv196.ph = phi i64 [ %indvars.iv181, %for.end62 ], [ %32, %middle.block267 ]
  br label %for.body70

for.body70:                                       ; preds = %for.body70.preheader, %for.body70
  %indvars.iv196 = phi i64 [ %indvars.iv.next197, %for.body70 ], [ %indvars.iv196.ph, %for.body70.preheader ]
  %arrayidx74 = getelementptr inbounds nuw [111 x [111 x i32]], ptr %a, i64 0, i64 %indvars.iv201, i64 %indvars.iv196
  %42 = load i32, ptr %arrayidx74, align 4, !tbaa !5
  %sub75 = sub nsw i32 %42, %.sroa.speculated104
  store i32 %sub75, ptr %arrayidx74, align 4, !tbaa !5
  %indvars.iv.next197 = add nuw nsw i64 %indvars.iv196, 1
  %exitcond200.not = icmp eq i64 %indvars.iv.next197, %wide.trip.count204
  br i1 %exitcond200.not, label %for.end82, label %for.body70, !llvm.loop !23

for.end82:                                        ; preds = %for.body70, %middle.block267
  %43 = load i32, ptr %arrayidx65, align 4, !tbaa !5
  %sub86 = sub nsw i32 %43, %.sroa.speculated104
  store i32 %sub86, ptr %arrayidx65, align 4, !tbaa !5
  %indvars.iv.next202 = add nuw nsw i64 %indvars.iv201, 1
  %exitcond205.not = icmp eq i64 %indvars.iv.next202, %wide.trip.count204
  br i1 %exitcond205.not, label %for.body96.preheader, label %for.cond52.preheader, !llvm.loop !24

for.body96.preheader:                             ; preds = %for.end82
  %min.iters.check245 = icmp ult i64 %17, 4
  br i1 %min.iters.check245, label %for.body96.preheader315, label %vector.ph246

vector.ph246:                                     ; preds = %for.body96.preheader
  %n.vec248 = and i64 %17, -4
  %44 = add i64 %indvars.iv181, %n.vec248
  br label %vector.body249

vector.body249:                                   ; preds = %vector.body249, %vector.ph246
  %index250 = phi i64 [ 0, %vector.ph246 ], [ %index.next253, %vector.body249 ]
  %vec.phi251 = phi <4 x i32> [ splat (i32 10000), %vector.ph246 ], [ %60, %vector.body249 ]
  %offset.idx252 = add i64 %indvars.iv181, %index250
  %45 = add i64 %offset.idx252, 1
  %46 = add i64 %offset.idx252, 2
  %47 = add i64 %offset.idx252, 3
  %48 = getelementptr inbounds nuw [111 x [111 x i32]], ptr %a, i64 0, i64 %offset.idx252, i64 1
  %49 = getelementptr inbounds nuw [111 x [111 x i32]], ptr %a, i64 0, i64 %45, i64 1
  %50 = getelementptr inbounds nuw [111 x [111 x i32]], ptr %a, i64 0, i64 %46, i64 1
  %51 = getelementptr inbounds nuw [111 x [111 x i32]], ptr %a, i64 0, i64 %47, i64 1
  %52 = load i32, ptr %48, align 4, !tbaa !5
  %53 = load i32, ptr %49, align 4, !tbaa !5
  %54 = load i32, ptr %50, align 4, !tbaa !5
  %55 = load i32, ptr %51, align 4, !tbaa !5
  %56 = insertelement <4 x i32> poison, i32 %52, i64 0
  %57 = insertelement <4 x i32> %56, i32 %53, i64 1
  %58 = insertelement <4 x i32> %57, i32 %54, i64 2
  %59 = insertelement <4 x i32> %58, i32 %55, i64 3
  %60 = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %59, <4 x i32> %vec.phi251)
  %index.next253 = add nuw i64 %index250, 4
  %61 = icmp eq i64 %index.next253, %n.vec248
  br i1 %61, label %middle.block254, label %vector.body249, !llvm.loop !25

middle.block254:                                  ; preds = %vector.body249
  %62 = call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %60)
  %cmp.n255 = icmp eq i64 %17, %n.vec248
  br i1 %cmp.n255, label %for.body110.preheader, label %for.body96.preheader315

for.body96.preheader315:                          ; preds = %for.body96.preheader, %middle.block254
  %indvars.iv206.ph = phi i64 [ %indvars.iv181, %for.body96.preheader ], [ %44, %middle.block254 ]
  %Min.2156.ph = phi i32 [ 10000, %for.body96.preheader ], [ %62, %middle.block254 ]
  br label %for.body96

for.body96:                                       ; preds = %for.body96.preheader315, %for.body96
  %indvars.iv206 = phi i64 [ %indvars.iv.next207, %for.body96 ], [ %indvars.iv206.ph, %for.body96.preheader315 ]
  %Min.2156 = phi i32 [ %.sroa.speculated101, %for.body96 ], [ %Min.2156.ph, %for.body96.preheader315 ]
  %arrayidx99 = getelementptr inbounds nuw [111 x [111 x i32]], ptr %a, i64 0, i64 %indvars.iv206, i64 1
  %63 = load i32, ptr %arrayidx99, align 4, !tbaa !5
  %.sroa.speculated101 = call i32 @llvm.smin.i32(i32 %63, i32 %Min.2156)
  %indvars.iv.next207 = add nuw nsw i64 %indvars.iv206, 1
  %exitcond210.not = icmp eq i64 %indvars.iv.next207, %wide.trip.count209
  br i1 %exitcond210.not, label %for.body110.preheader, label %for.body96, !llvm.loop !26

for.body110.preheader:                            ; preds = %for.body96, %middle.block254
  %.sroa.speculated101.lcssa = phi i32 [ %62, %middle.block254 ], [ %.sroa.speculated101, %for.body96 ]
  %64 = load i32, ptr %arrayidx27, align 16, !tbaa !5
  %.sroa.speculated98 = call i32 @llvm.smin.i32(i32 %64, i32 %.sroa.speculated101.lcssa)
  br label %for.body110

for.body110:                                      ; preds = %for.body110.preheader, %for.body110
  %indvars.iv211 = phi i64 [ %indvars.iv181, %for.body110.preheader ], [ %indvars.iv.next212, %for.body110 ]
  %arrayidx113 = getelementptr inbounds nuw [111 x [111 x i32]], ptr %a, i64 0, i64 %indvars.iv211, i64 1
  %65 = load i32, ptr %arrayidx113, align 4, !tbaa !5
  %sub114 = sub nsw i32 %65, %.sroa.speculated98
  store i32 %sub114, ptr %arrayidx113, align 4, !tbaa !5
  %indvars.iv.next212 = add nuw nsw i64 %indvars.iv211, 1
  %exitcond215.not = icmp eq i64 %indvars.iv.next212, %wide.trip.count214
  br i1 %exitcond215.not, label %for.cond131.preheader.preheader, label %for.body110, !llvm.loop !27

for.cond131.preheader.preheader:                  ; preds = %for.body110
  %.pre236 = load i32, ptr %arrayidx27, align 16, !tbaa !5
  %sub123 = sub nsw i32 %.pre236, %.sroa.speculated98
  store i32 %sub123, ptr %arrayidx27, align 16, !tbaa !5
  %min.iters.check = icmp ult i64 %18, 4
  %n.vec = and i64 %18, -4
  %66 = add i64 %indvars.iv181, %n.vec
  %cmp.n = icmp eq i64 %18, %n.vec
  br label %for.cond131.preheader

for.cond131.preheader:                            ; preds = %for.cond131.preheader.preheader, %for.end161
  %indvars.iv226 = phi i64 [ %indvars.iv181, %for.cond131.preheader.preheader ], [ %indvars.iv.next227, %for.end161 ]
  br i1 %min.iters.check, label %for.body133.preheader, label %vector.body

vector.body:                                      ; preds = %for.cond131.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %for.cond131.preheader ]
  %vec.phi = phi <4 x i32> [ %82, %vector.body ], [ splat (i32 10000), %for.cond131.preheader ]
  %offset.idx = add i64 %indvars.iv181, %index
  %67 = add i64 %offset.idx, 1
  %68 = add i64 %offset.idx, 2
  %69 = add i64 %offset.idx, 3
  %70 = getelementptr inbounds nuw [111 x [111 x i32]], ptr %a, i64 0, i64 %offset.idx, i64 %indvars.iv226
  %71 = getelementptr inbounds nuw [111 x [111 x i32]], ptr %a, i64 0, i64 %67, i64 %indvars.iv226
  %72 = getelementptr inbounds nuw [111 x [111 x i32]], ptr %a, i64 0, i64 %68, i64 %indvars.iv226
  %73 = getelementptr inbounds nuw [111 x [111 x i32]], ptr %a, i64 0, i64 %69, i64 %indvars.iv226
  %74 = load i32, ptr %70, align 4, !tbaa !5
  %75 = load i32, ptr %71, align 4, !tbaa !5
  %76 = load i32, ptr %72, align 4, !tbaa !5
  %77 = load i32, ptr %73, align 4, !tbaa !5
  %78 = insertelement <4 x i32> poison, i32 %74, i64 0
  %79 = insertelement <4 x i32> %78, i32 %75, i64 1
  %80 = insertelement <4 x i32> %79, i32 %76, i64 2
  %81 = insertelement <4 x i32> %80, i32 %77, i64 3
  %82 = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %81, <4 x i32> %vec.phi)
  %index.next = add nuw i64 %index, 4
  %83 = icmp eq i64 %index.next, %n.vec
  br i1 %83, label %middle.block, label %vector.body, !llvm.loop !28

middle.block:                                     ; preds = %vector.body
  %84 = call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %82)
  br i1 %cmp.n, label %for.end141, label %for.body133.preheader

for.body133.preheader:                            ; preds = %for.cond131.preheader, %middle.block
  %indvars.iv216.ph = phi i64 [ %indvars.iv181, %for.cond131.preheader ], [ %66, %middle.block ]
  %Min.3162.ph = phi i32 [ 10000, %for.cond131.preheader ], [ %84, %middle.block ]
  br label %for.body133

for.body133:                                      ; preds = %for.body133.preheader, %for.body133
  %indvars.iv216 = phi i64 [ %indvars.iv.next217, %for.body133 ], [ %indvars.iv216.ph, %for.body133.preheader ]
  %Min.3162 = phi i32 [ %.sroa.speculated95, %for.body133 ], [ %Min.3162.ph, %for.body133.preheader ]
  %arrayidx137 = getelementptr inbounds nuw [111 x [111 x i32]], ptr %a, i64 0, i64 %indvars.iv216, i64 %indvars.iv226
  %85 = load i32, ptr %arrayidx137, align 4, !tbaa !5
  %.sroa.speculated95 = call i32 @llvm.smin.i32(i32 %85, i32 %Min.3162)
  %indvars.iv.next217 = add nuw nsw i64 %indvars.iv216, 1
  %exitcond220.not = icmp eq i64 %indvars.iv.next217, %wide.trip.count229
  br i1 %exitcond220.not, label %for.end141, label %for.body133, !llvm.loop !29

for.end141:                                       ; preds = %for.body133, %middle.block
  %.sroa.speculated95.lcssa = phi i32 [ %84, %middle.block ], [ %.sroa.speculated95, %for.body133 ]
  %arrayidx144 = getelementptr inbounds nuw [111 x i32], ptr %arrayidx19, i64 0, i64 %indvars.iv226
  %86 = load i32, ptr %arrayidx144, align 4, !tbaa !5
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %86, i32 %.sroa.speculated95.lcssa)
  br label %for.body149

for.body149:                                      ; preds = %for.end141, %for.body149
  %indvars.iv221 = phi i64 [ %indvars.iv181, %for.end141 ], [ %indvars.iv.next222, %for.body149 ]
  %arrayidx153 = getelementptr inbounds nuw [111 x [111 x i32]], ptr %a, i64 0, i64 %indvars.iv221, i64 %indvars.iv226
  %87 = load i32, ptr %arrayidx153, align 4, !tbaa !5
  %sub154 = sub nsw i32 %87, %.sroa.speculated
  store i32 %sub154, ptr %arrayidx153, align 4, !tbaa !5
  %indvars.iv.next222 = add nuw nsw i64 %indvars.iv221, 1
  %exitcond225.not = icmp eq i64 %indvars.iv.next222, %wide.trip.count229
  br i1 %exitcond225.not, label %for.end161, label %for.body149, !llvm.loop !30

for.end161:                                       ; preds = %for.body149
  %88 = load i32, ptr %arrayidx144, align 4, !tbaa !5
  %sub165 = sub nsw i32 %88, %.sroa.speculated
  store i32 %sub165, ptr %arrayidx144, align 4, !tbaa !5
  %indvars.iv.next227 = add nuw nsw i64 %indvars.iv226, 1
  %exitcond230.not = icmp eq i64 %indvars.iv.next227, %wide.trip.count229
  br i1 %exitcond230.not, label %for.end171, label %for.cond131.preheader, !llvm.loop !31

for.end171:                                       ; preds = %for.end161
  %arrayidx177 = getelementptr inbounds nuw [111 x [111 x i32]], ptr %a, i64 0, i64 %indvars.iv.next232, i64 %indvars.iv.next232
  %89 = load i32, ptr %arrayidx177, align 4, !tbaa !5
  %add178 = add nsw i32 %89, %sum.0170
  %indvars.iv.next182 = add nuw nsw i64 %indvars.iv181, 1
  %exitcond235.not = icmp eq i64 %indvars.iv.next232, %wide.trip.count234
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond235.not, label %for.end181, label %for.body18.preheader, !llvm.loop !32

for.end181:                                       ; preds = %for.end171, %for.cond1.preheader, %for.cond13.preheader
  %sum.0.lcssa = phi i32 [ 0, %for.cond13.preheader ], [ 0, %for.cond1.preheader ], [ %add178, %for.end171 ]
  %call182 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %sum.0.lcssa)
  %vtable.i = load ptr, ptr %call182, align 8, !tbaa !33
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call182, i64 %vbase.offset.i
  %_M_ctype.i.i = getelementptr inbounds nuw i8, ptr %add.ptr.i, i64 240
  %90 = load ptr, ptr %_M_ctype.i.i, align 8, !tbaa !35
  %tobool.not.i.i.i = icmp eq ptr %90, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

if.then.i.i.i:                                    ; preds = %for.end181
  call void @_ZSt16__throw_bad_castv() #6
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %for.end181
  %_M_widen_ok.i.i.i = getelementptr inbounds nuw i8, ptr %90, i64 56
  %91 = load i8, ptr %_M_widen_ok.i.i.i, align 8, !tbaa !53
  %tobool.not.i1.i.i = icmp eq i8 %91, 0
  br i1 %tobool.not.i1.i.i, label %if.end.i.i.i, label %if.then.i2.i.i

if.then.i2.i.i:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %arrayidx.i.i.i = getelementptr inbounds nuw i8, ptr %90, i64 67
  %92 = load i8, ptr %arrayidx.i.i.i, align 1, !tbaa !59
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

if.end.i.i.i:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %90)
  %vtable.i.i.i = load ptr, ptr %90, align 8, !tbaa !33
  %vfn.i.i.i = getelementptr inbounds nuw i8, ptr %vtable.i.i.i, i64 48
  %93 = load ptr, ptr %vfn.i.i.i, align 8
  %call.i.i.i = call noundef signext i8 %93(ptr noundef nonnull align 8 dereferenceable(570) %90, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %if.then.i2.i.i, %if.end.i.i.i
  %retval.0.i.i.i = phi i8 [ %92, %if.then.i2.i.i ], [ %call.i.i.i, %if.end.i.i.i ]
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call182, i8 noundef signext %retval.0.i.i.i)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  %inc185 = add nuw nsw i32 %i.0174, 1
  %94 = load i32, ptr %n, align 4, !tbaa !5
  %cmp.not.not = icmp slt i32 %i.0174, %94
  br i1 %cmp.not.not, label %for.cond1.preheader, label %for.end186, !llvm.loop !60

for.end186:                                       ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %entry
  call void @llvm.lifetime.end.p0(i64 49284, ptr nonnull %a) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #5
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #3

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smin.v4i32(<4 x i32>, <4 x i32>) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smin.v4i32(<4 x i32>) #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }
attributes #6 = { noreturn }

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
!17 = distinct !{!17, !10, !11, !15}
!18 = distinct !{!18, !10, !11, !15, !16}
!19 = distinct !{!19, !10, !11, !15}
!20 = distinct !{!20, !10, !11, !15, !16}
!21 = distinct !{!21, !10, !11, !15}
!22 = distinct !{!22, !10, !11, !15, !16}
!23 = distinct !{!23, !10, !11, !15}
!24 = distinct !{!24, !10, !11}
!25 = distinct !{!25, !10, !11, !15, !16}
!26 = distinct !{!26, !10, !11, !15}
!27 = distinct !{!27, !10, !11}
!28 = distinct !{!28, !10, !11, !15, !16}
!29 = distinct !{!29, !10, !11, !15}
!30 = distinct !{!30, !10, !11}
!31 = distinct !{!31, !10, !11}
!32 = distinct !{!32, !10, !11}
!33 = !{!34, !34, i64 0}
!34 = !{!"vtable pointer", !8, i64 0}
!35 = !{!36, !50, i64 240}
!36 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !37, i64 0, !47, i64 216, !7, i64 224, !48, i64 225, !49, i64 232, !50, i64 240, !51, i64 248, !52, i64 256}
!37 = !{!"_ZTSSt8ios_base", !38, i64 8, !38, i64 16, !39, i64 24, !40, i64 28, !40, i64 32, !41, i64 40, !43, i64 48, !7, i64 64, !6, i64 192, !44, i64 200, !45, i64 208}
!38 = !{!"long", !7, i64 0}
!39 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!40 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!41 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !42, i64 0}
!42 = !{!"any pointer", !7, i64 0}
!43 = !{!"_ZTSNSt8ios_base6_WordsE", !42, i64 0, !38, i64 8}
!44 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !42, i64 0}
!45 = !{!"_ZTSSt6locale", !46, i64 0}
!46 = !{!"p1 _ZTSNSt6locale5_ImplE", !42, i64 0}
!47 = !{!"p1 _ZTSSo", !42, i64 0}
!48 = !{!"bool", !7, i64 0}
!49 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !42, i64 0}
!50 = !{!"p1 _ZTSSt5ctypeIcE", !42, i64 0}
!51 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !42, i64 0}
!52 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !42, i64 0}
!53 = !{!54, !7, i64 56}
!54 = !{!"_ZTSSt5ctypeIcE", !55, i64 0, !56, i64 16, !48, i64 24, !57, i64 32, !57, i64 40, !58, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!55 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!56 = !{!"p1 _ZTS15__locale_struct", !42, i64 0}
!57 = !{!"p1 int", !42, i64 0}
!58 = !{!"p1 short", !42, i64 0}
!59 = !{!7, !7, i64 0}
!60 = distinct !{!60, !10, !11}
