; ModuleID = '<stdin>'
source_filename = "/tmp/tmpgh8nlrbt.cpp"
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
  %a = alloca [100 x [100 x i32]], align 16
  %sum = alloca [101 x i32], align 16
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 40000, ptr nonnull %a) #6
  call void @llvm.lifetime.start.p0(i64 404, ptr nonnull %sum) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(404) %sum, i8 0, i64 404, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #6
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp.not98 = icmp slt i32 %0, 1
  br i1 %cmp.not98, label %for.end173, label %for.cond1.preheader.lr.ph

for.cond1.preheader.lr.ph:                        ; preds = %entry
  %arrayidx107 = getelementptr inbounds nuw i8, ptr %a, i64 404
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.cond1.preheader.lr.ph, %for.inc161
  %1 = phi i32 [ %0, %for.cond1.preheader.lr.ph ], [ %62, %for.inc161 ]
  %indvars.iv159 = phi i64 [ 1, %for.cond1.preheader.lr.ph ], [ %indvars.iv.next160, %for.inc161 ]
  %cmp2.not.not71 = icmp sgt i32 %1, 0
  br i1 %cmp2.not.not71, label %for.cond4.preheader, label %for.inc161

for.cond164.preheader:                            ; preds = %for.inc161
  %2 = icmp slt i32 %62, 1
  br i1 %2, label %for.end173, label %for.body166

for.cond14.preheader:                             ; preds = %for.inc11
  %cmp16.not.not95 = icmp sgt i32 %8, 1
  br i1 %cmp16.not.not95, label %for.cond18.preheader.lr.ph, label %for.inc161

for.cond18.preheader.lr.ph:                       ; preds = %for.cond14.preheader
  %arrayidx105 = getelementptr inbounds nuw [101 x i32], ptr %sum, i64 0, i64 %indvars.iv159
  %arrayidx105.promoted = load i32, ptr %arrayidx105, align 4, !tbaa !5
  br label %for.cond18.preheader

for.cond4.preheader:                              ; preds = %for.cond1.preheader, %for.inc11
  %3 = phi i32 [ %7, %for.inc11 ], [ %1, %for.cond1.preheader ]
  %4 = phi i32 [ %8, %for.inc11 ], [ %1, %for.cond1.preheader ]
  %indvars.iv105 = phi i64 [ %indvars.iv.next106, %for.inc11 ], [ 0, %for.cond1.preheader ]
  %cmp6.not.not69 = icmp sgt i32 %4, 0
  br i1 %cmp6.not.not69, label %for.body7, label %for.cond4.preheader.for.inc11_crit_edge

for.cond4.preheader.for.inc11_crit_edge:          ; preds = %for.cond4.preheader
  %.pre = sext i32 %4 to i64
  br label %for.inc11

for.body7:                                        ; preds = %for.cond4.preheader, %for.body7
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body7 ], [ 0, %for.cond4.preheader ]
  %arrayidx9 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv105, i64 %indvars.iv
  %call10 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx9)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %5 = load i32, ptr %n, align 4, !tbaa !5
  %6 = sext i32 %5 to i64
  %cmp6.not.not = icmp slt i64 %indvars.iv.next, %6
  br i1 %cmp6.not.not, label %for.body7, label %for.inc11, !llvm.loop !9

for.inc11:                                        ; preds = %for.body7, %for.cond4.preheader.for.inc11_crit_edge
  %.pre-phi = phi i64 [ %.pre, %for.cond4.preheader.for.inc11_crit_edge ], [ %6, %for.body7 ]
  %7 = phi i32 [ %3, %for.cond4.preheader.for.inc11_crit_edge ], [ %5, %for.body7 ]
  %8 = phi i32 [ %4, %for.cond4.preheader.for.inc11_crit_edge ], [ %5, %for.body7 ]
  %indvars.iv.next106 = add nuw nsw i64 %indvars.iv105, 1
  %cmp2.not.not = icmp slt i64 %indvars.iv.next106, %.pre-phi
  br i1 %cmp2.not.not, label %for.cond4.preheader, label %for.cond14.preheader, !llvm.loop !12

for.cond18.preheader:                             ; preds = %for.cond18.preheader.lr.ph, %for.inc158
  %indvar = phi i32 [ 0, %for.cond18.preheader.lr.ph ], [ %indvar.next, %for.inc158 ]
  %indvars.iv128 = phi i32 [ %8, %for.cond18.preheader.lr.ph ], [ %indvars.iv.next129, %for.inc158 ]
  %indvars.iv111.in = phi i32 [ %8, %for.cond18.preheader.lr.ph ], [ %indvars.iv111, %for.inc158 ]
  %add97 = phi i32 [ %arrayidx105.promoted, %for.cond18.preheader.lr.ph ], [ %add, %for.inc158 ]
  %j.196 = phi i32 [ 1, %for.cond18.preheader.lr.ph ], [ %inc159, %for.inc158 ]
  %9 = xor i32 %indvar, -1
  %10 = add i32 %8, %9
  %smax204 = call i32 @llvm.smax.i32(i32 %10, i32 0)
  %narrow = add nuw i32 %smax204, 1
  %11 = zext i32 %narrow to i64
  %12 = xor i32 %indvar, -1
  %13 = add i32 %8, %12
  %smax = call i32 @llvm.smax.i32(i32 %13, i32 0)
  %narrow221 = add nuw i32 %smax, 1
  %14 = zext i32 %narrow221 to i64
  %15 = zext i32 %indvars.iv111.in to i64
  %16 = xor i32 %indvar, -1
  %17 = add i32 %8, %16
  %18 = zext i32 %17 to i64
  %19 = add nsw i64 %18, -1
  %indvars.iv111 = add i32 %indvars.iv111.in, -1
  %smax122 = call i32 @llvm.smax.i32(i32 %indvars.iv111, i32 0)
  %20 = add nuw i32 %smax122, 1
  %wide.trip.count123 = zext i32 %20 to i64
  %min.iters.check206 = icmp slt i32 %10, 3
  %n.vec209 = and i64 %11, 4294967292
  %cmp.n218 = icmp eq i64 %n.vec209, %11
  %min.iters.check190 = icmp slt i32 %13, 3
  %n.vec193 = and i64 %14, 4294967292
  %cmp.n201 = icmp eq i64 %n.vec193, %14
  br label %for.body21

for.cond60.preheader:                             ; preds = %for.inc57
  %cmp62.not86 = icmp slt i32 %8, %j.196
  br i1 %cmp62.not86, label %for.end103, label %for.body63.preheader

for.body63.preheader:                             ; preds = %for.cond60.preheader
  %wide.trip.count140 = zext i32 %indvars.iv128 to i64
  %min.iters.check178 = icmp ult i32 %indvars.iv111.in, 4
  %n.vec181 = and i64 %15, 4294967292
  %cmp.n186 = icmp eq i64 %n.vec181, %15
  br label %for.body63

for.body21:                                       ; preds = %for.cond18.preheader, %for.inc57
  %indvars.iv119 = phi i64 [ 0, %for.cond18.preheader ], [ %indvars.iv.next120, %for.inc57 ]
  %arrayidx23 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv119
  %21 = load i32, ptr %arrayidx23, align 16, !tbaa !5
  br i1 %min.iters.check206, label %for.body28.preheader, label %vector.ph207

vector.ph207:                                     ; preds = %for.body21
  %broadcast.splatinsert210 = insertelement <4 x i32> poison, i32 %21, i64 0
  %broadcast.splat211 = shufflevector <4 x i32> %broadcast.splatinsert210, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body212

vector.body212:                                   ; preds = %vector.body212, %vector.ph207
  %index213 = phi i64 [ 0, %vector.ph207 ], [ %index.next216, %vector.body212 ]
  %vec.phi214 = phi <4 x i32> [ %broadcast.splat211, %vector.ph207 ], [ %23, %vector.body212 ]
  %22 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv119, i64 %index213
  %wide.load215 = load <4 x i32>, ptr %22, align 16, !tbaa !5
  %23 = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %vec.phi214, <4 x i32> %wide.load215)
  %index.next216 = add nuw i64 %index213, 4
  %24 = icmp eq i64 %index.next216, %n.vec209
  br i1 %24, label %middle.block217, label %vector.body212, !llvm.loop !14

middle.block217:                                  ; preds = %vector.body212
  %25 = call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %23)
  br i1 %cmp.n218, label %for.body44.lr.ph, label %for.body28.preheader

for.body28.preheader:                             ; preds = %for.body21, %middle.block217
  %indvars.iv108.ph = phi i64 [ 0, %for.body21 ], [ %n.vec209, %middle.block217 ]
  %min.074.ph = phi i32 [ %21, %for.body21 ], [ %25, %middle.block217 ]
  br label %for.body28

for.body44.lr.ph:                                 ; preds = %for.body28, %middle.block217
  %spec.select.lcssa = phi i32 [ %25, %middle.block217 ], [ %spec.select, %for.body28 ]
  br i1 %min.iters.check190, label %for.body44.preheader, label %vector.ph191

vector.ph191:                                     ; preds = %for.body44.lr.ph
  %broadcast.splatinsert194 = insertelement <4 x i32> poison, i32 %spec.select.lcssa, i64 0
  %broadcast.splat195 = shufflevector <4 x i32> %broadcast.splatinsert194, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body196

vector.body196:                                   ; preds = %vector.body196, %vector.ph191
  %index197 = phi i64 [ 0, %vector.ph191 ], [ %index.next199, %vector.body196 ]
  %26 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv119, i64 %index197
  %wide.load198 = load <4 x i32>, ptr %26, align 16, !tbaa !5
  %27 = sub nsw <4 x i32> %wide.load198, %broadcast.splat195
  store <4 x i32> %27, ptr %26, align 16, !tbaa !5
  %index.next199 = add nuw i64 %index197, 4
  %28 = icmp eq i64 %index.next199, %n.vec193
  br i1 %28, label %middle.block200, label %vector.body196, !llvm.loop !17

middle.block200:                                  ; preds = %vector.body196
  br i1 %cmp.n201, label %for.inc57, label %for.body44.preheader

for.body44.preheader:                             ; preds = %for.body44.lr.ph, %middle.block200
  %indvars.iv113.ph = phi i64 [ 0, %for.body44.lr.ph ], [ %n.vec193, %middle.block200 ]
  br label %for.body44

for.body28:                                       ; preds = %for.body28.preheader, %for.body28
  %indvars.iv108 = phi i64 [ %indvars.iv.next109, %for.body28 ], [ %indvars.iv108.ph, %for.body28.preheader ]
  %min.074 = phi i32 [ %spec.select, %for.body28 ], [ %min.074.ph, %for.body28.preheader ]
  %arrayidx32 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv119, i64 %indvars.iv108
  %29 = load i32, ptr %arrayidx32, align 4, !tbaa !5
  %spec.select = call i32 @llvm.smin.i32(i32 %min.074, i32 %29)
  %indvars.iv.next109 = add nuw nsw i64 %indvars.iv108, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next109, %wide.trip.count123
  br i1 %exitcond.not, label %for.body44.lr.ph, label %for.body28, !llvm.loop !18

for.body44:                                       ; preds = %for.body44.preheader, %for.body44
  %indvars.iv113 = phi i64 [ %indvars.iv.next114, %for.body44 ], [ %indvars.iv113.ph, %for.body44.preheader ]
  %arrayidx48 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv119, i64 %indvars.iv113
  %30 = load i32, ptr %arrayidx48, align 4, !tbaa !5
  %sub49 = sub nsw i32 %30, %spec.select.lcssa
  store i32 %sub49, ptr %arrayidx48, align 4, !tbaa !5
  %indvars.iv.next114 = add nuw nsw i64 %indvars.iv113, 1
  %exitcond118.not = icmp eq i64 %indvars.iv.next114, %wide.trip.count123
  br i1 %exitcond118.not, label %for.inc57, label %for.body44, !llvm.loop !19

for.inc57:                                        ; preds = %for.body44, %middle.block200
  %indvars.iv.next120 = add nuw nsw i64 %indvars.iv119, 1
  %exitcond124.not = icmp eq i64 %indvars.iv.next120, %wide.trip.count123
  br i1 %exitcond124.not, label %for.cond60.preheader, label %for.body21, !llvm.loop !20

for.body63:                                       ; preds = %for.body63.preheader, %for.inc101
  %indvars.iv137 = phi i64 [ 0, %for.body63.preheader ], [ %indvars.iv.next138, %for.inc101 ]
  %arrayidx66 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %indvars.iv137
  %31 = load i32, ptr %arrayidx66, align 4, !tbaa !5
  br i1 %min.iters.check178, label %for.body70.preheader, label %vector.ph179

vector.ph179:                                     ; preds = %for.body63
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %31, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body182

vector.body182:                                   ; preds = %vector.body182, %vector.ph179
  %index183 = phi i64 [ 0, %vector.ph179 ], [ %index.next184, %vector.body182 ]
  %vec.phi = phi <4 x i32> [ %broadcast.splat, %vector.ph179 ], [ %47, %vector.body182 ]
  %32 = or disjoint i64 %index183, 1
  %33 = or disjoint i64 %index183, 2
  %34 = or disjoint i64 %index183, 3
  %35 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %index183, i64 %indvars.iv137
  %36 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %32, i64 %indvars.iv137
  %37 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %33, i64 %indvars.iv137
  %38 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %34, i64 %indvars.iv137
  %39 = load i32, ptr %35, align 4, !tbaa !5
  %40 = load i32, ptr %36, align 4, !tbaa !5
  %41 = load i32, ptr %37, align 4, !tbaa !5
  %42 = load i32, ptr %38, align 4, !tbaa !5
  %43 = insertelement <4 x i32> poison, i32 %39, i64 0
  %44 = insertelement <4 x i32> %43, i32 %40, i64 1
  %45 = insertelement <4 x i32> %44, i32 %41, i64 2
  %46 = insertelement <4 x i32> %45, i32 %42, i64 3
  %47 = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %vec.phi, <4 x i32> %46)
  %index.next184 = add nuw i64 %index183, 4
  %48 = icmp eq i64 %index.next184, %n.vec181
  br i1 %48, label %middle.block185, label %vector.body182, !llvm.loop !21

middle.block185:                                  ; preds = %vector.body182
  %49 = call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %47)
  br i1 %cmp.n186, label %for.body88.lr.ph, label %for.body70.preheader

for.body70.preheader:                             ; preds = %for.body63, %middle.block185
  %indvars.iv125.ph = phi i64 [ 0, %for.body63 ], [ %n.vec181, %middle.block185 ]
  %min.281.ph = phi i32 [ %31, %for.body63 ], [ %49, %middle.block185 ]
  br label %for.body70

for.body88.lr.ph:                                 ; preds = %for.body70, %middle.block185
  %spec.select68.lcssa = phi i32 [ %49, %middle.block185 ], [ %spec.select68, %for.body70 ]
  br label %for.body88

for.body70:                                       ; preds = %for.body70.preheader, %for.body70
  %indvars.iv125 = phi i64 [ %indvars.iv.next126, %for.body70 ], [ %indvars.iv125.ph, %for.body70.preheader ]
  %min.281 = phi i32 [ %spec.select68, %for.body70 ], [ %min.281.ph, %for.body70.preheader ]
  %arrayidx74 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv125, i64 %indvars.iv137
  %50 = load i32, ptr %arrayidx74, align 4, !tbaa !5
  %spec.select68 = call i32 @llvm.smin.i32(i32 %min.281, i32 %50)
  %indvars.iv.next126 = add nuw nsw i64 %indvars.iv125, 1
  %exitcond131.not = icmp eq i64 %indvars.iv.next126, %wide.trip.count140
  br i1 %exitcond131.not, label %for.body88.lr.ph, label %for.body70, !llvm.loop !22

for.body88:                                       ; preds = %for.body88.lr.ph, %for.body88
  %indvars.iv132 = phi i64 [ 0, %for.body88.lr.ph ], [ %indvars.iv.next133, %for.body88 ]
  %arrayidx92 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv132, i64 %indvars.iv137
  %51 = load i32, ptr %arrayidx92, align 4, !tbaa !5
  %sub93 = sub nsw i32 %51, %spec.select68.lcssa
  store i32 %sub93, ptr %arrayidx92, align 4, !tbaa !5
  %indvars.iv.next133 = add nuw nsw i64 %indvars.iv132, 1
  %exitcond136.not = icmp eq i64 %indvars.iv.next133, %wide.trip.count140
  br i1 %exitcond136.not, label %for.inc101, label %for.body88, !llvm.loop !23

for.inc101:                                       ; preds = %for.body88
  %indvars.iv.next138 = add nuw nsw i64 %indvars.iv137, 1
  %exitcond141.not = icmp eq i64 %indvars.iv.next138, %wide.trip.count140
  br i1 %exitcond141.not, label %for.end103, label %for.body63, !llvm.loop !24

for.end103:                                       ; preds = %for.inc101, %for.cond60.preheader
  %52 = load i32, ptr %arrayidx107, align 4, !tbaa !5
  %add = add nsw i32 %52, %add97
  %53 = sub nsw i32 %j.196, %8
  %cmp113.not88 = icmp sgt i32 %53, -2
  br i1 %cmp113.not88, label %for.inc158, label %for.body114.preheader

for.body114.preheader:                            ; preds = %for.end103
  %wide.trip.count145 = zext i32 %indvars.iv111 to i64
  br label %for.body114

for.cond137.preheader.preheader:                  ; preds = %for.body114
  %wide.trip.count156 = zext i32 %indvars.iv111 to i64
  %min.iters.check = icmp ult i64 %19, 4
  %n.vec = and i64 %19, -4
  %54 = or disjoint i64 %n.vec, 1
  %cmp.n = icmp eq i64 %19, %n.vec
  br label %for.cond137.preheader

for.body114:                                      ; preds = %for.body114.preheader, %for.body114
  %indvars.iv142 = phi i64 [ 1, %for.body114.preheader ], [ %indvars.iv.next143, %for.body114 ]
  %indvars.iv.next143 = add nuw nsw i64 %indvars.iv142, 1
  %arrayidx118 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %indvars.iv.next143
  %55 = load i32, ptr %arrayidx118, align 4, !tbaa !5
  %arrayidx121 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %indvars.iv142
  store i32 %55, ptr %arrayidx121, align 4, !tbaa !5
  %arrayidx124 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv.next143
  %56 = load i32, ptr %arrayidx124, align 16, !tbaa !5
  %arrayidx127 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv142
  store i32 %56, ptr %arrayidx127, align 16, !tbaa !5
  %exitcond146.not = icmp eq i64 %indvars.iv.next143, %wide.trip.count145
  br i1 %exitcond146.not, label %for.cond137.preheader.preheader, label %for.body114, !llvm.loop !25

for.cond137.preheader:                            ; preds = %for.cond137.preheader.preheader, %for.cond137.for.inc155_crit_edge
  %indvars.iv153 = phi i64 [ 1, %for.cond137.preheader.preheader ], [ %indvars.iv.next154, %for.cond137.for.inc155_crit_edge ]
  %indvars.iv.next154 = add nuw nsw i64 %indvars.iv153, 1
  br i1 %min.iters.check, label %for.body141.preheader, label %vector.body

vector.body:                                      ; preds = %for.cond137.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %for.cond137.preheader ]
  %offset.idx = or disjoint i64 %index, 1
  %57 = or disjoint i64 %index, 2
  %58 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv.next154, i64 %57
  %wide.load = load <4 x i32>, ptr %58, align 8, !tbaa !5
  %59 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv153, i64 %offset.idx
  store <4 x i32> %wide.load, ptr %59, align 4, !tbaa !5
  %index.next = add nuw i64 %index, 4
  %60 = icmp eq i64 %index.next, %n.vec
  br i1 %60, label %middle.block, label %vector.body, !llvm.loop !26

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %for.cond137.for.inc155_crit_edge, label %for.body141.preheader

for.body141.preheader:                            ; preds = %for.cond137.preheader, %middle.block
  %indvars.iv148.ph = phi i64 [ 1, %for.cond137.preheader ], [ %54, %middle.block ]
  br label %for.body141

for.body141:                                      ; preds = %for.body141.preheader, %for.body141
  %indvars.iv148 = phi i64 [ %indvars.iv.next149, %for.body141 ], [ %indvars.iv148.ph, %for.body141.preheader ]
  %indvars.iv.next149 = add nuw nsw i64 %indvars.iv148, 1
  %arrayidx147 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv.next154, i64 %indvars.iv.next149
  %61 = load i32, ptr %arrayidx147, align 4, !tbaa !5
  %arrayidx151 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv153, i64 %indvars.iv148
  store i32 %61, ptr %arrayidx151, align 4, !tbaa !5
  %exitcond152.not = icmp eq i64 %indvars.iv.next149, %wide.trip.count156
  br i1 %exitcond152.not, label %for.cond137.for.inc155_crit_edge, label %for.body141, !llvm.loop !27

for.cond137.for.inc155_crit_edge:                 ; preds = %for.body141, %middle.block
  %exitcond157.not = icmp eq i64 %indvars.iv.next154, %wide.trip.count156
  br i1 %exitcond157.not, label %for.inc158, label %for.cond137.preheader, !llvm.loop !28

for.inc158:                                       ; preds = %for.cond137.for.inc155_crit_edge, %for.end103
  %inc159 = add nuw nsw i32 %j.196, 1
  %indvars.iv.next129 = add i32 %indvars.iv128, -1
  %exitcond158.not = icmp eq i32 %inc159, %8
  %indvar.next = add i32 %indvar, 1
  br i1 %exitcond158.not, label %for.cond14.for.inc161_crit_edge, label %for.cond18.preheader, !llvm.loop !29

for.cond14.for.inc161_crit_edge:                  ; preds = %for.inc158
  store i32 %add, ptr %arrayidx105, align 4, !tbaa !5
  br label %for.inc161

for.inc161:                                       ; preds = %for.cond1.preheader, %for.cond14.for.inc161_crit_edge, %for.cond14.preheader
  %62 = phi i32 [ %7, %for.cond14.for.inc161_crit_edge ], [ %7, %for.cond14.preheader ], [ %1, %for.cond1.preheader ]
  %indvars.iv.next160 = add nuw nsw i64 %indvars.iv159, 1
  %63 = sext i32 %62 to i64
  %cmp.not.not = icmp slt i64 %indvars.iv159, %63
  br i1 %cmp.not.not, label %for.cond1.preheader, label %for.cond164.preheader, !llvm.loop !30

for.body166:                                      ; preds = %for.cond164.preheader, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %indvars.iv162 = phi i64 [ %indvars.iv.next163, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit ], [ 1, %for.cond164.preheader ]
  %arrayidx168 = getelementptr inbounds nuw [101 x i32], ptr %sum, i64 0, i64 %indvars.iv162
  %64 = load i32, ptr %arrayidx168, align 4, !tbaa !5
  %call169 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %64)
  %vtable.i = load ptr, ptr %call169, align 8, !tbaa !31
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call169, i64 %vbase.offset.i
  %_M_ctype.i.i = getelementptr inbounds nuw i8, ptr %add.ptr.i, i64 240
  %65 = load ptr, ptr %_M_ctype.i.i, align 8, !tbaa !33
  %tobool.not.i.i.i = icmp eq ptr %65, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

if.then.i.i.i:                                    ; preds = %for.body166
  call void @_ZSt16__throw_bad_castv() #7
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %for.body166
  %_M_widen_ok.i.i.i = getelementptr inbounds nuw i8, ptr %65, i64 56
  %66 = load i8, ptr %_M_widen_ok.i.i.i, align 8, !tbaa !51
  %tobool.not.i1.i.i = icmp eq i8 %66, 0
  br i1 %tobool.not.i1.i.i, label %if.end.i.i.i, label %if.then.i2.i.i

if.then.i2.i.i:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %arrayidx.i.i.i = getelementptr inbounds nuw i8, ptr %65, i64 67
  %67 = load i8, ptr %arrayidx.i.i.i, align 1, !tbaa !57
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

if.end.i.i.i:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %65)
  %vtable.i.i.i = load ptr, ptr %65, align 8, !tbaa !31
  %vfn.i.i.i = getelementptr inbounds nuw i8, ptr %vtable.i.i.i, i64 48
  %68 = load ptr, ptr %vfn.i.i.i, align 8
  %call.i.i.i = call noundef signext i8 %68(ptr noundef nonnull align 8 dereferenceable(570) %65, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %if.then.i2.i.i, %if.end.i.i.i
  %retval.0.i.i.i = phi i8 [ %67, %if.then.i2.i.i ], [ %call.i.i.i, %if.end.i.i.i ]
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call169, i8 noundef signext %retval.0.i.i.i)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  %indvars.iv.next163 = add nuw nsw i64 %indvars.iv162, 1
  %69 = load i32, ptr %n, align 4, !tbaa !5
  %70 = sext i32 %69 to i64
  %cmp165.not.not = icmp slt i64 %indvars.iv162, %70
  br i1 %cmp165.not.not, label %for.body166, label %for.end173, !llvm.loop !58

for.end173:                                       ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %entry, %for.cond164.preheader
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #6
  call void @llvm.lifetime.end.p0(i64 404, ptr nonnull %sum) #6
  call void @llvm.lifetime.end.p0(i64 40000, ptr nonnull %a) #6
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #4

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smin.v4i32(<4 x i32>, <4 x i32>) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smin.v4i32(<4 x i32>) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
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
!30 = distinct !{!30, !10, !11}
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
