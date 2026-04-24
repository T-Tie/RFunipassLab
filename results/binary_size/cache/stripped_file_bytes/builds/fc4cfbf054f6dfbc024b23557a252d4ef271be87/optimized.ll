; ModuleID = '<stdin>'
source_filename = "/tmp/tmp8cvaoas5.cpp"
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
  %__c.addr.i153 = alloca i8, align 1
  %__c.addr.i140 = alloca i8, align 1
  %__c.addr.i127 = alloca i8, align 1
  %__c.addr.i = alloca i8, align 1
  %str = alloca [256 x i8], align 16
  %subs = alloca [256 x i8], align 16
  %rpl = alloca [256 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %str) #5
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %subs) #5
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %rpl) #5
  %vtable7.i = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  %vbase.offset.ptr8.i = getelementptr i8, ptr %vtable7.i, i64 -24
  %vbase.offset9.i = load i64, ptr %vbase.offset.ptr8.i, align 8
  %add.ptr10.i = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset9.i
  %_M_width.i17.i = getelementptr inbounds nuw i8, ptr %add.ptr10.i, i64 16
  %0 = load i64, ptr %_M_width.i17.i, align 8, !tbaa !8
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull %str, i64 noundef 256)
  %vtable12.i = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  %vbase.offset.ptr13.i = getelementptr i8, ptr %vtable12.i, i64 -24
  %vbase.offset14.i = load i64, ptr %vbase.offset.ptr13.i, align 8
  %add.ptr15.i = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset14.i
  %_M_streambuf_state.i.i18.i = getelementptr inbounds nuw i8, ptr %add.ptr15.i, i64 32
  %1 = load i32, ptr %_M_streambuf_state.i.i18.i, align 8, !tbaa !21
  %cmp.i.i = icmp eq i32 %1, 0
  %2 = add i64 %0, -257
  %or.cond.i = icmp ult i64 %2, -256
  %or.cond = select i1 %cmp.i.i, i1 %or.cond.i, i1 false
  br i1 %or.cond, label %if.then19.i, label %if.then6.i43

if.then19.i:                                      ; preds = %entry
  %_M_streambuf.i.i = getelementptr inbounds nuw i8, ptr %add.ptr15.i, i64 232
  %3 = load ptr, ptr %_M_streambuf.i.i, align 8, !tbaa !22
  %_M_in_cur.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  %4 = load ptr, ptr %_M_in_cur.i.i.i, align 8, !tbaa !30
  %_M_in_end.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  %5 = load ptr, ptr %_M_in_end.i.i.i, align 8, !tbaa !33
  %cmp.i19.i = icmp ult ptr %4, %5
  br i1 %cmp.i19.i, label %if.then6.i43, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i, !prof !34

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i: ; preds = %if.then19.i
  %vtable.i.i = load ptr, ptr %3, align 8, !tbaa !5
  %vfn.i.i = getelementptr inbounds nuw i8, ptr %vtable.i.i, i64 72
  %6 = load ptr, ptr %vfn.i.i, align 8
  %call5.i.i = call noundef i32 %6(ptr noundef nonnull align 8 dereferenceable(64) %3)
  %cmp.i20.i = icmp eq i32 %call5.i.i, -1
  %vtable7.i44.pre217 = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  br i1 %cmp.i20.i, label %if.then28.i, label %if.then6.i43, !prof !35

if.then28.i:                                      ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i
  %vbase.offset.ptr30.i = getelementptr i8, ptr %vtable7.i44.pre217, i64 -24
  %vbase.offset31.i = load i64, ptr %vbase.offset.ptr30.i, align 8
  %add.ptr32.i = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset31.i
  %_M_streambuf_state.i.i21.i = getelementptr inbounds nuw i8, ptr %add.ptr32.i, i64 32
  %7 = load i32, ptr %_M_streambuf_state.i.i21.i, align 8, !tbaa !21
  %or.i.i22.i = or i32 %7, 2
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr32.i, i32 noundef %or.i.i22.i)
  %vtable7.i44.pre = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  br label %if.then6.i43

if.then6.i43:                                     ; preds = %if.then28.i, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i, %if.then19.i, %entry
  %vtable7.i44 = phi ptr [ %vtable7.i44.pre, %if.then28.i ], [ %vtable7.i44.pre217, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i ], [ %vtable12.i, %if.then19.i ], [ %vtable12.i, %entry ]
  %vbase.offset.ptr8.i45 = getelementptr i8, ptr %vtable7.i44, i64 -24
  %vbase.offset9.i46 = load i64, ptr %vbase.offset.ptr8.i45, align 8
  %add.ptr10.i47 = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset9.i46
  %_M_width.i17.i48 = getelementptr inbounds nuw i8, ptr %add.ptr10.i47, i64 16
  %8 = load i64, ptr %_M_width.i17.i48, align 8, !tbaa !8
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull %subs, i64 noundef 256)
  %vtable12.i49 = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  %vbase.offset.ptr13.i50 = getelementptr i8, ptr %vtable12.i49, i64 -24
  %vbase.offset14.i51 = load i64, ptr %vbase.offset.ptr13.i50, align 8
  %add.ptr15.i52 = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset14.i51
  %_M_streambuf_state.i.i18.i53 = getelementptr inbounds nuw i8, ptr %add.ptr15.i52, i64 32
  %9 = load i32, ptr %_M_streambuf_state.i.i18.i53, align 8, !tbaa !21
  %cmp.i.i54 = icmp eq i32 %9, 0
  %10 = add i64 %8, -257
  %or.cond.i58 = icmp ult i64 %10, -256
  %or.cond166 = select i1 %cmp.i.i54, i1 %or.cond.i58, i1 false
  br i1 %or.cond166, label %if.then19.i59, label %if.then6.i88

if.then19.i59:                                    ; preds = %if.then6.i43
  %_M_streambuf.i.i60 = getelementptr inbounds nuw i8, ptr %add.ptr15.i52, i64 232
  %11 = load ptr, ptr %_M_streambuf.i.i60, align 8, !tbaa !22
  %_M_in_cur.i.i.i61 = getelementptr inbounds nuw i8, ptr %11, i64 16
  %12 = load ptr, ptr %_M_in_cur.i.i.i61, align 8, !tbaa !30
  %_M_in_end.i.i.i62 = getelementptr inbounds nuw i8, ptr %11, i64 24
  %13 = load ptr, ptr %_M_in_end.i.i.i62, align 8, !tbaa !33
  %cmp.i19.i63 = icmp ult ptr %12, %13
  br i1 %cmp.i19.i63, label %if.then6.i88, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i64, !prof !34

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i64: ; preds = %if.then19.i59
  %vtable.i.i65 = load ptr, ptr %11, align 8, !tbaa !5
  %vfn.i.i66 = getelementptr inbounds nuw i8, ptr %vtable.i.i65, i64 72
  %14 = load ptr, ptr %vfn.i.i66, align 8
  %call5.i.i67 = call noundef i32 %14(ptr noundef nonnull align 8 dereferenceable(64) %11)
  %cmp.i20.i68 = icmp eq i32 %call5.i.i67, -1
  %vtable7.i89.pre219 = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  br i1 %cmp.i20.i68, label %if.then28.i69, label %if.then6.i88, !prof !35

if.then28.i69:                                    ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i64
  %vbase.offset.ptr30.i71 = getelementptr i8, ptr %vtable7.i89.pre219, i64 -24
  %vbase.offset31.i72 = load i64, ptr %vbase.offset.ptr30.i71, align 8
  %add.ptr32.i73 = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset31.i72
  %_M_streambuf_state.i.i21.i74 = getelementptr inbounds nuw i8, ptr %add.ptr32.i73, i64 32
  %15 = load i32, ptr %_M_streambuf_state.i.i21.i74, align 8, !tbaa !21
  %or.i.i22.i75 = or i32 %15, 2
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr32.i73, i32 noundef %or.i.i22.i75)
  %vtable7.i89.pre = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  br label %if.then6.i88

if.then6.i88:                                     ; preds = %if.then28.i69, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i64, %if.then19.i59, %if.then6.i43
  %vtable7.i89 = phi ptr [ %vtable7.i89.pre, %if.then28.i69 ], [ %vtable7.i89.pre219, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i64 ], [ %vtable12.i49, %if.then19.i59 ], [ %vtable12.i49, %if.then6.i43 ]
  %vbase.offset.ptr8.i90 = getelementptr i8, ptr %vtable7.i89, i64 -24
  %vbase.offset9.i91 = load i64, ptr %vbase.offset.ptr8.i90, align 8
  %add.ptr10.i92 = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset9.i91
  %_M_width.i17.i93 = getelementptr inbounds nuw i8, ptr %add.ptr10.i92, i64 16
  %16 = load i64, ptr %_M_width.i17.i93, align 8, !tbaa !8
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull %rpl, i64 noundef 256)
  %vtable12.i94 = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  %vbase.offset.ptr13.i95 = getelementptr i8, ptr %vtable12.i94, i64 -24
  %vbase.offset14.i96 = load i64, ptr %vbase.offset.ptr13.i95, align 8
  %add.ptr15.i97 = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset14.i96
  %_M_streambuf_state.i.i18.i98 = getelementptr inbounds nuw i8, ptr %add.ptr15.i97, i64 32
  %17 = load i32, ptr %_M_streambuf_state.i.i18.i98, align 8, !tbaa !21
  %cmp.i.i99 = icmp eq i32 %17, 0
  %18 = add i64 %16, -257
  %or.cond.i103 = icmp ult i64 %18, -256
  %or.cond167 = select i1 %cmp.i.i99, i1 %or.cond.i103, i1 false
  br i1 %or.cond167, label %if.then19.i104, label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit121

if.then19.i104:                                   ; preds = %if.then6.i88
  %_M_streambuf.i.i105 = getelementptr inbounds nuw i8, ptr %add.ptr15.i97, i64 232
  %19 = load ptr, ptr %_M_streambuf.i.i105, align 8, !tbaa !22
  %_M_in_cur.i.i.i106 = getelementptr inbounds nuw i8, ptr %19, i64 16
  %20 = load ptr, ptr %_M_in_cur.i.i.i106, align 8, !tbaa !30
  %_M_in_end.i.i.i107 = getelementptr inbounds nuw i8, ptr %19, i64 24
  %21 = load ptr, ptr %_M_in_end.i.i.i107, align 8, !tbaa !33
  %cmp.i19.i108 = icmp ult ptr %20, %21
  br i1 %cmp.i19.i108, label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit121, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i109, !prof !34

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i109: ; preds = %if.then19.i104
  %vtable.i.i110 = load ptr, ptr %19, align 8, !tbaa !5
  %vfn.i.i111 = getelementptr inbounds nuw i8, ptr %vtable.i.i110, i64 72
  %22 = load ptr, ptr %vfn.i.i111, align 8
  %call5.i.i112 = call noundef i32 %22(ptr noundef nonnull align 8 dereferenceable(64) %19)
  %cmp.i20.i113 = icmp eq i32 %call5.i.i112, -1
  br i1 %cmp.i20.i113, label %if.then28.i114, label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit121, !prof !35

if.then28.i114:                                   ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i109
  %vtable29.i115 = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  %vbase.offset.ptr30.i116 = getelementptr i8, ptr %vtable29.i115, i64 -24
  %vbase.offset31.i117 = load i64, ptr %vbase.offset.ptr30.i116, align 8
  %add.ptr32.i118 = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset31.i117
  %_M_streambuf_state.i.i21.i119 = getelementptr inbounds nuw i8, ptr %add.ptr32.i118, i64 32
  %23 = load i32, ptr %_M_streambuf_state.i.i21.i119, align 8, !tbaa !21
  %or.i.i22.i120 = or i32 %23, 2
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr32.i118, i32 noundef %or.i.i22.i120)
  br label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit121

_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit121: ; preds = %if.then6.i88, %if.then19.i104, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i109, %if.then28.i114
  %call6 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %subs) #6
  %call6.fr = freeze i64 %call6
  %conv = trunc i64 %call6.fr to i32
  %call8 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %rpl) #6
  %conv9 = trunc i64 %call8 to i32
  %24 = load i8, ptr %subs, align 16
  %cmp19168 = icmp sgt i32 %conv, 0
  br i1 %cmp19168, label %land.rhs.us.preheader, label %vector.ph

vector.ph:                                        ; preds = %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit121
  %cmp31 = icmp eq i32 %conv, 0
  %broadcast.splatinsert = insertelement <16 x i1> poison, i1 %cmp31, i64 0
  %broadcast.splat = shufflevector <16 x i1> %broadcast.splatinsert, <16 x i1> poison, <16 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %25 = getelementptr inbounds nuw [256 x i8], ptr %str, i64 0, i64 %index
  %wide.load = load <16 x i8>, ptr %25, align 16, !tbaa !36
  %26 = icmp eq <16 x i8> %wide.load, zeroinitializer
  %27 = or <16 x i1> %26, %broadcast.splat
  %index.next = add nuw i64 %index, 16
  %28 = bitcast <16 x i1> %27 to i16
  %29 = icmp ne i16 %28, 0
  %30 = icmp eq i64 %index.next, 256
  %31 = or i1 %29, %30
  br i1 %31, label %middle.split, label %vector.body, !llvm.loop !37

middle.split:                                     ; preds = %vector.body
  br i1 %29, label %vector.early.exit, label %land.rhs41.preheader

vector.early.exit:                                ; preds = %middle.split
  %32 = call i64 @llvm.experimental.cttz.elts.i64.v16i1(<16 x i1> %27, i1 true)
  %33 = add i64 %index, %32
  %34 = trunc nuw nsw i64 %33 to i32
  br label %land.rhs41.preheader

land.rhs.us.preheader:                            ; preds = %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit121
  %wide.trip.count = and i64 %call6.fr, 2147483647
  br label %land.rhs.us

land.rhs.us:                                      ; preds = %land.rhs.us.preheader, %for.inc34.us
  %indvars.iv196 = phi i64 [ 0, %land.rhs.us.preheader ], [ %indvars.iv.next197, %for.inc34.us ]
  %c.0173.us = phi i32 [ 0, %land.rhs.us.preheader ], [ %c.2.us, %for.inc34.us ]
  %arrayidx.us = getelementptr inbounds nuw [256 x i8], ptr %str, i64 0, i64 %indvars.iv196
  %35 = load i8, ptr %arrayidx.us, align 1, !tbaa !36
  %cmp11.not.us = icmp eq i8 %35, 0
  br i1 %cmp11.not.us, label %for.end36.loopexit230.split.loop.exit238, label %for.body.us

for.body.us:                                      ; preds = %land.rhs.us
  %cmp17.us = icmp eq i8 %35, %24
  br i1 %cmp17.us, label %for.body20.us, label %if.end30.us

for.body20.us:                                    ; preds = %for.body.us, %if.else.us
  %indvars.iv189 = phi i64 [ %indvars.iv.next190, %if.else.us ], [ 0, %for.body.us ]
  %36 = add nuw nsw i64 %indvars.iv189, %indvars.iv196
  %arrayidx22.us = getelementptr inbounds nuw [256 x i8], ptr %str, i64 0, i64 %36
  %37 = load i8, ptr %arrayidx22.us, align 1, !tbaa !36
  %arrayidx25.us = getelementptr inbounds nuw [256 x i8], ptr %subs, i64 0, i64 %indvars.iv189
  %38 = load i8, ptr %arrayidx25.us, align 1, !tbaa !36
  %cmp27.not.us = icmp eq i8 %37, %38
  br i1 %cmp27.not.us, label %if.else.us, label %if.end30.us

if.end30.us:                                      ; preds = %for.body20.us, %for.body.us
  %c.2.us = phi i32 [ %c.0173.us, %for.body.us ], [ 1, %for.body20.us ]
  %cmp31.us = icmp eq i32 %c.2.us, %conv
  br i1 %cmp31.us, label %for.end36.loopexit230.split.loop.exit235, label %for.inc34.us

for.inc34.us:                                     ; preds = %if.end30.us
  %indvars.iv.next197 = add nuw nsw i64 %indvars.iv196, 1
  %exitcond199.not = icmp eq i64 %indvars.iv.next197, 256
  br i1 %exitcond199.not, label %for.end36, label %land.rhs.us, !llvm.loop !42

if.else.us:                                       ; preds = %for.body20.us
  %indvars.iv.next190 = add nuw nsw i64 %indvars.iv189, 1
  %exitcond195.not = icmp eq i64 %indvars.iv.next190, %wide.trip.count
  br i1 %exitcond195.not, label %for.end36.loopexit, label %for.body20.us, !llvm.loop !43

for.end36.loopexit:                               ; preds = %if.else.us
  %39 = trunc nuw nsw i64 %indvars.iv196 to i32
  br label %for.end36

for.end36.loopexit230.split.loop.exit235:         ; preds = %if.end30.us
  %40 = trunc nuw nsw i64 %indvars.iv196 to i32
  br label %for.end36

for.end36.loopexit230.split.loop.exit238:         ; preds = %land.rhs.us
  %41 = trunc nuw nsw i64 %indvars.iv196 to i32
  br label %for.end36

for.end36:                                        ; preds = %for.inc34.us, %for.end36.loopexit230.split.loop.exit235, %for.end36.loopexit230.split.loop.exit238, %for.end36.loopexit
  %.us-phi = phi i32 [ %39, %for.end36.loopexit ], [ %40, %for.end36.loopexit230.split.loop.exit235 ], [ %41, %for.end36.loopexit230.split.loop.exit238 ], [ 256, %for.inc34.us ]
  %.us-phi174 = phi i32 [ %conv, %for.end36.loopexit ], [ %conv, %for.end36.loopexit230.split.loop.exit235 ], [ %c.0173.us, %for.end36.loopexit230.split.loop.exit238 ], [ %c.2.us, %for.inc34.us ]
  %cmp37 = icmp eq i32 %.us-phi174, 0
  br i1 %cmp37, label %land.rhs41.preheader, label %if.end54

land.rhs41.preheader:                             ; preds = %middle.split, %vector.early.exit, %for.end36
  %.us-phi227 = phi i32 [ %.us-phi, %for.end36 ], [ %34, %vector.early.exit ], [ 256, %middle.split ]
  br label %land.rhs41

land.rhs41:                                       ; preds = %land.rhs41.preheader, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
  %indvars.iv200 = phi i64 [ 0, %land.rhs41.preheader ], [ %indvars.iv.next201, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit ]
  %arrayidx43 = getelementptr inbounds nuw [256 x i8], ptr %str, i64 0, i64 %indvars.iv200
  %42 = load i8, ptr %arrayidx43, align 1, !tbaa !36
  %cmp45.not = icmp eq i8 %42, 0
  br i1 %cmp45.not, label %if.end54, label %for.body47

for.body47:                                       ; preds = %land.rhs41
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__c.addr.i)
  store i8 %42, ptr %__c.addr.i, align 1, !tbaa !36
  %vtable.i122 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !5
  %vbase.offset.ptr.i123 = getelementptr i8, ptr %vtable.i122, i64 -24
  %vbase.offset.i124 = load i64, ptr %vbase.offset.ptr.i123, align 8
  %gep = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 16), i64 %vbase.offset.i124
  %43 = load i64, ptr %gep, align 8, !tbaa !8
  %cmp.not.i = icmp eq i64 %43, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %for.body47
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %__c.addr.i, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

if.end.i:                                         ; preds = %for.body47
  %call2.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %42)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %if.then.i, %if.end.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__c.addr.i)
  %indvars.iv.next201 = add nuw nsw i64 %indvars.iv200, 1
  %exitcond203.not = icmp eq i64 %indvars.iv.next201, 256
  br i1 %exitcond203.not, label %if.end54, label %land.rhs41, !llvm.loop !44

if.end54:                                         ; preds = %land.rhs41, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit, %for.end36
  %.us-phi174228 = phi i32 [ %.us-phi174, %for.end36 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit ], [ 0, %land.rhs41 ]
  %.us-phi226 = phi i32 [ %.us-phi, %for.end36 ], [ %.us-phi227, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit ], [ %.us-phi227, %land.rhs41 ]
  %cmp55 = icmp eq i32 %.us-phi174228, %conv
  br i1 %cmp55, label %for.cond57.preheader, label %if.end92

for.cond57.preheader:                             ; preds = %if.end54
  %cmp58177.not = icmp eq i32 %.us-phi226, 0
  br i1 %cmp58177.not, label %for.cond66.preheader, label %for.body59.preheader

for.body59.preheader:                             ; preds = %for.cond57.preheader
  %wide.trip.count207 = zext i32 %.us-phi226 to i64
  br label %for.body59

for.cond66.preheader:                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit139, %for.cond57.preheader
  %add67 = add i32 %.us-phi226, %conv9
  %cmp68180 = icmp sgt i32 %conv9, 0
  br i1 %cmp68180, label %for.body69.preheader, label %for.cond77.preheader

for.body69.preheader:                             ; preds = %for.cond66.preheader
  %44 = zext nneg i32 %.us-phi226 to i64
  %45 = sext i32 %.us-phi226 to i64
  %46 = sext i32 %add67 to i64
  br label %for.body69

for.body59:                                       ; preds = %for.body59.preheader, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit139
  %indvars.iv204 = phi i64 [ 0, %for.body59.preheader ], [ %indvars.iv.next205, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit139 ]
  %arrayidx61 = getelementptr inbounds nuw [256 x i8], ptr %str, i64 0, i64 %indvars.iv204
  %47 = load i8, ptr %arrayidx61, align 1, !tbaa !36
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__c.addr.i127)
  store i8 %47, ptr %__c.addr.i127, align 1, !tbaa !36
  %vtable.i128 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !5
  %vbase.offset.ptr.i129 = getelementptr i8, ptr %vtable.i128, i64 -24
  %vbase.offset.i130 = load i64, ptr %vbase.offset.ptr.i129, align 8
  %gep176 = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 16), i64 %vbase.offset.i130
  %48 = load i64, ptr %gep176, align 8, !tbaa !8
  %cmp.not.i133 = icmp eq i64 %48, 0
  br i1 %cmp.not.i133, label %if.end.i137, label %if.then.i134

if.then.i134:                                     ; preds = %for.body59
  %call1.i135 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %__c.addr.i127, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit139

if.end.i137:                                      ; preds = %for.body59
  %call2.i138 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %47)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit139

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit139: ; preds = %if.then.i134, %if.end.i137
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__c.addr.i127)
  %indvars.iv.next205 = add nuw nsw i64 %indvars.iv204, 1
  %exitcond208.not = icmp eq i64 %indvars.iv.next205, %wide.trip.count207
  br i1 %exitcond208.not, label %for.cond66.preheader, label %for.body59, !llvm.loop !45

for.cond77.preheader:                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit152, %for.cond66.preheader
  %cmp78183 = icmp slt i32 %add67, 256
  br i1 %cmp78183, label %land.rhs79.preheader, label %if.end92

land.rhs79.preheader:                             ; preds = %for.cond77.preheader
  %49 = sext i32 %add67 to i64
  br label %land.rhs79

for.body69:                                       ; preds = %for.body69.preheader, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit152
  %indvars.iv209 = phi i64 [ %44, %for.body69.preheader ], [ %indvars.iv.next210, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit152 ]
  %50 = sub nuw nsw i64 %indvars.iv209, %45
  %arrayidx71 = getelementptr inbounds nuw [256 x i8], ptr %rpl, i64 0, i64 %50
  %51 = load i8, ptr %arrayidx71, align 1, !tbaa !36
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__c.addr.i140)
  store i8 %51, ptr %__c.addr.i140, align 1, !tbaa !36
  %vtable.i141 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !5
  %vbase.offset.ptr.i142 = getelementptr i8, ptr %vtable.i141, i64 -24
  %vbase.offset.i143 = load i64, ptr %vbase.offset.ptr.i142, align 8
  %gep179 = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 16), i64 %vbase.offset.i143
  %52 = load i64, ptr %gep179, align 8, !tbaa !8
  %cmp.not.i146 = icmp eq i64 %52, 0
  br i1 %cmp.not.i146, label %if.end.i150, label %if.then.i147

if.then.i147:                                     ; preds = %for.body69
  %call1.i148 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %__c.addr.i140, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit152

if.end.i150:                                      ; preds = %for.body69
  %call2.i151 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %51)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit152

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit152: ; preds = %if.then.i147, %if.end.i150
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__c.addr.i140)
  %indvars.iv.next210 = add nuw nsw i64 %indvars.iv209, 1
  %cmp68 = icmp slt i64 %indvars.iv.next210, %46
  br i1 %cmp68, label %for.body69, label %for.cond77.preheader, !llvm.loop !46

land.rhs79:                                       ; preds = %land.rhs79.preheader, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit165
  %indvars.iv213 = phi i64 [ %49, %land.rhs79.preheader ], [ %indvars.iv.next214, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit165 ]
  %arrayidx81 = getelementptr inbounds [256 x i8], ptr %str, i64 0, i64 %indvars.iv213
  %53 = load i8, ptr %arrayidx81, align 1, !tbaa !36
  %cmp83.not = icmp eq i8 %53, 0
  br i1 %cmp83.not, label %if.end92, label %for.body85

for.body85:                                       ; preds = %land.rhs79
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__c.addr.i153)
  store i8 %53, ptr %__c.addr.i153, align 1, !tbaa !36
  %vtable.i154 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !5
  %vbase.offset.ptr.i155 = getelementptr i8, ptr %vtable.i154, i64 -24
  %vbase.offset.i156 = load i64, ptr %vbase.offset.ptr.i155, align 8
  %gep182 = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 16), i64 %vbase.offset.i156
  %54 = load i64, ptr %gep182, align 8, !tbaa !8
  %cmp.not.i159 = icmp eq i64 %54, 0
  br i1 %cmp.not.i159, label %if.end.i163, label %if.then.i160

if.then.i160:                                     ; preds = %for.body85
  %call1.i161 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %__c.addr.i153, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit165

if.end.i163:                                      ; preds = %for.body85
  %call2.i164 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %53)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit165

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit165: ; preds = %if.then.i160, %if.end.i163
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__c.addr.i153)
  %indvars.iv.next214 = add nsw i64 %indvars.iv213, 1
  %55 = and i64 %indvars.iv.next214, 4294967295
  %exitcond216.not = icmp eq i64 %55, 256
  br i1 %exitcond216.not, label %if.end92, label %land.rhs79, !llvm.loop !47

if.end92:                                         ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit165, %land.rhs79, %for.cond77.preheader, %if.end54
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %rpl) #5
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %subs) #5
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %str) #5
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.experimental.cttz.elts.i64.v16i1(<16 x i1>, i1 immarg) #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #5 = { nounwind }
attributes #6 = { nounwind willreturn memory(read) }

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
!30 = !{!31, !32, i64 16}
!31 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !32, i64 8, !32, i64 16, !32, i64 24, !32, i64 32, !32, i64 40, !32, i64 48, !19, i64 56}
!32 = !{!"p1 omnipotent char", !15, i64 0}
!33 = !{!31, !32, i64 24}
!34 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!35 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!36 = !{!11, !11, i64 0}
!37 = distinct !{!37, !38, !39, !40, !41}
!38 = !{!"llvm.loop.mustprogress"}
!39 = !{!"llvm.loop.unroll.disable"}
!40 = !{!"llvm.loop.isvectorized", i32 1}
!41 = !{!"llvm.loop.unroll.runtime.disable"}
!42 = distinct !{!42, !38, !39}
!43 = distinct !{!43, !38, !39}
!44 = distinct !{!44, !38, !39}
!45 = distinct !{!45, !38, !39}
!46 = distinct !{!46, !38, !39}
!47 = distinct !{!47, !38, !39}
