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
  %__c.addr.i97 = alloca i8, align 1
  %__c.addr.i = alloca i8, align 1
  %a = alloca [256 x i8], align 16
  %b = alloca [256 x i8], align 16
  %c = alloca [256 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 256, ptr noundef nonnull align 16 %a) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull writeonly align 16 dereferenceable(256) %a, i8 noundef 0, i64 noundef 256, i1 noundef false) #10
  call void @llvm.lifetime.start.p0(i64 noundef 256, ptr noundef nonnull align 16 %b) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull writeonly align 16 dereferenceable(256) %b, i8 noundef 0, i64 noundef 256, i1 noundef false) #10
  call void @llvm.lifetime.start.p0(i64 noundef 256, ptr noundef nonnull %c) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull writeonly align 16 dereferenceable(256) %c, i8 noundef 0, i64 noundef 256, i1 noundef false) #10
  %vtable7.i = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  %vbase.offset.ptr8.i = getelementptr i8, ptr %vtable7.i, i64 -24
  %vbase.offset9.i = load i64, ptr %vbase.offset.ptr8.i, align 8, !invariant.load !8
  %add.ptr10.i = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset9.i
  %_M_width.i1.i = getelementptr inbounds nuw i8, ptr %add.ptr10.i, i64 16
  %0 = load i64, ptr %_M_width.i1.i, align 8, !tbaa !9
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 16 %a, i64 noundef 256)
  %vtable12.i = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  %vbase.offset.ptr13.i = getelementptr i8, ptr %vtable12.i, i64 -24
  %vbase.offset14.i = load i64, ptr %vbase.offset.ptr13.i, align 8, !invariant.load !8
  %add.ptr15.i = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset14.i
  %_M_streambuf_state.i.i.i = getelementptr inbounds nuw i8, ptr %add.ptr15.i, i64 32
  %1 = load i32, ptr %_M_streambuf_state.i.i.i, align 8, !tbaa !22
  %cmp.i.i = icmp eq i32 %1, 0
  %2 = add i64 %0, -257
  %or.cond.i = icmp ult i64 %2, -256
  %or.cond = select i1 %cmp.i.i, i1 %or.cond.i, i1 false
  br i1 %or.cond, label %if.then19.i, label %if.then6.i10

if.then19.i:                                      ; preds = %entry
  %_M_streambuf.i.i = getelementptr inbounds nuw i8, ptr %add.ptr15.i, i64 232
  %3 = load ptr, ptr %_M_streambuf.i.i, align 8, !tbaa !23
  %call25.i = call noundef i32 @_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv(ptr noundef nonnull align 8 dereferenceable(64) %3)
  %cmp.i2.i = icmp eq i32 %call25.i, -1
  %conv.i = zext i1 %cmp.i2.i to i64
  %expval.i = call i64 @llvm.expect.i64(i64 noundef %conv.i, i64 noundef 1)
  %tobool.not.i = icmp eq i64 %expval.i, 0
  %vtable7.i11.pre162 = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  br i1 %tobool.not.i, label %if.then6.i10, label %if.then28.i

if.then28.i:                                      ; preds = %if.then19.i
  %vbase.offset.ptr30.i = getelementptr i8, ptr %vtable7.i11.pre162, i64 -24
  %vbase.offset31.i = load i64, ptr %vbase.offset.ptr30.i, align 8, !invariant.load !8
  %add.ptr32.i = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset31.i
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr32.i, i32 noundef 2)
  %vtable7.i11.pre = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  br label %if.then6.i10

if.then6.i10:                                     ; preds = %if.then28.i, %if.then19.i, %entry
  %vtable7.i11 = phi ptr [ %vtable7.i11.pre, %if.then28.i ], [ %vtable7.i11.pre162, %if.then19.i ], [ %vtable12.i, %entry ]
  %vbase.offset.ptr8.i12 = getelementptr i8, ptr %vtable7.i11, i64 -24
  %vbase.offset9.i13 = load i64, ptr %vbase.offset.ptr8.i12, align 8, !invariant.load !8
  %add.ptr10.i14 = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset9.i13
  %_M_width.i1.i15 = getelementptr inbounds nuw i8, ptr %add.ptr10.i14, i64 16
  %4 = load i64, ptr %_M_width.i1.i15, align 8, !tbaa !9
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull %b, i64 noundef 256)
  %vtable12.i16 = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  %vbase.offset.ptr13.i17 = getelementptr i8, ptr %vtable12.i16, i64 -24
  %vbase.offset14.i18 = load i64, ptr %vbase.offset.ptr13.i17, align 8, !invariant.load !8
  %add.ptr15.i19 = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset14.i18
  %_M_streambuf_state.i.i.i20 = getelementptr inbounds nuw i8, ptr %add.ptr15.i19, i64 32
  %5 = load i32, ptr %_M_streambuf_state.i.i.i20, align 8, !tbaa !22
  %cmp.i.i21 = icmp eq i32 %5, 0
  %6 = add i64 %4, -257
  %or.cond.i25 = icmp ult i64 %6, -256
  %or.cond132 = select i1 %cmp.i.i21, i1 %or.cond.i25, i1 false
  br i1 %or.cond132, label %if.then19.i26, label %if.then6.i48

if.then19.i26:                                    ; preds = %if.then6.i10
  %_M_streambuf.i.i27 = getelementptr inbounds nuw i8, ptr %add.ptr15.i19, i64 232
  %7 = load ptr, ptr %_M_streambuf.i.i27, align 8, !tbaa !23
  %call25.i28 = call noundef i32 @_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv(ptr noundef nonnull align 8 dereferenceable(64) %7)
  %cmp.i2.i29 = icmp eq i32 %call25.i28, -1
  %conv.i30 = zext i1 %cmp.i2.i29 to i64
  %expval.i31 = call i64 @llvm.expect.i64(i64 noundef %conv.i30, i64 noundef 1)
  %tobool.not.i32 = icmp eq i64 %expval.i31, 0
  %vtable7.i49.pre164 = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  br i1 %tobool.not.i32, label %if.then6.i48, label %if.then28.i33

if.then28.i33:                                    ; preds = %if.then19.i26
  %vbase.offset.ptr30.i35 = getelementptr i8, ptr %vtable7.i49.pre164, i64 -24
  %vbase.offset31.i36 = load i64, ptr %vbase.offset.ptr30.i35, align 8, !invariant.load !8
  %add.ptr32.i37 = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset31.i36
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr32.i37, i32 noundef 2)
  %vtable7.i49.pre = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  br label %if.then6.i48

if.then6.i48:                                     ; preds = %if.then28.i33, %if.then19.i26, %if.then6.i10
  %vtable7.i49 = phi ptr [ %vtable7.i49.pre, %if.then28.i33 ], [ %vtable7.i49.pre164, %if.then19.i26 ], [ %vtable12.i16, %if.then6.i10 ]
  %vbase.offset.ptr8.i50 = getelementptr i8, ptr %vtable7.i49, i64 -24
  %vbase.offset9.i51 = load i64, ptr %vbase.offset.ptr8.i50, align 8, !invariant.load !8
  %add.ptr10.i52 = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset9.i51
  %_M_width.i1.i53 = getelementptr inbounds nuw i8, ptr %add.ptr10.i52, i64 16
  %8 = load i64, ptr %_M_width.i1.i53, align 8, !tbaa !9
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull %c, i64 noundef 256)
  %vtable12.i54 = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  %vbase.offset.ptr13.i55 = getelementptr i8, ptr %vtable12.i54, i64 -24
  %vbase.offset14.i56 = load i64, ptr %vbase.offset.ptr13.i55, align 8, !invariant.load !8
  %add.ptr15.i57 = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset14.i56
  %_M_streambuf_state.i.i.i58 = getelementptr inbounds nuw i8, ptr %add.ptr15.i57, i64 32
  %9 = load i32, ptr %_M_streambuf_state.i.i.i58, align 8, !tbaa !22
  %cmp.i.i59 = icmp eq i32 %9, 0
  %10 = add i64 %8, -257
  %or.cond.i63 = icmp ult i64 %10, -256
  %or.cond133 = select i1 %cmp.i.i59, i1 %or.cond.i63, i1 false
  br i1 %or.cond133, label %if.then19.i64, label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit76

if.then19.i64:                                    ; preds = %if.then6.i48
  %_M_streambuf.i.i65 = getelementptr inbounds nuw i8, ptr %add.ptr15.i57, i64 232
  %11 = load ptr, ptr %_M_streambuf.i.i65, align 8, !tbaa !23
  %call25.i66 = call noundef i32 @_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv(ptr noundef nonnull align 8 dereferenceable(64) %11)
  %cmp.i2.i67 = icmp eq i32 %call25.i66, -1
  %conv.i68 = zext i1 %cmp.i2.i67 to i64
  %expval.i69 = call i64 @llvm.expect.i64(i64 noundef %conv.i68, i64 noundef 1)
  %tobool.not.i70 = icmp eq i64 %expval.i69, 0
  br i1 %tobool.not.i70, label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit76, label %if.then28.i71

if.then28.i71:                                    ; preds = %if.then19.i64
  %vtable29.i72 = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  %vbase.offset.ptr30.i73 = getelementptr i8, ptr %vtable29.i72, i64 -24
  %vbase.offset31.i74 = load i64, ptr %vbase.offset.ptr30.i73, align 8, !invariant.load !8
  %add.ptr32.i75 = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset31.i74
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr32.i75, i32 noundef 2)
  br label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit76

_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit76: ; preds = %if.then6.i48, %if.then19.i64, %if.then28.i71
  %call6 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %a) #11
  %conv = trunc i64 %call6 to i32
  %call8 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %b) #12
  %conv9 = trunc i64 %call8 to i32
  %12 = load i8, ptr %b, align 16
  %smax = call range(i32 1, -2147483648) i32 @llvm.smax.i32(i32 %conv9, i32 noundef 1)
  %smax145 = call i32 @llvm.smax.i32(i32 %conv, i32 noundef 0)
  %wide.trip.count146 = zext nneg i32 %smax145 to i64
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond

for.cond:                                         ; preds = %for.inc30, %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit76
  %indvars.iv156 = phi i32 [ %indvars.iv.next157, %for.inc30 ], [ %conv9, %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit76 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc30 ], [ 0, %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit76 ]
  %exitcond147.not = icmp eq i64 %indvars.iv, %wide.trip.count146
  br i1 %exitcond147.not, label %if.then34, label %for.body

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [256 x i8], ptr %a, i64 0, i64 %indvars.iv
  %13 = load i8, ptr %arrayidx, align 1, !tbaa !31
  %cmp13 = icmp eq i8 %13, %12
  br i1 %cmp13, label %for.cond14, label %for.inc30

for.cond14:                                       ; preds = %for.body, %for.inc
  %indvars.iv139 = phi i64 [ %indvars.iv.next140, %for.inc ], [ 1, %for.body ]
  %indvars.iv137 = phi i64 [ %indvars.iv.next138, %for.inc ], [ %indvars.iv, %for.body ]
  %exitcond.not = icmp eq i64 %indvars.iv139, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body16

for.body16:                                       ; preds = %for.cond14
  %indvars.iv.next138 = add nuw nsw i64 %indvars.iv137, 1
  %arrayidx18 = getelementptr inbounds nuw [256 x i8], ptr %a, i64 0, i64 %indvars.iv.next138
  %14 = load i8, ptr %arrayidx18, align 1, !tbaa !31
  %arrayidx21 = getelementptr inbounds nuw [256 x i8], ptr %b, i64 0, i64 %indvars.iv139
  %15 = load i8, ptr %arrayidx21, align 1, !tbaa !31
  %cmp23.not = icmp eq i8 %14, %15
  br i1 %cmp23.not, label %for.inc, label %for.end.split.loop.exit

for.inc:                                          ; preds = %for.body16
  %indvars.iv.next140 = add nuw nsw i64 %indvars.iv139, 1
  br label %for.cond14, !llvm.loop !32

for.end.split.loop.exit:                          ; preds = %for.body16
  %16 = trunc nuw nsw i64 %indvars.iv139 to i32
  br label %for.end

for.end:                                          ; preds = %for.cond14, %for.end.split.loop.exit
  %j.0.lcssa = phi i32 [ %16, %for.end.split.loop.exit ], [ %smax, %for.cond14 ]
  %cmp26 = icmp eq i32 %j.0.lcssa, %conv9
  br i1 %cmp26, label %for.cond37.preheader, label %for.inc30

for.cond37.preheader:                             ; preds = %for.end
  %wide.trip.count154 = and i64 %indvars.iv, 4294967295
  br label %for.cond37

for.inc30:                                        ; preds = %for.body, %for.end
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %indvars.iv.next157 = add i32 %indvars.iv156, 1
  br label %for.cond, !llvm.loop !35

if.then34:                                        ; preds = %for.cond
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %a, i64 noundef %call6)
  br label %if.end57

for.cond37:                                       ; preds = %for.cond37.preheader, %for.inc43
  %indvars.iv148 = phi i64 [ 0, %for.cond37.preheader ], [ %indvars.iv.next149, %for.inc43 ]
  %exitcond155.not = icmp eq i64 %indvars.iv148, %wide.trip.count154
  br i1 %exitcond155.not, label %for.end45, label %for.body39

for.body39:                                       ; preds = %for.cond37
  %arrayidx41 = getelementptr inbounds nuw [256 x i8], ptr %a, i64 0, i64 %indvars.iv148
  %17 = load i8, ptr %arrayidx41, align 1, !tbaa !31
  call void @llvm.lifetime.start.p0(i64 noundef 1, ptr noundef nonnull %__c.addr.i)
  call fastcc void @outlined_ir_func_0(i8 %17, ptr %__c.addr.i)
  br label %for.inc43

for.inc43:                                        ; preds = %for.body39
  call void @llvm.lifetime.end.p0(i64 noundef 1, ptr noundef nonnull %__c.addr.i)
  %indvars.iv.next149 = add nuw nsw i64 %indvars.iv148, 1
  br label %for.cond37, !llvm.loop !36

for.end45:                                        ; preds = %for.cond37
  %call.i.i89 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %c) #11
  %call1.i90 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %c, i64 noundef %call.i.i89)
  %18 = sext i32 %indvars.iv156 to i64
  %sext = shl i64 %call6, 32
  %19 = ashr exact i64 %sext, 32
  br label %for.cond48

for.cond48:                                       ; preds = %for.inc54, %for.end45
  %indvars.iv159 = phi i64 [ %indvars.iv.next160, %for.inc54 ], [ %18, %for.end45 ]
  %cmp49 = icmp slt i64 %indvars.iv159, %19
  br i1 %cmp49, label %for.body50, label %if.end57

for.body50:                                       ; preds = %for.cond48
  %arrayidx52 = getelementptr inbounds [256 x i8], ptr %a, i64 0, i64 %indvars.iv159
  %20 = load i8, ptr %arrayidx52, align 1, !tbaa !31
  call void @llvm.lifetime.start.p0(i64 noundef 1, ptr noundef nonnull %__c.addr.i97)
  call fastcc void @outlined_ir_func_0(i8 %20, ptr %__c.addr.i97)
  br label %for.inc54

for.inc54:                                        ; preds = %for.body50
  call void @llvm.lifetime.end.p0(i64 noundef 1, ptr noundef nonnull %__c.addr.i97)
  %indvars.iv.next160 = add nsw i64 %indvars.iv159, 1
  br label %for.cond48, !llvm.loop !37

if.end57:                                         ; preds = %for.cond48, %if.then34
  call void @llvm.lifetime.end.p0(i64 noundef 256, ptr noundef nonnull %c) #11
  call void @llvm.lifetime.end.p0(i64 noundef 256, ptr noundef nonnull %b) #11
  call void @llvm.lifetime.end.p0(i64 noundef 256, ptr noundef nonnull %a) #11
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #4 align 2

declare void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
declare noundef i32 @_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #4 align 2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #6

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: minsize mustprogress norecurse optsize uwtable
define internal fastcc void @outlined_ir_func_0(i8 %0, ptr %1) unnamed_addr #8 {
newFuncRoot:
  br label %for.body39_to_outline

for.body39_to_outline:                            ; preds = %newFuncRoot
  store i8 %0, ptr %1, align 1, !tbaa !31
  %vtable.i82 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !5
  %vbase.offset.ptr.i83 = getelementptr i8, ptr %vtable.i82, i64 -24
  %vbase.offset.i84 = load i64, ptr %vbase.offset.ptr.i83, align 8, !invariant.load !8
  %gep = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 16), i64 %vbase.offset.i84
  %2 = load i64, ptr %gep, align 8, !tbaa !9
  %cmp.not.i = icmp eq i64 %2, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %for.body39_to_outline
  %call1.i87 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %1, i64 noundef 1)
  br label %for.inc43.exitStub

if.end.i:                                         ; preds = %for.body39_to_outline
  %call2.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %0)
  br label %for.inc43.exitStub

for.inc43.exitStub:                               ; preds = %if.end.i, %if.then.i
  ret void
}

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { minsize mustprogress norecurse optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind }
attributes #10 = { nofree }
attributes #11 = { nounwind }
attributes #12 = { nounwind willreturn memory(read) }

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
!22 = !{!10, !14, i64 32}
!23 = !{!24, !27, i64 232}
!24 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !10, i64 0, !25, i64 216, !12, i64 224, !26, i64 225, !27, i64 232, !28, i64 240, !29, i64 248, !30, i64 256}
!25 = !{!"p1 _ZTSSo", !16, i64 0}
!26 = !{!"bool", !12, i64 0}
!27 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !16, i64 0}
!28 = !{!"p1 _ZTSSt5ctypeIcE", !16, i64 0}
!29 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !16, i64 0}
!30 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !16, i64 0}
!31 = !{!12, !12, i64 0}
!32 = distinct !{!32, !33, !34}
!33 = !{!"llvm.loop.mustprogress"}
!34 = !{!"llvm.loop.unroll.disable"}
!35 = distinct !{!35, !33, !34}
!36 = distinct !{!36, !33, !34}
!37 = distinct !{!37, !33, !34}
