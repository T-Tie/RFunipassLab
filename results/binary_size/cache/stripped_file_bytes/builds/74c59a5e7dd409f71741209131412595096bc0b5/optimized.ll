; ModuleID = '<stdin>'
source_filename = "/tmp/tmpv5ig_8an.cpp"
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
  %a = alloca [102 x [102 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #5
  call void @llvm.lifetime.start.p0(i64 41616, ptr nonnull %a) #5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp.not96 = icmp slt i32 %0, 1
  br i1 %cmp.not96, label %for.end152, label %for.cond1.preheader.lr.ph

for.cond1.preheader.lr.ph:                        ; preds = %entry
  %arrayidx99 = getelementptr inbounds nuw i8, ptr %a, i64 824
  %arrayidx111 = getelementptr inbounds nuw i8, ptr %a, i64 408
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.cond1.preheader.lr.ph, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %1 = phi i32 [ %0, %for.cond1.preheader.lr.ph ], [ %65, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit ]
  %k.097 = phi i32 [ 1, %for.cond1.preheader.lr.ph ], [ %inc151, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit ]
  %cmp2.not67 = icmp slt i32 %1, 1
  br i1 %cmp2.not67, label %for.end147, label %for.cond4.preheader

for.cond13.preheader:                             ; preds = %for.inc10
  %cmp14.not92 = icmp slt i32 %7, 2
  br i1 %cmp14.not92, label %for.end147, label %for.cond16.preheader.preheader

for.cond16.preheader.preheader:                   ; preds = %for.cond13.preheader
  %2 = add nuw i32 %7, 1
  %3 = add nsw i32 %7, -2
  br label %for.cond16.preheader

for.cond4.preheader:                              ; preds = %for.cond1.preheader, %for.inc10
  %4 = phi i32 [ %7, %for.inc10 ], [ %1, %for.cond1.preheader ]
  %indvars.iv101 = phi i64 [ %indvars.iv.next102, %for.inc10 ], [ 1, %for.cond1.preheader ]
  %cmp5.not65 = icmp slt i32 %4, 1
  br i1 %cmp5.not65, label %for.cond4.preheader.for.inc10_crit_edge, label %for.body6

for.cond4.preheader.for.inc10_crit_edge:          ; preds = %for.cond4.preheader
  %.pre = sext i32 %4 to i64
  br label %for.inc10

for.body6:                                        ; preds = %for.cond4.preheader, %for.body6
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body6 ], [ 1, %for.cond4.preheader ]
  %arrayidx8 = getelementptr inbounds nuw [102 x [102 x i32]], ptr %a, i64 0, i64 %indvars.iv101, i64 %indvars.iv
  %call9 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx8)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %5 = load i32, ptr %n, align 4, !tbaa !5
  %6 = sext i32 %5 to i64
  %cmp5.not.not = icmp slt i64 %indvars.iv, %6
  br i1 %cmp5.not.not, label %for.body6, label %for.inc10, !llvm.loop !9

for.inc10:                                        ; preds = %for.body6, %for.cond4.preheader.for.inc10_crit_edge
  %.pre-phi = phi i64 [ %.pre, %for.cond4.preheader.for.inc10_crit_edge ], [ %6, %for.body6 ]
  %7 = phi i32 [ %4, %for.cond4.preheader.for.inc10_crit_edge ], [ %5, %for.body6 ]
  %indvars.iv.next102 = add nuw nsw i64 %indvars.iv101, 1
  %cmp2.not.not = icmp slt i64 %indvars.iv101, %.pre-phi
  br i1 %cmp2.not.not, label %for.cond4.preheader, label %for.cond13.preheader, !llvm.loop !12

for.cond16.preheader:                             ; preds = %for.cond16.preheader.preheader, %for.inc145
  %indvars.iv107 = phi i32 [ %2, %for.cond16.preheader.preheader ], [ %indvars.iv.next108, %for.inc145 ]
  %t.094 = phi i32 [ 0, %for.cond16.preheader.preheader ], [ %inc146, %for.inc145 ]
  %sum.093 = phi i32 [ 0, %for.cond16.preheader.preheader ], [ %add158162, %for.inc145 ]
  %8 = zext i32 %indvars.iv107 to i64
  %9 = add nsw i64 %8, -1
  %10 = zext i32 %indvars.iv107 to i64
  %11 = add nsw i64 %10, -1
  %12 = zext i32 %indvars.iv107 to i64
  %13 = add nsw i64 %12, -1
  %14 = zext i32 %indvars.iv107 to i64
  %15 = add nsw i64 %14, -3
  %sub17 = sub nsw i32 %7, %t.094
  %cmp18.not75 = icmp slt i32 %sub17, 1
  br i1 %cmp18.not75, label %for.cond121.preheader, label %for.cond20.preheader.preheader

for.cond20.preheader.preheader:                   ; preds = %for.cond16.preheader
  %wide.trip.count117 = zext i32 %indvars.iv107 to i64
  %min.iters.check197 = icmp ult i64 %9, 4
  %n.vec200 = and i64 %9, -4
  %16 = or disjoint i64 %n.vec200, 1
  %cmp.n208 = icmp eq i64 %9, %n.vec200
  %min.iters.check184 = icmp ult i64 %11, 4
  %n.vec187 = and i64 %11, -4
  %17 = or disjoint i64 %n.vec187, 1
  %cmp.n194 = icmp eq i64 %11, %n.vec187
  br label %for.cond20.preheader

for.cond59.preheader.preheader:                   ; preds = %for.inc52
  %wide.trip.count132 = zext i32 %indvars.iv107 to i64
  %min.iters.check172 = icmp ult i64 %13, 4
  %n.vec175 = and i64 %13, -4
  %18 = or disjoint i64 %n.vec175, 1
  %cmp.n181 = icmp eq i64 %13, %n.vec175
  br label %for.cond59.preheader

for.cond20.preheader:                             ; preds = %for.cond20.preheader.preheader, %for.inc52
  %indvars.iv114 = phi i64 [ 1, %for.cond20.preheader.preheader ], [ %indvars.iv.next115, %for.inc52 ]
  br i1 %min.iters.check197, label %for.body23.preheader, label %vector.body201

vector.body201:                                   ; preds = %for.cond20.preheader, %vector.body201
  %index202 = phi i64 [ %index.next206, %vector.body201 ], [ 0, %for.cond20.preheader ]
  %vec.phi203 = phi <4 x i32> [ %20, %vector.body201 ], [ splat (i32 100000), %for.cond20.preheader ]
  %offset.idx204 = or disjoint i64 %index202, 1
  %19 = getelementptr inbounds nuw [102 x [102 x i32]], ptr %a, i64 0, i64 %indvars.iv114, i64 %offset.idx204
  %wide.load205 = load <4 x i32>, ptr %19, align 4, !tbaa !5
  %20 = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %vec.phi203, <4 x i32> %wide.load205)
  %index.next206 = add nuw i64 %index202, 4
  %21 = icmp eq i64 %index.next206, %n.vec200
  br i1 %21, label %middle.block207, label %vector.body201, !llvm.loop !14

middle.block207:                                  ; preds = %vector.body201
  %22 = call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %20)
  br i1 %cmp.n208, label %for.body39.lr.ph, label %for.body23.preheader

for.body23.preheader:                             ; preds = %for.cond20.preheader, %middle.block207
  %indvars.iv104.ph = phi i64 [ 1, %for.cond20.preheader ], [ %16, %middle.block207 ]
  %min.071.ph = phi i32 [ 100000, %for.cond20.preheader ], [ %22, %middle.block207 ]
  br label %for.body23

for.body39.lr.ph:                                 ; preds = %for.body23, %middle.block207
  %min.0..lcssa = phi i32 [ %22, %middle.block207 ], [ %min.0., %for.body23 ]
  br i1 %min.iters.check184, label %for.body39.preheader, label %vector.ph185

vector.ph185:                                     ; preds = %for.body39.lr.ph
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %min.0..lcssa, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body188

vector.body188:                                   ; preds = %vector.body188, %vector.ph185
  %index189 = phi i64 [ 0, %vector.ph185 ], [ %index.next192, %vector.body188 ]
  %offset.idx190 = or disjoint i64 %index189, 1
  %23 = getelementptr inbounds nuw [102 x [102 x i32]], ptr %a, i64 0, i64 %indvars.iv114, i64 %offset.idx190
  %wide.load191 = load <4 x i32>, ptr %23, align 4, !tbaa !5
  %24 = sub nsw <4 x i32> %wide.load191, %broadcast.splat
  store <4 x i32> %24, ptr %23, align 4, !tbaa !5
  %index.next192 = add nuw i64 %index189, 4
  %25 = icmp eq i64 %index.next192, %n.vec187
  br i1 %25, label %middle.block193, label %vector.body188, !llvm.loop !17

middle.block193:                                  ; preds = %vector.body188
  br i1 %cmp.n194, label %for.inc52, label %for.body39.preheader

for.body39.preheader:                             ; preds = %for.body39.lr.ph, %middle.block193
  %indvars.iv109.ph = phi i64 [ 1, %for.body39.lr.ph ], [ %17, %middle.block193 ]
  br label %for.body39

for.body23:                                       ; preds = %for.body23.preheader, %for.body23
  %indvars.iv104 = phi i64 [ %indvars.iv.next105, %for.body23 ], [ %indvars.iv104.ph, %for.body23.preheader ]
  %min.071 = phi i32 [ %min.0., %for.body23 ], [ %min.071.ph, %for.body23.preheader ]
  %arrayidx27 = getelementptr inbounds nuw [102 x [102 x i32]], ptr %a, i64 0, i64 %indvars.iv114, i64 %indvars.iv104
  %26 = load i32, ptr %arrayidx27, align 4, !tbaa !5
  %min.0. = call i32 @llvm.smin.i32(i32 %min.071, i32 %26)
  %indvars.iv.next105 = add nuw nsw i64 %indvars.iv104, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next105, %wide.trip.count117
  br i1 %exitcond.not, label %for.body39.lr.ph, label %for.body23, !llvm.loop !18

for.body39:                                       ; preds = %for.body39.preheader, %for.body39
  %indvars.iv109 = phi i64 [ %indvars.iv.next110, %for.body39 ], [ %indvars.iv109.ph, %for.body39.preheader ]
  %arrayidx43 = getelementptr inbounds nuw [102 x [102 x i32]], ptr %a, i64 0, i64 %indvars.iv114, i64 %indvars.iv109
  %27 = load i32, ptr %arrayidx43, align 4, !tbaa !5
  %sub44 = sub nsw i32 %27, %min.0..lcssa
  store i32 %sub44, ptr %arrayidx43, align 4, !tbaa !5
  %indvars.iv.next110 = add nuw nsw i64 %indvars.iv109, 1
  %exitcond113.not = icmp eq i64 %indvars.iv.next110, %wide.trip.count117
  br i1 %exitcond113.not, label %for.inc52, label %for.body39, !llvm.loop !19

for.inc52:                                        ; preds = %for.body39, %middle.block193
  %indvars.iv.next115 = add nuw nsw i64 %indvars.iv114, 1
  %exitcond118.not = icmp eq i64 %indvars.iv.next115, %wide.trip.count117
  br i1 %exitcond118.not, label %for.cond59.preheader.preheader, label %for.cond20.preheader, !llvm.loop !20

for.cond59.preheader:                             ; preds = %for.cond59.preheader.preheader, %for.inc95
  %indvars.iv129 = phi i64 [ 1, %for.cond59.preheader.preheader ], [ %indvars.iv.next130, %for.inc95 ]
  br i1 %min.iters.check172, label %for.body62.preheader, label %vector.body176

vector.body176:                                   ; preds = %for.cond59.preheader, %vector.body176
  %index177 = phi i64 [ %index.next179, %vector.body176 ], [ 0, %for.cond59.preheader ]
  %vec.phi = phi <4 x i32> [ %43, %vector.body176 ], [ splat (i32 100000), %for.cond59.preheader ]
  %offset.idx178 = or disjoint i64 %index177, 1
  %28 = or disjoint i64 %index177, 2
  %29 = or disjoint i64 %index177, 3
  %30 = add i64 %index177, 4
  %31 = getelementptr inbounds nuw [102 x [102 x i32]], ptr %a, i64 0, i64 %offset.idx178, i64 %indvars.iv129
  %32 = getelementptr inbounds nuw [102 x [102 x i32]], ptr %a, i64 0, i64 %28, i64 %indvars.iv129
  %33 = getelementptr inbounds nuw [102 x [102 x i32]], ptr %a, i64 0, i64 %29, i64 %indvars.iv129
  %34 = getelementptr inbounds nuw [102 x [102 x i32]], ptr %a, i64 0, i64 %30, i64 %indvars.iv129
  %35 = load i32, ptr %31, align 4, !tbaa !5
  %36 = load i32, ptr %32, align 4, !tbaa !5
  %37 = load i32, ptr %33, align 4, !tbaa !5
  %38 = load i32, ptr %34, align 4, !tbaa !5
  %39 = insertelement <4 x i32> poison, i32 %35, i64 0
  %40 = insertelement <4 x i32> %39, i32 %36, i64 1
  %41 = insertelement <4 x i32> %40, i32 %37, i64 2
  %42 = insertelement <4 x i32> %41, i32 %38, i64 3
  %43 = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %vec.phi, <4 x i32> %42)
  %index.next179 = add nuw i64 %index177, 4
  %44 = icmp eq i64 %index.next179, %n.vec175
  br i1 %44, label %middle.block180, label %vector.body176, !llvm.loop !21

middle.block180:                                  ; preds = %vector.body176
  %45 = call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %43)
  br i1 %cmp.n181, label %for.body82.lr.ph, label %for.body62.preheader

for.body62.preheader:                             ; preds = %for.cond59.preheader, %middle.block180
  %indvars.iv119.ph = phi i64 [ 1, %for.cond59.preheader ], [ %18, %middle.block180 ]
  %min.180.ph = phi i32 [ 100000, %for.cond59.preheader ], [ %45, %middle.block180 ]
  br label %for.body62

for.body82.lr.ph:                                 ; preds = %for.body62, %middle.block180
  %min.1..lcssa = phi i32 [ %45, %middle.block180 ], [ %min.1., %for.body62 ]
  br label %for.body82

for.body62:                                       ; preds = %for.body62.preheader, %for.body62
  %indvars.iv119 = phi i64 [ %indvars.iv.next120, %for.body62 ], [ %indvars.iv119.ph, %for.body62.preheader ]
  %min.180 = phi i32 [ %min.1., %for.body62 ], [ %min.180.ph, %for.body62.preheader ]
  %arrayidx66 = getelementptr inbounds nuw [102 x [102 x i32]], ptr %a, i64 0, i64 %indvars.iv119, i64 %indvars.iv129
  %46 = load i32, ptr %arrayidx66, align 4, !tbaa !5
  %min.1. = call i32 @llvm.smin.i32(i32 %min.180, i32 %46)
  %indvars.iv.next120 = add nuw nsw i64 %indvars.iv119, 1
  %exitcond123.not = icmp eq i64 %indvars.iv.next120, %wide.trip.count132
  br i1 %exitcond123.not, label %for.body82.lr.ph, label %for.body62, !llvm.loop !22

for.body82:                                       ; preds = %for.body82.lr.ph, %for.body82
  %indvars.iv124 = phi i64 [ 1, %for.body82.lr.ph ], [ %indvars.iv.next125, %for.body82 ]
  %arrayidx86 = getelementptr inbounds nuw [102 x [102 x i32]], ptr %a, i64 0, i64 %indvars.iv124, i64 %indvars.iv129
  %47 = load i32, ptr %arrayidx86, align 4, !tbaa !5
  %sub87 = sub nsw i32 %47, %min.1..lcssa
  store i32 %sub87, ptr %arrayidx86, align 4, !tbaa !5
  %indvars.iv.next125 = add nuw nsw i64 %indvars.iv124, 1
  %exitcond128.not = icmp eq i64 %indvars.iv.next125, %wide.trip.count132
  br i1 %exitcond128.not, label %for.inc95, label %for.body82, !llvm.loop !23

for.inc95:                                        ; preds = %for.body82
  %indvars.iv.next130 = add nuw nsw i64 %indvars.iv129, 1
  %exitcond133.not = icmp eq i64 %indvars.iv.next130, %wide.trip.count132
  br i1 %exitcond133.not, label %for.end97, label %for.cond59.preheader, !llvm.loop !24

for.end97:                                        ; preds = %for.inc95
  %48 = load i32, ptr %arrayidx99, align 8, !tbaa !5
  %cmp102.not86 = icmp slt i32 %sub17, 3
  br i1 %cmp102.not86, label %for.inc145, label %for.body103.preheader

for.body103.preheader:                            ; preds = %for.end97
  %wide.trip.count138 = zext i32 %indvars.iv107 to i64
  br label %for.body103

for.cond121.preheader:                            ; preds = %for.cond16.preheader
  %49 = load i32, ptr %arrayidx99, align 8, !tbaa !5
  br label %for.inc145

for.cond125.preheader.preheader:                  ; preds = %for.body103
  %wide.trip.count151 = zext i32 %indvars.iv107 to i64
  %min.iters.check = icmp ult i64 %15, 4
  %n.vec = and i64 %15, -4
  %50 = or i64 %15, 3
  %cmp.n = icmp eq i64 %15, %n.vec
  br label %for.cond125.preheader

for.body103:                                      ; preds = %for.body103.preheader, %for.body103
  %indvars.iv134 = phi i64 [ 3, %for.body103.preheader ], [ %indvars.iv.next135, %for.body103 ]
  %arrayidx106 = getelementptr inbounds nuw [102 x [102 x i32]], ptr %a, i64 0, i64 %indvars.iv134, i64 1
  %51 = load i32, ptr %arrayidx106, align 4, !tbaa !5
  %52 = add nsw i64 %indvars.iv134, -1
  %arrayidx110 = getelementptr inbounds [102 x [102 x i32]], ptr %a, i64 0, i64 %52, i64 1
  store i32 %51, ptr %arrayidx110, align 4, !tbaa !5
  %arrayidx113 = getelementptr inbounds nuw [102 x i32], ptr %arrayidx111, i64 0, i64 %indvars.iv134
  %53 = load i32, ptr %arrayidx113, align 4, !tbaa !5
  %arrayidx117 = getelementptr inbounds [102 x i32], ptr %arrayidx111, i64 0, i64 %52
  store i32 %53, ptr %arrayidx117, align 4, !tbaa !5
  %indvars.iv.next135 = add nuw nsw i64 %indvars.iv134, 1
  %exitcond139.not = icmp eq i64 %indvars.iv.next135, %wide.trip.count138
  br i1 %exitcond139.not, label %for.cond125.preheader.preheader, label %for.body103, !llvm.loop !25

for.cond125.preheader:                            ; preds = %for.cond125.preheader.preheader, %for.cond125.for.inc142_crit_edge
  %indvars.iv147 = phi i64 [ 3, %for.cond125.preheader.preheader ], [ %indvars.iv.next148, %for.cond125.for.inc142_crit_edge ]
  %54 = add nsw i64 %indvars.iv147, -1
  br i1 %min.iters.check, label %for.body128.preheader, label %vector.body

vector.body:                                      ; preds = %for.cond125.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %for.cond125.preheader ]
  %offset.idx = or disjoint i64 %index, 3
  %55 = getelementptr inbounds nuw [102 x [102 x i32]], ptr %a, i64 0, i64 %indvars.iv147, i64 %offset.idx
  %wide.load = load <4 x i32>, ptr %55, align 4, !tbaa !5
  %56 = or disjoint i64 %index, 2
  %57 = getelementptr inbounds [102 x [102 x i32]], ptr %a, i64 0, i64 %54, i64 %56
  store <4 x i32> %wide.load, ptr %57, align 8, !tbaa !5
  %index.next = add nuw i64 %index, 4
  %58 = icmp eq i64 %index.next, %n.vec
  br i1 %58, label %middle.block, label %vector.body, !llvm.loop !26

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %for.cond125.for.inc142_crit_edge, label %for.body128.preheader

for.body128.preheader:                            ; preds = %for.cond125.preheader, %middle.block
  %indvars.iv141.ph = phi i64 [ 3, %for.cond125.preheader ], [ %50, %middle.block ]
  br label %for.body128

for.body128:                                      ; preds = %for.body128.preheader, %for.body128
  %indvars.iv141 = phi i64 [ %indvars.iv.next142, %for.body128 ], [ %indvars.iv141.ph, %for.body128.preheader ]
  %arrayidx132 = getelementptr inbounds nuw [102 x [102 x i32]], ptr %a, i64 0, i64 %indvars.iv147, i64 %indvars.iv141
  %59 = load i32, ptr %arrayidx132, align 4, !tbaa !5
  %60 = add nsw i64 %indvars.iv141, -1
  %arrayidx138 = getelementptr inbounds [102 x [102 x i32]], ptr %a, i64 0, i64 %54, i64 %60
  store i32 %59, ptr %arrayidx138, align 4, !tbaa !5
  %indvars.iv.next142 = add nuw nsw i64 %indvars.iv141, 1
  %exitcond146.not = icmp eq i64 %indvars.iv.next142, %wide.trip.count151
  br i1 %exitcond146.not, label %for.cond125.for.inc142_crit_edge, label %for.body128, !llvm.loop !27

for.cond125.for.inc142_crit_edge:                 ; preds = %for.body128, %middle.block
  %indvars.iv.next148 = add nuw nsw i64 %indvars.iv147, 1
  %exitcond152.not = icmp eq i64 %indvars.iv.next148, %wide.trip.count151
  br i1 %exitcond152.not, label %for.inc145, label %for.cond125.preheader, !llvm.loop !28

for.inc145:                                       ; preds = %for.cond125.for.inc142_crit_edge, %for.end97, %for.cond121.preheader
  %.pn = phi i32 [ %49, %for.cond121.preheader ], [ %48, %for.end97 ], [ %48, %for.cond125.for.inc142_crit_edge ]
  %add158162 = add nsw i32 %.pn, %sum.093
  %inc146 = add nuw i32 %t.094, 1
  %indvars.iv.next108 = add i32 %indvars.iv107, -1
  %exitcond153.not = icmp eq i32 %t.094, %3
  br i1 %exitcond153.not, label %for.end147, label %for.cond16.preheader, !llvm.loop !29

for.end147:                                       ; preds = %for.inc145, %for.cond1.preheader, %for.cond13.preheader
  %sum.0.lcssa = phi i32 [ 0, %for.cond13.preheader ], [ 0, %for.cond1.preheader ], [ %add158162, %for.inc145 ]
  %call148 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %sum.0.lcssa)
  %vtable.i = load ptr, ptr %call148, align 8, !tbaa !30
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call148, i64 %vbase.offset.i
  %_M_ctype.i.i = getelementptr inbounds nuw i8, ptr %add.ptr.i, i64 240
  %61 = load ptr, ptr %_M_ctype.i.i, align 8, !tbaa !32
  %tobool.not.i.i.i = icmp eq ptr %61, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

if.then.i.i.i:                                    ; preds = %for.end147
  call void @_ZSt16__throw_bad_castv() #6
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %for.end147
  %_M_widen_ok.i.i.i = getelementptr inbounds nuw i8, ptr %61, i64 56
  %62 = load i8, ptr %_M_widen_ok.i.i.i, align 8, !tbaa !50
  %tobool.not.i1.i.i = icmp eq i8 %62, 0
  br i1 %tobool.not.i1.i.i, label %if.end.i.i.i, label %if.then.i2.i.i

if.then.i2.i.i:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %arrayidx.i.i.i = getelementptr inbounds nuw i8, ptr %61, i64 67
  %63 = load i8, ptr %arrayidx.i.i.i, align 1, !tbaa !56
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

if.end.i.i.i:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %61)
  %vtable.i.i.i = load ptr, ptr %61, align 8, !tbaa !30
  %vfn.i.i.i = getelementptr inbounds nuw i8, ptr %vtable.i.i.i, i64 48
  %64 = load ptr, ptr %vfn.i.i.i, align 8
  %call.i.i.i = call noundef signext i8 %64(ptr noundef nonnull align 8 dereferenceable(570) %61, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %if.then.i2.i.i, %if.end.i.i.i
  %retval.0.i.i.i = phi i8 [ %63, %if.then.i2.i.i ], [ %call.i.i.i, %if.end.i.i.i ]
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call148, i8 noundef signext %retval.0.i.i.i)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  %inc151 = add nuw nsw i32 %k.097, 1
  %65 = load i32, ptr %n, align 4, !tbaa !5
  %cmp.not.not = icmp slt i32 %k.097, %65
  br i1 %cmp.not.not, label %for.cond1.preheader, label %for.end152, !llvm.loop !57

for.end152:                                       ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %entry
  call void @llvm.lifetime.end.p0(i64 41616, ptr nonnull %a) #5
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
!17 = distinct !{!17, !10, !11, !15, !16}
!18 = distinct !{!18, !10, !11, !15}
!19 = distinct !{!19, !10, !11, !15}
!20 = distinct !{!20, !10, !11}
!21 = distinct !{!21, !10, !11, !15, !16}
!22 = distinct !{!22, !10, !11, !15}
!23 = distinct !{!23, !10, !11}
!24 = distinct !{!24, !10, !11}
!25 = distinct !{!25, !10, !11}
!26 = distinct !{!26, !10, !11, !15, !16}
!27 = distinct !{!27, !10, !11, !15}
!28 = distinct !{!28, !10, !11}
!29 = distinct !{!29, !10, !11}
!30 = !{!31, !31, i64 0}
!31 = !{!"vtable pointer", !8, i64 0}
!32 = !{!33, !47, i64 240}
!33 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !34, i64 0, !44, i64 216, !7, i64 224, !45, i64 225, !46, i64 232, !47, i64 240, !48, i64 248, !49, i64 256}
!34 = !{!"_ZTSSt8ios_base", !35, i64 8, !35, i64 16, !36, i64 24, !37, i64 28, !37, i64 32, !38, i64 40, !40, i64 48, !7, i64 64, !6, i64 192, !41, i64 200, !42, i64 208}
!35 = !{!"long", !7, i64 0}
!36 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!37 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!38 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !39, i64 0}
!39 = !{!"any pointer", !7, i64 0}
!40 = !{!"_ZTSNSt8ios_base6_WordsE", !39, i64 0, !35, i64 8}
!41 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !39, i64 0}
!42 = !{!"_ZTSSt6locale", !43, i64 0}
!43 = !{!"p1 _ZTSNSt6locale5_ImplE", !39, i64 0}
!44 = !{!"p1 _ZTSSo", !39, i64 0}
!45 = !{!"bool", !7, i64 0}
!46 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !39, i64 0}
!47 = !{!"p1 _ZTSSt5ctypeIcE", !39, i64 0}
!48 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !39, i64 0}
!49 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !39, i64 0}
!50 = !{!51, !7, i64 56}
!51 = !{!"_ZTSSt5ctypeIcE", !52, i64 0, !53, i64 16, !45, i64 24, !54, i64 32, !54, i64 40, !55, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!52 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!53 = !{!"p1 _ZTS15__locale_struct", !39, i64 0}
!54 = !{!"p1 int", !39, i64 0}
!55 = !{!"p1 short", !39, i64 0}
!56 = !{!7, !7, i64 0}
!57 = distinct !{!57, !10, !11}
