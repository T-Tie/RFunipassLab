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

$_ZNKSt5ctypeIcE5widenEc = comdat any

@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %call.i.i251.loc = alloca ptr, align 8
  %cash = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %cash) #6
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %cash)
  %0 = load i32, ptr %cash, align 4, !tbaa !5
  %rem = srem i32 %0, 10
  %div = sdiv i32 %0, 10
  %rem1 = srem i32 %div, 10
  %div2 = sdiv i32 %0, 100
  %rem3 = srem i32 %div2, 10
  %call4 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %rem3)
  call void @outlined_ir_func_0(ptr noundef nonnull align 8 dereferenceable(8) %call4, ptr nofree noundef writeonly null, i32 noundef -1)
  switch i32 %rem1, label %sw.epilog [
    i32 9, label %sw.epilog.sink.split
    i32 8, label %sw.bb12
    i32 7, label %sw.bb19
    i32 6, label %sw.bb26
    i32 5, label %sw.bb33
    i32 4, label %sw.bb40
    i32 3, label %sw.bb47
    i32 2, label %sw.bb54
    i32 1, label %sw.bb61
    i32 0, label %sw.bb68
  ]

sw.bb12:                                          ; preds = %entry
  br label %sw.epilog.sink.split

sw.bb19:                                          ; preds = %entry
  br label %sw.epilog.sink.split

sw.bb26:                                          ; preds = %entry
  br label %sw.epilog.sink.split

sw.bb33:                                          ; preds = %entry
  br label %sw.epilog.sink.split

sw.bb40:                                          ; preds = %entry
  br label %sw.epilog.sink.split

sw.bb47:                                          ; preds = %entry
  br label %sw.epilog.sink.split

sw.bb54:                                          ; preds = %entry
  br label %sw.epilog.sink.split

sw.bb61:                                          ; preds = %entry
  br label %sw.epilog.sink.split

sw.bb68:                                          ; preds = %entry
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %entry, %sw.bb12, %sw.bb19, %sw.bb26, %sw.bb33, %sw.bb40, %sw.bb47, %sw.bb54, %sw.bb61, %sw.bb68
  %.sink285 = phi i32 [ 0, %sw.bb68 ], [ 0, %sw.bb61 ], [ 0, %sw.bb54 ], [ 0, %sw.bb47 ], [ 0, %sw.bb40 ], [ 1, %sw.bb33 ], [ 1, %sw.bb26 ], [ 1, %sw.bb19 ], [ 1, %sw.bb12 ], [ 1, %entry ]
  %.sink282 = phi i32 [ 0, %sw.bb68 ], [ 0, %sw.bb61 ], [ 1, %sw.bb54 ], [ 1, %sw.bb47 ], [ 2, %sw.bb40 ], [ 0, %sw.bb33 ], [ 0, %sw.bb26 ], [ 1, %sw.bb19 ], [ 1, %sw.bb12 ], [ 2, %entry ]
  %.sink = phi i32 [ 0, %sw.bb68 ], [ 1, %sw.bb61 ], [ 0, %sw.bb54 ], [ 1, %sw.bb47 ], [ 0, %sw.bb40 ], [ 0, %sw.bb33 ], [ 1, %sw.bb26 ], [ 0, %sw.bb19 ], [ 1, %sw.bb12 ], [ 0, %entry ]
  %call69 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %.sink285)
  %vtable.i224 = load ptr, ptr %call69, align 8, !tbaa !9
  %vbase.offset.ptr.i225 = getelementptr i8, ptr %vtable.i224, i64 -24
  %vbase.offset.i226 = load i64, ptr %vbase.offset.ptr.i225, align 8, !invariant.load !11
  %add.ptr.i227 = getelementptr inbounds i8, ptr %call69, i64 %vbase.offset.i226
  %call.i228 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i227, i8 noundef signext 10)
  %call1.i229 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call69, i8 noundef signext %call.i228)
  %call.i.i230 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i229)
  %call71 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %call.i.i230, i32 noundef %.sink282)
  %vtable.i231 = load ptr, ptr %call71, align 8, !tbaa !9
  %vbase.offset.ptr.i232 = getelementptr i8, ptr %vtable.i231, i64 -24
  %vbase.offset.i233 = load i64, ptr %vbase.offset.ptr.i232, align 8, !invariant.load !11
  %add.ptr.i234 = getelementptr inbounds i8, ptr %call71, i64 %vbase.offset.i233
  %call.i235 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i234, i8 noundef signext 10)
  %call1.i236 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call71, i8 noundef signext %call.i235)
  %call.i.i237 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i236)
  %call73 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %call.i.i237, i32 noundef %.sink)
  call void @outlined_ir_func_0(ptr noundef nonnull align 8 dereferenceable(8) %call73, ptr nofree noundef writeonly null, i32 noundef -1)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry
  %cmp = icmp sgt i32 %rem, 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.epilog
  %call75 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef 1)
  call void @llvm.lifetime.start.p0(i64 noundef -1, ptr noundef nonnull align 8 dereferenceable(8) %call.i.i251.loc)
  call void @outlined_ir_func_0(ptr noundef nonnull align 8 dereferenceable(8) %call75, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %call.i.i251.loc, i32 noundef 0)
  %call.i.i251.reload = load ptr, ptr %call.i.i251.loc, align 8
  call void @llvm.lifetime.end.p0(i64 noundef -1, ptr noundef %call.i.i251.loc)
  %sub = add nsw i32 %rem, -5
  %call77 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %call.i.i251.reload, i32 noundef %sub)
  br label %if.end

if.else:                                          ; preds = %sw.epilog
  %call79 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef 0)
  %vtable.i259 = load ptr, ptr %call79, align 8, !tbaa !9
  %vbase.offset.ptr.i260 = getelementptr i8, ptr %vtable.i259, i64 -24
  %vbase.offset.i261 = load i64, ptr %vbase.offset.ptr.i260, align 8, !invariant.load !11
  %add.ptr.i262 = getelementptr inbounds i8, ptr %call79, i64 %vbase.offset.i261
  %call.i263 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i262, i8 noundef signext 10)
  %call1.i264 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call79, i8 noundef signext %call.i263)
  %call.i.i265 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i264)
  %call81 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %call.i.i265, i32 noundef %rem)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call81.sink287 = phi ptr [ %call81, %if.else ], [ %call77, %if.then ]
  call void @outlined_ir_func_0(ptr noundef nonnull align 8 dereferenceable(8) %call81.sink287, ptr nofree noundef writeonly null, i32 noundef -1)
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %cash) #7
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) #2

; Function Attrs: mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) #3 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) #2

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %this, i8 noundef signext %__c) #3 comdat align 2 {
entry:
  %_M_widen_ok = getelementptr inbounds nuw i8, ptr %this, i64 56
  %0 = load i8, ptr %_M_widen_ok, align 8, !tbaa !12
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %_M_widen = getelementptr inbounds nuw i8, ptr %this, i64 57
  %idxprom = zext i8 %__c to i64
  %arrayidx = getelementptr inbounds nuw [256 x i8], ptr %_M_widen, i64 0, i64 %idxprom
  %1 = load i8, ptr %arrayidx, align 1, !tbaa !20
  br label %return

if.end:                                           ; preds = %entry
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %this)
  %vtable = load ptr, ptr %this, align 8, !tbaa !9
  %vfn = getelementptr inbounds nuw i8, ptr %vtable, i64 48
  %2 = load ptr, ptr %vfn, align 8, !invariant.load !11
  %call = tail call noundef signext i8 %2(ptr noundef nonnull align 8 dereferenceable(570) %this, i8 noundef signext %__c)
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i8 [ %1, %if.then ], [ %call, %if.end ]
  ret i8 %retval.0
}

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() #4

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) #2

; Function Attrs: minsize mustprogress norecurse optsize uwtable
define internal void @outlined_ir_func_0(ptr noundef nonnull align 8 dereferenceable(264) %0, ptr nofree noundef writeonly align 8 captures(none) %1, i32 noundef %2) #5 {
newFuncRoot:
  br label %entry_to_outline

entry_to_outline:                                 ; preds = %newFuncRoot
  %vtable.i = load ptr, ptr %0, align 8, !tbaa !9
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8, !invariant.load !11
  %add.ptr.i = getelementptr inbounds i8, ptr %0, i64 %vbase.offset.i
  %call.i35 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i, i8 noundef signext 10)
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %call.i35)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  br label %entry_after_outline.exitStub

entry_after_outline.exitStub:                     ; preds = %entry_to_outline
  switch i32 %2, label %final_block_0 [
    i32 0, label %output_block_2_0
  ]

output_block_2_0:                                 ; preds = %entry_after_outline.exitStub
  store ptr %call.i.i, ptr %1, align 8
  br label %final_block_0

final_block_0:                                    ; preds = %output_block_2_0, %entry_after_outline.exitStub
  ret void
}

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { minsize mustprogress norecurse optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind willreturn }
attributes #7 = { nounwind }

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
!12 = !{!13, !7, i64 56}
!13 = !{!"_ZTSSt5ctypeIcE", !14, i64 0, !15, i64 16, !17, i64 24, !18, i64 32, !18, i64 40, !19, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!14 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!15 = !{!"p1 _ZTS15__locale_struct", !16, i64 0}
!16 = !{!"any pointer", !7, i64 0}
!17 = !{!"bool", !7, i64 0}
!18 = !{!"p1 int", !16, i64 0}
!19 = !{!"p1 short", !16, i64 0}
!20 = !{!7, !7, i64 0}
