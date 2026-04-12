; ModuleID = '<stdin>'
source_filename = "/tmp/tmpp2vqv40i.cpp"
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
  %__c.addr.i30 = alloca i8, align 1
  %__c.addr.i = alloca i8, align 1
  %n = alloca i32, align 4
  %a = alloca [500 x [41 x i8]], align 16
  %b = alloca [500 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #8
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(280) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  call void @llvm.lifetime.start.p0(i64 noundef 20500, ptr noundef nonnull %a) #9
  call void @llvm.lifetime.start.p0(i64 noundef 2000, ptr noundef nonnull %b) #9
  %vtable.i = load ptr, ptr @_ZSt3cin, align 8
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv, %1
  br i1 %cmp, label %for.body, label %for.cond4.preheader

for.cond4.preheader:                              ; preds = %for.cond
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 noundef 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond4

for.body:                                         ; preds = %for.cond
  %add.ptr = getelementptr inbounds nuw [41 x i8], ptr %a, i64 %indvars.iv
  %2 = call i64 @llvm.objectsize.i64.p0(ptr nonnull %add.ptr, i1 noundef false, i1 noundef true, i1 noundef false)
  switch i64 %2, label %if.then6.i [
    i64 0, label %do.end.i
    i64 -1, label %if.else34.i
  ]

do.end.i:                                         ; preds = %for.body
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8, !invariant.load !9
  %add.ptr.i = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset.i
  %_M_width.i.i = getelementptr inbounds nuw i8, ptr %add.ptr.i, i64 16
  store i64 0, ptr %_M_width.i.i, align 8, !tbaa !10
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i, i32 noundef 4)
  br label %for.inc

if.then6.i:                                       ; preds = %for.body
  %vbase.offset9.i = load i64, ptr %vbase.offset.ptr.i, align 8, !invariant.load !9
  %add.ptr10.i = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset9.i
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull %add.ptr, i64 noundef %2)
  %_M_streambuf_state.i.i.i = getelementptr inbounds nuw i8, ptr %add.ptr10.i, i64 32
  %3 = load i32, ptr %_M_streambuf_state.i.i.i, align 8, !tbaa !21, !invariant.load !9
  %cmp.i.i = icmp eq i32 %3, 0
  br i1 %cmp.i.i, label %land.lhs.true.i, label %for.inc

land.lhs.true.i:                                  ; preds = %if.then6.i
  %_M_width.i2.i = getelementptr inbounds nuw i8, ptr %add.ptr10.i, i64 16
  %4 = load i64, ptr %_M_width.i2.i, align 8, !tbaa !10, !invariant.load !9
  %cmp17.i = icmp slt i64 %4, 1
  %cmp18.i = icmp ult i64 %2, %4
  %or.cond.i = or i1 %cmp17.i, %cmp18.i
  br i1 %or.cond.i, label %if.then19.i, label %for.inc

if.then19.i:                                      ; preds = %land.lhs.true.i
  %_M_streambuf.i.i = getelementptr inbounds nuw i8, ptr %add.ptr10.i, i64 232
  %5 = load ptr, ptr %_M_streambuf.i.i, align 8, !tbaa !22, !invariant.load !9
  %call25.i = call noundef i32 @_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv(ptr noundef nonnull align 8 dereferenceable(64) %5)
  %cmp.i3.i = icmp eq i32 %call25.i, -1
  %conv.i = zext i1 %cmp.i3.i to i64
  %expval.i = call i64 @llvm.expect.i64(i64 noundef %conv.i, i64 noundef 1)
  %tobool.not.i = icmp eq i64 %expval.i, 0
  br i1 %tobool.not.i, label %for.inc, label %if.then28.i

if.then28.i:                                      ; preds = %if.then19.i
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr10.i, i32 noundef 2)
  br label %for.inc

if.else34.i:                                      ; preds = %for.body
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull %add.ptr, i64 noundef 9223372036854775807)
  br label %for.inc

for.inc:                                          ; preds = %if.else34.i, %if.then28.i, %if.then19.i, %land.lhs.true.i, %if.then6.i, %do.end.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !30

for.cond4:                                        ; preds = %for.cond4.preheader, %for.inc13
  %indvars.iv75 = phi i64 [ 0, %for.cond4.preheader ], [ %indvars.iv.next76, %for.inc13 ]
  %exitcond.not = icmp eq i64 %indvars.iv75, %wide.trip.count
  br i1 %exitcond.not, label %for.cond16.preheader, label %for.inc13

for.cond16.preheader:                             ; preds = %for.cond4
  %invariant.gep = getelementptr i8, ptr %a, i64 -41
  %vtable.i53 = load ptr, ptr @_ZSt4cout, align 8
  %vbase.offset.ptr.i54 = getelementptr i8, ptr %vtable.i53, i64 -24
  br label %for.cond16

for.inc13:                                        ; preds = %for.cond4
  %add.ptr8 = getelementptr inbounds nuw [41 x i8], ptr %a, i64 %indvars.iv75
  %call10 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %add.ptr8) #10
  %6 = trunc i64 %call10 to i32
  %conv = add i32 %6, 1
  %add.ptr12 = getelementptr inbounds nuw i32, ptr %b, i64 %indvars.iv75
  store i32 %conv, ptr %add.ptr12, align 4, !tbaa !5
  %indvars.iv.next76 = add nuw nsw i64 %indvars.iv75, 1
  br label %for.cond4, !llvm.loop !33

for.cond16:                                       ; preds = %for.cond16.preheader, %for.inc42
  %.pre91 = phi i32 [ %0, %for.cond16.preheader ], [ %.pre, %for.inc42 ]
  %indvars.iv82 = phi i64 [ 0, %for.cond16.preheader ], [ %indvars.iv.next83, %for.inc42 ]
  %sum.0 = phi i32 [ 0, %for.cond16.preheader ], [ %sum.1, %for.inc42 ]
  %k.0 = phi i32 [ 0, %for.cond16.preheader ], [ %k.1, %for.inc42 ]
  %7 = sext i32 %.pre91 to i64
  %cmp17 = icmp slt i64 %indvars.iv82, %7
  br i1 %cmp17, label %for.body18, label %for.cond45.preheader

for.cond45.preheader:                             ; preds = %for.cond16
  %vtable.i31 = load ptr, ptr @_ZSt4cout, align 8
  %vbase.offset.ptr.i32 = getelementptr i8, ptr %vtable.i31, i64 -24
  %8 = zext nneg i32 %k.0 to i64
  br label %for.cond45

for.body18:                                       ; preds = %for.cond16
  %add.ptr20 = getelementptr inbounds nuw i32, ptr %b, i64 %indvars.iv82
  %9 = load i32, ptr %add.ptr20, align 4, !tbaa !5, !invariant.load !9
  %add21 = add nsw i32 %9, %sum.0
  %cmp22 = icmp sgt i32 %add21, 81
  br i1 %cmp22, label %for.cond23.preheader, label %for.inc42

for.cond23.preheader:                             ; preds = %for.body18
  %10 = add nsw i64 %indvars.iv82, -1
  %vtable.i6 = load ptr, ptr @_ZSt4cout, align 8
  %vbase.offset.ptr.i7 = getelementptr i8, ptr %vtable.i6, i64 -24
  %11 = zext nneg i32 %k.0 to i64
  br label %for.cond23

for.cond23:                                       ; preds = %for.cond23.preheader, %for.inc31
  %indvars.iv79 = phi i64 [ %11, %for.cond23.preheader ], [ %indvars.iv.next80, %for.inc31 ]
  %cmp24 = icmp slt i64 %indvars.iv79, %10
  br i1 %cmp24, label %for.inc31, label %for.end33

for.inc31:                                        ; preds = %for.cond23
  %add.ptr27 = getelementptr inbounds nuw [41 x i8], ptr %a, i64 %indvars.iv79
  call fastcc void @outlined_ir_func_2(ptr noundef nonnull dereferenceable(1) %add.ptr27)
  call void @llvm.lifetime.start.p0(i64 noundef 1, ptr noundef nonnull captures(none) dereferenceable(1) %__c.addr.i)
  call fastcc void @outlined_ir_func_1(ptr noundef nonnull dereferenceable(1) %__c.addr.i, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %vbase.offset.ptr.i7)
  call void @llvm.lifetime.end.p0(i64 noundef 1, ptr noundef nonnull captures(none) %__c.addr.i)
  %indvars.iv.next80 = add nuw nsw i64 %indvars.iv79, 1
  br label %for.cond23, !llvm.loop !34

for.end33:                                        ; preds = %for.cond23
  %gep71 = getelementptr [41 x i8], ptr %invariant.gep, i64 %indvars.iv82
  call fastcc void @outlined_ir_func_0(ptr noundef nonnull dereferenceable(1) %gep71, ptr nofree readonly captures(none) %vbase.offset.ptr.i54)
  %12 = trunc nuw nsw i64 %indvars.iv82 to i32
  %.pre.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.inc42

for.inc42:                                        ; preds = %for.body18, %for.end33
  %.pre = phi i32 [ %.pre.pre, %for.end33 ], [ %.pre91, %for.body18 ]
  %sum.1 = phi i32 [ %9, %for.end33 ], [ %add21, %for.body18 ]
  %k.1 = phi i32 [ %12, %for.end33 ], [ %k.0, %for.body18 ]
  %indvars.iv.next83 = add nuw nsw i64 %indvars.iv82, 1
  br label %for.cond16, !llvm.loop !35

for.cond45:                                       ; preds = %for.cond45.preheader, %for.inc54
  %13 = phi i32 [ %.pre91, %for.cond45.preheader ], [ %.pre90, %for.inc54 ]
  %indvars.iv87 = phi i64 [ %8, %for.cond45.preheader ], [ %indvars.iv.next88, %for.inc54 ]
  %sub46 = add nsw i32 %13, -1
  %14 = sext i32 %sub46 to i64
  %cmp47 = icmp slt i64 %indvars.iv87, %14
  br i1 %cmp47, label %for.inc54, label %for.end56

for.inc54:                                        ; preds = %for.cond45
  %add.ptr50 = getelementptr inbounds nuw [41 x i8], ptr %a, i64 %indvars.iv87
  call fastcc void @outlined_ir_func_2(ptr noundef nonnull dereferenceable(1) %add.ptr50)
  call void @llvm.lifetime.start.p0(i64 noundef 1, ptr noundef nonnull captures(none) dereferenceable(1) %__c.addr.i30)
  call fastcc void @outlined_ir_func_1(ptr noundef nonnull dereferenceable(1) %__c.addr.i30, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %vbase.offset.ptr.i32)
  call void @llvm.lifetime.end.p0(i64 noundef 1, ptr noundef nonnull captures(none) %__c.addr.i30)
  %indvars.iv.next88 = add nuw nsw i64 %indvars.iv87, 1
  %.pre90 = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond45, !llvm.loop !36

for.end56:                                        ; preds = %for.cond45
  %idx.ext57 = sext i32 %13 to i64
  %add.ptr58 = getelementptr inbounds [41 x i8], ptr %a, i64 %idx.ext57
  %add.ptr59 = getelementptr inbounds i8, ptr %add.ptr58, i64 -41
  call fastcc void @outlined_ir_func_0(ptr noundef nonnull dereferenceable(1) %add.ptr59, ptr nofree readonly captures(none) %vbase.offset.ptr.i32)
  call void @llvm.lifetime.end.p0(i64 noundef 2000, ptr noundef nonnull %b) #9
  call void @llvm.lifetime.end.p0(i64 noundef 20500, ptr noundef nonnull %a) #9
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #9
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #4

; Function Attrs: mustprogress uwtable
declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #5 align 2

declare void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef i32 @_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #5 align 2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #6

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) local_unnamed_addr #5 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: minsize mustprogress norecurse optsize uwtable
define internal fastcc void @outlined_ir_func_0(ptr noundef nonnull dereferenceable(1) %0, ptr nofree readonly captures(none) %1) unnamed_addr #7 {
for.end33_after_outline.exitStub:
  %call.i.i13 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #11
  %call1.i14 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull dereferenceable(1) %0, i64 noundef %call.i.i13)
  %vbase.offset.i55 = load i64, ptr %1, align 8, !invariant.load !9
  %add.ptr.i56 = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %vbase.offset.i55
  %call.i57 = tail call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i56, i8 noundef signext 10)
  %call1.i58 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %call.i57)
  %call.i.i59 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i58)
  ret void
}

; Function Attrs: minsize mustprogress norecurse optsize uwtable
define internal fastcc void @outlined_ir_func_1(ptr noundef nonnull dereferenceable(1) initializes((0, 1)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #7 {
for.body25_to_outline:
  store i8 32, ptr %0, align 1, !tbaa !37
  %vbase.offset.i8 = load i64, ptr %1, align 8, !invariant.load !9
  %gep = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 16), i64 %vbase.offset.i8
  %2 = load i64, ptr %gep, align 8, !tbaa !10, !invariant.load !9
  %cmp.not.i = icmp eq i64 %2, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %for.body25_to_outline
  %call1.i11 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull dereferenceable(1) %0, i64 noundef 1)
  br label %for.inc31.exitStub

if.end.i:                                         ; preds = %for.body25_to_outline
  %call2.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext 32)
  br label %for.inc31.exitStub

for.inc31.exitStub:                               ; preds = %if.end.i, %if.then.i
  ret void
}

; Function Attrs: minsize mustprogress norecurse optsize uwtable
define internal fastcc void @outlined_ir_func_2(ptr noundef nonnull dereferenceable(1) %0) unnamed_addr #7 {
for.body25_after_outline.exitStub:
  %call.i.i = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #11
  %call1.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull dereferenceable(1) %0, i64 noundef %call.i.i)
  ret void
}

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { minsize mustprogress norecurse optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind willreturn memory(read) }
attributes #11 = { nosync nounwind willreturn memory(read) }

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
!9 = !{}
!10 = !{!11, !12, i64 16}
!11 = !{!"_ZTSSt8ios_base", !12, i64 8, !12, i64 16, !13, i64 24, !14, i64 28, !14, i64 32, !15, i64 40, !17, i64 48, !7, i64 64, !6, i64 192, !18, i64 200, !19, i64 208}
!12 = !{!"long", !7, i64 0}
!13 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!14 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!15 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !16, i64 0}
!16 = !{!"any pointer", !7, i64 0}
!17 = !{!"_ZTSNSt8ios_base6_WordsE", !16, i64 0, !12, i64 8}
!18 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !16, i64 0}
!19 = !{!"_ZTSSt6locale", !20, i64 0}
!20 = !{!"p1 _ZTSNSt6locale5_ImplE", !16, i64 0}
!21 = !{!11, !14, i64 32}
!22 = !{!23, !26, i64 232}
!23 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !11, i64 0, !24, i64 216, !7, i64 224, !25, i64 225, !26, i64 232, !27, i64 240, !28, i64 248, !29, i64 256}
!24 = !{!"p1 _ZTSSo", !16, i64 0}
!25 = !{!"bool", !7, i64 0}
!26 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !16, i64 0}
!27 = !{!"p1 _ZTSSt5ctypeIcE", !16, i64 0}
!28 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !16, i64 0}
!29 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !16, i64 0}
!30 = distinct !{!30, !31, !32}
!31 = !{!"llvm.loop.mustprogress"}
!32 = !{!"llvm.loop.unroll.disable"}
!33 = distinct !{!33, !31, !32}
!34 = distinct !{!34, !31, !32}
!35 = distinct !{!35, !31, !32}
!36 = distinct !{!36, !31, !32}
!37 = !{!7, !7, i64 0}
