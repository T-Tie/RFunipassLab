; ModuleID = '/tmp/tmpnhrh_2f_.cpp'
source_filename = "/tmp/tmpnhrh_2f_.cpp"
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
  %c = alloca [1000 x i8], align 16
  %l = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %j = alloca i32, align 4
  %i25 = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 1000, ptr %c) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %l) #8
  %arraydecay = getelementptr inbounds [1000 x i8], ptr %c, i64 0, i64 0
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef %arraydecay, i64 noundef 1000)
  %arraydecay1 = getelementptr inbounds [1000 x i8], ptr %c, i64 0, i64 0
  %call2 = call i64 @strlen(ptr noundef %arraydecay1) #9
  %conv = trunc i64 %call2 to i32
  store i32 %conv, ptr %l, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #8
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc22, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %l, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #8
  br label %for.end24

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [1000 x i8], ptr %c, i64 0, i64 %idxprom
  %3 = load i8, ptr %arrayidx, align 1, !tbaa !9
  %conv3 = sext i8 %3 to i32
  %cmp4 = icmp eq i32 %conv3, 32
  br i1 %cmp4, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %4 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom5 = sext i32 %4 to i64
  %arrayidx6 = getelementptr inbounds [1000 x i8], ptr %c, i64 0, i64 %idxprom5
  %5 = load i8, ptr %arrayidx6, align 1, !tbaa !9
  %conv7 = sext i8 %5 to i32
  %6 = load i32, ptr %i, align 4, !tbaa !5
  %add = add nsw i32 %6, 1
  %idxprom8 = sext i32 %add to i64
  %arrayidx9 = getelementptr inbounds [1000 x i8], ptr %c, i64 0, i64 %idxprom8
  %7 = load i8, ptr %arrayidx9, align 1, !tbaa !9
  %conv10 = sext i8 %7 to i32
  %cmp11 = icmp eq i32 %conv7, %conv10
  br i1 %cmp11, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #8
  %8 = load i32, ptr %i, align 4, !tbaa !5
  store i32 %8, ptr %j, align 4, !tbaa !5
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc, %if.then
  %9 = load i32, ptr %j, align 4, !tbaa !5
  %10 = load i32, ptr %l, align 4, !tbaa !5
  %sub = sub nsw i32 %10, 1
  %cmp13 = icmp slt i32 %9, %sub
  br i1 %cmp13, label %for.body15, label %for.cond.cleanup14

for.cond.cleanup14:                               ; preds = %for.cond12
  store i32 5, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #8
  br label %for.end

for.body15:                                       ; preds = %for.cond12
  %11 = load i32, ptr %j, align 4, !tbaa !5
  %add16 = add nsw i32 %11, 1
  %idxprom17 = sext i32 %add16 to i64
  %arrayidx18 = getelementptr inbounds [1000 x i8], ptr %c, i64 0, i64 %idxprom17
  %12 = load i8, ptr %arrayidx18, align 1, !tbaa !9
  %13 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom19 = sext i32 %13 to i64
  %arrayidx20 = getelementptr inbounds [1000 x i8], ptr %c, i64 0, i64 %idxprom19
  store i8 %12, ptr %arrayidx20, align 1, !tbaa !9
  br label %for.inc

for.inc:                                          ; preds = %for.body15
  %14 = load i32, ptr %j, align 4, !tbaa !5
  %inc = add nsw i32 %14, 1
  store i32 %inc, ptr %j, align 4, !tbaa !5
  br label %for.cond12, !llvm.loop !10

for.end:                                          ; preds = %for.cond.cleanup14
  %15 = load i32, ptr %l, align 4, !tbaa !5
  %dec = add nsw i32 %15, -1
  store i32 %dec, ptr %l, align 4, !tbaa !5
  %16 = load i32, ptr %i, align 4, !tbaa !5
  %dec21 = add nsw i32 %16, -1
  store i32 %dec21, ptr %i, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %for.end, %land.lhs.true, %for.body
  br label %for.inc22

for.inc22:                                        ; preds = %if.end
  %17 = load i32, ptr %i, align 4, !tbaa !5
  %inc23 = add nsw i32 %17, 1
  store i32 %inc23, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !13

for.end24:                                        ; preds = %for.cond.cleanup
  call void @llvm.lifetime.start.p0(i64 4, ptr %i25) #8
  store i32 0, ptr %i25, align 4, !tbaa !5
  br label %for.cond26

for.cond26:                                       ; preds = %for.inc33, %for.end24
  %18 = load i32, ptr %i25, align 4, !tbaa !5
  %19 = load i32, ptr %l, align 4, !tbaa !5
  %cmp27 = icmp slt i32 %18, %19
  br i1 %cmp27, label %for.body29, label %for.cond.cleanup28

for.cond.cleanup28:                               ; preds = %for.cond26
  store i32 8, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i25) #8
  br label %for.end35

for.body29:                                       ; preds = %for.cond26
  %20 = load i32, ptr %i25, align 4, !tbaa !5
  %idxprom30 = sext i32 %20 to i64
  %arrayidx31 = getelementptr inbounds [1000 x i8], ptr %c, i64 0, i64 %idxprom30
  %21 = load i8, ptr %arrayidx31, align 1, !tbaa !9
  %call32 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %21)
  br label %for.inc33

for.inc33:                                        ; preds = %for.body29
  %22 = load i32, ptr %i25, align 4, !tbaa !5
  %inc34 = add nsw i32 %22, 1
  store i32 %inc34, ptr %i25, align 4, !tbaa !5
  br label %for.cond26, !llvm.loop !14

for.end35:                                        ; preds = %for.cond.cleanup28
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %l) #8
  call void @llvm.lifetime.end.p0(i64 1000, ptr %c) #8
  %23 = load i32, ptr %retval, align 4
  ret i32 %23
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPcl(ptr noundef nonnull align 8 dereferenceable(16) %this, ptr noundef %__s, i64 noundef %__n) #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__s.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !15
  store ptr %__s, ptr %__s.addr, align 8, !tbaa !18
  store i64 %__n, ptr %__n.addr, align 8, !tbaa !20
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__s.addr, align 8, !tbaa !18
  %1 = load i64, ptr %__n.addr, align 8, !tbaa !20
  %vtable = load ptr, ptr %this1, align 8, !tbaa !22
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %this1, i64 %vbase.offset
  %call = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr, i8 noundef signext 10)
  %call2 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPclc(ptr noundef nonnull align 8 dereferenceable(16) %this1, ptr noundef %0, i64 noundef %1, i8 noundef signext %call)
  ret ptr %call2
}

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: inlinehint mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) %__out, i8 noundef signext %__c) #4 {
entry:
  %retval = alloca ptr, align 8
  %__out.addr = alloca ptr, align 8
  %__c.addr = alloca i8, align 1
  store ptr %__out, ptr %__out.addr, align 8, !tbaa !24
  store i8 %__c, ptr %__c.addr, align 1, !tbaa !9
  %0 = load ptr, ptr %__out.addr, align 8, !tbaa !24, !nonnull !26, !align !27
  %vtable = load ptr, ptr %0, align 8, !tbaa !22
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %0, i64 %vbase.offset
  %call = call noundef i64 @_ZNKSt8ios_base5widthEv(ptr noundef nonnull align 8 dereferenceable(216) %add.ptr)
  %cmp = icmp ne i64 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %__out.addr, align 8, !tbaa !24, !nonnull !26, !align !27
  %call1 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %__c.addr, i64 noundef 1)
  store ptr %call1, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %__out.addr, align 8, !tbaa !24, !nonnull !26, !align !27
  %3 = load i8, ptr %__c.addr, align 1, !tbaa !9
  %call2 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %2, i8 noundef signext %3)
  %4 = load ptr, ptr %__out.addr, align 8, !tbaa !24, !nonnull !26, !align !27
  store ptr %4, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load ptr, ptr %retval, align 8
  ret ptr %5
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPclc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i8 noundef signext) #5

; Function Attrs: mustprogress uwtable
define available_externally noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %this, i8 noundef signext %__c) #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__c.addr = alloca i8, align 1
  store ptr %this, ptr %this.addr, align 8, !tbaa !28
  store i8 %__c, ptr %__c.addr, align 1, !tbaa !9
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_ctype = getelementptr inbounds nuw %"class.std::basic_ios", ptr %this1, i32 0, i32 5
  %0 = load ptr, ptr %_M_ctype, align 8, !tbaa !30
  %call = call noundef nonnull align 8 dereferenceable(570) ptr @_ZSt13__check_facetISt5ctypeIcEERKT_PS3_(ptr noundef %0)
  %1 = load i8, ptr %__c.addr, align 1, !tbaa !9
  %call2 = call noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %call, i8 noundef signext %1)
  ret i8 %call2
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(570) ptr @_ZSt13__check_facetISt5ctypeIcEERKT_PS3_(ptr noundef %__f) #4 comdat {
entry:
  %__f.addr = alloca ptr, align 8
  store ptr %__f, ptr %__f.addr, align 8, !tbaa !45
  %0 = load ptr, ptr %__f.addr, align 8, !tbaa !45
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @_ZSt16__throw_bad_castv() #10
  unreachable

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %__f.addr, align 8, !tbaa !45
  ret ptr %1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %this, i8 noundef signext %__c) #2 comdat align 2 {
entry:
  %retval = alloca i8, align 1
  %this.addr = alloca ptr, align 8
  %__c.addr = alloca i8, align 1
  store ptr %this, ptr %this.addr, align 8, !tbaa !45
  store i8 %__c, ptr %__c.addr, align 1, !tbaa !9
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_widen_ok = getelementptr inbounds nuw %"class.std::ctype", ptr %this1, i32 0, i32 8
  %0 = load i8, ptr %_M_widen_ok, align 8, !tbaa !46
  %tobool = icmp ne i8 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %_M_widen = getelementptr inbounds nuw %"class.std::ctype", ptr %this1, i32 0, i32 9
  %1 = load i8, ptr %__c.addr, align 1, !tbaa !9
  %idxprom = zext i8 %1 to i64
  %arrayidx = getelementptr inbounds nuw [256 x i8], ptr %_M_widen, i64 0, i64 %idxprom
  %2 = load i8, ptr %arrayidx, align 1, !tbaa !9
  store i8 %2, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %this1)
  %3 = load i8, ptr %__c.addr, align 1, !tbaa !9
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
declare void @_ZSt16__throw_bad_castv() #6

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt8ios_base5widthEv(ptr noundef nonnull align 8 dereferenceable(216) %this) #7 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !52
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_width = getelementptr inbounds nuw %"class.std::ios_base", ptr %this1, i32 0, i32 2
  %0 = load i64, ptr %_M_width, align 8, !tbaa !54
  ret i64 %0
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) #5

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { nounwind willreturn memory(read) }
attributes #10 = { noreturn }

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
!9 = !{!7, !7, i64 0}
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = distinct !{!13, !11, !12}
!14 = distinct !{!14, !11, !12}
!15 = !{!16, !16, i64 0}
!16 = !{!"p1 _ZTSSi", !17, i64 0}
!17 = !{!"any pointer", !7, i64 0}
!18 = !{!19, !19, i64 0}
!19 = !{!"p1 omnipotent char", !17, i64 0}
!20 = !{!21, !21, i64 0}
!21 = !{!"long", !7, i64 0}
!22 = !{!23, !23, i64 0}
!23 = !{!"vtable pointer", !8, i64 0}
!24 = !{!25, !25, i64 0}
!25 = !{!"p1 _ZTSSo", !17, i64 0}
!26 = !{}
!27 = !{i64 8}
!28 = !{!29, !29, i64 0}
!29 = !{!"p1 _ZTSSt9basic_iosIcSt11char_traitsIcEE", !17, i64 0}
!30 = !{!31, !42, i64 240}
!31 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !32, i64 0, !25, i64 216, !7, i64 224, !40, i64 225, !41, i64 232, !42, i64 240, !43, i64 248, !44, i64 256}
!32 = !{!"_ZTSSt8ios_base", !21, i64 8, !21, i64 16, !33, i64 24, !34, i64 28, !34, i64 32, !35, i64 40, !36, i64 48, !7, i64 64, !6, i64 192, !37, i64 200, !38, i64 208}
!33 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!34 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!35 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !17, i64 0}
!36 = !{!"_ZTSNSt8ios_base6_WordsE", !17, i64 0, !21, i64 8}
!37 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !17, i64 0}
!38 = !{!"_ZTSSt6locale", !39, i64 0}
!39 = !{!"p1 _ZTSNSt6locale5_ImplE", !17, i64 0}
!40 = !{!"bool", !7, i64 0}
!41 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !17, i64 0}
!42 = !{!"p1 _ZTSSt5ctypeIcE", !17, i64 0}
!43 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !17, i64 0}
!44 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !17, i64 0}
!45 = !{!42, !42, i64 0}
!46 = !{!47, !7, i64 56}
!47 = !{!"_ZTSSt5ctypeIcE", !48, i64 0, !49, i64 16, !40, i64 24, !50, i64 32, !50, i64 40, !51, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!48 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!49 = !{!"p1 _ZTS15__locale_struct", !17, i64 0}
!50 = !{!"p1 int", !17, i64 0}
!51 = !{!"p1 short", !17, i64 0}
!52 = !{!53, !53, i64 0}
!53 = !{!"p1 _ZTSSt8ios_base", !17, i64 0}
!54 = !{!32, !21, i64 16}
