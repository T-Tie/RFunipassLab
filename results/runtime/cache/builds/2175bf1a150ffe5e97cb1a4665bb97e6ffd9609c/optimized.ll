; ModuleID = '<stdin>'
source_filename = "/tmp/tmpgt4uj00k.cpp"
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
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #4
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %rem = srem i32 %0, 100
  %div = sdiv i32 %0, 100
  %rem1.lhs.trunc = trunc nsw i32 %rem to i8
  %rem150 = srem i8 %rem1.lhs.trunc, 50
  %div351 = sdiv i8 %rem1.lhs.trunc, 50
  %div3.sext = sext i8 %div351 to i32
  %rem452 = srem i8 %rem150, 20
  %div653 = sdiv i8 %rem150, 20
  %div6.sext = sext i8 %div653 to i32
  %rem754 = srem i8 %rem452, 10
  %rem7.sext = sext i8 %rem754 to i32
  %div955 = sdiv i8 %rem452, 10
  %div9.sext = sext i8 %div955 to i32
  store i32 %rem7.sext, ptr %n, align 4, !tbaa !5
  %rem1056 = srem i8 %rem754, 5
  %rem10.sext = sext i8 %rem1056 to i32
  %div1257 = sdiv i8 %rem754, 5
  %div12.sext = sext i8 %div1257 to i32
  %call13 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %div)
  %vtable.i = load ptr, ptr %call13, align 8, !tbaa !9
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call13, i64 %vbase.offset.i
  %call.i15 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i, i8 noundef signext 10)
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call13, i8 noundef signext %call.i15)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  %call15 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %div3.sext)
  %vtable.i16 = load ptr, ptr %call15, align 8, !tbaa !9
  %vbase.offset.ptr.i17 = getelementptr i8, ptr %vtable.i16, i64 -24
  %vbase.offset.i18 = load i64, ptr %vbase.offset.ptr.i17, align 8
  %add.ptr.i19 = getelementptr inbounds i8, ptr %call15, i64 %vbase.offset.i18
  %call.i = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i19, i8 noundef signext 10)
  %call1.i20 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call15, i8 noundef signext %call.i)
  %call.i.i21 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i20)
  %call17 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %div6.sext)
  %vtable.i22 = load ptr, ptr %call17, align 8, !tbaa !9
  %vbase.offset.ptr.i23 = getelementptr i8, ptr %vtable.i22, i64 -24
  %vbase.offset.i24 = load i64, ptr %vbase.offset.ptr.i23, align 8
  %add.ptr.i25 = getelementptr inbounds i8, ptr %call17, i64 %vbase.offset.i24
  %call.i26 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i25, i8 noundef signext 10)
  %call1.i27 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call17, i8 noundef signext %call.i26)
  %call.i.i28 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i27)
  %call19 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %div9.sext)
  %vtable.i29 = load ptr, ptr %call19, align 8, !tbaa !9
  %vbase.offset.ptr.i30 = getelementptr i8, ptr %vtable.i29, i64 -24
  %vbase.offset.i31 = load i64, ptr %vbase.offset.ptr.i30, align 8
  %add.ptr.i32 = getelementptr inbounds i8, ptr %call19, i64 %vbase.offset.i31
  %call.i33 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i32, i8 noundef signext 10)
  %call1.i34 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call19, i8 noundef signext %call.i33)
  %call.i.i35 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i34)
  %call21 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %div12.sext)
  %vtable.i36 = load ptr, ptr %call21, align 8, !tbaa !9
  %vbase.offset.ptr.i37 = getelementptr i8, ptr %vtable.i36, i64 -24
  %vbase.offset.i38 = load i64, ptr %vbase.offset.ptr.i37, align 8
  %add.ptr.i39 = getelementptr inbounds i8, ptr %call21, i64 %vbase.offset.i38
  %call.i40 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i39, i8 noundef signext 10)
  %call1.i41 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call21, i8 noundef signext %call.i40)
  %call.i.i42 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i41)
  %call23 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %rem10.sext)
  %vtable.i43 = load ptr, ptr %call23, align 8, !tbaa !9
  %vbase.offset.ptr.i44 = getelementptr i8, ptr %vtable.i43, i64 -24
  %vbase.offset.i45 = load i64, ptr %vbase.offset.ptr.i44, align 8
  %add.ptr.i46 = getelementptr inbounds i8, ptr %call23, i64 %vbase.offset.i45
  %call.i47 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i46, i8 noundef signext 10)
  %call1.i48 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call23, i8 noundef signext %call.i47)
  %call.i.i49 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i48)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #4
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
