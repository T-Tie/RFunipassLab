; ModuleID = '<stdin>'
source_filename = "/tmp/tmpw23qdzlq.cpp"
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
  %a = alloca [200 x [200 x i32]], align 16
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 160000, ptr nonnull %a) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #5
  store i32 0, ptr %n, align 4, !tbaa !5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %.fr = freeze i32 %0
  %cmp100 = icmp sgt i32 %.fr, 0
  br i1 %cmp100, label %for.cond.preheader.lr.ph, label %while.end

for.cond.preheader.lr.ph:                         ; preds = %entry
  %cmp12.not.not94.not = icmp eq i32 %.fr, 1
  %arrayidx95 = getelementptr inbounds nuw i8, ptr %a, i64 804
  br i1 %cmp12.not.not94.not, label %for.cond.for.end10_crit_edge.split.us.us147, label %for.cond.preheader.us.preheader

for.cond.preheader.us.preheader:                  ; preds = %for.cond.preheader.lr.ph
  %wide.trip.count157 = zext nneg i32 %.fr to i64
  %1 = add nsw i32 %.fr, -1
  br label %for.cond2.preheader.us.us.preheader

for.cond2.preheader.us.us.preheader:              ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit.us, %for.cond.preheader.us.preheader
  %q.0101.us = phi i32 [ %inc146.us, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit.us ], [ 0, %for.cond.preheader.us.preheader ]
  br label %for.cond2.preheader.us.us

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.us: ; preds = %for.cond11.for.end143_crit_edge.us
  %_M_widen_ok.i.i.i.us = getelementptr inbounds nuw i8, ptr %56, i64 56
  %2 = load i8, ptr %_M_widen_ok.i.i.i.us, align 8, !tbaa !9
  %tobool.not.i1.i.i.us = icmp eq i8 %2, 0
  br i1 %tobool.not.i1.i.i.us, label %if.end.i.i.i.us, label %if.then.i2.i.i.us

if.then.i2.i.i.us:                                ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.us
  %arrayidx.i.i.i.us = getelementptr inbounds nuw i8, ptr %56, i64 67
  %3 = load i8, ptr %arrayidx.i.i.i.us, align 1, !tbaa !17
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit.us

if.end.i.i.i.us:                                  ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.us
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %56)
  %vtable.i.i.i.us = load ptr, ptr %56, align 8, !tbaa !18
  %vfn.i.i.i.us = getelementptr inbounds nuw i8, ptr %vtable.i.i.i.us, i64 48
  %4 = load ptr, ptr %vfn.i.i.i.us, align 8
  %call.i.i.i.us = call noundef signext i8 %4(ptr noundef nonnull align 8 dereferenceable(570) %56, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit.us

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit.us: ; preds = %if.end.i.i.i.us, %if.then.i2.i.i.us
  %retval.0.i.i.i.us = phi i8 [ %3, %if.then.i2.i.i.us ], [ %call.i.i.i.us, %if.end.i.i.i.us ]
  %call1.i.us = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call144.us, i8 noundef signext %retval.0.i.i.i.us)
  %call.i.i.us = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i.us)
  %inc146.us = add nuw nsw i32 %q.0101.us, 1
  %exitcond214.not = icmp eq i32 %inc146.us, %.fr
  br i1 %exitcond214.not, label %while.end, label %for.cond2.preheader.us.us.preheader, !llvm.loop !20

for.end93.us:                                     ; preds = %for.cond76.for.inc91_crit_edge.us
  %5 = load i32, ptr %arrayidx95, align 4, !tbaa !5
  %cmp10184.us = icmp samesign ugt i32 %sub1199395.us, 2
  br i1 %cmp10184.us, label %for.cond99.preheader.us.us.preheader, label %for.end140.us

for.end140.us:                                    ; preds = %for.cond122.for.inc138_crit_edge.us.us, %for.end93.us, %for.end93.us.thread, %for.cond118.preheader.us
  %.pn = phi i32 [ %5, %for.cond118.preheader.us ], [ %5, %for.end93.us ], [ %34, %for.end93.us.thread ], [ %5, %for.cond122.for.inc138_crit_edge.us.us ]
  %add.us223227 = add nsw i32 %.pn, %s.098.us
  %sub119.us228 = add nsw i32 %sub1199395.us, -1
  %inc142.us = add nuw nsw i32 %m.097.us, 1
  %exitcond213.not = icmp eq i32 %inc142.us, %.fr
  %indvar.next = add i32 %indvar, 1
  br i1 %exitcond213.not, label %for.cond11.for.end143_crit_edge.us, label %for.cond14.preheader.us, !llvm.loop !23

for.body55.us:                                    ; preds = %for.body55.us.preheader, %for.cond76.for.inc91_crit_edge.us
  %indvars.iv184 = phi i64 [ 0, %for.body55.us.preheader ], [ %indvars.iv.next185, %for.cond76.for.inc91_crit_edge.us ]
  %arrayidx58.us = getelementptr inbounds nuw [200 x i32], ptr %a, i64 0, i64 %indvars.iv184
  %6 = load i32, ptr %arrayidx58.us, align 4, !tbaa !5
  br i1 %min.iters.check244, label %for.body61.us.preheader, label %vector.ph245

vector.ph245:                                     ; preds = %for.body55.us
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %6, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body248

vector.body248:                                   ; preds = %vector.body248, %vector.ph245
  %index249 = phi i64 [ 0, %vector.ph245 ], [ %index.next250, %vector.body248 ]
  %vec.phi = phi <4 x i32> [ %broadcast.splat, %vector.ph245 ], [ %22, %vector.body248 ]
  %7 = or disjoint i64 %index249, 1
  %8 = or disjoint i64 %index249, 2
  %9 = or disjoint i64 %index249, 3
  %10 = getelementptr inbounds nuw [200 x [200 x i32]], ptr %a, i64 0, i64 %index249, i64 %indvars.iv184
  %11 = getelementptr inbounds nuw [200 x [200 x i32]], ptr %a, i64 0, i64 %7, i64 %indvars.iv184
  %12 = getelementptr inbounds nuw [200 x [200 x i32]], ptr %a, i64 0, i64 %8, i64 %indvars.iv184
  %13 = getelementptr inbounds nuw [200 x [200 x i32]], ptr %a, i64 0, i64 %9, i64 %indvars.iv184
  %14 = load i32, ptr %10, align 4, !tbaa !5
  %15 = load i32, ptr %11, align 4, !tbaa !5
  %16 = load i32, ptr %12, align 4, !tbaa !5
  %17 = load i32, ptr %13, align 4, !tbaa !5
  %18 = insertelement <4 x i32> poison, i32 %14, i64 0
  %19 = insertelement <4 x i32> %18, i32 %15, i64 1
  %20 = insertelement <4 x i32> %19, i32 %16, i64 2
  %21 = insertelement <4 x i32> %20, i32 %17, i64 3
  %22 = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %vec.phi, <4 x i32> %21)
  %index.next250 = add nuw i64 %index249, 4
  %23 = icmp eq i64 %index.next250, %n.vec247
  br i1 %23, label %middle.block251, label %vector.body248, !llvm.loop !24

middle.block251:                                  ; preds = %vector.body248
  %24 = call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %22)
  br i1 %cmp.n252, label %for.cond59.for.cond76.preheader_crit_edge.us, label %for.body61.us.preheader

for.body61.us.preheader:                          ; preds = %for.body55.us, %middle.block251
  %indvars.iv174.ph = phi i64 [ 0, %for.body55.us ], [ %n.vec247, %middle.block251 ]
  %l.278.us.ph = phi i32 [ %6, %for.body55.us ], [ %24, %middle.block251 ]
  br label %for.body61.us

for.body78.us:                                    ; preds = %for.cond59.for.cond76.preheader_crit_edge.us, %for.body78.us
  %indvars.iv179 = phi i64 [ 0, %for.cond59.for.cond76.preheader_crit_edge.us ], [ %indvars.iv.next180, %for.body78.us ]
  %arrayidx82.us = getelementptr inbounds nuw [200 x [200 x i32]], ptr %a, i64 0, i64 %indvars.iv179, i64 %indvars.iv184
  %25 = load i32, ptr %arrayidx82.us, align 4, !tbaa !5
  %sub83.us = sub nsw i32 %25, %spec.select63.us.lcssa
  store i32 %sub83.us, ptr %arrayidx82.us, align 4, !tbaa !5
  %indvars.iv.next180 = add nuw nsw i64 %indvars.iv179, 1
  %exitcond183.not = icmp eq i64 %indvars.iv.next180, %wide.trip.count187
  br i1 %exitcond183.not, label %for.cond76.for.inc91_crit_edge.us, label %for.body78.us, !llvm.loop !27

for.body61.us:                                    ; preds = %for.body61.us.preheader, %for.body61.us
  %indvars.iv174 = phi i64 [ %indvars.iv.next175, %for.body61.us ], [ %indvars.iv174.ph, %for.body61.us.preheader ]
  %l.278.us = phi i32 [ %spec.select63.us, %for.body61.us ], [ %l.278.us.ph, %for.body61.us.preheader ]
  %arrayidx65.us = getelementptr inbounds nuw [200 x [200 x i32]], ptr %a, i64 0, i64 %indvars.iv174, i64 %indvars.iv184
  %26 = load i32, ptr %arrayidx65.us, align 4, !tbaa !5
  %spec.select63.us = call i32 @llvm.smin.i32(i32 %l.278.us, i32 %26)
  %indvars.iv.next175 = add nuw nsw i64 %indvars.iv174, 1
  %exitcond178.not = icmp eq i64 %indvars.iv.next175, %wide.trip.count187
  br i1 %exitcond178.not, label %for.cond59.for.cond76.preheader_crit_edge.us, label %for.body61.us, !llvm.loop !28

for.body16.us:                                    ; preds = %for.body16.us.preheader, %for.cond35.for.inc50_crit_edge.us
  %indvars.iv169 = phi i64 [ 0, %for.body16.us.preheader ], [ %indvars.iv.next170, %for.cond35.for.inc50_crit_edge.us ]
  %arrayidx18.us = getelementptr inbounds nuw [200 x [200 x i32]], ptr %a, i64 0, i64 %indvars.iv169
  %27 = load i32, ptr %arrayidx18.us, align 16, !tbaa !5
  br i1 %min.iters.check269, label %for.body22.us.preheader, label %vector.ph270

vector.ph270:                                     ; preds = %for.body16.us
  %broadcast.splatinsert273 = insertelement <4 x i32> poison, i32 %27, i64 0
  %broadcast.splat274 = shufflevector <4 x i32> %broadcast.splatinsert273, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body275

vector.body275:                                   ; preds = %vector.body275, %vector.ph270
  %index276 = phi i64 [ 0, %vector.ph270 ], [ %index.next279, %vector.body275 ]
  %vec.phi277 = phi <4 x i32> [ %broadcast.splat274, %vector.ph270 ], [ %29, %vector.body275 ]
  %28 = getelementptr inbounds nuw [200 x [200 x i32]], ptr %a, i64 0, i64 %indvars.iv169, i64 %index276
  %wide.load278 = load <4 x i32>, ptr %28, align 16, !tbaa !5
  %29 = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %vec.phi277, <4 x i32> %wide.load278)
  %index.next279 = add nuw i64 %index276, 4
  %30 = icmp eq i64 %index.next279, %n.vec272
  br i1 %30, label %middle.block280, label %vector.body275, !llvm.loop !29

middle.block280:                                  ; preds = %vector.body275
  %31 = call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %29)
  br i1 %cmp.n281, label %for.cond20.for.cond35.preheader_crit_edge.us, label %for.body22.us.preheader

for.body22.us.preheader:                          ; preds = %for.body16.us, %middle.block280
  %indvars.iv159.ph = phi i64 [ 0, %for.body16.us ], [ %n.vec272, %middle.block280 ]
  %l.070.us.ph = phi i32 [ %27, %for.body16.us ], [ %31, %middle.block280 ]
  br label %for.body22.us

for.body37.us:                                    ; preds = %for.body37.us.preheader, %for.body37.us
  %indvars.iv164 = phi i64 [ %indvars.iv.next165, %for.body37.us ], [ %indvars.iv164.ph, %for.body37.us.preheader ]
  %arrayidx41.us = getelementptr inbounds nuw [200 x [200 x i32]], ptr %a, i64 0, i64 %indvars.iv169, i64 %indvars.iv164
  %32 = load i32, ptr %arrayidx41.us, align 4, !tbaa !5
  %sub42.us = sub nsw i32 %32, %spec.select.us.lcssa
  store i32 %sub42.us, ptr %arrayidx41.us, align 4, !tbaa !5
  %indvars.iv.next165 = add nuw nsw i64 %indvars.iv164, 1
  %exitcond168.not = icmp eq i64 %indvars.iv.next165, %wide.trip.count172
  br i1 %exitcond168.not, label %for.cond35.for.inc50_crit_edge.us, label %for.body37.us, !llvm.loop !30

for.body22.us:                                    ; preds = %for.body22.us.preheader, %for.body22.us
  %indvars.iv159 = phi i64 [ %indvars.iv.next160, %for.body22.us ], [ %indvars.iv159.ph, %for.body22.us.preheader ]
  %l.070.us = phi i32 [ %spec.select.us, %for.body22.us ], [ %l.070.us.ph, %for.body22.us.preheader ]
  %arrayidx26.us = getelementptr inbounds nuw [200 x [200 x i32]], ptr %a, i64 0, i64 %indvars.iv169, i64 %indvars.iv159
  %33 = load i32, ptr %arrayidx26.us, align 4, !tbaa !5
  %spec.select.us = call i32 @llvm.smin.i32(i32 %l.070.us, i32 %33)
  %indvars.iv.next160 = add nuw nsw i64 %indvars.iv159, 1
  %exitcond163.not = icmp eq i64 %indvars.iv.next160, %wide.trip.count172
  br i1 %exitcond163.not, label %for.cond20.for.cond35.preheader_crit_edge.us, label %for.body22.us, !llvm.loop !31

for.cond118.preheader.us:                         ; preds = %for.cond99.for.inc115_crit_edge.us.us
  %cmp12090.us = icmp sgt i32 %sub1199395.us, 2
  br i1 %cmp12090.us, label %for.cond122.preheader.us.us.preheader, label %for.end140.us

for.cond122.preheader.us.us.preheader:            ; preds = %for.cond118.preheader.us
  %wide.trip.count211 = zext i32 %indvars.iv193 to i64
  %min.iters.check = icmp ult i32 %41, 4
  %n.vec = and i64 %42, 4294967292
  %cmp.n = icmp eq i64 %n.vec, %42
  br label %for.cond122.preheader.us.us

for.end93.us.thread:                              ; preds = %for.cond14.preheader.us
  %34 = load i32, ptr %arrayidx95, align 4, !tbaa !5
  br label %for.end140.us

for.body55.us.preheader:                          ; preds = %for.cond35.for.inc50_crit_edge.us
  %wide.trip.count187 = zext nneg i32 %sub1199395.us to i64
  %min.iters.check244 = icmp ult i32 %sub1199395.us, 4
  %n.vec247 = and i64 %37, 2147483644
  %cmp.n252 = icmp eq i64 %n.vec247, %37
  br label %for.body55.us

for.cond14.preheader.us:                          ; preds = %for.cond2.for.inc8_crit_edge.us.us, %for.end140.us
  %indvar = phi i32 [ %indvar.next, %for.end140.us ], [ 0, %for.cond2.for.inc8_crit_edge.us.us ]
  %indvars.iv193.in = phi i32 [ %indvars.iv193, %for.end140.us ], [ %.fr, %for.cond2.for.inc8_crit_edge.us.us ]
  %s.098.us = phi i32 [ %add.us223227, %for.end140.us ], [ 0, %for.cond2.for.inc8_crit_edge.us.us ]
  %m.097.us = phi i32 [ %inc142.us, %for.end140.us ], [ 1, %for.cond2.for.inc8_crit_edge.us.us ]
  %sub1199395.us = phi i32 [ %sub119.us228, %for.end140.us ], [ %.fr, %for.cond2.for.inc8_crit_edge.us.us ]
  %35 = zext i32 %sub1199395.us to i64
  %36 = zext i32 %sub1199395.us to i64
  %37 = zext i32 %sub1199395.us to i64
  %38 = sub i32 %1, %indvar
  %39 = zext i32 %38 to i64
  %40 = add nsw i64 %39, -1
  %41 = sub i32 %1, %indvar
  %42 = zext i32 %41 to i64
  %indvars.iv193 = add i32 %indvars.iv193.in, -1
  %cmp1573.us = icmp sgt i32 %sub1199395.us, 0
  br i1 %cmp1573.us, label %for.body16.us.preheader, label %for.end93.us.thread

for.body16.us.preheader:                          ; preds = %for.cond14.preheader.us
  %wide.trip.count172 = zext nneg i32 %sub1199395.us to i64
  %min.iters.check269 = icmp ult i32 %sub1199395.us, 4
  %n.vec272 = and i64 %35, 2147483644
  %cmp.n281 = icmp eq i64 %n.vec272, %35
  %min.iters.check255 = icmp ult i32 %sub1199395.us, 4
  %n.vec258 = and i64 %36, 2147483644
  %cmp.n266 = icmp eq i64 %n.vec258, %36
  br label %for.body16.us

for.cond2.preheader.us.us:                        ; preds = %for.cond2.preheader.us.us.preheader, %for.cond2.for.inc8_crit_edge.us.us
  %indvars.iv154 = phi i64 [ 0, %for.cond2.preheader.us.us.preheader ], [ %indvars.iv.next155, %for.cond2.for.inc8_crit_edge.us.us ]
  br label %for.body4.us.us

for.body4.us.us:                                  ; preds = %for.body4.us.us, %for.cond2.preheader.us.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body4.us.us ], [ 0, %for.cond2.preheader.us.us ]
  %arrayidx6.us.us = getelementptr inbounds nuw [200 x [200 x i32]], ptr %a, i64 0, i64 %indvars.iv154, i64 %indvars.iv
  %call7.us.us = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx6.us.us)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count157
  br i1 %exitcond.not, label %for.cond2.for.inc8_crit_edge.us.us, label %for.body4.us.us, !llvm.loop !32

for.cond2.for.inc8_crit_edge.us.us:               ; preds = %for.body4.us.us
  %indvars.iv.next155 = add nuw nsw i64 %indvars.iv154, 1
  %exitcond158.not = icmp eq i64 %indvars.iv.next155, %wide.trip.count157
  br i1 %exitcond158.not, label %for.cond14.preheader.us, label %for.cond2.preheader.us.us, !llvm.loop !33

for.cond20.for.cond35.preheader_crit_edge.us:     ; preds = %for.body22.us, %middle.block280
  %spec.select.us.lcssa = phi i32 [ %31, %middle.block280 ], [ %spec.select.us, %for.body22.us ]
  br i1 %min.iters.check255, label %for.body37.us.preheader, label %vector.ph256

vector.ph256:                                     ; preds = %for.cond20.for.cond35.preheader_crit_edge.us
  %broadcast.splatinsert259 = insertelement <4 x i32> poison, i32 %spec.select.us.lcssa, i64 0
  %broadcast.splat260 = shufflevector <4 x i32> %broadcast.splatinsert259, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body261

vector.body261:                                   ; preds = %vector.body261, %vector.ph256
  %index262 = phi i64 [ 0, %vector.ph256 ], [ %index.next264, %vector.body261 ]
  %43 = getelementptr inbounds nuw [200 x [200 x i32]], ptr %a, i64 0, i64 %indvars.iv169, i64 %index262
  %wide.load263 = load <4 x i32>, ptr %43, align 16, !tbaa !5
  %44 = sub nsw <4 x i32> %wide.load263, %broadcast.splat260
  store <4 x i32> %44, ptr %43, align 16, !tbaa !5
  %index.next264 = add nuw i64 %index262, 4
  %45 = icmp eq i64 %index.next264, %n.vec258
  br i1 %45, label %middle.block265, label %vector.body261, !llvm.loop !34

middle.block265:                                  ; preds = %vector.body261
  br i1 %cmp.n266, label %for.cond35.for.inc50_crit_edge.us, label %for.body37.us.preheader

for.body37.us.preheader:                          ; preds = %for.cond20.for.cond35.preheader_crit_edge.us, %middle.block265
  %indvars.iv164.ph = phi i64 [ 0, %for.cond20.for.cond35.preheader_crit_edge.us ], [ %n.vec258, %middle.block265 ]
  br label %for.body37.us

for.cond35.for.inc50_crit_edge.us:                ; preds = %for.body37.us, %middle.block265
  %indvars.iv.next170 = add nuw nsw i64 %indvars.iv169, 1
  %exitcond173.not = icmp eq i64 %indvars.iv.next170, %wide.trip.count172
  br i1 %exitcond173.not, label %for.body55.us.preheader, label %for.body16.us, !llvm.loop !35

for.cond59.for.cond76.preheader_crit_edge.us:     ; preds = %for.body61.us, %middle.block251
  %spec.select63.us.lcssa = phi i32 [ %24, %middle.block251 ], [ %spec.select63.us, %for.body61.us ]
  br label %for.body78.us

for.cond76.for.inc91_crit_edge.us:                ; preds = %for.body78.us
  %indvars.iv.next185 = add nuw nsw i64 %indvars.iv184, 1
  %exitcond188.not = icmp eq i64 %indvars.iv.next185, %wide.trip.count187
  br i1 %exitcond188.not, label %for.end93.us, label %for.body55.us, !llvm.loop !36

for.cond99.preheader.us.us.preheader:             ; preds = %for.end93.us
  %wide.trip.count200 = zext nneg i32 %sub1199395.us to i64
  %wide.trip.count195 = zext i32 %indvars.iv193 to i64
  %min.iters.check232 = icmp ult i64 %40, 4
  %n.vec235 = and i64 %40, -4
  %46 = or disjoint i64 %n.vec235, 1
  %cmp.n241 = icmp eq i64 %40, %n.vec235
  br label %for.cond99.preheader.us.us

for.cond99.preheader.us.us:                       ; preds = %for.cond99.preheader.us.us.preheader, %for.cond99.for.inc115_crit_edge.us.us
  %indvars.iv197 = phi i64 [ 0, %for.cond99.preheader.us.us.preheader ], [ %indvars.iv.next198, %for.cond99.for.inc115_crit_edge.us.us ]
  br i1 %min.iters.check232, label %for.body102.us.us.preheader, label %vector.body236

vector.body236:                                   ; preds = %for.cond99.preheader.us.us, %vector.body236
  %index237 = phi i64 [ %index.next239, %vector.body236 ], [ 0, %for.cond99.preheader.us.us ]
  %offset.idx = or disjoint i64 %index237, 1
  %47 = or disjoint i64 %index237, 2
  %48 = getelementptr inbounds nuw [200 x [200 x i32]], ptr %a, i64 0, i64 %indvars.iv197, i64 %47
  %wide.load238 = load <4 x i32>, ptr %48, align 8, !tbaa !5
  %49 = getelementptr inbounds nuw [200 x [200 x i32]], ptr %a, i64 0, i64 %indvars.iv197, i64 %offset.idx
  store <4 x i32> %wide.load238, ptr %49, align 4, !tbaa !5
  %index.next239 = add nuw i64 %index237, 4
  %50 = icmp eq i64 %index.next239, %n.vec235
  br i1 %50, label %middle.block240, label %vector.body236, !llvm.loop !37

middle.block240:                                  ; preds = %vector.body236
  br i1 %cmp.n241, label %for.cond99.for.inc115_crit_edge.us.us, label %for.body102.us.us.preheader

for.body102.us.us.preheader:                      ; preds = %for.cond99.preheader.us.us, %middle.block240
  %indvars.iv190.ph = phi i64 [ 1, %for.cond99.preheader.us.us ], [ %46, %middle.block240 ]
  br label %for.body102.us.us

for.body102.us.us:                                ; preds = %for.body102.us.us.preheader, %for.body102.us.us
  %indvars.iv190 = phi i64 [ %indvars.iv.next191, %for.body102.us.us ], [ %indvars.iv190.ph, %for.body102.us.us.preheader ]
  %indvars.iv.next191 = add nuw nsw i64 %indvars.iv190, 1
  %arrayidx107.us.us = getelementptr inbounds nuw [200 x [200 x i32]], ptr %a, i64 0, i64 %indvars.iv197, i64 %indvars.iv.next191
  %51 = load i32, ptr %arrayidx107.us.us, align 4, !tbaa !5
  %arrayidx111.us.us = getelementptr inbounds nuw [200 x [200 x i32]], ptr %a, i64 0, i64 %indvars.iv197, i64 %indvars.iv190
  store i32 %51, ptr %arrayidx111.us.us, align 4, !tbaa !5
  %exitcond196.not = icmp eq i64 %indvars.iv.next191, %wide.trip.count195
  br i1 %exitcond196.not, label %for.cond99.for.inc115_crit_edge.us.us, label %for.body102.us.us, !llvm.loop !38

for.cond99.for.inc115_crit_edge.us.us:            ; preds = %for.body102.us.us, %middle.block240
  %indvars.iv.next198 = add nuw nsw i64 %indvars.iv197, 1
  %exitcond201.not = icmp eq i64 %indvars.iv.next198, %wide.trip.count200
  br i1 %exitcond201.not, label %for.cond118.preheader.us, label %for.cond99.preheader.us.us, !llvm.loop !39

for.cond122.preheader.us.us:                      ; preds = %for.cond122.preheader.us.us.preheader, %for.cond122.for.inc138_crit_edge.us.us
  %indvars.iv208 = phi i64 [ 1, %for.cond122.preheader.us.us.preheader ], [ %indvars.iv.next209, %for.cond122.for.inc138_crit_edge.us.us ]
  %indvars.iv.next209 = add nuw nsw i64 %indvars.iv208, 1
  br i1 %min.iters.check, label %for.body125.us.us.preheader, label %vector.body

vector.body:                                      ; preds = %for.cond122.preheader.us.us, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %for.cond122.preheader.us.us ]
  %52 = getelementptr inbounds nuw [200 x [200 x i32]], ptr %a, i64 0, i64 %indvars.iv.next209, i64 %index
  %wide.load = load <4 x i32>, ptr %52, align 16, !tbaa !5
  %53 = getelementptr inbounds nuw [200 x [200 x i32]], ptr %a, i64 0, i64 %indvars.iv208, i64 %index
  store <4 x i32> %wide.load, ptr %53, align 16, !tbaa !5
  %index.next = add nuw i64 %index, 4
  %54 = icmp eq i64 %index.next, %n.vec
  br i1 %54, label %middle.block, label %vector.body, !llvm.loop !40

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %for.cond122.for.inc138_crit_edge.us.us, label %for.body125.us.us.preheader

for.body125.us.us.preheader:                      ; preds = %for.cond122.preheader.us.us, %middle.block
  %indvars.iv203.ph = phi i64 [ 0, %for.cond122.preheader.us.us ], [ %n.vec, %middle.block ]
  br label %for.body125.us.us

for.body125.us.us:                                ; preds = %for.body125.us.us.preheader, %for.body125.us.us
  %indvars.iv203 = phi i64 [ %indvars.iv.next204, %for.body125.us.us ], [ %indvars.iv203.ph, %for.body125.us.us.preheader ]
  %arrayidx130.us.us = getelementptr inbounds nuw [200 x [200 x i32]], ptr %a, i64 0, i64 %indvars.iv.next209, i64 %indvars.iv203
  %55 = load i32, ptr %arrayidx130.us.us, align 4, !tbaa !5
  %arrayidx134.us.us = getelementptr inbounds nuw [200 x [200 x i32]], ptr %a, i64 0, i64 %indvars.iv208, i64 %indvars.iv203
  store i32 %55, ptr %arrayidx134.us.us, align 4, !tbaa !5
  %indvars.iv.next204 = add nuw nsw i64 %indvars.iv203, 1
  %exitcond207.not = icmp eq i64 %indvars.iv.next204, %wide.trip.count211
  br i1 %exitcond207.not, label %for.cond122.for.inc138_crit_edge.us.us, label %for.body125.us.us, !llvm.loop !41

for.cond122.for.inc138_crit_edge.us.us:           ; preds = %for.body125.us.us, %middle.block
  %exitcond212.not = icmp eq i64 %indvars.iv.next209, %wide.trip.count211
  br i1 %exitcond212.not, label %for.end140.us, label %for.cond122.preheader.us.us, !llvm.loop !42

for.cond11.for.end143_crit_edge.us:               ; preds = %for.end140.us
  store i32 1, ptr %n, align 4, !tbaa !5
  %call144.us = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %add.us223227)
  %vtable.i.us = load ptr, ptr %call144.us, align 8, !tbaa !18
  %vbase.offset.ptr.i.us = getelementptr i8, ptr %vtable.i.us, i64 -24
  %vbase.offset.i.us = load i64, ptr %vbase.offset.ptr.i.us, align 8
  %add.ptr.i.us = getelementptr inbounds i8, ptr %call144.us, i64 %vbase.offset.i.us
  %_M_ctype.i.i.us = getelementptr inbounds nuw i8, ptr %add.ptr.i.us, i64 240
  %56 = load ptr, ptr %_M_ctype.i.i.us, align 8, !tbaa !43
  %tobool.not.i.i.i.us = icmp eq ptr %56, null
  br i1 %tobool.not.i.i.i.us, label %if.then.i.i.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.us

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.us118: ; preds = %for.cond.for.end10_crit_edge.split.us.us147
  %_M_widen_ok.i.i.i.us119 = getelementptr inbounds nuw i8, ptr %60, i64 56
  %57 = load i8, ptr %_M_widen_ok.i.i.i.us119, align 8, !tbaa !9
  %tobool.not.i1.i.i.us120 = icmp eq i8 %57, 0
  br i1 %tobool.not.i1.i.i.us120, label %if.end.i.i.i.us123, label %if.then.i2.i.i.us121

if.then.i2.i.i.us121:                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.us118
  %arrayidx.i.i.i.us122 = getelementptr inbounds nuw i8, ptr %60, i64 67
  %58 = load i8, ptr %arrayidx.i.i.i.us122, align 1, !tbaa !17
  br label %while.end.loopexit

if.end.i.i.i.us123:                               ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.us118
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %60)
  %vtable.i.i.i.us124 = load ptr, ptr %60, align 8, !tbaa !18
  %vfn.i.i.i.us125 = getelementptr inbounds nuw i8, ptr %vtable.i.i.i.us124, i64 48
  %59 = load ptr, ptr %vfn.i.i.i.us125, align 8
  %call.i.i.i.us126 = call noundef signext i8 %59(ptr noundef nonnull align 8 dereferenceable(570) %60, i8 noundef signext 10)
  br label %while.end.loopexit

for.cond.for.end10_crit_edge.split.us.us147:      ; preds = %for.cond.preheader.lr.ph
  %call7.us.us141 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %a)
  store i32 1, ptr %n, align 4, !tbaa !5
  %call144.us111 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef 0)
  %vtable.i.us112 = load ptr, ptr %call144.us111, align 8, !tbaa !18
  %vbase.offset.ptr.i.us113 = getelementptr i8, ptr %vtable.i.us112, i64 -24
  %vbase.offset.i.us114 = load i64, ptr %vbase.offset.ptr.i.us113, align 8
  %add.ptr.i.us115 = getelementptr inbounds i8, ptr %call144.us111, i64 %vbase.offset.i.us114
  %_M_ctype.i.i.us116 = getelementptr inbounds nuw i8, ptr %add.ptr.i.us115, i64 240
  %60 = load ptr, ptr %_M_ctype.i.i.us116, align 8, !tbaa !43
  %tobool.not.i.i.i.us117 = icmp eq ptr %60, null
  br i1 %tobool.not.i.i.i.us117, label %if.then.i.i.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.us118

if.then.i.i.i:                                    ; preds = %for.cond11.for.end143_crit_edge.us, %for.cond.for.end10_crit_edge.split.us.us147
  call void @_ZSt16__throw_bad_castv() #6
  unreachable

while.end.loopexit:                               ; preds = %if.then.i2.i.i.us121, %if.end.i.i.i.us123
  %retval.0.i.i.i.us128 = phi i8 [ %58, %if.then.i2.i.i.us121 ], [ %call.i.i.i.us126, %if.end.i.i.i.us123 ]
  %call1.i.us129 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call144.us111, i8 noundef signext %retval.0.i.i.i.us128)
  %call.i.i.us130 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i.us129)
  br label %while.end

while.end:                                        ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit.us, %while.end.loopexit, %entry
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #5
  call void @llvm.lifetime.end.p0(i64 160000, ptr nonnull %a) #5
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
!9 = !{!10, !7, i64 56}
!10 = !{!"_ZTSSt5ctypeIcE", !11, i64 0, !12, i64 16, !14, i64 24, !15, i64 32, !15, i64 40, !16, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!11 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!12 = !{!"p1 _ZTS15__locale_struct", !13, i64 0}
!13 = !{!"any pointer", !7, i64 0}
!14 = !{!"bool", !7, i64 0}
!15 = !{!"p1 int", !13, i64 0}
!16 = !{!"p1 short", !13, i64 0}
!17 = !{!7, !7, i64 0}
!18 = !{!19, !19, i64 0}
!19 = !{!"vtable pointer", !8, i64 0}
!20 = distinct !{!20, !21, !22}
!21 = !{!"llvm.loop.mustprogress"}
!22 = !{!"llvm.loop.unroll.disable"}
!23 = distinct !{!23, !21, !22}
!24 = distinct !{!24, !21, !22, !25, !26}
!25 = !{!"llvm.loop.isvectorized", i32 1}
!26 = !{!"llvm.loop.unroll.runtime.disable"}
!27 = distinct !{!27, !21, !22}
!28 = distinct !{!28, !21, !22, !25}
!29 = distinct !{!29, !21, !22, !25, !26}
!30 = distinct !{!30, !21, !22, !25}
!31 = distinct !{!31, !21, !22, !25}
!32 = distinct !{!32, !21, !22}
!33 = distinct !{!33, !21, !22}
!34 = distinct !{!34, !21, !22, !25, !26}
!35 = distinct !{!35, !21, !22}
!36 = distinct !{!36, !21, !22}
!37 = distinct !{!37, !21, !22, !25, !26}
!38 = distinct !{!38, !21, !22, !25}
!39 = distinct !{!39, !21, !22}
!40 = distinct !{!40, !21, !22, !25, !26}
!41 = distinct !{!41, !21, !22, !25}
!42 = distinct !{!42, !21, !22}
!43 = !{!44, !56, i64 240}
!44 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !45, i64 0, !54, i64 216, !7, i64 224, !14, i64 225, !55, i64 232, !56, i64 240, !57, i64 248, !58, i64 256}
!45 = !{!"_ZTSSt8ios_base", !46, i64 8, !46, i64 16, !47, i64 24, !48, i64 28, !48, i64 32, !49, i64 40, !50, i64 48, !7, i64 64, !6, i64 192, !51, i64 200, !52, i64 208}
!46 = !{!"long", !7, i64 0}
!47 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!48 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!49 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !13, i64 0}
!50 = !{!"_ZTSNSt8ios_base6_WordsE", !13, i64 0, !46, i64 8}
!51 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !13, i64 0}
!52 = !{!"_ZTSSt6locale", !53, i64 0}
!53 = !{!"p1 _ZTSNSt6locale5_ImplE", !13, i64 0}
!54 = !{!"p1 _ZTSSo", !13, i64 0}
!55 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !13, i64 0}
!56 = !{!"p1 _ZTSSt5ctypeIcE", !13, i64 0}
!57 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !13, i64 0}
!58 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !13, i64 0}
