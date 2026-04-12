; ModuleID = '<stdin>'
source_filename = "/tmp/tmp41yojisy.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }

$_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_ = comdat any

$_ZNSt8ios_base5widthEl = comdat any

$_ZNKSt8ios_base5widthEv = comdat any

$_ZNSt11char_traitsIcE11eq_int_typeERKiS2_ = comdat any

$_ZNSt11char_traitsIcE3eofEv = comdat any

@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %a = alloca [40 x i8], align 16
  %n = alloca i32, align 4
  %sum = alloca i32, align 4
  %i = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 40, ptr noundef nonnull align 16 captures(none) dereferenceable(40) %a) #9
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %n) #9
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %sum) #9
  store i32 0, ptr %sum, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %i) #9
  store i32 0, ptr %i, align 4, !tbaa !5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(280) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  br label %while.cond

while.cond:                                       ; preds = %if.end29, %entry
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_(ptr noundef nonnull align 8 dereferenceable(280) @_ZSt3cin, ptr noundef nonnull align 16 dereferenceable(40) %a)
  %vtable = load ptr, ptr %call1, align 8, !tbaa !9
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8, !invariant.load !11
  %add.ptr = getelementptr inbounds i8, ptr %call1, i64 %vbase.offset
  %call2 = call noundef zeroext i1 @_ZNKSt9basic_iosIcSt11char_traitsIcEEcvbEv(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr)
  br i1 %call2, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp sgt i32 %0, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %1 = phi i1 [ false, %while.cond ], [ %cmp, %land.rhs ]
  br i1 %1, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %2 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %2, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  %call4 = call i64 @strlen(ptr noundef %a) #10
  %conv = trunc i64 %call4 to i32
  %cmp5 = icmp eq i32 %inc, 1
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %3 = load i32, ptr %sum, align 4, !tbaa !5
  %add = add nsw i32 %3, %conv
  store i32 %add, ptr %sum, align 4, !tbaa !5
  br label %if.end

if.else:                                          ; preds = %while.body
  %4 = load i32, ptr %sum, align 4, !tbaa !5
  %add6 = add nsw i32 %4, %conv
  %add7 = add nsw i32 %add6, 1
  store i32 %add7, ptr %sum, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load i32, ptr %sum, align 4, !tbaa !5
  %cmp8 = icmp sle i32 %5, 80
  br i1 %cmp8, label %if.then9, label %if.end19

if.then9:                                         ; preds = %if.end
  br i1 %cmp5, label %if.then11, label %if.else14

if.then11:                                        ; preds = %if.then9
  %call13 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %a)
  br label %if.end18

if.else14:                                        ; preds = %if.then9
  %call15 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str)
  %call17 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %call15, ptr noundef %a)
  br label %if.end18

if.end18:                                         ; preds = %if.else14, %if.then11
  br label %if.end19

if.end19:                                         ; preds = %if.end18, %if.end
  %cmp20 = icmp eq i32 %5, 80
  br i1 %cmp20, label %if.then21, label %if.end23

if.then21:                                        ; preds = %if.end19
  %call22 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  store i32 0, ptr %sum, align 4, !tbaa !5
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %if.end19
  %6 = load i32, ptr %sum, align 4, !tbaa !5
  %cmp24 = icmp sgt i32 %6, 80
  br i1 %cmp24, label %if.then25, label %if.end29

if.then25:                                        ; preds = %if.end23
  %call26 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %call28 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %a)
  store i32 %conv, ptr %sum, align 4, !tbaa !5
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %if.end29

if.end29:                                         ; preds = %if.then25, %if.end23
  %7 = load i32, ptr %n, align 4, !tbaa !5
  %dec = add nsw i32 %7, -1
  store i32 %dec, ptr %n, align 4, !tbaa !5
  br label %while.cond, !llvm.loop !12

while.end:                                        ; preds = %land.end
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %i) #11
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %sum) #11
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %n) #11
  call void @llvm.lifetime.end.p0(i64 noundef 40, ptr noundef captures(none) %a) #11
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_(ptr noundef nonnull align 8 dereferenceable(16) %__in, ptr noundef nonnull %__s) local_unnamed_addr #3 comdat {
entry:
  %__c = alloca i32, align 4
  %ref.tmp = alloca i32, align 4
  %0 = call i64 @llvm.objectsize.i64.p0(ptr %__s, i1 false, i1 true, i1 false)
  %cmp = icmp ult i64 %0, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %vtable = load ptr, ptr %__in, align 8, !tbaa !9
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8, !invariant.load !11
  %add.ptr = getelementptr inbounds i8, ptr %__in, i64 %vbase.offset
  %call = call noundef i64 @_ZNSt8ios_base5widthEl(ptr noundef nonnull align 8 dereferenceable(216) %add.ptr, i64 noundef 0) #11
  %vtable1 = load ptr, ptr %__in, align 8, !tbaa !9
  %vbase.offset.ptr2 = getelementptr i8, ptr %vtable1, i64 -24
  %vbase.offset3 = load i64, ptr %vbase.offset.ptr2, align 8, !invariant.load !11
  %add.ptr4 = getelementptr inbounds i8, ptr %__in, i64 %vbase.offset3
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr4, i32 noundef 4)
  br label %if.end38

if.else:                                          ; preds = %entry
  %cmp5 = icmp ne i64 %0, -1
  br i1 %cmp5, label %if.then6, label %if.else34

if.then6:                                         ; preds = %if.else
  %vtable7 = load ptr, ptr %__in, align 8, !tbaa !9
  %vbase.offset.ptr8 = getelementptr i8, ptr %vtable7, i64 -24
  %vbase.offset9 = load i64, ptr %vbase.offset.ptr8, align 8, !invariant.load !11
  %add.ptr10 = getelementptr inbounds i8, ptr %__in, i64 %vbase.offset9
  %call11 = call noundef i64 @_ZNKSt8ios_base5widthEv(ptr noundef nonnull align 8 dereferenceable(216) %add.ptr10) #11
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) %__in, ptr noundef %__s, i64 noundef %0)
  %vtable12 = load ptr, ptr %__in, align 8, !tbaa !9
  %vbase.offset.ptr13 = getelementptr i8, ptr %vtable12, i64 -24
  %vbase.offset14 = load i64, ptr %vbase.offset.ptr13, align 8, !invariant.load !11
  %add.ptr15 = getelementptr inbounds i8, ptr %__in, i64 %vbase.offset14
  %call16 = call noundef zeroext i1 @_ZNKSt9basic_iosIcSt11char_traitsIcEE4goodEv(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr15) #11
  br i1 %call16, label %land.lhs.true, label %if.end33

land.lhs.true:                                    ; preds = %if.then6
  %cmp17 = icmp sle i64 %call11, 0
  br i1 %cmp17, label %if.then19, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %cmp18 = icmp ult i64 %0, %call11
  br i1 %cmp18, label %if.then19, label %if.end33

if.then19:                                        ; preds = %lor.lhs.false, %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull align 4 captures(none) dereferenceable(4) %__c) #11
  %vtable20 = load ptr, ptr %__in, align 8, !tbaa !9
  %vbase.offset.ptr21 = getelementptr i8, ptr %vtable20, i64 -24
  %vbase.offset22 = load i64, ptr %vbase.offset.ptr21, align 8, !invariant.load !11
  %add.ptr23 = getelementptr inbounds i8, ptr %__in, i64 %vbase.offset22
  %call24 = call noundef ptr @_ZNKSt9basic_iosIcSt11char_traitsIcEE5rdbufEv(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr23) #11
  %call25 = call noundef i32 @_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv(ptr noundef nonnull align 8 dereferenceable(64) %call24)
  store i32 %call25, ptr %__c, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull align 4 captures(none) dereferenceable(4) %ref.tmp) #11
  %call26 = call noundef i32 @_ZNSt11char_traitsIcE3eofEv() #11
  store i32 %call26, ptr %ref.tmp, align 4, !tbaa !5
  %call27 = call noundef zeroext i1 @_ZNSt11char_traitsIcE11eq_int_typeERKiS2_(ptr noundef nonnull align 4 dereferenceable(4) %__c, ptr noundef nonnull align 4 dereferenceable(4) %ref.tmp) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr %ref.tmp) #11
  %conv = zext i1 %call27 to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1)
  %tobool = icmp ne i64 %expval, 0
  br i1 %tobool, label %if.then28, label %if.end

if.then28:                                        ; preds = %if.then19
  %vtable29 = load ptr, ptr %__in, align 8, !tbaa !9
  %vbase.offset.ptr30 = getelementptr i8, ptr %vtable29, i64 -24
  %vbase.offset31 = load i64, ptr %vbase.offset.ptr30, align 8, !invariant.load !11
  %add.ptr32 = getelementptr inbounds i8, ptr %__in, i64 %vbase.offset31
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr32, i32 noundef 2)
  br label %if.end

if.end:                                           ; preds = %if.then28, %if.then19
  call void @llvm.lifetime.end.p0(i64 4, ptr %__c) #11
  br label %if.end33

if.end33:                                         ; preds = %if.end, %lor.lhs.false, %if.then6
  br label %if.end37

if.else34:                                        ; preds = %if.else
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) %__in, ptr noundef %__s, i64 noundef 9223372036854775807)
  br label %if.end37

if.end37:                                         ; preds = %if.else34, %if.end33
  br label %if.end38

if.end38:                                         ; preds = %if.end37, %do.end
  ret ptr %__in
}

; Function Attrs: mustprogress uwtable
declare noundef zeroext i1 @_ZNKSt9basic_iosIcSt11char_traitsIcEEcvbEv(ptr noundef nonnull align 8 dereferenceable(264)) local_unnamed_addr #4 align 2

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #4 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt8ios_base5widthEl(ptr noundef nonnull align 8 dereferenceable(216) %this, i64 noundef %__wide) local_unnamed_addr #7 comdat align 2 {
entry:
  %_M_width = getelementptr inbounds nuw %"class.std::ios_base", ptr %this, i32 0, i32 2
  %0 = load i64, ptr %_M_width, align 8, !tbaa !15
  store i64 %__wide, ptr %_M_width, align 8, !tbaa !15
  ret i64 %0
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #4 align 2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt8ios_base5widthEv(ptr noundef nonnull align 8 dereferenceable(216) %this) local_unnamed_addr #7 comdat align 2 {
entry:
  %_M_width = getelementptr inbounds nuw %"class.std::ios_base", ptr %this, i32 0, i32 2
  %0 = load i64, ptr %_M_width, align 8, !tbaa !15
  ret i64 %0
}

declare void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
declare noundef zeroext i1 @_ZNKSt9basic_iosIcSt11char_traitsIcEE4goodEv(ptr noundef nonnull align 8 dereferenceable(264)) local_unnamed_addr #7 align 2

; Function Attrs: mustprogress nounwind uwtable
declare noundef ptr @_ZNKSt9basic_iosIcSt11char_traitsIcEE5rdbufEv(ptr noundef nonnull align 8 dereferenceable(264)) local_unnamed_addr #7 align 2

; Function Attrs: mustprogress uwtable
declare noundef i32 @_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #4 align 2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt11char_traitsIcE11eq_int_typeERKiS2_(ptr noundef nonnull align 4 dereferenceable(4) %__c1, ptr noundef nonnull align 4 dereferenceable(4) %__c2) local_unnamed_addr #7 comdat align 2 {
entry:
  %0 = load i32, ptr %__c1, align 4, !tbaa !5
  %1 = load i32, ptr %__c2, align 4, !tbaa !5
  %cmp = icmp eq i32 %0, %1
  ret i1 %cmp
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNSt11char_traitsIcE3eofEv() local_unnamed_addr #7 comdat align 2 {
entry:
  ret i32 -1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #8

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { nofree nounwind }
attributes #10 = { nounwind willreturn memory(read) }
attributes #11 = { nounwind }

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
!9 = !{!10, !10, i64 0}
!10 = !{!"vtable pointer", !8, i64 0}
!11 = !{}
!12 = distinct !{!12, !13, !14}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!"llvm.loop.unroll.disable"}
!15 = !{!16, !17, i64 16}
!16 = !{!"_ZTSSt8ios_base", !17, i64 8, !17, i64 16, !18, i64 24, !19, i64 28, !19, i64 32, !20, i64 40, !22, i64 48, !7, i64 64, !6, i64 192, !23, i64 200, !24, i64 208}
!17 = !{!"long", !7, i64 0}
!18 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!19 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!20 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !21, i64 0}
!21 = !{!"any pointer", !7, i64 0}
!22 = !{!"_ZTSNSt8ios_base6_WordsE", !21, i64 0, !17, i64 8}
!23 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !21, i64 0}
!24 = !{!"_ZTSSt6locale", !25, i64 0}
!25 = !{!"p1 _ZTSNSt6locale5_ImplE", !21, i64 0}
