; ModuleID = '<stdin>'
source_filename = "/tmp/tmpdxgu9zge.cpp"
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
@.str = private unnamed_addr constant [3 x i8] c"NO\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %__c.addr.i = alloca i8, align 1
  %n = alloca i32, align 4
  %a = alloca [501 x i8], align 16
  %b = alloca [501 x i32], align 16
  %c = alloca [200 x [6 x i8]], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #8
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %call1 = call noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin)
  call void @llvm.lifetime.start.p0(i64 501, ptr nonnull %a) #8
  %vtable.i = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset.i
  %_M_ctype.i.i = getelementptr inbounds nuw i8, ptr %add.ptr.i, i64 240
  %0 = load ptr, ptr %_M_ctype.i.i, align 8, !tbaa !8
  %tobool.not.i.i.i = icmp eq ptr %0, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

if.then.i.i.i:                                    ; preds = %entry
  call void @_ZSt16__throw_bad_castv() #9
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %entry
  %_M_widen_ok.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %1 = load i8, ptr %_M_widen_ok.i.i.i, align 8, !tbaa !28
  %tobool.not.i1.i.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i1.i.i, label %if.end.i.i.i, label %if.then.i2.i.i

if.then.i2.i.i:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %arrayidx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 67
  %2 = load i8, ptr %arrayidx.i.i.i, align 1, !tbaa !34
  br label %_ZNSi7getlineEPcl.exit

if.end.i.i.i:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %0)
  %vtable.i.i.i = load ptr, ptr %0, align 8, !tbaa !5
  %vfn.i.i.i = getelementptr inbounds nuw i8, ptr %vtable.i.i.i, i64 48
  %3 = load ptr, ptr %vfn.i.i.i, align 8
  %call.i.i.i = call noundef signext i8 %3(ptr noundef nonnull align 8 dereferenceable(570) %0, i8 noundef signext 10)
  br label %_ZNSi7getlineEPcl.exit

_ZNSi7getlineEPcl.exit:                           ; preds = %if.then.i2.i.i, %if.end.i.i.i
  %retval.0.i.i.i = phi i8 [ %2, %if.then.i2.i.i ], [ %call.i.i.i, %if.end.i.i.i ]
  %call2.i = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPclc(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull %a, i64 noundef 501, i8 noundef signext %retval.0.i.i.i)
  %call4 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %a) #10
  %4 = load i32, ptr %n, align 4, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 2004, ptr nonnull %b) #8
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %_ZNSi7getlineEPcl.exit
  %index = phi i64 [ 0, %_ZNSi7getlineEPcl.exit ], [ %index.next, %vector.body ]
  %5 = getelementptr inbounds nuw [501 x i32], ptr %b, i64 0, i64 %index
  store <4 x i32> splat (i32 1), ptr %5, align 16, !tbaa !35
  %index.next = add nuw i64 %index, 4
  %6 = icmp eq i64 %index.next, 500
  br i1 %6, label %for.body, label %vector.body, !llvm.loop !36

for.body:                                         ; preds = %vector.body, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 500, %vector.body ]
  %arrayidx = getelementptr inbounds nuw [501 x i32], ptr %b, i64 0, i64 %indvars.iv
  store i32 1, ptr %arrayidx, align 4, !tbaa !35
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 501
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !41

for.end:                                          ; preds = %for.body
  %conv = trunc i64 %call4 to i32
  call void @llvm.lifetime.start.p0(i64 1200, ptr nonnull %c) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1200) %c, i8 0, i64 1200, i1 false)
  %cmp6.not111 = icmp sgt i32 %4, %conv
  br i1 %cmp6.not111, label %for.end59.thread, label %for.cond8.preheader.lr.ph

for.end59.thread:                                 ; preds = %for.end
  %7 = load i32, ptr %b, align 16, !tbaa !35
  br label %for.end73

for.cond8.preheader.lr.ph:                        ; preds = %for.end
  %cmp9109 = icmp sgt i32 %4, 0
  br i1 %cmp9109, label %for.cond8.preheader.us.preheader, label %for.cond27.preheader.preheader

for.cond8.preheader.us.preheader:                 ; preds = %for.cond8.preheader.lr.ph
  %8 = zext nneg i32 %4 to i64
  %9 = add i32 %conv, 1
  %10 = sub i32 %9, %4
  %wide.trip.count = zext i32 %10 to i64
  br label %for.cond8.preheader.us

for.cond8.preheader.us:                           ; preds = %for.cond8.preheader.us.preheader, %for.cond8.preheader.us
  %indvar = phi i64 [ 0, %for.cond8.preheader.us.preheader ], [ %indvar.next, %for.cond8.preheader.us ]
  %11 = mul nuw nsw i64 %indvar, 6
  %scevgep = getelementptr nuw i8, ptr %c, i64 %11
  %scevgep127 = getelementptr nuw i8, ptr %a, i64 %indvar
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %scevgep, ptr nonnull align 1 %scevgep127, i64 %8, i1 false), !tbaa !34
  %indvar.next = add nuw nsw i64 %indvar, 1
  %exitcond133.not = icmp eq i64 %indvar.next, %wide.trip.count
  br i1 %exitcond133.not, label %for.cond27.preheader.preheader, label %for.cond8.preheader.us, !llvm.loop !42

for.cond27.preheader.preheader:                   ; preds = %for.cond8.preheader.us, %for.cond8.preheader.lr.ph
  %12 = add i32 %conv, 1
  %13 = sub i32 %12, %4
  %wide.trip.count142 = zext i32 %13 to i64
  br label %for.cond27.preheader

for.cond27.preheader:                             ; preds = %for.cond27.preheader.preheader, %for.cond27.for.inc57_crit_edge
  %indvars.iv139 = phi i64 [ 0, %for.cond27.preheader.preheader ], [ %indvars.iv.next140, %for.cond27.for.inc57_crit_edge ]
  %arrayidx31 = getelementptr inbounds nuw [200 x [6 x i8]], ptr %c, i64 0, i64 %indvars.iv139
  %arrayidx39 = getelementptr inbounds nuw [501 x i32], ptr %b, i64 0, i64 %indvars.iv139
  br label %for.body29

for.body29:                                       ; preds = %for.cond27.preheader, %for.inc54
  %indvars.iv134 = phi i64 [ 0, %for.cond27.preheader ], [ %indvars.iv.next135, %for.inc54 ]
  %arrayidx34 = getelementptr inbounds nuw [200 x [6 x i8]], ptr %c, i64 0, i64 %indvars.iv134
  %call36 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %arrayidx31, ptr noundef nonnull dereferenceable(1) %arrayidx34) #10
  %cmp37 = icmp eq i32 %call36, 0
  br i1 %cmp37, label %land.lhs.true, label %for.inc54

land.lhs.true:                                    ; preds = %for.body29
  %14 = load i32, ptr %arrayidx39, align 4, !tbaa !35
  %cmp40.not = icmp eq i32 %14, 0
  %cmp42.not = icmp eq i64 %indvars.iv139, %indvars.iv134
  %or.cond = or i1 %cmp42.not, %cmp40.not
  br i1 %or.cond, label %for.inc54, label %land.lhs.true43

land.lhs.true43:                                  ; preds = %land.lhs.true
  %arrayidx45 = getelementptr inbounds nuw [501 x i32], ptr %b, i64 0, i64 %indvars.iv134
  %15 = load i32, ptr %arrayidx45, align 4, !tbaa !35
  %cmp46.not = icmp eq i32 %15, 0
  br i1 %cmp46.not, label %for.inc54, label %if.then

if.then:                                          ; preds = %land.lhs.true43
  %add49 = add nsw i32 %14, 1
  store i32 %add49, ptr %arrayidx39, align 4, !tbaa !35
  store i32 0, ptr %arrayidx45, align 4, !tbaa !35
  br label %for.inc54

for.inc54:                                        ; preds = %for.body29, %land.lhs.true, %land.lhs.true43, %if.then
  %indvars.iv.next135 = add nuw nsw i64 %indvars.iv134, 1
  %exitcond138.not = icmp eq i64 %indvars.iv.next135, %wide.trip.count142
  br i1 %exitcond138.not, label %for.cond27.for.inc57_crit_edge, label %for.body29, !llvm.loop !43

for.cond27.for.inc57_crit_edge:                   ; preds = %for.inc54
  %indvars.iv.next140 = add nuw nsw i64 %indvars.iv139, 1
  %exitcond143.not = icmp eq i64 %indvars.iv.next140, %wide.trip.count142
  br i1 %exitcond143.not, label %for.body63.preheader, label %for.cond27.preheader, !llvm.loop !44

for.body63.preheader:                             ; preds = %for.cond27.for.inc57_crit_edge
  %16 = load i32, ptr %b, align 16, !tbaa !35
  %17 = add i32 %conv, 1
  %18 = sub i32 %17, %4
  %wide.trip.count147 = zext i32 %18 to i64
  %min.iters.check = icmp ult i32 %13, 4
  br i1 %min.iters.check, label %for.body63.preheader164, label %vector.ph158

vector.ph158:                                     ; preds = %for.body63.preheader
  %n.vec = and i64 %wide.trip.count142, 4294967292
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %16, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body159

vector.body159:                                   ; preds = %vector.body159, %vector.ph158
  %index160 = phi i64 [ 0, %vector.ph158 ], [ %index.next161, %vector.body159 ]
  %vec.phi = phi <4 x i32> [ %broadcast.splat, %vector.ph158 ], [ %20, %vector.body159 ]
  %19 = getelementptr inbounds nuw [501 x i32], ptr %b, i64 0, i64 %index160
  %wide.load = load <4 x i32>, ptr %19, align 16, !tbaa !35
  %20 = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load, <4 x i32> %vec.phi)
  %index.next161 = add nuw i64 %index160, 4
  %21 = icmp eq i64 %index.next161, %n.vec
  br i1 %21, label %middle.block162, label %vector.body159, !llvm.loop !45

middle.block162:                                  ; preds = %vector.body159
  %22 = call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %20)
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count142
  br i1 %cmp.n, label %for.end73, label %for.body63.preheader164

for.body63.preheader164:                          ; preds = %for.body63.preheader, %middle.block162
  %indvars.iv144.ph = phi i64 [ 0, %for.body63.preheader ], [ %n.vec, %middle.block162 ]
  %s.0119.ph = phi i32 [ %16, %for.body63.preheader ], [ %22, %middle.block162 ]
  br label %for.body63

for.body63:                                       ; preds = %for.body63.preheader164, %for.body63
  %indvars.iv144 = phi i64 [ %indvars.iv.next145, %for.body63 ], [ %indvars.iv144.ph, %for.body63.preheader164 ]
  %s.0119 = phi i32 [ %spec.select, %for.body63 ], [ %s.0119.ph, %for.body63.preheader164 ]
  %arrayidx65 = getelementptr inbounds nuw [501 x i32], ptr %b, i64 0, i64 %indvars.iv144
  %23 = load i32, ptr %arrayidx65, align 4, !tbaa !35
  %spec.select = call i32 @llvm.smax.i32(i32 %23, i32 %s.0119)
  %indvars.iv.next145 = add nuw nsw i64 %indvars.iv144, 1
  %exitcond148.not = icmp eq i64 %indvars.iv.next145, %wide.trip.count147
  br i1 %exitcond148.not, label %for.end73, label %for.body63, !llvm.loop !46

for.end73:                                        ; preds = %for.body63, %middle.block162, %for.end59.thread
  %s.0.lcssa = phi i32 [ %7, %for.end59.thread ], [ %22, %middle.block162 ], [ %spec.select, %for.body63 ]
  %cmp74 = icmp eq i32 %s.0.lcssa, 1
  br i1 %cmp74, label %if.then75, label %if.else

if.then75:                                        ; preds = %for.end73
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 2)
  %vtable.i49 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !5
  %vbase.offset.ptr.i50 = getelementptr i8, ptr %vtable.i49, i64 -24
  %vbase.offset.i51 = load i64, ptr %vbase.offset.ptr.i50, align 8
  %add.ptr.i52 = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %vbase.offset.i51
  %_M_ctype.i.i53 = getelementptr inbounds nuw i8, ptr %add.ptr.i52, i64 240
  %24 = load ptr, ptr %_M_ctype.i.i53, align 8, !tbaa !8
  %tobool.not.i.i.i54 = icmp eq ptr %24, null
  br i1 %tobool.not.i.i.i54, label %if.then.i.i.i67, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i55

if.then.i.i.i67:                                  ; preds = %if.then75
  call void @_ZSt16__throw_bad_castv() #9
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i55: ; preds = %if.then75
  %_M_widen_ok.i.i.i56 = getelementptr inbounds nuw i8, ptr %24, i64 56
  %25 = load i8, ptr %_M_widen_ok.i.i.i56, align 8, !tbaa !28
  %tobool.not.i1.i.i57 = icmp eq i8 %25, 0
  br i1 %tobool.not.i1.i.i57, label %if.end.i.i.i63, label %if.then.i2.i.i58

if.then.i2.i.i58:                                 ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i55
  %arrayidx.i.i.i59 = getelementptr inbounds nuw i8, ptr %24, i64 67
  %26 = load i8, ptr %arrayidx.i.i.i59, align 1, !tbaa !34
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

if.end.i.i.i63:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i55
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %24)
  %vtable.i.i.i64 = load ptr, ptr %24, align 8, !tbaa !5
  %vfn.i.i.i65 = getelementptr inbounds nuw i8, ptr %vtable.i.i.i64, i64 48
  %27 = load ptr, ptr %vfn.i.i.i65, align 8
  %call.i.i.i66 = call noundef signext i8 %27(ptr noundef nonnull align 8 dereferenceable(570) %24, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %if.then.i2.i.i58, %if.end.i.i.i63
  %retval.0.i.i.i60 = phi i8 [ %26, %if.then.i2.i.i58 ], [ %call.i.i.i66, %if.end.i.i.i63 ]
  %call1.i61 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %retval.0.i.i.i60)
  %call.i.i62 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i61)
  br label %if.end103

if.else:                                          ; preds = %for.end73
  %call78 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %s.0.lcssa)
  %vtable.i68 = load ptr, ptr %call78, align 8, !tbaa !5
  %vbase.offset.ptr.i69 = getelementptr i8, ptr %vtable.i68, i64 -24
  %vbase.offset.i70 = load i64, ptr %vbase.offset.ptr.i69, align 8
  %add.ptr.i71 = getelementptr inbounds i8, ptr %call78, i64 %vbase.offset.i70
  %_M_ctype.i.i72 = getelementptr inbounds nuw i8, ptr %add.ptr.i71, i64 240
  %28 = load ptr, ptr %_M_ctype.i.i72, align 8, !tbaa !8
  %tobool.not.i.i.i73 = icmp eq ptr %28, null
  br i1 %tobool.not.i.i.i73, label %if.then.i.i.i86, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i74

if.then.i.i.i86:                                  ; preds = %if.else
  call void @_ZSt16__throw_bad_castv() #9
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i74: ; preds = %if.else
  %_M_widen_ok.i.i.i75 = getelementptr inbounds nuw i8, ptr %28, i64 56
  %29 = load i8, ptr %_M_widen_ok.i.i.i75, align 8, !tbaa !28
  %tobool.not.i1.i.i76 = icmp eq i8 %29, 0
  br i1 %tobool.not.i1.i.i76, label %if.end.i.i.i82, label %if.then.i2.i.i77

if.then.i2.i.i77:                                 ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i74
  %arrayidx.i.i.i78 = getelementptr inbounds nuw i8, ptr %28, i64 67
  %30 = load i8, ptr %arrayidx.i.i.i78, align 1, !tbaa !34
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit87

if.end.i.i.i82:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i74
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %28)
  %vtable.i.i.i83 = load ptr, ptr %28, align 8, !tbaa !5
  %vfn.i.i.i84 = getelementptr inbounds nuw i8, ptr %vtable.i.i.i83, i64 48
  %31 = load ptr, ptr %vfn.i.i.i84, align 8
  %call.i.i.i85 = call noundef signext i8 %31(ptr noundef nonnull align 8 dereferenceable(570) %28, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit87

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit87: ; preds = %if.then.i2.i.i77, %if.end.i.i.i82
  %retval.0.i.i.i79 = phi i8 [ %30, %if.then.i2.i.i77 ], [ %call.i.i.i85, %if.end.i.i.i82 ]
  %call1.i80 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call78, i8 noundef signext %retval.0.i.i.i79)
  %call.i.i81 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i80)
  br i1 %cmp6.not111, label %if.end103, label %for.body82.preheader

for.body82.preheader:                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit87
  %32 = add i32 %conv, 1
  %33 = sub i32 %32, %4
  %wide.trip.count155 = zext i32 %33 to i64
  br label %for.body82

for.body82:                                       ; preds = %for.body82.preheader, %for.inc100
  %indvars.iv152 = phi i64 [ 0, %for.body82.preheader ], [ %indvars.iv.next153, %for.inc100 ]
  %arrayidx84 = getelementptr inbounds nuw [501 x i32], ptr %b, i64 0, i64 %indvars.iv152
  %34 = load i32, ptr %arrayidx84, align 4, !tbaa !35
  %cmp85 = icmp eq i32 %34, %s.0.lcssa
  br i1 %cmp85, label %for.cond87.preheader, label %for.inc100

for.cond87.preheader:                             ; preds = %for.body82
  %35 = load i32, ptr %n, align 4, !tbaa !35
  %cmp88120 = icmp sgt i32 %35, 0
  br i1 %cmp88120, label %for.body89, label %for.end97

for.body89:                                       ; preds = %for.cond87.preheader, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
  %indvars.iv149 = phi i64 [ %indvars.iv.next150, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit ], [ 0, %for.cond87.preheader ]
  %arrayidx93 = getelementptr inbounds nuw [200 x [6 x i8]], ptr %c, i64 0, i64 %indvars.iv152, i64 %indvars.iv149
  %36 = load i8, ptr %arrayidx93, align 1, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__c.addr.i)
  store i8 %36, ptr %__c.addr.i, align 1, !tbaa !34
  %vtable.i42 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !5
  %vbase.offset.ptr.i43 = getelementptr i8, ptr %vtable.i42, i64 -24
  %vbase.offset.i44 = load i64, ptr %vbase.offset.ptr.i43, align 8
  %gep = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 16), i64 %vbase.offset.i44
  %37 = load i64, ptr %gep, align 8, !tbaa !47
  %cmp.not.i = icmp eq i64 %37, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %for.body89
  %call1.i46 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %__c.addr.i, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

if.end.i:                                         ; preds = %for.body89
  %call2.i47 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %36)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %if.then.i, %if.end.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__c.addr.i)
  %indvars.iv.next150 = add nuw nsw i64 %indvars.iv149, 1
  %38 = load i32, ptr %n, align 4, !tbaa !35
  %39 = sext i32 %38 to i64
  %cmp88 = icmp slt i64 %indvars.iv.next150, %39
  br i1 %cmp88, label %for.body89, label %for.end97, !llvm.loop !48

for.end97:                                        ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit, %for.cond87.preheader
  %vtable.i88 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !5
  %vbase.offset.ptr.i89 = getelementptr i8, ptr %vtable.i88, i64 -24
  %vbase.offset.i90 = load i64, ptr %vbase.offset.ptr.i89, align 8
  %gep122 = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 240), i64 %vbase.offset.i90
  %40 = load ptr, ptr %gep122, align 8, !tbaa !8
  %tobool.not.i.i.i93 = icmp eq ptr %40, null
  br i1 %tobool.not.i.i.i93, label %if.then.i.i.i106, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i94

if.then.i.i.i106:                                 ; preds = %for.end97
  call void @_ZSt16__throw_bad_castv() #9
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i94: ; preds = %for.end97
  %_M_widen_ok.i.i.i95 = getelementptr inbounds nuw i8, ptr %40, i64 56
  %41 = load i8, ptr %_M_widen_ok.i.i.i95, align 8, !tbaa !28
  %tobool.not.i1.i.i96 = icmp eq i8 %41, 0
  br i1 %tobool.not.i1.i.i96, label %if.end.i.i.i102, label %if.then.i2.i.i97

if.then.i2.i.i97:                                 ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i94
  %arrayidx.i.i.i98 = getelementptr inbounds nuw i8, ptr %40, i64 67
  %42 = load i8, ptr %arrayidx.i.i.i98, align 1, !tbaa !34
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit107

if.end.i.i.i102:                                  ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i94
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %40)
  %vtable.i.i.i103 = load ptr, ptr %40, align 8, !tbaa !5
  %vfn.i.i.i104 = getelementptr inbounds nuw i8, ptr %vtable.i.i.i103, i64 48
  %43 = load ptr, ptr %vfn.i.i.i104, align 8
  %call.i.i.i105 = call noundef signext i8 %43(ptr noundef nonnull align 8 dereferenceable(570) %40, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit107

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit107: ; preds = %if.then.i2.i.i97, %if.end.i.i.i102
  %retval.0.i.i.i99 = phi i8 [ %42, %if.then.i2.i.i97 ], [ %call.i.i.i105, %if.end.i.i.i102 ]
  %call1.i100 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %retval.0.i.i.i99)
  %call.i.i101 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i100)
  br label %for.inc100

for.inc100:                                       ; preds = %for.body82, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit107
  %indvars.iv.next153 = add nuw nsw i64 %indvars.iv152, 1
  %exitcond156.not = icmp eq i64 %indvars.iv.next153, %wide.trip.count155
  br i1 %exitcond156.not, label %if.end103, label %for.body82, !llvm.loop !49

if.end103:                                        ; preds = %for.inc100, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit87, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %call104 = call noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin)
  %call105 = call noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin)
  %call106 = call noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin)
  call void @llvm.lifetime.end.p0(i64 1200, ptr nonnull %c) #8
  call void @llvm.lifetime.end.p0(i64 2004, ptr nonnull %b) #8
  call void @llvm.lifetime.end.p0(i64 501, ptr nonnull %a) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #8
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPclc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i8 noundef signext) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #5

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smax.v4i32(<4 x i32>) #6

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nounwind }
attributes #9 = { noreturn }
attributes #10 = { nounwind willreturn memory(read) }

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
!8 = !{!9, !25, i64 240}
!9 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !10, i64 0, !22, i64 216, !12, i64 224, !23, i64 225, !24, i64 232, !25, i64 240, !26, i64 248, !27, i64 256}
!10 = !{!"_ZTSSt8ios_base", !11, i64 8, !11, i64 16, !13, i64 24, !14, i64 28, !14, i64 32, !15, i64 40, !17, i64 48, !12, i64 64, !18, i64 192, !19, i64 200, !20, i64 208}
!11 = !{!"long", !12, i64 0}
!12 = !{!"omnipotent char", !7, i64 0}
!13 = !{!"_ZTSSt13_Ios_Fmtflags", !12, i64 0}
!14 = !{!"_ZTSSt12_Ios_Iostate", !12, i64 0}
!15 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !16, i64 0}
!16 = !{!"any pointer", !12, i64 0}
!17 = !{!"_ZTSNSt8ios_base6_WordsE", !16, i64 0, !11, i64 8}
!18 = !{!"int", !12, i64 0}
!19 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !16, i64 0}
!20 = !{!"_ZTSSt6locale", !21, i64 0}
!21 = !{!"p1 _ZTSNSt6locale5_ImplE", !16, i64 0}
!22 = !{!"p1 _ZTSSo", !16, i64 0}
!23 = !{!"bool", !12, i64 0}
!24 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !16, i64 0}
!25 = !{!"p1 _ZTSSt5ctypeIcE", !16, i64 0}
!26 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !16, i64 0}
!27 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !16, i64 0}
!28 = !{!29, !12, i64 56}
!29 = !{!"_ZTSSt5ctypeIcE", !30, i64 0, !31, i64 16, !23, i64 24, !32, i64 32, !32, i64 40, !33, i64 48, !12, i64 56, !12, i64 57, !12, i64 313, !12, i64 569}
!30 = !{!"_ZTSNSt6locale5facetE", !18, i64 8}
!31 = !{!"p1 _ZTS15__locale_struct", !16, i64 0}
!32 = !{!"p1 int", !16, i64 0}
!33 = !{!"p1 short", !16, i64 0}
!34 = !{!12, !12, i64 0}
!35 = !{!18, !18, i64 0}
!36 = distinct !{!36, !37, !38, !39, !40}
!37 = !{!"llvm.loop.mustprogress"}
!38 = !{!"llvm.loop.unroll.disable"}
!39 = !{!"llvm.loop.isvectorized", i32 1}
!40 = !{!"llvm.loop.unroll.runtime.disable"}
!41 = distinct !{!41, !37, !38, !39}
!42 = distinct !{!42, !37, !38}
!43 = distinct !{!43, !37, !38}
!44 = distinct !{!44, !37, !38}
!45 = distinct !{!45, !37, !38, !39, !40}
!46 = distinct !{!46, !37, !38, !39}
!47 = !{!10, !11, i64 16}
!48 = distinct !{!48, !37, !38}
!49 = distinct !{!49, !37, !38}
