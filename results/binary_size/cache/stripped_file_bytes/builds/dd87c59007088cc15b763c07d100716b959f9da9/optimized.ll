; ModuleID = '/tmp/tmpdvat7drf.cpp'
source_filename = "/tmp/tmpdvat7drf.cpp"
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
  %a = alloca [33 x i32], align 16
  %Bit = alloca [33 x i32], align 16
  %N = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %j = alloca i32, align 4
  %i25 = alloca i32, align 4
  %Begin = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 132, ptr %a) #7
  call void @llvm.memset.p0.i64(ptr align 16 %a, i8 0, i64 132, i1 false)
  %0 = getelementptr inbounds <{ i32, [32 x i32] }>, ptr %a, i32 0, i32 0
  store i32 1, ptr %0, align 16
  call void @llvm.lifetime.start.p0(i64 132, ptr %Bit) #7
  call void @llvm.memset.p0.i64(ptr align 16 %Bit, i8 0, i64 132, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr %N) #7
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %N)
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #7
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc22, %entry
  %1 = load i32, ptr %i, align 4, !tbaa !5
  %2 = load i32, ptr %N, align 4, !tbaa !5
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #7
  br label %for.end24

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #7
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %3 = load i32, ptr %j, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %3, 32
  br i1 %cmp2, label %for.body4, label %for.cond.cleanup3

for.cond.cleanup3:                                ; preds = %for.cond1
  store i32 5, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #7
  br label %for.end

for.body4:                                        ; preds = %for.cond1
  %4 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [33 x i32], ptr %a, i64 0, i64 %idxprom
  %5 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %mul = mul nsw i32 2, %5
  %6 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom5 = sext i32 %6 to i64
  %arrayidx6 = getelementptr inbounds [33 x i32], ptr %Bit, i64 0, i64 %idxprom5
  %7 = load i32, ptr %arrayidx6, align 4, !tbaa !5
  %add = add nsw i32 %mul, %7
  %8 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom7 = sext i32 %8 to i64
  %arrayidx8 = getelementptr inbounds [33 x i32], ptr %a, i64 0, i64 %idxprom7
  store i32 %add, ptr %arrayidx8, align 4, !tbaa !5
  %9 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom9 = sext i32 %9 to i64
  %arrayidx10 = getelementptr inbounds [33 x i32], ptr %a, i64 0, i64 %idxprom9
  %10 = load i32, ptr %arrayidx10, align 4, !tbaa !5
  %cmp11 = icmp sgt i32 %10, 9
  br i1 %cmp11, label %if.then, label %if.else

if.then:                                          ; preds = %for.body4
  %11 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom12 = sext i32 %11 to i64
  %arrayidx13 = getelementptr inbounds [33 x i32], ptr %a, i64 0, i64 %idxprom12
  %12 = load i32, ptr %arrayidx13, align 4, !tbaa !5
  %sub = sub nsw i32 %12, 10
  %13 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom14 = sext i32 %13 to i64
  %arrayidx15 = getelementptr inbounds [33 x i32], ptr %a, i64 0, i64 %idxprom14
  store i32 %sub, ptr %arrayidx15, align 4, !tbaa !5
  %14 = load i32, ptr %j, align 4, !tbaa !5
  %add16 = add nsw i32 %14, 1
  %idxprom17 = sext i32 %add16 to i64
  %arrayidx18 = getelementptr inbounds [33 x i32], ptr %Bit, i64 0, i64 %idxprom17
  store i32 1, ptr %arrayidx18, align 4, !tbaa !5
  br label %if.end

if.else:                                          ; preds = %for.body4
  %15 = load i32, ptr %j, align 4, !tbaa !5
  %add19 = add nsw i32 %15, 1
  %idxprom20 = sext i32 %add19 to i64
  %arrayidx21 = getelementptr inbounds [33 x i32], ptr %Bit, i64 0, i64 %idxprom20
  store i32 0, ptr %arrayidx21, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %16 = load i32, ptr %j, align 4, !tbaa !5
  %inc = add nsw i32 %16, 1
  store i32 %inc, ptr %j, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !9

for.end:                                          ; preds = %for.cond.cleanup3
  br label %for.inc22

for.inc22:                                        ; preds = %for.end
  %17 = load i32, ptr %i, align 4, !tbaa !5
  %inc23 = add nsw i32 %17, 1
  store i32 %inc23, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !12

for.end24:                                        ; preds = %for.cond.cleanup
  call void @llvm.lifetime.start.p0(i64 4, ptr %i25) #7
  store i32 31, ptr %i25, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %Begin) #7
  store i32 0, ptr %Begin, align 4, !tbaa !5
  br label %for.cond26

for.cond26:                                       ; preds = %for.inc41, %for.end24
  %18 = load i32, ptr %i25, align 4, !tbaa !5
  %cmp27 = icmp sge i32 %18, 0
  br i1 %cmp27, label %for.body29, label %for.cond.cleanup28

for.cond.cleanup28:                               ; preds = %for.cond26
  store i32 8, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %Begin) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %i25) #7
  br label %for.end42

for.body29:                                       ; preds = %for.cond26
  %19 = load i32, ptr %i25, align 4, !tbaa !5
  %idxprom30 = sext i32 %19 to i64
  %arrayidx31 = getelementptr inbounds [33 x i32], ptr %a, i64 0, i64 %idxprom30
  %20 = load i32, ptr %arrayidx31, align 4, !tbaa !5
  %cmp32 = icmp ne i32 %20, 0
  br i1 %cmp32, label %if.then33, label %if.end34

if.then33:                                        ; preds = %for.body29
  store i32 1, ptr %Begin, align 4, !tbaa !5
  br label %if.end34

if.end34:                                         ; preds = %if.then33, %for.body29
  %21 = load i32, ptr %Begin, align 4, !tbaa !5
  %cmp35 = icmp eq i32 %21, 1
  br i1 %cmp35, label %if.then36, label %if.end40

if.then36:                                        ; preds = %if.end34
  %22 = load i32, ptr %i25, align 4, !tbaa !5
  %idxprom37 = sext i32 %22 to i64
  %arrayidx38 = getelementptr inbounds [33 x i32], ptr %a, i64 0, i64 %idxprom37
  %23 = load i32, ptr %arrayidx38, align 4, !tbaa !5
  %call39 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %23)
  br label %if.end40

if.end40:                                         ; preds = %if.then36, %if.end34
  br label %for.inc41

for.inc41:                                        ; preds = %if.end40
  %24 = load i32, ptr %i25, align 4, !tbaa !5
  %dec = add nsw i32 %24, -1
  store i32 %dec, ptr %i25, align 4, !tbaa !5
  br label %for.cond26, !llvm.loop !13

for.end42:                                        ; preds = %for.cond.cleanup28
  %call43 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %N) #7
  call void @llvm.lifetime.end.p0(i64 132, ptr %Bit) #7
  call void @llvm.lifetime.end.p0(i64 132, ptr %a) #7
  %25 = load i32, ptr %retval, align 4
  ret i32 %25
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) #3

; Function Attrs: mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef %__pf) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__pf.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !14
  store ptr %__pf, ptr %__pf.addr, align 8, !tbaa !17
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__pf.addr, align 8, !tbaa !17
  %call = call noundef nonnull align 8 dereferenceable(8) ptr %0(ptr noundef nonnull align 8 dereferenceable(8) %this1)
  ret ptr %call
}

; Function Attrs: inlinehint mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %__os) #5 {
entry:
  %__os.addr = alloca ptr, align 8
  store ptr %__os, ptr %__os.addr, align 8, !tbaa !14
  %0 = load ptr, ptr %__os.addr, align 8, !tbaa !14, !nonnull !18, !align !19
  %1 = load ptr, ptr %__os.addr, align 8, !tbaa !14, !nonnull !18, !align !19
  %vtable = load ptr, ptr %1, align 8, !tbaa !20
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %1, i64 %vbase.offset
  %call = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr, i8 noundef signext 10)
  %call1 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %call)
  %call2 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %call1)
  ret ptr %call2
}

; Function Attrs: inlinehint mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %__os) #5 {
entry:
  %__os.addr = alloca ptr, align 8
  store ptr %__os, ptr %__os.addr, align 8, !tbaa !14
  %0 = load ptr, ptr %__os.addr, align 8, !tbaa !14, !nonnull !18, !align !19
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  ret ptr %call
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) #3

; Function Attrs: mustprogress uwtable
define available_externally noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %this, i8 noundef signext %__c) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__c.addr = alloca i8, align 1
  store ptr %this, ptr %this.addr, align 8, !tbaa !22
  store i8 %__c, ptr %__c.addr, align 1, !tbaa !24
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_ctype = getelementptr inbounds nuw %"class.std::basic_ios", ptr %this1, i32 0, i32 5
  %0 = load ptr, ptr %_M_ctype, align 8, !tbaa !25
  %call = call noundef nonnull align 8 dereferenceable(570) ptr @_ZSt13__check_facetISt5ctypeIcEERKT_PS3_(ptr noundef %0)
  %1 = load i8, ptr %__c.addr, align 1, !tbaa !24
  %call2 = call noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %call, i8 noundef signext %1)
  ret i8 %call2
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) #3

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(570) ptr @_ZSt13__check_facetISt5ctypeIcEERKT_PS3_(ptr noundef %__f) #5 comdat {
entry:
  %__f.addr = alloca ptr, align 8
  store ptr %__f, ptr %__f.addr, align 8, !tbaa !41
  %0 = load ptr, ptr %__f.addr, align 8, !tbaa !41
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @_ZSt16__throw_bad_castv() #8
  unreachable

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %__f.addr, align 8, !tbaa !41
  ret ptr %1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %this, i8 noundef signext %__c) #4 comdat align 2 {
entry:
  %retval = alloca i8, align 1
  %this.addr = alloca ptr, align 8
  %__c.addr = alloca i8, align 1
  store ptr %this, ptr %this.addr, align 8, !tbaa !41
  store i8 %__c, ptr %__c.addr, align 1, !tbaa !24
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_widen_ok = getelementptr inbounds nuw %"class.std::ctype", ptr %this1, i32 0, i32 8
  %0 = load i8, ptr %_M_widen_ok, align 8, !tbaa !42
  %tobool = icmp ne i8 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %_M_widen = getelementptr inbounds nuw %"class.std::ctype", ptr %this1, i32 0, i32 9
  %1 = load i8, ptr %__c.addr, align 1, !tbaa !24
  %idxprom = zext i8 %1 to i64
  %arrayidx = getelementptr inbounds nuw [256 x i8], ptr %_M_widen, i64 0, i64 %idxprom
  %2 = load i8, ptr %arrayidx, align 1, !tbaa !24
  store i8 %2, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %this1)
  %3 = load i8, ptr %__c.addr, align 1, !tbaa !24
  %vtable = load ptr, ptr %this1, align 8, !tbaa !20
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
declare void @_ZSt16__throw_bad_castv() #6

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) #3

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { noreturn }

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
!14 = !{!15, !15, i64 0}
!15 = !{!"p1 _ZTSSo", !16, i64 0}
!16 = !{!"any pointer", !7, i64 0}
!17 = !{!16, !16, i64 0}
!18 = !{}
!19 = !{i64 8}
!20 = !{!21, !21, i64 0}
!21 = !{!"vtable pointer", !8, i64 0}
!22 = !{!23, !23, i64 0}
!23 = !{!"p1 _ZTSSt9basic_iosIcSt11char_traitsIcEE", !16, i64 0}
!24 = !{!7, !7, i64 0}
!25 = !{!26, !38, i64 240}
!26 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !27, i64 0, !15, i64 216, !7, i64 224, !36, i64 225, !37, i64 232, !38, i64 240, !39, i64 248, !40, i64 256}
!27 = !{!"_ZTSSt8ios_base", !28, i64 8, !28, i64 16, !29, i64 24, !30, i64 28, !30, i64 32, !31, i64 40, !32, i64 48, !7, i64 64, !6, i64 192, !33, i64 200, !34, i64 208}
!28 = !{!"long", !7, i64 0}
!29 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!30 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!31 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !16, i64 0}
!32 = !{!"_ZTSNSt8ios_base6_WordsE", !16, i64 0, !28, i64 8}
!33 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !16, i64 0}
!34 = !{!"_ZTSSt6locale", !35, i64 0}
!35 = !{!"p1 _ZTSNSt6locale5_ImplE", !16, i64 0}
!36 = !{!"bool", !7, i64 0}
!37 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !16, i64 0}
!38 = !{!"p1 _ZTSSt5ctypeIcE", !16, i64 0}
!39 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !16, i64 0}
!40 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !16, i64 0}
!41 = !{!38, !38, i64 0}
!42 = !{!43, !7, i64 56}
!43 = !{!"_ZTSSt5ctypeIcE", !44, i64 0, !45, i64 16, !36, i64 24, !46, i64 32, !46, i64 40, !47, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!44 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!45 = !{!"p1 _ZTS15__locale_struct", !16, i64 0}
!46 = !{!"p1 int", !16, i64 0}
!47 = !{!"p1 short", !16, i64 0}
