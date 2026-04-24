; ModuleID = '/tmp/tmpdhc_0y6o.cpp'
source_filename = "/tmp/tmpdhc_0y6o.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }

$_ZNSt11char_traitsIcE6lengthEPKc = comdat any

$_ZStorSt12_Ios_IostateS_ = comdat any

@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [2 x i8] c",\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %N = alloca i32, align 4
  %saved_stack = alloca ptr, align 8
  %__vla_expr0 = alloca i64, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %t = alloca i32, align 4
  %i1 = alloca i32, align 4
  %i5 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %k10 = alloca i32, align 4
  %i38 = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %N) #9
  store i32 0, ptr %N, align 4, !tbaa !5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %N)
  %0 = load i32, ptr %N, align 4, !tbaa !5
  %1 = zext i32 %0 to i64
  %2 = call ptr @llvm.stacksave.p0()
  store ptr %2, ptr %saved_stack, align 8
  %vla = alloca i32, i64 %1, align 16
  store i64 %1, ptr %__vla_expr0, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #9
  store i32 0, ptr %i, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #9
  store i32 0, ptr %j, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #9
  store i32 0, ptr %k, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %t) #9
  store i32 0, ptr %t, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i1) #9
  store i32 0, ptr %i1, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, ptr %i1, align 4, !tbaa !5
  %4 = load i32, ptr %N, align 4, !tbaa !5
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i1) #9
  br label %for.end

for.body:                                         ; preds = %for.cond
  %call2 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %k)
  %5 = load i32, ptr %k, align 4, !tbaa !5
  %rem = srem i32 %5, 2
  %cmp3 = icmp eq i32 %rem, 1
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %6 = load i32, ptr %k, align 4, !tbaa !5
  %7 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds i32, ptr %vla, i64 %idxprom
  store i32 %6, ptr %arrayidx, align 4, !tbaa !5
  %8 = load i32, ptr %j, align 4, !tbaa !5
  %inc = add nsw i32 %8, 1
  store i32 %inc, ptr %j, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load i32, ptr %i1, align 4, !tbaa !5
  %inc4 = add nsw i32 %9, 1
  store i32 %inc4, ptr %i1, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond.cleanup
  call void @llvm.lifetime.start.p0(i64 4, ptr %i5) #9
  store i32 0, ptr %i5, align 4, !tbaa !5
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc33, %for.end
  %10 = load i32, ptr %i5, align 4, !tbaa !5
  %11 = load i32, ptr %j, align 4, !tbaa !5
  %cmp7 = icmp slt i32 %10, %11
  br i1 %cmp7, label %for.body9, label %for.cond.cleanup8

for.cond.cleanup8:                                ; preds = %for.cond6
  store i32 5, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i5) #9
  br label %for.end35

for.body9:                                        ; preds = %for.cond6
  call void @llvm.lifetime.start.p0(i64 4, ptr %k10) #9
  %12 = load i32, ptr %i5, align 4, !tbaa !5
  %add = add nsw i32 %12, 1
  store i32 %add, ptr %k10, align 4, !tbaa !5
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc30, %for.body9
  %13 = load i32, ptr %k10, align 4, !tbaa !5
  %14 = load i32, ptr %j, align 4, !tbaa !5
  %cmp12 = icmp slt i32 %13, %14
  br i1 %cmp12, label %for.body14, label %for.cond.cleanup13

for.cond.cleanup13:                               ; preds = %for.cond11
  store i32 8, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %k10) #9
  br label %for.end32

for.body14:                                       ; preds = %for.cond11
  %15 = load i32, ptr %i5, align 4, !tbaa !5
  %idxprom15 = sext i32 %15 to i64
  %arrayidx16 = getelementptr inbounds i32, ptr %vla, i64 %idxprom15
  %16 = load i32, ptr %arrayidx16, align 4, !tbaa !5
  %17 = load i32, ptr %k10, align 4, !tbaa !5
  %idxprom17 = sext i32 %17 to i64
  %arrayidx18 = getelementptr inbounds i32, ptr %vla, i64 %idxprom17
  %18 = load i32, ptr %arrayidx18, align 4, !tbaa !5
  %cmp19 = icmp sgt i32 %16, %18
  br i1 %cmp19, label %if.then20, label %if.end29

if.then20:                                        ; preds = %for.body14
  %19 = load i32, ptr %i5, align 4, !tbaa !5
  %idxprom21 = sext i32 %19 to i64
  %arrayidx22 = getelementptr inbounds i32, ptr %vla, i64 %idxprom21
  %20 = load i32, ptr %arrayidx22, align 4, !tbaa !5
  store i32 %20, ptr %t, align 4, !tbaa !5
  %21 = load i32, ptr %k10, align 4, !tbaa !5
  %idxprom23 = sext i32 %21 to i64
  %arrayidx24 = getelementptr inbounds i32, ptr %vla, i64 %idxprom23
  %22 = load i32, ptr %arrayidx24, align 4, !tbaa !5
  %23 = load i32, ptr %i5, align 4, !tbaa !5
  %idxprom25 = sext i32 %23 to i64
  %arrayidx26 = getelementptr inbounds i32, ptr %vla, i64 %idxprom25
  store i32 %22, ptr %arrayidx26, align 4, !tbaa !5
  %24 = load i32, ptr %t, align 4, !tbaa !5
  %25 = load i32, ptr %k10, align 4, !tbaa !5
  %idxprom27 = sext i32 %25 to i64
  %arrayidx28 = getelementptr inbounds i32, ptr %vla, i64 %idxprom27
  store i32 %24, ptr %arrayidx28, align 4, !tbaa !5
  br label %if.end29

if.end29:                                         ; preds = %if.then20, %for.body14
  br label %for.inc30

for.inc30:                                        ; preds = %if.end29
  %26 = load i32, ptr %k10, align 4, !tbaa !5
  %inc31 = add nsw i32 %26, 1
  store i32 %inc31, ptr %k10, align 4, !tbaa !5
  br label %for.cond11, !llvm.loop !12

for.end32:                                        ; preds = %for.cond.cleanup13
  br label %for.inc33

for.inc33:                                        ; preds = %for.end32
  %27 = load i32, ptr %i5, align 4, !tbaa !5
  %inc34 = add nsw i32 %27, 1
  store i32 %inc34, ptr %i5, align 4, !tbaa !5
  br label %for.cond6, !llvm.loop !13

for.end35:                                        ; preds = %for.cond.cleanup8
  %arrayidx36 = getelementptr inbounds i32, ptr %vla, i64 0
  %28 = load i32, ptr %arrayidx36, align 16, !tbaa !5
  %call37 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %28)
  call void @llvm.lifetime.start.p0(i64 4, ptr %i38) #9
  store i32 1, ptr %i38, align 4, !tbaa !5
  br label %for.cond39

for.cond39:                                       ; preds = %for.inc47, %for.end35
  %29 = load i32, ptr %i38, align 4, !tbaa !5
  %30 = load i32, ptr %j, align 4, !tbaa !5
  %cmp40 = icmp slt i32 %29, %30
  br i1 %cmp40, label %for.body42, label %for.cond.cleanup41

for.cond.cleanup41:                               ; preds = %for.cond39
  store i32 11, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i38) #9
  br label %for.end49

for.body42:                                       ; preds = %for.cond39
  %call43 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str)
  %31 = load i32, ptr %i38, align 4, !tbaa !5
  %idxprom44 = sext i32 %31 to i64
  %arrayidx45 = getelementptr inbounds i32, ptr %vla, i64 %idxprom44
  %32 = load i32, ptr %arrayidx45, align 4, !tbaa !5
  %call46 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %call43, i32 noundef %32)
  br label %for.inc47

for.inc47:                                        ; preds = %for.body42
  %33 = load i32, ptr %i38, align 4, !tbaa !5
  %inc48 = add nsw i32 %33, 1
  store i32 %inc48, ptr %i38, align 4, !tbaa !5
  br label %for.cond39, !llvm.loop !14

for.end49:                                        ; preds = %for.cond.cleanup41
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %t) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #9
  %34 = load ptr, ptr %saved_stack, align 8
  call void @llvm.stackrestore.p0(ptr %34)
  call void @llvm.lifetime.end.p0(i64 4, ptr %N) #9
  %35 = load i32, ptr %retval, align 4
  ret i32 %35
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) #2

; Function Attrs: inlinehint mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %__out, ptr noundef %__s) #4 {
entry:
  %__out.addr = alloca ptr, align 8
  %__s.addr = alloca ptr, align 8
  store ptr %__out, ptr %__out.addr, align 8, !tbaa !15
  store ptr %__s, ptr %__s.addr, align 8, !tbaa !18
  %0 = load ptr, ptr %__s.addr, align 8, !tbaa !18
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %__out.addr, align 8, !tbaa !15, !nonnull !20, !align !21
  %vtable = load ptr, ptr %1, align 8, !tbaa !22
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %1, i64 %vbase.offset
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr, i32 noundef 1)
  br label %if.end

if.else:                                          ; preds = %entry
  %2 = load ptr, ptr %__out.addr, align 8, !tbaa !15, !nonnull !20, !align !21
  %3 = load ptr, ptr %__s.addr, align 8, !tbaa !18
  %4 = load ptr, ptr %__s.addr, align 8, !tbaa !18
  %call = call noundef i64 @_ZNSt11char_traitsIcE6lengthEPKc(ptr noundef %4)
  %call1 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, i64 noundef %call)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load ptr, ptr %__out.addr, align 8, !tbaa !15, !nonnull !20, !align !21
  ret ptr %5
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore.p0(ptr) #3

; Function Attrs: mustprogress uwtable
define available_externally void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %this, i32 noundef %__state) #5 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__state.addr = alloca i32, align 4
  store ptr %this, ptr %this.addr, align 8, !tbaa !24
  store i32 %__state, ptr %__state.addr, align 4, !tbaa !26
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef i32 @_ZNKSt9basic_iosIcSt11char_traitsIcEE7rdstateEv(ptr noundef nonnull align 8 dereferenceable(264) %this1)
  %0 = load i32, ptr %__state.addr, align 4, !tbaa !26
  %call2 = call noundef i32 @_ZStorSt12_Ios_IostateS_(i32 noundef %call, i32 noundef %0)
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %this1, i32 noundef %call2)
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt11char_traitsIcE6lengthEPKc(ptr noundef %__s) #6 comdat align 2 {
entry:
  %__s.addr = alloca ptr, align 8
  store ptr %__s, ptr %__s.addr, align 8, !tbaa !18
  %0 = load ptr, ptr %__s.addr, align 8, !tbaa !18
  %call = call i64 @strlen(ptr noundef %0) #9
  ret i64 %call
}

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZStorSt12_Ios_IostateS_(i32 noundef %__a, i32 noundef %__b) #7 comdat {
entry:
  %__a.addr = alloca i32, align 4
  %__b.addr = alloca i32, align 4
  store i32 %__a, ptr %__a.addr, align 4, !tbaa !26
  store i32 %__b, ptr %__b.addr, align 4, !tbaa !26
  %0 = load i32, ptr %__a.addr, align 4, !tbaa !26
  %1 = load i32, ptr %__b.addr, align 4, !tbaa !26
  %or = or i32 %0, %1
  ret i32 %or
}

; Function Attrs: mustprogress nounwind uwtable
define available_externally noundef i32 @_ZNKSt9basic_iosIcSt11char_traitsIcEE7rdstateEv(ptr noundef nonnull align 8 dereferenceable(264) %this) #6 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !24
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_streambuf_state = getelementptr inbounds nuw %"class.std::ios_base", ptr %this1, i32 0, i32 5
  %0 = load i32, ptr %_M_streambuf_state, align 8, !tbaa !28
  ret i32 %0
}

; Function Attrs: nounwind
declare i64 @strlen(ptr noundef) #8

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind }

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
!18 = !{!19, !19, i64 0}
!19 = !{!"p1 omnipotent char", !17, i64 0}
!20 = !{}
!21 = !{i64 8}
!22 = !{!23, !23, i64 0}
!23 = !{!"vtable pointer", !8, i64 0}
!24 = !{!25, !25, i64 0}
!25 = !{!"p1 _ZTSSt9basic_iosIcSt11char_traitsIcEE", !17, i64 0}
!26 = !{!27, !27, i64 0}
!27 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!28 = !{!29, !27, i64 32}
!29 = !{!"_ZTSSt8ios_base", !30, i64 8, !30, i64 16, !31, i64 24, !27, i64 28, !27, i64 32, !32, i64 40, !33, i64 48, !7, i64 64, !6, i64 192, !34, i64 200, !35, i64 208}
!30 = !{!"long", !7, i64 0}
!31 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!32 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !17, i64 0}
!33 = !{!"_ZTSNSt8ios_base6_WordsE", !17, i64 0, !30, i64 8}
!34 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !17, i64 0}
!35 = !{!"_ZTSSt6locale", !36, i64 0}
!36 = !{!"p1 _ZTSNSt6locale5_ImplE", !17, i64 0}
