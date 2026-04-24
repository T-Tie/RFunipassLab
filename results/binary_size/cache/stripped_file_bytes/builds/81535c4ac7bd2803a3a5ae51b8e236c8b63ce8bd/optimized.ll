; ModuleID = '<stdin>'
source_filename = "/tmp/tmpnyzv0t_d.cpp"
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
  %__c.addr.i = alloca i8, align 1
  %str = alloca [256 x i8], align 16
  %substr = alloca [256 x i8], align 16
  %replace = alloca [256 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %str) #6
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %substr) #6
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %replace) #6
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
  br i1 %or.cond, label %if.then19.i, label %if.then6.i24

if.then19.i:                                      ; preds = %entry
  %_M_streambuf.i.i = getelementptr inbounds nuw i8, ptr %add.ptr15.i, i64 232
  %3 = load ptr, ptr %_M_streambuf.i.i, align 8, !tbaa !22
  %call25.i = call noundef i32 @_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv(ptr noundef nonnull align 8 dereferenceable(64) %3)
  %cmp.i18.i = icmp eq i32 %call25.i, -1
  %vtable7.i25.pre147 = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  br i1 %cmp.i18.i, label %if.then28.i, label %if.then6.i24, !prof !30

if.then28.i:                                      ; preds = %if.then19.i
  %vbase.offset.ptr30.i = getelementptr i8, ptr %vtable7.i25.pre147, i64 -24
  %vbase.offset31.i = load i64, ptr %vbase.offset.ptr30.i, align 8
  %add.ptr32.i = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset31.i
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr32.i, i32 noundef 2)
  %vtable7.i25.pre = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  br label %if.then6.i24

if.then6.i24:                                     ; preds = %if.then28.i, %if.then19.i, %entry
  %vtable7.i25 = phi ptr [ %vtable7.i25.pre, %if.then28.i ], [ %vtable7.i25.pre147, %if.then19.i ], [ %vtable12.i, %entry ]
  %vbase.offset.ptr8.i26 = getelementptr i8, ptr %vtable7.i25, i64 -24
  %vbase.offset9.i27 = load i64, ptr %vbase.offset.ptr8.i26, align 8
  %add.ptr10.i28 = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset9.i27
  %_M_width.i17.i29 = getelementptr inbounds nuw i8, ptr %add.ptr10.i28, i64 16
  %4 = load i64, ptr %_M_width.i17.i29, align 8, !tbaa !8
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull %substr, i64 noundef 256)
  %vtable12.i30 = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  %vbase.offset.ptr13.i31 = getelementptr i8, ptr %vtable12.i30, i64 -24
  %vbase.offset14.i32 = load i64, ptr %vbase.offset.ptr13.i31, align 8
  %add.ptr15.i33 = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset14.i32
  %_M_streambuf_state.i.i.i34 = getelementptr inbounds nuw i8, ptr %add.ptr15.i33, i64 32
  %5 = load i32, ptr %_M_streambuf_state.i.i.i34, align 8, !tbaa !21
  %cmp.i.i35 = icmp eq i32 %5, 0
  %6 = add i64 %4, -257
  %or.cond.i39 = icmp ult i64 %6, -256
  %or.cond127 = select i1 %cmp.i.i35, i1 %or.cond.i39, i1 false
  br i1 %or.cond127, label %if.then19.i40, label %if.then6.i59

if.then19.i40:                                    ; preds = %if.then6.i24
  %_M_streambuf.i.i41 = getelementptr inbounds nuw i8, ptr %add.ptr15.i33, i64 232
  %7 = load ptr, ptr %_M_streambuf.i.i41, align 8, !tbaa !22
  %call25.i42 = call noundef i32 @_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv(ptr noundef nonnull align 8 dereferenceable(64) %7)
  %cmp.i18.i43 = icmp eq i32 %call25.i42, -1
  %vtable7.i60.pre149 = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  br i1 %cmp.i18.i43, label %if.then28.i44, label %if.then6.i59, !prof !30

if.then28.i44:                                    ; preds = %if.then19.i40
  %vbase.offset.ptr30.i46 = getelementptr i8, ptr %vtable7.i60.pre149, i64 -24
  %vbase.offset31.i47 = load i64, ptr %vbase.offset.ptr30.i46, align 8
  %add.ptr32.i48 = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset31.i47
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr32.i48, i32 noundef 2)
  %vtable7.i60.pre = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  br label %if.then6.i59

if.then6.i59:                                     ; preds = %if.then28.i44, %if.then19.i40, %if.then6.i24
  %vtable7.i60 = phi ptr [ %vtable7.i60.pre, %if.then28.i44 ], [ %vtable7.i60.pre149, %if.then19.i40 ], [ %vtable12.i30, %if.then6.i24 ]
  %vbase.offset.ptr8.i61 = getelementptr i8, ptr %vtable7.i60, i64 -24
  %vbase.offset9.i62 = load i64, ptr %vbase.offset.ptr8.i61, align 8
  %add.ptr10.i63 = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset9.i62
  %_M_width.i17.i64 = getelementptr inbounds nuw i8, ptr %add.ptr10.i63, i64 16
  %8 = load i64, ptr %_M_width.i17.i64, align 8, !tbaa !8
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull %replace, i64 noundef 256)
  %vtable12.i65 = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  %vbase.offset.ptr13.i66 = getelementptr i8, ptr %vtable12.i65, i64 -24
  %vbase.offset14.i67 = load i64, ptr %vbase.offset.ptr13.i66, align 8
  %add.ptr15.i68 = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset14.i67
  %_M_streambuf_state.i.i.i69 = getelementptr inbounds nuw i8, ptr %add.ptr15.i68, i64 32
  %9 = load i32, ptr %_M_streambuf_state.i.i.i69, align 8, !tbaa !21
  %cmp.i.i70 = icmp eq i32 %9, 0
  %10 = add i64 %8, -257
  %or.cond.i74 = icmp ult i64 %10, -256
  %or.cond128 = select i1 %cmp.i.i70, i1 %or.cond.i74, i1 false
  br i1 %or.cond128, label %if.then19.i75, label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit84

if.then19.i75:                                    ; preds = %if.then6.i59
  %_M_streambuf.i.i76 = getelementptr inbounds nuw i8, ptr %add.ptr15.i68, i64 232
  %11 = load ptr, ptr %_M_streambuf.i.i76, align 8, !tbaa !22
  %call25.i77 = call noundef i32 @_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv(ptr noundef nonnull align 8 dereferenceable(64) %11)
  %cmp.i18.i78 = icmp eq i32 %call25.i77, -1
  br i1 %cmp.i18.i78, label %if.then28.i79, label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit84, !prof !30

if.then28.i79:                                    ; preds = %if.then19.i75
  %vtable29.i80 = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  %vbase.offset.ptr30.i81 = getelementptr i8, ptr %vtable29.i80, i64 -24
  %vbase.offset31.i82 = load i64, ptr %vbase.offset.ptr30.i81, align 8
  %add.ptr32.i83 = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset31.i82
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr32.i83, i32 noundef 2)
  br label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit84

_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit84: ; preds = %if.then6.i59, %if.then19.i75, %if.then28.i79
  %call6 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %str) #6
  %conv = trunc i64 %call6 to i32
  %call8 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %substr) #7
  %conv9 = trunc i64 %call8 to i32
  %sub = sub nsw i32 %conv, %conv9
  %smax = call i32 @llvm.smax.i32(i32 %conv9, i32 0)
  %smax136 = call i32 @llvm.smax.i32(i32 %sub, i32 -1)
  %12 = add i32 %smax136, 1
  %wide.trip.count137 = zext i32 %12 to i64
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond

for.cond:                                         ; preds = %for.inc24, %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit84
  %indvars.iv142 = phi i32 [ %indvars.iv.next143, %for.inc24 ], [ 0, %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit84 ]
  %indvars.iv133 = phi i64 [ %indvars.iv.next134, %for.inc24 ], [ 0, %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit84 ]
  %exitcond138 = icmp eq i64 %indvars.iv133, %wide.trip.count137
  br i1 %exitcond138, label %if.else, label %for.cond13

for.cond13:                                       ; preds = %for.cond, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.cond ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body15

for.body15:                                       ; preds = %for.cond13
  %13 = add nuw nsw i64 %indvars.iv, %indvars.iv133
  %arrayidx = getelementptr inbounds nuw [256 x i8], ptr %str, i64 0, i64 %13
  %14 = load i8, ptr %arrayidx, align 1, !tbaa !31
  %arrayidx18 = getelementptr inbounds nuw [256 x i8], ptr %substr, i64 0, i64 %indvars.iv
  %15 = load i8, ptr %arrayidx18, align 1, !tbaa !31
  %cmp20.not = icmp eq i8 %14, %15
  br i1 %cmp20.not, label %for.inc, label %for.end.split.loop.exit

for.inc:                                          ; preds = %for.body15
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond13, !llvm.loop !32

for.end.split.loop.exit:                          ; preds = %for.body15
  %16 = trunc nuw nsw i64 %indvars.iv to i32
  br label %for.end

for.end:                                          ; preds = %for.cond13, %for.end.split.loop.exit
  %j.0.lcssa = phi i32 [ %16, %for.end.split.loop.exit ], [ %smax, %for.cond13 ]
  %cmp21 = icmp eq i32 %j.0.lcssa, %conv9
  br i1 %cmp21, label %for.cond28.preheader, label %for.inc24

for.cond28.preheader:                             ; preds = %for.end
  %wide.trip.count145 = zext i32 %indvars.iv142 to i64
  br label %for.cond28

for.inc24:                                        ; preds = %for.end
  %indvars.iv.next134 = add nuw nsw i64 %indvars.iv133, 1
  %indvars.iv.next143 = add nuw i32 %indvars.iv142, 1
  br label %for.cond, !llvm.loop !35

for.cond28:                                       ; preds = %for.cond28.preheader, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
  %indvars.iv139 = phi i64 [ 0, %for.cond28.preheader ], [ %indvars.iv.next140, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit ]
  %exitcond146.not = icmp eq i64 %indvars.iv139, %wide.trip.count145
  br i1 %exitcond146.not, label %for.end36, label %for.body30

for.body30:                                       ; preds = %for.cond28
  %arrayidx32 = getelementptr inbounds nuw [256 x i8], ptr %str, i64 0, i64 %indvars.iv139
  %17 = load i8, ptr %arrayidx32, align 1, !tbaa !31
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__c.addr.i)
  store i8 %17, ptr %__c.addr.i, align 1, !tbaa !31
  %vtable.i85 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !5
  %vbase.offset.ptr.i86 = getelementptr i8, ptr %vtable.i85, i64 -24
  %vbase.offset.i87 = load i64, ptr %vbase.offset.ptr.i86, align 8
  %gep = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 16), i64 %vbase.offset.i87
  %18 = load i64, ptr %gep, align 8, !tbaa !8
  %cmp.not.i = icmp eq i64 %18, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %for.body30
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %__c.addr.i, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

if.end.i:                                         ; preds = %for.body30
  %call2.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %17)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %if.then.i, %if.end.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__c.addr.i)
  %indvars.iv.next140 = add nuw nsw i64 %indvars.iv139, 1
  br label %for.cond28, !llvm.loop !36

for.end36:                                        ; preds = %for.cond28
  %call.i.i = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %replace) #6
  %call1.i90 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %replace, i64 noundef %call.i.i)
  %idx.ext = and i64 %indvars.iv133, 4294967295
  %add.ptr = getelementptr inbounds nuw i8, ptr %str, i64 %idx.ext
  %sext = shl i64 %call8, 32
  %idx.ext40 = ashr exact i64 %sext, 32
  %add.ptr41 = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.ext40
  %call.i.i97 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %add.ptr41) #6
  %call1.i98 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %add.ptr41, i64 noundef %call.i.i97)
  br label %if.end47

if.else:                                          ; preds = %for.cond
  %call1.i106 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %str, i64 noundef %call6)
  br label %if.end47

if.end47:                                         ; preds = %if.else, %for.end36
  %vtable.i121 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !5
  %vbase.offset.ptr.i122 = getelementptr i8, ptr %vtable.i121, i64 -24
  %vbase.offset.i123 = load i64, ptr %vbase.offset.ptr.i122, align 8
  %add.ptr.i124 = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %vbase.offset.i123
  %call.i = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i124, i8 noundef signext 10)
  %call1.i125 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %call.i)
  %call.i.i126 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i125)
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %replace) #6
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %substr) #6
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

; Function Attrs: mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) local_unnamed_addr #3 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

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
