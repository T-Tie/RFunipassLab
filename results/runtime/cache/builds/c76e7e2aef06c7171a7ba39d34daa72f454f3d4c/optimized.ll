; ModuleID = '<stdin>'
source_filename = "/tmp/tmp_mmoa9rj.cpp"
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

$_ZNSt11char_traitsIcE6lengthEPKc = comdat any

$_ZStorSt12_Ios_IostateS_ = comdat any

@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [3 x i8] c"NO\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %a = alloca [550 x i8], align 16
  %n = alloca i32, align 4
  %b = alloca [550 x [6 x i8]], align 16
  %c = alloca [550 x [6 x i8]], align 16
  %num = alloca [550 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 550, ptr noundef align 16 %a) #10
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %n) #10
  store i32 0, ptr %n, align 4, !tbaa !5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %call1 = call noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin)
  %call2 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef %a, i64 noundef 550)
  %call4 = call i64 @strlen(ptr noundef %a) #11
  %conv = trunc i64 %call4 to i32
  call void @llvm.lifetime.start.p0(i64 noundef 3300, ptr noundef %b) #12
  call void @llvm.memset.p0.i64(ptr noundef align 16 %b, i8 noundef 0, i64 noundef 3300, i1 noundef false)
  call void @llvm.lifetime.start.p0(i64 noundef 3300, ptr noundef %c) #12
  call void @llvm.memset.p0.i64(ptr noundef align 16 %c, i8 noundef 0, i64 noundef 3300, i1 noundef false)
  call void @llvm.lifetime.start.p0(i64 noundef 2200, ptr noundef %num) #12
  call void @llvm.memset.p0.i64(ptr noundef align 16 %num, i8 noundef 0, i64 noundef 2200, i1 noundef false)
  br label %for.cond

for.cond:                                         ; preds = %for.inc17, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc18, %for.inc17 ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %sub = sub nsw i32 %conv, %0
  %cmp = icmp sle i32 %i.0, %sub
  br i1 %cmp, label %for.body, label %for.end19

for.body:                                         ; preds = %for.cond
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ]
  %cmp7 = icmp slt i32 %j.0, %0
  br i1 %cmp7, label %for.inc, label %for.inc17

for.inc:                                          ; preds = %for.cond6
  %add = add nsw i32 %j.0, %i.0
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds [550 x i8], ptr %a, i64 0, i64 %idxprom
  %1 = load i8, ptr %arrayidx, align 1, !tbaa !9
  %idxprom9 = sext i32 %i.0 to i64
  %arrayidx10 = getelementptr inbounds [550 x [6 x i8]], ptr %b, i64 0, i64 %idxprom9
  %idxprom11 = sext i32 %j.0 to i64
  %arrayidx12 = getelementptr inbounds [6 x i8], ptr %arrayidx10, i64 0, i64 %idxprom11
  store i8 %1, ptr %arrayidx12, align 1, !tbaa !9
  %inc = add nsw i32 %j.0, 1
  br label %for.cond6, !llvm.loop !10

for.inc17:                                        ; preds = %for.cond6
  %idxprom13 = sext i32 %i.0 to i64
  %arrayidx14 = getelementptr inbounds [550 x [6 x i8]], ptr %b, i64 0, i64 %idxprom13
  %idxprom15 = sext i32 %j.0 to i64
  %arrayidx16 = getelementptr inbounds [6 x i8], ptr %arrayidx14, i64 0, i64 %idxprom15
  store i8 0, ptr %arrayidx16, align 1, !tbaa !9
  %inc18 = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !13

for.end19:                                        ; preds = %for.cond
  br label %for.cond21

for.cond21:                                       ; preds = %for.inc47, %for.end19
  %i20.0 = phi i32 [ 0, %for.end19 ], [ %add27, %for.inc47 ]
  %cmp23 = icmp slt i32 %i20.0, %sub
  br i1 %cmp23, label %for.body25, label %for.end49

for.body25:                                       ; preds = %for.cond21
  %add27 = add nsw i32 %i20.0, 1
  br label %for.cond28

for.cond28:                                       ; preds = %for.inc44, %for.body25
  %j26.0 = phi i32 [ %add27, %for.body25 ], [ %inc45, %for.inc44 ]
  %cmp30 = icmp sle i32 %j26.0, %sub
  br i1 %cmp30, label %for.body32, label %for.inc47

for.body32:                                       ; preds = %for.cond28
  %idxprom33 = sext i32 %i20.0 to i64
  %arrayidx34 = getelementptr inbounds [550 x [6 x i8]], ptr %b, i64 0, i64 %idxprom33
  %idxprom36 = sext i32 %j26.0 to i64
  %arrayidx37 = getelementptr inbounds [550 x [6 x i8]], ptr %b, i64 0, i64 %idxprom36
  %call39 = call i32 @strcmp(ptr noundef %arrayidx34, ptr noundef %arrayidx37) #11
  %cmp40 = icmp eq i32 %call39, 0
  br i1 %cmp40, label %if.then, label %for.inc44

if.then:                                          ; preds = %for.body32
  %arrayidx42 = getelementptr inbounds [550 x i32], ptr %num, i64 0, i64 %idxprom33
  %2 = load i32, ptr %arrayidx42, align 4, !tbaa !5
  %inc43 = add nsw i32 %2, 1
  store i32 %inc43, ptr %arrayidx42, align 4, !tbaa !5
  br label %for.inc44

for.inc44:                                        ; preds = %for.body32, %if.then
  %inc45 = add nsw i32 %j26.0, 1
  br label %for.cond28, !llvm.loop !14

for.inc47:                                        ; preds = %for.cond28
  br label %for.cond21, !llvm.loop !15

for.end49:                                        ; preds = %for.cond21
  br label %for.cond51

for.cond51:                                       ; preds = %for.inc63, %for.end49
  %max.0 = phi i32 [ 0, %for.end49 ], [ %max.1, %for.inc63 ]
  %i50.0 = phi i32 [ 0, %for.end49 ], [ %inc64, %for.inc63 ]
  %cmp53 = icmp slt i32 %i50.0, %sub
  br i1 %cmp53, label %for.body55, label %for.end65

for.body55:                                       ; preds = %for.cond51
  %idxprom56 = sext i32 %i50.0 to i64
  %arrayidx57 = getelementptr inbounds [550 x i32], ptr %num, i64 0, i64 %idxprom56
  %3 = load i32, ptr %arrayidx57, align 4, !tbaa !5
  %cmp58 = icmp slt i32 %max.0, %3
  br i1 %cmp58, label %if.then59, label %for.inc63

if.then59:                                        ; preds = %for.body55
  br label %for.inc63

for.inc63:                                        ; preds = %for.body55, %if.then59
  %max.1 = phi i32 [ %3, %if.then59 ], [ %max.0, %for.body55 ]
  %inc64 = add nsw i32 %i50.0, 1
  br label %for.cond51, !llvm.loop !16

for.end65:                                        ; preds = %for.cond51
  %cmp66 = icmp eq i32 %max.0, 0
  br i1 %cmp66, label %if.then67, label %if.else

if.then67:                                        ; preds = %for.end65
  %call68 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str)
  br label %if.end91

if.else:                                          ; preds = %for.end65
  %add69 = add nsw i32 %max.0, 1
  %call70 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %add69)
  %call71 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call70, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %for.cond73

for.cond73:                                       ; preds = %for.inc88, %if.else
  %i72.0 = phi i32 [ 0, %if.else ], [ %inc89, %for.inc88 ]
  %4 = load i32, ptr %n, align 4, !tbaa !5
  %sub74 = sub nsw i32 %conv, %4
  %cmp75 = icmp slt i32 %i72.0, %sub74
  br i1 %cmp75, label %for.body77, label %if.end91

for.body77:                                       ; preds = %for.cond73
  %idxprom78 = sext i32 %i72.0 to i64
  %arrayidx79 = getelementptr inbounds [550 x i32], ptr %num, i64 0, i64 %idxprom78
  %5 = load i32, ptr %arrayidx79, align 4, !tbaa !5
  %cmp80 = icmp eq i32 %5, %max.0
  br i1 %cmp80, label %if.then81, label %for.inc88

if.then81:                                        ; preds = %for.body77
  %arrayidx83 = getelementptr inbounds [550 x [6 x i8]], ptr %b, i64 0, i64 %idxprom78
  %call85 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %arrayidx83)
  %call86 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call85, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %for.inc88

for.inc88:                                        ; preds = %for.body77, %if.then81
  %inc89 = add nsw i32 %i72.0, 1
  br label %for.cond73, !llvm.loop !17

if.end91:                                         ; preds = %for.cond73, %if.then67
  call void @llvm.lifetime.end.p0(i64 noundef 2200, ptr noundef %num) #12
  call void @llvm.lifetime.end.p0(i64 noundef 3300, ptr noundef %c) #12
  call void @llvm.lifetime.end.p0(i64 noundef 3300, ptr noundef %b) #12
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %n) #12
  call void @llvm.lifetime.end.p0(i64 noundef 550, ptr noundef %a) #12
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPcl(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef) local_unnamed_addr #3 align 2

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strcmp(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #3 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #6

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPclc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i8 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) local_unnamed_addr #3 align 2

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(570) ptr @_ZSt13__check_facetISt5ctypeIcEERKT_PS3_(ptr noundef %__f) local_unnamed_addr #6 comdat {
entry:
  %tobool = icmp ne ptr %__f, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @_ZSt16__throw_bad_castv() #13
  unreachable

if.end:                                           ; preds = %entry
  ret ptr %__f
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %this, i8 noundef signext %__c) local_unnamed_addr #3 comdat align 2 {
entry:
  %_M_widen_ok = getelementptr inbounds nuw %"class.std::ctype", ptr %this, i32 0, i32 8
  %0 = load i8, ptr %_M_widen_ok, align 8, !tbaa !18
  %tobool = icmp ne i8 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %_M_widen = getelementptr inbounds nuw %"class.std::ctype", ptr %this, i32 0, i32 9
  %idxprom = zext i8 %__c to i64
  %arrayidx = getelementptr inbounds nuw [256 x i8], ptr %_M_widen, i64 0, i64 %idxprom
  %1 = load i8, ptr %arrayidx, align 1, !tbaa !9
  br label %return

if.end:                                           ; preds = %entry
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %this)
  %vtable = load ptr, ptr %this, align 8, !tbaa !26
  %vfn = getelementptr inbounds ptr, ptr %vtable, i64 6
  %2 = load ptr, ptr %vfn, align 8, !invariant.load !28
  %call = call noundef signext i8 %2(ptr noundef nonnull align 8 dereferenceable(570) %this, i8 noundef signext %__c)
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i8 [ %1, %if.then ], [ %call, %if.end ]
  ret i8 %retval.0
}

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #7

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #3 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt11char_traitsIcE6lengthEPKc(ptr noundef %__s) local_unnamed_addr #8 comdat align 2 {
entry:
  %call = call i64 @strlen(ptr noundef %__s) #12
  ret i64 %call
}

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZStorSt12_Ios_IostateS_(i32 noundef %__a, i32 noundef %__b) local_unnamed_addr #9 comdat {
entry:
  %or = or i32 %__a, %__b
  ret i32 %or
}

; Function Attrs: mustprogress nounwind uwtable
declare noundef i32 @_ZNKSt9basic_iosIcSt11char_traitsIcEE7rdstateEv(ptr noundef nonnull align 8 dereferenceable(264)) local_unnamed_addr #8 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind }
attributes #11 = { nounwind willreturn memory(read) }
attributes #12 = { nounwind }
attributes #13 = { noreturn }

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
!15 = distinct !{!15, !11, !12}
!16 = distinct !{!16, !11, !12}
!17 = distinct !{!17, !11, !12}
!18 = !{!19, !7, i64 56}
!19 = !{!"_ZTSSt5ctypeIcE", !20, i64 0, !21, i64 16, !23, i64 24, !24, i64 32, !24, i64 40, !25, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!20 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!21 = !{!"p1 _ZTS15__locale_struct", !22, i64 0}
!22 = !{!"any pointer", !7, i64 0}
!23 = !{!"bool", !7, i64 0}
!24 = !{!"p1 int", !22, i64 0}
!25 = !{!"p1 short", !22, i64 0}
!26 = !{!27, !27, i64 0}
!27 = !{!"vtable pointer", !8, i64 0}
!28 = !{}
