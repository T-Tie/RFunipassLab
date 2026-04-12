; ModuleID = '<stdin>'
source_filename = "/tmp/tmpp24jkee8.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }

@freq = dso_local local_unnamed_addr global [27 x [27 x [27 x [27 x i32]]]] zeroinitializer, align 16
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [3 x i8] c"NO\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %__c.addr.i108 = alloca i8, align 1
  %__c.addr.i95 = alloca i8, align 1
  %__c.addr.i82 = alloca i8, align 1
  %__c.addr.i69 = alloca i8, align 1
  %__c.addr.i51 = alloca i8, align 1
  %__c.addr.i38 = alloca i8, align 1
  %__c.addr.i25 = alloca i8, align 1
  %__c.addr.i7 = alloca i8, align 1
  %__c.addr.i = alloca i8, align 1
  %n = alloca i32, align 4
  %str = alloca [505 x i8], align 16
  %fre = alloca [27 x [27 x i32]], align 16
  %fre107 = alloca [27 x [27 x [27 x i32]]], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #7
  call void @llvm.lifetime.start.p0(i64 noundef 505, ptr noundef nonnull align 16 dereferenceable(505) %str) #7
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %vtable7.i = load ptr, ptr %call, align 8, !tbaa !5, !invariant.load !8
  %vbase.offset.ptr8.i = getelementptr i8, ptr %vtable7.i, i64 -24
  %vbase.offset9.i = load i64, ptr %vbase.offset.ptr8.i, align 8, !invariant.load !8
  %add.ptr10.i = getelementptr inbounds i8, ptr %call, i64 %vbase.offset9.i
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) %call, ptr noundef nonnull align 16 dereferenceable(505) %str, i64 noundef 505)
  %_M_streambuf_state.i.i.i = getelementptr inbounds nuw i8, ptr %add.ptr10.i, i64 32
  %0 = load i32, ptr %_M_streambuf_state.i.i.i, align 8, !tbaa !9, !invariant.load !8
  %cmp.i.i = icmp eq i32 %0, 0
  br i1 %cmp.i.i, label %land.lhs.true.i, label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit

land.lhs.true.i:                                  ; preds = %entry
  %_M_width.i1.i = getelementptr inbounds nuw i8, ptr %add.ptr10.i, i64 16
  %1 = load i64, ptr %_M_width.i1.i, align 8, !tbaa !22, !invariant.load !8
  %2 = add i64 %1, -506
  %or.cond.i = icmp ult i64 %2, -505
  br i1 %or.cond.i, label %if.then19.i, label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit

if.then19.i:                                      ; preds = %land.lhs.true.i
  %_M_streambuf.i.i = getelementptr inbounds nuw i8, ptr %add.ptr10.i, i64 232
  %3 = load ptr, ptr %_M_streambuf.i.i, align 8, !tbaa !23, !invariant.load !8
  %call25.i = call noundef i32 @_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv(ptr noundef nonnull align 8 dereferenceable(64) %3)
  %cmp.i2.i = icmp eq i32 %call25.i, -1
  %conv.i = zext i1 %cmp.i2.i to i64
  %expval.i = call i64 @llvm.expect.i64(i64 noundef %conv.i, i64 noundef 1)
  %tobool.not.i = icmp eq i64 %expval.i, 0
  br i1 %tobool.not.i, label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit, label %if.then28.i

if.then28.i:                                      ; preds = %if.then19.i
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr10.i, i32 noundef 2)
  br label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit

_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit: ; preds = %entry, %land.lhs.true.i, %if.then19.i, %if.then28.i
  %call3 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %str) #8
  %conv = trunc i64 %call3 to i32
  %4 = load i32, ptr %n, align 4, !tbaa !31
  switch i32 %4, label %for.cond263 [
    i32 2, label %if.then
    i32 3, label %if.then106
  ]

if.then:                                          ; preds = %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit
  call void @llvm.lifetime.start.p0(i64 noundef 2916, ptr noundef nonnull %fre) #9
  br label %for.cond

for.cond:                                         ; preds = %for.inc10, %if.then
  %indvars.iv327 = phi i64 [ %indvars.iv.next328, %for.inc10 ], [ 1, %if.then ]
  %exitcond330.not = icmp eq i64 %indvars.iv327, 27
  br i1 %exitcond330.not, label %for.cond13.preheader, label %for.cond5

for.cond13.preheader:                             ; preds = %for.cond
  %5 = call i32 @llvm.smax.i32(i32 %conv, i32 noundef 1)
  %6 = add nsw i32 %5, -1
  %wide.trip.count335 = zext nneg i32 %6 to i64
  br label %for.cond13

for.cond5:                                        ; preds = %for.cond, %for.inc
  %indvars.iv323 = phi i64 [ %indvars.iv.next324, %for.inc ], [ 1, %for.cond ]
  %exitcond326.not = icmp eq i64 %indvars.iv323, 27
  br i1 %exitcond326.not, label %for.inc10, label %for.inc

for.inc:                                          ; preds = %for.cond5
  %arrayidx9 = getelementptr inbounds nuw [27 x [27 x i32]], ptr %fre, i64 0, i64 %indvars.iv327, i64 %indvars.iv323
  store i32 0, ptr %arrayidx9, align 4, !tbaa !31
  %indvars.iv.next324 = add nuw nsw i64 %indvars.iv323, 1
  br label %for.cond5, !llvm.loop !32

for.inc10:                                        ; preds = %for.cond5
  %indvars.iv.next328 = add nuw nsw i64 %indvars.iv327, 1
  br label %for.cond, !llvm.loop !35

for.cond13:                                       ; preds = %for.cond13.preheader, %for.inc29
  %7 = phi i8 [ undef, %for.cond13.preheader ], [ %8, %for.inc29 ]
  %indvars.iv331 = phi i64 [ 0, %for.cond13.preheader ], [ %indvars.iv.next332, %for.inc29 ]
  %exitcond336 = icmp eq i64 %indvars.iv331, %wide.trip.count335
  br i1 %exitcond336, label %for.cond32, label %for.inc29

for.inc29:                                        ; preds = %for.cond13
  %conv18 = sext i8 %7 to i64
  %sub19 = add nsw i64 %conv18, -96
  %indvars.iv.next332 = add nuw nsw i64 %indvars.iv331, 1
  %arrayidx23 = getelementptr inbounds nuw [505 x i8], ptr %str, i64 0, i64 %indvars.iv.next332
  %8 = load i8, ptr %arrayidx23, align 1, !tbaa !36, !invariant.load !8
  %conv24 = sext i8 %8 to i64
  %sub25 = add nsw i64 %conv24, -96
  %arrayidx27 = getelementptr inbounds [27 x [27 x i32]], ptr %fre, i64 0, i64 %sub19, i64 %sub25
  %9 = load i32, ptr %arrayidx27, align 4, !tbaa !31, !invariant.load !8
  %inc28 = add nsw i32 %9, 1
  store i32 %inc28, ptr %arrayidx27, align 4, !tbaa !31
  br label %for.cond13, !llvm.loop !37

for.cond32:                                       ; preds = %for.cond13, %for.inc51
  %indvars.iv341 = phi i64 [ %indvars.iv.next342, %for.inc51 ], [ 1, %for.cond13 ]
  %max.0 = phi i32 [ %max.1, %for.inc51 ], [ 0, %for.cond13 ]
  %exitcond344.not = icmp eq i64 %indvars.iv341, 27
  br i1 %exitcond344.not, label %for.end53, label %for.cond35

for.cond35:                                       ; preds = %for.cond32, %for.body37
  %indvars.iv337 = phi i64 [ %indvars.iv.next338, %for.body37 ], [ 1, %for.cond32 ]
  %max.1 = phi i32 [ %spec.select, %for.body37 ], [ %max.0, %for.cond32 ]
  %exitcond340.not = icmp eq i64 %indvars.iv337, 27
  br i1 %exitcond340.not, label %for.inc51, label %for.body37

for.body37:                                       ; preds = %for.cond35
  %arrayidx41 = getelementptr inbounds nuw [27 x [27 x i32]], ptr %fre, i64 0, i64 %indvars.iv341, i64 %indvars.iv337
  %10 = load i32, ptr %arrayidx41, align 4, !tbaa !31, !invariant.load !8
  %spec.select = call i32 @llvm.smax.i32(i32 %10, i32 %max.1)
  %indvars.iv.next338 = add nuw nsw i64 %indvars.iv337, 1
  br label %for.cond35, !llvm.loop !38

for.inc51:                                        ; preds = %for.cond35
  %indvars.iv.next342 = add nuw nsw i64 %indvars.iv341, 1
  br label %for.cond32, !llvm.loop !39

for.end53:                                        ; preds = %for.cond32
  %cmp54 = icmp eq i32 %max.0, 1
  br i1 %cmp54, label %if.then55, label %if.else

if.then55:                                        ; preds = %for.end53
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 2)
  br label %if.end59

if.else:                                          ; preds = %for.end53
  %call57 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(272) @_ZSt4cout, i32 noundef %max.0)
  %vtable.i122 = load ptr, ptr %call57, align 8, !tbaa !5, !invariant.load !8
  %vbase.offset.ptr.i123 = getelementptr i8, ptr %vtable.i122, i64 -24
  %vbase.offset.i124 = load i64, ptr %vbase.offset.ptr.i123, align 8, !invariant.load !8
  %add.ptr.i125 = getelementptr inbounds i8, ptr %call57, i64 %vbase.offset.i124
  %call.i126 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i125, i8 noundef signext 10)
  %call1.i127 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call57, i8 noundef signext %call.i126)
  %call.i.i128 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i127)
  br label %if.end59

if.end59:                                         ; preds = %if.else, %if.then55
  %max.3 = phi i32 [ -1, %if.then55 ], [ %max.0, %if.else ]
  %vtable.i1 = load ptr, ptr @_ZSt4cout, align 8
  %vbase.offset.ptr.i2 = getelementptr i8, ptr %vtable.i1, i64 -24
  br label %for.cond60

for.cond60:                                       ; preds = %for.inc101, %if.end59
  %indvars.iv345 = phi i64 [ %indvars.iv.next346, %for.inc101 ], [ 0, %if.end59 ]
  %exitcond349 = icmp eq i64 %indvars.iv345, %wide.trip.count335
  br i1 %exitcond349, label %for.end103, label %for.body63

for.body63:                                       ; preds = %for.cond60
  %arrayidx65 = getelementptr inbounds nuw [505 x i8], ptr %str, i64 0, i64 %indvars.iv345
  %11 = load i8, ptr %arrayidx65, align 1, !tbaa !36
  %conv66 = sext i8 %11 to i64
  %sub67 = add nsw i64 %conv66, -96
  %indvars.iv.next346 = add nuw nsw i64 %indvars.iv345, 1
  %arrayidx72 = getelementptr inbounds nuw [505 x i8], ptr %str, i64 0, i64 %indvars.iv.next346
  %12 = load i8, ptr %arrayidx72, align 1, !tbaa !36
  %conv73 = sext i8 %12 to i64
  %sub74 = add nsw i64 %conv73, -96
  %arrayidx76 = getelementptr inbounds [27 x [27 x i32]], ptr %fre, i64 0, i64 %sub67, i64 %sub74
  %13 = load i32, ptr %arrayidx76, align 4, !tbaa !31, !invariant.load !8
  %cmp77 = icmp eq i32 %13, %max.3
  br i1 %cmp77, label %if.then78, label %for.inc101

if.then78:                                        ; preds = %for.body63
  call void @llvm.lifetime.start.p0(i64 noundef 1, ptr noundef nonnull %__c.addr.i)
  store i8 %11, ptr %__c.addr.i, align 1, !tbaa !36
  %vbase.offset.i3 = load i64, ptr %vbase.offset.ptr.i2, align 8, !invariant.load !8
  %gep288 = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 16), i64 %vbase.offset.i3
  %14 = load i64, ptr %gep288, align 8, !tbaa !22, !invariant.load !8
  %cmp.not.i = icmp eq i64 %14, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.then78
  %call1.i6 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %__c.addr.i, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

if.end.i:                                         ; preds = %if.then78
  %call2.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %11)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %if.then.i, %if.end.i
  %retval.0.i = phi ptr [ %call1.i6, %if.then.i ], [ @_ZSt4cout, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 noundef 1, ptr noundef nonnull %__c.addr.i)
  %15 = load i8, ptr %arrayidx72, align 1, !tbaa !36
  call void @llvm.lifetime.start.p0(i64 noundef 1, ptr noundef nonnull %__c.addr.i7)
  store i8 %15, ptr %__c.addr.i7, align 1, !tbaa !36
  %vtable.i8 = load ptr, ptr %retval.0.i, align 8, !tbaa !5, !invariant.load !8
  %vbase.offset.ptr.i9 = getelementptr i8, ptr %vtable.i8, i64 -24
  %vbase.offset.i10 = load i64, ptr %vbase.offset.ptr.i9, align 8, !invariant.load !8
  %add.ptr.i11 = getelementptr inbounds i8, ptr %retval.0.i, i64 %vbase.offset.i10
  %_M_width.i.i12 = getelementptr inbounds nuw i8, ptr %add.ptr.i11, i64 16
  %16 = load i64, ptr %_M_width.i.i12, align 8, !tbaa !22, !invariant.load !8
  %cmp.not.i13 = icmp eq i64 %16, 0
  br i1 %cmp.not.i13, label %if.end.i17, label %if.then.i14

if.then.i14:                                      ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
  %call1.i15 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %retval.0.i, ptr noundef nonnull %__c.addr.i7, i64 noundef 1)
  %vtable.i129.pre = load ptr, ptr %call1.i15, align 8, !tbaa !5, !invariant.load !8
  %vbase.offset.ptr.i130.phi.trans.insert = getelementptr i8, ptr %vtable.i129.pre, i64 -24
  %vbase.offset.i131.pre = load i64, ptr %vbase.offset.ptr.i130.phi.trans.insert, align 8, !invariant.load !8
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit19

if.end.i17:                                       ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
  %call2.i18 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %retval.0.i, i8 noundef signext %15)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit19

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit19: ; preds = %if.then.i14, %if.end.i17
  %vbase.offset.i131 = phi i64 [ %vbase.offset.i131.pre, %if.then.i14 ], [ %vbase.offset.i10, %if.end.i17 ]
  %retval.0.i16 = phi ptr [ %call1.i15, %if.then.i14 ], [ %retval.0.i, %if.end.i17 ]
  call void @llvm.lifetime.end.p0(i64 noundef 1, ptr noundef nonnull %__c.addr.i7)
  %add.ptr.i132 = getelementptr inbounds i8, ptr %retval.0.i16, i64 %vbase.offset.i131
  %call.i = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i132, i8 noundef signext 10)
  %call1.i133 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %retval.0.i16, i8 noundef signext %call.i)
  %call.i.i134 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i133)
  %17 = load i8, ptr %arrayidx65, align 1, !tbaa !36
  %conv89 = sext i8 %17 to i64
  %sub90 = add nsw i64 %conv89, -96
  %18 = load i8, ptr %arrayidx72, align 1, !tbaa !36
  %conv96 = sext i8 %18 to i64
  %sub97 = add nsw i64 %conv96, -96
  %arrayidx99 = getelementptr inbounds [27 x [27 x i32]], ptr %fre, i64 0, i64 %sub90, i64 %sub97
  store i32 0, ptr %arrayidx99, align 4, !tbaa !31
  br label %for.inc101

for.inc101:                                       ; preds = %for.body63, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit19
  br label %for.cond60, !llvm.loop !40

for.end103:                                       ; preds = %for.cond60
  call void @llvm.lifetime.end.p0(i64 noundef 2916, ptr noundef nonnull %fre) #9
  br label %if.end461

if.then106:                                       ; preds = %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit
  call void @llvm.lifetime.start.p0(i64 noundef 78732, ptr noundef nonnull %fre107) #9
  br label %for.cond108

for.cond108:                                      ; preds = %for.inc129, %if.then106
  %indvars.iv295 = phi i64 [ %indvars.iv.next296, %for.inc129 ], [ 1, %if.then106 ]
  %exitcond298.not = icmp eq i64 %indvars.iv295, 27
  br i1 %exitcond298.not, label %for.cond132.preheader, label %for.cond111

for.cond132.preheader:                            ; preds = %for.cond108
  %19 = call i32 @llvm.smax.i32(i32 %conv, i32 noundef 2)
  %20 = add nsw i32 %19, -2
  %wide.trip.count = zext nneg i32 %20 to i64
  br label %for.cond132

for.cond111:                                      ; preds = %for.cond108, %for.inc126
  %indvars.iv291 = phi i64 [ %indvars.iv.next292, %for.inc126 ], [ 1, %for.cond108 ]
  %exitcond294.not = icmp eq i64 %indvars.iv291, 27
  br i1 %exitcond294.not, label %for.inc129, label %for.cond114

for.cond114:                                      ; preds = %for.cond111, %for.inc123
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc123 ], [ 1, %for.cond111 ]
  %exitcond.not = icmp eq i64 %indvars.iv, 27
  br i1 %exitcond.not, label %for.inc126, label %for.inc123

for.inc123:                                       ; preds = %for.cond114
  %arrayidx122 = getelementptr inbounds nuw [27 x [27 x [27 x i32]]], ptr %fre107, i64 0, i64 %indvars.iv295, i64 %indvars.iv291, i64 %indvars.iv
  store i32 0, ptr %arrayidx122, align 4, !tbaa !31
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond114, !llvm.loop !41

for.inc126:                                       ; preds = %for.cond114
  %indvars.iv.next292 = add nuw nsw i64 %indvars.iv291, 1
  br label %for.cond111, !llvm.loop !42

for.inc129:                                       ; preds = %for.cond111
  %indvars.iv.next296 = add nuw nsw i64 %indvars.iv295, 1
  br label %for.cond108, !llvm.loop !43

for.cond132:                                      ; preds = %for.cond132.preheader, %for.inc157
  %21 = phi i8 [ undef, %for.cond132.preheader ], [ %22, %for.inc157 ]
  %indvars.iv299 = phi i64 [ 0, %for.cond132.preheader ], [ %indvars.iv.next300, %for.inc157 ]
  %exitcond303 = icmp eq i64 %indvars.iv299, %wide.trip.count
  br i1 %exitcond303, label %for.cond160, label %for.inc157

for.inc157:                                       ; preds = %for.cond132
  %conv138 = sext i8 %21 to i64
  %sub139 = add nsw i64 %conv138, -96
  %indvars.iv.next300 = add nuw nsw i64 %indvars.iv299, 1
  %arrayidx144 = getelementptr inbounds nuw [505 x i8], ptr %str, i64 0, i64 %indvars.iv.next300
  %22 = load i8, ptr %arrayidx144, align 1, !tbaa !36, !invariant.load !8
  %conv145 = sext i8 %22 to i64
  %sub146 = add nsw i64 %conv145, -96
  %23 = add nuw nsw i64 %indvars.iv299, 2
  %arrayidx151 = getelementptr inbounds nuw [505 x i8], ptr %str, i64 0, i64 %23
  %24 = load i8, ptr %arrayidx151, align 1, !tbaa !36, !invariant.load !8
  %conv152 = sext i8 %24 to i64
  %sub153 = add nsw i64 %conv152, -96
  %arrayidx155 = getelementptr inbounds [27 x [27 x [27 x i32]]], ptr %fre107, i64 0, i64 %sub139, i64 %sub146, i64 %sub153
  %25 = load i32, ptr %arrayidx155, align 4, !tbaa !31, !invariant.load !8
  %inc156 = add nsw i32 %25, 1
  store i32 %inc156, ptr %arrayidx155, align 4, !tbaa !31
  br label %for.cond132, !llvm.loop !44

for.cond160:                                      ; preds = %for.cond132, %for.inc190
  %indvars.iv312 = phi i64 [ %indvars.iv.next313, %for.inc190 ], [ 1, %for.cond132 ]
  %max.4 = phi i32 [ %max.5, %for.inc190 ], [ 0, %for.cond132 ]
  %exitcond315.not = icmp eq i64 %indvars.iv312, 27
  br i1 %exitcond315.not, label %for.end192, label %for.cond163

for.cond163:                                      ; preds = %for.cond160, %for.inc187
  %indvars.iv308 = phi i64 [ %indvars.iv.next309, %for.inc187 ], [ 1, %for.cond160 ]
  %max.5 = phi i32 [ %max.6, %for.inc187 ], [ %max.4, %for.cond160 ]
  %exitcond311.not = icmp eq i64 %indvars.iv308, 27
  br i1 %exitcond311.not, label %for.inc190, label %for.cond166

for.cond166:                                      ; preds = %for.cond163, %for.body168
  %indvars.iv304 = phi i64 [ %indvars.iv.next305, %for.body168 ], [ 1, %for.cond163 ]
  %max.6 = phi i32 [ %spec.select286, %for.body168 ], [ %max.5, %for.cond163 ]
  %exitcond307.not = icmp eq i64 %indvars.iv304, 27
  br i1 %exitcond307.not, label %for.inc187, label %for.body168

for.body168:                                      ; preds = %for.cond166
  %arrayidx174 = getelementptr inbounds nuw [27 x [27 x [27 x i32]]], ptr %fre107, i64 0, i64 %indvars.iv312, i64 %indvars.iv308, i64 %indvars.iv304
  %26 = load i32, ptr %arrayidx174, align 4, !tbaa !31, !invariant.load !8
  %spec.select286 = call i32 @llvm.smax.i32(i32 %26, i32 %max.6)
  %indvars.iv.next305 = add nuw nsw i64 %indvars.iv304, 1
  br label %for.cond166, !llvm.loop !45

for.inc187:                                       ; preds = %for.cond166
  %indvars.iv.next309 = add nuw nsw i64 %indvars.iv308, 1
  br label %for.cond163, !llvm.loop !46

for.inc190:                                       ; preds = %for.cond163
  %indvars.iv.next313 = add nuw nsw i64 %indvars.iv312, 1
  br label %for.cond160, !llvm.loop !47

for.end192:                                       ; preds = %for.cond160
  %cmp193 = icmp eq i32 %max.4, 1
  br i1 %cmp193, label %if.then194, label %if.else196

if.then194:                                       ; preds = %for.end192
  %call1.i22 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 2)
  br label %if.end199

if.else196:                                       ; preds = %for.end192
  %call197 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(272) @_ZSt4cout, i32 noundef %max.4)
  %vtable.i135 = load ptr, ptr %call197, align 8, !tbaa !5, !invariant.load !8
  %vbase.offset.ptr.i136 = getelementptr i8, ptr %vtable.i135, i64 -24
  %vbase.offset.i137 = load i64, ptr %vbase.offset.ptr.i136, align 8, !invariant.load !8
  %add.ptr.i138 = getelementptr inbounds i8, ptr %call197, i64 %vbase.offset.i137
  %call.i139 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i138, i8 noundef signext 10)
  %call1.i140 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call197, i8 noundef signext %call.i139)
  %call.i.i141 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i140)
  br label %if.end199

if.end199:                                        ; preds = %if.else196, %if.then194
  %max.8 = phi i32 [ -1, %if.then194 ], [ %max.4, %if.else196 ]
  %vtable.i26 = load ptr, ptr @_ZSt4cout, align 8
  %vbase.offset.ptr.i27 = getelementptr i8, ptr %vtable.i26, i64 -24
  %27 = call i32 @llvm.smax.i32(i32 %conv, i32 noundef 1)
  %28 = add nsw i32 %27, -1
  %wide.trip.count321 = zext nneg i32 %28 to i64
  br label %for.cond200

for.cond200:                                      ; preds = %for.inc259, %if.end199
  %indvars.iv316 = phi i64 [ %indvars.iv.next317, %for.inc259 ], [ 0, %if.end199 ]
  %exitcond322 = icmp eq i64 %indvars.iv316, %wide.trip.count321
  br i1 %exitcond322, label %for.end261, label %for.body203

for.body203:                                      ; preds = %for.cond200
  %arrayidx205 = getelementptr inbounds nuw [505 x i8], ptr %str, i64 0, i64 %indvars.iv316
  %29 = load i8, ptr %arrayidx205, align 1, !tbaa !36
  %conv206 = sext i8 %29 to i64
  %sub207 = add nsw i64 %conv206, -96
  %indvars.iv.next317 = add nuw nsw i64 %indvars.iv316, 1
  %arrayidx212 = getelementptr inbounds nuw [505 x i8], ptr %str, i64 0, i64 %indvars.iv.next317
  %30 = load i8, ptr %arrayidx212, align 1, !tbaa !36
  %conv213 = sext i8 %30 to i64
  %sub214 = add nsw i64 %conv213, -96
  %31 = add nuw nsw i64 %indvars.iv316, 2
  %arrayidx219 = getelementptr inbounds nuw [505 x i8], ptr %str, i64 0, i64 %31
  %32 = load i8, ptr %arrayidx219, align 1, !tbaa !36
  %conv220 = sext i8 %32 to i64
  %sub221 = add nsw i64 %conv220, -96
  %arrayidx223 = getelementptr inbounds [27 x [27 x [27 x i32]]], ptr %fre107, i64 0, i64 %sub207, i64 %sub214, i64 %sub221
  %33 = load i32, ptr %arrayidx223, align 4, !tbaa !31, !invariant.load !8
  %cmp224 = icmp eq i32 %33, %max.8
  br i1 %cmp224, label %if.then225, label %for.inc259

if.then225:                                       ; preds = %for.body203
  call void @llvm.lifetime.start.p0(i64 noundef 1, ptr noundef nonnull %__c.addr.i25)
  store i8 %29, ptr %__c.addr.i25, align 1, !tbaa !36
  %vbase.offset.i28 = load i64, ptr %vbase.offset.ptr.i27, align 8, !invariant.load !8
  %gep = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 16), i64 %vbase.offset.i28
  %34 = load i64, ptr %gep, align 8, !tbaa !22, !invariant.load !8
  %cmp.not.i31 = icmp eq i64 %34, 0
  br i1 %cmp.not.i31, label %if.end.i35, label %if.then.i32

if.then.i32:                                      ; preds = %if.then225
  %call1.i33 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %__c.addr.i25, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit37

if.end.i35:                                       ; preds = %if.then225
  %call2.i36 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %29)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit37

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit37: ; preds = %if.then.i32, %if.end.i35
  %retval.0.i34 = phi ptr [ %call1.i33, %if.then.i32 ], [ @_ZSt4cout, %if.end.i35 ]
  call void @llvm.lifetime.end.p0(i64 noundef 1, ptr noundef nonnull %__c.addr.i25)
  %35 = load i8, ptr %arrayidx212, align 1, !tbaa !36
  call void @llvm.lifetime.start.p0(i64 noundef 1, ptr noundef nonnull %__c.addr.i38)
  store i8 %35, ptr %__c.addr.i38, align 1, !tbaa !36
  %vtable.i39 = load ptr, ptr %retval.0.i34, align 8, !tbaa !5, !invariant.load !8
  %vbase.offset.ptr.i40 = getelementptr i8, ptr %vtable.i39, i64 -24
  %vbase.offset.i41 = load i64, ptr %vbase.offset.ptr.i40, align 8, !invariant.load !8
  %add.ptr.i42 = getelementptr inbounds i8, ptr %retval.0.i34, i64 %vbase.offset.i41
  %_M_width.i.i43 = getelementptr inbounds nuw i8, ptr %add.ptr.i42, i64 16
  %36 = load i64, ptr %_M_width.i.i43, align 8, !tbaa !22, !invariant.load !8
  %cmp.not.i44 = icmp eq i64 %36, 0
  br i1 %cmp.not.i44, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit50.thread, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit50

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit50.thread: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit37
  %call2.i49 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %retval.0.i34, i8 noundef signext %35)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__c.addr.i38)
  %37 = load i8, ptr %arrayidx219, align 1, !tbaa !36
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__c.addr.i51)
  store i8 %37, ptr %__c.addr.i51, align 1, !tbaa !36
  br label %if.end.i61

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit50: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit37
  %call1.i46 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %retval.0.i34, ptr noundef nonnull %__c.addr.i38, i64 noundef 1)
  %vtable.i52.pre = load ptr, ptr %call1.i46, align 8, !tbaa !5, !invariant.load !8
  %vbase.offset.ptr.i53.phi.trans.insert = getelementptr i8, ptr %vtable.i52.pre, i64 -24
  %vbase.offset.i54.pre = load i64, ptr %vbase.offset.ptr.i53.phi.trans.insert, align 8, !invariant.load !8
  %add.ptr.i55.phi.trans.insert = getelementptr inbounds i8, ptr %call1.i46, i64 %vbase.offset.i54.pre
  %_M_width.i.i56.phi.trans.insert = getelementptr inbounds nuw i8, ptr %add.ptr.i55.phi.trans.insert, i64 16
  %.pre = load i64, ptr %_M_width.i.i56.phi.trans.insert, align 8, !tbaa !22, !invariant.load !8
  %38 = icmp eq i64 %.pre, 0
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__c.addr.i38)
  %39 = load i8, ptr %arrayidx219, align 1, !tbaa !36
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__c.addr.i51)
  store i8 %39, ptr %__c.addr.i51, align 1, !tbaa !36
  br i1 %38, label %if.end.i61, label %if.then.i58

if.then.i58:                                      ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit50
  %call1.i59 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %call1.i46, ptr noundef nonnull %__c.addr.i51, i64 noundef 1)
  %vtable.i142.pre = load ptr, ptr %call1.i59, align 8, !tbaa !5, !invariant.load !8
  %vbase.offset.ptr.i143.phi.trans.insert = getelementptr i8, ptr %vtable.i142.pre, i64 -24
  %vbase.offset.i144.pre = load i64, ptr %vbase.offset.ptr.i143.phi.trans.insert, align 8, !invariant.load !8
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit63

if.end.i61:                                       ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit50.thread, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit50
  %40 = phi i8 [ %37, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit50.thread ], [ %39, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit50 ]
  %retval.0.i47416 = phi ptr [ %retval.0.i34, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit50.thread ], [ %call1.i46, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit50 ]
  %vbase.offset.i54415 = phi i64 [ %vbase.offset.i41, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit50.thread ], [ %vbase.offset.i54.pre, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit50 ]
  %call2.i62 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %retval.0.i47416, i8 noundef signext %40)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit63

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit63: ; preds = %if.then.i58, %if.end.i61
  %vbase.offset.i144 = phi i64 [ %vbase.offset.i144.pre, %if.then.i58 ], [ %vbase.offset.i54415, %if.end.i61 ]
  %retval.0.i60 = phi ptr [ %call1.i59, %if.then.i58 ], [ %retval.0.i47416, %if.end.i61 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__c.addr.i51)
  %add.ptr.i145 = getelementptr inbounds i8, ptr %retval.0.i60, i64 %vbase.offset.i144
  %call.i146 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i145, i8 noundef signext 10)
  %call1.i147 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %retval.0.i60, i8 noundef signext %call.i146)
  %call.i.i148 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i147)
  %41 = load i8, ptr %arrayidx205, align 1, !tbaa !36
  %conv240 = sext i8 %41 to i64
  %sub241 = add nsw i64 %conv240, -96
  %42 = load i8, ptr %arrayidx212, align 1, !tbaa !36
  %conv247 = sext i8 %42 to i64
  %sub248 = add nsw i64 %conv247, -96
  %43 = load i8, ptr %arrayidx219, align 1, !tbaa !36
  %conv254 = sext i8 %43 to i64
  %sub255 = add nsw i64 %conv254, -96
  %arrayidx257 = getelementptr inbounds [27 x [27 x [27 x i32]]], ptr %fre107, i64 0, i64 %sub241, i64 %sub248, i64 %sub255
  store i32 0, ptr %arrayidx257, align 4, !tbaa !31
  br label %for.inc259

for.inc259:                                       ; preds = %for.body203, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit63
  br label %for.cond200, !llvm.loop !48

for.end261:                                       ; preds = %for.cond200
  call void @llvm.lifetime.end.p0(i64 noundef 78732, ptr noundef nonnull %fre107) #9
  br label %if.end461

for.cond263:                                      ; preds = %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit, %for.inc292
  %indvars.iv362 = phi i64 [ %indvars.iv.next363, %for.inc292 ], [ 1, %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit ]
  %exitcond365.not = icmp eq i64 %indvars.iv362, 27
  br i1 %exitcond365.not, label %for.cond295.preheader, label %for.cond266

for.cond295.preheader:                            ; preds = %for.cond263
  %44 = call i32 @llvm.smax.i32(i32 %conv, i32 noundef 3)
  %45 = add nsw i32 %44, -3
  %wide.trip.count372 = zext nneg i32 %45 to i64
  br label %for.cond295

for.cond266:                                      ; preds = %for.cond263, %for.inc289
  %indvars.iv358 = phi i64 [ %indvars.iv.next359, %for.inc289 ], [ 1, %for.cond263 ]
  %exitcond361.not = icmp eq i64 %indvars.iv358, 27
  br i1 %exitcond361.not, label %for.inc292, label %for.cond269

for.cond269:                                      ; preds = %for.cond266, %for.inc286
  %indvars.iv354 = phi i64 [ %indvars.iv.next355, %for.inc286 ], [ 1, %for.cond266 ]
  %exitcond357.not = icmp eq i64 %indvars.iv354, 27
  br i1 %exitcond357.not, label %for.inc289, label %for.cond272

for.cond272:                                      ; preds = %for.cond269, %for.inc283
  %indvars.iv350 = phi i64 [ %indvars.iv.next351, %for.inc283 ], [ 1, %for.cond269 ]
  %exitcond353.not = icmp eq i64 %indvars.iv350, 27
  br i1 %exitcond353.not, label %for.inc286, label %for.inc283

for.inc283:                                       ; preds = %for.cond272
  %arrayidx282 = getelementptr inbounds nuw [27 x [27 x [27 x [27 x i32]]]], ptr @freq, i64 0, i64 %indvars.iv362, i64 %indvars.iv358, i64 %indvars.iv354, i64 %indvars.iv350
  store i32 0, ptr %arrayidx282, align 4, !tbaa !31
  %indvars.iv.next351 = add nuw nsw i64 %indvars.iv350, 1
  br label %for.cond272, !llvm.loop !49

for.inc286:                                       ; preds = %for.cond272
  %indvars.iv.next355 = add nuw nsw i64 %indvars.iv354, 1
  br label %for.cond269, !llvm.loop !50

for.inc289:                                       ; preds = %for.cond269
  %indvars.iv.next359 = add nuw nsw i64 %indvars.iv358, 1
  br label %for.cond266, !llvm.loop !51

for.inc292:                                       ; preds = %for.cond266
  %indvars.iv.next363 = add nuw nsw i64 %indvars.iv362, 1
  br label %for.cond263, !llvm.loop !52

for.cond295:                                      ; preds = %for.cond295.preheader, %for.inc327
  %46 = phi i8 [ undef, %for.cond295.preheader ], [ %47, %for.inc327 ]
  %indvars.iv366 = phi i64 [ 0, %for.cond295.preheader ], [ %indvars.iv.next367, %for.inc327 ]
  %exitcond373 = icmp eq i64 %indvars.iv366, %wide.trip.count372
  br i1 %exitcond373, label %for.cond330, label %for.inc327

for.inc327:                                       ; preds = %for.cond295
  %conv301 = sext i8 %46 to i64
  %sub302 = add nsw i64 %conv301, -96
  %indvars.iv.next367 = add nuw nsw i64 %indvars.iv366, 1
  %arrayidx307 = getelementptr inbounds nuw [505 x i8], ptr %str, i64 0, i64 %indvars.iv.next367
  %47 = load i8, ptr %arrayidx307, align 1, !tbaa !36, !invariant.load !8
  %conv308 = sext i8 %47 to i64
  %sub309 = add nsw i64 %conv308, -96
  %48 = add nuw nsw i64 %indvars.iv366, 2
  %arrayidx314 = getelementptr inbounds nuw [505 x i8], ptr %str, i64 0, i64 %48
  %49 = load i8, ptr %arrayidx314, align 1, !tbaa !36, !invariant.load !8
  %conv315 = sext i8 %49 to i64
  %sub316 = add nsw i64 %conv315, -96
  %50 = add nuw nsw i64 %indvars.iv366, 3
  %arrayidx321 = getelementptr inbounds nuw [505 x i8], ptr %str, i64 0, i64 %50
  %51 = load i8, ptr %arrayidx321, align 1, !tbaa !36, !invariant.load !8
  %conv322 = sext i8 %51 to i64
  %sub323 = add nsw i64 %conv322, -96
  %arrayidx325 = getelementptr inbounds [27 x [27 x [27 x [27 x i32]]]], ptr @freq, i64 0, i64 %sub302, i64 %sub309, i64 %sub316, i64 %sub323
  %52 = load i32, ptr %arrayidx325, align 4, !tbaa !31, !invariant.load !8
  %inc326 = add nsw i32 %52, 1
  store i32 %inc326, ptr %arrayidx325, align 4, !tbaa !31
  br label %for.cond295, !llvm.loop !53

for.cond330:                                      ; preds = %for.cond295, %for.inc370
  %indvars.iv386 = phi i64 [ %indvars.iv.next387, %for.inc370 ], [ 1, %for.cond295 ]
  %max.9 = phi i32 [ %max.10, %for.inc370 ], [ 0, %for.cond295 ]
  %exitcond389.not = icmp eq i64 %indvars.iv386, 27
  br i1 %exitcond389.not, label %for.end372, label %for.cond333

for.cond333:                                      ; preds = %for.cond330, %for.inc367
  %indvars.iv382 = phi i64 [ %indvars.iv.next383, %for.inc367 ], [ 1, %for.cond330 ]
  %max.10 = phi i32 [ %max.11, %for.inc367 ], [ %max.9, %for.cond330 ]
  %exitcond385.not = icmp eq i64 %indvars.iv382, 27
  br i1 %exitcond385.not, label %for.inc370, label %for.cond336

for.cond336:                                      ; preds = %for.cond333, %for.inc364
  %indvars.iv378 = phi i64 [ %indvars.iv.next379, %for.inc364 ], [ 1, %for.cond333 ]
  %max.11 = phi i32 [ %max.12, %for.inc364 ], [ %max.10, %for.cond333 ]
  %exitcond381.not = icmp eq i64 %indvars.iv378, 27
  br i1 %exitcond381.not, label %for.inc367, label %for.cond339

for.cond339:                                      ; preds = %for.cond336, %for.body341
  %indvars.iv374 = phi i64 [ %indvars.iv.next375, %for.body341 ], [ 1, %for.cond336 ]
  %max.12 = phi i32 [ %spec.select287, %for.body341 ], [ %max.11, %for.cond336 ]
  %exitcond377.not = icmp eq i64 %indvars.iv374, 27
  br i1 %exitcond377.not, label %for.inc364, label %for.body341

for.body341:                                      ; preds = %for.cond339
  %arrayidx349 = getelementptr inbounds nuw [27 x [27 x [27 x [27 x i32]]]], ptr @freq, i64 0, i64 %indvars.iv386, i64 %indvars.iv382, i64 %indvars.iv378, i64 %indvars.iv374
  %53 = load i32, ptr %arrayidx349, align 4, !tbaa !31, !invariant.load !8
  %spec.select287 = call i32 @llvm.smax.i32(i32 %53, i32 %max.12)
  %indvars.iv.next375 = add nuw nsw i64 %indvars.iv374, 1
  br label %for.cond339, !llvm.loop !54

for.inc364:                                       ; preds = %for.cond339
  %indvars.iv.next379 = add nuw nsw i64 %indvars.iv378, 1
  br label %for.cond336, !llvm.loop !55

for.inc367:                                       ; preds = %for.cond336
  %indvars.iv.next383 = add nuw nsw i64 %indvars.iv382, 1
  br label %for.cond333, !llvm.loop !56

for.inc370:                                       ; preds = %for.cond333
  %indvars.iv.next387 = add nuw nsw i64 %indvars.iv386, 1
  br label %for.cond330, !llvm.loop !57

for.end372:                                       ; preds = %for.cond330
  %cmp373 = icmp eq i32 %max.9, 1
  br i1 %cmp373, label %if.then374, label %if.else376

if.then374:                                       ; preds = %for.end372
  %call1.i66 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 2)
  br label %if.end379

if.else376:                                       ; preds = %for.end372
  %call377 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(272) @_ZSt4cout, i32 noundef %max.9)
  %vtable.i149 = load ptr, ptr %call377, align 8, !tbaa !5, !invariant.load !8
  %vbase.offset.ptr.i150 = getelementptr i8, ptr %vtable.i149, i64 -24
  %vbase.offset.i151 = load i64, ptr %vbase.offset.ptr.i150, align 8, !invariant.load !8
  %add.ptr.i152 = getelementptr inbounds i8, ptr %call377, i64 %vbase.offset.i151
  %call.i153 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i152, i8 noundef signext 10)
  %call1.i154 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call377, i8 noundef signext %call.i153)
  %call.i.i155 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i154)
  br label %if.end379

if.end379:                                        ; preds = %if.else376, %if.then374
  %max.14 = phi i32 [ -1, %if.then374 ], [ %max.9, %if.else376 ]
  %vtable.i70 = load ptr, ptr @_ZSt4cout, align 8
  %vbase.offset.ptr.i71 = getelementptr i8, ptr %vtable.i70, i64 -24
  %54 = call i32 @llvm.smax.i32(i32 %conv, i32 noundef 1)
  %55 = add nsw i32 %54, -1
  %wide.trip.count396 = zext nneg i32 %55 to i64
  br label %for.cond380

for.cond380:                                      ; preds = %for.inc457, %if.end379
  %indvars.iv390 = phi i64 [ %indvars.iv.next391, %for.inc457 ], [ 0, %if.end379 ]
  %exitcond397 = icmp eq i64 %indvars.iv390, %wide.trip.count396
  br i1 %exitcond397, label %if.end461, label %for.body383

for.body383:                                      ; preds = %for.cond380
  %arrayidx385 = getelementptr inbounds nuw [505 x i8], ptr %str, i64 0, i64 %indvars.iv390
  %56 = load i8, ptr %arrayidx385, align 1, !tbaa !36
  %conv386 = sext i8 %56 to i64
  %sub387 = add nsw i64 %conv386, -96
  %indvars.iv.next391 = add nuw nsw i64 %indvars.iv390, 1
  %arrayidx392 = getelementptr inbounds nuw [505 x i8], ptr %str, i64 0, i64 %indvars.iv.next391
  %57 = load i8, ptr %arrayidx392, align 1, !tbaa !36
  %conv393 = sext i8 %57 to i64
  %sub394 = add nsw i64 %conv393, -96
  %58 = add nuw nsw i64 %indvars.iv390, 2
  %arrayidx399 = getelementptr inbounds nuw [505 x i8], ptr %str, i64 0, i64 %58
  %59 = load i8, ptr %arrayidx399, align 1, !tbaa !36
  %conv400 = sext i8 %59 to i64
  %sub401 = add nsw i64 %conv400, -96
  %60 = add nuw nsw i64 %indvars.iv390, 3
  %arrayidx406 = getelementptr inbounds nuw [505 x i8], ptr %str, i64 0, i64 %60
  %61 = load i8, ptr %arrayidx406, align 1, !tbaa !36
  %conv407 = sext i8 %61 to i64
  %sub408 = add nsw i64 %conv407, -96
  %arrayidx410 = getelementptr inbounds [27 x [27 x [27 x [27 x i32]]]], ptr @freq, i64 0, i64 %sub387, i64 %sub394, i64 %sub401, i64 %sub408
  %62 = load i32, ptr %arrayidx410, align 4, !tbaa !31, !invariant.load !8
  %cmp411 = icmp eq i32 %62, %max.14
  br i1 %cmp411, label %if.then412, label %for.inc457

if.then412:                                       ; preds = %for.body383
  call void @llvm.lifetime.start.p0(i64 noundef 1, ptr noundef nonnull %__c.addr.i69)
  store i8 %56, ptr %__c.addr.i69, align 1, !tbaa !36
  %vbase.offset.i72 = load i64, ptr %vbase.offset.ptr.i71, align 8, !invariant.load !8
  %gep289 = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 16), i64 %vbase.offset.i72
  %63 = load i64, ptr %gep289, align 8, !tbaa !22, !invariant.load !8
  %cmp.not.i75 = icmp eq i64 %63, 0
  br i1 %cmp.not.i75, label %if.end.i79, label %if.then.i76

if.then.i76:                                      ; preds = %if.then412
  %call1.i77 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %__c.addr.i69, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit81

if.end.i79:                                       ; preds = %if.then412
  %call2.i80 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %56)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit81

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit81: ; preds = %if.then.i76, %if.end.i79
  %retval.0.i78 = phi ptr [ %call1.i77, %if.then.i76 ], [ @_ZSt4cout, %if.end.i79 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__c.addr.i69)
  %64 = load i8, ptr %arrayidx392, align 1, !tbaa !36
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__c.addr.i82)
  store i8 %64, ptr %__c.addr.i82, align 1, !tbaa !36
  %vtable.i83 = load ptr, ptr %retval.0.i78, align 8, !tbaa !5, !invariant.load !8
  %vbase.offset.ptr.i84 = getelementptr i8, ptr %vtable.i83, i64 -24
  %vbase.offset.i85 = load i64, ptr %vbase.offset.ptr.i84, align 8, !invariant.load !8
  %add.ptr.i86 = getelementptr inbounds i8, ptr %retval.0.i78, i64 %vbase.offset.i85
  %_M_width.i.i87 = getelementptr inbounds nuw i8, ptr %add.ptr.i86, i64 16
  %65 = load i64, ptr %_M_width.i.i87, align 8, !tbaa !22, !invariant.load !8
  %cmp.not.i88 = icmp eq i64 %65, 0
  br i1 %cmp.not.i88, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit94.thread, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit94

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit94.thread: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit81
  %call2.i93 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %retval.0.i78, i8 noundef signext %64)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__c.addr.i82)
  %66 = load i8, ptr %arrayidx399, align 1, !tbaa !36
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__c.addr.i95)
  store i8 %66, ptr %__c.addr.i95, align 1, !tbaa !36
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit107.thread

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit94: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit81
  %call1.i90 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %retval.0.i78, ptr noundef nonnull %__c.addr.i82, i64 noundef 1)
  %vtable.i96.pre = load ptr, ptr %call1.i90, align 8, !tbaa !5, !invariant.load !8
  %vbase.offset.ptr.i97.phi.trans.insert = getelementptr i8, ptr %vtable.i96.pre, i64 -24
  %vbase.offset.i98.pre = load i64, ptr %vbase.offset.ptr.i97.phi.trans.insert, align 8, !invariant.load !8
  %add.ptr.i99.phi.trans.insert = getelementptr inbounds i8, ptr %call1.i90, i64 %vbase.offset.i98.pre
  %_M_width.i.i100.phi.trans.insert = getelementptr inbounds nuw i8, ptr %add.ptr.i99.phi.trans.insert, i64 16
  %.pre406 = load i64, ptr %_M_width.i.i100.phi.trans.insert, align 8, !tbaa !22, !invariant.load !8
  %67 = icmp eq i64 %.pre406, 0
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__c.addr.i82)
  %68 = load i8, ptr %arrayidx399, align 1, !tbaa !36
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__c.addr.i95)
  store i8 %68, ptr %__c.addr.i95, align 1, !tbaa !36
  br i1 %67, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit107.thread, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit107

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit107.thread: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit94, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit94.thread
  %69 = phi i8 [ %66, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit94.thread ], [ %68, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit94 ]
  %retval.0.i91421 = phi ptr [ %retval.0.i78, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit94.thread ], [ %call1.i90, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit94 ]
  %vbase.offset.i98420 = phi i64 [ %vbase.offset.i85, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit94.thread ], [ %vbase.offset.i98.pre, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit94 ]
  %call2.i106 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %retval.0.i91421, i8 noundef signext %69)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__c.addr.i95)
  %70 = load i8, ptr %arrayidx406, align 1, !tbaa !36
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__c.addr.i108)
  store i8 %70, ptr %__c.addr.i108, align 1, !tbaa !36
  br label %if.end.i118

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit107: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit94
  %call1.i103 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %call1.i90, ptr noundef nonnull %__c.addr.i95, i64 noundef 1)
  %vtable.i109.pre = load ptr, ptr %call1.i103, align 8, !tbaa !5, !invariant.load !8
  %vbase.offset.ptr.i110.phi.trans.insert = getelementptr i8, ptr %vtable.i109.pre, i64 -24
  %vbase.offset.i111.pre = load i64, ptr %vbase.offset.ptr.i110.phi.trans.insert, align 8, !invariant.load !8
  %add.ptr.i112.phi.trans.insert = getelementptr inbounds i8, ptr %call1.i103, i64 %vbase.offset.i111.pre
  %_M_width.i.i113.phi.trans.insert = getelementptr inbounds nuw i8, ptr %add.ptr.i112.phi.trans.insert, i64 16
  %.pre409 = load i64, ptr %_M_width.i.i113.phi.trans.insert, align 8, !tbaa !22, !invariant.load !8
  %71 = icmp eq i64 %.pre409, 0
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__c.addr.i95)
  %72 = load i8, ptr %arrayidx406, align 1, !tbaa !36
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__c.addr.i108)
  store i8 %72, ptr %__c.addr.i108, align 1, !tbaa !36
  br i1 %71, label %if.end.i118, label %if.then.i115

if.then.i115:                                     ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit107
  %call1.i116 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %call1.i103, ptr noundef nonnull %__c.addr.i108, i64 noundef 1)
  %vtable.i156.pre = load ptr, ptr %call1.i116, align 8, !tbaa !5, !invariant.load !8
  %vbase.offset.ptr.i157.phi.trans.insert = getelementptr i8, ptr %vtable.i156.pre, i64 -24
  %vbase.offset.i158.pre = load i64, ptr %vbase.offset.ptr.i157.phi.trans.insert, align 8, !invariant.load !8
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit120

if.end.i118:                                      ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit107.thread, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit107
  %73 = phi i8 [ %70, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit107.thread ], [ %72, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit107 ]
  %retval.0.i104426 = phi ptr [ %retval.0.i91421, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit107.thread ], [ %call1.i103, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit107 ]
  %vbase.offset.i111425 = phi i64 [ %vbase.offset.i98420, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit107.thread ], [ %vbase.offset.i111.pre, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit107 ]
  %call2.i119 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %retval.0.i104426, i8 noundef signext %73)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit120

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit120: ; preds = %if.then.i115, %if.end.i118
  %vbase.offset.i158 = phi i64 [ %vbase.offset.i158.pre, %if.then.i115 ], [ %vbase.offset.i111425, %if.end.i118 ]
  %retval.0.i117 = phi ptr [ %call1.i116, %if.then.i115 ], [ %retval.0.i104426, %if.end.i118 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__c.addr.i108)
  %add.ptr.i159 = getelementptr inbounds i8, ptr %retval.0.i117, i64 %vbase.offset.i158
  %call.i160 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i159, i8 noundef signext 10)
  %call1.i161 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %retval.0.i117, i8 noundef signext %call.i160)
  %call.i.i162 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i161)
  %74 = load i8, ptr %arrayidx385, align 1, !tbaa !36
  %conv431 = sext i8 %74 to i64
  %sub432 = add nsw i64 %conv431, -96
  %75 = load i8, ptr %arrayidx392, align 1, !tbaa !36
  %conv438 = sext i8 %75 to i64
  %sub439 = add nsw i64 %conv438, -96
  %76 = load i8, ptr %arrayidx399, align 1, !tbaa !36
  %conv445 = sext i8 %76 to i64
  %sub446 = add nsw i64 %conv445, -96
  %77 = load i8, ptr %arrayidx406, align 1, !tbaa !36
  %conv452 = sext i8 %77 to i64
  %sub453 = add nsw i64 %conv452, -96
  %arrayidx455 = getelementptr inbounds [27 x [27 x [27 x [27 x i32]]]], ptr @freq, i64 0, i64 %sub432, i64 %sub439, i64 %sub446, i64 %sub453
  store i32 0, ptr %arrayidx455, align 4, !tbaa !31
  br label %for.inc457

for.inc457:                                       ; preds = %for.body383, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit120
  br label %for.cond380, !llvm.loop !58

if.end461:                                        ; preds = %for.cond380, %for.end261, %for.end103
  call void @llvm.lifetime.end.p0(i64 noundef 505, ptr noundef nonnull %str) #9
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #9
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #4 align 2

declare void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef i32 @_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #4 align 2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #5

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) local_unnamed_addr #4 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nofree nounwind willreturn }
attributes #8 = { nounwind willreturn memory(read) }
attributes #9 = { nounwind }

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
!8 = !{}
!9 = !{!10, !14, i64 32}
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
!22 = !{!10, !11, i64 16}
!23 = !{!24, !27, i64 232}
!24 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !10, i64 0, !25, i64 216, !12, i64 224, !26, i64 225, !27, i64 232, !28, i64 240, !29, i64 248, !30, i64 256}
!25 = !{!"p1 _ZTSSo", !16, i64 0}
!26 = !{!"bool", !12, i64 0}
!27 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !16, i64 0}
!28 = !{!"p1 _ZTSSt5ctypeIcE", !16, i64 0}
!29 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !16, i64 0}
!30 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !16, i64 0}
!31 = !{!18, !18, i64 0}
!32 = distinct !{!32, !33, !34}
!33 = !{!"llvm.loop.mustprogress"}
!34 = !{!"llvm.loop.unroll.disable"}
!35 = distinct !{!35, !33, !34}
!36 = !{!12, !12, i64 0}
!37 = distinct !{!37, !33, !34}
!38 = distinct !{!38, !33, !34}
!39 = distinct !{!39, !33, !34}
!40 = distinct !{!40, !33, !34}
!41 = distinct !{!41, !33, !34}
!42 = distinct !{!42, !33, !34}
!43 = distinct !{!43, !33, !34}
!44 = distinct !{!44, !33, !34}
!45 = distinct !{!45, !33, !34}
!46 = distinct !{!46, !33, !34}
!47 = distinct !{!47, !33, !34}
!48 = distinct !{!48, !33, !34}
!49 = distinct !{!49, !33, !34}
!50 = distinct !{!50, !33, !34}
!51 = distinct !{!51, !33, !34}
!52 = distinct !{!52, !33, !34}
!53 = distinct !{!53, !33, !34}
!54 = distinct !{!54, !33, !34}
!55 = distinct !{!55, !33, !34}
!56 = distinct !{!56, !33, !34}
!57 = distinct !{!57, !33, !34}
!58 = distinct !{!58, !33, !34}
