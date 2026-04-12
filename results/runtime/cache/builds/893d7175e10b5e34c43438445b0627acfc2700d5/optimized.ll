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
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %cash = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %cash) #5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %cash)
  %0 = load i32, ptr %cash, align 4, !tbaa !5
  %rem = srem i32 %0, 10
  %div = sdiv i32 %0, 10
  %rem1 = srem i32 %div, 10
  %div2 = sdiv i32 %0, 100
  %rem3 = srem i32 %div2, 10
  %call4 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %rem3)
  %vtable.i = load ptr, ptr %call4, align 8, !tbaa !9, !invariant.load !11
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8, !invariant.load !11
  %add.ptr.i = getelementptr inbounds i8, ptr %call4, i64 %vbase.offset.i
  %call.i35 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i, i8 noundef signext 10)
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call4, i8 noundef signext %call.i35)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
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
  %.sink280 = phi i32 [ 0, %sw.bb68 ], [ 0, %sw.bb61 ], [ 0, %sw.bb54 ], [ 0, %sw.bb47 ], [ 0, %sw.bb40 ], [ 1, %sw.bb33 ], [ 1, %sw.bb26 ], [ 1, %sw.bb19 ], [ 1, %sw.bb12 ], [ 1, %entry ]
  %.sink277 = phi i32 [ 0, %sw.bb68 ], [ 0, %sw.bb61 ], [ 1, %sw.bb54 ], [ 1, %sw.bb47 ], [ 2, %sw.bb40 ], [ 0, %sw.bb33 ], [ 0, %sw.bb26 ], [ 1, %sw.bb19 ], [ 1, %sw.bb12 ], [ 2, %entry ]
  %.sink = phi i32 [ 0, %sw.bb68 ], [ 1, %sw.bb61 ], [ 0, %sw.bb54 ], [ 1, %sw.bb47 ], [ 0, %sw.bb40 ], [ 0, %sw.bb33 ], [ 1, %sw.bb26 ], [ 0, %sw.bb19 ], [ 1, %sw.bb12 ], [ 0, %entry ]
  %call69 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %.sink280)
  %vtable.i224 = load ptr, ptr %call69, align 8, !tbaa !9, !invariant.load !11
  %vbase.offset.ptr.i225 = getelementptr i8, ptr %vtable.i224, i64 -24
  %vbase.offset.i226 = load i64, ptr %vbase.offset.ptr.i225, align 8, !invariant.load !11
  %add.ptr.i227 = getelementptr inbounds i8, ptr %call69, i64 %vbase.offset.i226
  %call.i228 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i227, i8 noundef signext 10)
  %call1.i229 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call69, i8 noundef signext %call.i228)
  %call.i.i230 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i229)
  %call71 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %call.i.i230, i32 noundef %.sink277)
  %vtable.i231 = load ptr, ptr %call71, align 8, !tbaa !9, !invariant.load !11
  %vbase.offset.ptr.i232 = getelementptr i8, ptr %vtable.i231, i64 -24
  %vbase.offset.i233 = load i64, ptr %vbase.offset.ptr.i232, align 8, !invariant.load !11
  %add.ptr.i234 = getelementptr inbounds i8, ptr %call71, i64 %vbase.offset.i233
  %call.i235 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i234, i8 noundef signext 10)
  %call1.i236 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call71, i8 noundef signext %call.i235)
  %call.i.i237 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i236)
  %call73 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %call.i.i237, i32 noundef %.sink)
  %vtable.i238 = load ptr, ptr %call73, align 8, !tbaa !9, !invariant.load !11
  %vbase.offset.ptr.i239 = getelementptr i8, ptr %vtable.i238, i64 -24
  %vbase.offset.i240 = load i64, ptr %vbase.offset.ptr.i239, align 8, !invariant.load !11
  %add.ptr.i241 = getelementptr inbounds i8, ptr %call73, i64 %vbase.offset.i240
  %call.i242 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i241, i8 noundef signext 10)
  %call1.i243 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call73, i8 noundef signext %call.i242)
  %call.i.i244 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i243)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry
  %cmp = icmp sgt i32 %rem, 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.epilog
  %call75 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef 1)
  %vtable.i245 = load ptr, ptr %call75, align 8, !tbaa !9, !invariant.load !11
  %vbase.offset.ptr.i246 = getelementptr i8, ptr %vtable.i245, i64 -24
  %vbase.offset.i247 = load i64, ptr %vbase.offset.ptr.i246, align 8, !invariant.load !11
  %add.ptr.i248 = getelementptr inbounds i8, ptr %call75, i64 %vbase.offset.i247
  %call.i249 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i248, i8 noundef signext 10)
  %call1.i250 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call75, i8 noundef signext %call.i249)
  %call.i.i251 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i250)
  %sub = add nsw i32 %rem, -5
  %call77 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %call.i.i251, i32 noundef %sub)
  br label %if.end

if.else:                                          ; preds = %sw.epilog
  %call79 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef 0)
  %vtable.i259 = load ptr, ptr %call79, align 8, !tbaa !9, !invariant.load !11
  %vbase.offset.ptr.i260 = getelementptr i8, ptr %vtable.i259, i64 -24
  %vbase.offset.i261 = load i64, ptr %vbase.offset.ptr.i260, align 8, !invariant.load !11
  %add.ptr.i262 = getelementptr inbounds i8, ptr %call79, i64 %vbase.offset.i261
  %call.i263 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i262, i8 noundef signext 10)
  %call1.i264 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call79, i8 noundef signext %call.i263)
  %call.i.i265 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i264)
  %call81 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %call.i.i265, i32 noundef %rem)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call81.sink282 = phi ptr [ %call81, %if.else ], [ %call77, %if.then ]
  %vtable.i266 = load ptr, ptr %call81.sink282, align 8, !tbaa !9, !invariant.load !11
  %vbase.offset.ptr.i267 = getelementptr i8, ptr %vtable.i266, i64 -24
  %vbase.offset.i268 = load i64, ptr %vbase.offset.ptr.i267, align 8, !invariant.load !11
  %add.ptr.i269 = getelementptr inbounds i8, ptr %call81.sink282, i64 %vbase.offset.i268
  %call.i270 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i269, i8 noundef signext 10)
  %call1.i271 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call81.sink282, i8 noundef signext %call.i270)
  %call.i.i272 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i271)
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %cash) #6
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) local_unnamed_addr #3 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %this, i8 noundef signext %__c) local_unnamed_addr #3 comdat align 2 {
entry:
  %_M_widen_ok = getelementptr inbounds nuw i8, ptr %this, i64 56
  %0 = load i8, ptr %_M_widen_ok, align 8, !tbaa !12, !invariant.load !11
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %_M_widen = getelementptr inbounds nuw i8, ptr %this, i64 57
  %idxprom = zext i8 %__c to i64
  %arrayidx = getelementptr inbounds nuw [256 x i8], ptr %_M_widen, i64 0, i64 %idxprom
  %1 = load i8, ptr %arrayidx, align 1, !tbaa !20, !invariant.load !11
  br label %return

if.end:                                           ; preds = %entry
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %this)
  %vtable = load ptr, ptr %this, align 8, !tbaa !9, !invariant.load !11
  %vfn = getelementptr inbounds nuw i8, ptr %vtable, i64 48
  %2 = load ptr, ptr %vfn, align 8, !invariant.load !11
  %call = tail call noundef signext i8 %2(ptr noundef nonnull align 8 dereferenceable(570) %this, i8 noundef signext %__c)
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i8 [ %1, %if.then ], [ %call, %if.end ]
  ret i8 %retval.0
}

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #4

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #2

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind willreturn }
attributes #6 = { nounwind }

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
