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
  %__c.addr.i236 = alloca i8, align 1
  %__c.addr.i223 = alloca i8, align 1
  %__c.addr.i210 = alloca i8, align 1
  %__c.addr.i197 = alloca i8, align 1
  %__c.addr.i179 = alloca i8, align 1
  %__c.addr.i166 = alloca i8, align 1
  %__c.addr.i153 = alloca i8, align 1
  %__c.addr.i135 = alloca i8, align 1
  %__c.addr.i = alloca i8, align 1
  %n = alloca i32, align 4
  %str = alloca [505 x i8], align 16
  %fre = alloca [27 x [27 x i32]], align 16
  %fre107 = alloca [27 x [27 x [27 x i32]]], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #6
  call void @llvm.lifetime.start.p0(i64 505, ptr nonnull %str) #6
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %vtable7.i = load ptr, ptr %call, align 8, !tbaa !5
  %vbase.offset.ptr8.i = getelementptr i8, ptr %vtable7.i, i64 -24
  %vbase.offset9.i = load i64, ptr %vbase.offset.ptr8.i, align 8
  %add.ptr10.i = getelementptr inbounds i8, ptr %call, i64 %vbase.offset9.i
  %_M_width.i17.i = getelementptr inbounds nuw i8, ptr %add.ptr10.i, i64 16
  %0 = load i64, ptr %_M_width.i17.i, align 8, !tbaa !8
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) %call, ptr noundef nonnull %str, i64 noundef 505)
  %vtable12.i = load ptr, ptr %call, align 8, !tbaa !5
  %vbase.offset.ptr13.i = getelementptr i8, ptr %vtable12.i, i64 -24
  %vbase.offset14.i = load i64, ptr %vbase.offset.ptr13.i, align 8
  %add.ptr15.i = getelementptr inbounds i8, ptr %call, i64 %vbase.offset14.i
  %_M_streambuf_state.i.i.i = getelementptr inbounds nuw i8, ptr %add.ptr15.i, i64 32
  %1 = load i32, ptr %_M_streambuf_state.i.i.i, align 8, !tbaa !21
  %cmp.i.i = icmp eq i32 %1, 0
  %2 = add i64 %0, -506
  %or.cond.i = icmp ult i64 %2, -505
  %or.cond = select i1 %cmp.i.i, i1 %or.cond.i, i1 false
  br i1 %or.cond, label %if.then19.i, label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit

if.then19.i:                                      ; preds = %entry
  %_M_streambuf.i.i = getelementptr inbounds nuw i8, ptr %add.ptr15.i, i64 232
  %3 = load ptr, ptr %_M_streambuf.i.i, align 8, !tbaa !22
  %call25.i = call noundef i32 @_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv(ptr noundef nonnull align 8 dereferenceable(64) %3)
  %cmp.i18.i = icmp eq i32 %call25.i, -1
  br i1 %cmp.i18.i, label %if.then28.i, label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit, !prof !30

if.then28.i:                                      ; preds = %if.then19.i
  %vtable29.i = load ptr, ptr %call, align 8, !tbaa !5
  %vbase.offset.ptr30.i = getelementptr i8, ptr %vtable29.i, i64 -24
  %vbase.offset31.i = load i64, ptr %vbase.offset.ptr30.i, align 8
  %add.ptr32.i = getelementptr inbounds i8, ptr %call, i64 %vbase.offset31.i
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr32.i, i32 noundef 2)
  br label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit

_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit: ; preds = %entry, %if.then19.i, %if.then28.i
  %call3 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %str) #7
  %conv = trunc i64 %call3 to i32
  %4 = load i32, ptr %n, align 4, !tbaa !31
  switch i32 %4, label %for.cond263 [
    i32 2, label %if.then
    i32 3, label %if.then106
  ]

if.then:                                          ; preds = %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit
  call void @llvm.lifetime.start.p0(i64 2916, ptr nonnull %fre) #6
  br label %for.cond

for.cond:                                         ; preds = %for.inc10, %if.then
  %indvars.iv330 = phi i64 [ %indvars.iv.next331, %for.inc10 ], [ 1, %if.then ]
  %exitcond333.not = icmp eq i64 %indvars.iv330, 27
  br i1 %exitcond333.not, label %for.cond13.preheader, label %for.cond5

for.cond13.preheader:                             ; preds = %for.cond
  %5 = call i32 @llvm.smax.i32(i32 %conv, i32 1)
  %6 = add nsw i32 %5, -1
  %wide.trip.count338 = zext nneg i32 %6 to i64
  br label %for.cond13

for.cond5:                                        ; preds = %for.cond, %for.body7
  %indvars.iv326 = phi i64 [ %indvars.iv.next327, %for.body7 ], [ 1, %for.cond ]
  %exitcond329.not = icmp eq i64 %indvars.iv326, 27
  br i1 %exitcond329.not, label %for.inc10, label %for.body7

for.body7:                                        ; preds = %for.cond5
  %arrayidx9 = getelementptr inbounds nuw [27 x [27 x i32]], ptr %fre, i64 0, i64 %indvars.iv330, i64 %indvars.iv326
  store i32 0, ptr %arrayidx9, align 4, !tbaa !31
  %indvars.iv.next327 = add nuw nsw i64 %indvars.iv326, 1
  br label %for.cond5, !llvm.loop !32

for.inc10:                                        ; preds = %for.cond5
  %indvars.iv.next331 = add nuw nsw i64 %indvars.iv330, 1
  br label %for.cond, !llvm.loop !35

for.cond13:                                       ; preds = %for.cond13.preheader, %for.body15
  %indvars.iv334 = phi i64 [ 0, %for.cond13.preheader ], [ %indvars.iv.next335, %for.body15 ]
  %exitcond339 = icmp eq i64 %indvars.iv334, %wide.trip.count338
  br i1 %exitcond339, label %for.cond32, label %for.body15

for.body15:                                       ; preds = %for.cond13
  %arrayidx17 = getelementptr inbounds nuw [505 x i8], ptr %str, i64 0, i64 %indvars.iv334
  %7 = load i8, ptr %arrayidx17, align 1, !tbaa !36
  %conv18 = sext i8 %7 to i64
  %sub19 = add nsw i64 %conv18, -96
  %indvars.iv.next335 = add nuw nsw i64 %indvars.iv334, 1
  %arrayidx23 = getelementptr inbounds nuw [505 x i8], ptr %str, i64 0, i64 %indvars.iv.next335
  %8 = load i8, ptr %arrayidx23, align 1, !tbaa !36
  %conv24 = sext i8 %8 to i64
  %sub25 = add nsw i64 %conv24, -96
  %arrayidx27 = getelementptr inbounds [27 x [27 x i32]], ptr %fre, i64 0, i64 %sub19, i64 %sub25
  %9 = load i32, ptr %arrayidx27, align 4, !tbaa !31
  %inc28 = add nsw i32 %9, 1
  store i32 %inc28, ptr %arrayidx27, align 4, !tbaa !31
  br label %for.cond13, !llvm.loop !37

for.cond32:                                       ; preds = %for.cond13, %for.inc51
  %indvars.iv344 = phi i64 [ %indvars.iv.next345, %for.inc51 ], [ 1, %for.cond13 ]
  %max.0 = phi i32 [ %max.1, %for.inc51 ], [ 0, %for.cond13 ]
  %exitcond347.not = icmp eq i64 %indvars.iv344, 27
  br i1 %exitcond347.not, label %for.end53, label %for.cond35

for.cond35:                                       ; preds = %for.cond32, %for.body37
  %indvars.iv340 = phi i64 [ %indvars.iv.next341, %for.body37 ], [ 1, %for.cond32 ]
  %max.1 = phi i32 [ %spec.select, %for.body37 ], [ %max.0, %for.cond32 ]
  %exitcond343.not = icmp eq i64 %indvars.iv340, 27
  br i1 %exitcond343.not, label %for.inc51, label %for.body37

for.body37:                                       ; preds = %for.cond35
  %arrayidx41 = getelementptr inbounds nuw [27 x [27 x i32]], ptr %fre, i64 0, i64 %indvars.iv344, i64 %indvars.iv340
  %10 = load i32, ptr %arrayidx41, align 4, !tbaa !31
  %spec.select = call i32 @llvm.smax.i32(i32 %10, i32 %max.1)
  %indvars.iv.next341 = add nuw nsw i64 %indvars.iv340, 1
  br label %for.cond35, !llvm.loop !38

for.inc51:                                        ; preds = %for.cond35
  %indvars.iv.next345 = add nuw nsw i64 %indvars.iv344, 1
  br label %for.cond32, !llvm.loop !39

for.end53:                                        ; preds = %for.cond32
  %cmp54 = icmp eq i32 %max.0, 1
  br i1 %cmp54, label %if.then55, label %if.else

if.then55:                                        ; preds = %for.end53
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 2)
  br label %if.end59

if.else:                                          ; preds = %for.end53
  %call57 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %max.0)
  %vtable.i250 = load ptr, ptr %call57, align 8, !tbaa !5
  %vbase.offset.ptr.i251 = getelementptr i8, ptr %vtable.i250, i64 -24
  %vbase.offset.i252 = load i64, ptr %vbase.offset.ptr.i251, align 8
  %add.ptr.i253 = getelementptr inbounds i8, ptr %call57, i64 %vbase.offset.i252
  %call.i254 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i253, i8 noundef signext 10)
  %call1.i255 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call57, i8 noundef signext %call.i254)
  %call.i.i256 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i255)
  br label %if.end59

if.end59:                                         ; preds = %if.else, %if.then55
  %max.3 = phi i32 [ -1, %if.then55 ], [ %max.0, %if.else ]
  br label %for.cond60

for.cond60:                                       ; preds = %for.cond60.backedge, %if.end59
  %indvars.iv348 = phi i64 [ 0, %if.end59 ], [ %indvars.iv.next349, %for.cond60.backedge ]
  %exitcond352 = icmp eq i64 %indvars.iv348, %wide.trip.count338
  br i1 %exitcond352, label %for.end103, label %for.body63

for.body63:                                       ; preds = %for.cond60
  %arrayidx65 = getelementptr inbounds nuw [505 x i8], ptr %str, i64 0, i64 %indvars.iv348
  %11 = load i8, ptr %arrayidx65, align 1, !tbaa !36
  %conv66 = sext i8 %11 to i64
  %sub67 = add nsw i64 %conv66, -96
  %indvars.iv.next349 = add nuw nsw i64 %indvars.iv348, 1
  %arrayidx72 = getelementptr inbounds nuw [505 x i8], ptr %str, i64 0, i64 %indvars.iv.next349
  %12 = load i8, ptr %arrayidx72, align 1, !tbaa !36
  %conv73 = sext i8 %12 to i64
  %sub74 = add nsw i64 %conv73, -96
  %arrayidx76 = getelementptr inbounds [27 x [27 x i32]], ptr %fre, i64 0, i64 %sub67, i64 %sub74
  %13 = load i32, ptr %arrayidx76, align 4, !tbaa !31
  %cmp77 = icmp eq i32 %13, %max.3
  br i1 %cmp77, label %if.then78, label %for.cond60.backedge

for.cond60.backedge:                              ; preds = %for.body63, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit147
  br label %for.cond60, !llvm.loop !40

if.then78:                                        ; preds = %for.body63
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__c.addr.i)
  store i8 %11, ptr %__c.addr.i, align 1, !tbaa !36
  %vtable.i129 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !5
  %vbase.offset.ptr.i130 = getelementptr i8, ptr %vtable.i129, i64 -24
  %vbase.offset.i131 = load i64, ptr %vbase.offset.ptr.i130, align 8
  %gep291 = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 16), i64 %vbase.offset.i131
  %14 = load i64, ptr %gep291, align 8, !tbaa !8
  %cmp.not.i = icmp eq i64 %14, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.then78
  %call1.i134 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %__c.addr.i, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

if.end.i:                                         ; preds = %if.then78
  %call2.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %11)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %if.then.i, %if.end.i
  %retval.0.i = phi ptr [ %call1.i134, %if.then.i ], [ @_ZSt4cout, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__c.addr.i)
  %15 = load i8, ptr %arrayidx72, align 1, !tbaa !36
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__c.addr.i135)
  store i8 %15, ptr %__c.addr.i135, align 1, !tbaa !36
  %vtable.i136 = load ptr, ptr %retval.0.i, align 8, !tbaa !5
  %vbase.offset.ptr.i137 = getelementptr i8, ptr %vtable.i136, i64 -24
  %vbase.offset.i138 = load i64, ptr %vbase.offset.ptr.i137, align 8
  %add.ptr.i139 = getelementptr inbounds i8, ptr %retval.0.i, i64 %vbase.offset.i138
  %_M_width.i.i140 = getelementptr inbounds nuw i8, ptr %add.ptr.i139, i64 16
  %16 = load i64, ptr %_M_width.i.i140, align 8, !tbaa !8
  %cmp.not.i141 = icmp eq i64 %16, 0
  br i1 %cmp.not.i141, label %if.end.i145, label %if.then.i142

if.then.i142:                                     ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
  %call1.i143 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %retval.0.i, ptr noundef nonnull %__c.addr.i135, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit147

if.end.i145:                                      ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
  %call2.i146 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %retval.0.i, i8 noundef signext %15)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit147

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit147: ; preds = %if.then.i142, %if.end.i145
  %retval.0.i144 = phi ptr [ %call1.i143, %if.then.i142 ], [ %retval.0.i, %if.end.i145 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__c.addr.i135)
  %vtable.i257 = load ptr, ptr %retval.0.i144, align 8, !tbaa !5
  %vbase.offset.ptr.i258 = getelementptr i8, ptr %vtable.i257, i64 -24
  %vbase.offset.i259 = load i64, ptr %vbase.offset.ptr.i258, align 8
  %add.ptr.i260 = getelementptr inbounds i8, ptr %retval.0.i144, i64 %vbase.offset.i259
  %call.i = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i260, i8 noundef signext 10)
  %call1.i261 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %retval.0.i144, i8 noundef signext %call.i)
  %call.i.i262 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i261)
  %17 = load i8, ptr %arrayidx65, align 1, !tbaa !36
  %conv89 = sext i8 %17 to i64
  %sub90 = add nsw i64 %conv89, -96
  %18 = load i8, ptr %arrayidx72, align 1, !tbaa !36
  %conv96 = sext i8 %18 to i64
  %sub97 = add nsw i64 %conv96, -96
  %arrayidx99 = getelementptr inbounds [27 x [27 x i32]], ptr %fre, i64 0, i64 %sub90, i64 %sub97
  store i32 0, ptr %arrayidx99, align 4, !tbaa !31
  br label %for.cond60.backedge

for.end103:                                       ; preds = %for.cond60
  call void @llvm.lifetime.end.p0(i64 2916, ptr nonnull %fre) #6
  br label %if.end461

if.then106:                                       ; preds = %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit
  call void @llvm.lifetime.start.p0(i64 78732, ptr nonnull %fre107) #6
  br label %for.cond108

for.cond108:                                      ; preds = %for.inc129, %if.then106
  %indvars.iv298 = phi i64 [ %indvars.iv.next299, %for.inc129 ], [ 1, %if.then106 ]
  %exitcond301.not = icmp eq i64 %indvars.iv298, 27
  br i1 %exitcond301.not, label %for.cond132.preheader, label %for.cond111

for.cond132.preheader:                            ; preds = %for.cond108
  %19 = call i32 @llvm.smax.i32(i32 %conv, i32 2)
  %20 = add nsw i32 %19, -2
  %wide.trip.count = zext nneg i32 %20 to i64
  br label %for.cond132

for.cond111:                                      ; preds = %for.cond108, %for.inc126
  %indvars.iv294 = phi i64 [ %indvars.iv.next295, %for.inc126 ], [ 1, %for.cond108 ]
  %exitcond297.not = icmp eq i64 %indvars.iv294, 27
  br i1 %exitcond297.not, label %for.inc129, label %for.cond114

for.cond114:                                      ; preds = %for.cond111, %for.body116
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body116 ], [ 1, %for.cond111 ]
  %exitcond.not = icmp eq i64 %indvars.iv, 27
  br i1 %exitcond.not, label %for.inc126, label %for.body116

for.body116:                                      ; preds = %for.cond114
  %arrayidx122 = getelementptr inbounds nuw [27 x [27 x [27 x i32]]], ptr %fre107, i64 0, i64 %indvars.iv298, i64 %indvars.iv294, i64 %indvars.iv
  store i32 0, ptr %arrayidx122, align 4, !tbaa !31
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond114, !llvm.loop !41

for.inc126:                                       ; preds = %for.cond114
  %indvars.iv.next295 = add nuw nsw i64 %indvars.iv294, 1
  br label %for.cond111, !llvm.loop !42

for.inc129:                                       ; preds = %for.cond111
  %indvars.iv.next299 = add nuw nsw i64 %indvars.iv298, 1
  br label %for.cond108, !llvm.loop !43

for.cond132:                                      ; preds = %for.cond132.preheader, %for.body135
  %indvars.iv302 = phi i64 [ 0, %for.cond132.preheader ], [ %indvars.iv.next303, %for.body135 ]
  %exitcond306 = icmp eq i64 %indvars.iv302, %wide.trip.count
  br i1 %exitcond306, label %for.cond160, label %for.body135

for.body135:                                      ; preds = %for.cond132
  %arrayidx137 = getelementptr inbounds nuw [505 x i8], ptr %str, i64 0, i64 %indvars.iv302
  %21 = load i8, ptr %arrayidx137, align 1, !tbaa !36
  %conv138 = sext i8 %21 to i64
  %sub139 = add nsw i64 %conv138, -96
  %indvars.iv.next303 = add nuw nsw i64 %indvars.iv302, 1
  %arrayidx144 = getelementptr inbounds nuw [505 x i8], ptr %str, i64 0, i64 %indvars.iv.next303
  %22 = load i8, ptr %arrayidx144, align 1, !tbaa !36
  %conv145 = sext i8 %22 to i64
  %sub146 = add nsw i64 %conv145, -96
  %23 = add nuw nsw i64 %indvars.iv302, 2
  %arrayidx151 = getelementptr inbounds nuw [505 x i8], ptr %str, i64 0, i64 %23
  %24 = load i8, ptr %arrayidx151, align 1, !tbaa !36
  %conv152 = sext i8 %24 to i64
  %sub153 = add nsw i64 %conv152, -96
  %arrayidx155 = getelementptr inbounds [27 x [27 x [27 x i32]]], ptr %fre107, i64 0, i64 %sub139, i64 %sub146, i64 %sub153
  %25 = load i32, ptr %arrayidx155, align 4, !tbaa !31
  %inc156 = add nsw i32 %25, 1
  store i32 %inc156, ptr %arrayidx155, align 4, !tbaa !31
  br label %for.cond132, !llvm.loop !44

for.cond160:                                      ; preds = %for.cond132, %for.inc190
  %indvars.iv315 = phi i64 [ %indvars.iv.next316, %for.inc190 ], [ 1, %for.cond132 ]
  %max.4 = phi i32 [ %max.5, %for.inc190 ], [ 0, %for.cond132 ]
  %exitcond318.not = icmp eq i64 %indvars.iv315, 27
  br i1 %exitcond318.not, label %for.end192, label %for.cond163

for.cond163:                                      ; preds = %for.cond160, %for.inc187
  %indvars.iv311 = phi i64 [ %indvars.iv.next312, %for.inc187 ], [ 1, %for.cond160 ]
  %max.5 = phi i32 [ %max.6, %for.inc187 ], [ %max.4, %for.cond160 ]
  %exitcond314.not = icmp eq i64 %indvars.iv311, 27
  br i1 %exitcond314.not, label %for.inc190, label %for.cond166

for.cond166:                                      ; preds = %for.cond163, %for.body168
  %indvars.iv307 = phi i64 [ %indvars.iv.next308, %for.body168 ], [ 1, %for.cond163 ]
  %max.6 = phi i32 [ %spec.select127, %for.body168 ], [ %max.5, %for.cond163 ]
  %exitcond310.not = icmp eq i64 %indvars.iv307, 27
  br i1 %exitcond310.not, label %for.inc187, label %for.body168

for.body168:                                      ; preds = %for.cond166
  %arrayidx174 = getelementptr inbounds nuw [27 x [27 x [27 x i32]]], ptr %fre107, i64 0, i64 %indvars.iv315, i64 %indvars.iv311, i64 %indvars.iv307
  %26 = load i32, ptr %arrayidx174, align 4, !tbaa !31
  %spec.select127 = call i32 @llvm.smax.i32(i32 %26, i32 %max.6)
  %indvars.iv.next308 = add nuw nsw i64 %indvars.iv307, 1
  br label %for.cond166, !llvm.loop !45

for.inc187:                                       ; preds = %for.cond166
  %indvars.iv.next312 = add nuw nsw i64 %indvars.iv311, 1
  br label %for.cond163, !llvm.loop !46

for.inc190:                                       ; preds = %for.cond163
  %indvars.iv.next316 = add nuw nsw i64 %indvars.iv315, 1
  br label %for.cond160, !llvm.loop !47

for.end192:                                       ; preds = %for.cond160
  %cmp193 = icmp eq i32 %max.4, 1
  br i1 %cmp193, label %if.then194, label %if.else196

if.then194:                                       ; preds = %for.end192
  %call1.i150 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 2)
  br label %if.end199

if.else196:                                       ; preds = %for.end192
  %call197 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %max.4)
  %vtable.i263 = load ptr, ptr %call197, align 8, !tbaa !5
  %vbase.offset.ptr.i264 = getelementptr i8, ptr %vtable.i263, i64 -24
  %vbase.offset.i265 = load i64, ptr %vbase.offset.ptr.i264, align 8
  %add.ptr.i266 = getelementptr inbounds i8, ptr %call197, i64 %vbase.offset.i265
  %call.i267 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i266, i8 noundef signext 10)
  %call1.i268 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call197, i8 noundef signext %call.i267)
  %call.i.i269 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i268)
  br label %if.end199

if.end199:                                        ; preds = %if.else196, %if.then194
  %max.8 = phi i32 [ -1, %if.then194 ], [ %max.4, %if.else196 ]
  %27 = call i32 @llvm.smax.i32(i32 %conv, i32 1)
  %28 = add nsw i32 %27, -1
  %wide.trip.count324 = zext nneg i32 %28 to i64
  br label %for.cond200

for.cond200:                                      ; preds = %for.cond200.backedge, %if.end199
  %indvars.iv319 = phi i64 [ 0, %if.end199 ], [ %indvars.iv.next320, %for.cond200.backedge ]
  %exitcond325 = icmp eq i64 %indvars.iv319, %wide.trip.count324
  br i1 %exitcond325, label %for.end261, label %for.body203

for.body203:                                      ; preds = %for.cond200
  %arrayidx205 = getelementptr inbounds nuw [505 x i8], ptr %str, i64 0, i64 %indvars.iv319
  %29 = load i8, ptr %arrayidx205, align 1, !tbaa !36
  %conv206 = sext i8 %29 to i64
  %sub207 = add nsw i64 %conv206, -96
  %indvars.iv.next320 = add nuw nsw i64 %indvars.iv319, 1
  %arrayidx212 = getelementptr inbounds nuw [505 x i8], ptr %str, i64 0, i64 %indvars.iv.next320
  %30 = load i8, ptr %arrayidx212, align 1, !tbaa !36
  %conv213 = sext i8 %30 to i64
  %sub214 = add nsw i64 %conv213, -96
  %31 = add nuw nsw i64 %indvars.iv319, 2
  %arrayidx219 = getelementptr inbounds nuw [505 x i8], ptr %str, i64 0, i64 %31
  %32 = load i8, ptr %arrayidx219, align 1, !tbaa !36
  %conv220 = sext i8 %32 to i64
  %sub221 = add nsw i64 %conv220, -96
  %arrayidx223 = getelementptr inbounds [27 x [27 x [27 x i32]]], ptr %fre107, i64 0, i64 %sub207, i64 %sub214, i64 %sub221
  %33 = load i32, ptr %arrayidx223, align 4, !tbaa !31
  %cmp224 = icmp eq i32 %33, %max.8
  br i1 %cmp224, label %if.then225, label %for.cond200.backedge

for.cond200.backedge:                             ; preds = %for.body203, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit191
  br label %for.cond200, !llvm.loop !48

if.then225:                                       ; preds = %for.body203
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__c.addr.i153)
  store i8 %29, ptr %__c.addr.i153, align 1, !tbaa !36
  %vtable.i154 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !5
  %vbase.offset.ptr.i155 = getelementptr i8, ptr %vtable.i154, i64 -24
  %vbase.offset.i156 = load i64, ptr %vbase.offset.ptr.i155, align 8
  %gep = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 16), i64 %vbase.offset.i156
  %34 = load i64, ptr %gep, align 8, !tbaa !8
  %cmp.not.i159 = icmp eq i64 %34, 0
  br i1 %cmp.not.i159, label %if.end.i163, label %if.then.i160

if.then.i160:                                     ; preds = %if.then225
  %call1.i161 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %__c.addr.i153, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit165

if.end.i163:                                      ; preds = %if.then225
  %call2.i164 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %29)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit165

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit165: ; preds = %if.then.i160, %if.end.i163
  %retval.0.i162 = phi ptr [ %call1.i161, %if.then.i160 ], [ @_ZSt4cout, %if.end.i163 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__c.addr.i153)
  %35 = load i8, ptr %arrayidx212, align 1, !tbaa !36
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__c.addr.i166)
  store i8 %35, ptr %__c.addr.i166, align 1, !tbaa !36
  %vtable.i167 = load ptr, ptr %retval.0.i162, align 8, !tbaa !5
  %vbase.offset.ptr.i168 = getelementptr i8, ptr %vtable.i167, i64 -24
  %vbase.offset.i169 = load i64, ptr %vbase.offset.ptr.i168, align 8
  %add.ptr.i170 = getelementptr inbounds i8, ptr %retval.0.i162, i64 %vbase.offset.i169
  %_M_width.i.i171 = getelementptr inbounds nuw i8, ptr %add.ptr.i170, i64 16
  %36 = load i64, ptr %_M_width.i.i171, align 8, !tbaa !8
  %cmp.not.i172 = icmp eq i64 %36, 0
  br i1 %cmp.not.i172, label %if.end.i176, label %if.then.i173

if.then.i173:                                     ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit165
  %call1.i174 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %retval.0.i162, ptr noundef nonnull %__c.addr.i166, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit178

if.end.i176:                                      ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit165
  %call2.i177 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %retval.0.i162, i8 noundef signext %35)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit178

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit178: ; preds = %if.then.i173, %if.end.i176
  %retval.0.i175 = phi ptr [ %call1.i174, %if.then.i173 ], [ %retval.0.i162, %if.end.i176 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__c.addr.i166)
  %37 = load i8, ptr %arrayidx219, align 1, !tbaa !36
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__c.addr.i179)
  store i8 %37, ptr %__c.addr.i179, align 1, !tbaa !36
  %vtable.i180 = load ptr, ptr %retval.0.i175, align 8, !tbaa !5
  %vbase.offset.ptr.i181 = getelementptr i8, ptr %vtable.i180, i64 -24
  %vbase.offset.i182 = load i64, ptr %vbase.offset.ptr.i181, align 8
  %add.ptr.i183 = getelementptr inbounds i8, ptr %retval.0.i175, i64 %vbase.offset.i182
  %_M_width.i.i184 = getelementptr inbounds nuw i8, ptr %add.ptr.i183, i64 16
  %38 = load i64, ptr %_M_width.i.i184, align 8, !tbaa !8
  %cmp.not.i185 = icmp eq i64 %38, 0
  br i1 %cmp.not.i185, label %if.end.i189, label %if.then.i186

if.then.i186:                                     ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit178
  %call1.i187 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %retval.0.i175, ptr noundef nonnull %__c.addr.i179, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit191

if.end.i189:                                      ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit178
  %call2.i190 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %retval.0.i175, i8 noundef signext %37)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit191

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit191: ; preds = %if.then.i186, %if.end.i189
  %retval.0.i188 = phi ptr [ %call1.i187, %if.then.i186 ], [ %retval.0.i175, %if.end.i189 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__c.addr.i179)
  %vtable.i270 = load ptr, ptr %retval.0.i188, align 8, !tbaa !5
  %vbase.offset.ptr.i271 = getelementptr i8, ptr %vtable.i270, i64 -24
  %vbase.offset.i272 = load i64, ptr %vbase.offset.ptr.i271, align 8
  %add.ptr.i273 = getelementptr inbounds i8, ptr %retval.0.i188, i64 %vbase.offset.i272
  %call.i274 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i273, i8 noundef signext 10)
  %call1.i275 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %retval.0.i188, i8 noundef signext %call.i274)
  %call.i.i276 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i275)
  %39 = load i8, ptr %arrayidx205, align 1, !tbaa !36
  %conv240 = sext i8 %39 to i64
  %sub241 = add nsw i64 %conv240, -96
  %40 = load i8, ptr %arrayidx212, align 1, !tbaa !36
  %conv247 = sext i8 %40 to i64
  %sub248 = add nsw i64 %conv247, -96
  %41 = load i8, ptr %arrayidx219, align 1, !tbaa !36
  %conv254 = sext i8 %41 to i64
  %sub255 = add nsw i64 %conv254, -96
  %arrayidx257 = getelementptr inbounds [27 x [27 x [27 x i32]]], ptr %fre107, i64 0, i64 %sub241, i64 %sub248, i64 %sub255
  store i32 0, ptr %arrayidx257, align 4, !tbaa !31
  br label %for.cond200.backedge

for.end261:                                       ; preds = %for.cond200
  call void @llvm.lifetime.end.p0(i64 78732, ptr nonnull %fre107) #6
  br label %if.end461

for.cond263:                                      ; preds = %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit, %for.inc292
  %indvars.iv365 = phi i64 [ %indvars.iv.next366, %for.inc292 ], [ 1, %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit ]
  %exitcond368.not = icmp eq i64 %indvars.iv365, 27
  br i1 %exitcond368.not, label %for.cond295.preheader, label %for.cond266

for.cond295.preheader:                            ; preds = %for.cond263
  %42 = call i32 @llvm.smax.i32(i32 %conv, i32 3)
  %43 = add nsw i32 %42, -3
  %wide.trip.count375 = zext nneg i32 %43 to i64
  br label %for.cond295

for.cond266:                                      ; preds = %for.cond263, %for.inc289
  %indvars.iv361 = phi i64 [ %indvars.iv.next362, %for.inc289 ], [ 1, %for.cond263 ]
  %exitcond364.not = icmp eq i64 %indvars.iv361, 27
  br i1 %exitcond364.not, label %for.inc292, label %for.cond269

for.cond269:                                      ; preds = %for.cond266, %for.inc286
  %indvars.iv357 = phi i64 [ %indvars.iv.next358, %for.inc286 ], [ 1, %for.cond266 ]
  %exitcond360.not = icmp eq i64 %indvars.iv357, 27
  br i1 %exitcond360.not, label %for.inc289, label %for.cond272

for.cond272:                                      ; preds = %for.cond269, %for.body274
  %indvars.iv353 = phi i64 [ %indvars.iv.next354, %for.body274 ], [ 1, %for.cond269 ]
  %exitcond356.not = icmp eq i64 %indvars.iv353, 27
  br i1 %exitcond356.not, label %for.inc286, label %for.body274

for.body274:                                      ; preds = %for.cond272
  %arrayidx282 = getelementptr inbounds nuw [27 x [27 x [27 x [27 x i32]]]], ptr @freq, i64 0, i64 %indvars.iv365, i64 %indvars.iv361, i64 %indvars.iv357, i64 %indvars.iv353
  store i32 0, ptr %arrayidx282, align 4, !tbaa !31
  %indvars.iv.next354 = add nuw nsw i64 %indvars.iv353, 1
  br label %for.cond272, !llvm.loop !49

for.inc286:                                       ; preds = %for.cond272
  %indvars.iv.next358 = add nuw nsw i64 %indvars.iv357, 1
  br label %for.cond269, !llvm.loop !50

for.inc289:                                       ; preds = %for.cond269
  %indvars.iv.next362 = add nuw nsw i64 %indvars.iv361, 1
  br label %for.cond266, !llvm.loop !51

for.inc292:                                       ; preds = %for.cond266
  %indvars.iv.next366 = add nuw nsw i64 %indvars.iv365, 1
  br label %for.cond263, !llvm.loop !52

for.cond295:                                      ; preds = %for.cond295.preheader, %for.body298
  %indvars.iv369 = phi i64 [ 0, %for.cond295.preheader ], [ %indvars.iv.next370, %for.body298 ]
  %exitcond376 = icmp eq i64 %indvars.iv369, %wide.trip.count375
  br i1 %exitcond376, label %for.cond330, label %for.body298

for.body298:                                      ; preds = %for.cond295
  %arrayidx300 = getelementptr inbounds nuw [505 x i8], ptr %str, i64 0, i64 %indvars.iv369
  %44 = load i8, ptr %arrayidx300, align 1, !tbaa !36
  %conv301 = sext i8 %44 to i64
  %sub302 = add nsw i64 %conv301, -96
  %indvars.iv.next370 = add nuw nsw i64 %indvars.iv369, 1
  %arrayidx307 = getelementptr inbounds nuw [505 x i8], ptr %str, i64 0, i64 %indvars.iv.next370
  %45 = load i8, ptr %arrayidx307, align 1, !tbaa !36
  %conv308 = sext i8 %45 to i64
  %sub309 = add nsw i64 %conv308, -96
  %46 = add nuw nsw i64 %indvars.iv369, 2
  %arrayidx314 = getelementptr inbounds nuw [505 x i8], ptr %str, i64 0, i64 %46
  %47 = load i8, ptr %arrayidx314, align 1, !tbaa !36
  %conv315 = sext i8 %47 to i64
  %sub316 = add nsw i64 %conv315, -96
  %48 = add nuw nsw i64 %indvars.iv369, 3
  %arrayidx321 = getelementptr inbounds nuw [505 x i8], ptr %str, i64 0, i64 %48
  %49 = load i8, ptr %arrayidx321, align 1, !tbaa !36
  %conv322 = sext i8 %49 to i64
  %sub323 = add nsw i64 %conv322, -96
  %arrayidx325 = getelementptr inbounds [27 x [27 x [27 x [27 x i32]]]], ptr @freq, i64 0, i64 %sub302, i64 %sub309, i64 %sub316, i64 %sub323
  %50 = load i32, ptr %arrayidx325, align 4, !tbaa !31
  %inc326 = add nsw i32 %50, 1
  store i32 %inc326, ptr %arrayidx325, align 4, !tbaa !31
  br label %for.cond295, !llvm.loop !53

for.cond330:                                      ; preds = %for.cond295, %for.inc370
  %indvars.iv389 = phi i64 [ %indvars.iv.next390, %for.inc370 ], [ 1, %for.cond295 ]
  %max.9 = phi i32 [ %max.10, %for.inc370 ], [ 0, %for.cond295 ]
  %exitcond392.not = icmp eq i64 %indvars.iv389, 27
  br i1 %exitcond392.not, label %for.end372, label %for.cond333

for.cond333:                                      ; preds = %for.cond330, %for.inc367
  %indvars.iv385 = phi i64 [ %indvars.iv.next386, %for.inc367 ], [ 1, %for.cond330 ]
  %max.10 = phi i32 [ %max.11, %for.inc367 ], [ %max.9, %for.cond330 ]
  %exitcond388.not = icmp eq i64 %indvars.iv385, 27
  br i1 %exitcond388.not, label %for.inc370, label %for.cond336

for.cond336:                                      ; preds = %for.cond333, %for.inc364
  %indvars.iv381 = phi i64 [ %indvars.iv.next382, %for.inc364 ], [ 1, %for.cond333 ]
  %max.11 = phi i32 [ %max.12, %for.inc364 ], [ %max.10, %for.cond333 ]
  %exitcond384.not = icmp eq i64 %indvars.iv381, 27
  br i1 %exitcond384.not, label %for.inc367, label %for.cond339

for.cond339:                                      ; preds = %for.cond336, %for.body341
  %indvars.iv377 = phi i64 [ %indvars.iv.next378, %for.body341 ], [ 1, %for.cond336 ]
  %max.12 = phi i32 [ %spec.select128, %for.body341 ], [ %max.11, %for.cond336 ]
  %exitcond380.not = icmp eq i64 %indvars.iv377, 27
  br i1 %exitcond380.not, label %for.inc364, label %for.body341

for.body341:                                      ; preds = %for.cond339
  %arrayidx349 = getelementptr inbounds nuw [27 x [27 x [27 x [27 x i32]]]], ptr @freq, i64 0, i64 %indvars.iv389, i64 %indvars.iv385, i64 %indvars.iv381, i64 %indvars.iv377
  %51 = load i32, ptr %arrayidx349, align 4, !tbaa !31
  %spec.select128 = call i32 @llvm.smax.i32(i32 %51, i32 %max.12)
  %indvars.iv.next378 = add nuw nsw i64 %indvars.iv377, 1
  br label %for.cond339, !llvm.loop !54

for.inc364:                                       ; preds = %for.cond339
  %indvars.iv.next382 = add nuw nsw i64 %indvars.iv381, 1
  br label %for.cond336, !llvm.loop !55

for.inc367:                                       ; preds = %for.cond336
  %indvars.iv.next386 = add nuw nsw i64 %indvars.iv385, 1
  br label %for.cond333, !llvm.loop !56

for.inc370:                                       ; preds = %for.cond333
  %indvars.iv.next390 = add nuw nsw i64 %indvars.iv389, 1
  br label %for.cond330, !llvm.loop !57

for.end372:                                       ; preds = %for.cond330
  %cmp373 = icmp eq i32 %max.9, 1
  br i1 %cmp373, label %if.then374, label %if.else376

if.then374:                                       ; preds = %for.end372
  %call1.i194 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 2)
  br label %if.end379

if.else376:                                       ; preds = %for.end372
  %call377 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %max.9)
  %vtable.i277 = load ptr, ptr %call377, align 8, !tbaa !5
  %vbase.offset.ptr.i278 = getelementptr i8, ptr %vtable.i277, i64 -24
  %vbase.offset.i279 = load i64, ptr %vbase.offset.ptr.i278, align 8
  %add.ptr.i280 = getelementptr inbounds i8, ptr %call377, i64 %vbase.offset.i279
  %call.i281 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i280, i8 noundef signext 10)
  %call1.i282 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call377, i8 noundef signext %call.i281)
  %call.i.i283 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i282)
  br label %if.end379

if.end379:                                        ; preds = %if.else376, %if.then374
  %max.14 = phi i32 [ -1, %if.then374 ], [ %max.9, %if.else376 ]
  %52 = call i32 @llvm.smax.i32(i32 %conv, i32 1)
  %53 = add nsw i32 %52, -1
  %wide.trip.count399 = zext nneg i32 %53 to i64
  br label %for.cond380

for.cond380:                                      ; preds = %for.cond380.backedge, %if.end379
  %indvars.iv393 = phi i64 [ 0, %if.end379 ], [ %indvars.iv.next394, %for.cond380.backedge ]
  %exitcond400 = icmp eq i64 %indvars.iv393, %wide.trip.count399
  br i1 %exitcond400, label %if.end461, label %for.body383

for.body383:                                      ; preds = %for.cond380
  %arrayidx385 = getelementptr inbounds nuw [505 x i8], ptr %str, i64 0, i64 %indvars.iv393
  %54 = load i8, ptr %arrayidx385, align 1, !tbaa !36
  %conv386 = sext i8 %54 to i64
  %sub387 = add nsw i64 %conv386, -96
  %indvars.iv.next394 = add nuw nsw i64 %indvars.iv393, 1
  %arrayidx392 = getelementptr inbounds nuw [505 x i8], ptr %str, i64 0, i64 %indvars.iv.next394
  %55 = load i8, ptr %arrayidx392, align 1, !tbaa !36
  %conv393 = sext i8 %55 to i64
  %sub394 = add nsw i64 %conv393, -96
  %56 = add nuw nsw i64 %indvars.iv393, 2
  %arrayidx399 = getelementptr inbounds nuw [505 x i8], ptr %str, i64 0, i64 %56
  %57 = load i8, ptr %arrayidx399, align 1, !tbaa !36
  %conv400 = sext i8 %57 to i64
  %sub401 = add nsw i64 %conv400, -96
  %58 = add nuw nsw i64 %indvars.iv393, 3
  %arrayidx406 = getelementptr inbounds nuw [505 x i8], ptr %str, i64 0, i64 %58
  %59 = load i8, ptr %arrayidx406, align 1, !tbaa !36
  %conv407 = sext i8 %59 to i64
  %sub408 = add nsw i64 %conv407, -96
  %arrayidx410 = getelementptr inbounds [27 x [27 x [27 x [27 x i32]]]], ptr @freq, i64 0, i64 %sub387, i64 %sub394, i64 %sub401, i64 %sub408
  %60 = load i32, ptr %arrayidx410, align 4, !tbaa !31
  %cmp411 = icmp eq i32 %60, %max.14
  br i1 %cmp411, label %if.then412, label %for.cond380.backedge

for.cond380.backedge:                             ; preds = %for.body383, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit248
  br label %for.cond380, !llvm.loop !58

if.then412:                                       ; preds = %for.body383
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__c.addr.i197)
  store i8 %54, ptr %__c.addr.i197, align 1, !tbaa !36
  %vtable.i198 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !5
  %vbase.offset.ptr.i199 = getelementptr i8, ptr %vtable.i198, i64 -24
  %vbase.offset.i200 = load i64, ptr %vbase.offset.ptr.i199, align 8
  %gep292 = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 16), i64 %vbase.offset.i200
  %61 = load i64, ptr %gep292, align 8, !tbaa !8
  %cmp.not.i203 = icmp eq i64 %61, 0
  br i1 %cmp.not.i203, label %if.end.i207, label %if.then.i204

if.then.i204:                                     ; preds = %if.then412
  %call1.i205 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %__c.addr.i197, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit209

if.end.i207:                                      ; preds = %if.then412
  %call2.i208 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %54)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit209

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit209: ; preds = %if.then.i204, %if.end.i207
  %retval.0.i206 = phi ptr [ %call1.i205, %if.then.i204 ], [ @_ZSt4cout, %if.end.i207 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__c.addr.i197)
  %62 = load i8, ptr %arrayidx392, align 1, !tbaa !36
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__c.addr.i210)
  store i8 %62, ptr %__c.addr.i210, align 1, !tbaa !36
  %vtable.i211 = load ptr, ptr %retval.0.i206, align 8, !tbaa !5
  %vbase.offset.ptr.i212 = getelementptr i8, ptr %vtable.i211, i64 -24
  %vbase.offset.i213 = load i64, ptr %vbase.offset.ptr.i212, align 8
  %add.ptr.i214 = getelementptr inbounds i8, ptr %retval.0.i206, i64 %vbase.offset.i213
  %_M_width.i.i215 = getelementptr inbounds nuw i8, ptr %add.ptr.i214, i64 16
  %63 = load i64, ptr %_M_width.i.i215, align 8, !tbaa !8
  %cmp.not.i216 = icmp eq i64 %63, 0
  br i1 %cmp.not.i216, label %if.end.i220, label %if.then.i217

if.then.i217:                                     ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit209
  %call1.i218 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %retval.0.i206, ptr noundef nonnull %__c.addr.i210, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit222

if.end.i220:                                      ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit209
  %call2.i221 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %retval.0.i206, i8 noundef signext %62)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit222

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit222: ; preds = %if.then.i217, %if.end.i220
  %retval.0.i219 = phi ptr [ %call1.i218, %if.then.i217 ], [ %retval.0.i206, %if.end.i220 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__c.addr.i210)
  %64 = load i8, ptr %arrayidx399, align 1, !tbaa !36
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__c.addr.i223)
  store i8 %64, ptr %__c.addr.i223, align 1, !tbaa !36
  %vtable.i224 = load ptr, ptr %retval.0.i219, align 8, !tbaa !5
  %vbase.offset.ptr.i225 = getelementptr i8, ptr %vtable.i224, i64 -24
  %vbase.offset.i226 = load i64, ptr %vbase.offset.ptr.i225, align 8
  %add.ptr.i227 = getelementptr inbounds i8, ptr %retval.0.i219, i64 %vbase.offset.i226
  %_M_width.i.i228 = getelementptr inbounds nuw i8, ptr %add.ptr.i227, i64 16
  %65 = load i64, ptr %_M_width.i.i228, align 8, !tbaa !8
  %cmp.not.i229 = icmp eq i64 %65, 0
  br i1 %cmp.not.i229, label %if.end.i233, label %if.then.i230

if.then.i230:                                     ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit222
  %call1.i231 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %retval.0.i219, ptr noundef nonnull %__c.addr.i223, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit235

if.end.i233:                                      ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit222
  %call2.i234 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %retval.0.i219, i8 noundef signext %64)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit235

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit235: ; preds = %if.then.i230, %if.end.i233
  %retval.0.i232 = phi ptr [ %call1.i231, %if.then.i230 ], [ %retval.0.i219, %if.end.i233 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__c.addr.i223)
  %66 = load i8, ptr %arrayidx406, align 1, !tbaa !36
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__c.addr.i236)
  store i8 %66, ptr %__c.addr.i236, align 1, !tbaa !36
  %vtable.i237 = load ptr, ptr %retval.0.i232, align 8, !tbaa !5
  %vbase.offset.ptr.i238 = getelementptr i8, ptr %vtable.i237, i64 -24
  %vbase.offset.i239 = load i64, ptr %vbase.offset.ptr.i238, align 8
  %add.ptr.i240 = getelementptr inbounds i8, ptr %retval.0.i232, i64 %vbase.offset.i239
  %_M_width.i.i241 = getelementptr inbounds nuw i8, ptr %add.ptr.i240, i64 16
  %67 = load i64, ptr %_M_width.i.i241, align 8, !tbaa !8
  %cmp.not.i242 = icmp eq i64 %67, 0
  br i1 %cmp.not.i242, label %if.end.i246, label %if.then.i243

if.then.i243:                                     ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit235
  %call1.i244 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %retval.0.i232, ptr noundef nonnull %__c.addr.i236, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit248

if.end.i246:                                      ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit235
  %call2.i247 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %retval.0.i232, i8 noundef signext %66)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit248

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit248: ; preds = %if.then.i243, %if.end.i246
  %retval.0.i245 = phi ptr [ %call1.i244, %if.then.i243 ], [ %retval.0.i232, %if.end.i246 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__c.addr.i236)
  %vtable.i284 = load ptr, ptr %retval.0.i245, align 8, !tbaa !5
  %vbase.offset.ptr.i285 = getelementptr i8, ptr %vtable.i284, i64 -24
  %vbase.offset.i286 = load i64, ptr %vbase.offset.ptr.i285, align 8
  %add.ptr.i287 = getelementptr inbounds i8, ptr %retval.0.i245, i64 %vbase.offset.i286
  %call.i288 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i287, i8 noundef signext 10)
  %call1.i289 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %retval.0.i245, i8 noundef signext %call.i288)
  %call.i.i290 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i289)
  %68 = load i8, ptr %arrayidx385, align 1, !tbaa !36
  %conv431 = sext i8 %68 to i64
  %sub432 = add nsw i64 %conv431, -96
  %69 = load i8, ptr %arrayidx392, align 1, !tbaa !36
  %conv438 = sext i8 %69 to i64
  %sub439 = add nsw i64 %conv438, -96
  %70 = load i8, ptr %arrayidx399, align 1, !tbaa !36
  %conv445 = sext i8 %70 to i64
  %sub446 = add nsw i64 %conv445, -96
  %71 = load i8, ptr %arrayidx406, align 1, !tbaa !36
  %conv452 = sext i8 %71 to i64
  %sub453 = add nsw i64 %conv452, -96
  %arrayidx455 = getelementptr inbounds [27 x [27 x [27 x [27 x i32]]]], ptr @freq, i64 0, i64 %sub432, i64 %sub439, i64 %sub446, i64 %sub453
  store i32 0, ptr %arrayidx455, align 4, !tbaa !31
  br label %for.cond380.backedge

if.end461:                                        ; preds = %for.cond380, %for.end261, %for.end103
  call void @llvm.lifetime.end.p0(i64 505, ptr nonnull %str) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #6
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
!6 = !{!"vtable pointer", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !10, i64 16}
!9 = !{!"_ZTSSt8ios_base", !10, i64 8, !10, i64 16, !12, i64 24, !13, i64 28, !13, i64 32, !14, i64 40, !16, i64 48, !11, i64 64, !17, i64 192, !18, i64 200, !19, i64 208}
!10 = !{!"long", !11, i64 0}
!11 = !{!"omnipotent char", !7, i64 0}
!12 = !{!"_ZTSSt13_Ios_Fmtflags", !11, i64 0}
!13 = !{!"_ZTSSt12_Ios_Iostate", !11, i64 0}
!14 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !15, i64 0}
!15 = !{!"any pointer", !11, i64 0}
!16 = !{!"_ZTSNSt8ios_base6_WordsE", !15, i64 0, !10, i64 8}
!17 = !{!"int", !11, i64 0}
!18 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !15, i64 0}
!19 = !{!"_ZTSSt6locale", !20, i64 0}
!20 = !{!"p1 _ZTSNSt6locale5_ImplE", !15, i64 0}
!21 = !{!9, !13, i64 32}
!22 = !{!23, !26, i64 232}
!23 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !9, i64 0, !24, i64 216, !11, i64 224, !25, i64 225, !26, i64 232, !27, i64 240, !28, i64 248, !29, i64 256}
!24 = !{!"p1 _ZTSSo", !15, i64 0}
!25 = !{!"bool", !11, i64 0}
!26 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !15, i64 0}
!27 = !{!"p1 _ZTSSt5ctypeIcE", !15, i64 0}
!28 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !15, i64 0}
!29 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !15, i64 0}
!30 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!31 = !{!17, !17, i64 0}
!32 = distinct !{!32, !33, !34}
!33 = !{!"llvm.loop.mustprogress"}
!34 = !{!"llvm.loop.unroll.disable"}
!35 = distinct !{!35, !33, !34}
!36 = !{!11, !11, i64 0}
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
