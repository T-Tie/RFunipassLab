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
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %a) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %a, i8 0, i64 256, i1 false)
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %b) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %b, i8 0, i64 256, i1 false)
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %c) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %c, i8 0, i64 256, i1 false)
  %vtable7.i = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  %vbase.offset.ptr8.i = getelementptr i8, ptr %vtable7.i, i64 -24
  %vbase.offset9.i = load i64, ptr %vbase.offset.ptr8.i, align 8
  %add.ptr10.i = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset9.i
  %_M_width.i1.i = getelementptr inbounds nuw i8, ptr %add.ptr10.i, i64 16
  %0 = load i64, ptr %_M_width.i1.i, align 8, !tbaa !8
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull %a, i64 noundef 256)
  %vtable12.i = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  %vbase.offset.ptr13.i = getelementptr i8, ptr %vtable12.i, i64 -24
  %vbase.offset14.i = load i64, ptr %vbase.offset.ptr13.i, align 8
  %add.ptr15.i = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset14.i
  %call16.i = call noundef zeroext i1 @_ZNKSt9basic_iosIcSt11char_traitsIcEE4goodEv(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr15.i)
  %1 = add i64 %0, -257
  %or.cond.i = icmp ult i64 %1, -256
  %or.cond = select i1 %call16.i, i1 %or.cond.i, i1 false
  br i1 %or.cond, label %if.then19.i, label %if.then6.i11

if.then19.i:                                      ; preds = %entry
  %vtable20.i = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  %vbase.offset.ptr21.i = getelementptr i8, ptr %vtable20.i, i64 -24
  %vbase.offset22.i = load i64, ptr %vbase.offset.ptr21.i, align 8
  %add.ptr23.i = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset22.i
  %call24.i = call noundef ptr @_ZNKSt9basic_iosIcSt11char_traitsIcEE5rdbufEv(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr23.i)
  %call25.i = call noundef i32 @_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv(ptr noundef nonnull align 8 dereferenceable(64) %call24.i)
  %cmp.i.i = icmp eq i32 %call25.i, -1
  %conv.i = zext i1 %cmp.i.i to i64
  %expval.i = call i64 @llvm.expect.i64(i64 %conv.i, i64 1)
  %tobool.not.i = icmp eq i64 %expval.i, 0
  br i1 %tobool.not.i, label %if.then6.i11, label %if.then28.i

if.then28.i:                                      ; preds = %if.then19.i
  %vtable29.i = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  %vbase.offset.ptr30.i = getelementptr i8, ptr %vtable29.i, i64 -24
  %vbase.offset31.i = load i64, ptr %vbase.offset.ptr30.i, align 8
  %add.ptr32.i = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset31.i
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr32.i, i32 noundef 2)
  br label %if.then6.i11

if.then6.i11:                                     ; preds = %if.then28.i, %if.then19.i, %entry
  %vtable7.i12 = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  %vbase.offset.ptr8.i13 = getelementptr i8, ptr %vtable7.i12, i64 -24
  %vbase.offset9.i14 = load i64, ptr %vbase.offset.ptr8.i13, align 8
  %add.ptr10.i15 = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset9.i14
  %_M_width.i1.i16 = getelementptr inbounds nuw i8, ptr %add.ptr10.i15, i64 16
  %2 = load i64, ptr %_M_width.i1.i16, align 8, !tbaa !8
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull %b, i64 noundef 256)
  %vtable12.i17 = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  %vbase.offset.ptr13.i18 = getelementptr i8, ptr %vtable12.i17, i64 -24
  %vbase.offset14.i19 = load i64, ptr %vbase.offset.ptr13.i18, align 8
  %add.ptr15.i20 = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset14.i19
  %call16.i21 = call noundef zeroext i1 @_ZNKSt9basic_iosIcSt11char_traitsIcEE4goodEv(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr15.i20)
  %3 = add i64 %2, -257
  %or.cond.i25 = icmp ult i64 %3, -256
  %or.cond103 = select i1 %call16.i21, i1 %or.cond.i25, i1 false
  br i1 %or.cond103, label %if.then19.i26, label %if.then6.i52

if.then19.i26:                                    ; preds = %if.then6.i11
  %vtable20.i27 = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  %vbase.offset.ptr21.i28 = getelementptr i8, ptr %vtable20.i27, i64 -24
  %vbase.offset22.i29 = load i64, ptr %vbase.offset.ptr21.i28, align 8
  %add.ptr23.i30 = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset22.i29
  %call24.i31 = call noundef ptr @_ZNKSt9basic_iosIcSt11char_traitsIcEE5rdbufEv(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr23.i30)
  %call25.i32 = call noundef i32 @_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv(ptr noundef nonnull align 8 dereferenceable(64) %call24.i31)
  %cmp.i.i33 = icmp eq i32 %call25.i32, -1
  %conv.i34 = zext i1 %cmp.i.i33 to i64
  %expval.i35 = call i64 @llvm.expect.i64(i64 %conv.i34, i64 1)
  %tobool.not.i36 = icmp eq i64 %expval.i35, 0
  br i1 %tobool.not.i36, label %if.then6.i52, label %if.then28.i37

if.then28.i37:                                    ; preds = %if.then19.i26
  %vtable29.i38 = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  %vbase.offset.ptr30.i39 = getelementptr i8, ptr %vtable29.i38, i64 -24
  %vbase.offset31.i40 = load i64, ptr %vbase.offset.ptr30.i39, align 8
  %add.ptr32.i41 = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset31.i40
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr32.i41, i32 noundef 2)
  br label %if.then6.i52

if.then6.i52:                                     ; preds = %if.then28.i37, %if.then19.i26, %if.then6.i11
  %vtable7.i53 = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  %vbase.offset.ptr8.i54 = getelementptr i8, ptr %vtable7.i53, i64 -24
  %vbase.offset9.i55 = load i64, ptr %vbase.offset.ptr8.i54, align 8
  %add.ptr10.i56 = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset9.i55
  %_M_width.i1.i57 = getelementptr inbounds nuw i8, ptr %add.ptr10.i56, i64 16
  %4 = load i64, ptr %_M_width.i1.i57, align 8, !tbaa !8
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull %c, i64 noundef 256)
  %vtable12.i58 = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  %vbase.offset.ptr13.i59 = getelementptr i8, ptr %vtable12.i58, i64 -24
  %vbase.offset14.i60 = load i64, ptr %vbase.offset.ptr13.i59, align 8
  %add.ptr15.i61 = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset14.i60
  %call16.i62 = call noundef zeroext i1 @_ZNKSt9basic_iosIcSt11char_traitsIcEE4goodEv(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr15.i61)
  %5 = add i64 %4, -257
  %or.cond.i66 = icmp ult i64 %5, -256
  %or.cond104 = select i1 %call16.i62, i1 %or.cond.i66, i1 false
  br i1 %or.cond104, label %if.then19.i67, label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit83

if.then19.i67:                                    ; preds = %if.then6.i52
  %vtable20.i68 = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  %vbase.offset.ptr21.i69 = getelementptr i8, ptr %vtable20.i68, i64 -24
  %vbase.offset22.i70 = load i64, ptr %vbase.offset.ptr21.i69, align 8
  %add.ptr23.i71 = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset22.i70
  %call24.i72 = call noundef ptr @_ZNKSt9basic_iosIcSt11char_traitsIcEE5rdbufEv(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr23.i71)
  %call25.i73 = call noundef i32 @_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv(ptr noundef nonnull align 8 dereferenceable(64) %call24.i72)
  %cmp.i.i74 = icmp eq i32 %call25.i73, -1
  %conv.i75 = zext i1 %cmp.i.i74 to i64
  %expval.i76 = call i64 @llvm.expect.i64(i64 %conv.i75, i64 1)
  %tobool.not.i77 = icmp eq i64 %expval.i76, 0
  br i1 %tobool.not.i77, label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit83, label %if.then28.i78

if.then28.i78:                                    ; preds = %if.then19.i67
  %vtable29.i79 = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  %vbase.offset.ptr30.i80 = getelementptr i8, ptr %vtable29.i79, i64 -24
  %vbase.offset31.i81 = load i64, ptr %vbase.offset.ptr30.i80, align 8
  %add.ptr32.i82 = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset31.i81
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr32.i82, i32 noundef 2)
  br label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit83

_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit83: ; preds = %if.then6.i52, %if.then19.i67, %if.then28.i78
  %call6 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %a) #11
  %conv = trunc i64 %call6 to i32
  %call8 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %b) #11
  %conv9 = trunc i64 %call8 to i32
  %6 = load i8, ptr %b, align 16
  %smax = call i32 @llvm.smax.i32(i32 %conv9, i32 1)
  %smax115 = call i32 @llvm.smax.i32(i32 %conv, i32 0)
  %wide.trip.count116 = zext nneg i32 %smax115 to i64
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond

for.cond:                                         ; preds = %for.inc30, %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit83
  %indvars.iv126 = phi i32 [ %indvars.iv.next127, %for.inc30 ], [ %conv9, %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit83 ]
  %indvars.iv121 = phi i32 [ %indvars.iv.next122, %for.inc30 ], [ 0, %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit83 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc30 ], [ 0, %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit83 ]
  %exitcond117.not = icmp eq i64 %indvars.iv, %wide.trip.count116
  br i1 %exitcond117.not, label %if.then34, label %for.body

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [256 x i8], ptr %a, i64 0, i64 %indvars.iv
  %7 = load i8, ptr %arrayidx, align 1, !tbaa !21
  %cmp13 = icmp eq i8 %7, %6
  br i1 %cmp13, label %for.cond14, label %for.inc30

for.cond14:                                       ; preds = %for.body, %for.inc
  %indvars.iv109 = phi i64 [ %indvars.iv.next110, %for.inc ], [ 1, %for.body ]
  %indvars.iv107 = phi i64 [ %indvars.iv.next108, %for.inc ], [ %indvars.iv, %for.body ]
  %exitcond.not = icmp eq i64 %indvars.iv109, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body16

for.body16:                                       ; preds = %for.cond14
  %indvars.iv.next108 = add nuw nsw i64 %indvars.iv107, 1
  %arrayidx18 = getelementptr inbounds nuw [256 x i8], ptr %a, i64 0, i64 %indvars.iv.next108
  %8 = load i8, ptr %arrayidx18, align 1, !tbaa !21
  %arrayidx21 = getelementptr inbounds nuw [256 x i8], ptr %b, i64 0, i64 %indvars.iv109
  %9 = load i8, ptr %arrayidx21, align 1, !tbaa !21
  %cmp23.not = icmp eq i8 %8, %9
  br i1 %cmp23.not, label %for.inc, label %for.end.split.loop.exit

for.inc:                                          ; preds = %for.body16
  %indvars.iv.next110 = add nuw nsw i64 %indvars.iv109, 1
  br label %for.cond14, !llvm.loop !22

for.end.split.loop.exit:                          ; preds = %for.body16
  %10 = trunc nuw nsw i64 %indvars.iv109 to i32
  br label %for.end

for.end:                                          ; preds = %for.cond14, %for.end.split.loop.exit
  %j.0.lcssa = phi i32 [ %10, %for.end.split.loop.exit ], [ %smax, %for.cond14 ]
  %cmp26 = icmp eq i32 %j.0.lcssa, %conv9
  br i1 %cmp26, label %for.cond37.preheader, label %for.inc30

for.cond37.preheader:                             ; preds = %for.end
  %wide.trip.count124 = zext i32 %indvars.iv121 to i64
  br label %for.cond37

for.inc30:                                        ; preds = %for.body, %for.end
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %indvars.iv.next122 = add nuw i32 %indvars.iv121, 1
  %indvars.iv.next127 = add i32 %indvars.iv126, 1
  br label %for.cond, !llvm.loop !25

if.then34:                                        ; preds = %for.cond
  %call36 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %a)
  br label %if.end57

for.cond37:                                       ; preds = %for.cond37.preheader, %for.inc43
  %indvars.iv118 = phi i64 [ 0, %for.cond37.preheader ], [ %indvars.iv.next119, %for.inc43 ]
  %exitcond125.not = icmp eq i64 %indvars.iv118, %wide.trip.count124
  br i1 %exitcond125.not, label %for.end45, label %for.inc43

for.inc43:                                        ; preds = %for.cond37
  %arrayidx41 = getelementptr inbounds nuw [256 x i8], ptr %a, i64 0, i64 %indvars.iv118
  %11 = load i8, ptr %arrayidx41, align 1, !tbaa !21
  %call42 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %11)
  %indvars.iv.next119 = add nuw nsw i64 %indvars.iv118, 1
  br label %for.cond37, !llvm.loop !26

for.end45:                                        ; preds = %for.cond37
  %call47 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %c)
  %12 = sext i32 %indvars.iv126 to i64
  %sext = shl i64 %call6, 32
  %13 = ashr exact i64 %sext, 32
  br label %for.cond48

for.cond48:                                       ; preds = %for.inc54, %for.end45
  %indvars.iv129 = phi i64 [ %indvars.iv.next130, %for.inc54 ], [ %12, %for.end45 ]
  %cmp49 = icmp slt i64 %indvars.iv129, %13
  br i1 %cmp49, label %for.inc54, label %if.end57

for.inc54:                                        ; preds = %for.cond48
  %arrayidx52 = getelementptr inbounds [256 x i8], ptr %a, i64 0, i64 %indvars.iv129
  %14 = load i8, ptr %arrayidx52, align 1, !tbaa !21
  %call53 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %14)
  %indvars.iv.next130 = add nsw i64 %indvars.iv129, 1
  br label %for.cond48, !llvm.loop !27

if.end57:                                         ; preds = %for.cond48, %if.then34
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %c) #10
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %b) #10
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %a) #10
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #5

; Function Attrs: mustprogress uwtable
declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #6 align 2

declare void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
declare noundef zeroext i1 @_ZNKSt9basic_iosIcSt11char_traitsIcEE4goodEv(ptr noundef nonnull align 8 dereferenceable(264)) local_unnamed_addr #8 align 2

; Function Attrs: mustprogress nounwind uwtable
declare noundef ptr @_ZNKSt9basic_iosIcSt11char_traitsIcEE5rdbufEv(ptr noundef nonnull align 8 dereferenceable(264)) local_unnamed_addr #8 align 2

; Function Attrs: mustprogress uwtable
declare noundef i32 @_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #6 align 2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(none) }
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
!21 = !{!11, !11, i64 0}
!22 = distinct !{!22, !23, !24}
!23 = !{!"llvm.loop.mustprogress"}
!24 = !{!"llvm.loop.unroll.disable"}
!25 = distinct !{!25, !23, !24}
!26 = distinct !{!26, !23, !24}
!27 = distinct !{!27, !23, !24}
