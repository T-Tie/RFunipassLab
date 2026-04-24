; ModuleID = '/tmp/tmpf39r4c1j.cpp'
source_filename = "/tmp/tmpf39r4c1j.cpp"
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

$_ZNKSt8ios_base5widthEv = comdat any

@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca [101 x i32], align 16
  %str = alloca [101 x i8], align 16
  %p = alloca ptr, align 8
  %q = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %a) #9
  call void @llvm.lifetime.start.p0(i64 404, ptr %b) #9
  call void @llvm.memset.p0.i64(ptr align 16 %b, i8 0, i64 404, i1 false)
  call void @llvm.lifetime.start.p0(i64 101, ptr %str) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #9
  store ptr null, ptr %p, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %q) #9
  store ptr null, ptr %q, align 8, !tbaa !10
  %arraydecay = getelementptr inbounds [101 x i8], ptr %str, i64 0, i64 0
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef %arraydecay, i64 noundef 101)
  %arraydecay1 = getelementptr inbounds [101 x i8], ptr %str, i64 0, i64 0
  %call2 = call i64 @strlen(ptr noundef %arraydecay1) #10
  %conv = trunc i64 %call2 to i32
  store i32 %conv, ptr %a, align 4, !tbaa !12
  %arraydecay3 = getelementptr inbounds [101 x i32], ptr %b, i64 0, i64 0
  store ptr %arraydecay3, ptr %q, align 8, !tbaa !10
  %arraydecay4 = getelementptr inbounds [101 x i8], ptr %str, i64 0, i64 0
  store ptr %arraydecay4, ptr %p, align 8, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load ptr, ptr %p, align 8, !tbaa !5
  %arraydecay5 = getelementptr inbounds [101 x i8], ptr %str, i64 0, i64 0
  %1 = load i32, ptr %a, align 4, !tbaa !12
  %idx.ext = sext i32 %1 to i64
  %add.ptr = getelementptr inbounds i8, ptr %arraydecay5, i64 %idx.ext
  %cmp = icmp ult ptr %0, %add.ptr
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %p, align 8, !tbaa !5
  %3 = load i8, ptr %2, align 1, !tbaa !14
  %conv6 = sext i8 %3 to i32
  %cmp7 = icmp eq i32 %conv6, 32
  br i1 %cmp7, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %4 = load ptr, ptr %p, align 8, !tbaa !5
  %add.ptr8 = getelementptr inbounds i8, ptr %4, i64 1
  %5 = load i8, ptr %add.ptr8, align 1, !tbaa !14
  %conv9 = sext i8 %5 to i32
  %cmp10 = icmp eq i32 %conv9, 32
  br i1 %cmp10, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %6 = load ptr, ptr %q, align 8, !tbaa !10
  store i32 1, ptr %6, align 4, !tbaa !12
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %7 = load ptr, ptr %p, align 8, !tbaa !5
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %7, i32 1
  store ptr %incdec.ptr, ptr %p, align 8, !tbaa !5
  %8 = load ptr, ptr %q, align 8, !tbaa !10
  %incdec.ptr11 = getelementptr inbounds nuw i32, ptr %8, i32 1
  store ptr %incdec.ptr11, ptr %q, align 8, !tbaa !10
  br label %for.cond, !llvm.loop !15

for.end:                                          ; preds = %for.cond
  %arraydecay12 = getelementptr inbounds [101 x i32], ptr %b, i64 0, i64 0
  store ptr %arraydecay12, ptr %q, align 8, !tbaa !10
  %arraydecay13 = getelementptr inbounds [101 x i8], ptr %str, i64 0, i64 0
  store ptr %arraydecay13, ptr %p, align 8, !tbaa !5
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc24, %for.end
  %9 = load ptr, ptr %p, align 8, !tbaa !5
  %arraydecay15 = getelementptr inbounds [101 x i8], ptr %str, i64 0, i64 0
  %10 = load i32, ptr %a, align 4, !tbaa !12
  %idx.ext16 = sext i32 %10 to i64
  %add.ptr17 = getelementptr inbounds i8, ptr %arraydecay15, i64 %idx.ext16
  %cmp18 = icmp ult ptr %9, %add.ptr17
  br i1 %cmp18, label %for.body19, label %for.end27

for.body19:                                       ; preds = %for.cond14
  %11 = load ptr, ptr %q, align 8, !tbaa !10
  %12 = load i32, ptr %11, align 4, !tbaa !12
  %cmp20 = icmp ne i32 %12, 1
  br i1 %cmp20, label %if.then21, label %if.end23

if.then21:                                        ; preds = %for.body19
  %13 = load ptr, ptr %p, align 8, !tbaa !5
  %14 = load i8, ptr %13, align 1, !tbaa !14
  %call22 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %14)
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %for.body19
  br label %for.inc24

for.inc24:                                        ; preds = %if.end23
  %15 = load ptr, ptr %p, align 8, !tbaa !5
  %incdec.ptr25 = getelementptr inbounds nuw i8, ptr %15, i32 1
  store ptr %incdec.ptr25, ptr %p, align 8, !tbaa !5
  %16 = load ptr, ptr %q, align 8, !tbaa !10
  %incdec.ptr26 = getelementptr inbounds nuw i32, ptr %16, i32 1
  store ptr %incdec.ptr26, ptr %q, align 8, !tbaa !10
  br label %for.cond14, !llvm.loop !18

for.end27:                                        ; preds = %for.cond14
  call void @llvm.lifetime.end.p0(i64 8, ptr %q) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #9
  call void @llvm.lifetime.end.p0(i64 101, ptr %str) #9
  call void @llvm.lifetime.end.p0(i64 404, ptr %b) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %a) #9
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPcl(ptr noundef nonnull align 8 dereferenceable(16) %this, ptr noundef %__s, i64 noundef %__n) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__s.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !19
  store ptr %__s, ptr %__s.addr, align 8, !tbaa !5
  store i64 %__n, ptr %__n.addr, align 8, !tbaa !21
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__s.addr, align 8, !tbaa !5
  %1 = load i64, ptr %__n.addr, align 8, !tbaa !21
  %vtable = load ptr, ptr %this1, align 8, !tbaa !23
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %this1, i64 %vbase.offset
  %call = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr, i8 noundef signext 10)
  %call2 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPclc(ptr noundef nonnull align 8 dereferenceable(16) %this1, ptr noundef %0, i64 noundef %1, i8 noundef signext %call)
  ret ptr %call2
}

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #4

; Function Attrs: inlinehint mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) %__out, i8 noundef signext %__c) #5 {
entry:
  %retval = alloca ptr, align 8
  %__out.addr = alloca ptr, align 8
  %__c.addr = alloca i8, align 1
  store ptr %__out, ptr %__out.addr, align 8, !tbaa !25
  store i8 %__c, ptr %__c.addr, align 1, !tbaa !14
  %0 = load ptr, ptr %__out.addr, align 8, !tbaa !25, !nonnull !27, !align !28
  %vtable = load ptr, ptr %0, align 8, !tbaa !23
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %0, i64 %vbase.offset
  %call = call noundef i64 @_ZNKSt8ios_base5widthEv(ptr noundef nonnull align 8 dereferenceable(216) %add.ptr)
  %cmp = icmp ne i64 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %__out.addr, align 8, !tbaa !25, !nonnull !27, !align !28
  %call1 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %__c.addr, i64 noundef 1)
  store ptr %call1, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %__out.addr, align 8, !tbaa !25, !nonnull !27, !align !28
  %3 = load i8, ptr %__c.addr, align 1, !tbaa !14
  %call2 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %2, i8 noundef signext %3)
  %4 = load ptr, ptr %__out.addr, align 8, !tbaa !25, !nonnull !27, !align !28
  store ptr %4, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load ptr, ptr %retval, align 8
  ret ptr %5
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPclc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i8 noundef signext) #6

; Function Attrs: mustprogress uwtable
define available_externally noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %this, i8 noundef signext %__c) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__c.addr = alloca i8, align 1
  store ptr %this, ptr %this.addr, align 8, !tbaa !29
  store i8 %__c, ptr %__c.addr, align 1, !tbaa !14
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_ctype = getelementptr inbounds nuw %"class.std::basic_ios", ptr %this1, i32 0, i32 5
  %0 = load ptr, ptr %_M_ctype, align 8, !tbaa !31
  %call = call noundef nonnull align 8 dereferenceable(570) ptr @_ZSt13__check_facetISt5ctypeIcEERKT_PS3_(ptr noundef %0)
  %1 = load i8, ptr %__c.addr, align 1, !tbaa !14
  %call2 = call noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %call, i8 noundef signext %1)
  ret i8 %call2
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(570) ptr @_ZSt13__check_facetISt5ctypeIcEERKT_PS3_(ptr noundef %__f) #5 comdat {
entry:
  %__f.addr = alloca ptr, align 8
  store ptr %__f, ptr %__f.addr, align 8, !tbaa !46
  %0 = load ptr, ptr %__f.addr, align 8, !tbaa !46
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @_ZSt16__throw_bad_castv() #11
  unreachable

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %__f.addr, align 8, !tbaa !46
  ret ptr %1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %this, i8 noundef signext %__c) #3 comdat align 2 {
entry:
  %retval = alloca i8, align 1
  %this.addr = alloca ptr, align 8
  %__c.addr = alloca i8, align 1
  store ptr %this, ptr %this.addr, align 8, !tbaa !46
  store i8 %__c, ptr %__c.addr, align 1, !tbaa !14
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_widen_ok = getelementptr inbounds nuw %"class.std::ctype", ptr %this1, i32 0, i32 8
  %0 = load i8, ptr %_M_widen_ok, align 8, !tbaa !47
  %tobool = icmp ne i8 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %_M_widen = getelementptr inbounds nuw %"class.std::ctype", ptr %this1, i32 0, i32 9
  %1 = load i8, ptr %__c.addr, align 1, !tbaa !14
  %idxprom = zext i8 %1 to i64
  %arrayidx = getelementptr inbounds nuw [256 x i8], ptr %_M_widen, i64 0, i64 %idxprom
  %2 = load i8, ptr %arrayidx, align 1, !tbaa !14
  store i8 %2, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %this1)
  %3 = load i8, ptr %__c.addr, align 1, !tbaa !14
  %vtable = load ptr, ptr %this1, align 8, !tbaa !23
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
declare void @_ZSt16__throw_bad_castv() #7

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt8ios_base5widthEv(ptr noundef nonnull align 8 dereferenceable(216) %this) #8 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !52
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_width = getelementptr inbounds nuw %"class.std::ios_base", ptr %this1, i32 0, i32 2
  %0 = load i64, ptr %_M_width, align 8, !tbaa !54
  ret i64 %0
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) #6

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) #6

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind }
attributes #10 = { nounwind willreturn memory(read) }
attributes #11 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.1.8 (https://github.com/llvm/llvm-project.git 2078da43e25a4623cab2d0d60decddf709aaea28)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"p1 omnipotent char", !7, i64 0}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C++ TBAA"}
!10 = !{!11, !11, i64 0}
!11 = !{!"p1 int", !7, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"int", !8, i64 0}
!14 = !{!8, !8, i64 0}
!15 = distinct !{!15, !16, !17}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{!"llvm.loop.unroll.disable"}
!18 = distinct !{!18, !16, !17}
!19 = !{!20, !20, i64 0}
!20 = !{!"p1 _ZTSSi", !7, i64 0}
!21 = !{!22, !22, i64 0}
!22 = !{!"long", !8, i64 0}
!23 = !{!24, !24, i64 0}
!24 = !{!"vtable pointer", !9, i64 0}
!25 = !{!26, !26, i64 0}
!26 = !{!"p1 _ZTSSo", !7, i64 0}
!27 = !{}
!28 = !{i64 8}
!29 = !{!30, !30, i64 0}
!30 = !{!"p1 _ZTSSt9basic_iosIcSt11char_traitsIcEE", !7, i64 0}
!31 = !{!32, !43, i64 240}
!32 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !33, i64 0, !26, i64 216, !8, i64 224, !41, i64 225, !42, i64 232, !43, i64 240, !44, i64 248, !45, i64 256}
!33 = !{!"_ZTSSt8ios_base", !22, i64 8, !22, i64 16, !34, i64 24, !35, i64 28, !35, i64 32, !36, i64 40, !37, i64 48, !8, i64 64, !13, i64 192, !38, i64 200, !39, i64 208}
!34 = !{!"_ZTSSt13_Ios_Fmtflags", !8, i64 0}
!35 = !{!"_ZTSSt12_Ios_Iostate", !8, i64 0}
!36 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !7, i64 0}
!37 = !{!"_ZTSNSt8ios_base6_WordsE", !7, i64 0, !22, i64 8}
!38 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !7, i64 0}
!39 = !{!"_ZTSSt6locale", !40, i64 0}
!40 = !{!"p1 _ZTSNSt6locale5_ImplE", !7, i64 0}
!41 = !{!"bool", !8, i64 0}
!42 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !7, i64 0}
!43 = !{!"p1 _ZTSSt5ctypeIcE", !7, i64 0}
!44 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !7, i64 0}
!45 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !7, i64 0}
!46 = !{!43, !43, i64 0}
!47 = !{!48, !8, i64 56}
!48 = !{!"_ZTSSt5ctypeIcE", !49, i64 0, !50, i64 16, !41, i64 24, !11, i64 32, !11, i64 40, !51, i64 48, !8, i64 56, !8, i64 57, !8, i64 313, !8, i64 569}
!49 = !{!"_ZTSNSt6locale5facetE", !13, i64 8}
!50 = !{!"p1 _ZTS15__locale_struct", !7, i64 0}
!51 = !{!"p1 short", !7, i64 0}
!52 = !{!53, !53, i64 0}
!53 = !{!"p1 _ZTSSt8ios_base", !7, i64 0}
!54 = !{!33, !22, i64 16}
