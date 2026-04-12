; ModuleID = '<stdin>'
source_filename = "/tmp/tmpp2vqv40i.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }

$_ZNKSt5ctypeIcE5widenEc = comdat any

@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %__c.addr.i34 = alloca i8, align 1
  %__c.addr.i = alloca i8, align 1
  %n = alloca i32, align 4
  %a = alloca [500 x [41 x i8]], align 16
  %b = alloca [500 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #9
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  call void @llvm.lifetime.start.p0(i64 noundef 20500, ptr noundef nonnull %a) #10
  call void @llvm.lifetime.start.p0(i64 noundef 2000, ptr noundef nonnull %b) #10
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv, %1
  br i1 %cmp, label %for.body, label %for.cond4.preheader

for.cond4.preheader:                              ; preds = %for.cond
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 noundef 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond4

for.body:                                         ; preds = %for.cond
  %add.ptr = getelementptr inbounds nuw [41 x i8], ptr %a, i64 %indvars.iv
  %2 = call i64 @llvm.objectsize.i64.p0(ptr nonnull %add.ptr, i1 noundef false, i1 noundef true, i1 noundef false)
  switch i64 %2, label %if.then6.i [
    i64 0, label %do.end.i
    i64 -1, label %if.else34.i
  ]

do.end.i:                                         ; preds = %for.body
  %vtable.i = load ptr, ptr @_ZSt3cin, align 8, !tbaa !9
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8, !invariant.load !11
  %gep = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt3cin, i64 16), i64 %vbase.offset.i
  store i64 0, ptr %gep, align 8, !tbaa !12
  %add.ptr4.i = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset.i
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr4.i, i32 noundef 4)
  br label %for.inc

if.then6.i:                                       ; preds = %for.body
  %vtable7.i = load ptr, ptr @_ZSt3cin, align 8, !tbaa !9
  %vbase.offset.ptr8.i = getelementptr i8, ptr %vtable7.i, i64 -24
  %vbase.offset9.i = load i64, ptr %vbase.offset.ptr8.i, align 8, !invariant.load !11
  %gep99 = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt3cin, i64 16), i64 %vbase.offset9.i
  %3 = load i64, ptr %gep99, align 8, !tbaa !12
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull %add.ptr, i64 noundef %2)
  %vtable12.i = load ptr, ptr @_ZSt3cin, align 8, !tbaa !9
  %vbase.offset.ptr13.i = getelementptr i8, ptr %vtable12.i, i64 -24
  %vbase.offset14.i = load i64, ptr %vbase.offset.ptr13.i, align 8, !invariant.load !11
  %add.ptr15.i = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset14.i
  %_M_streambuf_state.i.i.i = getelementptr inbounds nuw i8, ptr %add.ptr15.i, i64 32
  %4 = load i32, ptr %_M_streambuf_state.i.i.i, align 8, !tbaa !23
  %cmp.i.i = icmp eq i32 %4, 0
  br i1 %cmp.i.i, label %land.lhs.true.i, label %for.inc

land.lhs.true.i:                                  ; preds = %if.then6.i
  %cmp17.i = icmp slt i64 %3, 1
  %cmp18.i = icmp ult i64 %2, %3
  %or.cond.i = or i1 %cmp17.i, %cmp18.i
  br i1 %or.cond.i, label %if.then19.i, label %for.inc

if.then19.i:                                      ; preds = %land.lhs.true.i
  %_M_streambuf.i.i = getelementptr inbounds nuw i8, ptr %add.ptr15.i, i64 232
  %5 = load ptr, ptr %_M_streambuf.i.i, align 8, !tbaa !24
  %call25.i = call noundef i32 @_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv(ptr noundef nonnull align 8 dereferenceable(64) %5)
  %cmp.i2.i = icmp eq i32 %call25.i, -1
  %conv.i = zext i1 %cmp.i2.i to i64
  %expval.i = call i64 @llvm.expect.i64(i64 noundef %conv.i, i64 noundef 1)
  %tobool.not.i = icmp eq i64 %expval.i, 0
  br i1 %tobool.not.i, label %for.inc, label %if.then28.i

if.then28.i:                                      ; preds = %if.then19.i
  %vtable29.i = load ptr, ptr @_ZSt3cin, align 8, !tbaa !9
  %vbase.offset.ptr30.i = getelementptr i8, ptr %vtable29.i, i64 -24
  %vbase.offset31.i = load i64, ptr %vbase.offset.ptr30.i, align 8, !invariant.load !11
  %add.ptr32.i = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset31.i
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr32.i, i32 noundef 2)
  br label %for.inc

if.else34.i:                                      ; preds = %for.body
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull %add.ptr, i64 noundef 9223372036854775807)
  br label %for.inc

for.inc:                                          ; preds = %if.else34.i, %if.then28.i, %if.then19.i, %land.lhs.true.i, %if.then6.i, %do.end.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !32

for.cond4:                                        ; preds = %for.cond4.preheader, %for.inc13
  %indvars.iv105 = phi i64 [ 0, %for.cond4.preheader ], [ %indvars.iv.next106, %for.inc13 ]
  %exitcond.not = icmp eq i64 %indvars.iv105, %wide.trip.count
  br i1 %exitcond.not, label %for.cond16.preheader, label %for.inc13

for.cond16.preheader:                             ; preds = %for.cond4
  %invariant.gep = getelementptr i8, ptr %a, i64 -41
  br label %for.cond16

for.inc13:                                        ; preds = %for.cond4
  %add.ptr8 = getelementptr inbounds nuw [41 x i8], ptr %a, i64 %indvars.iv105
  %call10 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %add.ptr8) #11
  %6 = trunc i64 %call10 to i32
  %conv = add i32 %6, 1
  %add.ptr12 = getelementptr inbounds nuw i32, ptr %b, i64 %indvars.iv105
  store i32 %conv, ptr %add.ptr12, align 4, !tbaa !5
  %indvars.iv.next106 = add nuw nsw i64 %indvars.iv105, 1
  br label %for.cond4, !llvm.loop !35

for.cond16:                                       ; preds = %for.cond16.preheader, %for.inc42
  %.pre121 = phi i32 [ %0, %for.cond16.preheader ], [ %.pre, %for.inc42 ]
  %indvars.iv112 = phi i64 [ 0, %for.cond16.preheader ], [ %indvars.iv.next113, %for.inc42 ]
  %sum.0 = phi i32 [ 0, %for.cond16.preheader ], [ %sum.1, %for.inc42 ]
  %k.0 = phi i32 [ 0, %for.cond16.preheader ], [ %k.1, %for.inc42 ]
  %7 = sext i32 %.pre121 to i64
  %cmp17 = icmp slt i64 %indvars.iv112, %7
  br i1 %cmp17, label %for.body18, label %for.cond45.preheader

for.cond45.preheader:                             ; preds = %for.cond16
  %8 = zext nneg i32 %k.0 to i64
  br label %for.cond45

for.body18:                                       ; preds = %for.cond16
  %add.ptr20 = getelementptr inbounds nuw i32, ptr %b, i64 %indvars.iv112
  %9 = load i32, ptr %add.ptr20, align 4, !tbaa !5
  %add21 = add nsw i32 %9, %sum.0
  %cmp22 = icmp sgt i32 %add21, 81
  br i1 %cmp22, label %for.cond23.preheader, label %for.inc42

for.cond23.preheader:                             ; preds = %for.body18
  %10 = add nsw i64 %indvars.iv112, -1
  %11 = zext nneg i32 %k.0 to i64
  br label %for.cond23

for.cond23:                                       ; preds = %for.cond23.preheader, %for.inc31
  %indvars.iv109 = phi i64 [ %11, %for.cond23.preheader ], [ %indvars.iv.next110, %for.inc31 ]
  %cmp24 = icmp slt i64 %indvars.iv109, %10
  br i1 %cmp24, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, label %for.end33

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %for.cond23
  %add.ptr27 = getelementptr inbounds nuw [41 x i8], ptr %a, i64 %indvars.iv109
  %call.i.i = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %add.ptr27) #10
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %add.ptr27, i64 noundef %call.i.i)
  call void @llvm.lifetime.start.p0(i64 noundef 1, ptr noundef nonnull %__c.addr.i)
  store i8 32, ptr %__c.addr.i, align 1, !tbaa !36
  %vtable.i6 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !9
  %vbase.offset.ptr.i7 = getelementptr i8, ptr %vtable.i6, i64 -24
  %vbase.offset.i8 = load i64, ptr %vbase.offset.ptr.i7, align 8, !invariant.load !11
  %gep100 = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 16), i64 %vbase.offset.i8
  %12 = load i64, ptr %gep100, align 8, !tbaa !12, !invariant.load !11
  %cmp.not.i = icmp eq i64 %12, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i11

if.then.i11:                                      ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %call1.i12 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %__c.addr.i, i64 noundef 1)
  br label %for.inc31

if.end.i:                                         ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %call2.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext 32)
  br label %for.inc31

for.inc31:                                        ; preds = %if.end.i, %if.then.i11
  call void @llvm.lifetime.end.p0(i64 noundef 1, ptr noundef nonnull %__c.addr.i)
  %indvars.iv.next110 = add nuw nsw i64 %indvars.iv109, 1
  br label %for.cond23, !llvm.loop !37

for.end33:                                        ; preds = %for.cond23
  %gep101 = getelementptr [41 x i8], ptr %invariant.gep, i64 %indvars.iv112
  %call.i.i15 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %gep101) #10
  %call1.i16 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %gep101, i64 noundef %call.i.i15)
  %vtable.i58 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !9
  %vbase.offset.ptr.i59 = getelementptr i8, ptr %vtable.i58, i64 -24
  %vbase.offset.i60 = load i64, ptr %vbase.offset.ptr.i59, align 8, !invariant.load !11
  %add.ptr.i61 = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %vbase.offset.i60
  %call.i62 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i61, i8 noundef signext 10)
  %call1.i63 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %call.i62)
  %call.i.i64 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i63)
  %13 = trunc nuw nsw i64 %indvars.iv112 to i32
  %.pre.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.inc42

for.inc42:                                        ; preds = %for.body18, %for.end33
  %.pre = phi i32 [ %.pre.pre, %for.end33 ], [ %.pre121, %for.body18 ]
  %sum.1 = phi i32 [ %9, %for.end33 ], [ %add21, %for.body18 ]
  %k.1 = phi i32 [ %13, %for.end33 ], [ %k.0, %for.body18 ]
  %indvars.iv.next113 = add nuw nsw i64 %indvars.iv112, 1
  br label %for.cond16, !llvm.loop !38

for.cond45:                                       ; preds = %for.cond45.preheader, %for.inc54
  %14 = phi i32 [ %.pre121, %for.cond45.preheader ], [ %.pre120, %for.inc54 ]
  %indvars.iv117 = phi i64 [ %8, %for.cond45.preheader ], [ %indvars.iv.next118, %for.inc54 ]
  %sub46 = add nsw i32 %14, -1
  %15 = sext i32 %sub46 to i64
  %cmp47 = icmp slt i64 %indvars.iv117, %15
  br i1 %cmp47, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit33, label %for.end56

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit33: ; preds = %for.cond45
  %add.ptr50 = getelementptr inbounds nuw [41 x i8], ptr %a, i64 %indvars.iv117
  %call.i.i25 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %add.ptr50) #10
  %call1.i26 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %add.ptr50, i64 noundef %call.i.i25)
  call void @llvm.lifetime.start.p0(i64 noundef 1, ptr noundef nonnull %__c.addr.i34)
  store i8 32, ptr %__c.addr.i34, align 1, !tbaa !36
  %vtable.i35 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !9
  %vbase.offset.ptr.i36 = getelementptr i8, ptr %vtable.i35, i64 -24
  %vbase.offset.i37 = load i64, ptr %vbase.offset.ptr.i36, align 8, !invariant.load !11
  %gep102 = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 16), i64 %vbase.offset.i37
  %16 = load i64, ptr %gep102, align 8, !tbaa !12
  %cmp.not.i40 = icmp eq i64 %16, 0
  br i1 %cmp.not.i40, label %if.end.i44, label %if.then.i41

if.then.i41:                                      ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit33
  %call1.i42 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %__c.addr.i34, i64 noundef 1)
  br label %for.inc54

if.end.i44:                                       ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit33
  %call2.i45 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext 32)
  br label %for.inc54

for.inc54:                                        ; preds = %if.end.i44, %if.then.i41
  call void @llvm.lifetime.end.p0(i64 noundef 1, ptr noundef nonnull %__c.addr.i34)
  %indvars.iv.next118 = add nuw nsw i64 %indvars.iv117, 1
  %.pre120 = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond45, !llvm.loop !39

for.end56:                                        ; preds = %for.cond45
  %idx.ext57 = sext i32 %14 to i64
  %add.ptr58 = getelementptr inbounds [41 x i8], ptr %a, i64 %idx.ext57
  %add.ptr59 = getelementptr inbounds i8, ptr %add.ptr58, i64 -41
  %call.i.i49 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %add.ptr59) #10
  %call1.i50 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %add.ptr59, i64 noundef %call.i.i49)
  %vtable.i65 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !9
  %vbase.offset.ptr.i66 = getelementptr i8, ptr %vtable.i65, i64 -24
  %vbase.offset.i67 = load i64, ptr %vbase.offset.ptr.i66, align 8, !invariant.load !11
  %add.ptr.i68 = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %vbase.offset.i67
  %call.i = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i68, i8 noundef signext 10)
  %call1.i69 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %call.i)
  %call.i.i70 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i69)
  call void @llvm.lifetime.end.p0(i64 noundef 2000, ptr noundef nonnull %b) #10
  call void @llvm.lifetime.end.p0(i64 noundef 20500, ptr noundef nonnull %a) #10
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #10
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #4

; Function Attrs: mustprogress uwtable
declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) #5 align 2

declare void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef) #2

; Function Attrs: mustprogress uwtable
declare noundef i32 @_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv(ptr noundef nonnull align 8 dereferenceable(64)) #5 align 2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #6

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) #2

; Function Attrs: mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) #5 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) #2

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %this, i8 noundef signext %__c) #5 comdat align 2 {
entry:
  %_M_widen_ok = getelementptr inbounds nuw i8, ptr %this, i64 56
  %0 = load i8, ptr %_M_widen_ok, align 8, !tbaa !40
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %_M_widen = getelementptr inbounds nuw i8, ptr %this, i64 57
  %idxprom = zext i8 %__c to i64
  %arrayidx = getelementptr inbounds nuw [256 x i8], ptr %_M_widen, i64 0, i64 %idxprom
  %1 = load i8, ptr %arrayidx, align 1, !tbaa !36
  br label %return

if.end:                                           ; preds = %entry
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %this)
  %vtable = load ptr, ptr %this, align 8, !tbaa !9
  %vfn = getelementptr inbounds nuw i8, ptr %vtable, i64 48
  %2 = load ptr, ptr %vfn, align 8, !invariant.load !11
  %call = tail call noundef signext i8 %2(ptr noundef nonnull align 8 dereferenceable(570) %this, i8 noundef signext %__c)
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i8 [ %1, %if.then ], [ %call, %if.end ]
  ret i8 %retval.0
}

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() #7

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nofree nounwind willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind willreturn memory(read) }

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
!11 = !{}
!12 = !{!13, !14, i64 16}
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
!23 = !{!13, !16, i64 32}
!24 = !{!25, !28, i64 232}
!25 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !13, i64 0, !26, i64 216, !7, i64 224, !27, i64 225, !28, i64 232, !29, i64 240, !30, i64 248, !31, i64 256}
!26 = !{!"p1 _ZTSSo", !18, i64 0}
!27 = !{!"bool", !7, i64 0}
!28 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !18, i64 0}
!29 = !{!"p1 _ZTSSt5ctypeIcE", !18, i64 0}
!30 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !18, i64 0}
!31 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !18, i64 0}
!32 = distinct !{!32, !33, !34}
!33 = !{!"llvm.loop.mustprogress"}
!34 = !{!"llvm.loop.unroll.disable"}
!35 = distinct !{!35, !33, !34}
!36 = !{!7, !7, i64 0}
!37 = distinct !{!37, !33, !34}
!38 = distinct !{!38, !33, !34}
!39 = distinct !{!39, !33, !34}
!40 = !{!41, !7, i64 56}
!41 = !{!"_ZTSSt5ctypeIcE", !42, i64 0, !43, i64 16, !27, i64 24, !44, i64 32, !44, i64 40, !45, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!42 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!43 = !{!"p1 _ZTS15__locale_struct", !18, i64 0}
!44 = !{!"p1 int", !18, i64 0}
!45 = !{!"p1 short", !18, i64 0}
