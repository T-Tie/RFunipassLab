; ModuleID = '<stdin>'
source_filename = "/tmp/tmpld0gpy3p.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }

@sum = dso_local local_unnamed_addr global i32 0, align 4
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %a = alloca [100 x [100 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #6
  store i32 0, ptr %n, align 4, !tbaa !5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  call void @llvm.lifetime.start.p0(i64 40000, ptr nonnull %a) #6
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp.not11 = icmp slt i32 %0, 1
  br i1 %cmp.not11, label %for.cond.cleanup, label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %entry, %for.inc20
  %1 = phi i32 [ %12, %for.inc20 ], [ %0, %entry ]
  %f.012 = phi i32 [ %inc21, %for.inc20 ], [ 1, %entry ]
  %cmp2.not.not9 = icmp sgt i32 %1, 0
  br i1 %cmp2.not.not9, label %for.cond5.preheader, label %for.cond.cleanup3

for.cond.cleanup:                                 ; preds = %for.inc20, %entry
  call void @llvm.lifetime.end.p0(i64 40000, ptr nonnull %a) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #6
  ret i32 0

for.cond5.preheader:                              ; preds = %for.cond1.preheader, %for.cond.cleanup8
  %2 = phi i32 [ %5, %for.cond.cleanup8 ], [ %1, %for.cond1.preheader ]
  %indvars.iv16 = phi i64 [ %indvars.iv.next17, %for.cond.cleanup8 ], [ 0, %for.cond1.preheader ]
  %cmp7.not.not7 = icmp sgt i32 %2, 0
  br i1 %cmp7.not.not7, label %for.body9, label %for.cond5.preheader.for.cond.cleanup8_crit_edge

for.cond5.preheader.for.cond.cleanup8_crit_edge:  ; preds = %for.cond5.preheader
  %.pre = sext i32 %2 to i64
  br label %for.cond.cleanup8

for.cond.cleanup3:                                ; preds = %for.cond.cleanup8, %for.cond1.preheader
  %.lcssa = phi i32 [ %1, %for.cond1.preheader ], [ %5, %for.cond.cleanup8 ]
  store i32 0, ptr @sum, align 4, !tbaa !5
  call void @_Z11SubtractionPA100_ii(ptr noundef nonnull %a, i32 noundef %.lcssa)
  %3 = load i32, ptr %n, align 4, !tbaa !5
  %cmp16 = icmp eq i32 %f.012, %3
  %4 = load i32, ptr @sum, align 4, !tbaa !5
  %call17 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %4)
  br i1 %cmp16, label %for.inc20, label %if.else

for.cond.cleanup8:                                ; preds = %for.body9, %for.cond5.preheader.for.cond.cleanup8_crit_edge
  %.pre-phi = phi i64 [ %.pre, %for.cond5.preheader.for.cond.cleanup8_crit_edge ], [ %7, %for.body9 ]
  %5 = phi i32 [ %2, %for.cond5.preheader.for.cond.cleanup8_crit_edge ], [ %6, %for.body9 ]
  %indvars.iv.next17 = add nuw nsw i64 %indvars.iv16, 1
  %cmp2.not.not = icmp slt i64 %indvars.iv.next17, %.pre-phi
  br i1 %cmp2.not.not, label %for.cond5.preheader, label %for.cond.cleanup3, !llvm.loop !9

for.body9:                                        ; preds = %for.cond5.preheader, %for.body9
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body9 ], [ 0, %for.cond5.preheader ]
  %arrayidx11 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv16, i64 %indvars.iv
  %call12 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx11)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %6 = load i32, ptr %n, align 4, !tbaa !5
  %7 = sext i32 %6 to i64
  %cmp7.not.not = icmp slt i64 %indvars.iv.next, %7
  br i1 %cmp7.not.not, label %for.body9, label %for.cond.cleanup8, !llvm.loop !13

if.else:                                          ; preds = %for.cond.cleanup3
  %vtable.i = load ptr, ptr %call17, align 8, !tbaa !14
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call17, i64 %vbase.offset.i
  %_M_ctype.i.i = getelementptr inbounds nuw i8, ptr %add.ptr.i, i64 240
  %8 = load ptr, ptr %_M_ctype.i.i, align 8, !tbaa !16
  %tobool.not.i.i.i = icmp eq ptr %8, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

if.then.i.i.i:                                    ; preds = %if.else
  call void @_ZSt16__throw_bad_castv() #7
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %if.else
  %_M_widen_ok.i.i.i = getelementptr inbounds nuw i8, ptr %8, i64 56
  %9 = load i8, ptr %_M_widen_ok.i.i.i, align 8, !tbaa !34
  %tobool.not.i1.i.i = icmp eq i8 %9, 0
  br i1 %tobool.not.i1.i.i, label %if.end.i.i.i, label %if.then.i2.i.i

if.then.i2.i.i:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %arrayidx.i.i.i = getelementptr inbounds nuw i8, ptr %8, i64 67
  %10 = load i8, ptr %arrayidx.i.i.i, align 1, !tbaa !40
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

if.end.i.i.i:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %8)
  %vtable.i.i.i = load ptr, ptr %8, align 8, !tbaa !14
  %vfn.i.i.i = getelementptr inbounds nuw i8, ptr %vtable.i.i.i, i64 48
  %11 = load ptr, ptr %vfn.i.i.i, align 8
  %call.i.i.i = call noundef signext i8 %11(ptr noundef nonnull align 8 dereferenceable(570) %8, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %if.then.i2.i.i, %if.end.i.i.i
  %retval.0.i.i.i = phi i8 [ %10, %if.then.i2.i.i ], [ %call.i.i.i, %if.end.i.i.i ]
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call17, i8 noundef signext %retval.0.i.i.i)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  br label %for.inc20

for.inc20:                                        ; preds = %for.cond.cleanup3, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %inc21 = add nuw nsw i32 %f.012, 1
  %12 = load i32, ptr %n, align 4, !tbaa !5
  %cmp.not.not = icmp slt i32 %f.012, %12
  br i1 %cmp.not.not, label %for.cond1.preheader, label %for.cond.cleanup, !llvm.loop !41
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @_Z11SubtractionPA100_ii(ptr noundef captures(none) %m, i32 noundef %n) local_unnamed_addr #3 {
entry:
  %mtuta = alloca [100 x [100 x i32]], align 16
  %cmp.not = icmp eq i32 %n, 1
  br i1 %cmp.not, label %if.end122, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %cmp1.not.not58 = icmp sgt i32 %n, 0
  br i1 %cmp1.not.not58, label %for.body.us.us.preheader, label %for.cond.cleanup39.thread

for.body.us.us.preheader:                         ; preds = %for.cond.preheader
  %wide.trip.count113 = zext nneg i32 %n to i64
  %min.iters.check148 = icmp ult i32 %n, 4
  %n.vec151 = and i64 %wide.trip.count113, 2147483644
  %cmp.n159 = icmp eq i64 %n.vec151, %wide.trip.count113
  %min.iters.check = icmp ult i32 %n, 4
  %n.vec = and i64 %wide.trip.count113, 2147483644
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count113
  br label %for.body.us.us

for.body.us.us:                                   ; preds = %for.body.us.us.preheader, %for.cond19.for.cond.cleanup22_crit_edge.us.us
  %indvars.iv110 = phi i64 [ 0, %for.body.us.us.preheader ], [ %indvars.iv.next111, %for.cond19.for.cond.cleanup22_crit_edge.us.us ]
  %arrayidx.us.us = getelementptr inbounds nuw [100 x i32], ptr %m, i64 %indvars.iv110
  %0 = load i32, ptr %arrayidx.us.us, align 4, !tbaa !5
  br i1 %min.iters.check148, label %for.body7.us.us.preheader, label %vector.ph149

vector.ph149:                                     ; preds = %for.body.us.us
  %broadcast.splatinsert152 = insertelement <4 x i32> poison, i32 %0, i64 0
  %broadcast.splat153 = shufflevector <4 x i32> %broadcast.splatinsert152, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body154

vector.body154:                                   ; preds = %vector.body154, %vector.ph149
  %index155 = phi i64 [ 0, %vector.ph149 ], [ %index.next157, %vector.body154 ]
  %vec.phi = phi <4 x i32> [ %broadcast.splat153, %vector.ph149 ], [ %2, %vector.body154 ]
  %1 = getelementptr inbounds nuw [100 x i32], ptr %m, i64 %indvars.iv110, i64 %index155
  %wide.load156 = load <4 x i32>, ptr %1, align 4, !tbaa !5
  %2 = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %vec.phi, <4 x i32> %wide.load156)
  %index.next157 = add nuw i64 %index155, 4
  %3 = icmp eq i64 %index.next157, %n.vec151
  br i1 %3, label %middle.block158, label %vector.body154, !llvm.loop !42

middle.block158:                                  ; preds = %vector.body154
  %4 = tail call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %2)
  br i1 %cmp.n159, label %for.cond3.for.cond19.preheader_crit_edge.us.us, label %for.body7.us.us.preheader

for.body7.us.us.preheader:                        ; preds = %for.body.us.us, %middle.block158
  %indvars.iv.ph = phi i64 [ 0, %for.body.us.us ], [ %n.vec151, %middle.block158 ]
  %min.054.us.us.ph = phi i32 [ %0, %for.body.us.us ], [ %4, %middle.block158 ]
  br label %for.body7.us.us

for.body23.us.us:                                 ; preds = %for.body23.us.us.preheader, %for.body23.us.us
  %indvars.iv105 = phi i64 [ %indvars.iv.next106, %for.body23.us.us ], [ %indvars.iv105.ph, %for.body23.us.us.preheader ]
  %arrayidx27.us.us = getelementptr inbounds nuw [100 x i32], ptr %m, i64 %indvars.iv110, i64 %indvars.iv105
  %5 = load i32, ptr %arrayidx27.us.us, align 4, !tbaa !5
  %sub28.us.us = sub nsw i32 %5, %spec.select.us.us.lcssa
  store i32 %sub28.us.us, ptr %arrayidx27.us.us, align 4, !tbaa !5
  %indvars.iv.next106 = add nuw nsw i64 %indvars.iv105, 1
  %exitcond109.not = icmp eq i64 %indvars.iv.next106, %wide.trip.count113
  br i1 %exitcond109.not, label %for.cond19.for.cond.cleanup22_crit_edge.us.us, label %for.body23.us.us, !llvm.loop !45

for.body7.us.us:                                  ; preds = %for.body7.us.us.preheader, %for.body7.us.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body7.us.us ], [ %indvars.iv.ph, %for.body7.us.us.preheader ]
  %min.054.us.us = phi i32 [ %spec.select.us.us, %for.body7.us.us ], [ %min.054.us.us.ph, %for.body7.us.us.preheader ]
  %arrayidx11.us.us = getelementptr inbounds nuw [100 x i32], ptr %m, i64 %indvars.iv110, i64 %indvars.iv
  %6 = load i32, ptr %arrayidx11.us.us, align 4, !tbaa !5
  %spec.select.us.us = tail call i32 @llvm.smin.i32(i32 %min.054.us.us, i32 %6)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count113
  br i1 %exitcond.not, label %for.cond3.for.cond19.preheader_crit_edge.us.us, label %for.body7.us.us, !llvm.loop !46

for.cond3.for.cond19.preheader_crit_edge.us.us:   ; preds = %for.body7.us.us, %middle.block158
  %spec.select.us.us.lcssa = phi i32 [ %4, %middle.block158 ], [ %spec.select.us.us, %for.body7.us.us ]
  br i1 %min.iters.check, label %for.body23.us.us.preheader, label %vector.ph

vector.ph:                                        ; preds = %for.cond3.for.cond19.preheader_crit_edge.us.us
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %spec.select.us.us.lcssa, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %7 = getelementptr inbounds nuw [100 x i32], ptr %m, i64 %indvars.iv110, i64 %index
  %wide.load = load <4 x i32>, ptr %7, align 4, !tbaa !5
  %8 = sub nsw <4 x i32> %wide.load, %broadcast.splat
  store <4 x i32> %8, ptr %7, align 4, !tbaa !5
  %index.next = add nuw i64 %index, 4
  %9 = icmp eq i64 %index.next, %n.vec
  br i1 %9, label %middle.block, label %vector.body, !llvm.loop !47

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %for.cond19.for.cond.cleanup22_crit_edge.us.us, label %for.body23.us.us.preheader

for.body23.us.us.preheader:                       ; preds = %for.cond3.for.cond19.preheader_crit_edge.us.us, %middle.block
  %indvars.iv105.ph = phi i64 [ 0, %for.cond3.for.cond19.preheader_crit_edge.us.us ], [ %n.vec, %middle.block ]
  br label %for.body23.us.us

for.cond19.for.cond.cleanup22_crit_edge.us.us:    ; preds = %for.body23.us.us, %middle.block
  %indvars.iv.next111 = add nuw nsw i64 %indvars.iv110, 1
  %exitcond114.not = icmp eq i64 %indvars.iv.next111, %wide.trip.count113
  br i1 %exitcond114.not, label %for.body40.lr.ph, label %for.body.us.us, !llvm.loop !48

for.body40.lr.ph:                                 ; preds = %for.cond19.for.cond.cleanup22_crit_edge.us.us
  %wide.trip.count128 = zext nneg i32 %n to i64
  %min.iters.check162 = icmp ult i32 %n, 4
  %n.vec165 = and i64 %wide.trip.count113, 2147483644
  %cmp.n173 = icmp eq i64 %n.vec165, %wide.trip.count113
  br label %for.body40.us

for.body40.us:                                    ; preds = %for.cond.cleanup69.us, %for.body40.lr.ph
  %indvars.iv125 = phi i64 [ %indvars.iv.next126, %for.cond.cleanup69.us ], [ 0, %for.body40.lr.ph ]
  %arrayidx44.us = getelementptr inbounds nuw [100 x i32], ptr %m, i64 0, i64 %indvars.iv125
  %10 = load i32, ptr %arrayidx44.us, align 4, !tbaa !5
  br i1 %min.iters.check162, label %for.body50.us.preheader, label %vector.ph163

vector.ph163:                                     ; preds = %for.body40.us
  %broadcast.splatinsert166 = insertelement <4 x i32> poison, i32 %10, i64 0
  %broadcast.splat167 = shufflevector <4 x i32> %broadcast.splatinsert166, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body168

vector.body168:                                   ; preds = %vector.body168, %vector.ph163
  %index169 = phi i64 [ 0, %vector.ph163 ], [ %index.next171, %vector.body168 ]
  %vec.phi170 = phi <4 x i32> [ %broadcast.splat167, %vector.ph163 ], [ %26, %vector.body168 ]
  %11 = or disjoint i64 %index169, 1
  %12 = or disjoint i64 %index169, 2
  %13 = or disjoint i64 %index169, 3
  %14 = getelementptr inbounds nuw [100 x i32], ptr %m, i64 %index169, i64 %indvars.iv125
  %15 = getelementptr inbounds nuw [100 x i32], ptr %m, i64 %11, i64 %indvars.iv125
  %16 = getelementptr inbounds nuw [100 x i32], ptr %m, i64 %12, i64 %indvars.iv125
  %17 = getelementptr inbounds nuw [100 x i32], ptr %m, i64 %13, i64 %indvars.iv125
  %18 = load i32, ptr %14, align 4, !tbaa !5
  %19 = load i32, ptr %15, align 4, !tbaa !5
  %20 = load i32, ptr %16, align 4, !tbaa !5
  %21 = load i32, ptr %17, align 4, !tbaa !5
  %22 = insertelement <4 x i32> poison, i32 %18, i64 0
  %23 = insertelement <4 x i32> %22, i32 %19, i64 1
  %24 = insertelement <4 x i32> %23, i32 %20, i64 2
  %25 = insertelement <4 x i32> %24, i32 %21, i64 3
  %26 = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %vec.phi170, <4 x i32> %25)
  %index.next171 = add nuw i64 %index169, 4
  %27 = icmp eq i64 %index.next171, %n.vec165
  br i1 %27, label %middle.block172, label %vector.body168, !llvm.loop !49

middle.block172:                                  ; preds = %vector.body168
  %28 = tail call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %26)
  br i1 %cmp.n173, label %for.body70.us.preheader, label %for.body50.us.preheader

for.body50.us.preheader:                          ; preds = %for.body40.us, %middle.block172
  %indvars.iv115.ph = phi i64 [ 0, %for.body40.us ], [ %n.vec165, %middle.block172 ]
  %min41.077.us.ph = phi i32 [ %10, %for.body40.us ], [ %28, %middle.block172 ]
  br label %for.body50.us

for.cond.cleanup69.us:                            ; preds = %for.body70.us
  %indvars.iv.next126 = add nuw nsw i64 %indvars.iv125, 1
  %exitcond129.not = icmp eq i64 %indvars.iv.next126, %wide.trip.count128
  br i1 %exitcond129.not, label %for.cond.cleanup39, label %for.body40.us, !llvm.loop !50

for.body70.us:                                    ; preds = %for.body70.us.preheader, %for.body70.us
  %indvars.iv120 = phi i64 [ 0, %for.body70.us.preheader ], [ %indvars.iv.next121, %for.body70.us ]
  %arrayidx74.us = getelementptr inbounds nuw [100 x i32], ptr %m, i64 %indvars.iv120, i64 %indvars.iv125
  %29 = load i32, ptr %arrayidx74.us, align 4, !tbaa !5
  %sub75.us = sub nsw i32 %29, %spec.select52.us.lcssa
  store i32 %sub75.us, ptr %arrayidx74.us, align 4, !tbaa !5
  %indvars.iv.next121 = add nuw nsw i64 %indvars.iv120, 1
  %exitcond124.not = icmp eq i64 %indvars.iv.next121, %wide.trip.count128
  br i1 %exitcond124.not, label %for.cond.cleanup69.us, label %for.body70.us, !llvm.loop !51

for.body50.us:                                    ; preds = %for.body50.us.preheader, %for.body50.us
  %indvars.iv115 = phi i64 [ %indvars.iv.next116, %for.body50.us ], [ %indvars.iv115.ph, %for.body50.us.preheader ]
  %min41.077.us = phi i32 [ %spec.select52.us, %for.body50.us ], [ %min41.077.us.ph, %for.body50.us.preheader ]
  %arrayidx54.us = getelementptr inbounds nuw [100 x i32], ptr %m, i64 %indvars.iv115, i64 %indvars.iv125
  %30 = load i32, ptr %arrayidx54.us, align 4, !tbaa !5
  %spec.select52.us = tail call i32 @llvm.smin.i32(i32 %min41.077.us, i32 %30)
  %indvars.iv.next116 = add nuw nsw i64 %indvars.iv115, 1
  %exitcond119.not = icmp eq i64 %indvars.iv.next116, %wide.trip.count128
  br i1 %exitcond119.not, label %for.body70.us.preheader, label %for.body50.us, !llvm.loop !52

for.body70.us.preheader:                          ; preds = %for.body50.us, %middle.block172
  %spec.select52.us.lcssa = phi i32 [ %28, %middle.block172 ], [ %spec.select52.us, %for.body50.us ]
  br label %for.body70.us

for.cond.cleanup39.thread:                        ; preds = %for.cond.preheader
  %arrayidx83144 = getelementptr inbounds nuw i8, ptr %m, i64 404
  %31 = load i32, ptr %arrayidx83144, align 4, !tbaa !5
  %32 = load i32, ptr @sum, align 4, !tbaa !5
  %add145 = add nsw i32 %32, %31
  store i32 %add145, ptr @sum, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 40000, ptr nonnull %mtuta) #6
  br label %for.cond.cleanup88

for.cond.cleanup39:                               ; preds = %for.cond.cleanup69.us
  %arrayidx83 = getelementptr inbounds nuw i8, ptr %m, i64 404
  %33 = load i32, ptr %arrayidx83, align 4, !tbaa !5
  %34 = load i32, ptr @sum, align 4, !tbaa !5
  %add = add nsw i32 %34, %33
  store i32 %add, ptr @sum, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 40000, ptr nonnull %mtuta) #6
  %wide.trip.count138 = zext nneg i32 %n to i64
  br label %for.body89.us

for.body89.us:                                    ; preds = %for.cond.cleanup39, %for.inc118.us
  %indvars.iv135 = phi i64 [ 0, %for.cond.cleanup39 ], [ %indvars.iv.next136, %for.inc118.us ]
  %cmp90.us = icmp eq i64 %indvars.iv135, 1
  br i1 %cmp90.us, label %for.inc118.us, label %for.cond94.preheader.us

for.body98.us:                                    ; preds = %for.cond94.preheader.us, %for.inc115.us
  %indvars.iv130 = phi i64 [ 0, %for.cond94.preheader.us ], [ %indvars.iv.next131, %for.inc115.us ]
  %cmp99.us = icmp eq i64 %indvars.iv130, 1
  br i1 %cmp99.us, label %for.inc115.us, label %if.end101.us

if.end101.us:                                     ; preds = %for.body98.us
  %arrayidx105.us = getelementptr inbounds nuw [100 x i32], ptr %m, i64 %indvars.iv135, i64 %indvars.iv130
  %35 = load i32, ptr %arrayidx105.us, align 4, !tbaa !5
  %cmp110.us = icmp ne i64 %indvars.iv130, 0
  %conv111.neg.us = sext i1 %cmp110.us to i64
  %sub112.us = add i64 %indvars.iv130, %conv111.neg.us
  %sext140 = shl i64 %sub112.us, 32
  %idxprom113.us = ashr exact i64 %sext140, 32
  %arrayidx114.us = getelementptr inbounds [100 x [100 x i32]], ptr %mtuta, i64 0, i64 %idxprom108.us, i64 %idxprom113.us
  store i32 %35, ptr %arrayidx114.us, align 4, !tbaa !5
  br label %for.inc115.us

for.inc115.us:                                    ; preds = %if.end101.us, %for.body98.us
  %indvars.iv.next131 = add nuw nsw i64 %indvars.iv130, 1
  %exitcond134.not = icmp eq i64 %indvars.iv.next131, %wide.trip.count138
  br i1 %exitcond134.not, label %for.inc118.us, label %for.body98.us, !llvm.loop !53

for.inc118.us:                                    ; preds = %for.inc115.us, %for.body89.us
  %indvars.iv.next136 = add nuw nsw i64 %indvars.iv135, 1
  %exitcond139.not = icmp eq i64 %indvars.iv.next136, %wide.trip.count138
  br i1 %exitcond139.not, label %for.cond.cleanup88, label %for.body89.us, !llvm.loop !54

for.cond94.preheader.us:                          ; preds = %for.body89.us
  %cmp106.us = icmp ne i64 %indvars.iv135, 0
  %conv.neg.us = sext i1 %cmp106.us to i64
  %sub107.us = add i64 %indvars.iv135, %conv.neg.us
  %sext = shl i64 %sub107.us, 32
  %idxprom108.us = ashr exact i64 %sext, 32
  br label %for.body98.us

for.cond.cleanup88:                               ; preds = %for.inc118.us, %for.cond.cleanup39.thread
  %sub.le142146 = add nsw i32 %n, -1
  call void @_Z11SubtractionPA100_ii(ptr noundef nonnull %mtuta, i32 noundef %sub.le142146)
  call void @llvm.lifetime.end.p0(i64 40000, ptr nonnull %mtuta) #6
  br label %if.end122

if.end122:                                        ; preds = %for.cond.cleanup88, %entry
  ret void
}

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
attributes #3 = { mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!9 = distinct !{!9, !10, !11, !12}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = !{!"llvm.loop.unswitch.partial.disable"}
!13 = distinct !{!13, !10, !11}
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
!46 = distinct !{!46, !10, !11, !43}
!47 = distinct !{!47, !10, !11, !43, !44}
!48 = distinct !{!48, !10, !11}
!49 = distinct !{!49, !10, !11, !43, !44}
!50 = distinct !{!50, !10, !11}
!51 = distinct !{!51, !10, !11}
!52 = distinct !{!52, !10, !11, !43}
!53 = distinct !{!53, !10, !11}
!54 = distinct !{!54, !10, !11}
