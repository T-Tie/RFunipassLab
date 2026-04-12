; ModuleID = '<stdin>'
source_filename = "/tmp/tmpgkiltasz.cpp"
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
@switch.table.main = private unnamed_addr constant [10 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1], align 4
@switch.table.main.1 = private unnamed_addr constant [10 x i32] [i32 0, i32 0, i32 1, i32 1, i32 2, i32 0, i32 0, i32 1, i32 1, i32 2], align 4
@switch.table.main.2 = private unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 0, i32 1, i32 0, i32 0, i32 1, i32 0, i32 1, i32 0], align 4

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %cash = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cash) #4
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %cash)
  %0 = load i32, ptr %cash, align 4, !tbaa !5
  %rem = srem i32 %0, 10
  %div = sdiv i32 %0, 10
  %rem1 = srem i32 %div, 10
  %div2 = sdiv i32 %0, 100
  %rem3 = srem i32 %div2, 10
  %call4 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %rem3)
  %vtable.i = load ptr, ptr %call4, align 8, !tbaa !9
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call4, i64 %vbase.offset.i
  %call.i40 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i, i8 noundef signext 10)
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call4, i8 noundef signext %call.i40)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  %1 = icmp sgt i32 %rem1, -1
  br i1 %1, label %switch.lookup, label %sw.epilog

switch.lookup:                                    ; preds = %entry
  %2 = zext nneg i32 %rem1 to i64
  %switch.gep = getelementptr inbounds nuw [10 x i32], ptr @switch.table.main, i64 0, i64 %2
  %switch.load = load i32, ptr %switch.gep, align 4
  %3 = zext nneg i32 %rem1 to i64
  %switch.gep288 = getelementptr inbounds nuw [10 x i32], ptr @switch.table.main.1, i64 0, i64 %3
  %switch.load289 = load i32, ptr %switch.gep288, align 4
  %4 = zext nneg i32 %rem1 to i64
  %switch.gep290 = getelementptr inbounds nuw [10 x i32], ptr @switch.table.main.2, i64 0, i64 %4
  %switch.load291 = load i32, ptr %switch.gep290, align 4
  %call69 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %switch.load)
  %vtable.i229 = load ptr, ptr %call69, align 8, !tbaa !9
  %vbase.offset.ptr.i230 = getelementptr i8, ptr %vtable.i229, i64 -24
  %vbase.offset.i231 = load i64, ptr %vbase.offset.ptr.i230, align 8
  %add.ptr.i232 = getelementptr inbounds i8, ptr %call69, i64 %vbase.offset.i231
  %call.i233 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i232, i8 noundef signext 10)
  %call1.i234 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call69, i8 noundef signext %call.i233)
  %call.i.i235 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i234)
  %call71 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %call.i.i235, i32 noundef %switch.load289)
  %vtable.i236 = load ptr, ptr %call71, align 8, !tbaa !9
  %vbase.offset.ptr.i237 = getelementptr i8, ptr %vtable.i236, i64 -24
  %vbase.offset.i238 = load i64, ptr %vbase.offset.ptr.i237, align 8
  %add.ptr.i239 = getelementptr inbounds i8, ptr %call71, i64 %vbase.offset.i238
  %call.i240 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i239, i8 noundef signext 10)
  %call1.i241 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call71, i8 noundef signext %call.i240)
  %call.i.i242 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i241)
  %call73 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %call.i.i242, i32 noundef %switch.load291)
  %vtable.i243 = load ptr, ptr %call73, align 8, !tbaa !9
  %vbase.offset.ptr.i244 = getelementptr i8, ptr %vtable.i243, i64 -24
  %vbase.offset.i245 = load i64, ptr %vbase.offset.ptr.i244, align 8
  %add.ptr.i246 = getelementptr inbounds i8, ptr %call73, i64 %vbase.offset.i245
  %call.i247 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i246, i8 noundef signext 10)
  %call1.i248 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call73, i8 noundef signext %call.i247)
  %call.i.i249 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i248)
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %switch.lookup
  %cmp = icmp sgt i32 %rem, 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.epilog
  %call75 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef 1)
  %vtable.i250 = load ptr, ptr %call75, align 8, !tbaa !9
  %vbase.offset.ptr.i251 = getelementptr i8, ptr %vtable.i250, i64 -24
  %vbase.offset.i252 = load i64, ptr %vbase.offset.ptr.i251, align 8
  %add.ptr.i253 = getelementptr inbounds i8, ptr %call75, i64 %vbase.offset.i252
  %call.i254 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i253, i8 noundef signext 10)
  %call1.i255 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call75, i8 noundef signext %call.i254)
  %call.i.i256 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i255)
  %sub = add nsw i32 %rem, -5
  %call77 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %call.i.i256, i32 noundef %sub)
  br label %if.end

if.else:                                          ; preds = %sw.epilog
  %call79 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef 0)
  %vtable.i264 = load ptr, ptr %call79, align 8, !tbaa !9
  %vbase.offset.ptr.i265 = getelementptr i8, ptr %vtable.i264, i64 -24
  %vbase.offset.i266 = load i64, ptr %vbase.offset.ptr.i265, align 8
  %add.ptr.i267 = getelementptr inbounds i8, ptr %call79, i64 %vbase.offset.i266
  %call.i268 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i267, i8 noundef signext 10)
  %call1.i269 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call79, i8 noundef signext %call.i268)
  %call.i.i270 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i269)
  %call81 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %call.i.i270, i32 noundef %rem)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call81.sink287 = phi ptr [ %call81, %if.else ], [ %call77, %if.then ]
  %vtable.i271 = load ptr, ptr %call81.sink287, align 8, !tbaa !9
  %vbase.offset.ptr.i272 = getelementptr i8, ptr %vtable.i271, i64 -24
  %vbase.offset.i273 = load i64, ptr %vbase.offset.ptr.i272, align 8
  %add.ptr.i274 = getelementptr inbounds i8, ptr %call81.sink287, i64 %vbase.offset.i273
  %call.i275 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i274, i8 noundef signext 10)
  %call1.i276 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call81.sink287, i8 noundef signext %call.i275)
  %call.i.i277 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i276)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cash) #4
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
