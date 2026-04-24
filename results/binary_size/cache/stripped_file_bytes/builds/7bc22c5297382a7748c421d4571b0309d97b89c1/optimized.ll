; ModuleID = '<stdin>'
source_filename = "/tmp/tmpcngjffg9.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%struct.information = type { [20 x i8], [20 x i8], i8, i32, [100 x i8], [20 x i8] }

@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %stu = alloca [1000 x %struct.information], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 168000, ptr noundef nonnull align 16 dereferenceable(168000) %stu) #8
  %vtable.i = load ptr, ptr @_ZSt3cin, align 8
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  br label %for.cond

for.cond:                                         ; preds = %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit82, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit82 ], [ 0, %entry ]
  %exitcond.not = icmp eq i64 %indvars.iv, 1000
  br i1 %exitcond.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [1000 x %struct.information], ptr %stu, i64 0, i64 %indvars.iv
  %0 = call i64 @llvm.objectsize.i64.p0(ptr nonnull %arrayidx, i1 noundef false, i1 noundef true, i1 noundef false) #9
  switch i64 %0, label %if.then6.i [
    i64 0, label %do.end.i
    i64 -1, label %if.else34.i
  ]

do.end.i:                                         ; preds = %for.body
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8, !invariant.load !5
  %add.ptr.i = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset.i
  %_M_width.i.i = getelementptr inbounds nuw i8, ptr %add.ptr.i, i64 16
  store i64 0, ptr %_M_width.i.i, align 8, !tbaa !6
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i, i32 noundef 4)
  br label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit

if.then6.i:                                       ; preds = %for.body
  %vbase.offset9.i = load i64, ptr %vbase.offset.ptr.i, align 8, !invariant.load !5
  %add.ptr10.i = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset9.i
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull %arrayidx, i64 noundef %0)
  %call16.i = call noundef zeroext i1 @_ZNKSt9basic_iosIcSt11char_traitsIcEE4goodEv(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr10.i) #10
  br i1 %call16.i, label %land.lhs.true.i, label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit

land.lhs.true.i:                                  ; preds = %if.then6.i
  %_M_width.i4.i = getelementptr inbounds nuw i8, ptr %add.ptr10.i, i64 16
  %1 = load i64, ptr %_M_width.i4.i, align 8, !tbaa !6, !invariant.load !5
  %cmp17.i = icmp slt i64 %1, 1
  %cmp18.i = icmp ult i64 %0, %1
  %or.cond.i = or i1 %cmp17.i, %cmp18.i
  br i1 %or.cond.i, label %if.then19.i, label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit

if.then19.i:                                      ; preds = %land.lhs.true.i
  %call24.i = call noundef ptr @_ZNKSt9basic_iosIcSt11char_traitsIcEE5rdbufEv(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr10.i) #10
  %call25.i = call noundef i32 @_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv(ptr noundef nonnull align 8 dereferenceable(64) %call24.i)
  %cmp.i.i = icmp eq i32 %call25.i, -1
  %conv.i = zext i1 %cmp.i.i to i64
  %expval.i = call i64 @llvm.expect.i64(i64 noundef %conv.i, i64 noundef 1)
  %tobool.not.i = icmp eq i64 %expval.i, 0
  br i1 %tobool.not.i, label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit, label %if.then28.i

if.then28.i:                                      ; preds = %if.then19.i
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr10.i, i32 noundef 2)
  br label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit

if.else34.i:                                      ; preds = %for.body
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull %arrayidx, i64 noundef 9223372036854775807)
  br label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit

_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit: ; preds = %do.end.i, %if.then6.i, %land.lhs.true.i, %if.then19.i, %if.then28.i, %if.else34.i
  %2 = load i8, ptr %arrayidx, align 8, !tbaa !20, !invariant.load !5
  %cmp5 = icmp eq i8 %2, 101
  br i1 %cmp5, label %land.lhs.true, label %for.inc

land.lhs.true:                                    ; preds = %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit
  %arrayidx9 = getelementptr inbounds nuw i8, ptr %arrayidx, i64 1
  %3 = load i8, ptr %arrayidx9, align 1, !tbaa !20, !invariant.load !5
  %cmp11 = icmp eq i8 %3, 110
  br i1 %cmp11, label %land.lhs.true12, label %for.inc

land.lhs.true12:                                  ; preds = %land.lhs.true
  %arrayidx16 = getelementptr inbounds nuw i8, ptr %arrayidx, i64 2
  %4 = load i8, ptr %arrayidx16, align 2, !tbaa !20, !invariant.load !5
  %cmp18 = icmp eq i8 %4, 100
  br i1 %cmp18, label %if.then, label %for.inc

if.then:                                          ; preds = %land.lhs.true12
  %5 = trunc nuw nsw i64 %indvars.iv to i32
  %sub = add nsw i32 %5, -1
  br label %for.end

for.inc:                                          ; preds = %land.lhs.true12, %land.lhs.true, %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit
  %name = getelementptr inbounds nuw i8, ptr %arrayidx, i64 20
  %6 = call i64 @llvm.objectsize.i64.p0(ptr nonnull %name, i1 noundef false, i1 noundef true, i1 noundef false)
  switch i64 %6, label %if.then6.i9 [
    i64 0, label %do.end.i3
    i64 -1, label %if.else34.i2
  ]

do.end.i3:                                        ; preds = %for.inc
  %vbase.offset.i6 = load i64, ptr %vbase.offset.ptr.i, align 8, !invariant.load !5
  %add.ptr.i7 = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset.i6
  %_M_width.i.i8 = getelementptr inbounds nuw i8, ptr %add.ptr.i7, i64 16
  store i64 0, ptr %_M_width.i.i8, align 8, !tbaa !6
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i7, i32 noundef 4)
  br label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit28

if.then6.i9:                                      ; preds = %for.inc
  %vbase.offset9.i12 = load i64, ptr %vbase.offset.ptr.i, align 8, !invariant.load !5
  %add.ptr10.i13 = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset9.i12
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull %name, i64 noundef %6)
  %call16.i14 = call noundef zeroext i1 @_ZNKSt9basic_iosIcSt11char_traitsIcEE4goodEv(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr10.i13) #10
  br i1 %call16.i14, label %land.lhs.true.i15, label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit28

land.lhs.true.i15:                                ; preds = %if.then6.i9
  %_M_width.i4.i16 = getelementptr inbounds nuw i8, ptr %add.ptr10.i13, i64 16
  %7 = load i64, ptr %_M_width.i4.i16, align 8, !tbaa !6, !invariant.load !5
  %cmp17.i17 = icmp slt i64 %7, 1
  %cmp18.i18 = icmp ult i64 %6, %7
  %or.cond.i19 = or i1 %cmp17.i17, %cmp18.i18
  br i1 %or.cond.i19, label %if.then19.i20, label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit28

if.then19.i20:                                    ; preds = %land.lhs.true.i15
  %call24.i21 = call noundef ptr @_ZNKSt9basic_iosIcSt11char_traitsIcEE5rdbufEv(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr10.i13) #10
  %call25.i22 = call noundef i32 @_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv(ptr noundef nonnull align 8 dereferenceable(64) %call24.i21)
  %cmp.i.i23 = icmp eq i32 %call25.i22, -1
  %conv.i24 = zext i1 %cmp.i.i23 to i64
  %expval.i25 = call i64 @llvm.expect.i64(i64 noundef %conv.i24, i64 noundef 1)
  %tobool.not.i26 = icmp eq i64 %expval.i25, 0
  br i1 %tobool.not.i26, label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit28, label %if.then28.i27

if.then28.i27:                                    ; preds = %if.then19.i20
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr10.i13, i32 noundef 2)
  br label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit28

if.else34.i2:                                     ; preds = %for.inc
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull %name, i64 noundef 9223372036854775807)
  br label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit28

_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit28: ; preds = %do.end.i3, %if.then6.i9, %land.lhs.true.i15, %if.then19.i20, %if.then28.i27, %if.else34.i2
  %sex = getelementptr inbounds nuw i8, ptr %arrayidx, i64 40
  %call25 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_RS3_(ptr noundef nonnull align 8 dereferenceable(280) @_ZSt3cin, ptr noundef nonnull align 1 dereferenceable(1) %sex)
  %age = getelementptr inbounds nuw i8, ptr %arrayidx, i64 44
  %call28 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(280) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %age)
  %score = getelementptr inbounds nuw i8, ptr %arrayidx, i64 48
  %8 = call i64 @llvm.objectsize.i64.p0(ptr nonnull %score, i1 noundef false, i1 noundef true, i1 noundef false)
  switch i64 %8, label %if.then6.i36 [
    i64 0, label %do.end.i30
    i64 -1, label %if.else34.i29
  ]

do.end.i30:                                       ; preds = %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit28
  %vbase.offset.i33 = load i64, ptr %vbase.offset.ptr.i, align 8, !invariant.load !5
  %add.ptr.i34 = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset.i33
  %_M_width.i.i35 = getelementptr inbounds nuw i8, ptr %add.ptr.i34, i64 16
  store i64 0, ptr %_M_width.i.i35, align 8, !tbaa !6
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i34, i32 noundef 4)
  br label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit55

if.then6.i36:                                     ; preds = %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit28
  %vbase.offset9.i39 = load i64, ptr %vbase.offset.ptr.i, align 8, !invariant.load !5
  %add.ptr10.i40 = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset9.i39
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull %score, i64 noundef %8)
  %call16.i41 = call noundef zeroext i1 @_ZNKSt9basic_iosIcSt11char_traitsIcEE4goodEv(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr10.i40) #10
  br i1 %call16.i41, label %land.lhs.true.i42, label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit55

land.lhs.true.i42:                                ; preds = %if.then6.i36
  %_M_width.i4.i43 = getelementptr inbounds nuw i8, ptr %add.ptr10.i40, i64 16
  %9 = load i64, ptr %_M_width.i4.i43, align 8, !tbaa !6, !invariant.load !5
  %cmp17.i44 = icmp slt i64 %9, 1
  %cmp18.i45 = icmp ult i64 %8, %9
  %or.cond.i46 = or i1 %cmp17.i44, %cmp18.i45
  br i1 %or.cond.i46, label %if.then19.i47, label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit55

if.then19.i47:                                    ; preds = %land.lhs.true.i42
  %call24.i48 = call noundef ptr @_ZNKSt9basic_iosIcSt11char_traitsIcEE5rdbufEv(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr10.i40) #10
  %call25.i49 = call noundef i32 @_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv(ptr noundef nonnull align 8 dereferenceable(64) %call24.i48)
  %cmp.i.i50 = icmp eq i32 %call25.i49, -1
  %conv.i51 = zext i1 %cmp.i.i50 to i64
  %expval.i52 = call i64 @llvm.expect.i64(i64 noundef %conv.i51, i64 noundef 1)
  %tobool.not.i53 = icmp eq i64 %expval.i52, 0
  br i1 %tobool.not.i53, label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit55, label %if.then28.i54

if.then28.i54:                                    ; preds = %if.then19.i47
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr10.i40, i32 noundef 2)
  br label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit55

if.else34.i29:                                    ; preds = %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit28
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull %score, i64 noundef 9223372036854775807)
  br label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit55

_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit55: ; preds = %do.end.i30, %if.then6.i36, %land.lhs.true.i42, %if.then19.i47, %if.then28.i54, %if.else34.i29
  %address = getelementptr inbounds nuw i8, ptr %arrayidx, i64 148
  %10 = call i64 @llvm.objectsize.i64.p0(ptr nonnull %address, i1 noundef false, i1 noundef true, i1 noundef false)
  switch i64 %10, label %if.then6.i63 [
    i64 0, label %do.end.i57
    i64 -1, label %if.else34.i56
  ]

do.end.i57:                                       ; preds = %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit55
  %vbase.offset.i60 = load i64, ptr %vbase.offset.ptr.i, align 8, !invariant.load !5
  %add.ptr.i61 = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset.i60
  %_M_width.i.i62 = getelementptr inbounds nuw i8, ptr %add.ptr.i61, i64 16
  store i64 0, ptr %_M_width.i.i62, align 8, !tbaa !6
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i61, i32 noundef 4)
  br label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit82

if.then6.i63:                                     ; preds = %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit55
  %vbase.offset9.i66 = load i64, ptr %vbase.offset.ptr.i, align 8, !invariant.load !5
  %add.ptr10.i67 = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset9.i66
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull %address, i64 noundef %10)
  %call16.i68 = call noundef zeroext i1 @_ZNKSt9basic_iosIcSt11char_traitsIcEE4goodEv(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr10.i67) #10
  br i1 %call16.i68, label %land.lhs.true.i69, label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit82

land.lhs.true.i69:                                ; preds = %if.then6.i63
  %_M_width.i4.i70 = getelementptr inbounds nuw i8, ptr %add.ptr10.i67, i64 16
  %11 = load i64, ptr %_M_width.i4.i70, align 8, !tbaa !6, !invariant.load !5
  %cmp17.i71 = icmp slt i64 %11, 1
  %cmp18.i72 = icmp ult i64 %10, %11
  %or.cond.i73 = or i1 %cmp17.i71, %cmp18.i72
  br i1 %or.cond.i73, label %if.then19.i74, label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit82

if.then19.i74:                                    ; preds = %land.lhs.true.i69
  %call24.i75 = call noundef ptr @_ZNKSt9basic_iosIcSt11char_traitsIcEE5rdbufEv(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr10.i67) #10
  %call25.i76 = call noundef i32 @_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv(ptr noundef nonnull align 8 dereferenceable(64) %call24.i75)
  %cmp.i.i77 = icmp eq i32 %call25.i76, -1
  %conv.i78 = zext i1 %cmp.i.i77 to i64
  %expval.i79 = call i64 @llvm.expect.i64(i64 noundef %conv.i78, i64 noundef 1)
  %tobool.not.i80 = icmp eq i64 %expval.i79, 0
  br i1 %tobool.not.i80, label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit82, label %if.then28.i81

if.then28.i81:                                    ; preds = %if.then19.i74
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr10.i67, i32 noundef 2)
  br label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit82

if.else34.i56:                                    ; preds = %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit55
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull %address, i64 noundef 9223372036854775807)
  br label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit82

_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit82: ; preds = %do.end.i57, %if.then6.i63, %land.lhs.true.i69, %if.then19.i74, %if.then28.i81, %if.else34.i56
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !21

for.end:                                          ; preds = %for.cond, %if.then
  %n.0 = phi i32 [ %sub, %if.then ], [ undef, %for.cond ]
  br label %for.cond37

for.cond37:                                       ; preds = %for.inc74, %for.end
  %i.1 = phi i32 [ %n.0, %for.end ], [ %dec, %for.inc74 ]
  %cmp38 = icmp sgt i32 %i.1, -1
  br i1 %cmp38, label %for.inc74, label %for.end75

for.inc74:                                        ; preds = %for.cond37
  %idxprom40 = zext nneg i32 %i.1 to i64
  %arrayidx41 = getelementptr inbounds nuw [1000 x %struct.information], ptr %stu, i64 0, i64 %idxprom40
  %call44 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(272) @_ZSt4cout, ptr noundef nonnull %arrayidx41)
  %call45 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %call44, ptr noundef nonnull dereferenceable(2) @.str)
  %name48 = getelementptr inbounds nuw i8, ptr %arrayidx41, i64 20
  %call50 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %call45, ptr noundef nonnull %name48)
  %call51 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %call50, ptr noundef nonnull dereferenceable(2) @.str)
  %sex54 = getelementptr inbounds nuw i8, ptr %arrayidx41, i64 40
  %12 = load i8, ptr %sex54, align 8, !tbaa !24, !invariant.load !5
  %call55 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) %call51, i8 noundef signext %12)
  %call56 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %call55, ptr noundef nonnull dereferenceable(2) @.str)
  %age59 = getelementptr inbounds nuw i8, ptr %arrayidx41, i64 44
  %13 = load i32, ptr %age59, align 4, !tbaa !26, !invariant.load !5
  %call60 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %call56, i32 noundef %13)
  %call61 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %call60, ptr noundef nonnull dereferenceable(2) @.str)
  %score64 = getelementptr inbounds nuw i8, ptr %arrayidx41, i64 48
  %call66 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %call61, ptr noundef nonnull %score64)
  %call67 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %call66, ptr noundef nonnull dereferenceable(2) @.str)
  %address70 = getelementptr inbounds nuw i8, ptr %arrayidx41, i64 148
  %call72 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %call67, ptr noundef nonnull %address70)
  %call73 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call72, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %dec = add nsw i32 %i.1, -1
  br label %for.cond37, !llvm.loop !27

for.end75:                                        ; preds = %for.cond37
  call void @llvm.lifetime.end.p0(i64 noundef 168000, ptr noundef nonnull %stu) #10
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_RS3_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #4 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #5

; Function Attrs: mustprogress uwtable
declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #4 align 2

declare void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
declare noundef zeroext i1 @_ZNKSt9basic_iosIcSt11char_traitsIcEE4goodEv(ptr noundef nonnull align 8 dereferenceable(264)) local_unnamed_addr #6 align 2

; Function Attrs: mustprogress nounwind uwtable
declare noundef ptr @_ZNKSt9basic_iosIcSt11char_traitsIcEE5rdbufEv(ptr noundef nonnull align 8 dereferenceable(264)) local_unnamed_addr #6 align 2

; Function Attrs: mustprogress uwtable
declare noundef i32 @_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #4 align 2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #7

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { nofree nounwind willreturn }
attributes #9 = { nofree willreturn }
attributes #10 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.1.8 (https://github.com/llvm/llvm-project.git 2078da43e25a4623cab2d0d60decddf709aaea28)"}
!5 = !{}
!6 = !{!7, !8, i64 16}
!7 = !{!"_ZTSSt8ios_base", !8, i64 8, !8, i64 16, !11, i64 24, !12, i64 28, !12, i64 32, !13, i64 40, !15, i64 48, !9, i64 64, !16, i64 192, !17, i64 200, !18, i64 208}
!8 = !{!"long", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C++ TBAA"}
!11 = !{!"_ZTSSt13_Ios_Fmtflags", !9, i64 0}
!12 = !{!"_ZTSSt12_Ios_Iostate", !9, i64 0}
!13 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !14, i64 0}
!14 = !{!"any pointer", !9, i64 0}
!15 = !{!"_ZTSNSt8ios_base6_WordsE", !14, i64 0, !8, i64 8}
!16 = !{!"int", !9, i64 0}
!17 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !14, i64 0}
!18 = !{!"_ZTSSt6locale", !19, i64 0}
!19 = !{!"p1 _ZTSNSt6locale5_ImplE", !14, i64 0}
!20 = !{!9, !9, i64 0}
!21 = distinct !{!21, !22, !23}
!22 = !{!"llvm.loop.mustprogress"}
!23 = !{!"llvm.loop.unroll.disable"}
!24 = !{!25, !9, i64 40}
!25 = !{!"_ZTSZ4mainE11information", !9, i64 0, !9, i64 20, !9, i64 40, !16, i64 44, !9, i64 48, !9, i64 148}
!26 = !{!25, !16, i64 44}
!27 = distinct !{!27, !22, !23}
