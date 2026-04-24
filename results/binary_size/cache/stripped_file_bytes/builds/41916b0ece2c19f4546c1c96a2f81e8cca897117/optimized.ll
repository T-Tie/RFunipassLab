; ModuleID = '<stdin>'
source_filename = "/tmp/tmpqsv6yj09.cpp"
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
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %__c.addr.i44 = alloca i8, align 1
  %__c.addr.i31 = alloca i8, align 1
  %__c.addr.i = alloca i8, align 1
  %word = alloca [100 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %word) #4
  %vtable.i73 = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  %vbase.offset.ptr.i74 = getelementptr i8, ptr %vtable.i73, i64 -24
  %vbase.offset.i75 = load i64, ptr %vbase.offset.ptr.i74, align 8
  %gep7276 = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt3cin, i64 240), i64 %vbase.offset.i75
  %0 = load ptr, ptr %gep7276, align 8, !tbaa !8
  %tobool.not.i.i.i77 = icmp eq ptr %0, null
  br i1 %tobool.not.i.i.i77, label %if.then.i.i.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

if.then.i.i.i:                                    ; preds = %if.end67, %entry
  call void @_ZSt16__throw_bad_castv() #5
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %entry, %if.end67
  %1 = phi ptr [ %26, %if.end67 ], [ %0, %entry ]
  %flag.080 = phi i32 [ %spec.select.lcssa, %if.end67 ], [ 0, %entry ]
  %k.079 = phi i32 [ %k.1, %if.end67 ], [ 0, %entry ]
  %p.078 = phi i32 [ %p.1.lcssa, %if.end67 ], [ 0, %entry ]
  %_M_widen_ok.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 56
  %2 = load i8, ptr %_M_widen_ok.i.i.i, align 8, !tbaa !28
  %tobool.not.i1.i.i = icmp eq i8 %2, 0
  br i1 %tobool.not.i1.i.i, label %if.end.i.i.i, label %if.then.i2.i.i

if.then.i2.i.i:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %arrayidx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 67
  %3 = load i8, ptr %arrayidx.i.i.i, align 1, !tbaa !34
  br label %_ZNSi7getlineEPcl.exit

if.end.i.i.i:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %1)
  %vtable.i.i.i = load ptr, ptr %1, align 8, !tbaa !5
  %vfn.i.i.i = getelementptr inbounds nuw i8, ptr %vtable.i.i.i, i64 48
  %4 = load ptr, ptr %vfn.i.i.i, align 8
  %call.i.i.i = call noundef signext i8 %4(ptr noundef nonnull align 8 dereferenceable(570) %1, i8 noundef signext 10)
  br label %_ZNSi7getlineEPcl.exit

_ZNSi7getlineEPcl.exit:                           ; preds = %if.then.i2.i.i, %if.end.i.i.i
  %retval.0.i.i.i = phi i8 [ %3, %if.then.i2.i.i ], [ %call.i.i.i, %if.end.i.i.i ]
  %call2.i = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPclc(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull %word, i64 noundef 100, i8 noundef signext %retval.0.i.i.i)
  %vtable = load ptr, ptr %call2.i, align 8, !tbaa !5
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %call2.i, i64 %vbase.offset
  %_M_streambuf_state.i.i.i = getelementptr inbounds nuw i8, ptr %add.ptr, i64 32
  %5 = load i32, ptr %_M_streambuf_state.i.i.i, align 8, !tbaa !35
  %and.i.i.i = and i32 %5, 5
  %cmp.i.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i.not.i, label %for.body.preheader, label %while.end

for.body.preheader:                               ; preds = %_ZNSi7getlineEPcl.exit
  %6 = load i8, ptr %word, align 16, !tbaa !34
  %cmp2.not104 = icmp eq i8 %6, 0
  br i1 %cmp2.not104, label %for.end, label %for.cond

for.cond:                                         ; preds = %for.body.preheader, %for.body
  %indvars.iv105 = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.body.preheader ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv105, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 100
  br i1 %exitcond.not, label %for.cond.for.end_crit_edge, label %for.body, !llvm.loop !36

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [100 x i8], ptr %word, i64 0, i64 %indvars.iv.next
  %7 = load i8, ptr %arrayidx, align 1, !tbaa !34
  %cmp2.not = icmp eq i8 %7, 0
  br i1 %cmp2.not, label %for.body.for.end_crit_edge, label %for.cond, !llvm.loop !36

for.body.for.end_crit_edge:                       ; preds = %for.body
  %8 = trunc nuw nsw i64 %indvars.iv105 to i32
  br label %for.end

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  br label %for.end, !llvm.loop !36

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %for.body.for.end_crit_edge, %for.body.preheader
  %p.1.lcssa = phi i32 [ %8, %for.body.for.end_crit_edge ], [ 99, %for.cond.for.end_crit_edge ], [ %p.078, %for.body.preheader ]
  %9 = add i32 %p.1.lcssa, 1
  %wide.trip.count = zext i32 %9 to i64
  %min.iters.check = icmp ult i32 %9, 4
  br i1 %min.iters.check, label %for.body5.preheader, label %vector.ph

vector.ph:                                        ; preds = %for.end
  %n.vec = and i64 %wide.trip.count, 4294967292
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %12, %vector.body ]
  %10 = getelementptr inbounds nuw [100 x i8], ptr %word, i64 0, i64 %index
  %wide.load = load <4 x i8>, ptr %10, align 4, !tbaa !34
  %wide.load.fr = freeze <4 x i8> %wide.load
  %11 = icmp eq <4 x i8> %wide.load.fr, splat (i8 32)
  %12 = or <4 x i1> %vec.phi, %11
  %index.next = add nuw i64 %index, 4
  %13 = icmp eq i64 %index.next, %n.vec
  br i1 %13, label %middle.block, label %vector.body, !llvm.loop !39

middle.block:                                     ; preds = %vector.body
  %14 = bitcast <4 x i1> %12 to i4
  %.not = icmp eq i4 %14, 0
  %rdx.select = select i1 %.not, i32 %flag.080, i32 1
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %for.end14, label %for.body5.preheader

for.body5.preheader:                              ; preds = %for.end, %middle.block
  %indvars.iv83.ph = phi i64 [ 0, %for.end ], [ %n.vec, %middle.block ]
  %flag.161.ph = phi i32 [ %flag.080, %for.end ], [ %rdx.select, %middle.block ]
  br label %for.body5

for.body5:                                        ; preds = %for.body5.preheader, %for.body5
  %indvars.iv83 = phi i64 [ %indvars.iv.next84, %for.body5 ], [ %indvars.iv83.ph, %for.body5.preheader ]
  %flag.161 = phi i32 [ %spec.select, %for.body5 ], [ %flag.161.ph, %for.body5.preheader ]
  %arrayidx7 = getelementptr inbounds nuw [100 x i8], ptr %word, i64 0, i64 %indvars.iv83
  %15 = load i8, ptr %arrayidx7, align 1, !tbaa !34
  %cmp9 = icmp eq i8 %15, 32
  %spec.select = select i1 %cmp9, i32 1, i32 %flag.161
  %indvars.iv.next84 = add nuw nsw i64 %indvars.iv83, 1
  %exitcond86.not = icmp eq i64 %indvars.iv.next84, %wide.trip.count
  br i1 %exitcond86.not, label %for.end14, label %for.body5, !llvm.loop !42

for.end14:                                        ; preds = %for.body5, %middle.block
  %spec.select.lcssa = phi i32 [ %rdx.select, %middle.block ], [ %spec.select, %for.body5 ]
  %cmp15 = icmp eq i32 %spec.select.lcssa, 0
  br i1 %cmp15, label %for.body19, label %for.cond27.preheader

for.cond27.preheader:                             ; preds = %for.end14
  %cmp2864 = icmp sgt i32 %p.1.lcssa, -1
  br i1 %cmp2864, label %for.body29.preheader, label %for.cond51.preheader

for.body29.preheader:                             ; preds = %for.cond27.preheader
  %16 = zext nneg i32 %p.1.lcssa to i64
  br label %for.body29

for.body19:                                       ; preds = %for.end14, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
  %indvars.iv97 = phi i64 [ %indvars.iv.next98, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit ], [ 0, %for.end14 ]
  %arrayidx21 = getelementptr inbounds nuw [100 x i8], ptr %word, i64 0, i64 %indvars.iv97
  %17 = load i8, ptr %arrayidx21, align 1, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__c.addr.i)
  store i8 %17, ptr %__c.addr.i, align 1, !tbaa !34
  %vtable.i24 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !5
  %vbase.offset.ptr.i25 = getelementptr i8, ptr %vtable.i24, i64 -24
  %vbase.offset.i26 = load i64, ptr %vbase.offset.ptr.i25, align 8
  %gep70 = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 16), i64 %vbase.offset.i26
  %18 = load i64, ptr %gep70, align 8, !tbaa !43
  %cmp.not.i = icmp eq i64 %18, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %for.body19
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %__c.addr.i, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

if.end.i:                                         ; preds = %for.body19
  %call2.i28 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %17)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %if.then.i, %if.end.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__c.addr.i)
  %indvars.iv.next98 = add nuw nsw i64 %indvars.iv97, 1
  %exitcond101.not = icmp eq i64 %indvars.iv.next98, %wide.trip.count
  br i1 %exitcond101.not, label %if.end67, label %for.body19, !llvm.loop !44

for.cond51.preheader:                             ; preds = %for.inc49, %for.cond27.preheader
  %k.2.lcssa = phi i32 [ %k.079, %for.cond27.preheader ], [ %k.3, %for.inc49 ]
  br label %for.body53

for.body29:                                       ; preds = %for.body29.preheader, %for.inc49
  %indvars.iv87 = phi i64 [ %16, %for.body29.preheader ], [ %indvars.iv.next88, %for.inc49 ]
  %k.267 = phi i32 [ %k.079, %for.body29.preheader ], [ %k.3, %for.inc49 ]
  %arrayidx31 = getelementptr inbounds nuw [100 x i8], ptr %word, i64 0, i64 %indvars.iv87
  %19 = load i8, ptr %arrayidx31, align 1, !tbaa !34
  %cmp33.not = icmp eq i8 %19, 32
  br i1 %cmp33.not, label %for.cond37.preheader, label %if.then34

for.cond37.preheader:                             ; preds = %for.body29
  %20 = trunc nuw nsw i64 %indvars.iv87 to i32
  %add38 = add nsw i32 %k.267, %20
  %cmp39.not.not62 = icmp sgt i32 %k.267, 0
  br i1 %cmp39.not.not62, label %for.body40, label %for.cond.cleanup

if.then34:                                        ; preds = %for.body29
  %inc35 = add nsw i32 %k.267, 1
  br label %for.inc49

for.cond.cleanup:                                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit43, %for.cond37.preheader
  %call1.i29 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 1)
  br label %for.inc49

for.body40:                                       ; preds = %for.cond37.preheader, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit43
  %indvars.iv89 = phi i64 [ %indvars.iv.next90, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit43 ], [ %indvars.iv87, %for.cond37.preheader ]
  %indvars.iv.next90 = add nuw nsw i64 %indvars.iv89, 1
  %arrayidx42 = getelementptr inbounds nuw [100 x i8], ptr %word, i64 0, i64 %indvars.iv.next90
  %21 = load i8, ptr %arrayidx42, align 1, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__c.addr.i31)
  store i8 %21, ptr %__c.addr.i31, align 1, !tbaa !34
  %vtable.i32 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !5
  %vbase.offset.ptr.i33 = getelementptr i8, ptr %vtable.i32, i64 -24
  %vbase.offset.i34 = load i64, ptr %vbase.offset.ptr.i33, align 8
  %gep = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 16), i64 %vbase.offset.i34
  %22 = load i64, ptr %gep, align 8, !tbaa !43
  %cmp.not.i37 = icmp eq i64 %22, 0
  br i1 %cmp.not.i37, label %if.end.i41, label %if.then.i38

if.then.i38:                                      ; preds = %for.body40
  %call1.i39 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %__c.addr.i31, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit43

if.end.i41:                                       ; preds = %for.body40
  %call2.i42 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %21)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit43

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit43: ; preds = %if.then.i38, %if.end.i41
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__c.addr.i31)
  %23 = trunc nuw i64 %indvars.iv.next90 to i32
  %cmp39.not.not = icmp sgt i32 %add38, %23
  br i1 %cmp39.not.not, label %for.body40, label %for.cond.cleanup, !llvm.loop !45

for.inc49:                                        ; preds = %if.then34, %for.cond.cleanup
  %k.3 = phi i32 [ %inc35, %if.then34 ], [ 0, %for.cond.cleanup ]
  %indvars.iv.next88 = add nsw i64 %indvars.iv87, -1
  %cmp28 = icmp sgt i64 %indvars.iv87, 0
  br i1 %cmp28, label %for.body29, label %for.cond51.preheader, !llvm.loop !46

for.body53:                                       ; preds = %for.cond51.preheader, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit56
  %indvars.iv93 = phi i64 [ 0, %for.cond51.preheader ], [ %indvars.iv.next94, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit56 ]
  %arrayidx55 = getelementptr inbounds nuw [100 x i8], ptr %word, i64 0, i64 %indvars.iv93
  %24 = load i8, ptr %arrayidx55, align 1, !tbaa !34
  %cmp57.not = icmp eq i8 %24, 32
  br i1 %cmp57.not, label %if.end67, label %if.then58

if.then58:                                        ; preds = %for.body53
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__c.addr.i44)
  store i8 %24, ptr %__c.addr.i44, align 1, !tbaa !34
  %vtable.i45 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !5
  %vbase.offset.ptr.i46 = getelementptr i8, ptr %vtable.i45, i64 -24
  %vbase.offset.i47 = load i64, ptr %vbase.offset.ptr.i46, align 8
  %gep68 = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 16), i64 %vbase.offset.i47
  %25 = load i64, ptr %gep68, align 8, !tbaa !43
  %cmp.not.i50 = icmp eq i64 %25, 0
  br i1 %cmp.not.i50, label %if.end.i54, label %if.then.i51

if.then.i51:                                      ; preds = %if.then58
  %call1.i52 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %__c.addr.i44, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit56

if.end.i54:                                       ; preds = %if.then58
  %call2.i55 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %24)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit56

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit56: ; preds = %if.then.i51, %if.end.i54
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__c.addr.i44)
  %indvars.iv.next94 = add nuw nsw i64 %indvars.iv93, 1
  %exitcond96.not = icmp eq i64 %indvars.iv.next94, 100
  br i1 %exitcond96.not, label %if.end67, label %for.body53, !llvm.loop !47

if.end67:                                         ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit56, %for.body53, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
  %k.1 = phi i32 [ %k.079, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit ], [ %k.2.lcssa, %for.body53 ], [ %k.2.lcssa, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit56 ]
  %vtable.i = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %gep72 = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt3cin, i64 240), i64 %vbase.offset.i
  %26 = load ptr, ptr %gep72, align 8, !tbaa !8
  %tobool.not.i.i.i = icmp eq ptr %26, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i, !llvm.loop !48

while.end:                                        ; preds = %_ZNSi7getlineEPcl.exit
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %word) #4
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPclc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i8 noundef signext) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #3

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noreturn }

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
!35 = !{!10, !14, i64 32}
!36 = distinct !{!36, !37, !38}
!37 = !{!"llvm.loop.mustprogress"}
!38 = !{!"llvm.loop.unroll.disable"}
!39 = distinct !{!39, !37, !38, !40, !41}
!40 = !{!"llvm.loop.isvectorized", i32 1}
!41 = !{!"llvm.loop.unroll.runtime.disable"}
!42 = distinct !{!42, !37, !38, !40}
!43 = !{!10, !11, i64 16}
!44 = distinct !{!44, !37, !38}
!45 = distinct !{!45, !37, !38}
!46 = distinct !{!46, !37, !38}
!47 = distinct !{!47, !37, !38}
!48 = distinct !{!48, !37, !38}
