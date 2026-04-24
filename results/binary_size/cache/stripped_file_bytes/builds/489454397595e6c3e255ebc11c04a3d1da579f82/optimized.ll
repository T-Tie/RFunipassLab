; ModuleID = '<stdin>'
source_filename = "/tmp/tmpay6wul7h.cpp"
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
  %__c.addr.i49 = alloca i8, align 1
  %__c.addr.i = alloca i8, align 1
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #6
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = zext i32 %0 to i64
  %2 = call ptr @llvm.stacksave.p0()
  %vla = alloca i32, i64 %1, align 16
  %3 = load i32, ptr %n, align 4, !tbaa !5
  %4 = zext i32 %3 to i64
  %vla1 = alloca [41 x i8], i64 %4, align 16
  %cmp99 = icmp sgt i32 %3, 0
  br i1 %cmp99, label %for.body, label %for.end58

for.cond9.preheader:                              ; preds = %for.body
  %cmp10109 = icmp sgt i32 %5, 0
  br i1 %cmp10109, label %for.body11, label %for.end58

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds nuw [41 x i8], ptr %vla1, i64 %indvars.iv
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull %arrayidx, i64 noundef 9223372036854775807)
  %call6 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %arrayidx) #7
  %conv = trunc i64 %call6 to i32
  %arrayidx8 = getelementptr inbounds nuw i32, ptr %vla, i64 %indvars.iv
  store i32 %conv, ptr %arrayidx8, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %5 = load i32, ptr %n, align 4, !tbaa !5
  %6 = sext i32 %5 to i64
  %cmp = icmp slt i64 %indvars.iv.next, %6
  br i1 %cmp, label %for.body, label %for.cond9.preheader, !llvm.loop !9

for.body11:                                       ; preds = %for.cond9.preheader, %for.inc56
  %7 = phi i32 [ %25, %for.inc56 ], [ %5, %for.cond9.preheader ]
  %indvars.iv129 = phi i64 [ %indvars.iv.next130, %for.inc56 ], [ 0, %for.cond9.preheader ]
  %indvars.iv127 = phi i64 [ %indvars.iv.next128, %for.inc56 ], [ 1, %for.cond9.preheader ]
  %totallenth.0111 = phi i32 [ %totallenth.196, %for.inc56 ], [ 0, %for.cond9.preheader ]
  %record.0110 = phi i32 [ %record.195, %for.inc56 ], [ 0, %for.cond9.preheader ]
  %arrayidx13 = getelementptr inbounds nuw i32, ptr %vla, i64 %indvars.iv129
  %8 = load i32, ptr %arrayidx13, align 4, !tbaa !5
  %add = add nsw i32 %8, 1
  %add14 = add nsw i32 %add, %totallenth.0111
  %cmp15 = icmp sgt i32 %add14, 81
  br i1 %cmp15, label %for.cond16.preheader, label %if.end34

for.cond16.preheader:                             ; preds = %for.body11
  %9 = zext i32 %record.0110 to i64
  %cmp17.not.not107 = icmp samesign ugt i64 %indvars.iv129, %9
  %10 = trunc nuw nsw i64 %indvars.iv129 to i32
  br i1 %cmp17.not.not107, label %for.body18.lr.ph, label %for.inc56

for.body18.lr.ph:                                 ; preds = %for.cond16.preheader
  %11 = add nuw nsw i64 %indvars.iv129, 4294967295
  %12 = and i64 %11, 4294967295
  br label %for.body18

for.body18:                                       ; preds = %for.body18.lr.ph, %for.inc28
  %indvars.iv122 = phi i64 [ %9, %for.body18.lr.ph ], [ %indvars.iv.next123, %for.inc28 ]
  %arrayidx20 = getelementptr inbounds nuw [41 x i8], ptr %vla1, i64 %indvars.iv122
  %call.i.i = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %arrayidx20) #6
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %arrayidx20, i64 noundef %call.i.i)
  %cmp24.not = icmp eq i64 %indvars.iv122, %12
  br i1 %cmp24.not, label %if.else, label %if.then25

if.then25:                                        ; preds = %for.body18
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__c.addr.i)
  store i8 32, ptr %__c.addr.i, align 1, !tbaa !12
  %vtable.i33 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !13
  %vbase.offset.ptr.i34 = getelementptr i8, ptr %vtable.i33, i64 -24
  %vbase.offset.i35 = load i64, ptr %vbase.offset.ptr.i34, align 8
  %gep105 = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 16), i64 %vbase.offset.i35
  %13 = load i64, ptr %gep105, align 8, !tbaa !15
  %cmp.not.i = icmp eq i64 %13, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.then25
  %call1.i38 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %__c.addr.i, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

if.end.i:                                         ; preds = %if.then25
  %call2.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext 32)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %if.then.i, %if.end.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__c.addr.i)
  br label %for.inc28

if.else:                                          ; preds = %for.body18
  %vtable.i63 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !13
  %vbase.offset.ptr.i64 = getelementptr i8, ptr %vtable.i63, i64 -24
  %vbase.offset.i65 = load i64, ptr %vbase.offset.ptr.i64, align 8
  %gep106 = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 240), i64 %vbase.offset.i65
  %14 = load ptr, ptr %gep106, align 8, !tbaa !26
  %tobool.not.i.i.i = icmp eq ptr %14, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

if.then.i.i.i:                                    ; preds = %if.else
  call void @_ZSt16__throw_bad_castv() #8
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %if.else
  %_M_widen_ok.i.i.i = getelementptr inbounds nuw i8, ptr %14, i64 56
  %15 = load i8, ptr %_M_widen_ok.i.i.i, align 8, !tbaa !34
  %tobool.not.i1.i.i = icmp eq i8 %15, 0
  br i1 %tobool.not.i1.i.i, label %if.end.i.i.i, label %if.then.i2.i.i

if.then.i2.i.i:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %arrayidx.i.i.i = getelementptr inbounds nuw i8, ptr %14, i64 67
  %16 = load i8, ptr %arrayidx.i.i.i, align 1, !tbaa !12
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

if.end.i.i.i:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %14)
  %vtable.i.i.i = load ptr, ptr %14, align 8, !tbaa !13
  %vfn.i.i.i = getelementptr inbounds nuw i8, ptr %vtable.i.i.i, i64 48
  %17 = load ptr, ptr %vfn.i.i.i, align 8
  %call.i.i.i = call noundef signext i8 %17(ptr noundef nonnull align 8 dereferenceable(570) %14, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %if.then.i2.i.i, %if.end.i.i.i
  %retval.0.i.i.i = phi i8 [ %16, %if.then.i2.i.i ], [ %call.i.i.i, %if.end.i.i.i ]
  %call1.i67 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %retval.0.i.i.i)
  %call.i.i68 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i67)
  br label %for.inc28

for.inc28:                                        ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %indvars.iv.next123 = add nuw nsw i64 %indvars.iv122, 1
  %exitcond126.not = icmp eq i64 %indvars.iv.next123, %indvars.iv129
  br i1 %exitcond126.not, label %for.inc56, label %for.body18, !llvm.loop !40

if.end34:                                         ; preds = %for.body11
  %sub35 = add nsw i32 %7, -1
  %18 = zext i32 %sub35 to i64
  %cmp36 = icmp ne i64 %indvars.iv129, %18
  %19 = zext i32 %record.0110 to i64
  %cmp37.not = icmp eq i64 %indvars.iv129, %19
  %or.cond = select i1 %cmp36, i1 true, i1 %cmp37.not
  %cmp40.not103 = icmp samesign ult i64 %indvars.iv129, %19
  %or.cond114 = select i1 %or.cond, i1 true, i1 %cmp40.not103
  br i1 %or.cond114, label %for.inc56, label %for.body41

for.body41:                                       ; preds = %if.end34, %for.inc52
  %indvars.iv117 = phi i64 [ %indvars.iv.next118, %for.inc52 ], [ %19, %if.end34 ]
  %arrayidx43 = getelementptr inbounds nuw [41 x i8], ptr %vla1, i64 %indvars.iv117
  %call.i.i39 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %arrayidx43) #6
  %call1.i40 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %arrayidx43, i64 noundef %call.i.i39)
  %cmp46.not = icmp eq i64 %indvars.iv117, %indvars.iv129
  br i1 %cmp46.not, label %if.else49, label %if.then47

if.then47:                                        ; preds = %for.body41
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__c.addr.i49)
  store i8 32, ptr %__c.addr.i49, align 1, !tbaa !12
  %vtable.i50 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !13
  %vbase.offset.ptr.i51 = getelementptr i8, ptr %vtable.i50, i64 -24
  %vbase.offset.i52 = load i64, ptr %vbase.offset.ptr.i51, align 8
  %gep101 = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 16), i64 %vbase.offset.i52
  %20 = load i64, ptr %gep101, align 8, !tbaa !15
  %cmp.not.i55 = icmp eq i64 %20, 0
  br i1 %cmp.not.i55, label %if.end.i59, label %if.then.i56

if.then.i56:                                      ; preds = %if.then47
  %call1.i57 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %__c.addr.i49, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit61

if.end.i59:                                       ; preds = %if.then47
  %call2.i60 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext 32)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit61

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit61: ; preds = %if.then.i56, %if.end.i59
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__c.addr.i49)
  br label %for.inc52

if.else49:                                        ; preds = %for.body41
  %vtable.i69 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !13
  %vbase.offset.ptr.i70 = getelementptr i8, ptr %vtable.i69, i64 -24
  %vbase.offset.i71 = load i64, ptr %vbase.offset.ptr.i70, align 8
  %gep102 = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 240), i64 %vbase.offset.i71
  %21 = load ptr, ptr %gep102, align 8, !tbaa !26
  %tobool.not.i.i.i74 = icmp eq ptr %21, null
  br i1 %tobool.not.i.i.i74, label %if.then.i.i.i87, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i75

if.then.i.i.i87:                                  ; preds = %if.else49
  call void @_ZSt16__throw_bad_castv() #8
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i75: ; preds = %if.else49
  %_M_widen_ok.i.i.i76 = getelementptr inbounds nuw i8, ptr %21, i64 56
  %22 = load i8, ptr %_M_widen_ok.i.i.i76, align 8, !tbaa !34
  %tobool.not.i1.i.i77 = icmp eq i8 %22, 0
  br i1 %tobool.not.i1.i.i77, label %if.end.i.i.i83, label %if.then.i2.i.i78

if.then.i2.i.i78:                                 ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i75
  %arrayidx.i.i.i79 = getelementptr inbounds nuw i8, ptr %21, i64 67
  %23 = load i8, ptr %arrayidx.i.i.i79, align 1, !tbaa !12
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit88

if.end.i.i.i83:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i75
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %21)
  %vtable.i.i.i84 = load ptr, ptr %21, align 8, !tbaa !13
  %vfn.i.i.i85 = getelementptr inbounds nuw i8, ptr %vtable.i.i.i84, i64 48
  %24 = load ptr, ptr %vfn.i.i.i85, align 8
  %call.i.i.i86 = call noundef signext i8 %24(ptr noundef nonnull align 8 dereferenceable(570) %21, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit88

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit88: ; preds = %if.then.i2.i.i78, %if.end.i.i.i83
  %retval.0.i.i.i80 = phi i8 [ %23, %if.then.i2.i.i78 ], [ %call.i.i.i86, %if.end.i.i.i83 ]
  %call1.i81 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %retval.0.i.i.i80)
  %call.i.i82 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i81)
  br label %for.inc52

for.inc52:                                        ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit61, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit88
  %indvars.iv.next118 = add nuw nsw i64 %indvars.iv117, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next118, %indvars.iv127
  br i1 %exitcond.not, label %for.inc56, label %for.body41, !llvm.loop !41

for.inc56:                                        ; preds = %for.inc52, %for.inc28, %for.cond16.preheader, %if.end34
  %totallenth.196 = phi i32 [ %add14, %if.end34 ], [ %add, %for.cond16.preheader ], [ %add, %for.inc28 ], [ %add14, %for.inc52 ]
  %record.195 = phi i32 [ %record.0110, %if.end34 ], [ %10, %for.cond16.preheader ], [ %10, %for.inc28 ], [ %record.0110, %for.inc52 ]
  %indvars.iv.next130 = add nuw nsw i64 %indvars.iv129, 1
  %25 = load i32, ptr %n, align 4, !tbaa !5
  %26 = sext i32 %25 to i64
  %cmp10 = icmp slt i64 %indvars.iv.next130, %26
  %indvars.iv.next128 = add nuw nsw i64 %indvars.iv127, 1
  br i1 %cmp10, label %for.body11, label %for.end58, !llvm.loop !42

for.end58:                                        ; preds = %for.inc56, %entry, %for.cond9.preheader
  call void @llvm.stackrestore.p0(ptr %2)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #6
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore.p0(ptr) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #5

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #2

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { nounwind willreturn memory(read) }
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
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = !{!7, !7, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"vtable pointer", !8, i64 0}
!15 = !{!16, !17, i64 16}
!16 = !{!"_ZTSSt8ios_base", !17, i64 8, !17, i64 16, !18, i64 24, !19, i64 28, !19, i64 32, !20, i64 40, !22, i64 48, !7, i64 64, !6, i64 192, !23, i64 200, !24, i64 208}
!17 = !{!"long", !7, i64 0}
!18 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!19 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!20 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !21, i64 0}
!21 = !{!"any pointer", !7, i64 0}
!22 = !{!"_ZTSNSt8ios_base6_WordsE", !21, i64 0, !17, i64 8}
!23 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !21, i64 0}
!24 = !{!"_ZTSSt6locale", !25, i64 0}
!25 = !{!"p1 _ZTSNSt6locale5_ImplE", !21, i64 0}
!26 = !{!27, !31, i64 240}
!27 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !16, i64 0, !28, i64 216, !7, i64 224, !29, i64 225, !30, i64 232, !31, i64 240, !32, i64 248, !33, i64 256}
!28 = !{!"p1 _ZTSSo", !21, i64 0}
!29 = !{!"bool", !7, i64 0}
!30 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !21, i64 0}
!31 = !{!"p1 _ZTSSt5ctypeIcE", !21, i64 0}
!32 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !21, i64 0}
!33 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !21, i64 0}
!34 = !{!35, !7, i64 56}
!35 = !{!"_ZTSSt5ctypeIcE", !36, i64 0, !37, i64 16, !29, i64 24, !38, i64 32, !38, i64 40, !39, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!36 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!37 = !{!"p1 _ZTS15__locale_struct", !21, i64 0}
!38 = !{!"p1 int", !21, i64 0}
!39 = !{!"p1 short", !21, i64 0}
!40 = distinct !{!40, !10, !11}
!41 = distinct !{!41, !10, !11}
!42 = distinct !{!42, !10, !11}
