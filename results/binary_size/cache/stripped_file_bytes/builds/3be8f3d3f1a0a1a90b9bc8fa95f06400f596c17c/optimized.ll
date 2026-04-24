; ModuleID = '/tmp/tmpa57as3vu.cpp'
source_filename = "/tmp/tmpa57as3vu.cpp"
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
@stdin = external global ptr, align 8

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %N = alloca i32, align 4
  %a = alloca [500 x i32], align 16
  %i = alloca i32, align 4
  %d = alloca i32, align 4
  %p = alloca i32, align 4
  %b = alloca [500 x i32], align 16
  %m = alloca i32, align 4
  %n = alloca i32, align 4
  %x = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %N) #8
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %N)
  call void @llvm.lifetime.start.p0(i64 2000, ptr %a) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #8
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %N, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [500 x i32], ptr %a, i64 0, i64 %idxprom
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %3, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %d) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %p) #8
  store i32 0, ptr %p, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 2000, ptr %b) #8
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc13, %for.end
  %4 = load i32, ptr %i, align 4, !tbaa !5
  %5 = load i32, ptr %N, align 4, !tbaa !5
  %cmp3 = icmp slt i32 %4, %5
  br i1 %cmp3, label %for.body4, label %for.end15

for.body4:                                        ; preds = %for.cond2
  %6 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom5 = sext i32 %6 to i64
  %arrayidx6 = getelementptr inbounds [500 x i32], ptr %a, i64 0, i64 %idxprom5
  %7 = load i32, ptr %arrayidx6, align 4, !tbaa !5
  %rem = srem i32 %7, 2
  store i32 %rem, ptr %d, align 4, !tbaa !5
  %8 = load i32, ptr %d, align 4, !tbaa !5
  %cmp7 = icmp eq i32 %8, 1
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %for.body4
  %9 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom8 = sext i32 %9 to i64
  %arrayidx9 = getelementptr inbounds [500 x i32], ptr %a, i64 0, i64 %idxprom8
  %10 = load i32, ptr %arrayidx9, align 4, !tbaa !5
  %11 = load i32, ptr %p, align 4, !tbaa !5
  %inc10 = add nsw i32 %11, 1
  store i32 %inc10, ptr %p, align 4, !tbaa !5
  %idxprom11 = sext i32 %11 to i64
  %arrayidx12 = getelementptr inbounds [500 x i32], ptr %b, i64 0, i64 %idxprom11
  store i32 %10, ptr %arrayidx12, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body4
  br label %for.inc13

for.inc13:                                        ; preds = %if.end
  %12 = load i32, ptr %i, align 4, !tbaa !5
  %inc14 = add nsw i32 %12, 1
  store i32 %inc14, ptr %i, align 4, !tbaa !5
  br label %for.cond2, !llvm.loop !12

for.end15:                                        ; preds = %for.cond2
  call void @llvm.lifetime.start.p0(i64 4, ptr %m) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %x) #8
  store i32 0, ptr %m, align 4, !tbaa !5
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc44, %for.end15
  %13 = load i32, ptr %m, align 4, !tbaa !5
  %14 = load i32, ptr %p, align 4, !tbaa !5
  %sub = sub nsw i32 %14, 1
  %cmp17 = icmp slt i32 %13, %sub
  br i1 %cmp17, label %for.body18, label %for.end46

for.body18:                                       ; preds = %for.cond16
  store i32 0, ptr %n, align 4, !tbaa !5
  br label %for.cond19

for.cond19:                                       ; preds = %for.inc41, %for.body18
  %15 = load i32, ptr %n, align 4, !tbaa !5
  %16 = load i32, ptr %p, align 4, !tbaa !5
  %sub20 = sub nsw i32 %16, 1
  %17 = load i32, ptr %m, align 4, !tbaa !5
  %sub21 = sub nsw i32 %sub20, %17
  %cmp22 = icmp slt i32 %15, %sub21
  br i1 %cmp22, label %for.body23, label %for.end43

for.body23:                                       ; preds = %for.cond19
  %18 = load i32, ptr %n, align 4, !tbaa !5
  %idxprom24 = sext i32 %18 to i64
  %arrayidx25 = getelementptr inbounds [500 x i32], ptr %b, i64 0, i64 %idxprom24
  %19 = load i32, ptr %arrayidx25, align 4, !tbaa !5
  %20 = load i32, ptr %n, align 4, !tbaa !5
  %add = add nsw i32 %20, 1
  %idxprom26 = sext i32 %add to i64
  %arrayidx27 = getelementptr inbounds [500 x i32], ptr %b, i64 0, i64 %idxprom26
  %21 = load i32, ptr %arrayidx27, align 4, !tbaa !5
  %cmp28 = icmp sgt i32 %19, %21
  br i1 %cmp28, label %if.then29, label %if.end40

if.then29:                                        ; preds = %for.body23
  %22 = load i32, ptr %n, align 4, !tbaa !5
  %idxprom30 = sext i32 %22 to i64
  %arrayidx31 = getelementptr inbounds [500 x i32], ptr %b, i64 0, i64 %idxprom30
  %23 = load i32, ptr %arrayidx31, align 4, !tbaa !5
  store i32 %23, ptr %x, align 4, !tbaa !5
  %24 = load i32, ptr %n, align 4, !tbaa !5
  %add32 = add nsw i32 %24, 1
  %idxprom33 = sext i32 %add32 to i64
  %arrayidx34 = getelementptr inbounds [500 x i32], ptr %b, i64 0, i64 %idxprom33
  %25 = load i32, ptr %arrayidx34, align 4, !tbaa !5
  %26 = load i32, ptr %n, align 4, !tbaa !5
  %idxprom35 = sext i32 %26 to i64
  %arrayidx36 = getelementptr inbounds [500 x i32], ptr %b, i64 0, i64 %idxprom35
  store i32 %25, ptr %arrayidx36, align 4, !tbaa !5
  %27 = load i32, ptr %x, align 4, !tbaa !5
  %28 = load i32, ptr %n, align 4, !tbaa !5
  %add37 = add nsw i32 %28, 1
  %idxprom38 = sext i32 %add37 to i64
  %arrayidx39 = getelementptr inbounds [500 x i32], ptr %b, i64 0, i64 %idxprom38
  store i32 %27, ptr %arrayidx39, align 4, !tbaa !5
  br label %if.end40

if.end40:                                         ; preds = %if.then29, %for.body23
  br label %for.inc41

for.inc41:                                        ; preds = %if.end40
  %29 = load i32, ptr %n, align 4, !tbaa !5
  %inc42 = add nsw i32 %29, 1
  store i32 %inc42, ptr %n, align 4, !tbaa !5
  br label %for.cond19, !llvm.loop !13

for.end43:                                        ; preds = %for.cond19
  br label %for.inc44

for.inc44:                                        ; preds = %for.end43
  %30 = load i32, ptr %m, align 4, !tbaa !5
  %inc45 = add nsw i32 %30, 1
  store i32 %inc45, ptr %m, align 4, !tbaa !5
  br label %for.cond16, !llvm.loop !14

for.end46:                                        ; preds = %for.cond16
  store i32 0, ptr %n, align 4, !tbaa !5
  br label %for.cond47

for.cond47:                                       ; preds = %for.inc55, %for.end46
  %31 = load i32, ptr %n, align 4, !tbaa !5
  %32 = load i32, ptr %p, align 4, !tbaa !5
  %sub48 = sub nsw i32 %32, 1
  %cmp49 = icmp slt i32 %31, %sub48
  br i1 %cmp49, label %for.body50, label %for.end57

for.body50:                                       ; preds = %for.cond47
  %33 = load i32, ptr %n, align 4, !tbaa !5
  %idxprom51 = sext i32 %33 to i64
  %arrayidx52 = getelementptr inbounds [500 x i32], ptr %b, i64 0, i64 %idxprom51
  %34 = load i32, ptr %arrayidx52, align 4, !tbaa !5
  %call53 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %34)
  %call54 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %call53, ptr noundef @.str)
  br label %for.inc55

for.inc55:                                        ; preds = %for.body50
  %35 = load i32, ptr %n, align 4, !tbaa !5
  %inc56 = add nsw i32 %35, 1
  store i32 %inc56, ptr %n, align 4, !tbaa !5
  br label %for.cond47, !llvm.loop !15

for.end57:                                        ; preds = %for.cond47
  %36 = load i32, ptr %p, align 4, !tbaa !5
  %sub58 = sub nsw i32 %36, 1
  %idxprom59 = sext i32 %sub58 to i64
  %arrayidx60 = getelementptr inbounds [500 x i32], ptr %b, i64 0, i64 %idxprom59
  %37 = load i32, ptr %arrayidx60, align 4, !tbaa !5
  %call61 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %37)
  %call62 = call i32 @getchar()
  %call63 = call i32 @getchar()
  call void @llvm.lifetime.end.p0(i64 4, ptr %x) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %m) #8
  call void @llvm.lifetime.end.p0(i64 2000, ptr %b) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %p) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %d) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #8
  call void @llvm.lifetime.end.p0(i64 2000, ptr %a) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %N) #8
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) #2

; Function Attrs: inlinehint mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %__out, ptr noundef %__s) #3 {
entry:
  %__out.addr = alloca ptr, align 8
  %__s.addr = alloca ptr, align 8
  store ptr %__out, ptr %__out.addr, align 8, !tbaa !16
  store ptr %__s, ptr %__s.addr, align 8, !tbaa !19
  %0 = load ptr, ptr %__s.addr, align 8, !tbaa !19
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %__out.addr, align 8, !tbaa !16, !nonnull !21, !align !22
  %vtable = load ptr, ptr %1, align 8, !tbaa !23
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %1, i64 %vbase.offset
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr, i32 noundef 1)
  br label %if.end

if.else:                                          ; preds = %entry
  %2 = load ptr, ptr %__out.addr, align 8, !tbaa !16, !nonnull !21, !align !22
  %3 = load ptr, ptr %__s.addr, align 8, !tbaa !19
  %4 = load ptr, ptr %__s.addr, align 8, !tbaa !19
  %call = call noundef i64 @_ZNSt11char_traitsIcE6lengthEPKc(ptr noundef %4)
  %call1 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, i64 noundef %call)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load ptr, ptr %__out.addr, align 8, !tbaa !16, !nonnull !21, !align !22
  ret ptr %5
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) #2

; Function Attrs: inlinehint mustprogress uwtable
define available_externally i32 @getchar() #3 {
entry:
  %0 = load ptr, ptr @stdin, align 8, !tbaa !25
  %call = call i32 @getc(ptr noundef %0)
  ret i32 %call
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare i32 @getc(ptr noundef) #2

; Function Attrs: mustprogress uwtable
define available_externally void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %this, i32 noundef %__state) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__state.addr = alloca i32, align 4
  store ptr %this, ptr %this.addr, align 8, !tbaa !27
  store i32 %__state, ptr %__state.addr, align 4, !tbaa !29
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef i32 @_ZNKSt9basic_iosIcSt11char_traitsIcEE7rdstateEv(ptr noundef nonnull align 8 dereferenceable(264) %this1)
  %0 = load i32, ptr %__state.addr, align 4, !tbaa !29
  %call2 = call noundef i32 @_ZStorSt12_Ios_IostateS_(i32 noundef %call, i32 noundef %0)
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %this1, i32 noundef %call2)
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt11char_traitsIcE6lengthEPKc(ptr noundef %__s) #5 comdat align 2 {
entry:
  %__s.addr = alloca ptr, align 8
  store ptr %__s, ptr %__s.addr, align 8, !tbaa !19
  %0 = load ptr, ptr %__s.addr, align 8, !tbaa !19
  %call = call i64 @strlen(ptr noundef %0) #8
  ret i64 %call
}

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZStorSt12_Ios_IostateS_(i32 noundef %__a, i32 noundef %__b) #6 comdat {
entry:
  %__a.addr = alloca i32, align 4
  %__b.addr = alloca i32, align 4
  store i32 %__a, ptr %__a.addr, align 4, !tbaa !29
  store i32 %__b, ptr %__b.addr, align 4, !tbaa !29
  %0 = load i32, ptr %__a.addr, align 4, !tbaa !29
  %1 = load i32, ptr %__b.addr, align 4, !tbaa !29
  %or = or i32 %0, %1
  ret i32 %or
}

; Function Attrs: mustprogress nounwind uwtable
define available_externally noundef i32 @_ZNKSt9basic_iosIcSt11char_traitsIcEE7rdstateEv(ptr noundef nonnull align 8 dereferenceable(264) %this) #5 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !27
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_streambuf_state = getelementptr inbounds nuw %"class.std::ios_base", ptr %this1, i32 0, i32 5
  %0 = load i32, ptr %_M_streambuf_state, align 8, !tbaa !31
  ret i32 %0
}

; Function Attrs: nounwind
declare i64 @strlen(ptr noundef) #7

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!12 = distinct !{!12, !10, !11}
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
!16 = !{!17, !17, i64 0}
!17 = !{!"p1 _ZTSSo", !18, i64 0}
!18 = !{!"any pointer", !7, i64 0}
!19 = !{!20, !20, i64 0}
!20 = !{!"p1 omnipotent char", !18, i64 0}
!21 = !{}
!22 = !{i64 8}
!23 = !{!24, !24, i64 0}
!24 = !{!"vtable pointer", !8, i64 0}
!25 = !{!26, !26, i64 0}
!26 = !{!"p1 _ZTS8_IO_FILE", !18, i64 0}
!27 = !{!28, !28, i64 0}
!28 = !{!"p1 _ZTSSt9basic_iosIcSt11char_traitsIcEE", !18, i64 0}
!29 = !{!30, !30, i64 0}
!30 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!31 = !{!32, !30, i64 32}
!32 = !{!"_ZTSSt8ios_base", !33, i64 8, !33, i64 16, !34, i64 24, !30, i64 28, !30, i64 32, !35, i64 40, !36, i64 48, !7, i64 64, !6, i64 192, !37, i64 200, !38, i64 208}
!33 = !{!"long", !7, i64 0}
!34 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!35 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !18, i64 0}
!36 = !{!"_ZTSNSt8ios_base6_WordsE", !18, i64 0, !33, i64 8}
!37 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !18, i64 0}
!38 = !{!"_ZTSSt6locale", !39, i64 0}
!39 = !{!"p1 _ZTSNSt6locale5_ImplE", !18, i64 0}
