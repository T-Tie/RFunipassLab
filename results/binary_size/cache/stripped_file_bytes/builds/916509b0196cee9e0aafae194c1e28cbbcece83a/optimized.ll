; ModuleID = '/tmp/tmpv8c_l6np.cpp'
source_filename = "/tmp/tmpv8c_l6np.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::ctype" = type <{ %"class.std::locale::facet.base", [4 x i8], ptr, i8, [7 x i8], ptr, ptr, ptr, i8, [256 x i8], [256 x i8], i8, [6 x i8] }>
%"class.std::locale::facet.base" = type <{ ptr, i32 }>

$_ZSt13__check_facetISt5ctypeIcEERKT_PS3_ = comdat any

$_ZNKSt5ctypeIcE5widenEc = comdat any

@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %a = alloca [16 x i32], align 16
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  %j = alloca i32, align 4
  %n = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr %a) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #6
  store i32 0, ptr %k, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #6
  store i32 0, ptr %j, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #6
  store i32 0, ptr %n, align 4, !tbaa !5
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, 16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [16 x i32], ptr %a, i64 0, i64 %idxprom
  store i32 -1, ptr %arrayidx, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %2, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %k)
  br label %while.cond

while.cond:                                       ; preds = %if.end42, %for.end
  %3 = load i32, ptr %k, align 4, !tbaa !5
  %cmp1 = icmp ne i32 %3, -1
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i32, ptr %k, align 4, !tbaa !5
  %5 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom2 = sext i32 %5 to i64
  %arrayidx3 = getelementptr inbounds [16 x i32], ptr %a, i64 0, i64 %idxprom2
  store i32 %4, ptr %arrayidx3, align 4, !tbaa !5
  %6 = load i32, ptr %j, align 4, !tbaa !5
  %inc4 = add nsw i32 %6, 1
  store i32 %inc4, ptr %j, align 4, !tbaa !5
  %7 = load i32, ptr %k, align 4, !tbaa !5
  %cmp5 = icmp eq i32 %7, 0
  br i1 %cmp5, label %if.then, label %if.end42

if.then:                                          ; preds = %while.body
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc29, %if.then
  %8 = load i32, ptr %i, align 4, !tbaa !5
  %cmp7 = icmp slt i32 %8, 15
  br i1 %cmp7, label %for.body8, label %for.end31

for.body8:                                        ; preds = %for.cond6
  %9 = load i32, ptr %i, align 4, !tbaa !5
  %add = add nsw i32 %9, 1
  store i32 %add, ptr %j, align 4, !tbaa !5
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc26, %for.body8
  %10 = load i32, ptr %j, align 4, !tbaa !5
  %cmp10 = icmp slt i32 %10, 15
  br i1 %cmp10, label %for.body11, label %for.end28

for.body11:                                       ; preds = %for.cond9
  %11 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom12 = sext i32 %11 to i64
  %arrayidx13 = getelementptr inbounds [16 x i32], ptr %a, i64 0, i64 %idxprom12
  %12 = load i32, ptr %arrayidx13, align 4, !tbaa !5
  %13 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom14 = sext i32 %13 to i64
  %arrayidx15 = getelementptr inbounds [16 x i32], ptr %a, i64 0, i64 %idxprom14
  %14 = load i32, ptr %arrayidx15, align 4, !tbaa !5
  %mul = mul nsw i32 2, %14
  %sub = sub nsw i32 %12, %mul
  %cmp16 = icmp eq i32 %sub, 0
  br i1 %cmp16, label %if.then24, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body11
  %15 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom17 = sext i32 %15 to i64
  %arrayidx18 = getelementptr inbounds [16 x i32], ptr %a, i64 0, i64 %idxprom17
  %16 = load i32, ptr %arrayidx18, align 4, !tbaa !5
  %17 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom19 = sext i32 %17 to i64
  %arrayidx20 = getelementptr inbounds [16 x i32], ptr %a, i64 0, i64 %idxprom19
  %18 = load i32, ptr %arrayidx20, align 4, !tbaa !5
  %mul21 = mul nsw i32 2, %18
  %sub22 = sub nsw i32 %16, %mul21
  %cmp23 = icmp eq i32 %sub22, 0
  br i1 %cmp23, label %if.then24, label %if.end

if.then24:                                        ; preds = %lor.lhs.false, %for.body11
  %19 = load i32, ptr %n, align 4, !tbaa !5
  %inc25 = add nsw i32 %19, 1
  store i32 %inc25, ptr %n, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then24, %lor.lhs.false
  br label %for.inc26

for.inc26:                                        ; preds = %if.end
  %20 = load i32, ptr %j, align 4, !tbaa !5
  %inc27 = add nsw i32 %20, 1
  store i32 %inc27, ptr %j, align 4, !tbaa !5
  br label %for.cond9, !llvm.loop !12

for.end28:                                        ; preds = %for.cond9
  br label %for.inc29

for.inc29:                                        ; preds = %for.end28
  %21 = load i32, ptr %i, align 4, !tbaa !5
  %inc30 = add nsw i32 %21, 1
  store i32 %inc30, ptr %i, align 4, !tbaa !5
  br label %for.cond6, !llvm.loop !13

for.end31:                                        ; preds = %for.cond6
  %22 = load i32, ptr %n, align 4, !tbaa !5
  %call32 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %22)
  %call33 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call32, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond34

for.cond34:                                       ; preds = %for.inc39, %for.end31
  %23 = load i32, ptr %i, align 4, !tbaa !5
  %cmp35 = icmp slt i32 %23, 16
  br i1 %cmp35, label %for.body36, label %for.end41

for.body36:                                       ; preds = %for.cond34
  %24 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom37 = sext i32 %24 to i64
  %arrayidx38 = getelementptr inbounds [16 x i32], ptr %a, i64 0, i64 %idxprom37
  store i32 -1, ptr %arrayidx38, align 4, !tbaa !5
  br label %for.inc39

for.inc39:                                        ; preds = %for.body36
  %25 = load i32, ptr %i, align 4, !tbaa !5
  %inc40 = add nsw i32 %25, 1
  store i32 %inc40, ptr %i, align 4, !tbaa !5
  br label %for.cond34, !llvm.loop !14

for.end41:                                        ; preds = %for.cond34
  store i32 0, ptr %j, align 4, !tbaa !5
  store i32 0, ptr %n, align 4, !tbaa !5
  br label %if.end42

if.end42:                                         ; preds = %for.end41, %while.body
  %call43 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %k)
  br label %while.cond, !llvm.loop !15

while.end:                                        ; preds = %while.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr %a) #6
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) #2

; Function Attrs: mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef %__pf) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__pf.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !16
  store ptr %__pf, ptr %__pf.addr, align 8, !tbaa !19
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__pf.addr, align 8, !tbaa !19
  %call = call noundef nonnull align 8 dereferenceable(8) ptr %0(ptr noundef nonnull align 8 dereferenceable(8) %this1)
  ret ptr %call
}

; Function Attrs: inlinehint mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %__os) #4 {
entry:
  %__os.addr = alloca ptr, align 8
  store ptr %__os, ptr %__os.addr, align 8, !tbaa !16
  %0 = load ptr, ptr %__os.addr, align 8, !tbaa !16, !nonnull !20, !align !21
  %1 = load ptr, ptr %__os.addr, align 8, !tbaa !16, !nonnull !20, !align !21
  %vtable = load ptr, ptr %1, align 8, !tbaa !22
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %1, i64 %vbase.offset
  %call = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr, i8 noundef signext 10)
  %call1 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %call)
  %call2 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %call1)
  ret ptr %call2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: inlinehint mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %__os) #4 {
entry:
  %__os.addr = alloca ptr, align 8
  store ptr %__os, ptr %__os.addr, align 8, !tbaa !16
  %0 = load ptr, ptr %__os.addr, align 8, !tbaa !16, !nonnull !20, !align !21
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  ret ptr %call
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) #2

; Function Attrs: mustprogress uwtable
define available_externally noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %this, i8 noundef signext %__c) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__c.addr = alloca i8, align 1
  store ptr %this, ptr %this.addr, align 8, !tbaa !24
  store i8 %__c, ptr %__c.addr, align 1, !tbaa !26
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_ctype = getelementptr inbounds nuw %"class.std::basic_ios", ptr %this1, i32 0, i32 5
  %0 = load ptr, ptr %_M_ctype, align 8, !tbaa !27
  %call = call noundef nonnull align 8 dereferenceable(570) ptr @_ZSt13__check_facetISt5ctypeIcEERKT_PS3_(ptr noundef %0)
  %1 = load i8, ptr %__c.addr, align 1, !tbaa !26
  %call2 = call noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %call, i8 noundef signext %1)
  ret i8 %call2
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) #2

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(570) ptr @_ZSt13__check_facetISt5ctypeIcEERKT_PS3_(ptr noundef %__f) #4 comdat {
entry:
  %__f.addr = alloca ptr, align 8
  store ptr %__f, ptr %__f.addr, align 8, !tbaa !43
  %0 = load ptr, ptr %__f.addr, align 8, !tbaa !43
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @_ZSt16__throw_bad_castv() #7
  unreachable

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %__f.addr, align 8, !tbaa !43
  ret ptr %1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %this, i8 noundef signext %__c) #3 comdat align 2 {
entry:
  %retval = alloca i8, align 1
  %this.addr = alloca ptr, align 8
  %__c.addr = alloca i8, align 1
  store ptr %this, ptr %this.addr, align 8, !tbaa !43
  store i8 %__c, ptr %__c.addr, align 1, !tbaa !26
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_widen_ok = getelementptr inbounds nuw %"class.std::ctype", ptr %this1, i32 0, i32 8
  %0 = load i8, ptr %_M_widen_ok, align 8, !tbaa !44
  %tobool = icmp ne i8 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %_M_widen = getelementptr inbounds nuw %"class.std::ctype", ptr %this1, i32 0, i32 9
  %1 = load i8, ptr %__c.addr, align 1, !tbaa !26
  %idxprom = zext i8 %1 to i64
  %arrayidx = getelementptr inbounds nuw [256 x i8], ptr %_M_widen, i64 0, i64 %idxprom
  %2 = load i8, ptr %arrayidx, align 1, !tbaa !26
  store i8 %2, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %this1)
  %3 = load i8, ptr %__c.addr, align 1, !tbaa !26
  %vtable = load ptr, ptr %this1, align 8, !tbaa !22
  %vfn = getelementptr inbounds ptr, ptr %vtable, i64 6
  %4 = load ptr, ptr %vfn, align 8
  %call = call noundef signext i8 %4(ptr noundef nonnull align 8 dereferenceable(570) %this1, i8 noundef signext %3)
  store i8 %call, ptr %retval, align 1
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i8, ptr %retval, align 1
  ret i8 %5
}

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() #5

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) #2

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { noreturn }

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
!16 = !{!17, !17, i64 0}
!17 = !{!"p1 _ZTSSo", !18, i64 0}
!18 = !{!"any pointer", !7, i64 0}
!19 = !{!18, !18, i64 0}
!20 = !{}
!21 = !{i64 8}
!22 = !{!23, !23, i64 0}
!23 = !{!"vtable pointer", !8, i64 0}
!24 = !{!25, !25, i64 0}
!25 = !{!"p1 _ZTSSt9basic_iosIcSt11char_traitsIcEE", !18, i64 0}
!26 = !{!7, !7, i64 0}
!27 = !{!28, !40, i64 240}
!28 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !29, i64 0, !17, i64 216, !7, i64 224, !38, i64 225, !39, i64 232, !40, i64 240, !41, i64 248, !42, i64 256}
!29 = !{!"_ZTSSt8ios_base", !30, i64 8, !30, i64 16, !31, i64 24, !32, i64 28, !32, i64 32, !33, i64 40, !34, i64 48, !7, i64 64, !6, i64 192, !35, i64 200, !36, i64 208}
!30 = !{!"long", !7, i64 0}
!31 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!32 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!33 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !18, i64 0}
!34 = !{!"_ZTSNSt8ios_base6_WordsE", !18, i64 0, !30, i64 8}
!35 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !18, i64 0}
!36 = !{!"_ZTSSt6locale", !37, i64 0}
!37 = !{!"p1 _ZTSNSt6locale5_ImplE", !18, i64 0}
!38 = !{!"bool", !7, i64 0}
!39 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !18, i64 0}
!40 = !{!"p1 _ZTSSt5ctypeIcE", !18, i64 0}
!41 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !18, i64 0}
!42 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !18, i64 0}
!43 = !{!40, !40, i64 0}
!44 = !{!45, !7, i64 56}
!45 = !{!"_ZTSSt5ctypeIcE", !46, i64 0, !47, i64 16, !38, i64 24, !48, i64 32, !48, i64 40, !49, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!46 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!47 = !{!"p1 _ZTS15__locale_struct", !18, i64 0}
!48 = !{!"p1 int", !18, i64 0}
!49 = !{!"p1 short", !18, i64 0}
