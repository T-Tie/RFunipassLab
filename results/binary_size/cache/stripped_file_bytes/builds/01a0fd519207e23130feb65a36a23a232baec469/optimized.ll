; ModuleID = '<stdin>'
source_filename = "/tmp/tmpppwpc17h.cpp"
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
@__const.main.a = private unnamed_addr constant [13 x i32] [i32 0, i32 31, i32 28, i32 31, i32 30, i32 31, i32 30, i32 31, i32 31, i32 30, i32 31, i32 30, i32 31], align 16
@__const.main.b = private unnamed_addr constant [13 x i32] [i32 0, i32 31, i32 29, i32 31, i32 30, i32 31, i32 30, i32 31, i32 31, i32 30, i32 31, i32 30, i32 31], align 16
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [4 x i8] c"YES\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"NO\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %year = alloca i32, align 4
  %month1 = alloca i32, align 4
  %month2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %year) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %month1) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %month2) #5
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp.not93 = icmp slt i32 %0, 1
  br i1 %cmp.not93, label %for.end50, label %for.body

for.body:                                         ; preds = %entry, %if.end47
  %i.094 = phi i32 [ %inc49, %if.end47 ], [ 1, %entry ]
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %year)
  %call2 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %call1, ptr noundef nonnull align 4 dereferenceable(4) %month1)
  %call3 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %call2, ptr noundef nonnull align 4 dereferenceable(4) %month2)
  %1 = load i32, ptr %month1, align 4, !tbaa !5
  %2 = load i32, ptr %month2, align 4, !tbaa !5
  %cond = call i32 @llvm.smax.i32(i32 %1, i32 %2)
  %cond9 = call i32 @llvm.smin.i32(i32 %1, i32 %2)
  %3 = load i32, ptr %year, align 4, !tbaa !5
  %4 = and i32 %3, 3
  %cmp10 = icmp eq i32 %4, 0
  %rem11 = srem i32 %3, 100
  %cmp12.not = icmp ne i32 %rem11, 0
  %or.cond.not82 = and i1 %cmp10, %cmp12.not
  %rem13 = srem i32 %3, 400
  %cmp14 = icmp eq i32 %rem13, 0
  %or.cond81 = or i1 %cmp14, %or.cond.not82
  %cmp1686 = icmp slt i32 %cond9, %cond
  br i1 %or.cond81, label %for.cond15.preheader, label %for.cond28.preheader

for.cond28.preheader:                             ; preds = %for.body
  br i1 %cmp1686, label %for.body31.preheader, label %if.then40

for.body31.preheader:                             ; preds = %for.cond28.preheader
  %5 = call i32 @llvm.smin.i32(i32 %2, i32 %1)
  %smin = sext i32 %5 to i64
  %6 = call i32 @llvm.smax.i32(i32 %1, i32 %2)
  %7 = xor i32 %5, -1
  %8 = add i32 %6, %7
  %9 = zext i32 %8 to i64
  %10 = add nuw nsw i64 %9, 1
  %min.iters.check103 = icmp ult i32 %8, 3
  br i1 %min.iters.check103, label %for.body31.preheader118, label %vector.ph104

vector.ph104:                                     ; preds = %for.body31.preheader
  %n.vec106 = and i64 %10, 8589934588
  %11 = add nsw i64 %n.vec106, %smin
  br label %vector.body107

vector.body107:                                   ; preds = %vector.body107, %vector.ph104
  %index108 = phi i64 [ 0, %vector.ph104 ], [ %index.next112, %vector.body107 ]
  %vec.phi109 = phi <4 x i32> [ zeroinitializer, %vector.ph104 ], [ %13, %vector.body107 ]
  %offset.idx110 = add i64 %index108, %smin
  %12 = getelementptr inbounds [13 x i32], ptr @__const.main.a, i64 0, i64 %offset.idx110
  %wide.load111 = load <4 x i32>, ptr %12, align 4, !tbaa !5
  %13 = add <4 x i32> %wide.load111, %vec.phi109
  %index.next112 = add nuw i64 %index108, 4
  %14 = icmp eq i64 %index.next112, %n.vec106
  br i1 %14, label %middle.block113, label %vector.body107, !llvm.loop !9

middle.block113:                                  ; preds = %vector.body107
  %15 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %13)
  %cmp.n114 = icmp eq i64 %10, %n.vec106
  br i1 %cmp.n114, label %for.cond.cleanup30, label %for.body31.preheader118

for.body31.preheader118:                          ; preds = %for.body31.preheader, %middle.block113
  %indvars.iv.ph = phi i64 [ %smin, %for.body31.preheader ], [ %11, %middle.block113 ]
  %sum26.084.ph = phi i32 [ 0, %for.body31.preheader ], [ %15, %middle.block113 ]
  br label %for.body31

for.cond15.preheader:                             ; preds = %for.body
  br i1 %cmp1686, label %for.body17.preheader, label %if.then20

for.body17.preheader:                             ; preds = %for.cond15.preheader
  %16 = call i32 @llvm.smin.i32(i32 %2, i32 %1)
  %smin95 = sext i32 %16 to i64
  %17 = call i32 @llvm.smax.i32(i32 %1, i32 %2)
  %18 = xor i32 %16, -1
  %19 = add i32 %cond, %18
  %20 = zext i32 %19 to i64
  %21 = add nuw nsw i64 %20, 1
  %min.iters.check = icmp ult i32 %19, 3
  br i1 %min.iters.check, label %for.body17.preheader117, label %vector.ph

vector.ph:                                        ; preds = %for.body17.preheader
  %n.vec = and i64 %21, 8589934588
  %22 = add nsw i64 %n.vec, %smin95
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %24, %vector.body ]
  %offset.idx = add i64 %index, %smin95
  %23 = getelementptr inbounds [13 x i32], ptr @__const.main.b, i64 0, i64 %offset.idx
  %wide.load = load <4 x i32>, ptr %23, align 4, !tbaa !5
  %24 = add <4 x i32> %wide.load, %vec.phi
  %index.next = add nuw i64 %index, 4
  %25 = icmp eq i64 %index.next, %n.vec
  br i1 %25, label %middle.block, label %vector.body, !llvm.loop !14

middle.block:                                     ; preds = %vector.body
  %26 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %24)
  %cmp.n = icmp eq i64 %21, %n.vec
  br i1 %cmp.n, label %for.cond.cleanup, label %for.body17.preheader117

for.body17.preheader117:                          ; preds = %for.body17.preheader, %middle.block
  %indvars.iv96.ph = phi i64 [ %smin95, %for.body17.preheader ], [ %22, %middle.block ]
  %sum.087.ph = phi i32 [ 0, %for.body17.preheader ], [ %26, %middle.block ]
  br label %for.body17

for.cond.cleanup:                                 ; preds = %for.body17, %middle.block
  %add.lcssa = phi i32 [ %26, %middle.block ], [ %add, %for.body17 ]
  %27 = srem i32 %add.lcssa, 7
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %if.then20, label %if.else

for.body17:                                       ; preds = %for.body17.preheader117, %for.body17
  %indvars.iv96 = phi i64 [ %indvars.iv.next97, %for.body17 ], [ %indvars.iv96.ph, %for.body17.preheader117 ]
  %sum.087 = phi i32 [ %add, %for.body17 ], [ %sum.087.ph, %for.body17.preheader117 ]
  %arrayidx = getelementptr inbounds [13 x i32], ptr @__const.main.b, i64 0, i64 %indvars.iv96
  %29 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %add = add nsw i32 %29, %sum.087
  %indvars.iv.next97 = add nsw i64 %indvars.iv96, 1
  %lftr.wideiv98 = trunc i64 %indvars.iv.next97 to i32
  %exitcond99.not = icmp eq i32 %17, %lftr.wideiv98
  br i1 %exitcond99.not, label %for.cond.cleanup, label %for.body17, !llvm.loop !15

if.then20:                                        ; preds = %for.cond15.preheader, %for.cond.cleanup
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 3)
  %vtable.i = load ptr, ptr @_ZSt4cout, align 8, !tbaa !16
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %gep92 = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 240), i64 %vbase.offset.i
  %30 = load ptr, ptr %gep92, align 8, !tbaa !18
  %tobool.not.i.i.i = icmp eq ptr %30, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

if.then.i.i.i:                                    ; preds = %if.then20
  call void @_ZSt16__throw_bad_castv() #6
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %if.then20
  %_M_widen_ok.i.i.i = getelementptr inbounds nuw i8, ptr %30, i64 56
  %31 = load i8, ptr %_M_widen_ok.i.i.i, align 8, !tbaa !36
  %tobool.not.i1.i.i = icmp eq i8 %31, 0
  br i1 %tobool.not.i1.i.i, label %if.end.i.i.i, label %if.then.i2.i.i

if.then.i2.i.i:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %arrayidx.i.i.i = getelementptr inbounds nuw i8, ptr %30, i64 67
  %32 = load i8, ptr %arrayidx.i.i.i, align 1, !tbaa !42
  br label %if.end47

if.end.i.i.i:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %30)
  %vtable.i.i.i = load ptr, ptr %30, align 8, !tbaa !16
  %vfn.i.i.i = getelementptr inbounds nuw i8, ptr %vtable.i.i.i, i64 48
  %33 = load ptr, ptr %vfn.i.i.i, align 8
  %call.i.i.i = call noundef signext i8 %33(ptr noundef nonnull align 8 dereferenceable(570) %30, i8 noundef signext 10)
  br label %if.end47

if.else:                                          ; preds = %for.cond.cleanup
  %call1.i11 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.1, i64 noundef 2)
  %vtable.i21 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !16
  %vbase.offset.ptr.i22 = getelementptr i8, ptr %vtable.i21, i64 -24
  %vbase.offset.i23 = load i64, ptr %vbase.offset.ptr.i22, align 8
  %gep91 = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 240), i64 %vbase.offset.i23
  %34 = load ptr, ptr %gep91, align 8, !tbaa !18
  %tobool.not.i.i.i26 = icmp eq ptr %34, null
  br i1 %tobool.not.i.i.i26, label %if.then.i.i.i39, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i27

if.then.i.i.i39:                                  ; preds = %if.else
  call void @_ZSt16__throw_bad_castv() #6
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i27: ; preds = %if.else
  %_M_widen_ok.i.i.i28 = getelementptr inbounds nuw i8, ptr %34, i64 56
  %35 = load i8, ptr %_M_widen_ok.i.i.i28, align 8, !tbaa !36
  %tobool.not.i1.i.i29 = icmp eq i8 %35, 0
  br i1 %tobool.not.i1.i.i29, label %if.end.i.i.i35, label %if.then.i2.i.i30

if.then.i2.i.i30:                                 ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i27
  %arrayidx.i.i.i31 = getelementptr inbounds nuw i8, ptr %34, i64 67
  %36 = load i8, ptr %arrayidx.i.i.i31, align 1, !tbaa !42
  br label %if.end47

if.end.i.i.i35:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i27
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %34)
  %vtable.i.i.i36 = load ptr, ptr %34, align 8, !tbaa !16
  %vfn.i.i.i37 = getelementptr inbounds nuw i8, ptr %vtable.i.i.i36, i64 48
  %37 = load ptr, ptr %vfn.i.i.i37, align 8
  %call.i.i.i38 = call noundef signext i8 %37(ptr noundef nonnull align 8 dereferenceable(570) %34, i8 noundef signext 10)
  br label %if.end47

for.cond.cleanup30:                               ; preds = %for.body31, %middle.block113
  %add34.lcssa = phi i32 [ %15, %middle.block113 ], [ %add34, %for.body31 ]
  %38 = srem i32 %add34.lcssa, 7
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %if.then40, label %if.else43

for.body31:                                       ; preds = %for.body31.preheader118, %for.body31
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body31 ], [ %indvars.iv.ph, %for.body31.preheader118 ]
  %sum26.084 = phi i32 [ %add34, %for.body31 ], [ %sum26.084.ph, %for.body31.preheader118 ]
  %arrayidx33 = getelementptr inbounds [13 x i32], ptr @__const.main.a, i64 0, i64 %indvars.iv
  %40 = load i32, ptr %arrayidx33, align 4, !tbaa !5
  %add34 = add nsw i32 %40, %sum26.084
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %6, %lftr.wideiv
  br i1 %exitcond.not, label %for.cond.cleanup30, label %for.body31, !llvm.loop !43

if.then40:                                        ; preds = %for.cond28.preheader, %for.cond.cleanup30
  %call1.i14 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 3)
  %vtable.i41 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !16
  %vbase.offset.ptr.i42 = getelementptr i8, ptr %vtable.i41, i64 -24
  %vbase.offset.i43 = load i64, ptr %vbase.offset.ptr.i42, align 8
  %gep90 = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 240), i64 %vbase.offset.i43
  %41 = load ptr, ptr %gep90, align 8, !tbaa !18
  %tobool.not.i.i.i46 = icmp eq ptr %41, null
  br i1 %tobool.not.i.i.i46, label %if.then.i.i.i59, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i47

if.then.i.i.i59:                                  ; preds = %if.then40
  call void @_ZSt16__throw_bad_castv() #6
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i47: ; preds = %if.then40
  %_M_widen_ok.i.i.i48 = getelementptr inbounds nuw i8, ptr %41, i64 56
  %42 = load i8, ptr %_M_widen_ok.i.i.i48, align 8, !tbaa !36
  %tobool.not.i1.i.i49 = icmp eq i8 %42, 0
  br i1 %tobool.not.i1.i.i49, label %if.end.i.i.i55, label %if.then.i2.i.i50

if.then.i2.i.i50:                                 ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i47
  %arrayidx.i.i.i51 = getelementptr inbounds nuw i8, ptr %41, i64 67
  %43 = load i8, ptr %arrayidx.i.i.i51, align 1, !tbaa !42
  br label %if.end47

if.end.i.i.i55:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i47
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %41)
  %vtable.i.i.i56 = load ptr, ptr %41, align 8, !tbaa !16
  %vfn.i.i.i57 = getelementptr inbounds nuw i8, ptr %vtable.i.i.i56, i64 48
  %44 = load ptr, ptr %vfn.i.i.i57, align 8
  %call.i.i.i58 = call noundef signext i8 %44(ptr noundef nonnull align 8 dereferenceable(570) %41, i8 noundef signext 10)
  br label %if.end47

if.else43:                                        ; preds = %for.cond.cleanup30
  %call1.i17 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.1, i64 noundef 2)
  %vtable.i61 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !16
  %vbase.offset.ptr.i62 = getelementptr i8, ptr %vtable.i61, i64 -24
  %vbase.offset.i63 = load i64, ptr %vbase.offset.ptr.i62, align 8
  %gep = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 240), i64 %vbase.offset.i63
  %45 = load ptr, ptr %gep, align 8, !tbaa !18
  %tobool.not.i.i.i66 = icmp eq ptr %45, null
  br i1 %tobool.not.i.i.i66, label %if.then.i.i.i79, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i67

if.then.i.i.i79:                                  ; preds = %if.else43
  call void @_ZSt16__throw_bad_castv() #6
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i67: ; preds = %if.else43
  %_M_widen_ok.i.i.i68 = getelementptr inbounds nuw i8, ptr %45, i64 56
  %46 = load i8, ptr %_M_widen_ok.i.i.i68, align 8, !tbaa !36
  %tobool.not.i1.i.i69 = icmp eq i8 %46, 0
  br i1 %tobool.not.i1.i.i69, label %if.end.i.i.i75, label %if.then.i2.i.i70

if.then.i2.i.i70:                                 ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i67
  %arrayidx.i.i.i71 = getelementptr inbounds nuw i8, ptr %45, i64 67
  %47 = load i8, ptr %arrayidx.i.i.i71, align 1, !tbaa !42
  br label %if.end47

if.end.i.i.i75:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i67
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %45)
  %vtable.i.i.i76 = load ptr, ptr %45, align 8, !tbaa !16
  %vfn.i.i.i77 = getelementptr inbounds nuw i8, ptr %vtable.i.i.i76, i64 48
  %48 = load ptr, ptr %vfn.i.i.i77, align 8
  %call.i.i.i78 = call noundef signext i8 %48(ptr noundef nonnull align 8 dereferenceable(570) %45, i8 noundef signext 10)
  br label %if.end47

if.end47:                                         ; preds = %if.end.i.i.i75, %if.then.i2.i.i70, %if.end.i.i.i55, %if.then.i2.i.i50, %if.end.i.i.i35, %if.then.i2.i.i30, %if.end.i.i.i, %if.then.i2.i.i
  %retval.0.i.i.i52.sink = phi i8 [ %32, %if.then.i2.i.i ], [ %call.i.i.i, %if.end.i.i.i ], [ %36, %if.then.i2.i.i30 ], [ %call.i.i.i38, %if.end.i.i.i35 ], [ %43, %if.then.i2.i.i50 ], [ %call.i.i.i58, %if.end.i.i.i55 ], [ %47, %if.then.i2.i.i70 ], [ %call.i.i.i78, %if.end.i.i.i75 ]
  %call1.i53 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %retval.0.i.i.i52.sink)
  %call.i.i54 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i53)
  %inc49 = add nuw nsw i32 %i.094, 1
  %49 = load i32, ptr %n, align 4, !tbaa !5
  %cmp.not.not = icmp slt i32 %i.094, %49
  br i1 %cmp.not.not, label %for.body, label %for.end50, !llvm.loop !44

for.end50:                                        ; preds = %if.end47, %entry
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %month2) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %month1) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %year) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #5
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #3

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #4

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
!9 = distinct !{!9, !10, !11, !12, !13}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = !{!"llvm.loop.isvectorized", i32 1}
!13 = !{!"llvm.loop.unroll.runtime.disable"}
!14 = distinct !{!14, !10, !11, !12, !13}
!15 = distinct !{!15, !10, !11, !12}
!16 = !{!17, !17, i64 0}
!17 = !{!"vtable pointer", !8, i64 0}
!18 = !{!19, !33, i64 240}
!19 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !20, i64 0, !30, i64 216, !7, i64 224, !31, i64 225, !32, i64 232, !33, i64 240, !34, i64 248, !35, i64 256}
!20 = !{!"_ZTSSt8ios_base", !21, i64 8, !21, i64 16, !22, i64 24, !23, i64 28, !23, i64 32, !24, i64 40, !26, i64 48, !7, i64 64, !6, i64 192, !27, i64 200, !28, i64 208}
!21 = !{!"long", !7, i64 0}
!22 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!23 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!24 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !25, i64 0}
!25 = !{!"any pointer", !7, i64 0}
!26 = !{!"_ZTSNSt8ios_base6_WordsE", !25, i64 0, !21, i64 8}
!27 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !25, i64 0}
!28 = !{!"_ZTSSt6locale", !29, i64 0}
!29 = !{!"p1 _ZTSNSt6locale5_ImplE", !25, i64 0}
!30 = !{!"p1 _ZTSSo", !25, i64 0}
!31 = !{!"bool", !7, i64 0}
!32 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !25, i64 0}
!33 = !{!"p1 _ZTSSt5ctypeIcE", !25, i64 0}
!34 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !25, i64 0}
!35 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !25, i64 0}
!36 = !{!37, !7, i64 56}
!37 = !{!"_ZTSSt5ctypeIcE", !38, i64 0, !39, i64 16, !31, i64 24, !40, i64 32, !40, i64 40, !41, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!38 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!39 = !{!"p1 _ZTS15__locale_struct", !25, i64 0}
!40 = !{!"p1 int", !25, i64 0}
!41 = !{!"p1 short", !25, i64 0}
!42 = !{!7, !7, i64 0}
!43 = distinct !{!43, !10, !11, !12}
!44 = distinct !{!44, !10, !11}
