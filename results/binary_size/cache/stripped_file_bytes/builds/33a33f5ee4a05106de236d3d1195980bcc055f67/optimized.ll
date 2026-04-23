; ModuleID = '<stdin>'
source_filename = "/tmp/tmpzf5w3c2h.cpp"
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
  %sum = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sum) #4
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %sum)
  %0 = load i32, ptr %sum, align 4, !tbaa !5
  %cmp = icmp sgt i32 %0, 99
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %div = udiv i32 %0, 100
  %call1 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %div)
  %vtable.i = load ptr, ptr %call1, align 8, !tbaa !9
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call1, i64 %vbase.offset.i
  %call.i18 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i, i8 noundef signext 10)
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call1, i8 noundef signext %call.i18)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  %1 = load i32, ptr %sum, align 4, !tbaa !5
  %.fr = freeze i32 %1
  %2 = srem i32 %.fr, 100
  store i32 %2, ptr %sum, align 4, !tbaa !5
  br label %if.end

if.else:                                          ; preds = %entry
  %call4 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef 0)
  %vtable.i19 = load ptr, ptr %call4, align 8, !tbaa !9
  %vbase.offset.ptr.i20 = getelementptr i8, ptr %vtable.i19, i64 -24
  %vbase.offset.i21 = load i64, ptr %vbase.offset.ptr.i20, align 8
  %add.ptr.i22 = getelementptr inbounds i8, ptr %call4, i64 %vbase.offset.i21
  %call.i = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i22, i8 noundef signext 10)
  %call1.i23 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call4, i8 noundef signext %call.i)
  %call.i.i24 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i23)
  %.pr = load i32, ptr %sum, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = phi i32 [ %.pr, %if.else ], [ %2, %if.then ]
  %cmp6 = icmp sgt i32 %3, 49
  br i1 %cmp6, label %if.then7, label %if.else14

if.then7:                                         ; preds = %if.end
  %div8 = udiv i32 %3, 50
  %call9 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %div8)
  %vtable.i25 = load ptr, ptr %call9, align 8, !tbaa !9
  %vbase.offset.ptr.i26 = getelementptr i8, ptr %vtable.i25, i64 -24
  %vbase.offset.i27 = load i64, ptr %vbase.offset.ptr.i26, align 8
  %add.ptr.i28 = getelementptr inbounds i8, ptr %call9, i64 %vbase.offset.i27
  %call.i29 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i28, i8 noundef signext 10)
  %call1.i30 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call9, i8 noundef signext %call.i29)
  %call.i.i31 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i30)
  %4 = load i32, ptr %sum, align 4, !tbaa !5
  %.fr5 = freeze i32 %4
  %5 = srem i32 %.fr5, 50
  store i32 %5, ptr %sum, align 4, !tbaa !5
  br label %if.end17

if.else14:                                        ; preds = %if.end
  %call15 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef 0)
  %vtable.i32 = load ptr, ptr %call15, align 8, !tbaa !9
  %vbase.offset.ptr.i33 = getelementptr i8, ptr %vtable.i32, i64 -24
  %vbase.offset.i34 = load i64, ptr %vbase.offset.ptr.i33, align 8
  %add.ptr.i35 = getelementptr inbounds i8, ptr %call15, i64 %vbase.offset.i34
  %call.i36 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i35, i8 noundef signext 10)
  %call1.i37 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call15, i8 noundef signext %call.i36)
  %call.i.i38 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i37)
  %.pr81 = load i32, ptr %sum, align 4, !tbaa !5
  br label %if.end17

if.end17:                                         ; preds = %if.else14, %if.then7
  %6 = phi i32 [ %.pr81, %if.else14 ], [ %5, %if.then7 ]
  %cmp18 = icmp sgt i32 %6, 19
  br i1 %cmp18, label %if.then19, label %if.else26

if.then19:                                        ; preds = %if.end17
  %div20 = udiv i32 %6, 20
  %call21 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %div20)
  %vtable.i39 = load ptr, ptr %call21, align 8, !tbaa !9
  %vbase.offset.ptr.i40 = getelementptr i8, ptr %vtable.i39, i64 -24
  %vbase.offset.i41 = load i64, ptr %vbase.offset.ptr.i40, align 8
  %add.ptr.i42 = getelementptr inbounds i8, ptr %call21, i64 %vbase.offset.i41
  %call.i43 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i42, i8 noundef signext 10)
  %call1.i44 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call21, i8 noundef signext %call.i43)
  %call.i.i45 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i44)
  %7 = load i32, ptr %sum, align 4, !tbaa !5
  %.fr6 = freeze i32 %7
  %8 = srem i32 %.fr6, 20
  store i32 %8, ptr %sum, align 4, !tbaa !5
  br label %if.end29

if.else26:                                        ; preds = %if.end17
  %call27 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef 0)
  %vtable.i46 = load ptr, ptr %call27, align 8, !tbaa !9
  %vbase.offset.ptr.i47 = getelementptr i8, ptr %vtable.i46, i64 -24
  %vbase.offset.i48 = load i64, ptr %vbase.offset.ptr.i47, align 8
  %add.ptr.i49 = getelementptr inbounds i8, ptr %call27, i64 %vbase.offset.i48
  %call.i50 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i49, i8 noundef signext 10)
  %call1.i51 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call27, i8 noundef signext %call.i50)
  %call.i.i52 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i51)
  %.pr82 = load i32, ptr %sum, align 4, !tbaa !5
  br label %if.end29

if.end29:                                         ; preds = %if.else26, %if.then19
  %9 = phi i32 [ %.pr82, %if.else26 ], [ %8, %if.then19 ]
  %cmp30 = icmp sgt i32 %9, 9
  br i1 %cmp30, label %if.then31, label %if.else38

if.then31:                                        ; preds = %if.end29
  %div32 = udiv i32 %9, 10
  %call33 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %div32)
  %vtable.i53 = load ptr, ptr %call33, align 8, !tbaa !9
  %vbase.offset.ptr.i54 = getelementptr i8, ptr %vtable.i53, i64 -24
  %vbase.offset.i55 = load i64, ptr %vbase.offset.ptr.i54, align 8
  %add.ptr.i56 = getelementptr inbounds i8, ptr %call33, i64 %vbase.offset.i55
  %call.i57 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i56, i8 noundef signext 10)
  %call1.i58 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call33, i8 noundef signext %call.i57)
  %call.i.i59 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i58)
  %10 = load i32, ptr %sum, align 4, !tbaa !5
  %.fr7 = freeze i32 %10
  %11 = srem i32 %.fr7, 10
  store i32 %11, ptr %sum, align 4, !tbaa !5
  br label %if.end41

if.else38:                                        ; preds = %if.end29
  %call39 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef 0)
  %vtable.i60 = load ptr, ptr %call39, align 8, !tbaa !9
  %vbase.offset.ptr.i61 = getelementptr i8, ptr %vtable.i60, i64 -24
  %vbase.offset.i62 = load i64, ptr %vbase.offset.ptr.i61, align 8
  %add.ptr.i63 = getelementptr inbounds i8, ptr %call39, i64 %vbase.offset.i62
  %call.i64 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i63, i8 noundef signext 10)
  %call1.i65 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call39, i8 noundef signext %call.i64)
  %call.i.i66 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i65)
  %.pr83 = load i32, ptr %sum, align 4, !tbaa !5
  br label %if.end41

if.end41:                                         ; preds = %if.else38, %if.then31
  %12 = phi i32 [ %.pr83, %if.else38 ], [ %11, %if.then31 ]
  %cmp42 = icmp sgt i32 %12, 4
  br i1 %cmp42, label %if.then43, label %if.else50

if.then43:                                        ; preds = %if.end41
  %div44 = udiv i32 %12, 5
  %call45 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %div44)
  %vtable.i67 = load ptr, ptr %call45, align 8, !tbaa !9
  %vbase.offset.ptr.i68 = getelementptr i8, ptr %vtable.i67, i64 -24
  %vbase.offset.i69 = load i64, ptr %vbase.offset.ptr.i68, align 8
  %add.ptr.i70 = getelementptr inbounds i8, ptr %call45, i64 %vbase.offset.i69
  %call.i71 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i70, i8 noundef signext 10)
  %call1.i72 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call45, i8 noundef signext %call.i71)
  %call.i.i73 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i72)
  %13 = load i32, ptr %sum, align 4, !tbaa !5
  %.fr8 = freeze i32 %13
  %14 = srem i32 %.fr8, 5
  store i32 %14, ptr %sum, align 4, !tbaa !5
  br label %if.end53

if.else50:                                        ; preds = %if.end41
  %call51 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef 0)
  %vtable.i74 = load ptr, ptr %call51, align 8, !tbaa !9
  %vbase.offset.ptr.i75 = getelementptr i8, ptr %vtable.i74, i64 -24
  %vbase.offset.i76 = load i64, ptr %vbase.offset.ptr.i75, align 8
  %add.ptr.i77 = getelementptr inbounds i8, ptr %call51, i64 %vbase.offset.i76
  %call.i78 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i77, i8 noundef signext 10)
  %call1.i79 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call51, i8 noundef signext %call.i78)
  %call.i.i80 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i79)
  %.pre = load i32, ptr %sum, align 4, !tbaa !5
  br label %if.end53

if.end53:                                         ; preds = %if.else50, %if.then43
  %15 = phi i32 [ %.pre, %if.else50 ], [ %14, %if.then43 ]
  %call54 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %15)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sum) #4
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
