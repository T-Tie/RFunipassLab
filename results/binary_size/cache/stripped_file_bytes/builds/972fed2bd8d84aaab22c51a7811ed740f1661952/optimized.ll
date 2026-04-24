; ModuleID = '<stdin>'
source_filename = "/tmp/tmplofgx5q9.cpp"
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
  %__c.addr.i38 = alloca i8, align 1
  %__c.addr.i = alloca i8, align 1
  %a = alloca [100 x [100 x i32]], align 16
  %b = alloca [100 x [100 x i32]], align 16
  %c = alloca [100 x [100 x i32]], align 16
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 40000, ptr nonnull %a) #5
  call void @llvm.lifetime.start.p0(i64 40000, ptr nonnull %b) #5
  call void @llvm.lifetime.start.p0(i64 40000, ptr nonnull %c) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x1) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y1) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x2) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y2) #5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %x1)
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %call, ptr noundef nonnull align 4 dereferenceable(4) %y1)
  br label %for.cond

for.cond:                                         ; preds = %for.inc8, %entry
  %indvars.iv65 = phi i64 [ %indvars.iv.next66, %for.inc8 ], [ 0, %entry ]
  %0 = load i32, ptr %x1, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv65, %1
  br i1 %cmp, label %for.cond2, label %for.end10

for.cond2:                                        ; preds = %for.cond, %for.body4
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body4 ], [ 0, %for.cond ]
  %2 = load i32, ptr %y1, align 4, !tbaa !5
  %3 = sext i32 %2 to i64
  %cmp3 = icmp slt i64 %indvars.iv, %3
  br i1 %cmp3, label %for.body4, label %for.inc8

for.body4:                                        ; preds = %for.cond2
  %arrayidx6 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv65, i64 %indvars.iv
  %call7 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx6)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond2, !llvm.loop !9

for.inc8:                                         ; preds = %for.cond2
  %indvars.iv.next66 = add nuw nsw i64 %indvars.iv65, 1
  br label %for.cond, !llvm.loop !12

for.end10:                                        ; preds = %for.cond
  %call11 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %x2)
  %call12 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %call11, ptr noundef nonnull align 4 dereferenceable(4) %y2)
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc27, %for.end10
  %indvars.iv71 = phi i64 [ %indvars.iv.next72, %for.inc27 ], [ 0, %for.end10 ]
  %4 = load i32, ptr %x2, align 4, !tbaa !5
  %5 = sext i32 %4 to i64
  %cmp14 = icmp slt i64 %indvars.iv71, %5
  br i1 %cmp14, label %for.cond16, label %for.cond30.preheader

for.cond30.preheader:                             ; preds = %for.cond13
  %6 = load i32, ptr %x1, align 4, !tbaa !5
  %7 = load i32, ptr %y2, align 4
  %smax = call i32 @llvm.smax.i32(i32 %4, i32 0)
  %smax81 = call i32 @llvm.smax.i32(i32 %7, i32 0)
  %smax87 = call i32 @llvm.smax.i32(i32 %6, i32 0)
  %wide.trip.count88 = zext nneg i32 %smax87 to i64
  %wide.trip.count82 = zext nneg i32 %smax81 to i64
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond30

for.cond16:                                       ; preds = %for.cond13, %for.body18
  %indvars.iv68 = phi i64 [ %indvars.iv.next69, %for.body18 ], [ 0, %for.cond13 ]
  %8 = load i32, ptr %y2, align 4, !tbaa !5
  %9 = sext i32 %8 to i64
  %cmp17 = icmp slt i64 %indvars.iv68, %9
  br i1 %cmp17, label %for.body18, label %for.inc27

for.body18:                                       ; preds = %for.cond16
  %arrayidx22 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %b, i64 0, i64 %indvars.iv71, i64 %indvars.iv68
  %call23 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx22)
  %indvars.iv.next69 = add nuw nsw i64 %indvars.iv68, 1
  br label %for.cond16, !llvm.loop !13

for.inc27:                                        ; preds = %for.cond16
  %indvars.iv.next72 = add nuw nsw i64 %indvars.iv71, 1
  br label %for.cond13, !llvm.loop !14

for.cond30:                                       ; preds = %for.cond30.preheader, %for.inc57
  %indvars.iv84 = phi i64 [ 0, %for.cond30.preheader ], [ %indvars.iv.next85, %for.inc57 ]
  %exitcond89.not = icmp eq i64 %indvars.iv84, %wide.trip.count88
  br i1 %exitcond89.not, label %for.cond60, label %for.cond33

for.cond33:                                       ; preds = %for.cond30, %for.end49
  %indvars.iv78 = phi i64 [ %indvars.iv.next79, %for.end49 ], [ 0, %for.cond30 ]
  %exitcond83.not = icmp eq i64 %indvars.iv78, %wide.trip.count82
  br i1 %exitcond83.not, label %for.inc57, label %for.cond36

for.cond36:                                       ; preds = %for.cond33, %for.body38
  %indvars.iv74 = phi i64 [ %indvars.iv.next75, %for.body38 ], [ 0, %for.cond33 ]
  %sum.2 = phi i32 [ %add, %for.body38 ], [ 0, %for.cond33 ]
  %exitcond.not = icmp eq i64 %indvars.iv74, %wide.trip.count
  br i1 %exitcond.not, label %for.end49, label %for.body38

for.body38:                                       ; preds = %for.cond36
  %arrayidx42 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv84, i64 %indvars.iv74
  %10 = load i32, ptr %arrayidx42, align 4, !tbaa !5
  %arrayidx46 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %b, i64 0, i64 %indvars.iv74, i64 %indvars.iv78
  %11 = load i32, ptr %arrayidx46, align 4, !tbaa !5
  %mul = mul nsw i32 %11, %10
  %add = add nsw i32 %mul, %sum.2
  %indvars.iv.next75 = add nuw nsw i64 %indvars.iv74, 1
  br label %for.cond36, !llvm.loop !15

for.end49:                                        ; preds = %for.cond36
  %arrayidx53 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %c, i64 0, i64 %indvars.iv84, i64 %indvars.iv78
  store i32 %sum.2, ptr %arrayidx53, align 4, !tbaa !5
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 1
  br label %for.cond33, !llvm.loop !16

for.inc57:                                        ; preds = %for.cond33
  %indvars.iv.next85 = add nuw nsw i64 %indvars.iv84, 1
  br label %for.cond30, !llvm.loop !17

for.cond60:                                       ; preds = %for.cond30, %for.inc102
  %12 = phi i32 [ %15, %for.inc102 ], [ %7, %for.cond30 ]
  %13 = phi i32 [ %.pre, %for.inc102 ], [ %6, %for.cond30 ]
  %indvars.iv93 = phi i64 [ %indvars.iv.next94, %for.inc102 ], [ 0, %for.cond30 ]
  %14 = sext i32 %13 to i64
  %cmp61 = icmp slt i64 %indvars.iv93, %14
  br i1 %cmp61, label %for.cond63.preheader, label %for.end104

for.cond63.preheader:                             ; preds = %for.cond60
  %arrayidx76 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %c, i64 0, i64 %indvars.iv93
  br label %for.cond63

for.cond63:                                       ; preds = %for.cond63.preheader, %for.inc99
  %15 = phi i32 [ %12, %for.cond63.preheader ], [ %.pre96, %for.inc99 ]
  %indvars.iv90 = phi i64 [ 0, %for.cond63.preheader ], [ %indvars.iv.next91, %for.inc99 ]
  %16 = sext i32 %15 to i64
  %cmp64 = icmp slt i64 %indvars.iv90, %16
  br i1 %cmp64, label %for.body65, label %for.inc102

for.body65:                                       ; preds = %for.cond63
  %cmp66 = icmp eq i64 %indvars.iv90, 0
  br i1 %cmp66, label %if.then, label %if.else80

if.then:                                          ; preds = %for.body65
  %cmp67 = icmp eq i32 %15, 1
  %17 = load i32, ptr %arrayidx76, align 16, !tbaa !5
  %call73 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %17)
  br i1 %cmp67, label %if.then68, label %for.inc99

if.then68:                                        ; preds = %if.then
  %vtable.i51 = load ptr, ptr %call73, align 8, !tbaa !18
  %vbase.offset.ptr.i52 = getelementptr i8, ptr %vtable.i51, i64 -24
  %vbase.offset.i53 = load i64, ptr %vbase.offset.ptr.i52, align 8
  %add.ptr.i54 = getelementptr inbounds i8, ptr %call73, i64 %vbase.offset.i53
  %call.i55 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i54, i8 noundef signext 10)
  %call1.i56 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call73, i8 noundef signext %call.i55)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i56)
  br label %for.inc99

if.else80:                                        ; preds = %for.body65
  %sub = add nsw i32 %15, -1
  %18 = zext i32 %sub to i64
  %cmp81 = icmp eq i64 %indvars.iv90, %18
  br i1 %cmp81, label %if.then82, label %if.else90

if.then82:                                        ; preds = %if.else80
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__c.addr.i)
  store i8 32, ptr %__c.addr.i, align 1, !tbaa !20
  %vtable.i = load ptr, ptr @_ZSt4cout, align 8, !tbaa !18
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %gep63 = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 16), i64 %vbase.offset.i
  %19 = load i64, ptr %gep63, align 8, !tbaa !21
  %cmp.not.i = icmp eq i64 %19, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.then82
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %__c.addr.i, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

if.end.i:                                         ; preds = %if.then82
  %call2.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext 32)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %if.then.i, %if.end.i
  %retval.0.i = phi ptr [ %call1.i, %if.then.i ], [ @_ZSt4cout, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__c.addr.i)
  %arrayidx87 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %c, i64 0, i64 %indvars.iv93, i64 %indvars.iv90
  %20 = load i32, ptr %arrayidx87, align 4, !tbaa !5
  %call88 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %retval.0.i, i32 noundef %20)
  %vtable.i57 = load ptr, ptr %call88, align 8, !tbaa !18
  %vbase.offset.ptr.i58 = getelementptr i8, ptr %vtable.i57, i64 -24
  %vbase.offset.i59 = load i64, ptr %vbase.offset.ptr.i58, align 8
  %add.ptr.i60 = getelementptr inbounds i8, ptr %call88, i64 %vbase.offset.i59
  %call.i = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i60, i8 noundef signext 10)
  %call1.i61 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call88, i8 noundef signext %call.i)
  %call.i.i62 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i61)
  br label %for.inc99

if.else90:                                        ; preds = %if.else80
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__c.addr.i38)
  store i8 32, ptr %__c.addr.i38, align 1, !tbaa !20
  %vtable.i39 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !18
  %vbase.offset.ptr.i40 = getelementptr i8, ptr %vtable.i39, i64 -24
  %vbase.offset.i41 = load i64, ptr %vbase.offset.ptr.i40, align 8
  %gep = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 16), i64 %vbase.offset.i41
  %21 = load i64, ptr %gep, align 8, !tbaa !21
  %cmp.not.i44 = icmp eq i64 %21, 0
  br i1 %cmp.not.i44, label %if.end.i48, label %if.then.i45

if.then.i45:                                      ; preds = %if.else90
  %call1.i46 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %__c.addr.i38, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit50

if.end.i48:                                       ; preds = %if.else90
  %call2.i49 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext 32)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit50

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit50: ; preds = %if.then.i45, %if.end.i48
  %retval.0.i47 = phi ptr [ %call1.i46, %if.then.i45 ], [ @_ZSt4cout, %if.end.i48 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__c.addr.i38)
  %arrayidx95 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %c, i64 0, i64 %indvars.iv93, i64 %indvars.iv90
  %22 = load i32, ptr %arrayidx95, align 4, !tbaa !5
  %call96 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %retval.0.i47, i32 noundef %22)
  br label %for.inc99

for.inc99:                                        ; preds = %if.then, %if.then68, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit50, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
  %indvars.iv.next91 = add nuw nsw i64 %indvars.iv90, 1
  %.pre96 = load i32, ptr %y2, align 4, !tbaa !5
  br label %for.cond63, !llvm.loop !32

for.inc102:                                       ; preds = %for.cond63
  %indvars.iv.next94 = add nuw nsw i64 %indvars.iv93, 1
  %.pre = load i32, ptr %x1, align 4, !tbaa !5
  br label %for.cond60, !llvm.loop !33

for.end104:                                       ; preds = %for.cond60
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y2) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x2) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y1) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x1) #5
  call void @llvm.lifetime.end.p0(i64 40000, ptr nonnull %c) #5
  call void @llvm.lifetime.end.p0(i64 40000, ptr nonnull %b) #5
  call void @llvm.lifetime.end.p0(i64 40000, ptr nonnull %a) #5
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) local_unnamed_addr #3 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

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
!12 = distinct !{!12, !10, !11}
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11}
!18 = !{!19, !19, i64 0}
!19 = !{!"vtable pointer", !8, i64 0}
!20 = !{!7, !7, i64 0}
!21 = !{!22, !23, i64 16}
!22 = !{!"_ZTSSt8ios_base", !23, i64 8, !23, i64 16, !24, i64 24, !25, i64 28, !25, i64 32, !26, i64 40, !28, i64 48, !7, i64 64, !6, i64 192, !29, i64 200, !30, i64 208}
!23 = !{!"long", !7, i64 0}
!24 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!25 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!26 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !27, i64 0}
!27 = !{!"any pointer", !7, i64 0}
!28 = !{!"_ZTSNSt8ios_base6_WordsE", !27, i64 0, !23, i64 8}
!29 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !27, i64 0}
!30 = !{!"_ZTSSt6locale", !31, i64 0}
!31 = !{!"p1 _ZTSNSt6locale5_ImplE", !27, i64 0}
!32 = distinct !{!32, !10, !11}
!33 = distinct !{!33, !10, !11}
