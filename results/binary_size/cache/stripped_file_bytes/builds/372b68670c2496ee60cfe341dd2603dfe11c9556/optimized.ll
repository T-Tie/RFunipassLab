; ModuleID = '<stdin>'
source_filename = "/tmp/tmpy8_8nxfh.cpp"
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
  %a = alloca [100 x [100 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #6
  call void @llvm.lifetime.start.p0(i64 40000, ptr nonnull %a) #6
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp.not78 = icmp slt i32 %0, 1
  br i1 %cmp.not78, label %for.cond.cleanup, label %for.cond1.preheader.lr.ph

for.cond1.preheader.lr.ph:                        ; preds = %entry
  %arrayidx61 = getelementptr inbounds nuw i8, ptr %a, i64 404
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.cond1.preheader.lr.ph, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %1 = phi i32 [ %0, %for.cond1.preheader.lr.ph ], [ %17, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit ]
  %i.079 = phi i32 [ 1, %for.cond1.preheader.lr.ph ], [ %inc117, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit ]
  %cmp255 = icmp sgt i32 %1, 0
  br i1 %cmp255, label %for.cond4.preheader, label %for.cond.cleanup15

for.cond.cleanup:                                 ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %entry
  call void @llvm.lifetime.end.p0(i64 40000, ptr nonnull %a) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #6
  ret i32 0

for.cond13.preheader:                             ; preds = %for.inc10
  %cmp1474 = icmp sgt i32 %6, 1
  br i1 %cmp1474, label %for.cond17.preheader.preheader, label %for.cond.cleanup15

for.cond17.preheader.preheader:                   ; preds = %for.cond13.preheader
  %sub = add nsw i32 %6, -1
  %2 = zext nneg i32 %6 to i64
  %wide.trip.count135 = zext nneg i32 %sub to i64
  br label %for.cond17.preheader

for.cond4.preheader:                              ; preds = %for.cond1.preheader, %for.inc10
  %3 = phi i32 [ %6, %for.inc10 ], [ %1, %for.cond1.preheader ]
  %indvars.iv85 = phi i64 [ %indvars.iv.next86, %for.inc10 ], [ 0, %for.cond1.preheader ]
  %cmp553 = icmp sgt i32 %3, 0
  br i1 %cmp553, label %for.body6, label %for.cond4.preheader.for.inc10_crit_edge

for.cond4.preheader.for.inc10_crit_edge:          ; preds = %for.cond4.preheader
  %.pre = sext i32 %3 to i64
  br label %for.inc10

for.body6:                                        ; preds = %for.cond4.preheader, %for.body6
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body6 ], [ 0, %for.cond4.preheader ]
  %arrayidx8 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv85, i64 %indvars.iv
  %call9 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx8)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %4 = load i32, ptr %n, align 4, !tbaa !5
  %5 = sext i32 %4 to i64
  %cmp5 = icmp slt i64 %indvars.iv.next, %5
  br i1 %cmp5, label %for.body6, label %for.inc10, !llvm.loop !9

for.inc10:                                        ; preds = %for.body6, %for.cond4.preheader.for.inc10_crit_edge
  %.pre-phi = phi i64 [ %.pre, %for.cond4.preheader.for.inc10_crit_edge ], [ %5, %for.body6 ]
  %6 = phi i32 [ %3, %for.cond4.preheader.for.inc10_crit_edge ], [ %4, %for.body6 ]
  %indvars.iv.next86 = add nuw nsw i64 %indvars.iv85, 1
  %cmp2 = icmp slt i64 %indvars.iv.next86, %.pre-phi
  br i1 %cmp2, label %for.cond4.preheader, label %for.cond13.preheader, !llvm.loop !12

for.cond17.preheader:                             ; preds = %for.cond17.preheader.preheader, %for.inc111
  %indvars.iv131 = phi i64 [ 0, %for.cond17.preheader.preheader ], [ %indvars.iv.next132, %for.inc111 ]
  %indvars.iv112 = phi i32 [ %sub, %for.cond17.preheader.preheader ], [ %indvars.iv.next113, %for.inc111 ]
  %indvars.iv91 = phi i32 [ %6, %for.cond17.preheader.preheader ], [ %indvars.iv.next92, %for.inc111 ]
  %m.075 = phi i32 [ 0, %for.cond17.preheader.preheader ], [ %add145, %for.inc111 ]
  %7 = sub nsw i64 %2, %indvars.iv131
  %8 = zext i32 %indvars.iv91 to i64
  %9 = sub nsw i64 %2, %indvars.iv131
  %10 = zext i32 %indvars.iv112 to i64
  %11 = add nsw i64 %10, -1
  %12 = sub nsw i64 %2, %indvars.iv131
  %cmp1959 = icmp sgt i64 %12, 0
  br i1 %cmp1959, label %for.body20.lr.ph, label %for.end59.for.cond86.preheader_crit_edge

for.body20.lr.ph:                                 ; preds = %for.cond17.preheader
  %wide.trip.count96 = zext i32 %indvars.iv91 to i64
  %min.iters.check177 = icmp ult i64 %7, 4
  %n.vec180 = and i64 %7, -4
  %cmp.n189 = icmp eq i64 %7, %n.vec180
  %min.iters.check163 = icmp ult i32 %indvars.iv91, 4
  %n.vec166 = and i64 %8, 4294967292
  %cmp.n174 = icmp eq i64 %n.vec166, %8
  br label %for.body20

for.cond.cleanup15:                               ; preds = %for.inc111, %for.cond1.preheader, %for.cond13.preheader
  %m.0.lcssa = phi i32 [ 0, %for.cond13.preheader ], [ 0, %for.cond1.preheader ], [ %add145, %for.inc111 ]
  %call114 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %m.0.lcssa)
  %vtable.i = load ptr, ptr %call114, align 8, !tbaa !14
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call114, i64 %vbase.offset.i
  %_M_ctype.i.i = getelementptr inbounds nuw i8, ptr %add.ptr.i, i64 240
  %13 = load ptr, ptr %_M_ctype.i.i, align 8, !tbaa !16
  %tobool.not.i.i.i = icmp eq ptr %13, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

if.then.i.i.i:                                    ; preds = %for.cond.cleanup15
  call void @_ZSt16__throw_bad_castv() #7
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %for.cond.cleanup15
  %_M_widen_ok.i.i.i = getelementptr inbounds nuw i8, ptr %13, i64 56
  %14 = load i8, ptr %_M_widen_ok.i.i.i, align 8, !tbaa !34
  %tobool.not.i1.i.i = icmp eq i8 %14, 0
  br i1 %tobool.not.i1.i.i, label %if.end.i.i.i, label %if.then.i2.i.i

if.then.i2.i.i:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %arrayidx.i.i.i = getelementptr inbounds nuw i8, ptr %13, i64 67
  %15 = load i8, ptr %arrayidx.i.i.i, align 1, !tbaa !40
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

if.end.i.i.i:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %13)
  %vtable.i.i.i = load ptr, ptr %13, align 8, !tbaa !14
  %vfn.i.i.i = getelementptr inbounds nuw i8, ptr %vtable.i.i.i, i64 48
  %16 = load ptr, ptr %vfn.i.i.i, align 8
  %call.i.i.i = call noundef signext i8 %16(ptr noundef nonnull align 8 dereferenceable(570) %13, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %if.then.i2.i.i, %if.end.i.i.i
  %retval.0.i.i.i = phi i8 [ %15, %if.then.i2.i.i ], [ %call.i.i.i, %if.end.i.i.i ]
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call114, i8 noundef signext %retval.0.i.i.i)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  %inc117 = add nuw nsw i32 %i.079, 1
  %17 = load i32, ptr %n, align 4, !tbaa !5
  %cmp.not.not = icmp slt i32 %i.079, %17
  br i1 %cmp.not.not, label %for.cond1.preheader, label %for.cond.cleanup, !llvm.loop !41

for.body41.lr.ph:                                 ; preds = %for.inc35
  %wide.trip.count106 = zext i32 %indvars.iv91 to i64
  %min.iters.check152 = icmp ult i64 %9, 4
  %n.vec155 = and i64 %9, -4
  %cmp.n160 = icmp eq i64 %9, %n.vec155
  br label %for.body41

for.body20:                                       ; preds = %for.body20.lr.ph, %for.inc35
  %indvars.iv93 = phi i64 [ 0, %for.body20.lr.ph ], [ %indvars.iv.next94, %for.inc35 ]
  %arrayidx.i = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv93
  %18 = load i32, ptr %arrayidx.i, align 16, !tbaa !5
  br i1 %min.iters.check177, label %for.body.i.preheader, label %vector.ph178

vector.ph178:                                     ; preds = %for.body20
  %broadcast.splatinsert181 = insertelement <4 x i32> poison, i32 %18, i64 0
  %broadcast.splat182 = shufflevector <4 x i32> %broadcast.splatinsert181, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body183

vector.body183:                                   ; preds = %vector.body183, %vector.ph178
  %index184 = phi i64 [ 0, %vector.ph178 ], [ %index.next187, %vector.body183 ]
  %vec.phi185 = phi <4 x i32> [ %broadcast.splat182, %vector.ph178 ], [ %20, %vector.body183 ]
  %19 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv93, i64 %index184
  %wide.load186 = load <4 x i32>, ptr %19, align 16, !tbaa !5
  %20 = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %vec.phi185, <4 x i32> %wide.load186)
  %index.next187 = add nuw i64 %index184, 4
  %21 = icmp eq i64 %index.next187, %n.vec180
  br i1 %21, label %middle.block188, label %vector.body183, !llvm.loop !42

middle.block188:                                  ; preds = %vector.body183
  %22 = call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %20)
  br i1 %cmp.n189, label %for.body26.lr.ph, label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %for.body20, %middle.block188
  %indvars.iv32.i.ph = phi i64 [ 0, %for.body20 ], [ %n.vec180, %middle.block188 ]
  %t.027.i.ph = phi i32 [ %18, %for.body20 ], [ %22, %middle.block188 ]
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.preheader, %for.body.i
  %indvars.iv32.i = phi i64 [ %indvars.iv.next33.i, %for.body.i ], [ %indvars.iv32.i.ph, %for.body.i.preheader ]
  %t.027.i = phi i32 [ %spec.select.i, %for.body.i ], [ %t.027.i.ph, %for.body.i.preheader ]
  %arrayidx6.i = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv93, i64 %indvars.iv32.i
  %23 = load i32, ptr %arrayidx6.i, align 4, !tbaa !5
  %spec.select.i = call i32 @llvm.smin.i32(i32 %t.027.i, i32 %23)
  %indvars.iv.next33.i = add nuw nsw i64 %indvars.iv32.i, 1
  %exitcond36.not.i = icmp eq i64 %indvars.iv.next33.i, %12
  br i1 %exitcond36.not.i, label %for.body26.lr.ph, label %for.body.i, !llvm.loop !45

for.body26.lr.ph:                                 ; preds = %for.body.i, %middle.block188
  %spec.select.i.lcssa = phi i32 [ %22, %middle.block188 ], [ %spec.select.i, %for.body.i ]
  br i1 %min.iters.check163, label %for.body26.preheader, label %vector.ph164

vector.ph164:                                     ; preds = %for.body26.lr.ph
  %broadcast.splatinsert167 = insertelement <4 x i32> poison, i32 %spec.select.i.lcssa, i64 0
  %broadcast.splat168 = shufflevector <4 x i32> %broadcast.splatinsert167, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body169

vector.body169:                                   ; preds = %vector.body169, %vector.ph164
  %index170 = phi i64 [ 0, %vector.ph164 ], [ %index.next172, %vector.body169 ]
  %24 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv93, i64 %index170
  %wide.load171 = load <4 x i32>, ptr %24, align 16, !tbaa !5
  %25 = sub nsw <4 x i32> %wide.load171, %broadcast.splat168
  store <4 x i32> %25, ptr %24, align 16, !tbaa !5
  %index.next172 = add nuw i64 %index170, 4
  %26 = icmp eq i64 %index.next172, %n.vec166
  br i1 %26, label %middle.block173, label %vector.body169, !llvm.loop !46

middle.block173:                                  ; preds = %vector.body169
  br i1 %cmp.n174, label %for.inc35, label %for.body26.preheader

for.body26.preheader:                             ; preds = %for.body26.lr.ph, %middle.block173
  %indvars.iv88.ph = phi i64 [ 0, %for.body26.lr.ph ], [ %n.vec166, %middle.block173 ]
  br label %for.body26

for.body26:                                       ; preds = %for.body26.preheader, %for.body26
  %indvars.iv88 = phi i64 [ %indvars.iv.next89, %for.body26 ], [ %indvars.iv88.ph, %for.body26.preheader ]
  %arrayidx30 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv93, i64 %indvars.iv88
  %27 = load i32, ptr %arrayidx30, align 4, !tbaa !5
  %sub31 = sub nsw i32 %27, %spec.select.i.lcssa
  store i32 %sub31, ptr %arrayidx30, align 4, !tbaa !5
  %indvars.iv.next89 = add nuw nsw i64 %indvars.iv88, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next89, %wide.trip.count96
  br i1 %exitcond.not, label %for.inc35, label %for.body26, !llvm.loop !47

for.inc35:                                        ; preds = %for.body26, %middle.block173
  %indvars.iv.next94 = add nuw nsw i64 %indvars.iv93, 1
  %exitcond97.not = icmp eq i64 %indvars.iv.next94, %wide.trip.count96
  br i1 %exitcond97.not, label %for.body41.lr.ph, label %for.body20, !llvm.loop !48

for.body41:                                       ; preds = %for.body41.lr.ph, %for.inc57
  %indvars.iv103 = phi i64 [ 0, %for.body41.lr.ph ], [ %indvars.iv.next104, %for.inc57 ]
  %arrayidx15.i = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %indvars.iv103
  %28 = load i32, ptr %arrayidx15.i, align 4, !tbaa !5
  br i1 %min.iters.check152, label %for.body19.i.preheader, label %vector.ph153

vector.ph153:                                     ; preds = %for.body41
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %28, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body156

vector.body156:                                   ; preds = %vector.body156, %vector.ph153
  %index157 = phi i64 [ 0, %vector.ph153 ], [ %index.next158, %vector.body156 ]
  %vec.phi = phi <4 x i32> [ %broadcast.splat, %vector.ph153 ], [ %44, %vector.body156 ]
  %29 = or disjoint i64 %index157, 1
  %30 = or disjoint i64 %index157, 2
  %31 = or disjoint i64 %index157, 3
  %32 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %index157, i64 %indvars.iv103
  %33 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %29, i64 %indvars.iv103
  %34 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %30, i64 %indvars.iv103
  %35 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %31, i64 %indvars.iv103
  %36 = load i32, ptr %32, align 4, !tbaa !5
  %37 = load i32, ptr %33, align 4, !tbaa !5
  %38 = load i32, ptr %34, align 4, !tbaa !5
  %39 = load i32, ptr %35, align 4, !tbaa !5
  %40 = insertelement <4 x i32> poison, i32 %36, i64 0
  %41 = insertelement <4 x i32> %40, i32 %37, i64 1
  %42 = insertelement <4 x i32> %41, i32 %38, i64 2
  %43 = insertelement <4 x i32> %42, i32 %39, i64 3
  %44 = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %vec.phi, <4 x i32> %43)
  %index.next158 = add nuw i64 %index157, 4
  %45 = icmp eq i64 %index.next158, %n.vec155
  br i1 %45, label %middle.block159, label %vector.body156, !llvm.loop !49

middle.block159:                                  ; preds = %vector.body156
  %46 = call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %44)
  br i1 %cmp.n160, label %for.body48.lr.ph, label %for.body19.i.preheader

for.body19.i.preheader:                           ; preds = %for.body41, %middle.block159
  %indvars.iv.i.ph = phi i64 [ 0, %for.body41 ], [ %n.vec155, %middle.block159 ]
  %t.324.i.ph = phi i32 [ %28, %for.body41 ], [ %46, %middle.block159 ]
  br label %for.body19.i

for.body19.i:                                     ; preds = %for.body19.i.preheader, %for.body19.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.body19.i ], [ %indvars.iv.i.ph, %for.body19.i.preheader ]
  %t.324.i = phi i32 [ %spec.select21.i, %for.body19.i ], [ %t.324.i.ph, %for.body19.i.preheader ]
  %arrayidx23.i = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv.i, i64 %indvars.iv103
  %47 = load i32, ptr %arrayidx23.i, align 4, !tbaa !5
  %spec.select21.i = call i32 @llvm.smin.i32(i32 %t.324.i, i32 %47)
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %12
  br i1 %exitcond.not.i, label %for.body48.lr.ph, label %for.body19.i, !llvm.loop !50

for.body48.lr.ph:                                 ; preds = %for.body19.i, %middle.block159
  %spec.select21.i.lcssa = phi i32 [ %46, %middle.block159 ], [ %spec.select21.i, %for.body19.i ]
  br label %for.body48

for.body48:                                       ; preds = %for.body48.lr.ph, %for.body48
  %indvars.iv98 = phi i64 [ 0, %for.body48.lr.ph ], [ %indvars.iv.next99, %for.body48 ]
  %arrayidx52 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv98, i64 %indvars.iv103
  %48 = load i32, ptr %arrayidx52, align 4, !tbaa !5
  %sub53 = sub nsw i32 %48, %spec.select21.i.lcssa
  store i32 %sub53, ptr %arrayidx52, align 4, !tbaa !5
  %indvars.iv.next99 = add nuw nsw i64 %indvars.iv98, 1
  %exitcond102.not = icmp eq i64 %indvars.iv.next99, %wide.trip.count106
  br i1 %exitcond102.not, label %for.inc57, label %for.body48, !llvm.loop !51

for.inc57:                                        ; preds = %for.body48
  %indvars.iv.next104 = add nuw nsw i64 %indvars.iv103, 1
  %exitcond107.not = icmp eq i64 %indvars.iv.next104, %wide.trip.count106
  br i1 %exitcond107.not, label %for.end59, label %for.body41, !llvm.loop !52

for.end59:                                        ; preds = %for.inc57
  %49 = load i32, ptr %arrayidx61, align 4, !tbaa !5
  %50 = trunc nuw nsw i64 %indvars.iv131 to i32
  %51 = xor i32 %50, -1
  %sub68 = add nsw i32 %6, %51
  %cmp6966 = icmp sgt i32 %sub68, 1
  br i1 %cmp6966, label %for.cond66.preheader.us.preheader, label %for.cond86.preheader

for.end59.for.cond86.preheader_crit_edge:         ; preds = %for.cond17.preheader
  %52 = load i32, ptr %arrayidx61, align 4, !tbaa !5
  %.pre137 = trunc nuw nsw i64 %indvars.iv131 to i32
  %.pre139 = xor i32 %.pre137, -1
  %.pre141 = add nsw i32 %6, %.pre139
  br label %for.cond86.preheader

for.cond66.preheader.us.preheader:                ; preds = %for.end59
  %wide.trip.count119 = zext i32 %indvars.iv91 to i64
  %wide.trip.count114 = zext i32 %indvars.iv112 to i64
  %min.iters.check = icmp ult i64 %11, 4
  %n.vec = and i64 %11, -4
  %53 = or disjoint i64 %n.vec, 1
  %cmp.n = icmp eq i64 %11, %n.vec
  br label %for.cond66.preheader.us

for.cond66.preheader.us:                          ; preds = %for.cond66.preheader.us.preheader, %for.cond66.for.inc83_crit_edge.us
  %indvars.iv116 = phi i64 [ 0, %for.cond66.preheader.us.preheader ], [ %indvars.iv.next117, %for.cond66.for.inc83_crit_edge.us ]
  br i1 %min.iters.check, label %for.body70.us.preheader, label %vector.body

vector.body:                                      ; preds = %for.cond66.preheader.us, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %for.cond66.preheader.us ]
  %offset.idx = or disjoint i64 %index, 1
  %54 = or disjoint i64 %index, 2
  %55 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv116, i64 %54
  %wide.load = load <4 x i32>, ptr %55, align 8, !tbaa !5
  %56 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv116, i64 %offset.idx
  store <4 x i32> %wide.load, ptr %56, align 4, !tbaa !5
  %index.next = add nuw i64 %index, 4
  %57 = icmp eq i64 %index.next, %n.vec
  br i1 %57, label %middle.block, label %vector.body, !llvm.loop !53

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %for.cond66.for.inc83_crit_edge.us, label %for.body70.us.preheader

for.body70.us.preheader:                          ; preds = %for.cond66.preheader.us, %middle.block
  %indvars.iv109.ph = phi i64 [ 1, %for.cond66.preheader.us ], [ %53, %middle.block ]
  br label %for.body70.us

for.body70.us:                                    ; preds = %for.body70.us.preheader, %for.body70.us
  %indvars.iv109 = phi i64 [ %indvars.iv.next110, %for.body70.us ], [ %indvars.iv109.ph, %for.body70.us.preheader ]
  %indvars.iv.next110 = add nuw nsw i64 %indvars.iv109, 1
  %arrayidx75.us = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv116, i64 %indvars.iv.next110
  %58 = load i32, ptr %arrayidx75.us, align 4, !tbaa !5
  %arrayidx79.us = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv116, i64 %indvars.iv109
  store i32 %58, ptr %arrayidx79.us, align 4, !tbaa !5
  %exitcond115.not = icmp eq i64 %indvars.iv.next110, %wide.trip.count114
  br i1 %exitcond115.not, label %for.cond66.for.inc83_crit_edge.us, label %for.body70.us, !llvm.loop !54

for.cond66.for.inc83_crit_edge.us:                ; preds = %for.body70.us, %middle.block
  %indvars.iv.next117 = add nuw nsw i64 %indvars.iv116, 1
  %exitcond120.not = icmp eq i64 %indvars.iv.next117, %wide.trip.count119
  br i1 %exitcond120.not, label %for.cond86.preheader, label %for.cond66.preheader.us, !llvm.loop !55

for.cond86.preheader:                             ; preds = %for.cond66.for.inc83_crit_edge.us, %for.end59, %for.end59.for.cond86.preheader_crit_edge
  %.pn = phi i32 [ %52, %for.end59.for.cond86.preheader_crit_edge ], [ %49, %for.end59 ], [ %49, %for.cond66.for.inc83_crit_edge.us ]
  %sub88.pre-phi = phi i32 [ %.pre141, %for.end59.for.cond86.preheader_crit_edge ], [ %sub68, %for.end59 ], [ %sub68, %for.cond66.for.inc83_crit_edge.us ]
  %add145 = add nsw i32 %.pn, %m.075
  %or.cond = icmp slt i32 %sub88.pre-phi, 2
  br i1 %or.cond, label %for.inc111, label %for.cond91.preheader.us.preheader

for.cond91.preheader.us.preheader:                ; preds = %for.cond86.preheader
  %wide.trip.count129 = zext i32 %indvars.iv112 to i64
  br label %for.cond91.preheader.us

for.cond91.preheader.us:                          ; preds = %for.cond91.preheader.us.preheader, %for.cond91.for.inc108_crit_edge.us
  %indvars.iv126 = phi i64 [ 0, %for.cond91.preheader.us.preheader ], [ %indvars.iv.next127, %for.cond91.for.inc108_crit_edge.us ]
  br label %for.body95.us

for.body95.us:                                    ; preds = %for.cond91.preheader.us, %for.body95.us
  %indvars.iv121 = phi i64 [ 1, %for.cond91.preheader.us ], [ %indvars.iv.next122, %for.body95.us ]
  %indvars.iv.next122 = add nuw nsw i64 %indvars.iv121, 1
  %arrayidx100.us = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv.next122, i64 %indvars.iv126
  %59 = load i32, ptr %arrayidx100.us, align 4, !tbaa !5
  %arrayidx104.us = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv121, i64 %indvars.iv126
  store i32 %59, ptr %arrayidx104.us, align 4, !tbaa !5
  %exitcond125.not = icmp eq i64 %indvars.iv.next122, %wide.trip.count129
  br i1 %exitcond125.not, label %for.cond91.for.inc108_crit_edge.us, label %for.body95.us, !llvm.loop !56

for.cond91.for.inc108_crit_edge.us:               ; preds = %for.body95.us
  %indvars.iv.next127 = add nuw nsw i64 %indvars.iv126, 1
  %exitcond130.not = icmp eq i64 %indvars.iv.next127, %wide.trip.count129
  br i1 %exitcond130.not, label %for.inc111, label %for.cond91.preheader.us, !llvm.loop !57

for.inc111:                                       ; preds = %for.cond91.for.inc108_crit_edge.us, %for.cond86.preheader
  %indvars.iv.next132 = add nuw nsw i64 %indvars.iv131, 1
  %indvars.iv.next92 = add i32 %indvars.iv91, -1
  %indvars.iv.next113 = add i32 %indvars.iv112, -1
  %exitcond136.not = icmp eq i64 %indvars.iv.next132, %wide.trip.count135
  br i1 %exitcond136.not, label %for.cond.cleanup15, label %for.cond17.preheader, !llvm.loop !58
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_Z3minPA100_iiii(ptr noundef readonly captures(none) %a, i32 noundef %s, i32 noundef %l, i32 noundef %n) local_unnamed_addr #3 {
entry:
  %cmp = icmp eq i32 %s, 0
  %idxprom = sext i32 %l to i64
  %cmp226 = icmp sgt i32 %n, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %arrayidx = getelementptr inbounds [100 x i32], ptr %a, i64 %idxprom
  %0 = load i32, ptr %arrayidx, align 4, !tbaa !5
  br i1 %cmp226, label %for.body.preheader, label %if.end34

for.body.preheader:                               ; preds = %if.then
  %wide.trip.count35 = zext nneg i32 %n to i64
  %min.iters.check40 = icmp ult i32 %n, 4
  br i1 %min.iters.check40, label %for.body.preheader54, label %vector.ph41

vector.ph41:                                      ; preds = %for.body.preheader
  %n.vec43 = and i64 %wide.trip.count35, 2147483644
  %broadcast.splatinsert44 = insertelement <4 x i32> poison, i32 %0, i64 0
  %broadcast.splat45 = shufflevector <4 x i32> %broadcast.splatinsert44, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body46

vector.body46:                                    ; preds = %vector.body46, %vector.ph41
  %index47 = phi i64 [ 0, %vector.ph41 ], [ %index.next49, %vector.body46 ]
  %vec.phi48 = phi <4 x i32> [ %broadcast.splat45, %vector.ph41 ], [ %2, %vector.body46 ]
  %1 = getelementptr inbounds [100 x i32], ptr %a, i64 %idxprom, i64 %index47
  %wide.load = load <4 x i32>, ptr %1, align 4, !tbaa !5
  %2 = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %vec.phi48, <4 x i32> %wide.load)
  %index.next49 = add nuw i64 %index47, 4
  %3 = icmp eq i64 %index.next49, %n.vec43
  br i1 %3, label %middle.block50, label %vector.body46, !llvm.loop !59

middle.block50:                                   ; preds = %vector.body46
  %4 = tail call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %2)
  %cmp.n51 = icmp eq i64 %n.vec43, %wide.trip.count35
  br i1 %cmp.n51, label %if.end34, label %for.body.preheader54

for.body.preheader54:                             ; preds = %for.body.preheader, %middle.block50
  %indvars.iv32.ph = phi i64 [ 0, %for.body.preheader ], [ %n.vec43, %middle.block50 ]
  %t.027.ph = phi i32 [ %0, %for.body.preheader ], [ %4, %middle.block50 ]
  br label %for.body

for.body:                                         ; preds = %for.body.preheader54, %for.body
  %indvars.iv32 = phi i64 [ %indvars.iv.next33, %for.body ], [ %indvars.iv32.ph, %for.body.preheader54 ]
  %t.027 = phi i32 [ %spec.select, %for.body ], [ %t.027.ph, %for.body.preheader54 ]
  %arrayidx6 = getelementptr inbounds [100 x i32], ptr %a, i64 %idxprom, i64 %indvars.iv32
  %5 = load i32, ptr %arrayidx6, align 4, !tbaa !5
  %spec.select = tail call i32 @llvm.smin.i32(i32 %t.027, i32 %5)
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1
  %exitcond36.not = icmp eq i64 %indvars.iv.next33, %wide.trip.count35
  br i1 %exitcond36.not, label %if.end34, label %for.body, !llvm.loop !60

if.else:                                          ; preds = %entry
  %arrayidx15 = getelementptr inbounds [100 x i32], ptr %a, i64 0, i64 %idxprom
  %6 = load i32, ptr %arrayidx15, align 4, !tbaa !5
  br i1 %cmp226, label %for.body19.preheader, label %if.end34

for.body19.preheader:                             ; preds = %if.else
  %wide.trip.count = zext nneg i32 %n to i64
  %min.iters.check = icmp ult i32 %n, 4
  br i1 %min.iters.check, label %for.body19.preheader55, label %vector.ph

vector.ph:                                        ; preds = %for.body19.preheader
  %n.vec = and i64 %wide.trip.count, 2147483644
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %6, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %22, %vector.body ]
  %7 = or disjoint i64 %index, 1
  %8 = or disjoint i64 %index, 2
  %9 = or disjoint i64 %index, 3
  %10 = getelementptr inbounds [100 x i32], ptr %a, i64 %index, i64 %idxprom
  %11 = getelementptr inbounds [100 x i32], ptr %a, i64 %7, i64 %idxprom
  %12 = getelementptr inbounds [100 x i32], ptr %a, i64 %8, i64 %idxprom
  %13 = getelementptr inbounds [100 x i32], ptr %a, i64 %9, i64 %idxprom
  %14 = load i32, ptr %10, align 4, !tbaa !5
  %15 = load i32, ptr %11, align 4, !tbaa !5
  %16 = load i32, ptr %12, align 4, !tbaa !5
  %17 = load i32, ptr %13, align 4, !tbaa !5
  %18 = insertelement <4 x i32> poison, i32 %14, i64 0
  %19 = insertelement <4 x i32> %18, i32 %15, i64 1
  %20 = insertelement <4 x i32> %19, i32 %16, i64 2
  %21 = insertelement <4 x i32> %20, i32 %17, i64 3
  %22 = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %vec.phi, <4 x i32> %21)
  %index.next = add nuw i64 %index, 4
  %23 = icmp eq i64 %index.next, %n.vec
  br i1 %23, label %middle.block, label %vector.body, !llvm.loop !61

middle.block:                                     ; preds = %vector.body
  %24 = tail call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %22)
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %if.end34, label %for.body19.preheader55

for.body19.preheader55:                           ; preds = %for.body19.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %for.body19.preheader ], [ %n.vec, %middle.block ]
  %t.324.ph = phi i32 [ %6, %for.body19.preheader ], [ %24, %middle.block ]
  br label %for.body19

for.body19:                                       ; preds = %for.body19.preheader55, %for.body19
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body19 ], [ %indvars.iv.ph, %for.body19.preheader55 ]
  %t.324 = phi i32 [ %spec.select21, %for.body19 ], [ %t.324.ph, %for.body19.preheader55 ]
  %arrayidx23 = getelementptr inbounds [100 x i32], ptr %a, i64 %indvars.iv, i64 %idxprom
  %25 = load i32, ptr %arrayidx23, align 4, !tbaa !5
  %spec.select21 = tail call i32 @llvm.smin.i32(i32 %t.324, i32 %25)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %if.end34, label %for.body19, !llvm.loop !62

if.end34:                                         ; preds = %for.body19, %for.body, %middle.block, %middle.block50, %if.else, %if.then
  %t.2 = phi i32 [ %0, %if.then ], [ %6, %if.else ], [ %4, %middle.block50 ], [ %24, %middle.block ], [ %spec.select, %for.body ], [ %spec.select21, %for.body19 ]
  ret i32 %t.2
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #4

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smin.v4i32(<4 x i32>, <4 x i32>) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smin.v4i32(<4 x i32>) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!14 = !{!15, !15, i64 0}
!15 = !{!"vtable pointer", !8, i64 0}
!16 = !{!17, !31, i64 240}
!17 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !18, i64 0, !28, i64 216, !7, i64 224, !29, i64 225, !30, i64 232, !31, i64 240, !32, i64 248, !33, i64 256}
!18 = !{!"_ZTSSt8ios_base", !19, i64 8, !19, i64 16, !20, i64 24, !21, i64 28, !21, i64 32, !22, i64 40, !24, i64 48, !7, i64 64, !6, i64 192, !25, i64 200, !26, i64 208}
!19 = !{!"long", !7, i64 0}
!20 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!21 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!22 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !23, i64 0}
!23 = !{!"any pointer", !7, i64 0}
!24 = !{!"_ZTSNSt8ios_base6_WordsE", !23, i64 0, !19, i64 8}
!25 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !23, i64 0}
!26 = !{!"_ZTSSt6locale", !27, i64 0}
!27 = !{!"p1 _ZTSNSt6locale5_ImplE", !23, i64 0}
!28 = !{!"p1 _ZTSSo", !23, i64 0}
!29 = !{!"bool", !7, i64 0}
!30 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !23, i64 0}
!31 = !{!"p1 _ZTSSt5ctypeIcE", !23, i64 0}
!32 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !23, i64 0}
!33 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !23, i64 0}
!34 = !{!35, !7, i64 56}
!35 = !{!"_ZTSSt5ctypeIcE", !36, i64 0, !37, i64 16, !29, i64 24, !38, i64 32, !38, i64 40, !39, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!36 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!37 = !{!"p1 _ZTS15__locale_struct", !23, i64 0}
!38 = !{!"p1 int", !23, i64 0}
!39 = !{!"p1 short", !23, i64 0}
!40 = !{!7, !7, i64 0}
!41 = distinct !{!41, !10, !11}
!42 = distinct !{!42, !10, !11, !43, !44}
!43 = !{!"llvm.loop.isvectorized", i32 1}
!44 = !{!"llvm.loop.unroll.runtime.disable"}
!45 = distinct !{!45, !10, !11, !43}
!46 = distinct !{!46, !10, !11, !43, !44}
!47 = distinct !{!47, !10, !11, !43}
!48 = distinct !{!48, !10, !11}
!49 = distinct !{!49, !10, !11, !43, !44}
!50 = distinct !{!50, !10, !11, !43}
!51 = distinct !{!51, !10, !11}
!52 = distinct !{!52, !10, !11}
!53 = distinct !{!53, !10, !11, !43, !44}
!54 = distinct !{!54, !10, !11, !43}
!55 = distinct !{!55, !10, !11}
!56 = distinct !{!56, !10, !11}
!57 = distinct !{!57, !10, !11}
!58 = distinct !{!58, !10, !11}
!59 = distinct !{!59, !10, !11, !43, !44}
!60 = distinct !{!60, !10, !11, !43}
!61 = distinct !{!61, !10, !11, !43, !44}
!62 = distinct !{!62, !10, !11, !43}
