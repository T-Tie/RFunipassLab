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
  %__c.addr.i133 = alloca i8, align 1
  %__c.addr.i120 = alloca i8, align 1
  %__c.addr.i107 = alloca i8, align 1
  %__c.addr.i = alloca i8, align 1
  %str = alloca [256 x i8], align 16
  %subs = alloca [256 x i8], align 16
  %rpl = alloca [256 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %str) #6
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %subs) #6
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %rpl) #6
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
  %_M_streambuf_state.i.i.i = getelementptr inbounds nuw i8, ptr %add.ptr15.i, i64 32
  %1 = load i32, ptr %_M_streambuf_state.i.i.i, align 8, !tbaa !21
  %cmp.i.i = icmp eq i32 %1, 0
  %2 = add i64 %0, -257
  %or.cond.i = icmp ult i64 %2, -256
  %or.cond = select i1 %cmp.i.i, i1 %or.cond.i, i1 false
  br i1 %or.cond, label %if.then19.i, label %if.then6.i41

if.then19.i:                                      ; preds = %entry
  %_M_streambuf.i.i = getelementptr inbounds nuw i8, ptr %add.ptr15.i, i64 232
  %3 = load ptr, ptr %_M_streambuf.i.i, align 8, !tbaa !22
  %call25.i = call noundef i32 @_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv(ptr noundef nonnull align 8 dereferenceable(64) %3)
  %cmp.i18.i = icmp eq i32 %call25.i, -1
  %vtable7.i42.pre181 = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  br i1 %cmp.i18.i, label %if.then28.i, label %if.then6.i41, !prof !30

if.then28.i:                                      ; preds = %if.then19.i
  %vbase.offset.ptr30.i = getelementptr i8, ptr %vtable7.i42.pre181, i64 -24
  %vbase.offset31.i = load i64, ptr %vbase.offset.ptr30.i, align 8
  %add.ptr32.i = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset31.i
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr32.i, i32 noundef 2)
  %vtable7.i42.pre = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  br label %if.then6.i41

if.then6.i41:                                     ; preds = %if.then28.i, %if.then19.i, %entry
  %vtable7.i42 = phi ptr [ %vtable7.i42.pre, %if.then28.i ], [ %vtable7.i42.pre181, %if.then19.i ], [ %vtable12.i, %entry ]
  %vbase.offset.ptr8.i43 = getelementptr i8, ptr %vtable7.i42, i64 -24
  %vbase.offset9.i44 = load i64, ptr %vbase.offset.ptr8.i43, align 8
  %add.ptr10.i45 = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset9.i44
  %_M_width.i17.i46 = getelementptr inbounds nuw i8, ptr %add.ptr10.i45, i64 16
  %4 = load i64, ptr %_M_width.i17.i46, align 8, !tbaa !8
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull %subs, i64 noundef 256)
  %vtable12.i47 = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  %vbase.offset.ptr13.i48 = getelementptr i8, ptr %vtable12.i47, i64 -24
  %vbase.offset14.i49 = load i64, ptr %vbase.offset.ptr13.i48, align 8
  %add.ptr15.i50 = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset14.i49
  %_M_streambuf_state.i.i.i51 = getelementptr inbounds nuw i8, ptr %add.ptr15.i50, i64 32
  %5 = load i32, ptr %_M_streambuf_state.i.i.i51, align 8, !tbaa !21
  %cmp.i.i52 = icmp eq i32 %5, 0
  %6 = add i64 %4, -257
  %or.cond.i56 = icmp ult i64 %6, -256
  %or.cond146 = select i1 %cmp.i.i52, i1 %or.cond.i56, i1 false
  br i1 %or.cond146, label %if.then19.i57, label %if.then6.i76

if.then19.i57:                                    ; preds = %if.then6.i41
  %_M_streambuf.i.i58 = getelementptr inbounds nuw i8, ptr %add.ptr15.i50, i64 232
  %7 = load ptr, ptr %_M_streambuf.i.i58, align 8, !tbaa !22
  %call25.i59 = call noundef i32 @_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv(ptr noundef nonnull align 8 dereferenceable(64) %7)
  %cmp.i18.i60 = icmp eq i32 %call25.i59, -1
  %vtable7.i77.pre183 = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  br i1 %cmp.i18.i60, label %if.then28.i61, label %if.then6.i76, !prof !30

if.then28.i61:                                    ; preds = %if.then19.i57
  %vbase.offset.ptr30.i63 = getelementptr i8, ptr %vtable7.i77.pre183, i64 -24
  %vbase.offset31.i64 = load i64, ptr %vbase.offset.ptr30.i63, align 8
  %add.ptr32.i65 = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset31.i64
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr32.i65, i32 noundef 2)
  %vtable7.i77.pre = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  br label %if.then6.i76

if.then6.i76:                                     ; preds = %if.then28.i61, %if.then19.i57, %if.then6.i41
  %vtable7.i77 = phi ptr [ %vtable7.i77.pre, %if.then28.i61 ], [ %vtable7.i77.pre183, %if.then19.i57 ], [ %vtable12.i47, %if.then6.i41 ]
  %vbase.offset.ptr8.i78 = getelementptr i8, ptr %vtable7.i77, i64 -24
  %vbase.offset9.i79 = load i64, ptr %vbase.offset.ptr8.i78, align 8
  %add.ptr10.i80 = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset9.i79
  %_M_width.i17.i81 = getelementptr inbounds nuw i8, ptr %add.ptr10.i80, i64 16
  %8 = load i64, ptr %_M_width.i17.i81, align 8, !tbaa !8
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull %rpl, i64 noundef 256)
  %vtable12.i82 = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  %vbase.offset.ptr13.i83 = getelementptr i8, ptr %vtable12.i82, i64 -24
  %vbase.offset14.i84 = load i64, ptr %vbase.offset.ptr13.i83, align 8
  %add.ptr15.i85 = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset14.i84
  %_M_streambuf_state.i.i.i86 = getelementptr inbounds nuw i8, ptr %add.ptr15.i85, i64 32
  %9 = load i32, ptr %_M_streambuf_state.i.i.i86, align 8, !tbaa !21
  %cmp.i.i87 = icmp eq i32 %9, 0
  %10 = add i64 %8, -257
  %or.cond.i91 = icmp ult i64 %10, -256
  %or.cond147 = select i1 %cmp.i.i87, i1 %or.cond.i91, i1 false
  br i1 %or.cond147, label %if.then19.i92, label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit101

if.then19.i92:                                    ; preds = %if.then6.i76
  %_M_streambuf.i.i93 = getelementptr inbounds nuw i8, ptr %add.ptr15.i85, i64 232
  %11 = load ptr, ptr %_M_streambuf.i.i93, align 8, !tbaa !22
  %call25.i94 = call noundef i32 @_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv(ptr noundef nonnull align 8 dereferenceable(64) %11)
  %cmp.i18.i95 = icmp eq i32 %call25.i94, -1
  br i1 %cmp.i18.i95, label %if.then28.i96, label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit101, !prof !30

if.then28.i96:                                    ; preds = %if.then19.i92
  %vtable29.i97 = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  %vbase.offset.ptr30.i98 = getelementptr i8, ptr %vtable29.i97, i64 -24
  %vbase.offset31.i99 = load i64, ptr %vbase.offset.ptr30.i98, align 8
  %add.ptr32.i100 = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset31.i99
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr32.i100, i32 noundef 2)
  br label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit101

_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit101: ; preds = %if.then6.i76, %if.then19.i92, %if.then28.i96
  %call6 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %subs) #7
  %conv = trunc i64 %call6 to i32
  %call8 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %rpl) #7
  %conv9 = trunc i64 %call8 to i32
  %12 = load i8, ptr %subs, align 16
  %smax = call i32 @llvm.smax.i32(i32 %conv, i32 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond

for.cond:                                         ; preds = %for.inc34, %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit101
  %indvars.iv155 = phi i64 [ %indvars.iv.next156, %for.inc34 ], [ 0, %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit101 ]
  %c.0 = phi i32 [ %c.2, %for.inc34 ], [ 0, %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit101 ]
  %exitcond158.not = icmp eq i64 %indvars.iv155, 256
  br i1 %exitcond158.not, label %for.end36, label %land.rhs

land.rhs:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [256 x i8], ptr %str, i64 0, i64 %indvars.iv155
  %13 = load i8, ptr %arrayidx, align 1, !tbaa !31
  %cmp11.not = icmp eq i8 %13, 0
  br i1 %cmp11.not, label %for.end36.split.loop.exit188, label %for.body

for.body:                                         ; preds = %land.rhs
  %cmp17 = icmp eq i8 %13, %12
  br i1 %cmp17, label %for.cond18, label %if.end30

for.cond18:                                       ; preds = %for.body, %for.body20
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body20 ], [ 0, %for.body ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %if.end30, label %for.body20

for.body20:                                       ; preds = %for.cond18
  %14 = add nuw nsw i64 %indvars.iv, %indvars.iv155
  %arrayidx22 = getelementptr inbounds nuw [256 x i8], ptr %str, i64 0, i64 %14
  %15 = load i8, ptr %arrayidx22, align 1, !tbaa !31
  %arrayidx25 = getelementptr inbounds nuw [256 x i8], ptr %subs, i64 0, i64 %indvars.iv
  %16 = load i8, ptr %arrayidx25, align 1, !tbaa !31
  %cmp27.not = icmp eq i8 %15, %16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %cmp27.not, label %for.cond18, label %if.end30, !llvm.loop !32

if.end30:                                         ; preds = %for.body20, %for.cond18, %for.body
  %c.2 = phi i32 [ %c.0, %for.body ], [ 1, %for.body20 ], [ %smax, %for.cond18 ]
  %cmp31 = icmp eq i32 %c.2, %conv
  br i1 %cmp31, label %for.end36.split.loop.exit185, label %for.inc34

for.inc34:                                        ; preds = %if.end30
  %indvars.iv.next156 = add nuw nsw i64 %indvars.iv155, 1
  br label %for.cond, !llvm.loop !35

for.end36.split.loop.exit185:                     ; preds = %if.end30
  %17 = trunc nuw nsw i64 %indvars.iv155 to i32
  br label %for.end36

for.end36.split.loop.exit188:                     ; preds = %land.rhs
  %18 = trunc nuw nsw i64 %indvars.iv155 to i32
  br label %for.end36

for.end36:                                        ; preds = %for.cond, %for.end36.split.loop.exit188, %for.end36.split.loop.exit185
  %i.0.lcssa = phi i32 [ %17, %for.end36.split.loop.exit185 ], [ %18, %for.end36.split.loop.exit188 ], [ 256, %for.cond ]
  %c.1 = phi i32 [ %conv, %for.end36.split.loop.exit185 ], [ %c.0, %for.end36.split.loop.exit188 ], [ %c.0, %for.cond ]
  %cmp37 = icmp eq i32 %c.1, 0
  br i1 %cmp37, label %for.cond39, label %if.end54

for.cond39:                                       ; preds = %for.end36, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
  %indvars.iv159 = phi i64 [ %indvars.iv.next160, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit ], [ 0, %for.end36 ]
  %exitcond162.not = icmp eq i64 %indvars.iv159, 256
  br i1 %exitcond162.not, label %if.end54, label %land.rhs41

land.rhs41:                                       ; preds = %for.cond39
  %arrayidx43 = getelementptr inbounds nuw [256 x i8], ptr %str, i64 0, i64 %indvars.iv159
  %19 = load i8, ptr %arrayidx43, align 1, !tbaa !31
  %cmp45.not = icmp eq i8 %19, 0
  br i1 %cmp45.not, label %if.end54, label %for.body47

for.body47:                                       ; preds = %land.rhs41
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__c.addr.i)
  store i8 %19, ptr %__c.addr.i, align 1, !tbaa !31
  %vtable.i102 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !5
  %vbase.offset.ptr.i103 = getelementptr i8, ptr %vtable.i102, i64 -24
  %vbase.offset.i104 = load i64, ptr %vbase.offset.ptr.i103, align 8
  %gep = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 16), i64 %vbase.offset.i104
  %20 = load i64, ptr %gep, align 8, !tbaa !8
  %cmp.not.i = icmp eq i64 %20, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %for.body47
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %__c.addr.i, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

if.end.i:                                         ; preds = %for.body47
  %call2.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %19)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %if.then.i, %if.end.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__c.addr.i)
  %indvars.iv.next160 = add nuw nsw i64 %indvars.iv159, 1
  br label %for.cond39, !llvm.loop !36

if.end54:                                         ; preds = %land.rhs41, %for.cond39, %for.end36
  %cmp55 = icmp eq i32 %c.1, %conv
  br i1 %cmp55, label %for.cond57.preheader, label %if.end92

for.cond57.preheader:                             ; preds = %if.end54
  %wide.trip.count166 = zext i32 %i.0.lcssa to i64
  br label %for.cond57

for.cond57:                                       ; preds = %for.cond57.preheader, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit119
  %indvars.iv163 = phi i64 [ 0, %for.cond57.preheader ], [ %indvars.iv.next164, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit119 ]
  %exitcond167.not = icmp eq i64 %indvars.iv163, %wide.trip.count166
  br i1 %exitcond167.not, label %for.cond66.preheader, label %for.body59

for.cond66.preheader:                             ; preds = %for.cond57
  %add67 = add nsw i32 %i.0.lcssa, %conv9
  %21 = sext i32 %i.0.lcssa to i64
  %smax172 = call i32 @llvm.smax.i32(i32 %i.0.lcssa, i32 %add67)
  %wide.trip.count173 = zext i32 %smax172 to i64
  br label %for.cond66

for.body59:                                       ; preds = %for.cond57
  %arrayidx61 = getelementptr inbounds nuw [256 x i8], ptr %str, i64 0, i64 %indvars.iv163
  %22 = load i8, ptr %arrayidx61, align 1, !tbaa !31
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__c.addr.i107)
  store i8 %22, ptr %__c.addr.i107, align 1, !tbaa !31
  %vtable.i108 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !5
  %vbase.offset.ptr.i109 = getelementptr i8, ptr %vtable.i108, i64 -24
  %vbase.offset.i110 = load i64, ptr %vbase.offset.ptr.i109, align 8
  %gep148 = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 16), i64 %vbase.offset.i110
  %23 = load i64, ptr %gep148, align 8, !tbaa !8
  %cmp.not.i113 = icmp eq i64 %23, 0
  br i1 %cmp.not.i113, label %if.end.i117, label %if.then.i114

if.then.i114:                                     ; preds = %for.body59
  %call1.i115 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %__c.addr.i107, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit119

if.end.i117:                                      ; preds = %for.body59
  %call2.i118 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %22)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit119

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit119: ; preds = %if.then.i114, %if.end.i117
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__c.addr.i107)
  %indvars.iv.next164 = add nuw nsw i64 %indvars.iv163, 1
  br label %for.cond57, !llvm.loop !37

for.cond66:                                       ; preds = %for.cond66.preheader, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit132
  %indvars.iv168 = phi i64 [ %wide.trip.count166, %for.cond66.preheader ], [ %indvars.iv.next169, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit132 ]
  %exitcond174.not = icmp eq i64 %indvars.iv168, %wide.trip.count173
  br i1 %exitcond174.not, label %for.cond77.preheader, label %for.body69

for.cond77.preheader:                             ; preds = %for.cond66
  %24 = sext i32 %add67 to i64
  %smax178 = call i32 @llvm.smax.i32(i32 %add67, i32 256)
  %wide.trip.count179 = zext nneg i32 %smax178 to i64
  br label %for.cond77

for.body69:                                       ; preds = %for.cond66
  %25 = sub nuw nsw i64 %indvars.iv168, %21
  %arrayidx71 = getelementptr inbounds nuw [256 x i8], ptr %rpl, i64 0, i64 %25
  %26 = load i8, ptr %arrayidx71, align 1, !tbaa !31
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__c.addr.i120)
  store i8 %26, ptr %__c.addr.i120, align 1, !tbaa !31
  %vtable.i121 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !5
  %vbase.offset.ptr.i122 = getelementptr i8, ptr %vtable.i121, i64 -24
  %vbase.offset.i123 = load i64, ptr %vbase.offset.ptr.i122, align 8
  %gep149 = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 16), i64 %vbase.offset.i123
  %27 = load i64, ptr %gep149, align 8, !tbaa !8
  %cmp.not.i126 = icmp eq i64 %27, 0
  br i1 %cmp.not.i126, label %if.end.i130, label %if.then.i127

if.then.i127:                                     ; preds = %for.body69
  %call1.i128 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %__c.addr.i120, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit132

if.end.i130:                                      ; preds = %for.body69
  %call2.i131 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %26)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit132

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit132: ; preds = %if.then.i127, %if.end.i130
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__c.addr.i120)
  %indvars.iv.next169 = add nuw nsw i64 %indvars.iv168, 1
  br label %for.cond66, !llvm.loop !38

for.cond77:                                       ; preds = %for.cond77.preheader, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit145
  %indvars.iv175 = phi i64 [ %24, %for.cond77.preheader ], [ %indvars.iv.next176, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit145 ]
  %exitcond180.not = icmp eq i64 %indvars.iv175, %wide.trip.count179
  br i1 %exitcond180.not, label %if.end92, label %land.rhs79

land.rhs79:                                       ; preds = %for.cond77
  %arrayidx81 = getelementptr inbounds [256 x i8], ptr %str, i64 0, i64 %indvars.iv175
  %28 = load i8, ptr %arrayidx81, align 1, !tbaa !31
  %cmp83.not = icmp eq i8 %28, 0
  br i1 %cmp83.not, label %if.end92, label %for.body85

for.body85:                                       ; preds = %land.rhs79
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__c.addr.i133)
  store i8 %28, ptr %__c.addr.i133, align 1, !tbaa !31
  %vtable.i134 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !5
  %vbase.offset.ptr.i135 = getelementptr i8, ptr %vtable.i134, i64 -24
  %vbase.offset.i136 = load i64, ptr %vbase.offset.ptr.i135, align 8
  %gep150 = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 16), i64 %vbase.offset.i136
  %29 = load i64, ptr %gep150, align 8, !tbaa !8
  %cmp.not.i139 = icmp eq i64 %29, 0
  br i1 %cmp.not.i139, label %if.end.i143, label %if.then.i140

if.then.i140:                                     ; preds = %for.body85
  %call1.i141 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %__c.addr.i133, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit145

if.end.i143:                                      ; preds = %for.body85
  %call2.i144 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %28)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit145

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit145: ; preds = %if.then.i140, %if.end.i143
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__c.addr.i133)
  %indvars.iv.next176 = add nsw i64 %indvars.iv175, 1
  br label %for.cond77, !llvm.loop !39

if.end92:                                         ; preds = %land.rhs79, %for.cond77, %if.end54
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %rpl) #6
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %subs) #6
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %str) #6
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #3 align 2

declare void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
declare noundef i32 @_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #3 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!31 = !{!11, !11, i64 0}
!32 = distinct !{!32, !33, !34}
!33 = !{!"llvm.loop.mustprogress"}
!34 = !{!"llvm.loop.unroll.disable"}
!35 = distinct !{!35, !33, !34}
!36 = distinct !{!36, !33, !34}
!37 = distinct !{!37, !33, !34}
!38 = distinct !{!38, !33, !34}
!39 = distinct !{!39, !33, !34}
