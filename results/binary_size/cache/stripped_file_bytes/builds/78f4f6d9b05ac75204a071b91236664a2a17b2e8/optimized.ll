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
  %str = alloca [256 x i8], align 16
  %subs = alloca [256 x i8], align 16
  %rpl = alloca [256 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 256, ptr noundef nonnull align 16 captures(none) dereferenceable(256) %str) #10
  call void @llvm.lifetime.start.p0(i64 noundef 256, ptr noundef nonnull align 16 captures(none) dereferenceable(256) %subs) #10
  call void @llvm.lifetime.start.p0(i64 noundef 256, ptr noundef nonnull align 16 captures(none) dereferenceable(256) %rpl) #10
  %vtable7.i = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5, !invariant.load !8
  %vbase.offset.ptr8.i = getelementptr i8, ptr %vtable7.i, i64 -24
  %vbase.offset9.i = load i64, ptr %vbase.offset.ptr8.i, align 8, !invariant.load !8
  %add.ptr10.i = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset9.i
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 16 dereferenceable(256) %str, i64 noundef 256)
  %call16.i = call noundef zeroext i1 @_ZNKSt9basic_iosIcSt11char_traitsIcEE4goodEv(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr10.i) #11
  br i1 %call16.i, label %land.lhs.true.i, label %if.then6.i15

land.lhs.true.i:                                  ; preds = %entry
  %_M_width.i7.i = getelementptr inbounds nuw i8, ptr %add.ptr10.i, i64 16
  %0 = load i64, ptr %_M_width.i7.i, align 8, !tbaa !9, !invariant.load !8
  %1 = add i64 %0, -257
  %or.cond.i = icmp ult i64 %1, -256
  br i1 %or.cond.i, label %if.then19.i, label %if.then6.i15

if.then19.i:                                      ; preds = %land.lhs.true.i
  %call24.i = call noundef ptr @_ZNKSt9basic_iosIcSt11char_traitsIcEE5rdbufEv(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr10.i) #11
  %call25.i = call noundef i32 @_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv(ptr noundef nonnull align 8 dereferenceable(64) %call24.i)
  %cmp.i.i = icmp eq i32 %call25.i, -1
  %conv.i = zext i1 %cmp.i.i to i64
  %expval.i = call i64 @llvm.expect.i64(i64 %conv.i, i64 1)
  %tobool.not.i = icmp eq i64 %expval.i, 0
  br i1 %tobool.not.i, label %if.then6.i15, label %if.then28.i

if.then28.i:                                      ; preds = %if.then19.i
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr10.i, i32 noundef 2)
  br label %if.then6.i15

if.then6.i15:                                     ; preds = %if.then28.i, %if.then19.i, %land.lhs.true.i, %entry
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 16 dereferenceable(256) %subs, i64 noundef 256)
  %call16.i20 = call noundef zeroext i1 @_ZNKSt9basic_iosIcSt11char_traitsIcEE4goodEv(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr10.i) #11
  br i1 %call16.i20, label %land.lhs.true.i21, label %if.then6.i42

land.lhs.true.i21:                                ; preds = %if.then6.i15
  %_M_width.i7.i22 = getelementptr inbounds nuw i8, ptr %add.ptr10.i, i64 16
  %2 = load i64, ptr %_M_width.i7.i22, align 8, !tbaa !9, !invariant.load !8
  %3 = add i64 %2, -257
  %or.cond.i25 = icmp ult i64 %3, -256
  br i1 %or.cond.i25, label %if.then19.i26, label %if.then6.i42

if.then19.i26:                                    ; preds = %land.lhs.true.i21
  %call24.i27 = call noundef ptr @_ZNKSt9basic_iosIcSt11char_traitsIcEE5rdbufEv(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr10.i) #11
  %call25.i28 = call noundef i32 @_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv(ptr noundef nonnull align 8 dereferenceable(64) %call24.i27)
  %cmp.i.i29 = icmp eq i32 %call25.i28, -1
  %conv.i30 = zext i1 %cmp.i.i29 to i64
  %expval.i31 = call i64 @llvm.expect.i64(i64 %conv.i30, i64 1)
  %tobool.not.i32 = icmp eq i64 %expval.i31, 0
  br i1 %tobool.not.i32, label %if.then6.i42, label %if.then28.i33

if.then28.i33:                                    ; preds = %if.then19.i26
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr10.i, i32 noundef 2)
  br label %if.then6.i42

if.then6.i42:                                     ; preds = %if.then28.i33, %if.then19.i26, %land.lhs.true.i21, %if.then6.i15
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 16 dereferenceable(256) %rpl, i64 noundef 256)
  %call16.i47 = call noundef zeroext i1 @_ZNKSt9basic_iosIcSt11char_traitsIcEE4goodEv(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr10.i) #11
  br i1 %call16.i47, label %land.lhs.true.i48, label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit61

land.lhs.true.i48:                                ; preds = %if.then6.i42
  %_M_width.i7.i49 = getelementptr inbounds nuw i8, ptr %add.ptr10.i, i64 16
  %4 = load i64, ptr %_M_width.i7.i49, align 8, !tbaa !9, !invariant.load !8
  %5 = add i64 %4, -257
  %or.cond.i52 = icmp ult i64 %5, -256
  br i1 %or.cond.i52, label %if.then19.i53, label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit61

if.then19.i53:                                    ; preds = %land.lhs.true.i48
  %call24.i54 = call noundef ptr @_ZNKSt9basic_iosIcSt11char_traitsIcEE5rdbufEv(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr10.i) #11
  %call25.i55 = call noundef i32 @_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv(ptr noundef nonnull align 8 dereferenceable(64) %call24.i54)
  %cmp.i.i56 = icmp eq i32 %call25.i55, -1
  %conv.i57 = zext i1 %cmp.i.i56 to i64
  %expval.i58 = call i64 @llvm.expect.i64(i64 %conv.i57, i64 1)
  %tobool.not.i59 = icmp eq i64 %expval.i58, 0
  br i1 %tobool.not.i59, label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit61, label %if.then28.i60

if.then28.i60:                                    ; preds = %if.then19.i53
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr10.i, i32 noundef 2)
  br label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit61

_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit61: ; preds = %if.then6.i42, %land.lhs.true.i48, %if.then19.i53, %if.then28.i60
  %call6 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %subs) #12
  %conv = trunc i64 %call6 to i32
  %call8 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %rpl) #12
  %conv9 = trunc i64 %call8 to i32
  %6 = load i8, ptr %subs, align 16
  %smax = call i32 @llvm.smax.i32(i32 %conv, i32 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond

for.cond:                                         ; preds = %if.end33, %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit61
  %indvars.iv72 = phi i64 [ %indvars.iv.next73, %if.end33 ], [ 0, %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit61 ]
  %c.0 = phi i32 [ %c.2, %if.end33 ], [ 0, %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit61 ]
  %exitcond75.not = icmp eq i64 %indvars.iv72, 256
  br i1 %exitcond75.not, label %for.end36, label %land.end

land.end:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [256 x i8], ptr %str, i64 0, i64 %indvars.iv72
  %7 = load i8, ptr %arrayidx, align 1, !tbaa !22, !invariant.load !8
  %cmp11.not = icmp eq i8 %7, 0
  br i1 %cmp11.not, label %for.end36.split.loop.exit98, label %for.body

for.body:                                         ; preds = %land.end
  %cmp17 = icmp eq i8 %7, %6
  br i1 %cmp17, label %for.cond18, label %if.end30

for.cond18:                                       ; preds = %for.body, %if.else
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.else ], [ 0, %for.body ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %if.end30, label %for.body20

for.body20:                                       ; preds = %for.cond18
  %8 = add nuw nsw i64 %indvars.iv, %indvars.iv72
  %arrayidx22 = getelementptr inbounds nuw [256 x i8], ptr %str, i64 0, i64 %8
  %9 = load i8, ptr %arrayidx22, align 1, !tbaa !22, !invariant.load !8
  %arrayidx25 = getelementptr inbounds nuw [256 x i8], ptr %subs, i64 0, i64 %indvars.iv
  %10 = load i8, ptr %arrayidx25, align 1, !tbaa !22, !invariant.load !8
  %cmp27.not = icmp eq i8 %9, %10
  br i1 %cmp27.not, label %if.else, label %if.end30

if.else:                                          ; preds = %for.body20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond18, !llvm.loop !23

if.end30:                                         ; preds = %for.body20, %for.cond18, %for.body
  %c.2 = phi i32 [ %c.0, %for.body ], [ %smax, %for.cond18 ], [ 1, %for.body20 ]
  %cmp31 = icmp eq i32 %c.2, %conv
  br i1 %cmp31, label %for.end36.split.loop.exit101, label %if.end33

if.end33:                                         ; preds = %if.end30
  %indvars.iv.next73 = add nuw nsw i64 %indvars.iv72, 1
  br label %for.cond, !llvm.loop !26

for.end36.split.loop.exit98:                      ; preds = %land.end
  %11 = trunc nuw nsw i64 %indvars.iv72 to i32
  br label %for.end36

for.end36.split.loop.exit101:                     ; preds = %if.end30
  %12 = trunc nuw nsw i64 %indvars.iv72 to i32
  br label %for.end36

for.end36:                                        ; preds = %for.cond, %for.end36.split.loop.exit101, %for.end36.split.loop.exit98
  %i.0.lcssa = phi i32 [ %11, %for.end36.split.loop.exit98 ], [ %12, %for.end36.split.loop.exit101 ], [ 256, %for.cond ]
  %c.1 = phi i32 [ %c.0, %for.end36.split.loop.exit98 ], [ %conv, %for.end36.split.loop.exit101 ], [ %c.0, %for.cond ]
  %cmp37 = icmp eq i32 %c.1, 0
  br i1 %cmp37, label %for.cond39, label %if.end54

for.cond39:                                       ; preds = %for.end36, %for.body47
  %indvars.iv76 = phi i64 [ %indvars.iv.next77, %for.body47 ], [ 0, %for.end36 ]
  %exitcond79.not = icmp eq i64 %indvars.iv76, 256
  br i1 %exitcond79.not, label %if.end54, label %land.end46

land.end46:                                       ; preds = %for.cond39
  %arrayidx43 = getelementptr inbounds nuw [256 x i8], ptr %str, i64 0, i64 %indvars.iv76
  %13 = load i8, ptr %arrayidx43, align 1, !tbaa !22, !invariant.load !8
  %cmp45.not = icmp eq i8 %13, 0
  br i1 %cmp45.not, label %if.end54, label %for.body47

for.body47:                                       ; preds = %land.end46
  %call50 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %13)
  %indvars.iv.next77 = add nuw nsw i64 %indvars.iv76, 1
  br label %for.cond39, !llvm.loop !27

if.end54:                                         ; preds = %for.cond39, %land.end46, %for.end36
  %cmp55 = icmp eq i32 %c.1, %conv
  br i1 %cmp55, label %for.cond57.preheader, label %if.end92

for.cond57.preheader:                             ; preds = %if.end54
  %wide.trip.count83 = zext i32 %i.0.lcssa to i64
  br label %for.cond57

for.cond57:                                       ; preds = %for.cond57.preheader, %for.body59
  %indvars.iv80 = phi i64 [ 0, %for.cond57.preheader ], [ %indvars.iv.next81, %for.body59 ]
  %exitcond84.not = icmp eq i64 %indvars.iv80, %wide.trip.count83
  br i1 %exitcond84.not, label %for.cond66.preheader, label %for.body59

for.cond66.preheader:                             ; preds = %for.cond57
  %add67 = add nsw i32 %i.0.lcssa, %conv9
  %14 = sext i32 %i.0.lcssa to i64
  %smax89 = call i32 @llvm.smax.i32(i32 %i.0.lcssa, i32 %add67)
  %wide.trip.count90 = zext i32 %smax89 to i64
  br label %for.cond66

for.body59:                                       ; preds = %for.cond57
  %arrayidx61 = getelementptr inbounds nuw [256 x i8], ptr %str, i64 0, i64 %indvars.iv80
  %15 = load i8, ptr %arrayidx61, align 1, !tbaa !22
  %call62 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %15)
  %indvars.iv.next81 = add nuw nsw i64 %indvars.iv80, 1
  br label %for.cond57, !llvm.loop !28

for.cond66:                                       ; preds = %for.cond66.preheader, %for.body69
  %indvars.iv85 = phi i64 [ %wide.trip.count83, %for.cond66.preheader ], [ %indvars.iv.next86, %for.body69 ]
  %exitcond91.not = icmp eq i64 %indvars.iv85, %wide.trip.count90
  br i1 %exitcond91.not, label %for.cond77.preheader, label %for.body69

for.cond77.preheader:                             ; preds = %for.cond66
  %16 = sext i32 %add67 to i64
  %smax95 = call i32 @llvm.smax.i32(i32 %add67, i32 256)
  %wide.trip.count96 = zext nneg i32 %smax95 to i64
  br label %for.cond77

for.body69:                                       ; preds = %for.cond66
  %17 = sub nuw nsw i64 %indvars.iv85, %14
  %arrayidx71 = getelementptr inbounds nuw [256 x i8], ptr %rpl, i64 0, i64 %17
  %18 = load i8, ptr %arrayidx71, align 1, !tbaa !22
  %call72 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %18)
  %indvars.iv.next86 = add nuw nsw i64 %indvars.iv85, 1
  br label %for.cond66, !llvm.loop !29

for.cond77:                                       ; preds = %for.cond77.preheader, %for.body85
  %indvars.iv92 = phi i64 [ %16, %for.cond77.preheader ], [ %indvars.iv.next93, %for.body85 ]
  %exitcond97.not = icmp eq i64 %indvars.iv92, %wide.trip.count96
  br i1 %exitcond97.not, label %if.end92, label %land.end84

land.end84:                                       ; preds = %for.cond77
  %arrayidx81 = getelementptr inbounds [256 x i8], ptr %str, i64 0, i64 %indvars.iv92
  %19 = load i8, ptr %arrayidx81, align 1, !tbaa !22
  %cmp83.not = icmp eq i8 %19, 0
  br i1 %cmp83.not, label %if.end92, label %for.body85

for.body85:                                       ; preds = %land.end84
  %call88 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %19)
  %indvars.iv.next93 = add nsw i64 %indvars.iv92, 1
  br label %for.cond77, !llvm.loop !30

if.end92:                                         ; preds = %for.cond77, %land.end84, %if.end54
  call void @llvm.lifetime.end.p0(i64 noundef 256, ptr noundef nonnull %rpl) #11
  call void @llvm.lifetime.end.p0(i64 noundef 256, ptr noundef nonnull %subs) #11
  call void @llvm.lifetime.end.p0(i64 noundef 256, ptr noundef nonnull %str) #11
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #4

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
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nofree nounwind }
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
!22 = !{!12, !12, i64 0}
!23 = distinct !{!23, !24, !25}
!24 = !{!"llvm.loop.mustprogress"}
!25 = !{!"llvm.loop.unroll.disable"}
!26 = distinct !{!26, !24, !25}
!27 = distinct !{!27, !24, !25}
!28 = distinct !{!28, !24, !25}
!29 = distinct !{!29, !24, !25}
!30 = distinct !{!30, !24, !25}
