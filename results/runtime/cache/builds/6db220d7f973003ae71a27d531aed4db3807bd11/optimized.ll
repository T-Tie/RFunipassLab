; ModuleID = '<stdin>'
source_filename = "/tmp/tmp_7fz4w5h.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }

$_ZNKSt5ctypeIcE5widenEc = comdat any

@_ZSt3cin = external global %"class.std::basic_istream", align 8
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %__c.addr.i48 = alloca i8, align 1
  %__c.addr.i18 = alloca i8, align 1
  %__c.addr.i = alloca i8, align 1
  %n = alloca i32, align 4
  %words = alloca [1000 x [20 x i8]], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #6
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  call void @llvm.lifetime.start.p0(i64 noundef 20000, ptr noundef nonnull %words) #7
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv, %1
  br i1 %cmp, label %for.inc, label %for.cond2

for.inc:                                          ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [1000 x [20 x i8]], ptr %words, i64 0, i64 %indvars.iv
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.cond2:                                        ; preds = %for.cond, %for.inc55
  %2 = phi i32 [ %.pre, %for.inc55 ], [ %0, %for.cond ]
  %indvars.iv115 = phi i64 [ %indvars.iv.next116, %for.inc55 ], [ 0, %for.cond ]
  %csum.0 = phi i64 [ %csum.1, %for.inc55 ], [ 0, %for.cond ]
  %j.0 = phi i32 [ %j.2, %for.inc55 ], [ 0, %for.cond ]
  %3 = sext i32 %2 to i64
  %cmp3 = icmp slt i64 %indvars.iv115, %3
  br i1 %cmp3, label %for.body4, label %for.end57

for.body4:                                        ; preds = %for.cond2
  %sext = shl i64 %csum.0, 32
  %conv = ashr exact i64 %sext, 32
  %arrayidx6 = getelementptr inbounds nuw [1000 x [20 x i8]], ptr %words, i64 0, i64 %indvars.iv115
  %call8 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %arrayidx6) #8
  %add = add nsw i64 %conv, 1
  %add9 = add i64 %add, %call8
  %conv10 = trunc i64 %add9 to i32
  %cmp11 = icmp eq i32 %conv10, 81
  br i1 %cmp11, label %if.then, label %if.end

if.then:                                          ; preds = %for.body4
  %idxprom12 = sext i32 %j.0 to i64
  br label %for.cond17

for.cond17:                                       ; preds = %for.inc25, %if.then
  %indvars.iv.next113.sink = phi i64 [ %indvars.iv.next113, %for.inc25 ], [ %idxprom12, %if.then ]
  %retval.0.i.sink = phi ptr [ %retval.0.i, %for.inc25 ], [ @_ZSt4cout, %if.then ]
  %arrayidx22 = getelementptr inbounds [1000 x [20 x i8]], ptr %words, i64 0, i64 %indvars.iv.next113.sink
  %call.i.i2 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %arrayidx22) #7
  %call1.i3 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %retval.0.i.sink, ptr noundef nonnull %arrayidx22, i64 noundef %call.i.i2)
  %indvars.iv.next113 = add nsw i64 %indvars.iv.next113.sink, 1
  %cmp18.not.not = icmp slt i64 %indvars.iv.next113.sink, %indvars.iv115
  br i1 %cmp18.not.not, label %for.body19, label %for.inc55.sink.split

for.body19:                                       ; preds = %for.cond17
  call void @llvm.lifetime.start.p0(i64 noundef 1, ptr noundef nonnull %__c.addr.i)
  store i8 32, ptr %__c.addr.i, align 1, !tbaa !12
  %vtable.i = load ptr, ptr @_ZSt4cout, align 8, !tbaa !13
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8, !invariant.load !15
  %gep106 = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 16), i64 %vbase.offset.i
  %4 = load i64, ptr %gep106, align 8, !tbaa !16, !invariant.load !15
  %cmp.not.i = icmp eq i64 %4, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %for.body19
  %call1.i1 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %__c.addr.i, i64 noundef 1)
  br label %for.inc25

if.end.i:                                         ; preds = %for.body19
  %call2.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext 32)
  br label %for.inc25

for.inc25:                                        ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi ptr [ %call1.i1, %if.then.i ], [ @_ZSt4cout, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 noundef 1, ptr noundef nonnull %__c.addr.i)
  br label %for.cond17, !llvm.loop !27

if.end:                                           ; preds = %for.body4
  %cmp29 = icmp sgt i32 %conv10, 81
  br i1 %cmp29, label %if.then30, label %for.inc55

if.then30:                                        ; preds = %if.end
  %idxprom31 = sext i32 %j.0 to i64
  br label %for.cond36

for.cond36:                                       ; preds = %for.inc44, %if.then30
  %indvars.iv.next110.sink = phi i64 [ %indvars.iv.next110, %for.inc44 ], [ %idxprom31, %if.then30 ]
  %retval.0.i27.sink = phi ptr [ %retval.0.i27, %for.inc44 ], [ @_ZSt4cout, %if.then30 ]
  %arrayidx41 = getelementptr inbounds [1000 x [20 x i8]], ptr %words, i64 0, i64 %indvars.iv.next110.sink
  %call.i.i31 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %arrayidx41) #7
  %call1.i32 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %retval.0.i27.sink, ptr noundef nonnull %arrayidx41, i64 noundef %call.i.i31)
  %indvars.iv.next110 = add nsw i64 %indvars.iv.next110.sink, 1
  %cmp37 = icmp slt i64 %indvars.iv.next110, %indvars.iv115
  br i1 %cmp37, label %for.body38, label %for.end46

for.body38:                                       ; preds = %for.cond36
  call void @llvm.lifetime.start.p0(i64 noundef 1, ptr noundef nonnull %__c.addr.i18)
  store i8 32, ptr %__c.addr.i18, align 1, !tbaa !12
  %vtable.i19 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !13
  %vbase.offset.ptr.i20 = getelementptr i8, ptr %vtable.i19, i64 -24
  %vbase.offset.i21 = load i64, ptr %vbase.offset.ptr.i20, align 8, !invariant.load !15
  %gep = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 16), i64 %vbase.offset.i21
  %5 = load i64, ptr %gep, align 8, !tbaa !16, !invariant.load !15
  %cmp.not.i24 = icmp eq i64 %5, 0
  br i1 %cmp.not.i24, label %if.end.i28, label %if.then.i25

if.then.i25:                                      ; preds = %for.body38
  %call1.i26 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %__c.addr.i18, i64 noundef 1)
  br label %for.inc44

if.end.i28:                                       ; preds = %for.body38
  %call2.i29 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext 32)
  br label %for.inc44

for.inc44:                                        ; preds = %if.end.i28, %if.then.i25
  %retval.0.i27 = phi ptr [ %call1.i26, %if.then.i25 ], [ @_ZSt4cout, %if.end.i28 ]
  call void @llvm.lifetime.end.p0(i64 noundef 1, ptr noundef nonnull %__c.addr.i18)
  br label %for.cond36, !llvm.loop !28

for.end46:                                        ; preds = %for.cond36
  %call50 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %arrayidx6) #8
  %add51 = add i64 %call50, 1
  br label %for.inc55.sink.split

for.inc55.sink.split:                             ; preds = %for.cond17, %for.end46
  %csum.1.ph = phi i64 [ %add51, %for.end46 ], [ 0, %for.cond17 ]
  %j.2.ph.in = phi i64 [ %indvars.iv.next110, %for.end46 ], [ %indvars.iv.next113, %for.cond17 ]
  %j.2.ph = trunc i64 %j.2.ph.in to i32
  %vtable.i76 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !13
  %vbase.offset.ptr.i77 = getelementptr i8, ptr %vtable.i76, i64 -24
  %vbase.offset.i78 = load i64, ptr %vbase.offset.ptr.i77, align 8, !invariant.load !15
  %add.ptr.i79 = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %vbase.offset.i78
  %call.i = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i79, i8 noundef signext 10)
  %call1.i80 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %call.i)
  %call.i.i81 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i80)
  br label %for.inc55

for.inc55:                                        ; preds = %for.inc55.sink.split, %if.end
  %csum.1 = phi i64 [ %add9, %if.end ], [ %csum.1.ph, %for.inc55.sink.split ]
  %j.2 = phi i32 [ %j.0, %if.end ], [ %j.2.ph, %for.inc55.sink.split ]
  %indvars.iv.next116 = add nuw nsw i64 %indvars.iv115, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond2, !llvm.loop !29

for.end57:                                        ; preds = %for.cond2
  %idxprom58 = sext i32 %j.0 to i64
  br label %for.cond63

for.cond63:                                       ; preds = %for.inc71, %for.end57
  %indvars.iv.next120.sink = phi i64 [ %indvars.iv.next120, %for.inc71 ], [ %idxprom58, %for.end57 ]
  %retval.0.i57.sink = phi ptr [ %retval.0.i57, %for.inc71 ], [ @_ZSt4cout, %for.end57 ]
  %arrayidx68 = getelementptr inbounds [1000 x [20 x i8]], ptr %words, i64 0, i64 %indvars.iv.next120.sink
  %call.i.i61 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %arrayidx68) #7
  %call1.i62 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %retval.0.i57.sink, ptr noundef nonnull %arrayidx68, i64 noundef %call.i.i61)
  %indvars.iv.next120 = add nsw i64 %indvars.iv.next120.sink, 1
  %6 = load i32, ptr %n, align 4, !tbaa !5
  %7 = sext i32 %6 to i64
  %cmp64 = icmp slt i64 %indvars.iv.next120, %7
  br i1 %cmp64, label %for.body65, label %for.end73

for.body65:                                       ; preds = %for.cond63
  call void @llvm.lifetime.start.p0(i64 noundef 1, ptr noundef nonnull %__c.addr.i48)
  store i8 32, ptr %__c.addr.i48, align 1, !tbaa !12
  %vtable.i49 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !13
  %vbase.offset.ptr.i50 = getelementptr i8, ptr %vtable.i49, i64 -24
  %vbase.offset.i51 = load i64, ptr %vbase.offset.ptr.i50, align 8, !invariant.load !15
  %gep107 = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 16), i64 %vbase.offset.i51
  %8 = load i64, ptr %gep107, align 8, !tbaa !16
  %cmp.not.i54 = icmp eq i64 %8, 0
  br i1 %cmp.not.i54, label %if.end.i58, label %if.then.i55

if.then.i55:                                      ; preds = %for.body65
  %call1.i56 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %__c.addr.i48, i64 noundef 1)
  br label %for.inc71

if.end.i58:                                       ; preds = %for.body65
  %call2.i59 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext 32)
  br label %for.inc71

for.inc71:                                        ; preds = %if.end.i58, %if.then.i55
  %retval.0.i57 = phi ptr [ %call1.i56, %if.then.i55 ], [ @_ZSt4cout, %if.end.i58 ]
  call void @llvm.lifetime.end.p0(i64 noundef 1, ptr noundef nonnull %__c.addr.i48)
  br label %for.cond63, !llvm.loop !30

for.end73:                                        ; preds = %for.cond63
  call void @llvm.lifetime.end.p0(i64 noundef 20000, ptr noundef nonnull %words) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #7
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) #2

declare i32 @__isoc23_scanf(ptr noundef, ...) #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define available_externally void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %this, i32 noundef %__state) #4 align 2 {
entry:
  %_M_streambuf_state.i = getelementptr inbounds nuw i8, ptr %this, i64 32
  %0 = load i32, ptr %_M_streambuf_state.i, align 8, !tbaa !31
  %or.i = or i32 %0, %__state
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %this, i32 noundef %or.i)
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) #2

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) #2

; Function Attrs: mustprogress uwtable
define available_externally noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %this, i8 noundef signext %__c) #4 align 2 {
entry:
  %_M_ctype = getelementptr inbounds nuw i8, ptr %this, i64 240
  %0 = load ptr, ptr %_M_ctype, align 8, !tbaa !32
  %tobool.not.i = icmp eq ptr %0, null
  br i1 %tobool.not.i, label %if.then.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit

if.then.i:                                        ; preds = %entry
  tail call void @_ZSt16__throw_bad_castv() #9
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit:    ; preds = %entry
  %call2 = tail call noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %0, i8 noundef signext %__c)
  ret i8 %call2
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) #2

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %this, i8 noundef signext %__c) #4 comdat align 2 {
entry:
  %_M_widen_ok = getelementptr inbounds nuw i8, ptr %this, i64 56
  %0 = load i8, ptr %_M_widen_ok, align 8, !tbaa !40
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %_M_widen = getelementptr inbounds nuw i8, ptr %this, i64 57
  %idxprom = zext i8 %__c to i64
  %arrayidx = getelementptr inbounds nuw [256 x i8], ptr %_M_widen, i64 0, i64 %idxprom
  %1 = load i8, ptr %arrayidx, align 1, !tbaa !12
  br label %return

if.end:                                           ; preds = %entry
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %this)
  %vtable = load ptr, ptr %this, align 8, !tbaa !13
  %vfn = getelementptr inbounds nuw i8, ptr %vtable, i64 48
  %2 = load ptr, ptr %vfn, align 8, !invariant.load !15
  %call = tail call noundef signext i8 %2(ptr noundef nonnull align 8 dereferenceable(570) %this, i8 noundef signext %__c)
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i8 [ %1, %if.then ], [ %call, %if.end ]
  ret i8 %retval.0
}

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() #5

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) #2

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { nounwind }
attributes #8 = { nounwind willreturn memory(read) }
attributes #9 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.1.8 (https://github.com/llvm/llvm-project.git 2078da43e25a4623cab2d0d60decddf709aaea28)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = !{!7, !7, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"vtable pointer", !8, i64 0}
!15 = !{}
!16 = !{!17, !18, i64 16}
!17 = !{!"_ZTSSt8ios_base", !18, i64 8, !18, i64 16, !19, i64 24, !20, i64 28, !20, i64 32, !21, i64 40, !23, i64 48, !7, i64 64, !6, i64 192, !24, i64 200, !25, i64 208}
!18 = !{!"long", !7, i64 0}
!19 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!20 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!21 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !22, i64 0}
!22 = !{!"any pointer", !7, i64 0}
!23 = !{!"_ZTSNSt8ios_base6_WordsE", !22, i64 0, !18, i64 8}
!24 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !22, i64 0}
!25 = !{!"_ZTSSt6locale", !26, i64 0}
!26 = !{!"p1 _ZTSNSt6locale5_ImplE", !22, i64 0}
!27 = distinct !{!27, !10, !11}
!28 = distinct !{!28, !10, !11}
!29 = distinct !{!29, !10, !11}
!30 = distinct !{!30, !10, !11}
!31 = !{!17, !20, i64 32}
!32 = !{!33, !37, i64 240}
!33 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !17, i64 0, !34, i64 216, !7, i64 224, !35, i64 225, !36, i64 232, !37, i64 240, !38, i64 248, !39, i64 256}
!34 = !{!"p1 _ZTSSo", !22, i64 0}
!35 = !{!"bool", !7, i64 0}
!36 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !22, i64 0}
!37 = !{!"p1 _ZTSSt5ctypeIcE", !22, i64 0}
!38 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !22, i64 0}
!39 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !22, i64 0}
!40 = !{!41, !7, i64 56}
!41 = !{!"_ZTSSt5ctypeIcE", !42, i64 0, !43, i64 16, !35, i64 24, !44, i64 32, !44, i64 40, !45, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!42 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!43 = !{!"p1 _ZTS15__locale_struct", !22, i64 0}
!44 = !{!"p1 int", !22, i64 0}
!45 = !{!"p1 short", !22, i64 0}
