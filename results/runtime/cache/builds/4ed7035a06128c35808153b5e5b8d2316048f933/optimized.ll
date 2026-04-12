; ModuleID = '<stdin>'
source_filename = "/tmp/tmppxqc8soi.cpp"
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
  %__c.addr.i128 = alloca i8, align 1
  %__c.addr.i114 = alloca i8, align 1
  %__c.addr.i101 = alloca i8, align 1
  %__c.addr.i88 = alloca i8, align 1
  %__c.addr.i75 = alloca i8, align 1
  %__c.addr.i = alloca i8, align 1
  %n = alloca i32, align 4
  %a = alloca [50 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %a) #5
  %vtable7.i = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  %vbase.offset.ptr8.i = getelementptr i8, ptr %vtable7.i, i64 -24
  %vbase.offset9.i = load i64, ptr %vbase.offset.ptr8.i, align 8
  %add.ptr10.i = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset9.i
  %_M_width.i17.i = getelementptr inbounds nuw i8, ptr %add.ptr10.i, i64 16
  %0 = load i64, ptr %_M_width.i17.i, align 8, !tbaa !8
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull %a, i64 noundef 50)
  %vtable12.i = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  %vbase.offset.ptr13.i = getelementptr i8, ptr %vtable12.i, i64 -24
  %vbase.offset14.i = load i64, ptr %vbase.offset.ptr13.i, align 8
  %add.ptr15.i = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset14.i
  %_M_streambuf_state.i.i.i = getelementptr inbounds nuw i8, ptr %add.ptr15.i, i64 32
  %1 = load i32, ptr %_M_streambuf_state.i.i.i, align 8, !tbaa !21
  %cmp.i.i = icmp eq i32 %1, 0
  %2 = add i64 %0, -51
  %or.cond.i = icmp ult i64 %2, -50
  %or.cond = select i1 %cmp.i.i, i1 %or.cond.i, i1 false
  br i1 %or.cond, label %if.then19.i, label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit

if.then19.i:                                      ; preds = %entry
  %_M_streambuf.i.i = getelementptr inbounds nuw i8, ptr %add.ptr15.i, i64 232
  %3 = load ptr, ptr %_M_streambuf.i.i, align 8, !tbaa !22
  %call25.i = call noundef i32 @_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv(ptr noundef nonnull align 8 dereferenceable(64) %3)
  %cmp.i18.i = icmp eq i32 %call25.i, -1
  br i1 %cmp.i18.i, label %if.then28.i, label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit, !prof !30

if.then28.i:                                      ; preds = %if.then19.i
  %vtable29.i = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  %vbase.offset.ptr30.i = getelementptr i8, ptr %vtable29.i, i64 -24
  %vbase.offset31.i = load i64, ptr %vbase.offset.ptr30.i, align 8
  %add.ptr32.i = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset31.i
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr32.i, i32 noundef 2)
  br label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit

_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit: ; preds = %entry, %if.then19.i, %if.then28.i
  %call.i.i = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %a) #5
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %a, i64 noundef %call.i.i)
  %call5 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %a) #6
  %conv = trunc i64 %call5 to i32
  br label %for.cond

for.cond:                                         ; preds = %for.inc68, %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit
  %i.0 = phi i32 [ 0, %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit ], [ %inc, %for.inc68 ]
  %sum.0 = phi i32 [ %conv, %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit ], [ %sum.2, %for.inc68 ]
  %4 = load i32, ptr %n, align 4, !tbaa !31
  %sub = add nsw i32 %4, -1
  %cmp = icmp slt i32 %i.0, %sub
  br i1 %cmp, label %if.then6.i43, label %for.end69

if.then6.i43:                                     ; preds = %for.cond
  %vtable7.i44 = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  %vbase.offset.ptr8.i45 = getelementptr i8, ptr %vtable7.i44, i64 -24
  %vbase.offset9.i46 = load i64, ptr %vbase.offset.ptr8.i45, align 8
  %gep161 = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt3cin, i64 16), i64 %vbase.offset9.i46
  %5 = load i64, ptr %gep161, align 8, !tbaa !8
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull %a, i64 noundef 50)
  %vtable12.i49 = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  %vbase.offset.ptr13.i50 = getelementptr i8, ptr %vtable12.i49, i64 -24
  %vbase.offset14.i51 = load i64, ptr %vbase.offset.ptr13.i50, align 8
  %add.ptr15.i52 = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset14.i51
  %_M_streambuf_state.i.i.i53 = getelementptr inbounds nuw i8, ptr %add.ptr15.i52, i64 32
  %6 = load i32, ptr %_M_streambuf_state.i.i.i53, align 8, !tbaa !21
  %cmp.i.i54 = icmp eq i32 %6, 0
  %7 = add i64 %5, -51
  %or.cond.i58 = icmp ult i64 %7, -50
  %or.cond156 = select i1 %cmp.i.i54, i1 %or.cond.i58, i1 false
  br i1 %or.cond156, label %if.then19.i59, label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit68

if.then19.i59:                                    ; preds = %if.then6.i43
  %_M_streambuf.i.i60 = getelementptr inbounds nuw i8, ptr %add.ptr15.i52, i64 232
  %8 = load ptr, ptr %_M_streambuf.i.i60, align 8, !tbaa !22
  %call25.i61 = call noundef i32 @_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv(ptr noundef nonnull align 8 dereferenceable(64) %8)
  %cmp.i18.i62 = icmp eq i32 %call25.i61, -1
  br i1 %cmp.i18.i62, label %if.then28.i63, label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit68, !prof !30

if.then28.i63:                                    ; preds = %if.then19.i59
  %vtable29.i64 = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  %vbase.offset.ptr30.i65 = getelementptr i8, ptr %vtable29.i64, i64 -24
  %vbase.offset31.i66 = load i64, ptr %vbase.offset.ptr30.i65, align 8
  %add.ptr32.i67 = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset31.i66
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr32.i67, i32 noundef 2)
  br label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit68

_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit68: ; preds = %if.then6.i43, %if.then19.i59, %if.then28.i63
  %call9 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %a) #6
  %conv10 = trunc i64 %call9 to i32
  %add = add nsw i32 %sum.0, %conv10
  %add11 = add nsw i32 %add, 1
  %cmp13 = icmp eq i32 %sum.0, 0
  br i1 %cmp13, label %for.cond15.preheader, label %if.else

for.cond15.preheader:                             ; preds = %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit68
  %sext29 = shl i64 %call9, 32
  %idx.ext = ashr exact i64 %sext29, 32
  %add.ptr = getelementptr inbounds i8, ptr %a, i64 %idx.ext
  br label %for.cond15

for.cond15:                                       ; preds = %for.cond15.preheader, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
  %p.0 = phi ptr [ %incdec.ptr, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit ], [ %a, %for.cond15.preheader ]
  %cmp17 = icmp ult ptr %p.0, %add.ptr
  br i1 %cmp17, label %for.body18, label %for.inc68

for.body18:                                       ; preds = %for.cond15
  %9 = load i8, ptr %p.0, align 1, !tbaa !32
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__c.addr.i)
  store i8 %9, ptr %__c.addr.i, align 1, !tbaa !32
  %vtable.i69 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !5
  %vbase.offset.ptr.i70 = getelementptr i8, ptr %vtable.i69, i64 -24
  %vbase.offset.i71 = load i64, ptr %vbase.offset.ptr.i70, align 8
  %gep160 = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 16), i64 %vbase.offset.i71
  %10 = load i64, ptr %gep160, align 8, !tbaa !8
  %cmp.not.i = icmp eq i64 %10, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %for.body18
  %call1.i74 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %__c.addr.i, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

if.end.i:                                         ; preds = %for.body18
  %call2.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %9)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %if.then.i, %if.end.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__c.addr.i)
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %p.0, i64 1
  br label %for.cond15, !llvm.loop !33

if.else:                                          ; preds = %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit68
  %cmp20 = icmp slt i32 %add, 79
  br i1 %cmp20, label %if.then23, label %if.end

if.then23:                                        ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__c.addr.i75)
  store i8 32, ptr %__c.addr.i75, align 1, !tbaa !32
  %vtable.i76 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !5
  %vbase.offset.ptr.i77 = getelementptr i8, ptr %vtable.i76, i64 -24
  %vbase.offset.i78 = load i64, ptr %vbase.offset.ptr.i77, align 8
  %gep162 = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 16), i64 %vbase.offset.i78
  %11 = load i64, ptr %gep162, align 8, !tbaa !8
  %cmp.not.i81 = icmp eq i64 %11, 0
  br i1 %cmp.not.i81, label %if.end.i85, label %if.then.i82

if.then.i82:                                      ; preds = %if.then23
  %call1.i83 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %__c.addr.i75, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit87

if.end.i85:                                       ; preds = %if.then23
  %call2.i86 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext 32)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit87

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit87: ; preds = %if.then.i82, %if.end.i85
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__c.addr.i75)
  %sext = shl i64 %call9, 32
  %idx.ext28 = ashr exact i64 %sext, 32
  %add.ptr29 = getelementptr inbounds i8, ptr %a, i64 %idx.ext28
  br label %for.cond26

for.cond26:                                       ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit100, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit87
  %p.1 = phi ptr [ %a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit87 ], [ %incdec.ptr34, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit100 ]
  %cmp30 = icmp ult ptr %p.1, %add.ptr29
  br i1 %cmp30, label %for.body31, label %if.end

for.body31:                                       ; preds = %for.cond26
  %12 = load i8, ptr %p.1, align 1, !tbaa !32
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__c.addr.i88)
  store i8 %12, ptr %__c.addr.i88, align 1, !tbaa !32
  %vtable.i89 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !5
  %vbase.offset.ptr.i90 = getelementptr i8, ptr %vtable.i89, i64 -24
  %vbase.offset.i91 = load i64, ptr %vbase.offset.ptr.i90, align 8
  %gep = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 16), i64 %vbase.offset.i91
  %13 = load i64, ptr %gep, align 8, !tbaa !8
  %cmp.not.i94 = icmp eq i64 %13, 0
  br i1 %cmp.not.i94, label %if.end.i98, label %if.then.i95

if.then.i95:                                      ; preds = %for.body31
  %call1.i96 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %__c.addr.i88, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit100

if.end.i98:                                       ; preds = %for.body31
  %call2.i99 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %12)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit100

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit100: ; preds = %if.then.i95, %if.end.i98
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__c.addr.i88)
  %incdec.ptr34 = getelementptr inbounds nuw i8, ptr %p.1, i64 1
  br label %for.cond26, !llvm.loop !36

if.end:                                           ; preds = %for.cond26, %if.else
  %cmp36 = icmp eq i32 %add11, 80
  br i1 %cmp36, label %if.then37, label %if.end51

if.then37:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__c.addr.i101)
  store i8 32, ptr %__c.addr.i101, align 1, !tbaa !32
  %vtable.i102 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !5
  %vbase.offset.ptr.i103 = getelementptr i8, ptr %vtable.i102, i64 -24
  %vbase.offset.i104 = load i64, ptr %vbase.offset.ptr.i103, align 8
  %gep163 = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 16), i64 %vbase.offset.i104
  %14 = load i64, ptr %gep163, align 8, !tbaa !8
  %cmp.not.i107 = icmp eq i64 %14, 0
  br i1 %cmp.not.i107, label %if.end.i111, label %if.then.i108

if.then.i108:                                     ; preds = %if.then37
  %call1.i109 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %__c.addr.i101, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit113

if.end.i111:                                      ; preds = %if.then37
  %call2.i112 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext 32)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit113

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit113: ; preds = %if.then.i108, %if.end.i111
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__c.addr.i101)
  %sext27 = shl i64 %call9, 32
  %idx.ext42 = ashr exact i64 %sext27, 32
  %add.ptr43 = getelementptr inbounds i8, ptr %a, i64 %idx.ext42
  br label %for.cond40

for.cond40:                                       ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit126, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit113
  %p.2 = phi ptr [ %a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit113 ], [ %incdec.ptr48, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit126 ]
  %cmp44 = icmp ult ptr %p.2, %add.ptr43
  br i1 %cmp44, label %for.body45, label %if.end51.thread

for.body45:                                       ; preds = %for.cond40
  %15 = load i8, ptr %p.2, align 1, !tbaa !32
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__c.addr.i114)
  store i8 %15, ptr %__c.addr.i114, align 1, !tbaa !32
  %vtable.i115 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !5
  %vbase.offset.ptr.i116 = getelementptr i8, ptr %vtable.i115, i64 -24
  %vbase.offset.i117 = load i64, ptr %vbase.offset.ptr.i116, align 8
  %gep159 = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 16), i64 %vbase.offset.i117
  %16 = load i64, ptr %gep159, align 8, !tbaa !8
  %cmp.not.i120 = icmp eq i64 %16, 0
  br i1 %cmp.not.i120, label %if.end.i124, label %if.then.i121

if.then.i121:                                     ; preds = %for.body45
  %call1.i122 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %__c.addr.i114, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit126

if.end.i124:                                      ; preds = %for.body45
  %call2.i125 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %15)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit126

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit126: ; preds = %if.then.i121, %if.end.i124
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__c.addr.i114)
  %incdec.ptr48 = getelementptr inbounds nuw i8, ptr %p.2, i64 1
  br label %for.cond40, !llvm.loop !37

if.end51.thread:                                  ; preds = %for.cond40
  %vtable.i141 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !5
  %vbase.offset.ptr.i142 = getelementptr i8, ptr %vtable.i141, i64 -24
  %vbase.offset.i143 = load i64, ptr %vbase.offset.ptr.i142, align 8
  %add.ptr.i144 = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %vbase.offset.i143
  %call.i145 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i144, i8 noundef signext 10)
  %call1.i146 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %call.i145)
  %call.i.i147 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i146)
  br label %for.inc68

if.end51:                                         ; preds = %if.end
  %cmp52 = icmp sgt i32 %add, 79
  br i1 %cmp52, label %if.then53, label %for.inc68

if.then53:                                        ; preds = %if.end51
  %vtable.i148 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !5
  %vbase.offset.ptr.i149 = getelementptr i8, ptr %vtable.i148, i64 -24
  %vbase.offset.i150 = load i64, ptr %vbase.offset.ptr.i149, align 8
  %add.ptr.i151 = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %vbase.offset.i150
  %call.i = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i151, i8 noundef signext 10)
  %call1.i152 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %call.i)
  %call.i.i153 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i152)
  %sext28 = shl i64 %call9, 32
  %idx.ext58 = ashr exact i64 %sext28, 32
  %add.ptr59 = getelementptr inbounds i8, ptr %a, i64 %idx.ext58
  br label %for.cond56

for.cond56:                                       ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit140, %if.then53
  %p.3 = phi ptr [ %a, %if.then53 ], [ %incdec.ptr64, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit140 ]
  %cmp60 = icmp ult ptr %p.3, %add.ptr59
  br i1 %cmp60, label %for.body61, label %for.inc68

for.body61:                                       ; preds = %for.cond56
  %17 = load i8, ptr %p.3, align 1, !tbaa !32
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__c.addr.i128)
  store i8 %17, ptr %__c.addr.i128, align 1, !tbaa !32
  %vtable.i129 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !5
  %vbase.offset.ptr.i130 = getelementptr i8, ptr %vtable.i129, i64 -24
  %vbase.offset.i131 = load i64, ptr %vbase.offset.ptr.i130, align 8
  %gep158 = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 16), i64 %vbase.offset.i131
  %18 = load i64, ptr %gep158, align 8, !tbaa !8
  %cmp.not.i134 = icmp eq i64 %18, 0
  br i1 %cmp.not.i134, label %if.end.i138, label %if.then.i135

if.then.i135:                                     ; preds = %for.body61
  %call1.i136 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %__c.addr.i128, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit140

if.end.i138:                                      ; preds = %for.body61
  %call2.i139 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %17)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit140

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit140: ; preds = %if.then.i135, %if.end.i138
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__c.addr.i128)
  %incdec.ptr64 = getelementptr inbounds nuw i8, ptr %p.3, i64 1
  br label %for.cond56, !llvm.loop !38

for.inc68:                                        ; preds = %for.cond56, %for.cond15, %if.end51.thread, %if.end51
  %sum.2 = phi i32 [ %add11, %if.end51 ], [ 0, %if.end51.thread ], [ %add, %for.cond15 ], [ %conv10, %for.cond56 ]
  %inc = add nuw nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !39

for.end69:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %a) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #5
  ret i32 0
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

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!30 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!31 = !{!17, !17, i64 0}
!32 = !{!11, !11, i64 0}
!33 = distinct !{!33, !34, !35}
!34 = !{!"llvm.loop.mustprogress"}
!35 = !{!"llvm.loop.unroll.disable"}
!36 = distinct !{!36, !34, !35}
!37 = distinct !{!37, !34, !35}
!38 = distinct !{!38, !34, !35}
!39 = distinct !{!39, !34, !35}
