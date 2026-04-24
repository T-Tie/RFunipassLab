; ModuleID = '/tmp/tmp5djapv0z.cpp'
source_filename = "/tmp/tmp5djapv0z.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }

$_ZNKSt8ios_base5widthEv = comdat any

$_ZNSt11char_traitsIcE6lengthEPKc = comdat any

$_ZStorSt12_Ios_IostateS_ = comdat any

@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@stdin = external global ptr, align 8

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %count = alloca i32, align 4
  %a = alloca [10000 x [50 x i8]], align 16
  %c = alloca i8, align 1
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #9
  store i32 0, ptr %i, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #9
  store i32 0, ptr %j, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %count) #9
  store i32 0, ptr %count, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 500000, ptr %a) #9
  call void @llvm.memset.p0.i64(ptr align 16 %a, i8 0, i64 500000, i1 false)
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #9
  %call = call i32 @getchar()
  %conv = trunc i32 %call to i8
  store i8 %conv, ptr %c, align 1, !tbaa !9
  br label %while.cond

while.cond:                                       ; preds = %if.end16, %if.then5, %entry
  %0 = load i8, ptr %c, align 1, !tbaa !9
  %conv1 = sext i8 %0 to i32
  %cmp = icmp ne i32 %conv1, 10
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i8, ptr %c, align 1, !tbaa !9
  %conv2 = sext i8 %1 to i32
  %cmp3 = icmp eq i32 %conv2, 32
  br i1 %cmp3, label %if.then, label %if.else12

if.then:                                          ; preds = %while.body
  %2 = load i32, ptr %count, align 4, !tbaa !5
  %cmp4 = icmp ne i32 %2, 0
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.then
  %call6 = call i32 @getchar()
  %conv7 = trunc i32 %call6 to i8
  store i8 %conv7, ptr %c, align 1, !tbaa !9
  br label %while.cond, !llvm.loop !10

if.else:                                          ; preds = %if.then
  %3 = load i32, ptr %count, align 4, !tbaa !5
  %cmp8 = icmp eq i32 %3, 0
  br i1 %cmp8, label %if.then9, label %if.end

if.then9:                                         ; preds = %if.else
  %4 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  store i32 0, ptr %j, align 4, !tbaa !5
  %5 = load i32, ptr %count, align 4, !tbaa !5
  %inc10 = add nsw i32 %5, 1
  store i32 %inc10, ptr %count, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then9, %if.else
  br label %if.end11

if.end11:                                         ; preds = %if.end
  br label %if.end16

if.else12:                                        ; preds = %while.body
  %6 = load i8, ptr %c, align 1, !tbaa !9
  %7 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds [10000 x [50 x i8]], ptr %a, i64 0, i64 %idxprom
  %8 = load i32, ptr %j, align 4, !tbaa !5
  %inc13 = add nsw i32 %8, 1
  store i32 %inc13, ptr %j, align 4, !tbaa !5
  %idxprom14 = sext i32 %8 to i64
  %arrayidx15 = getelementptr inbounds [50 x i8], ptr %arrayidx, i64 0, i64 %idxprom14
  store i8 %6, ptr %arrayidx15, align 1, !tbaa !9
  store i32 0, ptr %count, align 4, !tbaa !5
  br label %if.end16

if.end16:                                         ; preds = %if.else12, %if.end11
  %call17 = call i32 @getchar()
  %conv18 = trunc i32 %call17 to i8
  store i8 %conv18, ptr %c, align 1, !tbaa !9
  br label %while.cond, !llvm.loop !10

while.end:                                        ; preds = %while.cond
  %9 = load i32, ptr %i, align 4, !tbaa !5
  store i32 %9, ptr %count, align 4, !tbaa !5
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc35, %while.end
  %10 = load i32, ptr %i, align 4, !tbaa !5
  %11 = load i32, ptr %count, align 4, !tbaa !5
  %cmp19 = icmp slt i32 %10, %11
  br i1 %cmp19, label %for.body, label %for.end37

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond20

for.cond20:                                       ; preds = %for.inc, %for.body
  %12 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom21 = sext i32 %12 to i64
  %arrayidx22 = getelementptr inbounds [10000 x [50 x i8]], ptr %a, i64 0, i64 %idxprom21
  %13 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom23 = sext i32 %13 to i64
  %arrayidx24 = getelementptr inbounds [50 x i8], ptr %arrayidx22, i64 0, i64 %idxprom23
  %14 = load i8, ptr %arrayidx24, align 1, !tbaa !9
  %conv25 = sext i8 %14 to i32
  %cmp26 = icmp ne i32 %conv25, 0
  br i1 %cmp26, label %for.body27, label %for.end

for.body27:                                       ; preds = %for.cond20
  %15 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom28 = sext i32 %15 to i64
  %arrayidx29 = getelementptr inbounds [10000 x [50 x i8]], ptr %a, i64 0, i64 %idxprom28
  %16 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom30 = sext i32 %16 to i64
  %arrayidx31 = getelementptr inbounds [50 x i8], ptr %arrayidx29, i64 0, i64 %idxprom30
  %17 = load i8, ptr %arrayidx31, align 1, !tbaa !9
  %call32 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %17)
  br label %for.inc

for.inc:                                          ; preds = %for.body27
  %18 = load i32, ptr %j, align 4, !tbaa !5
  %inc33 = add nsw i32 %18, 1
  store i32 %inc33, ptr %j, align 4, !tbaa !5
  br label %for.cond20, !llvm.loop !13

for.end:                                          ; preds = %for.cond20
  %call34 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str)
  br label %for.inc35

for.inc35:                                        ; preds = %for.end
  %19 = load i32, ptr %i, align 4, !tbaa !5
  %inc36 = add nsw i32 %19, 1
  store i32 %inc36, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !14

for.end37:                                        ; preds = %for.cond
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond38

for.cond38:                                       ; preds = %for.inc51, %for.end37
  %20 = load i32, ptr %count, align 4, !tbaa !5
  %idxprom39 = sext i32 %20 to i64
  %arrayidx40 = getelementptr inbounds [10000 x [50 x i8]], ptr %a, i64 0, i64 %idxprom39
  %21 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom41 = sext i32 %21 to i64
  %arrayidx42 = getelementptr inbounds [50 x i8], ptr %arrayidx40, i64 0, i64 %idxprom41
  %22 = load i8, ptr %arrayidx42, align 1, !tbaa !9
  %conv43 = sext i8 %22 to i32
  %cmp44 = icmp ne i32 %conv43, 0
  br i1 %cmp44, label %for.body45, label %for.end53

for.body45:                                       ; preds = %for.cond38
  %23 = load i32, ptr %count, align 4, !tbaa !5
  %idxprom46 = sext i32 %23 to i64
  %arrayidx47 = getelementptr inbounds [10000 x [50 x i8]], ptr %a, i64 0, i64 %idxprom46
  %24 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom48 = sext i32 %24 to i64
  %arrayidx49 = getelementptr inbounds [50 x i8], ptr %arrayidx47, i64 0, i64 %idxprom48
  %25 = load i8, ptr %arrayidx49, align 1, !tbaa !9
  %call50 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %25)
  br label %for.inc51

for.inc51:                                        ; preds = %for.body45
  %26 = load i32, ptr %i, align 4, !tbaa !5
  %inc52 = add nsw i32 %26, 1
  store i32 %inc52, ptr %i, align 4, !tbaa !5
  br label %for.cond38, !llvm.loop !15

for.end53:                                        ; preds = %for.cond38
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #9
  call void @llvm.lifetime.end.p0(i64 500000, ptr %a) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %count) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #9
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: inlinehint mustprogress uwtable
define available_externally i32 @getchar() #3 {
entry:
  %0 = load ptr, ptr @stdin, align 8, !tbaa !16
  %call = call i32 @getc(ptr noundef %0)
  ret i32 %call
}

; Function Attrs: inlinehint mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) %__out, i8 noundef signext %__c) #3 {
entry:
  %retval = alloca ptr, align 8
  %__out.addr = alloca ptr, align 8
  %__c.addr = alloca i8, align 1
  store ptr %__out, ptr %__out.addr, align 8, !tbaa !19
  store i8 %__c, ptr %__c.addr, align 1, !tbaa !9
  %0 = load ptr, ptr %__out.addr, align 8, !tbaa !19, !nonnull !21, !align !22
  %vtable = load ptr, ptr %0, align 8, !tbaa !23
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %0, i64 %vbase.offset
  %call = call noundef i64 @_ZNKSt8ios_base5widthEv(ptr noundef nonnull align 8 dereferenceable(216) %add.ptr)
  %cmp = icmp ne i64 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %__out.addr, align 8, !tbaa !19, !nonnull !21, !align !22
  %call1 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %__c.addr, i64 noundef 1)
  store ptr %call1, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %__out.addr, align 8, !tbaa !19, !nonnull !21, !align !22
  %3 = load i8, ptr %__c.addr, align 1, !tbaa !9
  %call2 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %2, i8 noundef signext %3)
  %4 = load ptr, ptr %__out.addr, align 8, !tbaa !19, !nonnull !21, !align !22
  store ptr %4, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load ptr, ptr %retval, align 8
  ret ptr %5
}

; Function Attrs: inlinehint mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %__out, ptr noundef %__s) #3 {
entry:
  %__out.addr = alloca ptr, align 8
  %__s.addr = alloca ptr, align 8
  store ptr %__out, ptr %__out.addr, align 8, !tbaa !19
  store ptr %__s, ptr %__s.addr, align 8, !tbaa !25
  %0 = load ptr, ptr %__s.addr, align 8, !tbaa !25
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %__out.addr, align 8, !tbaa !19, !nonnull !21, !align !22
  %vtable = load ptr, ptr %1, align 8, !tbaa !23
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %1, i64 %vbase.offset
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr, i32 noundef 1)
  br label %if.end

if.else:                                          ; preds = %entry
  %2 = load ptr, ptr %__out.addr, align 8, !tbaa !19, !nonnull !21, !align !22
  %3 = load ptr, ptr %__s.addr, align 8, !tbaa !25
  %4 = load ptr, ptr %__s.addr, align 8, !tbaa !25
  %call = call noundef i64 @_ZNSt11char_traitsIcE6lengthEPKc(ptr noundef %4)
  %call1 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, i64 noundef %call)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load ptr, ptr %__out.addr, align 8, !tbaa !19, !nonnull !21, !align !22
  ret ptr %5
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare i32 @getc(ptr noundef) #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt8ios_base5widthEv(ptr noundef nonnull align 8 dereferenceable(216) %this) #5 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !27
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_width = getelementptr inbounds nuw %"class.std::ios_base", ptr %this1, i32 0, i32 2
  %0 = load i64, ptr %_M_width, align 8, !tbaa !29
  ret i64 %0
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) #4

; Function Attrs: mustprogress uwtable
define available_externally void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %this, i32 noundef %__state) #6 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__state.addr = alloca i32, align 4
  store ptr %this, ptr %this.addr, align 8, !tbaa !39
  store i32 %__state, ptr %__state.addr, align 4, !tbaa !41
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef i32 @_ZNKSt9basic_iosIcSt11char_traitsIcEE7rdstateEv(ptr noundef nonnull align 8 dereferenceable(264) %this1)
  %0 = load i32, ptr %__state.addr, align 4, !tbaa !41
  %call2 = call noundef i32 @_ZStorSt12_Ios_IostateS_(i32 noundef %call, i32 noundef %0)
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %this1, i32 noundef %call2)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt11char_traitsIcE6lengthEPKc(ptr noundef %__s) #5 comdat align 2 {
entry:
  %__s.addr = alloca ptr, align 8
  store ptr %__s, ptr %__s.addr, align 8, !tbaa !25
  %0 = load ptr, ptr %__s.addr, align 8, !tbaa !25
  %call = call i64 @strlen(ptr noundef %0) #9
  ret i64 %call
}

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZStorSt12_Ios_IostateS_(i32 noundef %__a, i32 noundef %__b) #7 comdat {
entry:
  %__a.addr = alloca i32, align 4
  %__b.addr = alloca i32, align 4
  store i32 %__a, ptr %__a.addr, align 4, !tbaa !41
  store i32 %__b, ptr %__b.addr, align 4, !tbaa !41
  %0 = load i32, ptr %__a.addr, align 4, !tbaa !41
  %1 = load i32, ptr %__b.addr, align 4, !tbaa !41
  %or = or i32 %0, %1
  ret i32 %or
}

; Function Attrs: mustprogress nounwind uwtable
define available_externally noundef i32 @_ZNKSt9basic_iosIcSt11char_traitsIcEE7rdstateEv(ptr noundef nonnull align 8 dereferenceable(264) %this) #5 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !39
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_streambuf_state = getelementptr inbounds nuw %"class.std::ios_base", ptr %this1, i32 0, i32 5
  %0 = load i32, ptr %_M_streambuf_state, align 8, !tbaa !42
  ret i32 %0
}

; Function Attrs: nounwind
declare i64 @strlen(ptr noundef) #8

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!9 = !{!7, !7, i64 0}
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = distinct !{!13, !11, !12}
!14 = distinct !{!14, !11, !12}
!15 = distinct !{!15, !11, !12}
!16 = !{!17, !17, i64 0}
!17 = !{!"p1 _ZTS8_IO_FILE", !18, i64 0}
!18 = !{!"any pointer", !7, i64 0}
!19 = !{!20, !20, i64 0}
!20 = !{!"p1 _ZTSSo", !18, i64 0}
!21 = !{}
!22 = !{i64 8}
!23 = !{!24, !24, i64 0}
!24 = !{!"vtable pointer", !8, i64 0}
!25 = !{!26, !26, i64 0}
!26 = !{!"p1 omnipotent char", !18, i64 0}
!27 = !{!28, !28, i64 0}
!28 = !{!"p1 _ZTSSt8ios_base", !18, i64 0}
!29 = !{!30, !31, i64 16}
!30 = !{!"_ZTSSt8ios_base", !31, i64 8, !31, i64 16, !32, i64 24, !33, i64 28, !33, i64 32, !34, i64 40, !35, i64 48, !7, i64 64, !6, i64 192, !36, i64 200, !37, i64 208}
!31 = !{!"long", !7, i64 0}
!32 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!33 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!34 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !18, i64 0}
!35 = !{!"_ZTSNSt8ios_base6_WordsE", !18, i64 0, !31, i64 8}
!36 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !18, i64 0}
!37 = !{!"_ZTSSt6locale", !38, i64 0}
!38 = !{!"p1 _ZTSNSt6locale5_ImplE", !18, i64 0}
!39 = !{!40, !40, i64 0}
!40 = !{!"p1 _ZTSSt9basic_iosIcSt11char_traitsIcEE", !18, i64 0}
!41 = !{!33, !33, i64 0}
!42 = !{!30, !33, i64 32}
