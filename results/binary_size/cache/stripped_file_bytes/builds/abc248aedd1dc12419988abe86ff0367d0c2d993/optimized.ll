; ModuleID = '/tmp/tmpt77tp_fk.cpp'
source_filename = "/tmp/tmpt77tp_fk.cpp"
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
  %n = alloca i32, align 4
  %N = alloca i32, align 4
  %saved_stack = alloca ptr, align 8
  %__vla_expr0 = alloca i64, align 8
  %__vla_expr1 = alloca i64, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %h = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #9
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  call void @llvm.lifetime.start.p0(i64 4, ptr %N) #9
  %0 = load i32, ptr %n, align 4, !tbaa !5
  store i32 %0, ptr %N, align 4, !tbaa !5
  %1 = load i32, ptr %N, align 4, !tbaa !5
  %2 = zext i32 %1 to i64
  %3 = call ptr @llvm.stacksave.p0()
  store ptr %3, ptr %saved_stack, align 8
  %vla = alloca i32, i64 %2, align 16
  store i64 %2, ptr %__vla_expr0, align 8
  %4 = load i32, ptr %N, align 4, !tbaa !5
  %5 = zext i32 %4 to i64
  %vla1 = alloca i32, i64 %5, align 16
  store i64 %5, ptr %__vla_expr1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #9
  store i32 0, ptr %k, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %h) #9
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, ptr %i, align 4, !tbaa !5
  %7 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %6, %7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds i32, ptr %vla, i64 %idxprom
  %call2 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx)
  %9 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom3 = sext i32 %9 to i64
  %arrayidx4 = getelementptr inbounds i32, ptr %vla, i64 %idxprom3
  %10 = load i32, ptr %arrayidx4, align 4, !tbaa !5
  %rem = srem i32 %10, 2
  %cmp5 = icmp eq i32 %rem, 1
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %11 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom6 = sext i32 %11 to i64
  %arrayidx7 = getelementptr inbounds i32, ptr %vla, i64 %idxprom6
  %12 = load i32, ptr %arrayidx7, align 4, !tbaa !5
  %13 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom8 = sext i32 %13 to i64
  %arrayidx9 = getelementptr inbounds i32, ptr %vla1, i64 %idxprom8
  store i32 %12, ptr %arrayidx9, align 4, !tbaa !5
  %14 = load i32, ptr %k, align 4, !tbaa !5
  %inc = add nsw i32 %14, 1
  store i32 %inc, ptr %k, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %15 = load i32, ptr %i, align 4, !tbaa !5
  %inc10 = add nsw i32 %15, 1
  store i32 %inc10, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc37, %for.end
  %16 = load i32, ptr %i, align 4, !tbaa !5
  %17 = load i32, ptr %k, align 4, !tbaa !5
  %cmp12 = icmp slt i32 %16, %17
  br i1 %cmp12, label %for.body13, label %for.end39

for.body13:                                       ; preds = %for.cond11
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc34, %for.body13
  %18 = load i32, ptr %j, align 4, !tbaa !5
  %19 = load i32, ptr %k, align 4, !tbaa !5
  %20 = load i32, ptr %i, align 4, !tbaa !5
  %sub = sub nsw i32 %19, %20
  %cmp15 = icmp slt i32 %18, %sub
  br i1 %cmp15, label %for.body16, label %for.end36

for.body16:                                       ; preds = %for.cond14
  %21 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom17 = sext i32 %21 to i64
  %arrayidx18 = getelementptr inbounds i32, ptr %vla1, i64 %idxprom17
  %22 = load i32, ptr %arrayidx18, align 4, !tbaa !5
  %23 = load i32, ptr %j, align 4, !tbaa !5
  %add = add nsw i32 %23, 1
  %idxprom19 = sext i32 %add to i64
  %arrayidx20 = getelementptr inbounds i32, ptr %vla1, i64 %idxprom19
  %24 = load i32, ptr %arrayidx20, align 4, !tbaa !5
  %cmp21 = icmp sge i32 %22, %24
  br i1 %cmp21, label %if.then22, label %if.end33

if.then22:                                        ; preds = %for.body16
  %25 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom23 = sext i32 %25 to i64
  %arrayidx24 = getelementptr inbounds i32, ptr %vla1, i64 %idxprom23
  %26 = load i32, ptr %arrayidx24, align 4, !tbaa !5
  store i32 %26, ptr %h, align 4, !tbaa !5
  %27 = load i32, ptr %j, align 4, !tbaa !5
  %add25 = add nsw i32 %27, 1
  %idxprom26 = sext i32 %add25 to i64
  %arrayidx27 = getelementptr inbounds i32, ptr %vla1, i64 %idxprom26
  %28 = load i32, ptr %arrayidx27, align 4, !tbaa !5
  %29 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom28 = sext i32 %29 to i64
  %arrayidx29 = getelementptr inbounds i32, ptr %vla1, i64 %idxprom28
  store i32 %28, ptr %arrayidx29, align 4, !tbaa !5
  %30 = load i32, ptr %h, align 4, !tbaa !5
  %31 = load i32, ptr %j, align 4, !tbaa !5
  %add30 = add nsw i32 %31, 1
  %idxprom31 = sext i32 %add30 to i64
  %arrayidx32 = getelementptr inbounds i32, ptr %vla1, i64 %idxprom31
  store i32 %30, ptr %arrayidx32, align 4, !tbaa !5
  br label %if.end33

if.end33:                                         ; preds = %if.then22, %for.body16
  br label %for.inc34

for.inc34:                                        ; preds = %if.end33
  %32 = load i32, ptr %j, align 4, !tbaa !5
  %inc35 = add nsw i32 %32, 1
  store i32 %inc35, ptr %j, align 4, !tbaa !5
  br label %for.cond14, !llvm.loop !12

for.end36:                                        ; preds = %for.cond14
  br label %for.inc37

for.inc37:                                        ; preds = %for.end36
  %33 = load i32, ptr %i, align 4, !tbaa !5
  %inc38 = add nsw i32 %33, 1
  store i32 %inc38, ptr %i, align 4, !tbaa !5
  br label %for.cond11, !llvm.loop !13

for.end39:                                        ; preds = %for.cond11
  %arrayidx40 = getelementptr inbounds i32, ptr %vla1, i64 0
  %34 = load i32, ptr %arrayidx40, align 16, !tbaa !5
  %call41 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %34)
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond42

for.cond42:                                       ; preds = %for.inc49, %for.end39
  %35 = load i32, ptr %i, align 4, !tbaa !5
  %36 = load i32, ptr %k, align 4, !tbaa !5
  %cmp43 = icmp slt i32 %35, %36
  br i1 %cmp43, label %for.body44, label %for.end51

for.body44:                                       ; preds = %for.cond42
  %call45 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str)
  %37 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom46 = sext i32 %37 to i64
  %arrayidx47 = getelementptr inbounds i32, ptr %vla1, i64 %idxprom46
  %38 = load i32, ptr %arrayidx47, align 4, !tbaa !5
  %call48 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %call45, i32 noundef %38)
  br label %for.inc49

for.inc49:                                        ; preds = %for.body44
  %39 = load i32, ptr %i, align 4, !tbaa !5
  %inc50 = add nsw i32 %39, 1
  store i32 %inc50, ptr %i, align 4, !tbaa !5
  br label %for.cond42, !llvm.loop !14

for.end51:                                        ; preds = %for.cond42
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %h) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #9
  %40 = load ptr, ptr %saved_stack, align 8
  call void @llvm.stackrestore.p0(ptr %40)
  call void @llvm.lifetime.end.p0(i64 4, ptr %N) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #9
  %41 = load i32, ptr %retval, align 4
  ret i32 %41
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #3

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

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

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
