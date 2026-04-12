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
  %__c.addr.i77 = alloca i8, align 1
  %__c.addr.i = alloca i8, align 1
  %a = alloca [256 x i8], align 16
  %b = alloca [256 x i8], align 16
  %c = alloca [256 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 256, ptr noundef nonnull align 16 captures(none) dereferenceable(256) %a) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull writeonly align 16 captures(none) dereferenceable(256) %a, i8 noundef 0, i64 noundef 256, i1 noundef false) #9
  call void @llvm.lifetime.start.p0(i64 noundef 256, ptr noundef nonnull align 16 captures(none) dereferenceable(256) %b) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull writeonly align 16 captures(none) dereferenceable(256) %b, i8 noundef 0, i64 noundef 256, i1 noundef false) #9
  call void @llvm.lifetime.start.p0(i64 noundef 256, ptr noundef nonnull align 16 captures(none) dereferenceable(256) %c) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull writeonly align 16 captures(none) dereferenceable(256) %c, i8 noundef 0, i64 noundef 256, i1 noundef false) #9
  %vtable7.i = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5, !invariant.load !8
  %vbase.offset.ptr8.i = getelementptr i8, ptr %vtable7.i, i64 -24
  %vbase.offset9.i = load i64, ptr %vbase.offset.ptr8.i, align 8, !invariant.load !8
  %add.ptr10.i = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset9.i
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 16 dereferenceable(256) %a, i64 noundef 256)
  %_M_streambuf_state.i.i.i = getelementptr inbounds nuw i8, ptr %add.ptr10.i, i64 32
  %0 = load i32, ptr %_M_streambuf_state.i.i.i, align 8, !tbaa !9, !invariant.load !8
  %cmp.i.i = icmp eq i32 %0, 0
  br i1 %cmp.i.i, label %land.lhs.true.i, label %if.then6.i36

land.lhs.true.i:                                  ; preds = %entry
  %_M_width.i2.i = getelementptr inbounds nuw i8, ptr %add.ptr10.i, i64 16
  %1 = load i64, ptr %_M_width.i2.i, align 8, !tbaa !22, !invariant.load !8
  %2 = add i64 %1, -257
  %or.cond.i = icmp ult i64 %2, -256
  br i1 %or.cond.i, label %if.then19.i, label %land.lhs.true.i43

if.then19.i:                                      ; preds = %land.lhs.true.i
  %_M_streambuf.i.i = getelementptr inbounds nuw i8, ptr %add.ptr10.i, i64 232
  %3 = load ptr, ptr %_M_streambuf.i.i, align 8, !tbaa !23, !invariant.load !8
  %call25.i = call noundef i32 @_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv(ptr noundef nonnull align 8 dereferenceable(64) %3)
  %cmp.i3.i = icmp eq i32 %call25.i, -1
  %conv.i = zext i1 %cmp.i3.i to i64
  %expval.i = call i64 @llvm.expect.i64(i64 noundef %conv.i, i64 noundef 1)
  %tobool.not.i = icmp eq i64 %expval.i, 0
  br i1 %tobool.not.i, label %if.then19.i20, label %if.then28.i

if.then28.i:                                      ; preds = %if.then19.i
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr10.i, i32 noundef 2)
  br label %if.then19.i20

if.then19.i20:                                    ; preds = %if.then28.i, %if.then19.i
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 16 dereferenceable(256) %b, i64 noundef 256)
  %call25.i22 = call noundef i32 @_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv(ptr noundef nonnull align 8 dereferenceable(64) %3)
  %cmp.i3.i23 = icmp eq i32 %call25.i22, -1
  %conv.i24 = zext i1 %cmp.i3.i23 to i64
  %expval.i25 = call i64 @llvm.expect.i64(i64 noundef %conv.i24, i64 noundef 1)
  %tobool.not.i26 = icmp eq i64 %expval.i25, 0
  br i1 %tobool.not.i26, label %if.then19.i48, label %if.then28.i27

if.then28.i27:                                    ; preds = %if.then19.i20
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr10.i, i32 noundef 2)
  br label %if.then19.i48

if.then6.i36:                                     ; preds = %entry
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 16 dereferenceable(256) %b, i64 noundef 256)
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 16 dereferenceable(256) %c, i64 noundef 256)
  br label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit56

land.lhs.true.i43:                                ; preds = %land.lhs.true.i
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 16 dereferenceable(256) %b, i64 noundef 256)
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 16 dereferenceable(256) %c, i64 noundef 256)
  br label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit56

if.then19.i48:                                    ; preds = %if.then28.i27, %if.then19.i20
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 16 dereferenceable(256) %c, i64 noundef 256)
  %call25.i50 = call noundef i32 @_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv(ptr noundef nonnull align 8 dereferenceable(64) %3)
  %cmp.i3.i51 = icmp eq i32 %call25.i50, -1
  %conv.i52 = zext i1 %cmp.i3.i51 to i64
  %expval.i53 = call i64 @llvm.expect.i64(i64 noundef %conv.i52, i64 noundef 1)
  %tobool.not.i54 = icmp eq i64 %expval.i53, 0
  br i1 %tobool.not.i54, label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit56, label %if.then28.i55

if.then28.i55:                                    ; preds = %if.then19.i48
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr10.i, i32 noundef 2)
  br label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit56

_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit56: ; preds = %land.lhs.true.i43, %if.then6.i36, %if.then19.i48, %if.then28.i55
  %call6 = call i64 @strlen(ptr noundef nonnull align 16 dereferenceable(256) %a) #10
  %conv = trunc i64 %call6 to i32
  %call8 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %b) #11
  %conv9 = trunc i64 %call8 to i32
  %4 = load i8, ptr %b, align 16
  %smax = call range(i32 1, -2147483648) i32 @llvm.smax.i32(i32 %conv9, i32 noundef 1)
  %smax107 = call i32 @llvm.smax.i32(i32 %conv, i32 noundef 0)
  %wide.trip.count108 = zext nneg i32 %smax107 to i64
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond

for.cond:                                         ; preds = %for.inc30, %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit56
  %indvars.iv118 = phi i32 [ %indvars.iv.next119, %for.inc30 ], [ %conv9, %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit56 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc30 ], [ 0, %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit56 ]
  %exitcond109.not = icmp eq i64 %indvars.iv, %wide.trip.count108
  br i1 %exitcond109.not, label %if.then34, label %for.body

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [256 x i8], ptr %a, i64 0, i64 %indvars.iv
  %5 = load i8, ptr %arrayidx, align 1, !tbaa !31, !invariant.load !8
  %cmp13 = icmp eq i8 %5, %4
  br i1 %cmp13, label %for.cond14, label %for.inc30

for.cond14:                                       ; preds = %for.body, %for.inc
  %indvars.iv101 = phi i64 [ %indvars.iv.next102, %for.inc ], [ 1, %for.body ]
  %indvars.iv99 = phi i64 [ %indvars.iv.next100, %for.inc ], [ %indvars.iv, %for.body ]
  %exitcond.not = icmp eq i64 %indvars.iv101, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body16

for.body16:                                       ; preds = %for.cond14
  %indvars.iv.next100 = add nuw nsw i64 %indvars.iv99, 1
  %arrayidx18 = getelementptr inbounds nuw [256 x i8], ptr %a, i64 0, i64 %indvars.iv.next100
  %6 = load i8, ptr %arrayidx18, align 1, !tbaa !31, !invariant.load !8
  %arrayidx21 = getelementptr inbounds nuw [256 x i8], ptr %b, i64 0, i64 %indvars.iv101
  %7 = load i8, ptr %arrayidx21, align 1, !tbaa !31, !invariant.load !8
  %cmp23.not = icmp eq i8 %6, %7
  br i1 %cmp23.not, label %for.inc, label %for.end.split.loop.exit

for.inc:                                          ; preds = %for.body16
  %indvars.iv.next102 = add nuw nsw i64 %indvars.iv101, 1
  br label %for.cond14, !llvm.loop !32

for.end.split.loop.exit:                          ; preds = %for.body16
  %8 = trunc nuw nsw i64 %indvars.iv101 to i32
  br label %for.end

for.end:                                          ; preds = %for.cond14, %for.end.split.loop.exit
  %j.0.lcssa = phi i32 [ %8, %for.end.split.loop.exit ], [ %smax, %for.cond14 ]
  %cmp26 = icmp eq i32 %j.0.lcssa, %conv9
  br i1 %cmp26, label %for.cond37.preheader, label %for.inc30

for.cond37.preheader:                             ; preds = %for.end
  %vtable.i62 = load ptr, ptr @_ZSt4cout, align 8
  %vbase.offset.ptr.i63 = getelementptr i8, ptr %vtable.i62, i64 -24
  %wide.trip.count116 = and i64 %indvars.iv, 4294967295
  br label %for.cond37

for.inc30:                                        ; preds = %for.body, %for.end
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %indvars.iv.next119 = add i32 %indvars.iv118, 1
  br label %for.cond, !llvm.loop !35

if.then34:                                        ; preds = %for.cond
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull align 16 dereferenceable(256) %a, i64 noundef %call6)
  br label %if.end57

for.cond37:                                       ; preds = %for.cond37.preheader, %for.inc43
  %indvars.iv110 = phi i64 [ 0, %for.cond37.preheader ], [ %indvars.iv.next111, %for.inc43 ]
  %exitcond117.not = icmp eq i64 %indvars.iv110, %wide.trip.count116
  br i1 %exitcond117.not, label %for.end45, label %for.body39

for.body39:                                       ; preds = %for.cond37
  %arrayidx41 = getelementptr inbounds nuw [256 x i8], ptr %a, i64 0, i64 %indvars.iv110
  %9 = load i8, ptr %arrayidx41, align 1, !tbaa !31, !invariant.load !8
  call void @llvm.lifetime.start.p0(i64 noundef 1, ptr noundef nonnull %__c.addr.i)
  store i8 %9, ptr %__c.addr.i, align 1, !tbaa !31
  %vbase.offset.i64 = load i64, ptr %vbase.offset.ptr.i63, align 8, !invariant.load !8
  %gep = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 16), i64 %vbase.offset.i64
  %10 = load i64, ptr %gep, align 8, !tbaa !22, !invariant.load !8
  %cmp.not.i = icmp eq i64 %10, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %for.body39
  %call1.i67 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %__c.addr.i, i64 noundef 1)
  br label %for.inc43

if.end.i:                                         ; preds = %for.body39
  %call2.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %9)
  br label %for.inc43

for.inc43:                                        ; preds = %if.end.i, %if.then.i
  call void @llvm.lifetime.end.p0(i64 noundef 1, ptr noundef nonnull %__c.addr.i)
  %indvars.iv.next111 = add nuw nsw i64 %indvars.iv110, 1
  br label %for.cond37, !llvm.loop !36

for.end45:                                        ; preds = %for.cond37
  %call.i.i69 = call noundef i64 @strlen(ptr noundef nonnull align 16 dereferenceable(256) %c) #10
  %call1.i70 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull align 16 dereferenceable(256) %c, i64 noundef %call.i.i69)
  %vtable.i78 = load ptr, ptr @_ZSt4cout, align 8
  %vbase.offset.ptr.i79 = getelementptr i8, ptr %vtable.i78, i64 -24
  %11 = sext i32 %indvars.iv118 to i64
  %sext = shl i64 %call6, 32
  %12 = ashr exact i64 %sext, 32
  br label %for.cond48

for.cond48:                                       ; preds = %for.inc54, %for.end45
  %indvars.iv121 = phi i64 [ %indvars.iv.next122, %for.inc54 ], [ %11, %for.end45 ]
  %cmp49 = icmp slt i64 %indvars.iv121, %12
  br i1 %cmp49, label %for.body50, label %if.end57

for.body50:                                       ; preds = %for.cond48
  %arrayidx52 = getelementptr inbounds [256 x i8], ptr %a, i64 0, i64 %indvars.iv121
  %13 = load i8, ptr %arrayidx52, align 1, !tbaa !31, !invariant.load !8
  call void @llvm.lifetime.start.p0(i64 noundef 1, ptr noundef nonnull %__c.addr.i77)
  store i8 %13, ptr %__c.addr.i77, align 1, !tbaa !31
  %vbase.offset.i80 = load i64, ptr %vbase.offset.ptr.i79, align 8, !invariant.load !8
  %gep97 = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 16), i64 %vbase.offset.i80
  %14 = load i64, ptr %gep97, align 8, !tbaa !22, !invariant.load !8
  %cmp.not.i83 = icmp eq i64 %14, 0
  br i1 %cmp.not.i83, label %if.end.i87, label %if.then.i84

if.then.i84:                                      ; preds = %for.body50
  %call1.i85 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %__c.addr.i77, i64 noundef 1)
  br label %for.inc54

if.end.i87:                                       ; preds = %for.body50
  %call2.i88 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %13)
  br label %for.inc54

for.inc54:                                        ; preds = %if.end.i87, %if.then.i84
  call void @llvm.lifetime.end.p0(i64 noundef 1, ptr noundef nonnull %__c.addr.i77)
  %indvars.iv.next122 = add nsw i64 %indvars.iv121, 1
  br label %for.cond48, !llvm.loop !37

if.end57:                                         ; preds = %for.cond48, %if.then34
  call void @llvm.lifetime.end.p0(i64 noundef 256, ptr noundef nonnull captures(none) %c) #10
  call void @llvm.lifetime.end.p0(i64 noundef 256, ptr noundef nonnull captures(none) %b) #10
  call void @llvm.lifetime.end.p0(i64 noundef 256, ptr noundef nonnull captures(none) %a) #10
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

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nofree nounwind }
attributes #9 = { nofree }
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
!8 = !{}
!9 = !{!10, !14, i64 32}
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
!22 = !{!10, !11, i64 16}
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
