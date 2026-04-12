; ModuleID = '<stdin>'
source_filename = "/tmp/tmpo7ltpgb9.cpp"
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

@sum = dso_local global i32 0, align 4
@res = dso_local global i32 1, align 4
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %n = alloca i32, align 4
  %a = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #7
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %a) #7
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  br label %for.cond

for.cond:                                         ; preds = %for.inc10, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc11, %for.inc10 ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %i.0, %0
  br i1 %cmp, label %for.body, label %for.end12

for.body:                                         ; preds = %for.cond
  store i32 1, ptr @res, align 4, !tbaa !5
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %a)
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 2, %for.body ], [ %inc, %for.inc ]
  %1 = load i32, ptr %a, align 4, !tbaa !5
  %conv = sitofp i32 %1 to float
  %call.i = call noundef float @sqrtf(float noundef %conv) #8, !tbaa !5
  %conv4 = fptosi float %call.i to i32
  %cmp5.not = icmp sgt i32 %j.0, %conv4
  br i1 %cmp5.not, label %for.inc10, label %for.body6

for.body6:                                        ; preds = %for.cond2
  %2 = load i32, ptr %a, align 4, !tbaa !5
  %rem = srem i32 %2, %j.0
  %cmp7 = icmp eq i32 %rem, 0
  br i1 %cmp7, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body6
  store i32 0, ptr @sum, align 4, !tbaa !5
  %div = sdiv i32 %2, %j.0
  call void @_Z1fii(i32 noundef %div, i32 noundef %j.0) #8
  %3 = load i32, ptr @sum, align 4, !tbaa !5
  %4 = load i32, ptr @res, align 4, !tbaa !5
  %add = add nsw i32 %4, %3
  store i32 %add, ptr @res, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body6, %if.then
  %inc = add nuw nsw i32 %j.0, 1
  br label %for.cond2, !llvm.loop !9

for.inc10:                                        ; preds = %for.cond2
  %5 = load i32, ptr @res, align 4, !tbaa !5
  %call8 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %5)
  %vtable.i = load ptr, ptr %call8, align 8, !tbaa !12
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8, !invariant.load !14
  %add.ptr.i = getelementptr inbounds i8, ptr %call8, i64 %vbase.offset.i
  %call.i2 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i, i8 noundef signext 10)
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call8, i8 noundef signext %call.i2)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  %inc11 = add nuw nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !15

for.end12:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %a) #8
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #8
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) #2

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @_Z1fii(i32 noundef %x, i32 noundef %y) #3 {
entry:
  %cmp = icmp eq i32 %x, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load i32, ptr @sum, align 4, !tbaa !5
  %inc = add nsw i32 %0, 1
  store i32 %inc, ptr @sum, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end4, %if.end
  %y.addr.0 = phi i32 [ %y, %if.end ], [ %inc5, %if.end4 ]
  %cmp1.not = icmp sgt i32 %y.addr.0, %x
  br i1 %cmp1.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %rem = srem i32 %x, %y.addr.0
  %cmp2 = icmp eq i32 %rem, 0
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %while.body
  %div = sdiv i32 %x, %y.addr.0
  tail call void @_Z1fii(i32 noundef %div, i32 noundef %y.addr.0) #8
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %while.body
  %inc5 = add nsw i32 %y.addr.0, 1
  br label %while.cond, !llvm.loop !16

while.end:                                        ; preds = %while.cond
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nounwind
declare float @sqrtf(float noundef) #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) #2

; Function Attrs: mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) #5 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) #2

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %this, i8 noundef signext %__c) #5 comdat align 2 {
entry:
  %_M_widen_ok = getelementptr inbounds nuw i8, ptr %this, i64 56
  %0 = load i8, ptr %_M_widen_ok, align 8, !tbaa !17
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %_M_widen = getelementptr inbounds nuw i8, ptr %this, i64 57
  %idxprom = zext i8 %__c to i64
  %arrayidx = getelementptr inbounds nuw [256 x i8], ptr %_M_widen, i64 0, i64 %idxprom
  %1 = load i8, ptr %arrayidx, align 1, !tbaa !25
  br label %return

if.end:                                           ; preds = %entry
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %this)
  %vtable = load ptr, ptr %this, align 8, !tbaa !12
  %vfn = getelementptr inbounds nuw i8, ptr %vtable, i64 48
  %2 = load ptr, ptr %vfn, align 8, !invariant.load !14
  %call = tail call noundef signext i8 %2(ptr noundef nonnull align 8 dereferenceable(570) %this, i8 noundef signext %__c)
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i8 [ %1, %if.then ], [ %call, %if.end ]
  ret i8 %retval.0
}

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() #6

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) #2

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind willreturn }
attributes #8 = { nounwind }

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
!12 = !{!13, !13, i64 0}
!13 = !{!"vtable pointer", !8, i64 0}
!14 = !{}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
!17 = !{!18, !7, i64 56}
!18 = !{!"_ZTSSt5ctypeIcE", !19, i64 0, !20, i64 16, !22, i64 24, !23, i64 32, !23, i64 40, !24, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!19 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!20 = !{!"p1 _ZTS15__locale_struct", !21, i64 0}
!21 = !{!"any pointer", !7, i64 0}
!22 = !{!"bool", !7, i64 0}
!23 = !{!"p1 int", !21, i64 0}
!24 = !{!"p1 short", !21, i64 0}
!25 = !{!7, !7, i64 0}
