; ModuleID = '<stdin>'
source_filename = "/tmp/tmp8_19d3ny.cpp"
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
  %__c.addr.i6 = alloca i8, align 1
  %__c.addr.i = alloca i8, align 1
  %n = alloca i32, align 4
  %word = alloca [1000 x [41 x i8]], align 16
  %newword = alloca [1000 x [81 x i8]], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #11
  call void @llvm.lifetime.start.p0(i64 noundef 41000, ptr noundef nonnull %word) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull writeonly align 16 dereferenceable(41000) %word, i8 noundef 0, i64 noundef 41000, i1 noundef false) #12
  call void @llvm.lifetime.start.p0(i64 noundef 81000, ptr noundef nonnull align 16 %newword) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull writeonly align 16 dereferenceable(81000) %newword, i8 noundef 0, i64 noundef 81000, i1 noundef false) #12
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv, %1
  br i1 %cmp, label %for.body, label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %for.cond
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 noundef 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond2

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [1000 x [41 x i8]], ptr %word, i64 0, i64 %indvars.iv
  %2 = call i64 @llvm.objectsize.i64.p0(ptr nonnull %arrayidx, i1 noundef false, i1 noundef true, i1 noundef false)
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
  %gep77 = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt3cin, i64 16), i64 %vbase.offset9.i
  %3 = load i64, ptr %gep77, align 8, !tbaa !12
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull %arrayidx, i64 noundef %2)
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
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull %arrayidx, i64 noundef 9223372036854775807)
  br label %for.inc

for.inc:                                          ; preds = %if.else34.i, %if.then28.i, %if.then19.i, %land.lhs.true.i, %if.then6.i, %do.end.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !32

for.cond2:                                        ; preds = %for.cond2.preheader, %for.inc74
  %indvars.iv81 = phi i64 [ 0, %for.cond2.preheader ], [ %indvars.iv.next82, %for.inc74 ]
  %j.0 = phi i32 [ 0, %for.cond2.preheader ], [ %j.1, %for.inc74 ]
  %k.0 = phi i32 [ 0, %for.cond2.preheader ], [ %k.1, %for.inc74 ]
  %exitcond.not = icmp eq i64 %indvars.iv81, %wide.trip.count
  %idxprom77 = sext i32 %k.0 to i64
  br i1 %exitcond.not, label %for.end76, label %for.body4

for.body4:                                        ; preds = %for.cond2
  %arrayidx6 = getelementptr inbounds nuw [1000 x [41 x i8]], ptr %word, i64 0, i64 %indvars.iv81
  %call8 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %arrayidx6) #13
  %conv = trunc i64 %call8 to i32
  %add = add nsw i32 %conv, %j.0
  %cmp9 = icmp sgt i32 %add, 80
  br i1 %cmp9, label %if.then, label %if.else

if.then:                                          ; preds = %for.body4
  %sub = add nsw i32 %j.0, -1
  %idxprom12 = sext i32 %sub to i64
  %arrayidx13 = getelementptr inbounds [1000 x [81 x i8]], ptr %newword, i64 0, i64 %idxprom77, i64 %idxprom12
  store i8 0, ptr %arrayidx13, align 1, !tbaa !35
  %idxprom16 = sext i32 %j.0 to i64
  %arrayidx17 = getelementptr inbounds [1000 x [81 x i8]], ptr %newword, i64 0, i64 %idxprom77, i64 %idxprom16
  store i8 0, ptr %arrayidx17, align 1, !tbaa !35
  %inc18 = add nsw i32 %k.0, 1
  %idxprom19 = sext i32 %inc18 to i64
  %arrayidx20 = getelementptr inbounds [1000 x [81 x i8]], ptr %newword, i64 0, i64 %idxprom19
  %call25 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %arrayidx20, ptr noundef nonnull dereferenceable(1) %arrayidx6) #14
  %sext = shl i64 %call8, 32
  %idxprom28 = ashr exact i64 %sext, 32
  %arrayidx29 = getelementptr inbounds [1000 x [81 x i8]], ptr %newword, i64 0, i64 %idxprom19, i64 %idxprom28
  store i8 32, ptr %arrayidx29, align 1, !tbaa !35
  %inc30 = add nsw i32 %conv, 1
  br label %for.inc74

if.else:                                          ; preds = %for.body4
  %cmp32 = icmp eq i32 %add, 80
  br i1 %cmp32, label %if.then33, label %if.else42

if.then33:                                        ; preds = %if.else
  %arrayidx35 = getelementptr inbounds [1000 x [81 x i8]], ptr %newword, i64 0, i64 %idxprom77
  %call40 = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %arrayidx35, ptr noundef nonnull dereferenceable(1) %arrayidx6) #14
  %inc41 = add nsw i32 %k.0, 1
  br label %for.inc74

if.else42:                                        ; preds = %if.else
  %cmp43 = icmp eq i32 %j.0, 0
  %arrayidx46 = getelementptr inbounds [1000 x [81 x i8]], ptr %newword, i64 0, i64 %idxprom77
  %idxprom55 = sext i32 %add to i64
  %arrayidx56 = getelementptr inbounds [1000 x [81 x i8]], ptr %newword, i64 0, i64 %idxprom77, i64 %idxprom55
  %inc57 = add nsw i32 %add, 1
  br i1 %cmp43, label %if.then44, label %if.else58

if.then44:                                        ; preds = %if.else42
  %call51 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %arrayidx46, ptr noundef nonnull dereferenceable(1) %arrayidx6) #14
  store i8 32, ptr %arrayidx56, align 1, !tbaa !35
  br label %for.inc74

if.else58:                                        ; preds = %if.else42
  %call65 = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %arrayidx46, ptr noundef nonnull dereferenceable(1) %arrayidx6) #14
  store i8 32, ptr %arrayidx56, align 1, !tbaa !35
  br label %for.inc74

for.inc74:                                        ; preds = %if.then, %if.then44, %if.else58, %if.then33
  %j.1 = phi i32 [ %inc30, %if.then ], [ 0, %if.then33 ], [ %inc57, %if.then44 ], [ %inc57, %if.else58 ]
  %k.1 = phi i32 [ %inc18, %if.then ], [ %inc41, %if.then33 ], [ %k.0, %if.then44 ], [ %k.0, %if.else58 ]
  %indvars.iv.next82 = add nuw nsw i64 %indvars.iv81, 1
  br label %for.cond2, !llvm.loop !36

for.end76:                                        ; preds = %for.cond2
  %sub79 = add nsw i32 %j.0, -1
  %idxprom80 = sext i32 %sub79 to i64
  %arrayidx81 = getelementptr inbounds [1000 x [81 x i8]], ptr %newword, i64 0, i64 %idxprom77, i64 %idxprom80
  store i8 0, ptr %arrayidx81, align 1, !tbaa !35
  %idxprom84 = sext i32 %j.0 to i64
  %arrayidx85 = getelementptr inbounds [1000 x [81 x i8]], ptr %newword, i64 0, i64 %idxprom77, i64 %idxprom84
  store i8 0, ptr %arrayidx85, align 1, !tbaa !35
  %smax95 = call i32 @llvm.smax.i32(i32 noundef %k.0, i32 noundef -1)
  %6 = add i32 %smax95, 1
  %wide.trip.count96 = zext i32 %6 to i64
  br label %for.cond86

for.cond86:                                       ; preds = %for.inc116, %for.end76
  %indvars.iv91 = phi i64 [ %indvars.iv.next92, %for.inc116 ], [ 0, %for.end76 ]
  %exitcond97 = icmp eq i64 %indvars.iv91, %wide.trip.count96
  br i1 %exitcond97, label %for.end118, label %for.body88

for.body88:                                       ; preds = %for.cond86
  %arrayidx90 = getelementptr inbounds nuw [1000 x [81 x i8]], ptr %newword, i64 0, i64 %indvars.iv91
  %call92 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %arrayidx90) #13
  %conv93 = trunc i64 %call92 to i32
  %sub97 = add i64 %call92, 4294967295
  %7 = and i64 %sub97, 4294967295
  %smax88 = call i32 @llvm.smax.i32(i32 %conv93, i32 noundef 0)
  %wide.trip.count89 = zext nneg i32 %smax88 to i64
  %arrayidx103 = getelementptr inbounds nuw [1000 x [81 x i8]], ptr %newword, i64 0, i64 %indvars.iv91, i64 %7
  br label %for.cond94

for.cond94:                                       ; preds = %for.inc113, %for.body88
  %indvars.iv85 = phi i64 [ %indvars.iv.next86, %for.inc113 ], [ 0, %for.body88 ]
  %exitcond90.not = icmp eq i64 %indvars.iv85, %wide.trip.count89
  br i1 %exitcond90.not, label %for.inc116, label %for.body96

for.body96:                                       ; preds = %for.cond94
  %cmp98 = icmp eq i64 %indvars.iv85, %7
  br i1 %cmp98, label %if.then99, label %if.else106

if.then99:                                        ; preds = %for.body96
  %8 = load i8, ptr %arrayidx103, align 1, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 noundef 1, ptr noundef nonnull %__c.addr.i)
  store i8 %8, ptr %__c.addr.i, align 1, !tbaa !35
  %vtable.i1 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !9
  %vbase.offset.ptr.i2 = getelementptr i8, ptr %vtable.i1, i64 -24
  %vbase.offset.i3 = load i64, ptr %vbase.offset.ptr.i2, align 8, !invariant.load !11
  %gep79 = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 16), i64 %vbase.offset.i3
  %9 = load i64, ptr %gep79, align 8, !tbaa !12
  %cmp.not.i = icmp eq i64 %9, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.then99
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %__c.addr.i, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

if.end.i:                                         ; preds = %if.then99
  %call2.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %8)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %if.then.i, %if.end.i
  %retval.0.i = phi ptr [ %call1.i, %if.then.i ], [ @_ZSt4cout, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 noundef 1, ptr noundef nonnull %__c.addr.i)
  %vtable.i19 = load ptr, ptr %retval.0.i, align 8, !tbaa !9
  %vbase.offset.ptr.i20 = getelementptr i8, ptr %vtable.i19, i64 -24
  %vbase.offset.i21 = load i64, ptr %vbase.offset.ptr.i20, align 8, !invariant.load !11
  %add.ptr.i22 = getelementptr inbounds i8, ptr %retval.0.i, i64 %vbase.offset.i21
  %call.i23 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i22, i8 noundef signext 10)
  %call1.i24 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %retval.0.i, i8 noundef signext %call.i23)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i24)
  br label %for.inc113

if.else106:                                       ; preds = %for.body96
  %arrayidx110 = getelementptr inbounds nuw [1000 x [81 x i8]], ptr %newword, i64 0, i64 %indvars.iv91, i64 %indvars.iv85
  %10 = load i8, ptr %arrayidx110, align 1, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 noundef 1, ptr noundef nonnull %__c.addr.i6)
  store i8 %10, ptr %__c.addr.i6, align 1, !tbaa !35
  %vtable.i7 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !9
  %vbase.offset.ptr.i8 = getelementptr i8, ptr %vtable.i7, i64 -24
  %vbase.offset.i9 = load i64, ptr %vbase.offset.ptr.i8, align 8, !invariant.load !11
  %gep78 = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 16), i64 %vbase.offset.i9
  %11 = load i64, ptr %gep78, align 8, !tbaa !12
  %cmp.not.i12 = icmp eq i64 %11, 0
  br i1 %cmp.not.i12, label %if.end.i16, label %if.then.i13

if.then.i13:                                      ; preds = %if.else106
  %call1.i14 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %__c.addr.i6, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit18

if.end.i16:                                       ; preds = %if.else106
  %call2.i17 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %10)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit18

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit18: ; preds = %if.then.i13, %if.end.i16
  call void @llvm.lifetime.end.p0(i64 noundef 1, ptr noundef nonnull %__c.addr.i6)
  br label %for.inc113

for.inc113:                                       ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit18
  %indvars.iv.next86 = add nuw nsw i64 %indvars.iv85, 1
  br label %for.cond94, !llvm.loop !37

for.inc116:                                       ; preds = %for.cond94
  %indvars.iv.next92 = add nuw nsw i64 %indvars.iv91, 1
  br label %for.cond86, !llvm.loop !38

for.end118:                                       ; preds = %for.cond86
  call void @llvm.lifetime.end.p0(i64 noundef 81000, ptr noundef nonnull %newword) #14
  call void @llvm.lifetime.end.p0(i64 noundef 41000, ptr noundef nonnull %word) #14
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #14
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none)) #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcat(ptr noalias noundef returned, ptr noalias noundef readonly captures(none)) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #6

; Function Attrs: mustprogress uwtable
declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) #7 align 2

declare void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef) #3

; Function Attrs: mustprogress uwtable
declare noundef i32 @_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv(ptr noundef nonnull align 8 dereferenceable(64)) #7 align 2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #8

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) #3

; Function Attrs: mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) #7 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %this, i8 noundef signext %__c) #7 comdat align 2 {
entry:
  %_M_widen_ok = getelementptr inbounds nuw i8, ptr %this, i64 56
  %0 = load i8, ptr %_M_widen_ok, align 8, !tbaa !39
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %_M_widen = getelementptr inbounds nuw i8, ptr %this, i64 57
  %idxprom = zext i8 %__c to i64
  %arrayidx = getelementptr inbounds nuw [256 x i8], ptr %_M_widen, i64 0, i64 %idxprom
  %1 = load i8, ptr %arrayidx, align 1, !tbaa !35
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
declare void @_ZSt16__throw_bad_castv() #9

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #10

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nofree nounwind willreturn }
attributes #12 = { nofree willreturn }
attributes #13 = { nounwind willreturn memory(read) }
attributes #14 = { nounwind }

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
!35 = !{!7, !7, i64 0}
!36 = distinct !{!36, !33, !34}
!37 = distinct !{!37, !33, !34}
!38 = distinct !{!38, !33, !34}
!39 = !{!40, !7, i64 56}
!40 = !{!"_ZTSSt5ctypeIcE", !41, i64 0, !42, i64 16, !27, i64 24, !43, i64 32, !43, i64 40, !44, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!41 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!42 = !{!"p1 _ZTS15__locale_struct", !18, i64 0}
!43 = !{!"p1 int", !18, i64 0}
!44 = !{!"p1 short", !18, i64 0}
