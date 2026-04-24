; ModuleID = '<stdin>'
source_filename = "/tmp/tmpcuueydtc.cpp"
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
  %__c.addr.i = alloca i8, align 1
  %n = alloca i32, align 4
  %a = alloca [100 x [100 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #4
  call void @llvm.lifetime.start.p0(i64 40000, ptr nonnull %a) #4
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp97 = icmp sgt i32 %0, 0
  br i1 %cmp97, label %for.cond1.preheader.lr.ph, label %for.end148

for.cond1.preheader.lr.ph:                        ; preds = %entry
  %arrayidx96 = getelementptr inbounds nuw i8, ptr %a, i64 404
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.cond1.preheader.lr.ph, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
  %1 = phi i32 [ %0, %for.cond1.preheader.lr.ph ], [ %52, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit ]
  %i.098 = phi i32 [ 0, %for.cond1.preheader.lr.ph ], [ %inc147, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit ]
  %cmp269 = icmp sgt i32 %1, 0
  br i1 %cmp269, label %for.cond4.preheader, label %for.end143

for.cond13.preheader:                             ; preds = %for.inc10
  %cmp1493 = icmp sgt i32 %8, 1
  br i1 %cmp1493, label %for.cond16.preheader.preheader, label %for.end143

for.cond16.preheader.preheader:                   ; preds = %for.cond13.preheader
  %2 = add nsw i32 %8, -1
  %3 = zext i32 %2 to i64
  %4 = zext nneg i32 %8 to i64
  br label %for.cond16.preheader

for.cond4.preheader:                              ; preds = %for.cond1.preheader, %for.inc10
  %5 = phi i32 [ %8, %for.inc10 ], [ %1, %for.cond1.preheader ]
  %indvars.iv102 = phi i64 [ %indvars.iv.next103, %for.inc10 ], [ 0, %for.cond1.preheader ]
  %cmp567 = icmp sgt i32 %5, 0
  br i1 %cmp567, label %for.body6, label %for.cond4.preheader.for.inc10_crit_edge

for.cond4.preheader.for.inc10_crit_edge:          ; preds = %for.cond4.preheader
  %.pre = sext i32 %5 to i64
  br label %for.inc10

for.body6:                                        ; preds = %for.cond4.preheader, %for.body6
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body6 ], [ 0, %for.cond4.preheader ]
  %arrayidx8 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv102, i64 %indvars.iv
  %call9 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx8)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %6 = load i32, ptr %n, align 4, !tbaa !5
  %7 = sext i32 %6 to i64
  %cmp5 = icmp slt i64 %indvars.iv.next, %7
  br i1 %cmp5, label %for.body6, label %for.inc10, !llvm.loop !9

for.inc10:                                        ; preds = %for.body6, %for.cond4.preheader.for.inc10_crit_edge
  %.pre-phi = phi i64 [ %.pre, %for.cond4.preheader.for.inc10_crit_edge ], [ %7, %for.body6 ]
  %8 = phi i32 [ %5, %for.cond4.preheader.for.inc10_crit_edge ], [ %6, %for.body6 ]
  %indvars.iv.next103 = add nuw nsw i64 %indvars.iv102, 1
  %cmp2 = icmp slt i64 %indvars.iv.next103, %.pre-phi
  br i1 %cmp2, label %for.cond4.preheader, label %for.cond13.preheader, !llvm.loop !12

for.cond13.loopexit:                              ; preds = %for.cond122.for.inc139_crit_edge.us
  %cmp14 = icmp sgt i64 %indvars.iv153, 2
  %indvars.iv.next152 = add nsw i64 %indvars.iv151, -1
  %indvar.next = add i64 %indvar, 1
  br i1 %cmp14, label %for.cond16.preheader, label %for.end143, !llvm.loop !14

for.cond16.preheader:                             ; preds = %for.cond16.preheader.preheader, %for.cond13.loopexit
  %indvar = phi i64 [ 0, %for.cond16.preheader.preheader ], [ %indvar.next, %for.cond13.loopexit ]
  %indvars.iv153 = phi i64 [ %4, %for.cond16.preheader.preheader ], [ %indvars.iv.next154, %for.cond13.loopexit ]
  %indvars.iv151 = phi i64 [ %3, %for.cond16.preheader.preheader ], [ %indvars.iv.next152, %for.cond13.loopexit ]
  %sum.095 = phi i32 [ 0, %for.cond16.preheader.preheader ], [ %add, %for.cond13.loopexit ]
  %9 = xor i64 %indvar, -1
  %10 = add i64 %9, %3
  %min.iters.check192 = icmp ult i64 %indvars.iv153, 4
  %n.vec195 = and i64 %indvars.iv153, -4
  %cmp.n204 = icmp eq i64 %indvars.iv153, %n.vec195
  %min.iters.check178 = icmp ult i64 %indvars.iv153, 4
  %n.vec181 = and i64 %indvars.iv153, -4
  %cmp.n189 = icmp eq i64 %indvars.iv153, %n.vec181
  br label %for.body18

for.body18:                                       ; preds = %for.cond16.preheader, %for.inc51
  %indvars.iv113 = phi i64 [ 0, %for.cond16.preheader ], [ %indvars.iv.next114, %for.inc51 ]
  %arrayidx20 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv113
  %11 = load i32, ptr %arrayidx20, align 16, !tbaa !5
  br i1 %min.iters.check192, label %for.body24.preheader, label %vector.ph193

vector.ph193:                                     ; preds = %for.body18
  %broadcast.splatinsert196 = insertelement <4 x i32> poison, i32 %11, i64 0
  %broadcast.splat197 = shufflevector <4 x i32> %broadcast.splatinsert196, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body198

vector.body198:                                   ; preds = %vector.body198, %vector.ph193
  %index199 = phi i64 [ 0, %vector.ph193 ], [ %index.next202, %vector.body198 ]
  %vec.phi200 = phi <4 x i32> [ %broadcast.splat197, %vector.ph193 ], [ %13, %vector.body198 ]
  %12 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv113, i64 %index199
  %wide.load201 = load <4 x i32>, ptr %12, align 16, !tbaa !5
  %13 = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %vec.phi200, <4 x i32> %wide.load201)
  %index.next202 = add nuw i64 %index199, 4
  %14 = icmp eq i64 %index.next202, %n.vec195
  br i1 %14, label %middle.block203, label %vector.body198, !llvm.loop !15

middle.block203:                                  ; preds = %vector.body198
  %15 = call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %13)
  br i1 %cmp.n204, label %for.body39.lr.ph, label %for.body24.preheader

for.body24.preheader:                             ; preds = %for.body18, %middle.block203
  %indvars.iv105.ph = phi i64 [ 0, %for.body18 ], [ %n.vec195, %middle.block203 ]
  %min.073.ph = phi i32 [ %11, %for.body18 ], [ %15, %middle.block203 ]
  br label %for.body24

for.body39.lr.ph:                                 ; preds = %for.body24, %middle.block203
  %spec.select.lcssa = phi i32 [ %15, %middle.block203 ], [ %spec.select, %for.body24 ]
  br i1 %min.iters.check178, label %for.body39.preheader, label %vector.ph179

vector.ph179:                                     ; preds = %for.body39.lr.ph
  %broadcast.splatinsert182 = insertelement <4 x i32> poison, i32 %spec.select.lcssa, i64 0
  %broadcast.splat183 = shufflevector <4 x i32> %broadcast.splatinsert182, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body184

vector.body184:                                   ; preds = %vector.body184, %vector.ph179
  %index185 = phi i64 [ 0, %vector.ph179 ], [ %index.next187, %vector.body184 ]
  %16 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv113, i64 %index185
  %wide.load186 = load <4 x i32>, ptr %16, align 16, !tbaa !5
  %17 = sub nsw <4 x i32> %wide.load186, %broadcast.splat183
  store <4 x i32> %17, ptr %16, align 16, !tbaa !5
  %index.next187 = add nuw i64 %index185, 4
  %18 = icmp eq i64 %index.next187, %n.vec181
  br i1 %18, label %middle.block188, label %vector.body184, !llvm.loop !18

middle.block188:                                  ; preds = %vector.body184
  br i1 %cmp.n189, label %for.inc51, label %for.body39.preheader

for.body39.preheader:                             ; preds = %for.body39.lr.ph, %middle.block188
  %indvars.iv108.ph = phi i64 [ 0, %for.body39.lr.ph ], [ %n.vec181, %middle.block188 ]
  br label %for.body39

for.body24:                                       ; preds = %for.body24.preheader, %for.body24
  %indvars.iv105 = phi i64 [ %indvars.iv.next106, %for.body24 ], [ %indvars.iv105.ph, %for.body24.preheader ]
  %min.073 = phi i32 [ %spec.select, %for.body24 ], [ %min.073.ph, %for.body24.preheader ]
  %arrayidx28 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv113, i64 %indvars.iv105
  %19 = load i32, ptr %arrayidx28, align 4, !tbaa !5
  %spec.select = call i32 @llvm.smin.i32(i32 %min.073, i32 %19)
  %indvars.iv.next106 = add nuw nsw i64 %indvars.iv105, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next106, %indvars.iv153
  br i1 %exitcond.not, label %for.body39.lr.ph, label %for.body24, !llvm.loop !19

for.body39:                                       ; preds = %for.body39.preheader, %for.body39
  %indvars.iv108 = phi i64 [ %indvars.iv.next109, %for.body39 ], [ %indvars.iv108.ph, %for.body39.preheader ]
  %arrayidx43 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv113, i64 %indvars.iv108
  %20 = load i32, ptr %arrayidx43, align 4, !tbaa !5
  %sub = sub nsw i32 %20, %spec.select.lcssa
  store i32 %sub, ptr %arrayidx43, align 4, !tbaa !5
  %indvars.iv.next109 = add nuw nsw i64 %indvars.iv108, 1
  %exitcond112.not = icmp eq i64 %indvars.iv.next109, %indvars.iv153
  br i1 %exitcond112.not, label %for.inc51, label %for.body39, !llvm.loop !20

for.inc51:                                        ; preds = %for.body39, %middle.block188
  %indvars.iv.next114 = add nuw nsw i64 %indvars.iv113, 1
  %exitcond117.not = icmp eq i64 %indvars.iv.next114, %indvars.iv153
  br i1 %exitcond117.not, label %for.body56.preheader, label %for.body18, !llvm.loop !21

for.body56.preheader:                             ; preds = %for.inc51
  %min.iters.check167 = icmp ult i64 %indvars.iv153, 4
  %n.vec170 = and i64 %indvars.iv153, -4
  %cmp.n175 = icmp eq i64 %indvars.iv153, %n.vec170
  br label %for.body56

for.body56:                                       ; preds = %for.body56.preheader, %for.inc92
  %indvars.iv128 = phi i64 [ %indvars.iv.next129, %for.inc92 ], [ 0, %for.body56.preheader ]
  %arrayidx59 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %indvars.iv128
  %21 = load i32, ptr %arrayidx59, align 4, !tbaa !5
  br i1 %min.iters.check167, label %for.body62.preheader, label %vector.ph168

vector.ph168:                                     ; preds = %for.body56
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %21, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body171

vector.body171:                                   ; preds = %vector.body171, %vector.ph168
  %index172 = phi i64 [ 0, %vector.ph168 ], [ %index.next173, %vector.body171 ]
  %vec.phi = phi <4 x i32> [ %broadcast.splat, %vector.ph168 ], [ %37, %vector.body171 ]
  %22 = or disjoint i64 %index172, 1
  %23 = or disjoint i64 %index172, 2
  %24 = or disjoint i64 %index172, 3
  %25 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %index172, i64 %indvars.iv128
  %26 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %22, i64 %indvars.iv128
  %27 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %23, i64 %indvars.iv128
  %28 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %24, i64 %indvars.iv128
  %29 = load i32, ptr %25, align 4, !tbaa !5
  %30 = load i32, ptr %26, align 4, !tbaa !5
  %31 = load i32, ptr %27, align 4, !tbaa !5
  %32 = load i32, ptr %28, align 4, !tbaa !5
  %33 = insertelement <4 x i32> poison, i32 %29, i64 0
  %34 = insertelement <4 x i32> %33, i32 %30, i64 1
  %35 = insertelement <4 x i32> %34, i32 %31, i64 2
  %36 = insertelement <4 x i32> %35, i32 %32, i64 3
  %37 = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %vec.phi, <4 x i32> %36)
  %index.next173 = add nuw i64 %index172, 4
  %38 = icmp eq i64 %index.next173, %n.vec170
  br i1 %38, label %middle.block174, label %vector.body171, !llvm.loop !22

middle.block174:                                  ; preds = %vector.body171
  %39 = call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %37)
  br i1 %cmp.n175, label %for.body79.lr.ph, label %for.body62.preheader

for.body62.preheader:                             ; preds = %for.body56, %middle.block174
  %indvars.iv118.ph = phi i64 [ 0, %for.body56 ], [ %n.vec170, %middle.block174 ]
  %min.280.ph = phi i32 [ %21, %for.body56 ], [ %39, %middle.block174 ]
  br label %for.body62

for.body79.lr.ph:                                 ; preds = %for.body62, %middle.block174
  %spec.select66.lcssa = phi i32 [ %39, %middle.block174 ], [ %spec.select66, %for.body62 ]
  br label %for.body79

for.body62:                                       ; preds = %for.body62.preheader, %for.body62
  %indvars.iv118 = phi i64 [ %indvars.iv.next119, %for.body62 ], [ %indvars.iv118.ph, %for.body62.preheader ]
  %min.280 = phi i32 [ %spec.select66, %for.body62 ], [ %min.280.ph, %for.body62.preheader ]
  %arrayidx66 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv118, i64 %indvars.iv128
  %40 = load i32, ptr %arrayidx66, align 4, !tbaa !5
  %spec.select66 = call i32 @llvm.smin.i32(i32 %min.280, i32 %40)
  %indvars.iv.next119 = add nuw nsw i64 %indvars.iv118, 1
  %exitcond122.not = icmp eq i64 %indvars.iv.next119, %indvars.iv153
  br i1 %exitcond122.not, label %for.body79.lr.ph, label %for.body62, !llvm.loop !23

for.body79:                                       ; preds = %for.body79.lr.ph, %for.body79
  %indvars.iv123 = phi i64 [ 0, %for.body79.lr.ph ], [ %indvars.iv.next124, %for.body79 ]
  %arrayidx83 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv123, i64 %indvars.iv128
  %41 = load i32, ptr %arrayidx83, align 4, !tbaa !5
  %sub84 = sub nsw i32 %41, %spec.select66.lcssa
  store i32 %sub84, ptr %arrayidx83, align 4, !tbaa !5
  %indvars.iv.next124 = add nuw nsw i64 %indvars.iv123, 1
  %exitcond127.not = icmp eq i64 %indvars.iv.next124, %indvars.iv153
  br i1 %exitcond127.not, label %for.inc92, label %for.body79, !llvm.loop !24

for.inc92:                                        ; preds = %for.body79
  %indvars.iv.next129 = add nuw nsw i64 %indvars.iv128, 1
  %exitcond132.not = icmp eq i64 %indvars.iv.next129, %indvars.iv153
  br i1 %exitcond132.not, label %for.end94, label %for.body56, !llvm.loop !25

for.end94:                                        ; preds = %for.inc92
  %42 = load i32, ptr %arrayidx96, align 4, !tbaa !5
  %add = add nsw i32 %42, %sum.095
  %indvars.iv.next154 = add nsw i64 %indvars.iv153, -1
  %cmp9986 = icmp samesign ugt i64 %indvars.iv153, 2
  br i1 %cmp9986, label %for.body100, label %for.end143

for.cond122.preheader.us:                         ; preds = %for.cond122.preheader.us.preheader, %for.cond122.for.inc139_crit_edge.us
  %indvars.iv146 = phi i64 [ %indvars.iv.next147, %for.cond122.for.inc139_crit_edge.us ], [ 1, %for.cond122.preheader.us.preheader ]
  %indvars.iv.next147 = add nuw nsw i64 %indvars.iv146, 1
  br i1 %min.iters.check, label %for.body125.us.preheader, label %vector.body

vector.body:                                      ; preds = %for.cond122.preheader.us, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %for.cond122.preheader.us ]
  %offset.idx = or disjoint i64 %index, 1
  %43 = or disjoint i64 %index, 2
  %44 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv.next147, i64 %43
  %wide.load = load <4 x i32>, ptr %44, align 8, !tbaa !5
  %45 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv146, i64 %offset.idx
  store <4 x i32> %wide.load, ptr %45, align 4, !tbaa !5
  %index.next = add nuw i64 %index, 4
  %46 = icmp eq i64 %index.next, %n.vec
  br i1 %46, label %middle.block, label %vector.body, !llvm.loop !26

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %for.cond122.for.inc139_crit_edge.us, label %for.body125.us.preheader

for.body125.us.preheader:                         ; preds = %for.cond122.preheader.us, %middle.block
  %indvars.iv141.ph = phi i64 [ 1, %for.cond122.preheader.us ], [ %50, %middle.block ]
  br label %for.body125.us

for.body125.us:                                   ; preds = %for.body125.us.preheader, %for.body125.us
  %indvars.iv141 = phi i64 [ %indvars.iv.next142, %for.body125.us ], [ %indvars.iv141.ph, %for.body125.us.preheader ]
  %indvars.iv.next142 = add nuw nsw i64 %indvars.iv141, 1
  %arrayidx131.us = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv.next147, i64 %indvars.iv.next142
  %47 = load i32, ptr %arrayidx131.us, align 4, !tbaa !5
  %arrayidx135.us = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv146, i64 %indvars.iv141
  store i32 %47, ptr %arrayidx135.us, align 4, !tbaa !5
  %exitcond145.not = icmp eq i64 %indvars.iv.next142, %indvars.iv151
  br i1 %exitcond145.not, label %for.cond122.for.inc139_crit_edge.us, label %for.body125.us, !llvm.loop !27

for.cond122.for.inc139_crit_edge.us:              ; preds = %for.body125.us, %middle.block
  %exitcond150.not = icmp eq i64 %indvars.iv.next147, %indvars.iv151
  br i1 %exitcond150.not, label %for.cond13.loopexit, label %for.cond122.preheader.us, !llvm.loop !28

for.body100:                                      ; preds = %for.end94, %for.body100
  %indvars.iv133 = phi i64 [ %indvars.iv.next134, %for.body100 ], [ 1, %for.end94 ]
  %indvars.iv.next134 = add nuw nsw i64 %indvars.iv133, 1
  %arrayidx103 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv.next134
  %48 = load i32, ptr %arrayidx103, align 16, !tbaa !5
  %arrayidx106 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv133
  store i32 %48, ptr %arrayidx106, align 16, !tbaa !5
  %arrayidx111 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %indvars.iv.next134
  %49 = load i32, ptr %arrayidx111, align 4, !tbaa !5
  %arrayidx114 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %indvars.iv133
  store i32 %49, ptr %arrayidx114, align 4, !tbaa !5
  %exitcond139.not = icmp eq i64 %indvars.iv.next134, %indvars.iv151
  br i1 %exitcond139.not, label %for.cond122.preheader.us.preheader, label %for.body100, !llvm.loop !29

for.cond122.preheader.us.preheader:               ; preds = %for.body100
  %min.iters.check = icmp ult i64 %10, 4
  %n.vec = and i64 %10, -4
  %50 = or disjoint i64 %n.vec, 1
  %cmp.n = icmp eq i64 %10, %n.vec
  br label %for.cond122.preheader.us

for.end143:                                       ; preds = %for.cond13.loopexit, %for.end94, %for.cond1.preheader, %for.cond13.preheader
  %sum.0.lcssa = phi i32 [ 0, %for.cond13.preheader ], [ 0, %for.cond1.preheader ], [ %add, %for.end94 ], [ %add, %for.cond13.loopexit ]
  %call144 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %sum.0.lcssa)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__c.addr.i)
  store i8 10, ptr %__c.addr.i, align 1, !tbaa !30
  %vtable.i = load ptr, ptr %call144, align 8, !tbaa !31
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call144, i64 %vbase.offset.i
  %_M_width.i.i = getelementptr inbounds nuw i8, ptr %add.ptr.i, i64 16
  %51 = load i64, ptr %_M_width.i.i, align 8, !tbaa !33
  %cmp.not.i = icmp eq i64 %51, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %for.end143
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %call144, ptr noundef nonnull %__c.addr.i, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

if.end.i:                                         ; preds = %for.end143
  %call2.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call144, i8 noundef signext 10)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %if.then.i, %if.end.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__c.addr.i)
  %inc147 = add nuw nsw i32 %i.098, 1
  %52 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %inc147, %52
  br i1 %cmp, label %for.cond1.preheader, label %for.end148, !llvm.loop !44

for.end148:                                       ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit, %entry
  call void @llvm.lifetime.end.p0(i64 40000, ptr nonnull %a) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #4
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smin.v4i32(<4 x i32>, <4 x i32>) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smin.v4i32(<4 x i32>) #3

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

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
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11, !16, !17}
!16 = !{!"llvm.loop.isvectorized", i32 1}
!17 = !{!"llvm.loop.unroll.runtime.disable"}
!18 = distinct !{!18, !10, !11, !16, !17}
!19 = distinct !{!19, !10, !11, !16}
!20 = distinct !{!20, !10, !11, !16}
!21 = distinct !{!21, !10, !11}
!22 = distinct !{!22, !10, !11, !16, !17}
!23 = distinct !{!23, !10, !11, !16}
!24 = distinct !{!24, !10, !11}
!25 = distinct !{!25, !10, !11}
!26 = distinct !{!26, !10, !11, !16, !17}
!27 = distinct !{!27, !10, !11, !16}
!28 = distinct !{!28, !10, !11}
!29 = distinct !{!29, !10, !11}
!30 = !{!7, !7, i64 0}
!31 = !{!32, !32, i64 0}
!32 = !{!"vtable pointer", !8, i64 0}
!33 = !{!34, !35, i64 16}
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
!44 = distinct !{!44, !10, !11}
