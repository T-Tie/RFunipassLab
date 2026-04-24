; ModuleID = '<stdin>'
source_filename = "/tmp/tmpjpj9nvev.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }

@strin = dso_local global [503 x i8] zeroinitializer, align 16
@str2 = dso_local local_unnamed_addr global [10 x i8] zeroinitializer, align 1
@jilu = dso_local local_unnamed_addr global [500 x i32] zeroinitializer, align 16
@used = dso_local local_unnamed_addr global [500 x i32] zeroinitializer, align 16
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [3 x i8] c"NO\00", align 1
@stdin = external local_unnamed_addr global ptr, align 8

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %__c.addr.i = alloca i8, align 1
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #8
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %0 = load ptr, ptr @stdin, align 8, !tbaa !5
  %call.i = call i32 @getc(ptr noundef %0)
  %vtable.i = load ptr, ptr @_ZSt3cin, align 8, !tbaa !10
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset.i
  %_M_ctype.i.i = getelementptr inbounds nuw i8, ptr %add.ptr.i, i64 240
  %1 = load ptr, ptr %_M_ctype.i.i, align 8, !tbaa !12
  %tobool.not.i.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

if.then.i.i.i:                                    ; preds = %entry
  call void @_ZSt16__throw_bad_castv() #9
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %entry
  %_M_widen_ok.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 56
  %2 = load i8, ptr %_M_widen_ok.i.i.i, align 8, !tbaa !30
  %tobool.not.i1.i.i = icmp eq i8 %2, 0
  br i1 %tobool.not.i1.i.i, label %if.end.i.i.i, label %if.then.i2.i.i

if.then.i2.i.i:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %arrayidx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 67
  %3 = load i8, ptr %arrayidx.i.i.i, align 1, !tbaa !36
  br label %_ZNSi7getlineEPcl.exit

if.end.i.i.i:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %1)
  %vtable.i.i.i = load ptr, ptr %1, align 8, !tbaa !10
  %vfn.i.i.i = getelementptr inbounds nuw i8, ptr %vtable.i.i.i, i64 48
  %4 = load ptr, ptr %vfn.i.i.i, align 8
  %call.i.i.i = call noundef signext i8 %4(ptr noundef nonnull align 8 dereferenceable(570) %1, i8 noundef signext 10)
  br label %_ZNSi7getlineEPcl.exit

_ZNSi7getlineEPcl.exit:                           ; preds = %if.then.i2.i.i, %if.end.i.i.i
  %retval.0.i.i.i = phi i8 [ %3, %if.then.i2.i.i ], [ %call.i.i.i, %if.end.i.i.i ]
  %call2.i = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPclc(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull @strin, i64 noundef 500, i8 noundef signext %retval.0.i.i.i)
  %call3 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) @strin) #10
  %conv = trunc i64 %call3 to i32
  %5 = load i32, ptr %n, align 4, !tbaa !37
  %.fr = freeze i32 %5
  %cmp.not84 = icmp sgt i32 %.fr, %conv
  br i1 %cmp.not84, label %if.else, label %for.cond4.preheader.lr.ph

for.cond4.preheader.lr.ph:                        ; preds = %_ZNSi7getlineEPcl.exit
  %cmp577 = icmp sgt i32 %.fr, 0
  br i1 %cmp577, label %for.cond4.preheader.us88.preheader, label %for.cond4.preheader.preheader

for.cond4.preheader.us88.preheader:               ; preds = %for.cond4.preheader.lr.ph
  %6 = zext nneg i32 %.fr to i64
  %7 = add i32 %conv, 1
  %8 = sub i32 %7, %.fr
  %wide.trip.count180 = zext i32 %8 to i64
  %min.iters.check = icmp ult i32 %.fr, 4
  %n.vec = and i64 %6, 2147483644
  %cmp.n = icmp eq i64 %n.vec, %6
  br label %for.cond9.preheader.us100

for.cond9.preheader.us100:                        ; preds = %for.cond4.preheader.us88.preheader, %for.cond9.for.end42_crit_edge.split.us.us
  %indvar161 = phi i64 [ 0, %for.cond4.preheader.us88.preheader ], [ %indvar.next162, %for.cond9.for.end42_crit_edge.split.us.us ]
  %maxtime.086.us89 = phi i32 [ 0, %for.cond4.preheader.us88.preheader ], [ %maxtime.0..us105, %for.cond9.for.end42_crit_edge.split.us.us ]
  %scevgep163 = getelementptr i8, ptr @strin, i64 %indvar161
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 @str2, ptr align 1 %scevgep163, i64 %6, i1 false), !tbaa !36
  %arrayidx35.us = getelementptr inbounds nuw [500 x i32], ptr @jilu, i64 0, i64 %indvar161
  br label %for.body12.us.us

for.body12.us.us:                                 ; preds = %for.inc40.us.us, %for.cond9.preheader.us100
  %indvars.iv174 = phi i64 [ %indvars.iv.next175, %for.inc40.us.us ], [ 0, %for.cond9.preheader.us100 ]
  %arrayidx14.us.us = getelementptr inbounds nuw [500 x i32], ptr @used, i64 0, i64 %indvars.iv174
  %9 = load i32, ptr %arrayidx14.us.us, align 4, !tbaa !37
  %cmp15.us.us = icmp eq i32 %9, 1
  br i1 %cmp15.us.us, label %for.inc40.us.us, label %for.body18.us.us.preheader

for.body18.us.us.preheader:                       ; preds = %for.body12.us.us
  br i1 %min.iters.check, label %for.body18.us.us.preheader198, label %vector.body

vector.body:                                      ; preds = %for.body18.us.us.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %for.body18.us.us.preheader ]
  %vec.phi = phi <4 x i1> [ %14, %vector.body ], [ zeroinitializer, %for.body18.us.us.preheader ]
  %10 = add nuw nsw i64 %index, %indvars.iv174
  %11 = getelementptr inbounds nuw [503 x i8], ptr @strin, i64 0, i64 %10
  %wide.load = load <4 x i8>, ptr %11, align 1, !tbaa !36
  %12 = getelementptr inbounds nuw [10 x i8], ptr @str2, i64 0, i64 %index
  %wide.load194 = load <4 x i8>, ptr %12, align 1, !tbaa !36
  %13 = icmp ne <4 x i8> %wide.load, %wide.load194
  %.fr197 = freeze <4 x i1> %13
  %14 = or <4 x i1> %vec.phi, %.fr197
  %index.next = add nuw i64 %index, 4
  %15 = icmp eq i64 %index.next, %n.vec
  br i1 %15, label %middle.block, label %vector.body, !llvm.loop !38

middle.block:                                     ; preds = %vector.body
  %16 = bitcast <4 x i1> %14 to i4
  %.not = icmp eq i4 %16, 0
  %rdx.select = zext i1 %.not to i32
  br i1 %cmp.n, label %for.cond16.for.end31_crit_edge.us.us, label %for.body18.us.us.preheader198

for.body18.us.us.preheader198:                    ; preds = %for.body18.us.us.preheader, %middle.block
  %indvars.iv168.ph = phi i64 [ 0, %for.body18.us.us.preheader ], [ %n.vec, %middle.block ]
  %pd.081.us.us.ph = phi i32 [ 1, %for.body18.us.us.preheader ], [ %rdx.select, %middle.block ]
  br label %for.body18.us.us

if.then33.us.us:                                  ; preds = %for.cond16.for.end31_crit_edge.us.us
  %17 = load i32, ptr %arrayidx35.us, align 4, !tbaa !37
  %inc36.us.us = add nsw i32 %17, 1
  store i32 %inc36.us.us, ptr %arrayidx35.us, align 4, !tbaa !37
  store i32 1, ptr %arrayidx14.us.us, align 4, !tbaa !37
  br label %for.inc40.us.us

for.body18.us.us:                                 ; preds = %for.body18.us.us.preheader198, %for.body18.us.us
  %indvars.iv168 = phi i64 [ %indvars.iv.next169, %for.body18.us.us ], [ %indvars.iv168.ph, %for.body18.us.us.preheader198 ]
  %pd.081.us.us = phi i32 [ %spec.select.us.us, %for.body18.us.us ], [ %pd.081.us.us.ph, %for.body18.us.us.preheader198 ]
  %18 = add nuw nsw i64 %indvars.iv168, %indvars.iv174
  %arrayidx21.us.us = getelementptr inbounds nuw [503 x i8], ptr @strin, i64 0, i64 %18
  %19 = load i8, ptr %arrayidx21.us.us, align 1, !tbaa !36
  %arrayidx24.us.us = getelementptr inbounds nuw [10 x i8], ptr @str2, i64 0, i64 %indvars.iv168
  %20 = load i8, ptr %arrayidx24.us.us, align 1, !tbaa !36
  %cmp26.not.us.us = icmp eq i8 %19, %20
  %spec.select.us.us = select i1 %cmp26.not.us.us, i32 %pd.081.us.us, i32 0
  %indvars.iv.next169 = add nuw nsw i64 %indvars.iv168, 1
  %exitcond173.not = icmp eq i64 %indvars.iv.next169, %6
  br i1 %exitcond173.not, label %for.cond16.for.end31_crit_edge.us.us, label %for.body18.us.us, !llvm.loop !43

for.inc40.us.us:                                  ; preds = %for.cond16.for.end31_crit_edge.us.us, %if.then33.us.us, %for.body12.us.us
  %indvars.iv.next175 = add nuw nsw i64 %indvars.iv174, 1
  %exitcond178.not = icmp eq i64 %indvars.iv.next175, %wide.trip.count180
  br i1 %exitcond178.not, label %for.cond9.for.end42_crit_edge.split.us.us, label %for.body12.us.us, !llvm.loop !44

for.cond16.for.end31_crit_edge.us.us:             ; preds = %for.body18.us.us, %middle.block
  %spec.select.us.us.lcssa = phi i32 [ %rdx.select, %middle.block ], [ %spec.select.us.us, %for.body18.us.us ]
  %cmp32.not.us.us = icmp eq i32 %spec.select.us.us.lcssa, 0
  br i1 %cmp32.not.us.us, label %for.inc40.us.us, label %if.then33.us.us

for.cond9.for.end42_crit_edge.split.us.us:        ; preds = %for.inc40.us.us
  %21 = load i32, ptr %arrayidx35.us, align 4, !tbaa !37
  %maxtime.0..us105 = call i32 @llvm.smax.i32(i32 %maxtime.086.us89, i32 %21)
  %indvar.next162 = add nuw nsw i64 %indvar161, 1
  %exitcond181.not = icmp eq i64 %indvar.next162, %wide.trip.count180
  br i1 %exitcond181.not, label %for.end50, label %for.cond9.preheader.us100, !llvm.loop !45

for.cond4.preheader.preheader:                    ; preds = %for.cond4.preheader.lr.ph
  %22 = add i32 %conv, 1
  %23 = sub i32 %22, %.fr
  %wide.trip.count147 = zext i32 %23 to i64
  br label %for.cond4.preheader

for.cond4.preheader:                              ; preds = %for.cond4.preheader.preheader, %for.cond9.for.end42_crit_edge.split
  %indvars.iv144 = phi i64 [ 0, %for.cond4.preheader.preheader ], [ %indvars.iv.next145, %for.cond9.for.end42_crit_edge.split ]
  %maxtime.086 = phi i32 [ 0, %for.cond4.preheader.preheader ], [ %maxtime.0., %for.cond9.for.end42_crit_edge.split ]
  %arrayidx35 = getelementptr inbounds nuw [500 x i32], ptr @jilu, i64 0, i64 %indvars.iv144
  br label %for.body12

for.body12:                                       ; preds = %for.cond4.preheader, %for.inc40
  %indvars.iv = phi i64 [ 0, %for.cond4.preheader ], [ %indvars.iv.next, %for.inc40 ]
  %arrayidx14 = getelementptr inbounds nuw [500 x i32], ptr @used, i64 0, i64 %indvars.iv
  %24 = load i32, ptr %arrayidx14, align 4, !tbaa !37
  %cmp15 = icmp eq i32 %24, 1
  br i1 %cmp15, label %for.inc40, label %for.cond16.preheader

for.cond16.preheader:                             ; preds = %for.body12
  %25 = load i32, ptr %arrayidx35, align 4, !tbaa !37
  %inc36 = add nsw i32 %25, 1
  store i32 %inc36, ptr %arrayidx35, align 4, !tbaa !37
  store i32 1, ptr %arrayidx14, align 4, !tbaa !37
  br label %for.inc40

for.inc40:                                        ; preds = %for.cond16.preheader, %for.body12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count147
  br i1 %exitcond.not, label %for.cond9.for.end42_crit_edge.split, label %for.body12, !llvm.loop !44

for.cond9.for.end42_crit_edge.split:              ; preds = %for.inc40
  %26 = load i32, ptr %arrayidx35, align 4, !tbaa !37
  %maxtime.0. = call i32 @llvm.smax.i32(i32 %maxtime.086, i32 %26)
  %indvars.iv.next145 = add nuw nsw i64 %indvars.iv144, 1
  %exitcond148.not = icmp eq i64 %indvars.iv.next145, %wide.trip.count147
  br i1 %exitcond148.not, label %for.end50, label %for.cond4.preheader, !llvm.loop !45

for.end50:                                        ; preds = %for.cond9.for.end42_crit_edge.split, %for.cond9.for.end42_crit_edge.split.us.us
  %maxtime.0.lcssa = phi i32 [ %maxtime.0..us105, %for.cond9.for.end42_crit_edge.split.us.us ], [ %maxtime.0., %for.cond9.for.end42_crit_edge.split ]
  %cmp51 = icmp eq i32 %maxtime.0.lcssa, 1
  br i1 %cmp51, label %if.then52, label %if.else

if.then52:                                        ; preds = %for.end50
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 2)
  br label %if.end79

if.else:                                          ; preds = %_ZNSi7getlineEPcl.exit, %for.end50
  %maxtime.0.lcssa191 = phi i32 [ %maxtime.0.lcssa, %for.end50 ], [ 0, %_ZNSi7getlineEPcl.exit ]
  %call54 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %maxtime.0.lcssa191)
  %vtable.i38 = load ptr, ptr %call54, align 8, !tbaa !10
  %vbase.offset.ptr.i39 = getelementptr i8, ptr %vtable.i38, i64 -24
  %vbase.offset.i40 = load i64, ptr %vbase.offset.ptr.i39, align 8
  %add.ptr.i41 = getelementptr inbounds i8, ptr %call54, i64 %vbase.offset.i40
  %_M_ctype.i.i42 = getelementptr inbounds nuw i8, ptr %add.ptr.i41, i64 240
  %27 = load ptr, ptr %_M_ctype.i.i42, align 8, !tbaa !12
  %tobool.not.i.i.i43 = icmp eq ptr %27, null
  br i1 %tobool.not.i.i.i43, label %if.then.i.i.i56, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i44

if.then.i.i.i56:                                  ; preds = %if.else
  call void @_ZSt16__throw_bad_castv() #9
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i44: ; preds = %if.else
  %_M_widen_ok.i.i.i45 = getelementptr inbounds nuw i8, ptr %27, i64 56
  %28 = load i8, ptr %_M_widen_ok.i.i.i45, align 8, !tbaa !30
  %tobool.not.i1.i.i46 = icmp eq i8 %28, 0
  br i1 %tobool.not.i1.i.i46, label %if.end.i.i.i52, label %if.then.i2.i.i47

if.then.i2.i.i47:                                 ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i44
  %arrayidx.i.i.i48 = getelementptr inbounds nuw i8, ptr %27, i64 67
  %29 = load i8, ptr %arrayidx.i.i.i48, align 1, !tbaa !36
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

if.end.i.i.i52:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i44
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %27)
  %vtable.i.i.i53 = load ptr, ptr %27, align 8, !tbaa !10
  %vfn.i.i.i54 = getelementptr inbounds nuw i8, ptr %vtable.i.i.i53, i64 48
  %30 = load ptr, ptr %vfn.i.i.i54, align 8
  %call.i.i.i55 = call noundef signext i8 %30(ptr noundef nonnull align 8 dereferenceable(570) %27, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %if.then.i2.i.i47, %if.end.i.i.i52
  %retval.0.i.i.i49 = phi i8 [ %29, %if.then.i2.i.i47 ], [ %call.i.i.i55, %if.end.i.i.i52 ]
  %call1.i50 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call54, i8 noundef signext %retval.0.i.i.i49)
  %call.i.i51 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i50)
  %31 = load i32, ptr %n, align 4, !tbaa !37
  %cmp58.not138 = icmp sgt i32 %31, %conv
  br i1 %cmp58.not138, label %if.end79, label %for.body59

for.body59:                                       ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %for.inc76
  %32 = phi i32 [ %43, %for.inc76 ], [ %31, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit ]
  %indvars.iv186 = phi i64 [ %indvars.iv.next187, %for.inc76 ], [ 0, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit ]
  %arrayidx61 = getelementptr inbounds nuw [500 x i32], ptr @jilu, i64 0, i64 %indvars.iv186
  %33 = load i32, ptr %arrayidx61, align 4, !tbaa !37
  %cmp62 = icmp eq i32 %33, %maxtime.0.lcssa191
  br i1 %cmp62, label %for.cond64.preheader, label %for.inc76

for.cond64.preheader:                             ; preds = %for.body59
  %cmp65134 = icmp sgt i32 %32, 0
  br i1 %cmp65134, label %for.body66, label %for.end73

for.body66:                                       ; preds = %for.cond64.preheader, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
  %indvars.iv182 = phi i64 [ %indvars.iv.next183, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit ], [ 0, %for.cond64.preheader ]
  %34 = add nuw nsw i64 %indvars.iv182, %indvars.iv186
  %arrayidx69 = getelementptr inbounds nuw [503 x i8], ptr @strin, i64 0, i64 %34
  %35 = load i8, ptr %arrayidx69, align 1, !tbaa !36
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__c.addr.i)
  store i8 %35, ptr %__c.addr.i, align 1, !tbaa !36
  %vtable.i31 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !10
  %vbase.offset.ptr.i32 = getelementptr i8, ptr %vtable.i31, i64 -24
  %vbase.offset.i33 = load i64, ptr %vbase.offset.ptr.i32, align 8
  %gep = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 16), i64 %vbase.offset.i33
  %36 = load i64, ptr %gep, align 8, !tbaa !46
  %cmp.not.i = icmp eq i64 %36, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %for.body66
  %call1.i35 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %__c.addr.i, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

if.end.i:                                         ; preds = %for.body66
  %call2.i36 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %35)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %if.then.i, %if.end.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__c.addr.i)
  %indvars.iv.next183 = add nuw nsw i64 %indvars.iv182, 1
  %37 = load i32, ptr %n, align 4, !tbaa !37
  %38 = sext i32 %37 to i64
  %cmp65 = icmp slt i64 %indvars.iv.next183, %38
  br i1 %cmp65, label %for.body66, label %for.end73, !llvm.loop !47

for.end73:                                        ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit, %for.cond64.preheader
  %vtable.i57 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !10
  %vbase.offset.ptr.i58 = getelementptr i8, ptr %vtable.i57, i64 -24
  %vbase.offset.i59 = load i64, ptr %vbase.offset.ptr.i58, align 8
  %gep136 = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 240), i64 %vbase.offset.i59
  %39 = load ptr, ptr %gep136, align 8, !tbaa !12
  %tobool.not.i.i.i62 = icmp eq ptr %39, null
  br i1 %tobool.not.i.i.i62, label %if.then.i.i.i75, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i63

if.then.i.i.i75:                                  ; preds = %for.end73
  call void @_ZSt16__throw_bad_castv() #9
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i63: ; preds = %for.end73
  %_M_widen_ok.i.i.i64 = getelementptr inbounds nuw i8, ptr %39, i64 56
  %40 = load i8, ptr %_M_widen_ok.i.i.i64, align 8, !tbaa !30
  %tobool.not.i1.i.i65 = icmp eq i8 %40, 0
  br i1 %tobool.not.i1.i.i65, label %if.end.i.i.i71, label %if.then.i2.i.i66

if.then.i2.i.i66:                                 ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i63
  %arrayidx.i.i.i67 = getelementptr inbounds nuw i8, ptr %39, i64 67
  %41 = load i8, ptr %arrayidx.i.i.i67, align 1, !tbaa !36
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit76

if.end.i.i.i71:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i63
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %39)
  %vtable.i.i.i72 = load ptr, ptr %39, align 8, !tbaa !10
  %vfn.i.i.i73 = getelementptr inbounds nuw i8, ptr %vtable.i.i.i72, i64 48
  %42 = load ptr, ptr %vfn.i.i.i73, align 8
  %call.i.i.i74 = call noundef signext i8 %42(ptr noundef nonnull align 8 dereferenceable(570) %39, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit76

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit76: ; preds = %if.then.i2.i.i66, %if.end.i.i.i71
  %retval.0.i.i.i68 = phi i8 [ %41, %if.then.i2.i.i66 ], [ %call.i.i.i74, %if.end.i.i.i71 ]
  %call1.i69 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %retval.0.i.i.i68)
  %call.i.i70 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i69)
  %.pre = load i32, ptr %n, align 4, !tbaa !37
  br label %for.inc76

for.inc76:                                        ; preds = %for.body59, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit76
  %43 = phi i32 [ %32, %for.body59 ], [ %.pre, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit76 ]
  %indvars.iv.next187 = add nuw nsw i64 %indvars.iv186, 1
  %sub57 = sub nsw i32 %conv, %43
  %44 = sext i32 %sub57 to i64
  %cmp58.not.not = icmp slt i64 %indvars.iv186, %44
  br i1 %cmp58.not.not, label %for.body59, label %if.end79, !llvm.loop !48

if.end79:                                         ; preds = %for.inc76, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %if.then52
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #8
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr noundef captures(none)) local_unnamed_addr #4

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

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!6 = !{!"p1 _ZTS8_IO_FILE", !7, i64 0}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C++ TBAA"}
!10 = !{!11, !11, i64 0}
!11 = !{!"vtable pointer", !9, i64 0}
!12 = !{!13, !27, i64 240}
!13 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !14, i64 0, !24, i64 216, !8, i64 224, !25, i64 225, !26, i64 232, !27, i64 240, !28, i64 248, !29, i64 256}
!14 = !{!"_ZTSSt8ios_base", !15, i64 8, !15, i64 16, !16, i64 24, !17, i64 28, !17, i64 32, !18, i64 40, !19, i64 48, !8, i64 64, !20, i64 192, !21, i64 200, !22, i64 208}
!15 = !{!"long", !8, i64 0}
!16 = !{!"_ZTSSt13_Ios_Fmtflags", !8, i64 0}
!17 = !{!"_ZTSSt12_Ios_Iostate", !8, i64 0}
!18 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !7, i64 0}
!19 = !{!"_ZTSNSt8ios_base6_WordsE", !7, i64 0, !15, i64 8}
!20 = !{!"int", !8, i64 0}
!21 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !7, i64 0}
!22 = !{!"_ZTSSt6locale", !23, i64 0}
!23 = !{!"p1 _ZTSNSt6locale5_ImplE", !7, i64 0}
!24 = !{!"p1 _ZTSSo", !7, i64 0}
!25 = !{!"bool", !8, i64 0}
!26 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !7, i64 0}
!27 = !{!"p1 _ZTSSt5ctypeIcE", !7, i64 0}
!28 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !7, i64 0}
!29 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !7, i64 0}
!30 = !{!31, !8, i64 56}
!31 = !{!"_ZTSSt5ctypeIcE", !32, i64 0, !33, i64 16, !25, i64 24, !34, i64 32, !34, i64 40, !35, i64 48, !8, i64 56, !8, i64 57, !8, i64 313, !8, i64 569}
!32 = !{!"_ZTSNSt6locale5facetE", !20, i64 8}
!33 = !{!"p1 _ZTS15__locale_struct", !7, i64 0}
!34 = !{!"p1 int", !7, i64 0}
!35 = !{!"p1 short", !7, i64 0}
!36 = !{!8, !8, i64 0}
!37 = !{!20, !20, i64 0}
!38 = distinct !{!38, !39, !40, !41, !42}
!39 = !{!"llvm.loop.mustprogress"}
!40 = !{!"llvm.loop.unroll.disable"}
!41 = !{!"llvm.loop.isvectorized", i32 1}
!42 = !{!"llvm.loop.unroll.runtime.disable"}
!43 = distinct !{!43, !39, !40, !41}
!44 = distinct !{!44, !39, !40}
!45 = distinct !{!45, !39, !40}
!46 = !{!14, !15, i64 16}
!47 = distinct !{!47, !39, !40}
!48 = distinct !{!48, !39, !40}
