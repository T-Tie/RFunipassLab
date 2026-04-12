; ModuleID = '<stdin>'
source_filename = "/tmp/tmpw6kxs16u.cpp"
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
  %a = alloca [256 x i8], align 16
  %b = alloca [256 x i8], align 16
  %c = alloca [256 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 256, ptr noundef nonnull align 16 captures(none) dereferenceable(256) %a) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull writeonly align 16 captures(none) dereferenceable(256) %a, i8 noundef 0, i64 noundef 256, i1 noundef false) #11
  call void @llvm.lifetime.start.p0(i64 noundef 256, ptr noundef nonnull align 16 captures(none) dereferenceable(256) %b) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull writeonly align 16 captures(none) dereferenceable(256) %b, i8 noundef 0, i64 noundef 256, i1 noundef false) #11
  call void @llvm.lifetime.start.p0(i64 noundef 256, ptr noundef nonnull align 16 captures(none) dereferenceable(256) %c) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull writeonly align 16 captures(none) dereferenceable(256) %c, i8 noundef 0, i64 noundef 256, i1 noundef false) #11
  %vtable7.i = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  %vbase.offset.ptr8.i = getelementptr i8, ptr %vtable7.i, i64 -24
  %vbase.offset9.i = load i64, ptr %vbase.offset.ptr8.i, align 8, !invariant.load !8
  %add.ptr10.i = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset9.i
  %_M_width.i1.i = getelementptr inbounds nuw i8, ptr %add.ptr10.i, i64 16
  %0 = load i64, ptr %_M_width.i1.i, align 8, !tbaa !9
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 16 dereferenceable(256) %a, i64 noundef 256)
  %vtable12.i = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  %vbase.offset.ptr13.i = getelementptr i8, ptr %vtable12.i, i64 -24
  %vbase.offset14.i = load i64, ptr %vbase.offset.ptr13.i, align 8, !invariant.load !8
  %add.ptr15.i = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset14.i
  %call16.i = call noundef zeroext i1 @_ZNKSt9basic_iosIcSt11char_traitsIcEE4goodEv(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr15.i) #12
  %1 = add i64 %0, -257
  %or.cond.i = icmp ult i64 %1, -256
  %or.cond = select i1 %call16.i, i1 %or.cond.i, i1 false
  br i1 %or.cond, label %if.then19.i, label %if.then6.i10

if.then19.i:                                      ; preds = %entry
  %vtable20.i = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  %vbase.offset.ptr21.i = getelementptr i8, ptr %vtable20.i, i64 -24
  %vbase.offset22.i = load i64, ptr %vbase.offset.ptr21.i, align 8, !invariant.load !8
  %add.ptr23.i = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset22.i
  %call24.i = call noundef ptr @_ZNKSt9basic_iosIcSt11char_traitsIcEE5rdbufEv(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr23.i) #12
  %call25.i = call noundef i32 @_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv(ptr noundef nonnull align 8 dereferenceable(64) %call24.i)
  %cmp.i.i = icmp eq i32 %call25.i, -1
  %conv.i = zext i1 %cmp.i.i to i64
  %expval.i = call i64 @llvm.expect.i64(i64 noundef %conv.i, i64 noundef 1)
  %tobool.not.i = icmp eq i64 %expval.i, 0
  br i1 %tobool.not.i, label %if.then6.i10, label %if.then28.i

if.then28.i:                                      ; preds = %if.then19.i
  %vtable29.i = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  %vbase.offset.ptr30.i = getelementptr i8, ptr %vtable29.i, i64 -24
  %vbase.offset31.i = load i64, ptr %vbase.offset.ptr30.i, align 8, !invariant.load !8
  %add.ptr32.i = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset31.i
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr32.i, i32 noundef 2)
  br label %if.then6.i10

if.then6.i10:                                     ; preds = %if.then28.i, %if.then19.i, %entry
  %vtable7.i11 = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  %vbase.offset.ptr8.i12 = getelementptr i8, ptr %vtable7.i11, i64 -24
  %vbase.offset9.i13 = load i64, ptr %vbase.offset.ptr8.i12, align 8, !invariant.load !8
  %add.ptr10.i14 = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset9.i13
  %_M_width.i1.i15 = getelementptr inbounds nuw i8, ptr %add.ptr10.i14, i64 16
  %2 = load i64, ptr %_M_width.i1.i15, align 8, !tbaa !9
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 16 dereferenceable(256) %b, i64 noundef 256)
  %vtable12.i16 = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  %vbase.offset.ptr13.i17 = getelementptr i8, ptr %vtable12.i16, i64 -24
  %vbase.offset14.i18 = load i64, ptr %vbase.offset.ptr13.i17, align 8, !invariant.load !8
  %add.ptr15.i19 = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset14.i18
  %call16.i20 = call noundef zeroext i1 @_ZNKSt9basic_iosIcSt11char_traitsIcEE4goodEv(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr15.i19) #12
  %3 = add i64 %2, -257
  %or.cond.i24 = icmp ult i64 %3, -256
  %or.cond81 = select i1 %call16.i20, i1 %or.cond.i24, i1 false
  br i1 %or.cond81, label %if.then19.i25, label %if.then6.i49

if.then19.i25:                                    ; preds = %if.then6.i10
  %vtable20.i26 = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  %vbase.offset.ptr21.i27 = getelementptr i8, ptr %vtable20.i26, i64 -24
  %vbase.offset22.i28 = load i64, ptr %vbase.offset.ptr21.i27, align 8, !invariant.load !8
  %add.ptr23.i29 = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset22.i28
  %call24.i30 = call noundef ptr @_ZNKSt9basic_iosIcSt11char_traitsIcEE5rdbufEv(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr23.i29) #12
  %call25.i31 = call noundef i32 @_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv(ptr noundef nonnull align 8 dereferenceable(64) %call24.i30)
  %cmp.i.i32 = icmp eq i32 %call25.i31, -1
  %conv.i33 = zext i1 %cmp.i.i32 to i64
  %expval.i34 = call i64 @llvm.expect.i64(i64 noundef %conv.i33, i64 noundef 1)
  %tobool.not.i35 = icmp eq i64 %expval.i34, 0
  br i1 %tobool.not.i35, label %if.then6.i49, label %if.then28.i36

if.then28.i36:                                    ; preds = %if.then19.i25
  %vtable29.i37 = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  %vbase.offset.ptr30.i38 = getelementptr i8, ptr %vtable29.i37, i64 -24
  %vbase.offset31.i39 = load i64, ptr %vbase.offset.ptr30.i38, align 8, !invariant.load !8
  %add.ptr32.i40 = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset31.i39
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr32.i40, i32 noundef 2)
  br label %if.then6.i49

if.then6.i49:                                     ; preds = %if.then28.i36, %if.then19.i25, %if.then6.i10
  %vtable7.i50 = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  %vbase.offset.ptr8.i51 = getelementptr i8, ptr %vtable7.i50, i64 -24
  %vbase.offset9.i52 = load i64, ptr %vbase.offset.ptr8.i51, align 8, !invariant.load !8
  %add.ptr10.i53 = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset9.i52
  %_M_width.i1.i54 = getelementptr inbounds nuw i8, ptr %add.ptr10.i53, i64 16
  %4 = load i64, ptr %_M_width.i1.i54, align 8, !tbaa !9
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 16 dereferenceable(256) %c, i64 noundef 256)
  %vtable12.i55 = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  %vbase.offset.ptr13.i56 = getelementptr i8, ptr %vtable12.i55, i64 -24
  %vbase.offset14.i57 = load i64, ptr %vbase.offset.ptr13.i56, align 8, !invariant.load !8
  %add.ptr15.i58 = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset14.i57
  %call16.i59 = call noundef zeroext i1 @_ZNKSt9basic_iosIcSt11char_traitsIcEE4goodEv(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr15.i58) #12
  %5 = add i64 %4, -257
  %or.cond.i63 = icmp ult i64 %5, -256
  %or.cond82 = select i1 %call16.i59, i1 %or.cond.i63, i1 false
  br i1 %or.cond82, label %if.then19.i64, label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit80

if.then19.i64:                                    ; preds = %if.then6.i49
  %vtable20.i65 = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  %vbase.offset.ptr21.i66 = getelementptr i8, ptr %vtable20.i65, i64 -24
  %vbase.offset22.i67 = load i64, ptr %vbase.offset.ptr21.i66, align 8, !invariant.load !8
  %add.ptr23.i68 = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset22.i67
  %call24.i69 = call noundef ptr @_ZNKSt9basic_iosIcSt11char_traitsIcEE5rdbufEv(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr23.i68) #12
  %call25.i70 = call noundef i32 @_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv(ptr noundef nonnull align 8 dereferenceable(64) %call24.i69)
  %cmp.i.i71 = icmp eq i32 %call25.i70, -1
  %conv.i72 = zext i1 %cmp.i.i71 to i64
  %expval.i73 = call i64 @llvm.expect.i64(i64 noundef %conv.i72, i64 noundef 1)
  %tobool.not.i74 = icmp eq i64 %expval.i73, 0
  br i1 %tobool.not.i74, label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit80, label %if.then28.i75

if.then28.i75:                                    ; preds = %if.then19.i64
  %vtable29.i76 = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  %vbase.offset.ptr30.i77 = getelementptr i8, ptr %vtable29.i76, i64 -24
  %vbase.offset31.i78 = load i64, ptr %vbase.offset.ptr30.i77, align 8, !invariant.load !8
  %add.ptr32.i79 = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset31.i78
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr32.i79, i32 noundef 2)
  br label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit80

_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit80: ; preds = %if.then6.i49, %if.then19.i64, %if.then28.i75
  %call6 = call i64 @strlen(ptr noundef nonnull readonly captures(none) dereferenceable(1) %a) #13
  %conv = trunc i64 %call6 to i32
  %call8 = call i64 @strlen(ptr noundef nonnull readonly captures(none) dereferenceable(1) %b) #13
  %conv9 = trunc i64 %call8 to i32
  %6 = load i8, ptr %b, align 16
  %smax = call range(i32 1, -2147483648) i32 @llvm.smax.i32(i32 %conv9, i32 noundef 1)
  %smax93 = call i32 @llvm.smax.i32(i32 %conv, i32 noundef 0)
  %wide.trip.count94 = zext nneg i32 %smax93 to i64
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond

for.cond:                                         ; preds = %for.inc30, %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit80
  %indvars.iv104 = phi i32 [ %indvars.iv.next105, %for.inc30 ], [ %conv9, %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit80 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc30 ], [ 0, %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit80 ]
  %exitcond95.not = icmp eq i64 %indvars.iv, %wide.trip.count94
  br i1 %exitcond95.not, label %if.then34, label %for.body

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [256 x i8], ptr %a, i64 0, i64 %indvars.iv
  %7 = load i8, ptr %arrayidx, align 1, !tbaa !22
  %cmp13 = icmp eq i8 %7, %6
  br i1 %cmp13, label %for.cond14, label %for.inc30

for.cond14:                                       ; preds = %for.body, %for.inc
  %indvars.iv87 = phi i64 [ %indvars.iv.next88, %for.inc ], [ 1, %for.body ]
  %indvars.iv85 = phi i64 [ %indvars.iv.next86, %for.inc ], [ %indvars.iv, %for.body ]
  %exitcond.not = icmp eq i64 %indvars.iv87, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body16

for.body16:                                       ; preds = %for.cond14
  %indvars.iv.next86 = add nuw nsw i64 %indvars.iv85, 1
  %arrayidx18 = getelementptr inbounds nuw [256 x i8], ptr %a, i64 0, i64 %indvars.iv.next86
  %8 = load i8, ptr %arrayidx18, align 1, !tbaa !22
  %arrayidx21 = getelementptr inbounds nuw [256 x i8], ptr %b, i64 0, i64 %indvars.iv87
  %9 = load i8, ptr %arrayidx21, align 1, !tbaa !22
  %cmp23.not = icmp eq i8 %8, %9
  br i1 %cmp23.not, label %for.inc, label %for.end.split.loop.exit

for.inc:                                          ; preds = %for.body16
  %indvars.iv.next88 = add nuw nsw i64 %indvars.iv87, 1
  br label %for.cond14, !llvm.loop !23

for.end.split.loop.exit:                          ; preds = %for.body16
  %10 = trunc nuw nsw i64 %indvars.iv87 to i32
  br label %for.end

for.end:                                          ; preds = %for.cond14, %for.end.split.loop.exit
  %j.0.lcssa = phi i32 [ %10, %for.end.split.loop.exit ], [ %smax, %for.cond14 ]
  %cmp26 = icmp eq i32 %j.0.lcssa, %conv9
  br i1 %cmp26, label %for.cond37.preheader, label %for.inc30

for.cond37.preheader:                             ; preds = %for.end
  %wide.trip.count102 = and i64 %indvars.iv, 4294967295
  br label %for.cond37

for.inc30:                                        ; preds = %for.body, %for.end
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %indvars.iv.next105 = add i32 %indvars.iv104, 1
  br label %for.cond, !llvm.loop !26

if.then34:                                        ; preds = %for.cond
  %call36 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %a)
  br label %if.end57

for.cond37:                                       ; preds = %for.cond37.preheader, %for.inc43
  %indvars.iv96 = phi i64 [ 0, %for.cond37.preheader ], [ %indvars.iv.next97, %for.inc43 ]
  %exitcond103.not = icmp eq i64 %indvars.iv96, %wide.trip.count102
  br i1 %exitcond103.not, label %for.end45, label %for.inc43

for.inc43:                                        ; preds = %for.cond37
  %arrayidx41 = getelementptr inbounds nuw [256 x i8], ptr %a, i64 0, i64 %indvars.iv96
  %11 = load i8, ptr %arrayidx41, align 1, !tbaa !22
  %call42 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %11)
  %indvars.iv.next97 = add nuw nsw i64 %indvars.iv96, 1
  br label %for.cond37, !llvm.loop !27

for.end45:                                        ; preds = %for.cond37
  %call47 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %c)
  %12 = sext i32 %indvars.iv104 to i64
  %sext = shl i64 %call6, 32
  %13 = ashr exact i64 %sext, 32
  br label %for.cond48

for.cond48:                                       ; preds = %for.inc54, %for.end45
  %indvars.iv107 = phi i64 [ %indvars.iv.next108, %for.inc54 ], [ %12, %for.end45 ]
  %cmp49 = icmp slt i64 %indvars.iv107, %13
  br i1 %cmp49, label %for.inc54, label %if.end57

for.inc54:                                        ; preds = %for.cond48
  %arrayidx52 = getelementptr inbounds [256 x i8], ptr %a, i64 0, i64 %indvars.iv107
  %14 = load i8, ptr %arrayidx52, align 1, !tbaa !22
  %call53 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %14)
  %indvars.iv.next108 = add nsw i64 %indvars.iv107, 1
  br label %for.cond48, !llvm.loop !28

if.end57:                                         ; preds = %for.cond48, %if.then34
  call void @llvm.lifetime.end.p0(i64 noundef 256, ptr noundef nonnull captures(none) %c) #12
  call void @llvm.lifetime.end.p0(i64 noundef 256, ptr noundef nonnull captures(none) %b) #12
  call void @llvm.lifetime.end.p0(i64 noundef 256, ptr noundef nonnull captures(none) %a) #12
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #5 align 2

declare void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
declare noundef zeroext i1 @_ZNKSt9basic_iosIcSt11char_traitsIcEE4goodEv(ptr noundef nonnull align 8 dereferenceable(264)) local_unnamed_addr #7 align 2

; Function Attrs: mustprogress nounwind uwtable
declare noundef ptr @_ZNKSt9basic_iosIcSt11char_traitsIcEE5rdbufEv(ptr noundef nonnull align 8 dereferenceable(264)) local_unnamed_addr #7 align 2

; Function Attrs: mustprogress uwtable
declare noundef i32 @_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #5 align 2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nofree nounwind }
attributes #11 = { nofree }
attributes #12 = { nounwind }
attributes #13 = { nounwind willreturn memory(read) }

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
!9 = !{!10, !11, i64 16}
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
!22 = !{!12, !12, i64 0}
!23 = distinct !{!23, !24, !25}
!24 = !{!"llvm.loop.mustprogress"}
!25 = !{!"llvm.loop.unroll.disable"}
!26 = distinct !{!26, !24, !25}
!27 = distinct !{!27, !24, !25}
!28 = distinct !{!28, !24, !25}
