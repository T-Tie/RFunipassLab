; ModuleID = '<stdin>'
source_filename = "/tmp/tmphp33jyau.cpp"
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
  %N = alloca i32, align 4
  %a = alloca [100 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %N) #7
  call void @llvm.lifetime.start.p0(i64 400, ptr nonnull %a) #7
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %N)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(400) %a, i8 0, i64 400, i1 false)
  store i32 2, ptr %a, align 16, !tbaa !5
  %0 = load i32, ptr %N, align 4, !tbaa !5
  switch i32 %0, label %for.cond.preheader [
    i32 0, label %if.then
    i32 1, label %if.then4
  ]

for.cond.preheader:                               ; preds = %entry
  %cmp8.not.not89 = icmp sgt i32 %0, 1
  br i1 %cmp8.not.not89, label %for.cond.i.preheader, label %for.end66

if.then:                                          ; preds = %entry
  %call1 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef 1)
  %vtable.i = load ptr, ptr %call1, align 8, !tbaa !9
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call1, i64 %vbase.offset.i
  %_M_ctype.i.i = getelementptr inbounds nuw i8, ptr %add.ptr.i, i64 240
  %1 = load ptr, ptr %_M_ctype.i.i, align 8, !tbaa !11
  %tobool.not.i.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

if.then.i.i.i:                                    ; preds = %if.then
  call void @_ZSt16__throw_bad_castv() #8
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %if.then
  %_M_widen_ok.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 56
  %2 = load i8, ptr %_M_widen_ok.i.i.i, align 8, !tbaa !29
  %tobool.not.i1.i.i = icmp eq i8 %2, 0
  br i1 %tobool.not.i1.i.i, label %if.end.i.i.i, label %if.then.i2.i.i

if.then.i2.i.i:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %arrayidx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 67
  %3 = load i8, ptr %arrayidx.i.i.i, align 1, !tbaa !35
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

if.end.i.i.i:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %1)
  %vtable.i.i.i = load ptr, ptr %1, align 8, !tbaa !9
  %vfn.i.i.i = getelementptr inbounds nuw i8, ptr %vtable.i.i.i, i64 48
  %4 = load ptr, ptr %vfn.i.i.i, align 8
  %call.i.i.i = call noundef signext i8 %4(ptr noundef nonnull align 8 dereferenceable(570) %1, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %if.then.i2.i.i, %if.end.i.i.i
  %retval.0.i.i.i = phi i8 [ %3, %if.then.i2.i.i ], [ %call.i.i.i, %if.end.i.i.i ]
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call1, i8 noundef signext %retval.0.i.i.i)
  br label %if.end71

if.then4:                                         ; preds = %entry
  %call5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef 2)
  %vtable.i25 = load ptr, ptr %call5, align 8, !tbaa !9
  %vbase.offset.ptr.i26 = getelementptr i8, ptr %vtable.i25, i64 -24
  %vbase.offset.i27 = load i64, ptr %vbase.offset.ptr.i26, align 8
  %add.ptr.i28 = getelementptr inbounds i8, ptr %call5, i64 %vbase.offset.i27
  %_M_ctype.i.i29 = getelementptr inbounds nuw i8, ptr %add.ptr.i28, i64 240
  %5 = load ptr, ptr %_M_ctype.i.i29, align 8, !tbaa !11
  %tobool.not.i.i.i30 = icmp eq ptr %5, null
  br i1 %tobool.not.i.i.i30, label %if.then.i.i.i43, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i31

if.then.i.i.i43:                                  ; preds = %if.then4
  call void @_ZSt16__throw_bad_castv() #8
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i31: ; preds = %if.then4
  %_M_widen_ok.i.i.i32 = getelementptr inbounds nuw i8, ptr %5, i64 56
  %6 = load i8, ptr %_M_widen_ok.i.i.i32, align 8, !tbaa !29
  %tobool.not.i1.i.i33 = icmp eq i8 %6, 0
  br i1 %tobool.not.i1.i.i33, label %if.end.i.i.i39, label %if.then.i2.i.i34

if.then.i2.i.i34:                                 ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i31
  %arrayidx.i.i.i35 = getelementptr inbounds nuw i8, ptr %5, i64 67
  %7 = load i8, ptr %arrayidx.i.i.i35, align 1, !tbaa !35
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit44

if.end.i.i.i39:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i31
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %5)
  %vtable.i.i.i40 = load ptr, ptr %5, align 8, !tbaa !9
  %vfn.i.i.i41 = getelementptr inbounds nuw i8, ptr %vtable.i.i.i40, i64 48
  %8 = load ptr, ptr %vfn.i.i.i41, align 8
  %call.i.i.i42 = call noundef signext i8 %8(ptr noundef nonnull align 8 dereferenceable(570) %5, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit44

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit44: ; preds = %if.then.i2.i.i34, %if.end.i.i.i39
  %retval.0.i.i.i36 = phi i8 [ %7, %if.then.i2.i.i34 ], [ %call.i.i.i42, %if.end.i.i.i39 ]
  %call1.i37 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call5, i8 noundef signext %retval.0.i.i.i36)
  br label %if.end71

for.cond.i.preheader:                             ; preds = %for.cond.preheader, %for.inc36
  %i.090 = phi i32 [ %inc37, %for.inc36 ], [ 1, %for.cond.preheader ]
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.cond.i.preheader, %for.cond.i
  %indvars.iv96 = phi i32 [ 99, %for.cond.i.preheader ], [ %indvars.iv.next97, %for.cond.i ]
  %indvars.iv.i = phi i64 [ 99, %for.cond.i.preheader ], [ %indvars.iv.next.i, %for.cond.i ]
  %arrayidx.i = getelementptr inbounds i32, ptr %a, i64 %indvars.iv.i
  %9 = load i32, ptr %arrayidx.i, align 4, !tbaa !5
  %cmp.i = icmp eq i32 %9, 0
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %indvars.iv.next97 = add i32 %indvars.iv96, -1
  br i1 %cmp.i, label %for.cond.i, label %_Z5shumuPi.exit, !llvm.loop !36

_Z5shumuPi.exit:                                  ; preds = %for.cond.i
  %cmp12.not85 = icmp slt i64 %indvars.iv.i, 0
  br i1 %cmp12.not85, label %for.inc36, label %for.body13.preheader

for.body13.preheader:                             ; preds = %_Z5shumuPi.exit
  %smax = call i32 @llvm.smax.i32(i32 %indvars.iv96, i32 0)
  %10 = add nuw i32 %smax, 1
  %wide.trip.count = zext i32 %10 to i64
  %min.iters.check = icmp slt i32 %indvars.iv96, 3
  br i1 %min.iters.check, label %for.body13.preheader119, label %vector.ph

vector.ph:                                        ; preds = %for.body13.preheader
  %n.vec = and i64 %wide.trip.count, 4294967292
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %11 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %index
  %wide.load = load <4 x i32>, ptr %11, align 16, !tbaa !5
  %12 = shl nsw <4 x i32> %wide.load, splat (i32 1)
  store <4 x i32> %12, ptr %11, align 16, !tbaa !5
  %index.next = add nuw i64 %index, 4
  %13 = icmp eq i64 %index.next, %n.vec
  br i1 %13, label %middle.block, label %vector.body, !llvm.loop !39

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %for.body19.preheader, label %for.body13.preheader119

for.body13.preheader119:                          ; preds = %for.body13.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %for.body13.preheader ], [ %n.vec, %middle.block ]
  br label %for.body13

for.body19.preheader:                             ; preds = %for.body13, %middle.block
  %smax103 = call i32 @llvm.smax.i32(i32 %indvars.iv96, i32 0)
  %14 = add nuw i32 %smax103, 1
  %wide.trip.count104 = zext i32 %14 to i64
  br label %for.body19

for.body13:                                       ; preds = %for.body13.preheader119, %for.body13
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body13 ], [ %indvars.iv.ph, %for.body13.preheader119 ]
  %arrayidx14 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %indvars.iv
  %15 = load i32, ptr %arrayidx14, align 4, !tbaa !5
  %mul = shl nsw i32 %15, 1
  store i32 %mul, ptr %arrayidx14, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.body19.preheader, label %for.body13, !llvm.loop !42

for.body19:                                       ; preds = %for.body19.preheader, %for.inc33
  %indvars.iv98 = phi i64 [ 0, %for.body19.preheader ], [ %17, %for.inc33 ]
  %arrayidx21 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %indvars.iv98
  %16 = load i32, ptr %arrayidx21, align 4, !tbaa !5
  %cmp22 = icmp sgt i32 %16, 9
  %17 = add nuw nsw i64 %indvars.iv98, 1
  br i1 %cmp22, label %if.then23, label %for.inc33

if.then23:                                        ; preds = %for.body19
  %arrayidx26 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %17
  %18 = load i32, ptr %arrayidx26, align 4, !tbaa !5
  %inc27 = add nsw i32 %18, 1
  store i32 %inc27, ptr %arrayidx26, align 4, !tbaa !5
  %sub30 = add nsw i32 %16, -10
  store i32 %sub30, ptr %arrayidx21, align 4, !tbaa !5
  br label %for.inc33

for.inc33:                                        ; preds = %for.body19, %if.then23
  %exitcond105.not = icmp eq i64 %17, %wide.trip.count104
  br i1 %exitcond105.not, label %for.inc36, label %for.body19, !llvm.loop !43

for.inc36:                                        ; preds = %for.inc33, %_Z5shumuPi.exit
  %inc37 = add nuw nsw i32 %i.090, 1
  %exitcond106.not = icmp eq i32 %inc37, %0
  br i1 %exitcond106.not, label %for.end38, label %for.cond.i.preheader, !llvm.loop !44

for.end38:                                        ; preds = %for.inc36
  %19 = trunc nsw i64 %indvars.iv.i to i32
  %add.le = add nsw i32 %19, 1
  %idxprom39.phi.trans.insert = sext i32 %add.le to i64
  %arrayidx40.phi.trans.insert = getelementptr inbounds [100 x i32], ptr %a, i64 0, i64 %idxprom39.phi.trans.insert
  %.pre = load i32, ptr %arrayidx40.phi.trans.insert, align 4, !tbaa !5
  %20 = icmp eq i32 %.pre, 0
  br i1 %20, label %for.cond44.preheader, label %for.cond58.preheader

for.cond58.preheader:                             ; preds = %for.end38
  %cmp5991 = icmp sgt i64 %indvars.iv.i, -2
  br i1 %cmp5991, label %for.body60.preheader, label %for.end66

for.body60.preheader:                             ; preds = %for.cond58.preheader
  %21 = zext nneg i32 %add.le to i64
  br label %for.body60

for.cond44.preheader:                             ; preds = %for.end38
  %cmp4593 = icmp sgt i64 %indvars.iv.i, -1
  br i1 %cmp4593, label %for.body46.preheader, label %for.end51

for.body46.preheader:                             ; preds = %for.cond44.preheader
  %22 = zext nneg i32 %add.le to i64
  br label %for.body46

for.body46:                                       ; preds = %for.body46.preheader, %for.body46
  %indvars.iv110 = phi i64 [ %22, %for.body46.preheader ], [ %indvars.iv.next111, %for.body46 ]
  %indvars.iv.next111 = add nsw i64 %indvars.iv110, -1
  %arrayidx48 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %indvars.iv.next111
  %23 = load i32, ptr %arrayidx48, align 4, !tbaa !5
  %call49 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %23)
  %cmp45 = icmp samesign ugt i64 %indvars.iv110, 1
  br i1 %cmp45, label %for.body46, label %for.end51, !llvm.loop !45

for.end51:                                        ; preds = %for.body46, %for.cond44.preheader
  %vtable.i45 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !9
  %vbase.offset.ptr.i46 = getelementptr i8, ptr %vtable.i45, i64 -24
  %vbase.offset.i47 = load i64, ptr %vbase.offset.ptr.i46, align 8
  %add.ptr.i48 = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %vbase.offset.i47
  %_M_ctype.i.i49 = getelementptr inbounds nuw i8, ptr %add.ptr.i48, i64 240
  %24 = load ptr, ptr %_M_ctype.i.i49, align 8, !tbaa !11
  %tobool.not.i.i.i50 = icmp eq ptr %24, null
  br i1 %tobool.not.i.i.i50, label %if.then.i.i.i63, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i51

if.then.i.i.i63:                                  ; preds = %for.end51
  call void @_ZSt16__throw_bad_castv() #8
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i51: ; preds = %for.end51
  %_M_widen_ok.i.i.i52 = getelementptr inbounds nuw i8, ptr %24, i64 56
  %25 = load i8, ptr %_M_widen_ok.i.i.i52, align 8, !tbaa !29
  %tobool.not.i1.i.i53 = icmp eq i8 %25, 0
  br i1 %tobool.not.i1.i.i53, label %if.end.i.i.i59, label %if.then.i2.i.i54

if.then.i2.i.i54:                                 ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i51
  %arrayidx.i.i.i55 = getelementptr inbounds nuw i8, ptr %24, i64 67
  %26 = load i8, ptr %arrayidx.i.i.i55, align 1, !tbaa !35
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit64

if.end.i.i.i59:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i51
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %24)
  %vtable.i.i.i60 = load ptr, ptr %24, align 8, !tbaa !9
  %vfn.i.i.i61 = getelementptr inbounds nuw i8, ptr %vtable.i.i.i60, i64 48
  %27 = load ptr, ptr %vfn.i.i.i61, align 8
  %call.i.i.i62 = call noundef signext i8 %27(ptr noundef nonnull align 8 dereferenceable(570) %24, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit64

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit64: ; preds = %if.then.i2.i.i54, %if.end.i.i.i59
  %retval.0.i.i.i56 = phi i8 [ %26, %if.then.i2.i.i54 ], [ %call.i.i.i62, %if.end.i.i.i59 ]
  %call1.i57 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %retval.0.i.i.i56)
  br label %if.end71

for.body60:                                       ; preds = %for.body60.preheader, %for.body60
  %indvars.iv107 = phi i64 [ %21, %for.body60.preheader ], [ %indvars.iv.next108, %for.body60 ]
  %arrayidx62 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %indvars.iv107
  %28 = load i32, ptr %arrayidx62, align 4, !tbaa !5
  %call63 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %28)
  %indvars.iv.next108 = add nsw i64 %indvars.iv107, -1
  %cmp59.not = icmp eq i64 %indvars.iv107, 0
  br i1 %cmp59.not, label %for.end66, label %for.body60, !llvm.loop !46

for.end66:                                        ; preds = %for.body60, %for.cond.preheader, %for.cond58.preheader
  %vtable.i65 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !9
  %vbase.offset.ptr.i66 = getelementptr i8, ptr %vtable.i65, i64 -24
  %vbase.offset.i67 = load i64, ptr %vbase.offset.ptr.i66, align 8
  %add.ptr.i68 = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %vbase.offset.i67
  %_M_ctype.i.i69 = getelementptr inbounds nuw i8, ptr %add.ptr.i68, i64 240
  %29 = load ptr, ptr %_M_ctype.i.i69, align 8, !tbaa !11
  %tobool.not.i.i.i70 = icmp eq ptr %29, null
  br i1 %tobool.not.i.i.i70, label %if.then.i.i.i83, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i71

if.then.i.i.i83:                                  ; preds = %for.end66
  call void @_ZSt16__throw_bad_castv() #8
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i71: ; preds = %for.end66
  %_M_widen_ok.i.i.i72 = getelementptr inbounds nuw i8, ptr %29, i64 56
  %30 = load i8, ptr %_M_widen_ok.i.i.i72, align 8, !tbaa !29
  %tobool.not.i1.i.i73 = icmp eq i8 %30, 0
  br i1 %tobool.not.i1.i.i73, label %if.end.i.i.i79, label %if.then.i2.i.i74

if.then.i2.i.i74:                                 ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i71
  %arrayidx.i.i.i75 = getelementptr inbounds nuw i8, ptr %29, i64 67
  %31 = load i8, ptr %arrayidx.i.i.i75, align 1, !tbaa !35
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit84

if.end.i.i.i79:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i71
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %29)
  %vtable.i.i.i80 = load ptr, ptr %29, align 8, !tbaa !9
  %vfn.i.i.i81 = getelementptr inbounds nuw i8, ptr %vtable.i.i.i80, i64 48
  %32 = load ptr, ptr %vfn.i.i.i81, align 8
  %call.i.i.i82 = call noundef signext i8 %32(ptr noundef nonnull align 8 dereferenceable(570) %29, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit84

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit84: ; preds = %if.then.i2.i.i74, %if.end.i.i.i79
  %retval.0.i.i.i76 = phi i8 [ %31, %if.then.i2.i.i74 ], [ %call.i.i.i82, %if.end.i.i.i79 ]
  %call1.i77 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %retval.0.i.i.i76)
  br label %if.end71

if.end71:                                         ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit44, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit84, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit64, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %call1.i37.sink = phi ptr [ %call1.i37, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit44 ], [ %call1.i77, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit84 ], [ %call1.i57, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit64 ], [ %call1.i, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit ]
  %call.i.i38 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i37.sink)
  call void @llvm.lifetime.end.p0(i64 400, ptr nonnull %a) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %N) #7
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_Z5shumuPi(ptr noundef readonly captures(none) %a) local_unnamed_addr #4 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.cond, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond ], [ 99, %entry ]
  %arrayidx = getelementptr inbounds i32, ptr %a, i64 %indvars.iv
  %0 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %cmp = icmp eq i32 %0, 0
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  br i1 %cmp, label %for.cond, label %for.end, !llvm.loop !36

for.end:                                          ; preds = %for.cond
  %1 = trunc nsw i64 %indvars.iv to i32
  ret i32 %1
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #5

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }
attributes #8 = { noreturn }

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
!9 = !{!10, !10, i64 0}
!10 = !{!"vtable pointer", !8, i64 0}
!11 = !{!12, !26, i64 240}
!12 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !13, i64 0, !23, i64 216, !7, i64 224, !24, i64 225, !25, i64 232, !26, i64 240, !27, i64 248, !28, i64 256}
!13 = !{!"_ZTSSt8ios_base", !14, i64 8, !14, i64 16, !15, i64 24, !16, i64 28, !16, i64 32, !17, i64 40, !19, i64 48, !7, i64 64, !6, i64 192, !20, i64 200, !21, i64 208}
!14 = !{!"long", !7, i64 0}
!15 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!16 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!17 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !18, i64 0}
!18 = !{!"any pointer", !7, i64 0}
!19 = !{!"_ZTSNSt8ios_base6_WordsE", !18, i64 0, !14, i64 8}
!20 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !18, i64 0}
!21 = !{!"_ZTSSt6locale", !22, i64 0}
!22 = !{!"p1 _ZTSNSt6locale5_ImplE", !18, i64 0}
!23 = !{!"p1 _ZTSSo", !18, i64 0}
!24 = !{!"bool", !7, i64 0}
!25 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !18, i64 0}
!26 = !{!"p1 _ZTSSt5ctypeIcE", !18, i64 0}
!27 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !18, i64 0}
!28 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !18, i64 0}
!29 = !{!30, !7, i64 56}
!30 = !{!"_ZTSSt5ctypeIcE", !31, i64 0, !32, i64 16, !24, i64 24, !33, i64 32, !33, i64 40, !34, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!31 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!32 = !{!"p1 _ZTS15__locale_struct", !18, i64 0}
!33 = !{!"p1 int", !18, i64 0}
!34 = !{!"p1 short", !18, i64 0}
!35 = !{!7, !7, i64 0}
!36 = distinct !{!36, !37, !38}
!37 = !{!"llvm.loop.mustprogress"}
!38 = !{!"llvm.loop.unroll.disable"}
!39 = distinct !{!39, !37, !38, !40, !41}
!40 = !{!"llvm.loop.isvectorized", i32 1}
!41 = !{!"llvm.loop.unroll.runtime.disable"}
!42 = distinct !{!42, !37, !38, !40}
!43 = distinct !{!43, !37, !38}
!44 = distinct !{!44, !37, !38}
!45 = distinct !{!45, !37, !38}
!46 = distinct !{!46, !37, !38}
