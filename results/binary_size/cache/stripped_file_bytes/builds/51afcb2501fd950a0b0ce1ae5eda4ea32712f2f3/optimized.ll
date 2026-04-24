; ModuleID = '<stdin>'
source_filename = "/tmp/tmp0ehhfcqt.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }

@a = dso_local global [502 x i8] zeroinitializer, align 16
@b = dso_local global [502 x [6 x i8]] zeroinitializer, align 16
@c = dso_local local_unnamed_addr global [502 x i8] zeroinitializer, align 16
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [3 x i8] c"NO\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #7
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %vtable7.i = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  %vbase.offset.ptr8.i = getelementptr i8, ptr %vtable7.i, i64 -24
  %vbase.offset9.i = load i64, ptr %vbase.offset.ptr8.i, align 8
  %add.ptr10.i = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset9.i
  %_M_width.i17.i = getelementptr inbounds nuw i8, ptr %add.ptr10.i, i64 16
  %0 = load i64, ptr %_M_width.i17.i, align 8, !tbaa !8
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull @a, i64 noundef 502)
  %vtable12.i = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  %vbase.offset.ptr13.i = getelementptr i8, ptr %vtable12.i, i64 -24
  %vbase.offset14.i = load i64, ptr %vbase.offset.ptr13.i, align 8
  %add.ptr15.i = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset14.i
  %_M_streambuf_state.i.i18.i = getelementptr inbounds nuw i8, ptr %add.ptr15.i, i64 32
  %1 = load i32, ptr %_M_streambuf_state.i.i18.i, align 8, !tbaa !21
  %cmp.i.i = icmp eq i32 %1, 0
  %2 = add i64 %0, -503
  %or.cond.i = icmp ult i64 %2, -502
  %or.cond = select i1 %cmp.i.i, i1 %or.cond.i, i1 false
  br i1 %or.cond, label %if.then19.i, label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit

if.then19.i:                                      ; preds = %entry
  %_M_streambuf.i.i = getelementptr inbounds nuw i8, ptr %add.ptr15.i, i64 232
  %3 = load ptr, ptr %_M_streambuf.i.i, align 8, !tbaa !22
  %_M_in_cur.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  %4 = load ptr, ptr %_M_in_cur.i.i.i, align 8, !tbaa !30
  %_M_in_end.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  %5 = load ptr, ptr %_M_in_end.i.i.i, align 8, !tbaa !33
  %cmp.i19.i = icmp ult ptr %4, %5
  br i1 %cmp.i19.i, label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i, !prof !34

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i: ; preds = %if.then19.i
  %vtable.i.i = load ptr, ptr %3, align 8, !tbaa !5
  %vfn.i.i = getelementptr inbounds nuw i8, ptr %vtable.i.i, i64 72
  %6 = load ptr, ptr %vfn.i.i, align 8
  %call5.i.i = call noundef i32 %6(ptr noundef nonnull align 8 dereferenceable(64) %3)
  %cmp.i20.i = icmp eq i32 %call5.i.i, -1
  br i1 %cmp.i20.i, label %if.then28.i, label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit, !prof !35

if.then28.i:                                      ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i
  %vtable29.i = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  %vbase.offset.ptr30.i = getelementptr i8, ptr %vtable29.i, i64 -24
  %vbase.offset31.i = load i64, ptr %vbase.offset.ptr30.i, align 8
  %add.ptr32.i = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset31.i
  %_M_streambuf_state.i.i21.i = getelementptr inbounds nuw i8, ptr %add.ptr32.i, i64 32
  %7 = load i32, ptr %_M_streambuf_state.i.i21.i, align 8, !tbaa !21
  %or.i.i22.i = or i32 %7, 2
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr32.i, i32 noundef %or.i.i22.i)
  br label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit

_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit: ; preds = %entry, %if.then19.i, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i, %if.then28.i
  %call2 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) @a) #8
  %conv = trunc i64 %call2 to i32
  %8 = load i32, ptr %n, align 4, !tbaa !36
  %sub = sub nsw i32 %conv, %8
  %cmp.not73 = icmp slt i32 %sub, 0
  br i1 %cmp.not73, label %for.end36.thread, label %for.cond3.preheader.lr.ph

for.end36.thread:                                 ; preds = %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit
  %9 = load i8, ptr @c, align 16, !tbaa !37
  %conv37107 = sext i8 %9 to i32
  br label %for.end53

for.cond3.preheader.lr.ph:                        ; preds = %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit
  %cmp471 = icmp sgt i32 %8, 0
  br i1 %cmp471, label %for.cond3.preheader.us.preheader, label %for.body16.preheader

for.cond3.preheader.us.preheader:                 ; preds = %for.cond3.preheader.lr.ph
  %10 = zext nneg i32 %8 to i64
  %11 = add i32 %conv, 1
  %12 = sub i32 %11, %8
  %wide.trip.count = zext i32 %12 to i64
  br label %for.cond3.preheader.us

for.cond3.preheader.us:                           ; preds = %for.cond3.preheader.us.preheader, %for.cond3.preheader.us
  %indvar = phi i64 [ 0, %for.cond3.preheader.us.preheader ], [ %indvar.next, %for.cond3.preheader.us ]
  %13 = mul nuw nsw i64 %indvar, 6
  %scevgep = getelementptr nuw i8, ptr @b, i64 %13
  %scevgep87 = getelementptr nuw i8, ptr @a, i64 %indvar
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %scevgep, ptr nonnull align 1 %scevgep87, i64 %10, i1 false), !tbaa !37
  %indvar.next = add nuw nsw i64 %indvar, 1
  %exitcond.not = icmp eq i64 %indvar.next, %wide.trip.count
  br i1 %exitcond.not, label %for.body16.preheader, label %for.cond3.preheader.us, !llvm.loop !38

for.body16.preheader:                             ; preds = %for.cond3.preheader.us, %for.cond3.preheader.lr.ph
  %14 = add i32 %conv, 1
  %15 = sub i32 %14, %8
  %16 = zext nneg i32 %sub to i64
  %wide.trip.count97 = zext i32 %15 to i64
  br label %for.body16

for.cond13.loopexit:                              ; preds = %for.inc31, %for.body16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond98.not = icmp eq i64 %indvars.iv.next95, %wide.trip.count97
  br i1 %exitcond98.not, label %for.body41.preheader, label %for.body16, !llvm.loop !41

for.body16:                                       ; preds = %for.body16.preheader, %for.cond13.loopexit
  %indvars.iv94 = phi i64 [ 0, %for.body16.preheader ], [ %indvars.iv.next95, %for.cond13.loopexit ]
  %indvars.iv = phi i64 [ 1, %for.body16.preheader ], [ %indvars.iv.next, %for.cond13.loopexit ]
  %indvars.iv.next95 = add nuw nsw i64 %indvars.iv94, 1
  %cmp19.not75.not = icmp samesign ult i64 %indvars.iv94, %16
  br i1 %cmp19.not75.not, label %for.body20.lr.ph, label %for.cond13.loopexit

for.body20.lr.ph:                                 ; preds = %for.body16
  %arrayidx22 = getelementptr inbounds nuw [6 x i8], ptr @b, i64 %indvars.iv94
  %arrayidx29 = getelementptr inbounds nuw i8, ptr @c, i64 %indvars.iv94
  br label %for.body20

for.body20:                                       ; preds = %for.body20.lr.ph, %for.inc31
  %indvars.iv90 = phi i64 [ %indvars.iv, %for.body20.lr.ph ], [ %indvars.iv.next91, %for.inc31 ]
  %arrayidx24 = getelementptr inbounds nuw [6 x i8], ptr @b, i64 %indvars.iv90
  %call26 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %arrayidx22, ptr noundef nonnull dereferenceable(1) %arrayidx24) #8
  %cmp27 = icmp eq i32 %call26, 0
  br i1 %cmp27, label %if.then, label %for.inc31

if.then:                                          ; preds = %for.body20
  %17 = load i8, ptr %arrayidx29, align 1, !tbaa !37
  %inc30 = add i8 %17, 1
  store i8 %inc30, ptr %arrayidx29, align 1, !tbaa !37
  br label %for.inc31

for.inc31:                                        ; preds = %for.body20, %if.then
  %indvars.iv.next91 = add nuw nsw i64 %indvars.iv90, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next91 to i32
  %exitcond93.not = icmp eq i32 %15, %lftr.wideiv
  br i1 %exitcond93.not, label %for.cond13.loopexit, label %for.body20, !llvm.loop !42

for.body41.preheader:                             ; preds = %for.cond13.loopexit
  %18 = load i8, ptr @c, align 16, !tbaa !37
  %conv37 = sext i8 %18 to i32
  %19 = add i32 %conv, 1
  %20 = sub i32 %19, %8
  %wide.trip.count102 = zext i32 %20 to i64
  %min.iters.check = icmp ult i32 %15, 4
  br i1 %min.iters.check, label %for.body41.preheader108, label %vector.ph

vector.ph:                                        ; preds = %for.body41.preheader
  %n.vec = and i64 %wide.trip.count97, 4294967292
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %conv37, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %23, %vector.body ]
  %21 = getelementptr inbounds nuw i8, ptr @c, i64 %index
  %wide.load = load <4 x i8>, ptr %21, align 4, !tbaa !37
  %22 = sext <4 x i8> %wide.load to <4 x i32>
  %23 = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi, <4 x i32> %22)
  %index.next = add nuw i64 %index, 4
  %24 = icmp eq i64 %index.next, %n.vec
  br i1 %24, label %middle.block, label %vector.body, !llvm.loop !43

middle.block:                                     ; preds = %vector.body
  %25 = call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %23)
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count97
  br i1 %cmp.n, label %for.end53, label %for.body41.preheader108

for.body41.preheader108:                          ; preds = %for.body41.preheader, %middle.block
  %indvars.iv99.ph = phi i64 [ 0, %for.body41.preheader ], [ %n.vec, %middle.block ]
  %max.081.ph = phi i32 [ %conv37, %for.body41.preheader ], [ %25, %middle.block ]
  br label %for.body41

for.body41:                                       ; preds = %for.body41.preheader108, %for.body41
  %indvars.iv99 = phi i64 [ %indvars.iv.next100, %for.body41 ], [ %indvars.iv99.ph, %for.body41.preheader108 ]
  %max.081 = phi i32 [ %spec.select, %for.body41 ], [ %max.081.ph, %for.body41.preheader108 ]
  %arrayidx43 = getelementptr inbounds nuw i8, ptr @c, i64 %indvars.iv99
  %26 = load i8, ptr %arrayidx43, align 1, !tbaa !37
  %conv44 = sext i8 %26 to i32
  %spec.select = call i32 @llvm.smax.i32(i32 %max.081, i32 %conv44)
  %indvars.iv.next100 = add nuw nsw i64 %indvars.iv99, 1
  %exitcond103.not = icmp eq i64 %indvars.iv.next100, %wide.trip.count102
  br i1 %exitcond103.not, label %for.end53, label %for.body41, !llvm.loop !46

for.end53:                                        ; preds = %for.body41, %middle.block, %for.end36.thread
  %max.0.lcssa = phi i32 [ %conv37107, %for.end36.thread ], [ %25, %middle.block ], [ %spec.select, %for.body41 ]
  %cmp54 = icmp slt i32 %max.0.lcssa, 1
  br i1 %cmp54, label %if.then55, label %if.else

if.then55:                                        ; preds = %for.end53
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 2)
  br label %if.end78

if.else:                                          ; preds = %for.end53
  %add57 = add nuw nsw i32 %max.0.lcssa, 1
  %call58 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %add57)
  %vtable.i45 = load ptr, ptr %call58, align 8, !tbaa !5
  %vbase.offset.ptr.i46 = getelementptr i8, ptr %vtable.i45, i64 -24
  %vbase.offset.i47 = load i64, ptr %vbase.offset.ptr.i46, align 8
  %add.ptr.i48 = getelementptr inbounds i8, ptr %call58, i64 %vbase.offset.i47
  %_M_ctype.i.i = getelementptr inbounds nuw i8, ptr %add.ptr.i48, i64 240
  %27 = load ptr, ptr %_M_ctype.i.i, align 8, !tbaa !47
  %tobool.not.i.i.i = icmp eq ptr %27, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

if.then.i.i.i:                                    ; preds = %if.else
  call void @_ZSt16__throw_bad_castv() #9
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %if.else
  %_M_widen_ok.i.i.i = getelementptr inbounds nuw i8, ptr %27, i64 56
  %28 = load i8, ptr %_M_widen_ok.i.i.i, align 8, !tbaa !48
  %tobool.not.i1.i.i = icmp eq i8 %28, 0
  br i1 %tobool.not.i1.i.i, label %if.end.i.i.i, label %if.then.i2.i.i

if.then.i2.i.i:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %arrayidx.i.i.i = getelementptr inbounds nuw i8, ptr %27, i64 67
  %29 = load i8, ptr %arrayidx.i.i.i, align 1, !tbaa !37
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

if.end.i.i.i:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %27)
  %vtable.i.i.i = load ptr, ptr %27, align 8, !tbaa !5
  %vfn.i.i.i = getelementptr inbounds nuw i8, ptr %vtable.i.i.i, i64 48
  %30 = load ptr, ptr %vfn.i.i.i, align 8
  %call.i.i.i = call noundef signext i8 %30(ptr noundef nonnull align 8 dereferenceable(570) %27, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %if.then.i2.i.i, %if.end.i.i.i
  %retval.0.i.i.i = phi i8 [ %29, %if.then.i2.i.i ], [ %call.i.i.i, %if.end.i.i.i ]
  %call1.i49 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call58, i8 noundef signext %retval.0.i.i.i)
  %call.i.i50 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i49)
  %31 = load i32, ptr %n, align 4, !tbaa !36
  %cmp6284 = icmp slt i32 %31, %conv
  br i1 %cmp6284, label %for.body63, label %if.end78

for.body63:                                       ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %for.inc75
  %32 = phi i32 [ %38, %for.inc75 ], [ %31, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit ]
  %indvars.iv104 = phi i64 [ %indvars.iv.next105, %for.inc75 ], [ 0, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit ]
  %arrayidx65 = getelementptr inbounds nuw i8, ptr @c, i64 %indvars.iv104
  %33 = load i8, ptr %arrayidx65, align 1, !tbaa !37
  %conv66 = sext i8 %33 to i32
  %cmp67 = icmp eq i32 %max.0.lcssa, %conv66
  br i1 %cmp67, label %if.then68, label %for.inc75

if.then68:                                        ; preds = %for.body63
  %arrayidx70 = getelementptr inbounds nuw [6 x i8], ptr @b, i64 %indvars.iv104
  %call.i.i36 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %arrayidx70) #7
  %call1.i37 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %arrayidx70, i64 noundef %call.i.i36)
  %vtable.i51 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !5
  %vbase.offset.ptr.i52 = getelementptr i8, ptr %vtable.i51, i64 -24
  %vbase.offset.i53 = load i64, ptr %vbase.offset.ptr.i52, align 8
  %gep = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 240), i64 %vbase.offset.i53
  %34 = load ptr, ptr %gep, align 8, !tbaa !47
  %tobool.not.i.i.i56 = icmp eq ptr %34, null
  br i1 %tobool.not.i.i.i56, label %if.then.i.i.i69, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i57

if.then.i.i.i69:                                  ; preds = %if.then68
  call void @_ZSt16__throw_bad_castv() #9
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i57: ; preds = %if.then68
  %_M_widen_ok.i.i.i58 = getelementptr inbounds nuw i8, ptr %34, i64 56
  %35 = load i8, ptr %_M_widen_ok.i.i.i58, align 8, !tbaa !48
  %tobool.not.i1.i.i59 = icmp eq i8 %35, 0
  br i1 %tobool.not.i1.i.i59, label %if.end.i.i.i65, label %if.then.i2.i.i60

if.then.i2.i.i60:                                 ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i57
  %arrayidx.i.i.i61 = getelementptr inbounds nuw i8, ptr %34, i64 67
  %36 = load i8, ptr %arrayidx.i.i.i61, align 1, !tbaa !37
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit70

if.end.i.i.i65:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i57
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %34)
  %vtable.i.i.i66 = load ptr, ptr %34, align 8, !tbaa !5
  %vfn.i.i.i67 = getelementptr inbounds nuw i8, ptr %vtable.i.i.i66, i64 48
  %37 = load ptr, ptr %vfn.i.i.i67, align 8
  %call.i.i.i68 = call noundef signext i8 %37(ptr noundef nonnull align 8 dereferenceable(570) %34, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit70

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit70: ; preds = %if.then.i2.i.i60, %if.end.i.i.i65
  %retval.0.i.i.i62 = phi i8 [ %36, %if.then.i2.i.i60 ], [ %call.i.i.i68, %if.end.i.i.i65 ]
  %call1.i63 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %retval.0.i.i.i62)
  %call.i.i64 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i63)
  %.pre = load i32, ptr %n, align 4, !tbaa !36
  br label %for.inc75

for.inc75:                                        ; preds = %for.body63, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit70
  %38 = phi i32 [ %32, %for.body63 ], [ %.pre, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit70 ]
  %indvars.iv.next105 = add nuw nsw i64 %indvars.iv104, 1
  %sub61 = sub nsw i32 %conv, %38
  %39 = sext i32 %sub61 to i64
  %cmp62 = icmp slt i64 %indvars.iv.next105, %39
  br i1 %cmp62, label %for.body63, label %if.end78, !llvm.loop !54

if.end78:                                         ; preds = %for.inc75, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %if.then55
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #7
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #4

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smax.v4i32(<4 x i32>) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nounwind }
attributes #8 = { nounwind willreturn memory(read) }
attributes #9 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.1.8 (https://github.com/llvm/llvm-project.git 2078da43e25a4623cab2d0d60decddf709aaea28)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"vtable pointer", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !10, i64 16}
!9 = !{!"_ZTSSt8ios_base", !10, i64 8, !10, i64 16, !12, i64 24, !13, i64 28, !13, i64 32, !14, i64 40, !16, i64 48, !11, i64 64, !17, i64 192, !18, i64 200, !19, i64 208}
!10 = !{!"long", !11, i64 0}
!11 = !{!"omnipotent char", !7, i64 0}
!12 = !{!"_ZTSSt13_Ios_Fmtflags", !11, i64 0}
!13 = !{!"_ZTSSt12_Ios_Iostate", !11, i64 0}
!14 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !15, i64 0}
!15 = !{!"any pointer", !11, i64 0}
!16 = !{!"_ZTSNSt8ios_base6_WordsE", !15, i64 0, !10, i64 8}
!17 = !{!"int", !11, i64 0}
!18 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !15, i64 0}
!19 = !{!"_ZTSSt6locale", !20, i64 0}
!20 = !{!"p1 _ZTSNSt6locale5_ImplE", !15, i64 0}
!21 = !{!9, !13, i64 32}
!22 = !{!23, !26, i64 232}
!23 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !9, i64 0, !24, i64 216, !11, i64 224, !25, i64 225, !26, i64 232, !27, i64 240, !28, i64 248, !29, i64 256}
!24 = !{!"p1 _ZTSSo", !15, i64 0}
!25 = !{!"bool", !11, i64 0}
!26 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !15, i64 0}
!27 = !{!"p1 _ZTSSt5ctypeIcE", !15, i64 0}
!28 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !15, i64 0}
!29 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !15, i64 0}
!30 = !{!31, !32, i64 16}
!31 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !32, i64 8, !32, i64 16, !32, i64 24, !32, i64 32, !32, i64 40, !32, i64 48, !19, i64 56}
!32 = !{!"p1 omnipotent char", !15, i64 0}
!33 = !{!31, !32, i64 24}
!34 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!35 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!36 = !{!17, !17, i64 0}
!37 = !{!11, !11, i64 0}
!38 = distinct !{!38, !39, !40}
!39 = !{!"llvm.loop.mustprogress"}
!40 = !{!"llvm.loop.unroll.disable"}
!41 = distinct !{!41, !39, !40}
!42 = distinct !{!42, !39, !40}
!43 = distinct !{!43, !39, !40, !44, !45}
!44 = !{!"llvm.loop.isvectorized", i32 1}
!45 = !{!"llvm.loop.unroll.runtime.disable"}
!46 = distinct !{!46, !39, !40, !44}
!47 = !{!23, !27, i64 240}
!48 = !{!49, !11, i64 56}
!49 = !{!"_ZTSSt5ctypeIcE", !50, i64 0, !51, i64 16, !25, i64 24, !52, i64 32, !52, i64 40, !53, i64 48, !11, i64 56, !11, i64 57, !11, i64 313, !11, i64 569}
!50 = !{!"_ZTSNSt6locale5facetE", !17, i64 8}
!51 = !{!"p1 _ZTS15__locale_struct", !15, i64 0}
!52 = !{!"p1 int", !15, i64 0}
!53 = !{!"p1 short", !15, i64 0}
!54 = distinct !{!54, !39, !40}
