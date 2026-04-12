; ModuleID = '<stdin>'
source_filename = "/tmp/tmpz1zrnb1e.cpp"
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
  %__c.addr.i50 = alloca i8, align 1
  %__c.addr.i37 = alloca i8, align 1
  %__c.addr.i24 = alloca i8, align 1
  %__c.addr.i = alloca i8, align 1
  %n = alloca i32, align 4
  %a = alloca [50 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #6
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %a) #6
  br label %for.cond

for.cond:                                         ; preds = %for.inc43, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc44, %for.inc43 ]
  %num.0 = phi i32 [ 0, %entry ], [ %num.1, %for.inc43 ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %i.0, %0
  br i1 %cmp, label %if.then6.i, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %a) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #6
  ret i32 0

if.then6.i:                                       ; preds = %for.cond
  %vtable7.i = load ptr, ptr @_ZSt3cin, align 8, !tbaa !9
  %vbase.offset.ptr8.i = getelementptr i8, ptr %vtable7.i, i64 -24
  %vbase.offset9.i = load i64, ptr %vbase.offset.ptr8.i, align 8
  %gep72 = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt3cin, i64 16), i64 %vbase.offset9.i
  %1 = load i64, ptr %gep72, align 8, !tbaa !11
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull %a, i64 noundef 50)
  %vtable12.i = load ptr, ptr @_ZSt3cin, align 8, !tbaa !9
  %vbase.offset.ptr13.i = getelementptr i8, ptr %vtable12.i, i64 -24
  %vbase.offset14.i = load i64, ptr %vbase.offset.ptr13.i, align 8
  %add.ptr15.i = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset14.i
  %_M_streambuf_state.i.i.i = getelementptr inbounds nuw i8, ptr %add.ptr15.i, i64 32
  %2 = load i32, ptr %_M_streambuf_state.i.i.i, align 8, !tbaa !22
  %cmp.i.i = icmp eq i32 %2, 0
  %3 = add i64 %1, -51
  %or.cond.i = icmp ult i64 %3, -50
  %or.cond = select i1 %cmp.i.i, i1 %or.cond.i, i1 false
  br i1 %or.cond, label %if.then19.i, label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit

if.then19.i:                                      ; preds = %if.then6.i
  %_M_streambuf.i.i = getelementptr inbounds nuw i8, ptr %add.ptr15.i, i64 232
  %4 = load ptr, ptr %_M_streambuf.i.i, align 8, !tbaa !23
  %call25.i = call noundef i32 @_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv(ptr noundef nonnull align 8 dereferenceable(64) %4)
  %cmp.i18.i = icmp eq i32 %call25.i, -1
  br i1 %cmp.i18.i, label %if.then28.i, label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit, !prof !31

if.then28.i:                                      ; preds = %if.then19.i
  %vtable29.i = load ptr, ptr @_ZSt3cin, align 8, !tbaa !9
  %vbase.offset.ptr30.i = getelementptr i8, ptr %vtable29.i, i64 -24
  %vbase.offset31.i = load i64, ptr %vbase.offset.ptr30.i, align 8
  %add.ptr32.i = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset31.i
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr32.i, i32 noundef 2)
  br label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit

_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit: ; preds = %if.then6.i, %if.then19.i, %if.then28.i
  %call4 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %a) #7
  %conv = trunc i64 %call4 to i32
  %cmp5 = icmp eq i32 %num.0, 0
  br i1 %cmp5, label %for.cond6.preheader, label %if.else

for.cond6.preheader:                              ; preds = %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit
  %smax85 = call i32 @llvm.smax.i32(i32 %conv, i32 0)
  %wide.trip.count86 = zext nneg i32 %smax85 to i64
  br label %for.cond6

for.cond6:                                        ; preds = %for.cond6.preheader, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
  %indvars.iv82 = phi i64 [ 0, %for.cond6.preheader ], [ %indvars.iv.next83, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit ]
  %exitcond87.not = icmp eq i64 %indvars.iv82, %wide.trip.count86
  br i1 %exitcond87.not, label %for.inc43, label %for.body9

for.body9:                                        ; preds = %for.cond6
  %add.ptr = getelementptr inbounds nuw i8, ptr %a, i64 %indvars.iv82
  %5 = load i8, ptr %add.ptr, align 1, !tbaa !32
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__c.addr.i)
  store i8 %5, ptr %__c.addr.i, align 1, !tbaa !32
  %vtable.i19 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !9
  %vbase.offset.ptr.i20 = getelementptr i8, ptr %vtable.i19, i64 -24
  %vbase.offset.i21 = load i64, ptr %vbase.offset.ptr.i20, align 8
  %gep71 = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 16), i64 %vbase.offset.i21
  %6 = load i64, ptr %gep71, align 8, !tbaa !11
  %cmp.not.i = icmp eq i64 %6, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %for.body9
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %__c.addr.i, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

if.end.i:                                         ; preds = %for.body9
  %call2.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %5)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %if.then.i, %if.end.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__c.addr.i)
  %indvars.iv.next83 = add nuw nsw i64 %indvars.iv82, 1
  br label %for.cond6, !llvm.loop !33

if.else:                                          ; preds = %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit
  %add11 = add nsw i32 %num.0, %conv
  %cmp13 = icmp slt i32 %add11, 80
  br i1 %cmp13, label %if.then14, label %if.else29

if.then14:                                        ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__c.addr.i24)
  store i8 32, ptr %__c.addr.i24, align 1, !tbaa !32
  %vtable.i25 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !9
  %vbase.offset.ptr.i26 = getelementptr i8, ptr %vtable.i25, i64 -24
  %vbase.offset.i27 = load i64, ptr %vbase.offset.ptr.i26, align 8
  %gep73 = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 16), i64 %vbase.offset.i27
  %7 = load i64, ptr %gep73, align 8, !tbaa !11
  %cmp.not.i30 = icmp eq i64 %7, 0
  br i1 %cmp.not.i30, label %if.end.i34, label %if.then.i31

if.then.i31:                                      ; preds = %if.then14
  %call1.i32 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %__c.addr.i24, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit36

if.end.i34:                                       ; preds = %if.then14
  %call2.i35 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext 32)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit36

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit36: ; preds = %if.then.i31, %if.end.i34
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__c.addr.i24)
  %smax79 = call i32 @llvm.smax.i32(i32 %conv, i32 0)
  %wide.trip.count80 = zext nneg i32 %smax79 to i64
  br label %for.cond17

for.cond17:                                       ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit49, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit36
  %indvars.iv76 = phi i64 [ %indvars.iv.next77, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit49 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit36 ]
  %exitcond81.not = icmp eq i64 %indvars.iv76, %wide.trip.count80
  br i1 %exitcond81.not, label %for.cond.cleanup19, label %for.body20

for.cond.cleanup19:                               ; preds = %for.cond17
  %add27 = add i32 %num.0, 1
  %add28 = add i32 %add27, %conv
  br label %for.inc43

for.body20:                                       ; preds = %for.cond17
  %add.ptr22 = getelementptr inbounds nuw i8, ptr %a, i64 %indvars.iv76
  %8 = load i8, ptr %add.ptr22, align 1, !tbaa !32
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__c.addr.i37)
  store i8 %8, ptr %__c.addr.i37, align 1, !tbaa !32
  %vtable.i38 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !9
  %vbase.offset.ptr.i39 = getelementptr i8, ptr %vtable.i38, i64 -24
  %vbase.offset.i40 = load i64, ptr %vbase.offset.ptr.i39, align 8
  %gep70 = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 16), i64 %vbase.offset.i40
  %9 = load i64, ptr %gep70, align 8, !tbaa !11
  %cmp.not.i43 = icmp eq i64 %9, 0
  br i1 %cmp.not.i43, label %if.end.i47, label %if.then.i44

if.then.i44:                                      ; preds = %for.body20
  %call1.i45 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %__c.addr.i37, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit49

if.end.i47:                                       ; preds = %for.body20
  %call2.i48 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %8)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit49

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit49: ; preds = %if.then.i44, %if.end.i47
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__c.addr.i37)
  %indvars.iv.next77 = add nuw nsw i64 %indvars.iv76, 1
  br label %for.cond17, !llvm.loop !36

if.else29:                                        ; preds = %if.else
  %vtable.i63 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !9
  %vbase.offset.ptr.i64 = getelementptr i8, ptr %vtable.i63, i64 -24
  %vbase.offset.i65 = load i64, ptr %vbase.offset.ptr.i64, align 8
  %add.ptr.i66 = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %vbase.offset.i65
  %call.i67 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i66, i8 noundef signext 10)
  %call1.i68 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %call.i67)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i68)
  %smax = call i32 @llvm.smax.i32(i32 %conv, i32 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond32

for.cond32:                                       ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit62, %if.else29
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit62 ], [ 0, %if.else29 ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.inc43, label %for.body35

for.body35:                                       ; preds = %for.cond32
  %add.ptr37 = getelementptr inbounds nuw i8, ptr %a, i64 %indvars.iv
  %10 = load i8, ptr %add.ptr37, align 1, !tbaa !32
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__c.addr.i50)
  store i8 %10, ptr %__c.addr.i50, align 1, !tbaa !32
  %vtable.i51 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !9
  %vbase.offset.ptr.i52 = getelementptr i8, ptr %vtable.i51, i64 -24
  %vbase.offset.i53 = load i64, ptr %vbase.offset.ptr.i52, align 8
  %gep = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 16), i64 %vbase.offset.i53
  %11 = load i64, ptr %gep, align 8, !tbaa !11
  %cmp.not.i56 = icmp eq i64 %11, 0
  br i1 %cmp.not.i56, label %if.end.i60, label %if.then.i57

if.then.i57:                                      ; preds = %for.body35
  %call1.i58 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %__c.addr.i50, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit62

if.end.i60:                                       ; preds = %for.body35
  %call2.i61 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %10)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit62

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit62: ; preds = %if.then.i57, %if.end.i60
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__c.addr.i50)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond32, !llvm.loop !37

for.inc43:                                        ; preds = %for.cond32, %for.cond6, %for.cond.cleanup19
  %num.1 = phi i32 [ %add28, %for.cond.cleanup19 ], [ %conv, %for.cond6 ], [ %conv, %for.cond32 ]
  %inc44 = add nuw nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !38
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #4 align 2

declare void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef i32 @_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #4 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) local_unnamed_addr #4 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }
attributes #7 = { nounwind willreturn memory(read) }

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
!11 = !{!12, !13, i64 16}
!12 = !{!"_ZTSSt8ios_base", !13, i64 8, !13, i64 16, !14, i64 24, !15, i64 28, !15, i64 32, !16, i64 40, !18, i64 48, !7, i64 64, !6, i64 192, !19, i64 200, !20, i64 208}
!13 = !{!"long", !7, i64 0}
!14 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!15 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!16 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !17, i64 0}
!17 = !{!"any pointer", !7, i64 0}
!18 = !{!"_ZTSNSt8ios_base6_WordsE", !17, i64 0, !13, i64 8}
!19 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !17, i64 0}
!20 = !{!"_ZTSSt6locale", !21, i64 0}
!21 = !{!"p1 _ZTSNSt6locale5_ImplE", !17, i64 0}
!22 = !{!12, !15, i64 32}
!23 = !{!24, !27, i64 232}
!24 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !12, i64 0, !25, i64 216, !7, i64 224, !26, i64 225, !27, i64 232, !28, i64 240, !29, i64 248, !30, i64 256}
!25 = !{!"p1 _ZTSSo", !17, i64 0}
!26 = !{!"bool", !7, i64 0}
!27 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !17, i64 0}
!28 = !{!"p1 _ZTSSt5ctypeIcE", !17, i64 0}
!29 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !17, i64 0}
!30 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !17, i64 0}
!31 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!32 = !{!7, !7, i64 0}
!33 = distinct !{!33, !34, !35}
!34 = !{!"llvm.loop.mustprogress"}
!35 = !{!"llvm.loop.unroll.disable"}
!36 = distinct !{!36, !34, !35}
!37 = distinct !{!37, !34, !35}
!38 = distinct !{!38, !34, !35}
