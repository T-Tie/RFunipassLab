; ModuleID = '<stdin>'
source_filename = "/tmp/tmpfj53a0yb.cpp"
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
@.str = private unnamed_addr constant [2 x i8] c"0\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %money = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %money) #4
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %money)
  %0 = load i32, ptr %money, align 4, !tbaa !5
  %cmp = icmp sgt i32 %0, 99
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %div = udiv i32 %0, 100
  %mul.neg = mul nsw i32 %div, -100
  %sub = add nsw i32 %mul.neg, %0
  store i32 %sub, ptr %money, align 4, !tbaa !5
  %call2 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %div)
  br label %if.end

if.else:                                          ; preds = %entry
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 1)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %_ZSt4cout.sink89 = phi ptr [ @_ZSt4cout, %if.else ], [ %call2, %if.then ]
  %vtable.i26 = load ptr, ptr %_ZSt4cout.sink89, align 8, !tbaa !9
  %vbase.offset.ptr.i27 = getelementptr i8, ptr %vtable.i26, i64 -24
  %vbase.offset.i28 = load i64, ptr %vbase.offset.ptr.i27, align 8
  %add.ptr.i29 = getelementptr inbounds i8, ptr %_ZSt4cout.sink89, i64 %vbase.offset.i28
  %call.i = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i29, i8 noundef signext 10)
  %call1.i30 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %_ZSt4cout.sink89, i8 noundef signext %call.i)
  %call.i.i31 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i30)
  %1 = load i32, ptr %money, align 4, !tbaa !5
  %cmp7 = icmp sgt i32 %1, 49
  br i1 %cmp7, label %if.then8, label %if.else14

if.then8:                                         ; preds = %if.end
  %div6 = udiv i32 %1, 50
  %mul10.neg = mul nsw i32 %div6, -50
  %sub11 = add nsw i32 %mul10.neg, %1
  store i32 %sub11, ptr %money, align 4, !tbaa !5
  %call12 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %div6)
  br label %if.end17

if.else14:                                        ; preds = %if.end
  %call1.i9 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 1)
  br label %if.end17

if.end17:                                         ; preds = %if.else14, %if.then8
  %_ZSt4cout.sink92 = phi ptr [ @_ZSt4cout, %if.else14 ], [ %call12, %if.then8 ]
  %vtable.i39 = load ptr, ptr %_ZSt4cout.sink92, align 8, !tbaa !9
  %vbase.offset.ptr.i40 = getelementptr i8, ptr %vtable.i39, i64 -24
  %vbase.offset.i41 = load i64, ptr %vbase.offset.ptr.i40, align 8
  %add.ptr.i42 = getelementptr inbounds i8, ptr %_ZSt4cout.sink92, i64 %vbase.offset.i41
  %call.i43 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i42, i8 noundef signext 10)
  %call1.i44 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %_ZSt4cout.sink92, i8 noundef signext %call.i43)
  %call.i.i45 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i44)
  %2 = load i32, ptr %money, align 4, !tbaa !5
  %cmp19 = icmp sgt i32 %2, 19
  br i1 %cmp19, label %if.then20, label %if.else26

if.then20:                                        ; preds = %if.end17
  %div18 = udiv i32 %2, 20
  %mul22.neg = mul nsw i32 %div18, -20
  %sub23 = add nsw i32 %mul22.neg, %2
  store i32 %sub23, ptr %money, align 4, !tbaa !5
  %call24 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %div18)
  br label %if.end29

if.else26:                                        ; preds = %if.end17
  %call1.i13 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 1)
  br label %if.end29

if.end29:                                         ; preds = %if.else26, %if.then20
  %_ZSt4cout.sink95 = phi ptr [ @_ZSt4cout, %if.else26 ], [ %call24, %if.then20 ]
  %vtable.i53 = load ptr, ptr %_ZSt4cout.sink95, align 8, !tbaa !9
  %vbase.offset.ptr.i54 = getelementptr i8, ptr %vtable.i53, i64 -24
  %vbase.offset.i55 = load i64, ptr %vbase.offset.ptr.i54, align 8
  %add.ptr.i56 = getelementptr inbounds i8, ptr %_ZSt4cout.sink95, i64 %vbase.offset.i55
  %call.i57 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i56, i8 noundef signext 10)
  %call1.i58 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %_ZSt4cout.sink95, i8 noundef signext %call.i57)
  %call.i.i59 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i58)
  %3 = load i32, ptr %money, align 4, !tbaa !5
  %cmp31 = icmp sgt i32 %3, 9
  br i1 %cmp31, label %if.then32, label %if.else38

if.then32:                                        ; preds = %if.end29
  %div30 = udiv i32 %3, 10
  %mul34.neg = mul nsw i32 %div30, -10
  %sub35 = add nsw i32 %mul34.neg, %3
  store i32 %sub35, ptr %money, align 4, !tbaa !5
  %call36 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %div30)
  br label %if.end41

if.else38:                                        ; preds = %if.end29
  %call1.i17 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 1)
  br label %if.end41

if.end41:                                         ; preds = %if.else38, %if.then32
  %_ZSt4cout.sink98 = phi ptr [ @_ZSt4cout, %if.else38 ], [ %call36, %if.then32 ]
  %vtable.i67 = load ptr, ptr %_ZSt4cout.sink98, align 8, !tbaa !9
  %vbase.offset.ptr.i68 = getelementptr i8, ptr %vtable.i67, i64 -24
  %vbase.offset.i69 = load i64, ptr %vbase.offset.ptr.i68, align 8
  %add.ptr.i70 = getelementptr inbounds i8, ptr %_ZSt4cout.sink98, i64 %vbase.offset.i69
  %call.i71 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i70, i8 noundef signext 10)
  %call1.i72 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %_ZSt4cout.sink98, i8 noundef signext %call.i71)
  %call.i.i73 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i72)
  %4 = load i32, ptr %money, align 4, !tbaa !5
  %cmp43 = icmp sgt i32 %4, 4
  br i1 %cmp43, label %if.then44, label %if.else50

if.then44:                                        ; preds = %if.end41
  %div42 = udiv i32 %4, 5
  %mul46.neg = mul nsw i32 %div42, -5
  %sub47 = add nsw i32 %mul46.neg, %4
  store i32 %sub47, ptr %money, align 4, !tbaa !5
  %call48 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %div42)
  br label %if.end53

if.else50:                                        ; preds = %if.end41
  %call1.i21 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 1)
  br label %if.end53

if.end53:                                         ; preds = %if.else50, %if.then44
  %_ZSt4cout.sink101 = phi ptr [ @_ZSt4cout, %if.else50 ], [ %call48, %if.then44 ]
  %vtable.i81 = load ptr, ptr %_ZSt4cout.sink101, align 8, !tbaa !9
  %vbase.offset.ptr.i82 = getelementptr i8, ptr %vtable.i81, i64 -24
  %vbase.offset.i83 = load i64, ptr %vbase.offset.ptr.i82, align 8
  %add.ptr.i84 = getelementptr inbounds i8, ptr %_ZSt4cout.sink101, i64 %vbase.offset.i83
  %call.i85 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i84, i8 noundef signext 10)
  %call1.i86 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %_ZSt4cout.sink101, i8 noundef signext %call.i85)
  %call.i.i87 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i86)
  %5 = load i32, ptr %money, align 4, !tbaa !5
  %call54 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %5)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %money) #4
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

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

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
