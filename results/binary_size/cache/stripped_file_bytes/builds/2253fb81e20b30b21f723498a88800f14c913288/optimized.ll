; ModuleID = '/tmp/tmpjfp3ec9r.cpp'
source_filename = "/tmp/tmpjfp3ec9r.cpp"
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

@n = dso_local global i32 0, align 4
@a = dso_local global [27 x i32] zeroinitializer, align 16
@f = dso_local global [27 x i32] zeroinitializer, align 16
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %i2 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %j = alloca i32, align 4
  %max = alloca i32, align 4
  %i36 = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) @n)
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr @n, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6
  br label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [27 x i32], ptr @a, i64 0, i64 %idxprom
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %3, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond.cleanup
  call void @llvm.lifetime.start.p0(i64 4, ptr %i2) #6
  store i32 0, ptr %i2, align 4, !tbaa !5
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc33, %for.end
  %4 = load i32, ptr %i2, align 4, !tbaa !5
  %5 = load i32, ptr @n, align 4, !tbaa !5
  %cmp4 = icmp slt i32 %4, %5
  br i1 %cmp4, label %for.body6, label %for.cond.cleanup5

for.cond.cleanup5:                                ; preds = %for.cond3
  store i32 5, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i2) #6
  br label %for.end35

for.body6:                                        ; preds = %for.cond3
  %6 = load i32, ptr %i2, align 4, !tbaa !5
  %idxprom7 = sext i32 %6 to i64
  %arrayidx8 = getelementptr inbounds [27 x i32], ptr @f, i64 0, i64 %idxprom7
  store i32 0, ptr %arrayidx8, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #6
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc27, %for.body6
  %7 = load i32, ptr %j, align 4, !tbaa !5
  %8 = load i32, ptr %i2, align 4, !tbaa !5
  %cmp10 = icmp slt i32 %7, %8
  br i1 %cmp10, label %for.body12, label %for.cond.cleanup11

for.cond.cleanup11:                               ; preds = %for.cond9
  store i32 8, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #6
  br label %for.end29

for.body12:                                       ; preds = %for.cond9
  %9 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom13 = sext i32 %9 to i64
  %arrayidx14 = getelementptr inbounds [27 x i32], ptr @a, i64 0, i64 %idxprom13
  %10 = load i32, ptr %arrayidx14, align 4, !tbaa !5
  %11 = load i32, ptr %i2, align 4, !tbaa !5
  %idxprom15 = sext i32 %11 to i64
  %arrayidx16 = getelementptr inbounds [27 x i32], ptr @a, i64 0, i64 %idxprom15
  %12 = load i32, ptr %arrayidx16, align 4, !tbaa !5
  %cmp17 = icmp sge i32 %10, %12
  br i1 %cmp17, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body12
  %13 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom18 = sext i32 %13 to i64
  %arrayidx19 = getelementptr inbounds [27 x i32], ptr @f, i64 0, i64 %idxprom18
  %14 = load i32, ptr %arrayidx19, align 4, !tbaa !5
  %15 = load i32, ptr %i2, align 4, !tbaa !5
  %idxprom20 = sext i32 %15 to i64
  %arrayidx21 = getelementptr inbounds [27 x i32], ptr @f, i64 0, i64 %idxprom20
  %16 = load i32, ptr %arrayidx21, align 4, !tbaa !5
  %cmp22 = icmp sgt i32 %14, %16
  br i1 %cmp22, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %17 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom23 = sext i32 %17 to i64
  %arrayidx24 = getelementptr inbounds [27 x i32], ptr @f, i64 0, i64 %idxprom23
  %18 = load i32, ptr %arrayidx24, align 4, !tbaa !5
  %19 = load i32, ptr %i2, align 4, !tbaa !5
  %idxprom25 = sext i32 %19 to i64
  %arrayidx26 = getelementptr inbounds [27 x i32], ptr @f, i64 0, i64 %idxprom25
  store i32 %18, ptr %arrayidx26, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body12
  br label %for.inc27

for.inc27:                                        ; preds = %if.end
  %20 = load i32, ptr %j, align 4, !tbaa !5
  %inc28 = add nsw i32 %20, 1
  store i32 %inc28, ptr %j, align 4, !tbaa !5
  br label %for.cond9, !llvm.loop !12

for.end29:                                        ; preds = %for.cond.cleanup11
  %21 = load i32, ptr %i2, align 4, !tbaa !5
  %idxprom30 = sext i32 %21 to i64
  %arrayidx31 = getelementptr inbounds [27 x i32], ptr @f, i64 0, i64 %idxprom30
  %22 = load i32, ptr %arrayidx31, align 4, !tbaa !5
  %inc32 = add nsw i32 %22, 1
  store i32 %inc32, ptr %arrayidx31, align 4, !tbaa !5
  br label %for.inc33

for.inc33:                                        ; preds = %for.end29
  %23 = load i32, ptr %i2, align 4, !tbaa !5
  %inc34 = add nsw i32 %23, 1
  store i32 %inc34, ptr %i2, align 4, !tbaa !5
  br label %for.cond3, !llvm.loop !13

for.end35:                                        ; preds = %for.cond.cleanup5
  call void @llvm.lifetime.start.p0(i64 4, ptr %max) #6
  store i32 0, ptr %max, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i36) #6
  store i32 0, ptr %i36, align 4, !tbaa !5
  br label %for.cond37

for.cond37:                                       ; preds = %for.inc48, %for.end35
  %24 = load i32, ptr %i36, align 4, !tbaa !5
  %25 = load i32, ptr @n, align 4, !tbaa !5
  %cmp38 = icmp slt i32 %24, %25
  br i1 %cmp38, label %for.body40, label %for.cond.cleanup39

for.cond.cleanup39:                               ; preds = %for.cond37
  store i32 11, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i36) #6
  br label %for.end50

for.body40:                                       ; preds = %for.cond37
  %26 = load i32, ptr %i36, align 4, !tbaa !5
  %idxprom41 = sext i32 %26 to i64
  %arrayidx42 = getelementptr inbounds [27 x i32], ptr @f, i64 0, i64 %idxprom41
  %27 = load i32, ptr %arrayidx42, align 4, !tbaa !5
  %28 = load i32, ptr %max, align 4, !tbaa !5
  %cmp43 = icmp sgt i32 %27, %28
  br i1 %cmp43, label %if.then44, label %if.end47

if.then44:                                        ; preds = %for.body40
  %29 = load i32, ptr %i36, align 4, !tbaa !5
  %idxprom45 = sext i32 %29 to i64
  %arrayidx46 = getelementptr inbounds [27 x i32], ptr @f, i64 0, i64 %idxprom45
  %30 = load i32, ptr %arrayidx46, align 4, !tbaa !5
  store i32 %30, ptr %max, align 4, !tbaa !5
  br label %if.end47

if.end47:                                         ; preds = %if.then44, %for.body40
  br label %for.inc48

for.inc48:                                        ; preds = %if.end47
  %31 = load i32, ptr %i36, align 4, !tbaa !5
  %inc49 = add nsw i32 %31, 1
  store i32 %inc49, ptr %i36, align 4, !tbaa !5
  br label %for.cond37, !llvm.loop !14

for.end50:                                        ; preds = %for.cond.cleanup39
  %32 = load i32, ptr %max, align 4, !tbaa !5
  %call51 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %32)
  %call52 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call51, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %max) #6
  %33 = load i32, ptr %retval, align 4
  ret i32 %33
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) #1

; Function Attrs: mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef %__pf) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__pf.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !15
  store ptr %__pf, ptr %__pf.addr, align 8, !tbaa !18
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__pf.addr, align 8, !tbaa !18
  %call = call noundef nonnull align 8 dereferenceable(8) ptr %0(ptr noundef nonnull align 8 dereferenceable(8) %this1)
  ret ptr %call
}

; Function Attrs: inlinehint mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %__os) #4 {
entry:
  %__os.addr = alloca ptr, align 8
  store ptr %__os, ptr %__os.addr, align 8, !tbaa !15
  %0 = load ptr, ptr %__os.addr, align 8, !tbaa !15, !nonnull !19, !align !20
  %1 = load ptr, ptr %__os.addr, align 8, !tbaa !15, !nonnull !19, !align !20
  %vtable = load ptr, ptr %1, align 8, !tbaa !21
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %1, i64 %vbase.offset
  %call = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr, i8 noundef signext 10)
  %call1 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %call)
  %call2 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %call1)
  ret ptr %call2
}

; Function Attrs: inlinehint mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %__os) #4 {
entry:
  %__os.addr = alloca ptr, align 8
  store ptr %__os, ptr %__os.addr, align 8, !tbaa !15
  %0 = load ptr, ptr %__os.addr, align 8, !tbaa !15, !nonnull !19, !align !20
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  ret ptr %call
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) #1

; Function Attrs: mustprogress uwtable
define available_externally noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %this, i8 noundef signext %__c) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__c.addr = alloca i8, align 1
  store ptr %this, ptr %this.addr, align 8, !tbaa !23
  store i8 %__c, ptr %__c.addr, align 1, !tbaa !25
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_ctype = getelementptr inbounds nuw %"class.std::basic_ios", ptr %this1, i32 0, i32 5
  %0 = load ptr, ptr %_M_ctype, align 8, !tbaa !26
  %call = call noundef nonnull align 8 dereferenceable(570) ptr @_ZSt13__check_facetISt5ctypeIcEERKT_PS3_(ptr noundef %0)
  %1 = load i8, ptr %__c.addr, align 1, !tbaa !25
  %call2 = call noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %call, i8 noundef signext %1)
  ret i8 %call2
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) #1

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(570) ptr @_ZSt13__check_facetISt5ctypeIcEERKT_PS3_(ptr noundef %__f) #4 comdat {
entry:
  %__f.addr = alloca ptr, align 8
  store ptr %__f, ptr %__f.addr, align 8, !tbaa !42
  %0 = load ptr, ptr %__f.addr, align 8, !tbaa !42
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @_ZSt16__throw_bad_castv() #7
  unreachable

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %__f.addr, align 8, !tbaa !42
  ret ptr %1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %this, i8 noundef signext %__c) #3 comdat align 2 {
entry:
  %retval = alloca i8, align 1
  %this.addr = alloca ptr, align 8
  %__c.addr = alloca i8, align 1
  store ptr %this, ptr %this.addr, align 8, !tbaa !42
  store i8 %__c, ptr %__c.addr, align 1, !tbaa !25
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_widen_ok = getelementptr inbounds nuw %"class.std::ctype", ptr %this1, i32 0, i32 8
  %0 = load i8, ptr %_M_widen_ok, align 8, !tbaa !43
  %tobool = icmp ne i8 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %_M_widen = getelementptr inbounds nuw %"class.std::ctype", ptr %this1, i32 0, i32 9
  %1 = load i8, ptr %__c.addr, align 1, !tbaa !25
  %idxprom = zext i8 %1 to i64
  %arrayidx = getelementptr inbounds nuw [256 x i8], ptr %_M_widen, i64 0, i64 %idxprom
  %2 = load i8, ptr %arrayidx, align 1, !tbaa !25
  store i8 %2, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %this1)
  %3 = load i8, ptr %__c.addr, align 1, !tbaa !25
  %vtable = load ptr, ptr %this1, align 8, !tbaa !21
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

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
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
!15 = !{!16, !16, i64 0}
!16 = !{!"p1 _ZTSSo", !17, i64 0}
!17 = !{!"any pointer", !7, i64 0}
!18 = !{!17, !17, i64 0}
!19 = !{}
!20 = !{i64 8}
!21 = !{!22, !22, i64 0}
!22 = !{!"vtable pointer", !8, i64 0}
!23 = !{!24, !24, i64 0}
!24 = !{!"p1 _ZTSSt9basic_iosIcSt11char_traitsIcEE", !17, i64 0}
!25 = !{!7, !7, i64 0}
!26 = !{!27, !39, i64 240}
!27 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !28, i64 0, !16, i64 216, !7, i64 224, !37, i64 225, !38, i64 232, !39, i64 240, !40, i64 248, !41, i64 256}
!28 = !{!"_ZTSSt8ios_base", !29, i64 8, !29, i64 16, !30, i64 24, !31, i64 28, !31, i64 32, !32, i64 40, !33, i64 48, !7, i64 64, !6, i64 192, !34, i64 200, !35, i64 208}
!29 = !{!"long", !7, i64 0}
!30 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!31 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!32 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !17, i64 0}
!33 = !{!"_ZTSNSt8ios_base6_WordsE", !17, i64 0, !29, i64 8}
!34 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !17, i64 0}
!35 = !{!"_ZTSSt6locale", !36, i64 0}
!36 = !{!"p1 _ZTSNSt6locale5_ImplE", !17, i64 0}
!37 = !{!"bool", !7, i64 0}
!38 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !17, i64 0}
!39 = !{!"p1 _ZTSSt5ctypeIcE", !17, i64 0}
!40 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !17, i64 0}
!41 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !17, i64 0}
!42 = !{!39, !39, i64 0}
!43 = !{!44, !7, i64 56}
!44 = !{!"_ZTSSt5ctypeIcE", !45, i64 0, !46, i64 16, !37, i64 24, !47, i64 32, !47, i64 40, !48, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!45 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!46 = !{!"p1 _ZTS15__locale_struct", !17, i64 0}
!47 = !{!"p1 int", !17, i64 0}
!48 = !{!"p1 short", !17, i64 0}
