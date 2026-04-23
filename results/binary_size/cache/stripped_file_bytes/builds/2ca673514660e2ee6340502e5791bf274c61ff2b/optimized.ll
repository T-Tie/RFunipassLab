; ModuleID = '<stdin>'
source_filename = "/tmp/tmptvao9vex.cpp"
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
  %__c.addr.i70 = alloca i8, align 1
  %__c.addr.i57 = alloca i8, align 1
  %__c.addr.i41 = alloca i8, align 1
  %__c.addr.i = alloca i8, align 1
  %str = alloca [100 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %str) #5
  %vtable.i = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset.i
  %_M_ctype.i.i = getelementptr inbounds nuw i8, ptr %add.ptr.i, i64 240
  %0 = load ptr, ptr %_M_ctype.i.i, align 8, !tbaa !8
  %tobool.not.i.i.i = icmp eq ptr %0, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

if.then.i.i.i:                                    ; preds = %entry
  tail call void @_ZSt16__throw_bad_castv() #6
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
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %0)
  %vtable.i.i.i = load ptr, ptr %0, align 8, !tbaa !5
  %vfn.i.i.i = getelementptr inbounds nuw i8, ptr %vtable.i.i.i, i64 48
  %3 = load ptr, ptr %vfn.i.i.i, align 8
  %call.i.i.i = tail call noundef signext i8 %3(ptr noundef nonnull align 8 dereferenceable(570) %0, i8 noundef signext 10)
  br label %_ZNSi7getlineEPcl.exit

_ZNSi7getlineEPcl.exit:                           ; preds = %if.then.i2.i.i, %if.end.i.i.i
  %retval.0.i.i.i = phi i8 [ %2, %if.then.i2.i.i ], [ %call.i.i.i, %if.end.i.i.i ]
  %call2.i = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPclc(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull %str, i64 noundef 100, i8 noundef signext %retval.0.i.i.i)
  br label %for.cond

for.cond:                                         ; preds = %for.cond, %_ZNSi7getlineEPcl.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond ], [ 0, %_ZNSi7getlineEPcl.exit ]
  %j.0 = phi i32 [ %5, %for.cond ], [ 0, %_ZNSi7getlineEPcl.exit ]
  %arrayidx = getelementptr inbounds nuw [100 x i8], ptr %str, i64 0, i64 %indvars.iv
  %4 = load i8, ptr %arrayidx, align 1, !tbaa !34
  %cmp.not = icmp eq i8 %4, 0
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %5 = trunc nuw nsw i64 %indvars.iv to i32
  br i1 %cmp.not, label %for.cond1.preheader, label %for.cond, !llvm.loop !35

for.cond1.preheader:                              ; preds = %for.cond
  %6 = add nuw i32 %j.0, 1
  %wide.trip.count = zext i32 %6 to i64
  %min.iters.check = icmp ult i32 %j.0, 3
  br i1 %min.iters.check, label %for.body3.preheader, label %vector.ph

vector.ph:                                        ; preds = %for.cond1.preheader
  %n.vec = and i64 %wide.trip.count, 4294967292
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %10, %vector.body ]
  %7 = getelementptr inbounds nuw [100 x i8], ptr %str, i64 0, i64 %index
  %wide.load = load <4 x i8>, ptr %7, align 4, !tbaa !34
  %8 = icmp eq <4 x i8> %wide.load, splat (i8 32)
  %9 = zext <4 x i1> %8 to <4 x i32>
  %10 = add <4 x i32> %vec.phi, %9
  %index.next = add nuw i64 %index, 4
  %11 = icmp eq i64 %index.next, %n.vec
  br i1 %11, label %middle.block, label %vector.body, !llvm.loop !38

middle.block:                                     ; preds = %vector.body
  %12 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %10)
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %for.end10, label %for.body3.preheader

for.body3.preheader:                              ; preds = %for.cond1.preheader, %middle.block
  %indvars.iv107.ph = phi i64 [ 0, %for.cond1.preheader ], [ %n.vec, %middle.block ]
  %l.087.ph = phi i32 [ 0, %for.cond1.preheader ], [ %12, %middle.block ]
  br label %for.body3

for.body3:                                        ; preds = %for.body3.preheader, %for.body3
  %indvars.iv107 = phi i64 [ %indvars.iv.next108, %for.body3 ], [ %indvars.iv107.ph, %for.body3.preheader ]
  %l.087 = phi i32 [ %spec.select, %for.body3 ], [ %l.087.ph, %for.body3.preheader ]
  %arrayidx5 = getelementptr inbounds nuw [100 x i8], ptr %str, i64 0, i64 %indvars.iv107
  %13 = load i8, ptr %arrayidx5, align 1, !tbaa !34
  %cmp7 = icmp eq i8 %13, 32
  %add = zext i1 %cmp7 to i32
  %spec.select = add nuw nsw i32 %l.087, %add
  %indvars.iv.next108 = add nuw nsw i64 %indvars.iv107, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next108, %wide.trip.count
  br i1 %exitcond.not, label %for.end10, label %for.body3, !llvm.loop !41

for.end10:                                        ; preds = %for.body3, %middle.block
  %spec.select.lcssa = phi i32 [ %12, %middle.block ], [ %spec.select, %for.body3 ]
  %cmp11.not = icmp ne i32 %spec.select.lcssa, 0
  br i1 %cmp11.not, label %for.cond13.preheader, label %if.end71

for.cond13.preheader:                             ; preds = %for.end10
  %14 = zext nneg i32 %j.0 to i64
  br label %for.cond13

for.cond13:                                       ; preds = %for.cond13.preheader, %for.body15
  %indvars.iv112 = phi i64 [ %14, %for.cond13.preheader ], [ %indvars.iv.next113, %for.body15 ]
  %cmp14 = icmp sgt i64 %indvars.iv112, 0
  br i1 %cmp14, label %for.body15, label %for.end33

for.body15:                                       ; preds = %for.cond13
  %indvars.iv.next113 = add nsw i64 %indvars.iv112, -1
  %arrayidx17 = getelementptr inbounds nuw [100 x i8], ptr %str, i64 0, i64 %indvars.iv.next113
  %15 = load i8, ptr %arrayidx17, align 1, !tbaa !34
  %cmp19 = icmp eq i8 %15, 32
  br i1 %cmp19, label %for.cond22.preheader, label %for.cond13, !llvm.loop !42

for.cond22.preheader:                             ; preds = %for.body15
  %16 = trunc nuw nsw i64 %indvars.iv112 to i32
  %17 = trunc nsw i64 %indvars.iv.next113 to i32
  %cmp23.not88 = icmp slt i32 %j.0, %16
  br i1 %cmp23.not88, label %for.end33, label %for.body24

for.body24:                                       ; preds = %for.cond22.preheader, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
  %indvars.iv116 = phi i64 [ %indvars.iv.next117, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit ], [ %indvars.iv112, %for.cond22.preheader ]
  %arrayidx26 = getelementptr inbounds nuw [100 x i8], ptr %str, i64 0, i64 %indvars.iv116
  %18 = load i8, ptr %arrayidx26, align 1, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__c.addr.i)
  store i8 %18, ptr %__c.addr.i, align 1, !tbaa !34
  %vtable.i34 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !5
  %vbase.offset.ptr.i35 = getelementptr i8, ptr %vtable.i34, i64 -24
  %vbase.offset.i36 = load i64, ptr %vbase.offset.ptr.i35, align 8
  %gep = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 16), i64 %vbase.offset.i36
  %19 = load i64, ptr %gep, align 8, !tbaa !43
  %cmp.not.i = icmp eq i64 %19, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %for.body24
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %__c.addr.i, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

if.end.i:                                         ; preds = %for.body24
  %call2.i38 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %18)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %if.then.i, %if.end.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__c.addr.i)
  %indvars.iv.next117 = add nuw nsw i64 %indvars.iv116, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next117 to i32
  %exitcond119.not = icmp eq i32 %6, %lftr.wideiv
  br i1 %exitcond119.not, label %for.end33, label %for.body24, !llvm.loop !44

for.end33:                                        ; preds = %for.cond13, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit, %for.cond22.preheader
  %j.2 = phi i32 [ %17, %for.cond22.preheader ], [ %17, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit ], [ %j.0, %for.cond13 ]
  %cmp3694 = icmp sgt i32 %j.2, 0
  br i1 %cmp3694, label %for.body37.preheader, label %for.end57

for.body37.preheader:                             ; preds = %for.end33
  %20 = zext nneg i32 %j.2 to i64
  br label %for.body37

for.body37:                                       ; preds = %for.body37.preheader, %for.inc55
  %indvars.iv120 = phi i64 [ %20, %for.body37.preheader ], [ %indvars.iv.next121, %for.inc55 ]
  %j.396 = phi i32 [ %j.2, %for.body37.preheader ], [ %j.4, %for.inc55 ]
  %indvars.iv.next121 = add nsw i64 %indvars.iv120, -1
  %arrayidx39 = getelementptr inbounds nuw [100 x i8], ptr %str, i64 0, i64 %indvars.iv.next121
  %21 = load i8, ptr %arrayidx39, align 1, !tbaa !34
  %cmp41 = icmp eq i8 %21, 32
  br i1 %cmp41, label %if.then42, label %for.inc55

if.then42:                                        ; preds = %for.body37
  %call1.i39 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 1)
  %22 = sext i32 %j.396 to i64
  %cmp4691 = icmp slt i64 %indvars.iv120, %22
  %23 = trunc nuw nsw i64 %indvars.iv.next121 to i32
  br i1 %cmp4691, label %for.body47, label %for.inc55

for.body47:                                       ; preds = %if.then42, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit53
  %indvars.iv122 = phi i64 [ %indvars.iv.next123, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit53 ], [ %indvars.iv120, %if.then42 ]
  %arrayidx49 = getelementptr inbounds nuw [100 x i8], ptr %str, i64 0, i64 %indvars.iv122
  %24 = load i8, ptr %arrayidx49, align 1, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__c.addr.i41)
  store i8 %24, ptr %__c.addr.i41, align 1, !tbaa !34
  %vtable.i42 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !5
  %vbase.offset.ptr.i43 = getelementptr i8, ptr %vtable.i42, i64 -24
  %vbase.offset.i44 = load i64, ptr %vbase.offset.ptr.i43, align 8
  %gep90 = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 16), i64 %vbase.offset.i44
  %25 = load i64, ptr %gep90, align 8, !tbaa !43
  %cmp.not.i47 = icmp eq i64 %25, 0
  br i1 %cmp.not.i47, label %if.end.i51, label %if.then.i48

if.then.i48:                                      ; preds = %for.body47
  %call1.i49 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %__c.addr.i41, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit53

if.end.i51:                                       ; preds = %for.body47
  %call2.i52 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %24)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit53

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit53: ; preds = %if.then.i48, %if.end.i51
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__c.addr.i41)
  %indvars.iv.next123 = add nuw nsw i64 %indvars.iv122, 1
  %26 = trunc nuw i64 %indvars.iv.next123 to i32
  %cmp46 = icmp sgt i32 %j.396, %26
  br i1 %cmp46, label %for.body47, label %for.inc55, !llvm.loop !45

for.inc55:                                        ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit53, %if.then42, %for.body37
  %j.4 = phi i32 [ %j.396, %for.body37 ], [ %23, %if.then42 ], [ %23, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit53 ]
  %cmp36 = icmp sgt i64 %indvars.iv120, 1
  br i1 %cmp36, label %for.body37, label %for.end57, !llvm.loop !46

for.end57:                                        ; preds = %for.inc55, %for.end33
  %j.3.lcssa = phi i32 [ %j.2, %for.end33 ], [ %j.4, %for.inc55 ]
  %call1.i55 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 1)
  %27 = load i8, ptr %str, align 16, !tbaa !34
  %cmp63.not99 = icmp eq i8 %27, 32
  br i1 %cmp63.not99, label %if.end71, label %for.body64

for.body64:                                       ; preds = %for.end57, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit69
  %indvars.iv126 = phi i64 [ %indvars.iv.next127, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit69 ], [ 0, %for.end57 ]
  %28 = phi i8 [ %30, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit69 ], [ %27, %for.end57 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__c.addr.i57)
  store i8 %28, ptr %__c.addr.i57, align 1, !tbaa !34
  %vtable.i58 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !5
  %vbase.offset.ptr.i59 = getelementptr i8, ptr %vtable.i58, i64 -24
  %vbase.offset.i60 = load i64, ptr %vbase.offset.ptr.i59, align 8
  %gep98 = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 16), i64 %vbase.offset.i60
  %29 = load i64, ptr %gep98, align 8, !tbaa !43
  %cmp.not.i63 = icmp eq i64 %29, 0
  br i1 %cmp.not.i63, label %if.end.i67, label %if.then.i64

if.then.i64:                                      ; preds = %for.body64
  %call1.i65 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %__c.addr.i57, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit69

if.end.i67:                                       ; preds = %for.body64
  %call2.i68 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %28)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit69

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit69: ; preds = %if.then.i64, %if.end.i67
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__c.addr.i57)
  %indvars.iv.next127 = add nuw nsw i64 %indvars.iv126, 1
  %arrayidx61 = getelementptr inbounds nuw [100 x i8], ptr %str, i64 0, i64 %indvars.iv.next127
  %30 = load i8, ptr %arrayidx61, align 1, !tbaa !34
  %cmp63.not = icmp eq i8 %30, 32
  br i1 %cmp63.not, label %if.end71, label %for.body64, !llvm.loop !47

if.end71:                                         ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit69, %for.end57, %for.end10
  %j.1 = phi i32 [ %j.0, %for.end10 ], [ %j.3.lcssa, %for.end57 ], [ %j.3.lcssa, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit69 ]
  %cmp75.not102 = icmp slt i32 %j.1, 0
  %or.cond = select i1 %cmp11.not, i1 true, i1 %cmp75.not102
  br i1 %or.cond, label %if.end83, label %for.body76.preheader

for.body76.preheader:                             ; preds = %if.end71
  %31 = add nuw i32 %j.1, 1
  %wide.trip.count131 = zext i32 %31 to i64
  br label %for.body76

for.body76:                                       ; preds = %for.body76.preheader, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit82
  %indvars.iv128 = phi i64 [ 0, %for.body76.preheader ], [ %indvars.iv.next129, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit82 ]
  %arrayidx78 = getelementptr inbounds nuw [100 x i8], ptr %str, i64 0, i64 %indvars.iv128
  %32 = load i8, ptr %arrayidx78, align 1, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__c.addr.i70)
  store i8 %32, ptr %__c.addr.i70, align 1, !tbaa !34
  %vtable.i71 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !5
  %vbase.offset.ptr.i72 = getelementptr i8, ptr %vtable.i71, i64 -24
  %vbase.offset.i73 = load i64, ptr %vbase.offset.ptr.i72, align 8
  %gep101 = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 16), i64 %vbase.offset.i73
  %33 = load i64, ptr %gep101, align 8, !tbaa !43
  %cmp.not.i76 = icmp eq i64 %33, 0
  br i1 %cmp.not.i76, label %if.end.i80, label %if.then.i77

if.then.i77:                                      ; preds = %for.body76
  %call1.i78 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %__c.addr.i70, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit82

if.end.i80:                                       ; preds = %for.body76
  %call2.i81 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %32)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit82

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit82: ; preds = %if.then.i77, %if.end.i80
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__c.addr.i70)
  %indvars.iv.next129 = add nuw nsw i64 %indvars.iv128, 1
  %exitcond132.not = icmp eq i64 %indvars.iv.next129, %wide.trip.count131
  br i1 %exitcond132.not, label %if.end83, label %for.body76, !llvm.loop !48

if.end83:                                         ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit82, %if.end71
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %str) #5
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
!35 = distinct !{!35, !36, !37}
!36 = !{!"llvm.loop.mustprogress"}
!37 = !{!"llvm.loop.unroll.disable"}
!38 = distinct !{!38, !36, !37, !39, !40}
!39 = !{!"llvm.loop.isvectorized", i32 1}
!40 = !{!"llvm.loop.unroll.runtime.disable"}
!41 = distinct !{!41, !36, !37, !39}
!42 = distinct !{!42, !36, !37}
!43 = !{!10, !11, i64 16}
!44 = distinct !{!44, !36, !37}
!45 = distinct !{!45, !36, !37}
!46 = distinct !{!46, !36, !37}
!47 = distinct !{!47, !36, !37}
!48 = distinct !{!48, !36, !37}
