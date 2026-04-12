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
  %vtable7.i = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5, !invariant.load !8
  %vbase.offset.ptr8.i = getelementptr i8, ptr %vtable7.i, i64 -24
  %vbase.offset9.i = load i64, ptr %vbase.offset.ptr8.i, align 8, !invariant.load !8
  %add.ptr10.i = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset9.i
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 16 dereferenceable(256) %a, i64 noundef 256)
  %call16.i = call noundef zeroext i1 @_ZNKSt9basic_iosIcSt11char_traitsIcEE4goodEv(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr10.i) #12
  br i1 %call16.i, label %land.lhs.true.i, label %if.then6.i12

land.lhs.true.i:                                  ; preds = %entry
  %_M_width.i5.i = getelementptr inbounds nuw i8, ptr %add.ptr10.i, i64 16
  %0 = load i64, ptr %_M_width.i5.i, align 8, !tbaa !9, !invariant.load !8
  %1 = add i64 %0, -257
  %or.cond.i = icmp ult i64 %1, -256
  br i1 %or.cond.i, label %if.then19.i, label %if.then6.i12

if.then19.i:                                      ; preds = %land.lhs.true.i
  %call24.i = call noundef ptr @_ZNKSt9basic_iosIcSt11char_traitsIcEE5rdbufEv(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr10.i) #12
  %call25.i = call noundef i32 @_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv(ptr noundef nonnull align 8 dereferenceable(64) %call24.i)
  %cmp.i.i = icmp eq i32 %call25.i, -1
  %conv.i = zext i1 %cmp.i.i to i64
  %expval.i = call i64 @llvm.expect.i64(i64 noundef %conv.i, i64 noundef 1)
  %tobool.not.i = icmp eq i64 %expval.i, 0
  br i1 %tobool.not.i, label %if.then6.i12, label %if.then28.i

if.then28.i:                                      ; preds = %if.then19.i
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr10.i, i32 noundef 2)
  br label %if.then6.i12

if.then6.i12:                                     ; preds = %if.then28.i, %if.then19.i, %land.lhs.true.i, %entry
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 16 dereferenceable(256) %b, i64 noundef 256)
  %call16.i17 = call noundef zeroext i1 @_ZNKSt9basic_iosIcSt11char_traitsIcEE4goodEv(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr10.i) #12
  br i1 %call16.i17, label %land.lhs.true.i18, label %if.then6.i39

land.lhs.true.i18:                                ; preds = %if.then6.i12
  %_M_width.i5.i19 = getelementptr inbounds nuw i8, ptr %add.ptr10.i, i64 16
  %2 = load i64, ptr %_M_width.i5.i19, align 8, !tbaa !9, !invariant.load !8
  %3 = add i64 %2, -257
  %or.cond.i22 = icmp ult i64 %3, -256
  br i1 %or.cond.i22, label %if.then19.i23, label %if.then6.i39

if.then19.i23:                                    ; preds = %land.lhs.true.i18
  %call24.i24 = call noundef ptr @_ZNKSt9basic_iosIcSt11char_traitsIcEE5rdbufEv(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr10.i) #12
  %call25.i25 = call noundef i32 @_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv(ptr noundef nonnull align 8 dereferenceable(64) %call24.i24)
  %cmp.i.i26 = icmp eq i32 %call25.i25, -1
  %conv.i27 = zext i1 %cmp.i.i26 to i64
  %expval.i28 = call i64 @llvm.expect.i64(i64 noundef %conv.i27, i64 noundef 1)
  %tobool.not.i29 = icmp eq i64 %expval.i28, 0
  br i1 %tobool.not.i29, label %if.then6.i39, label %if.then28.i30

if.then28.i30:                                    ; preds = %if.then19.i23
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr10.i, i32 noundef 2)
  br label %if.then6.i39

if.then6.i39:                                     ; preds = %if.then28.i30, %if.then19.i23, %land.lhs.true.i18, %if.then6.i12
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 16 dereferenceable(256) %c, i64 noundef 256)
  %call16.i44 = call noundef zeroext i1 @_ZNKSt9basic_iosIcSt11char_traitsIcEE4goodEv(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr10.i) #12
  br i1 %call16.i44, label %land.lhs.true.i45, label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit58

land.lhs.true.i45:                                ; preds = %if.then6.i39
  %_M_width.i5.i46 = getelementptr inbounds nuw i8, ptr %add.ptr10.i, i64 16
  %4 = load i64, ptr %_M_width.i5.i46, align 8, !tbaa !9, !invariant.load !8
  %5 = add i64 %4, -257
  %or.cond.i49 = icmp ult i64 %5, -256
  br i1 %or.cond.i49, label %if.then19.i50, label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit58

if.then19.i50:                                    ; preds = %land.lhs.true.i45
  %call24.i51 = call noundef ptr @_ZNKSt9basic_iosIcSt11char_traitsIcEE5rdbufEv(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr10.i) #12
  %call25.i52 = call noundef i32 @_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv(ptr noundef nonnull align 8 dereferenceable(64) %call24.i51)
  %cmp.i.i53 = icmp eq i32 %call25.i52, -1
  %conv.i54 = zext i1 %cmp.i.i53 to i64
  %expval.i55 = call i64 @llvm.expect.i64(i64 noundef %conv.i54, i64 noundef 1)
  %tobool.not.i56 = icmp eq i64 %expval.i55, 0
  br i1 %tobool.not.i56, label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit58, label %if.then28.i57

if.then28.i57:                                    ; preds = %if.then19.i50
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr10.i, i32 noundef 2)
  br label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit58

_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit58: ; preds = %if.then6.i39, %land.lhs.true.i45, %if.then19.i50, %if.then28.i57
  %call6 = call i64 @strlen(ptr noundef nonnull readonly align 16 captures(none) dereferenceable(256) %a) #13
  %conv = trunc i64 %call6 to i32
  %call8 = call i64 @strlen(ptr noundef nonnull readonly captures(none) dereferenceable(1) %b) #13
  %conv9 = trunc i64 %call8 to i32
  %6 = load i8, ptr %b, align 16
  %smax = call range(i32 1, -2147483648) i32 @llvm.smax.i32(i32 %conv9, i32 noundef 1)
  %7 = add nsw i32 %smax, -1
  %8 = zext nneg i32 %7 to i64
  %smax94 = call i32 @llvm.smax.i32(i32 %conv, i32 noundef 0)
  %wide.trip.count95 = zext nneg i32 %smax94 to i64
  br label %for.cond

for.cond:                                         ; preds = %if.end29, %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit58
  %indvars.iv104 = phi i32 [ %indvars.iv.next105, %if.end29 ], [ %conv9, %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit58 ]
  %indvars.iv89 = phi i64 [ %indvars.iv.next90, %if.end29 ], [ %8, %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit58 ]
  %indvars.iv80 = phi i64 [ %indvars.iv.next81, %if.end29 ], [ 0, %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit58 ]
  %exitcond96.not = icmp eq i64 %indvars.iv80, %wide.trip.count95
  br i1 %exitcond96.not, label %if.then34, label %for.body

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [256 x i8], ptr %a, i64 0, i64 %indvars.iv80
  %9 = load i8, ptr %arrayidx, align 1, !tbaa !22, !invariant.load !8
  %cmp13 = icmp eq i8 %9, %6
  br i1 %cmp13, label %for.cond14, label %if.end29

for.cond14:                                       ; preds = %for.body, %if.end
  %indvars.iv82 = phi i64 [ %indvars.iv.next83, %if.end ], [ %indvars.iv80, %for.body ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end ], [ 1, %for.body ]
  %exitcond.not = icmp eq i64 %indvars.iv82, %indvars.iv89
  br i1 %exitcond.not, label %for.end, label %for.body16

for.body16:                                       ; preds = %for.cond14
  %indvars.iv.next83 = add nuw nsw i64 %indvars.iv82, 1
  %arrayidx18 = getelementptr inbounds nuw [256 x i8], ptr %a, i64 0, i64 %indvars.iv.next83
  %10 = load i8, ptr %arrayidx18, align 1, !tbaa !22, !invariant.load !8
  %arrayidx21 = getelementptr inbounds nuw [256 x i8], ptr %b, i64 0, i64 %indvars.iv
  %11 = load i8, ptr %arrayidx21, align 1, !tbaa !22, !invariant.load !8
  %cmp23.not = icmp eq i8 %10, %11
  br i1 %cmp23.not, label %if.end, label %for.end.split.loop.exit112

if.end:                                           ; preds = %for.body16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond14, !llvm.loop !23

for.end.split.loop.exit112:                       ; preds = %for.body16
  %12 = trunc nuw nsw i64 %indvars.iv to i32
  br label %for.end

for.end:                                          ; preds = %for.cond14, %for.end.split.loop.exit112
  %j.0.lcssa = phi i32 [ %12, %for.end.split.loop.exit112 ], [ %smax, %for.cond14 ]
  %cmp26 = icmp eq i32 %j.0.lcssa, %conv9
  br i1 %cmp26, label %for.cond37.preheader, label %if.end29

for.cond37.preheader:                             ; preds = %for.end
  %wide.trip.count = and i64 %indvars.iv80, 4294967295
  br label %for.cond37

if.end29:                                         ; preds = %for.end, %for.body
  %indvars.iv.next81 = add nuw nsw i64 %indvars.iv80, 1
  %indvars.iv.next90 = add nuw nsw i64 %indvars.iv89, 1
  %indvars.iv.next105 = add i32 %indvars.iv104, 1
  br label %for.cond, !llvm.loop !26

if.then34:                                        ; preds = %for.cond
  %call36 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(272) @_ZSt4cout, ptr noundef nonnull align 16 dereferenceable(256) %a)
  br label %if.end57

for.cond37:                                       ; preds = %for.cond37.preheader, %for.body39
  %indvars.iv97 = phi i64 [ 0, %for.cond37.preheader ], [ %indvars.iv.next98, %for.body39 ]
  %exitcond103.not = icmp eq i64 %indvars.iv97, %wide.trip.count
  br i1 %exitcond103.not, label %for.end45, label %for.body39

for.body39:                                       ; preds = %for.cond37
  %arrayidx41 = getelementptr inbounds nuw [256 x i8], ptr %a, i64 0, i64 %indvars.iv97
  %13 = load i8, ptr %arrayidx41, align 1, !tbaa !22, !invariant.load !8
  %call42 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(272) @_ZSt4cout, i8 noundef signext %13)
  %indvars.iv.next98 = add nuw nsw i64 %indvars.iv97, 1
  br label %for.cond37, !llvm.loop !27

for.end45:                                        ; preds = %for.cond37
  %call47 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(272) @_ZSt4cout, ptr noundef nonnull align 16 dereferenceable(256) %c)
  %14 = sext i32 %indvars.iv104 to i64
  %sext = shl i64 %call6, 32
  %15 = ashr exact i64 %sext, 32
  br label %for.cond48

for.cond48:                                       ; preds = %for.body50, %for.end45
  %indvars.iv107 = phi i64 [ %indvars.iv.next108, %for.body50 ], [ %14, %for.end45 ]
  %cmp49 = icmp slt i64 %indvars.iv107, %15
  br i1 %cmp49, label %for.body50, label %if.end57

for.body50:                                       ; preds = %for.cond48
  %arrayidx52 = getelementptr inbounds [256 x i8], ptr %a, i64 0, i64 %indvars.iv107
  %16 = load i8, ptr %arrayidx52, align 1, !tbaa !22, !invariant.load !8
  %call53 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(272) @_ZSt4cout, i8 noundef signext %16)
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

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
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
attributes #9 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
