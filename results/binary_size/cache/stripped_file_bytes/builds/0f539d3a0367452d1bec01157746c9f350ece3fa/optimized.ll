; ModuleID = '/tmp/tmpq_8h1x8y.cpp'
source_filename = "/tmp/tmpq_8h1x8y.cpp"
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
@.str = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"2\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %ans = alloca [1000 x i32], align 16
  %j = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %k = alloca i32, align 4
  %len = alloca i32, align 4
  %j52 = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #9
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  call void @llvm.lifetime.start.p0(i64 4000, ptr %ans) #9
  call void @llvm.memset.p0.i64(ptr align 16 %ans, i8 0, i64 4000, i1 false)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call1 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str)
  br label %if.end86

if.else:                                          ; preds = %entry
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp2 = icmp eq i32 %1, 1
  br i1 %cmp2, label %if.then3, label %if.else5

if.then3:                                         ; preds = %if.else
  %call4 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str.1)
  br label %if.end85

if.else5:                                         ; preds = %if.else
  %arrayidx = getelementptr inbounds [1000 x i32], ptr %ans, i64 0, i64 0
  store i32 2, ptr %arrayidx, align 16, !tbaa !5
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc49, %if.else5
  %2 = load i32, ptr %i, align 4, !tbaa !5
  %3 = load i32, ptr %n, align 4, !tbaa !5
  %cmp6 = icmp slt i32 %2, %3
  br i1 %cmp6, label %for.body, label %for.end51

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #9
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc46, %for.body
  %4 = load i32, ptr %j, align 4, !tbaa !5
  %cmp8 = icmp slt i32 %4, 1000
  br i1 %cmp8, label %for.body9, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond7
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup

for.body9:                                        ; preds = %for.cond7
  %5 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom = sext i32 %5 to i64
  %arrayidx10 = getelementptr inbounds [1000 x i32], ptr %ans, i64 0, i64 %idxprom
  %6 = load i32, ptr %arrayidx10, align 4, !tbaa !5
  %cmp11 = icmp eq i32 %6, 0
  br i1 %cmp11, label %land.lhs.true, label %if.else37

land.lhs.true:                                    ; preds = %for.body9
  %7 = load i32, ptr %j, align 4, !tbaa !5
  %add = add nsw i32 %7, 1
  %idxprom12 = sext i32 %add to i64
  %arrayidx13 = getelementptr inbounds [1000 x i32], ptr %ans, i64 0, i64 %idxprom12
  %8 = load i32, ptr %arrayidx13, align 4, !tbaa !5
  %cmp14 = icmp eq i32 %8, 0
  br i1 %cmp14, label %land.lhs.true15, label %if.else37

land.lhs.true15:                                  ; preds = %land.lhs.true
  %9 = load i32, ptr %j, align 4, !tbaa !5
  %add16 = add nsw i32 %9, 2
  %idxprom17 = sext i32 %add16 to i64
  %arrayidx18 = getelementptr inbounds [1000 x i32], ptr %ans, i64 0, i64 %idxprom17
  %10 = load i32, ptr %arrayidx18, align 4, !tbaa !5
  %cmp19 = icmp eq i32 %10, 0
  br i1 %cmp19, label %if.then20, label %if.else37

if.then20:                                        ; preds = %land.lhs.true15
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #9
  store i32 0, ptr %k, align 4, !tbaa !5
  br label %for.cond21

for.cond21:                                       ; preds = %for.inc, %if.then20
  %11 = load i32, ptr %k, align 4, !tbaa !5
  %12 = load i32, ptr %j, align 4, !tbaa !5
  %sub = sub nsw i32 %12, 1
  %cmp22 = icmp sle i32 %11, %sub
  br i1 %cmp22, label %for.body24, label %for.cond.cleanup23

for.cond.cleanup23:                               ; preds = %for.cond21
  store i32 8, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #9
  br label %for.end

for.body24:                                       ; preds = %for.cond21
  %13 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom25 = sext i32 %13 to i64
  %arrayidx26 = getelementptr inbounds [1000 x i32], ptr %ans, i64 0, i64 %idxprom25
  %14 = load i32, ptr %arrayidx26, align 4, !tbaa !5
  %cmp27 = icmp sgt i32 %14, 9
  br i1 %cmp27, label %if.then28, label %if.end

if.then28:                                        ; preds = %for.body24
  %15 = load i32, ptr %k, align 4, !tbaa !5
  %add29 = add nsw i32 %15, 1
  %idxprom30 = sext i32 %add29 to i64
  %arrayidx31 = getelementptr inbounds [1000 x i32], ptr %ans, i64 0, i64 %idxprom30
  %16 = load i32, ptr %arrayidx31, align 4, !tbaa !5
  %inc = add nsw i32 %16, 1
  store i32 %inc, ptr %arrayidx31, align 4, !tbaa !5
  %17 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom32 = sext i32 %17 to i64
  %arrayidx33 = getelementptr inbounds [1000 x i32], ptr %ans, i64 0, i64 %idxprom32
  %18 = load i32, ptr %arrayidx33, align 4, !tbaa !5
  %rem = srem i32 %18, 10
  %19 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom34 = sext i32 %19 to i64
  %arrayidx35 = getelementptr inbounds [1000 x i32], ptr %ans, i64 0, i64 %idxprom34
  store i32 %rem, ptr %arrayidx35, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then28, %for.body24
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %20 = load i32, ptr %k, align 4, !tbaa !5
  %inc36 = add nsw i32 %20, 1
  store i32 %inc36, ptr %k, align 4, !tbaa !5
  br label %for.cond21, !llvm.loop !9

for.end:                                          ; preds = %for.cond.cleanup23
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else37:                                        ; preds = %land.lhs.true15, %land.lhs.true, %for.body9
  %21 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom38 = sext i32 %21 to i64
  %arrayidx39 = getelementptr inbounds [1000 x i32], ptr %ans, i64 0, i64 %idxprom38
  %22 = load i32, ptr %arrayidx39, align 4, !tbaa !5
  %23 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom40 = sext i32 %23 to i64
  %arrayidx41 = getelementptr inbounds [1000 x i32], ptr %ans, i64 0, i64 %idxprom40
  %24 = load i32, ptr %arrayidx41, align 4, !tbaa !5
  %add42 = add nsw i32 %22, %24
  %25 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom43 = sext i32 %25 to i64
  %arrayidx44 = getelementptr inbounds [1000 x i32], ptr %ans, i64 0, i64 %idxprom43
  store i32 %add42, ptr %arrayidx44, align 4, !tbaa !5
  br label %if.end45

if.end45:                                         ; preds = %if.else37
  br label %for.inc46

for.inc46:                                        ; preds = %if.end45
  %26 = load i32, ptr %j, align 4, !tbaa !5
  %inc47 = add nsw i32 %26, 1
  store i32 %inc47, ptr %j, align 4, !tbaa !5
  br label %for.cond7, !llvm.loop !12

cleanup:                                          ; preds = %for.end, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #9
  br label %for.end48

for.end48:                                        ; preds = %cleanup
  br label %for.inc49

for.inc49:                                        ; preds = %for.end48
  %27 = load i32, ptr %i, align 4, !tbaa !5
  %inc50 = add nsw i32 %27, 1
  store i32 %inc50, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !13

for.end51:                                        ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %j52) #9
  store i32 0, ptr %j52, align 4, !tbaa !5
  br label %for.cond53

for.cond53:                                       ; preds = %for.inc73, %for.end51
  %28 = load i32, ptr %j52, align 4, !tbaa !5
  %cmp54 = icmp slt i32 %28, 1000
  br i1 %cmp54, label %for.body56, label %for.cond.cleanup55

for.cond.cleanup55:                               ; preds = %for.cond53
  store i32 11, ptr %cleanup.dest.slot, align 4
  br label %cleanup75

for.body56:                                       ; preds = %for.cond53
  %29 = load i32, ptr %j52, align 4, !tbaa !5
  %idxprom57 = sext i32 %29 to i64
  %arrayidx58 = getelementptr inbounds [1000 x i32], ptr %ans, i64 0, i64 %idxprom57
  %30 = load i32, ptr %arrayidx58, align 4, !tbaa !5
  %cmp59 = icmp eq i32 %30, 0
  br i1 %cmp59, label %land.lhs.true60, label %if.end72

land.lhs.true60:                                  ; preds = %for.body56
  %31 = load i32, ptr %j52, align 4, !tbaa !5
  %add61 = add nsw i32 %31, 1
  %idxprom62 = sext i32 %add61 to i64
  %arrayidx63 = getelementptr inbounds [1000 x i32], ptr %ans, i64 0, i64 %idxprom62
  %32 = load i32, ptr %arrayidx63, align 4, !tbaa !5
  %cmp64 = icmp eq i32 %32, 0
  br i1 %cmp64, label %land.lhs.true65, label %if.end72

land.lhs.true65:                                  ; preds = %land.lhs.true60
  %33 = load i32, ptr %j52, align 4, !tbaa !5
  %add66 = add nsw i32 %33, 2
  %idxprom67 = sext i32 %add66 to i64
  %arrayidx68 = getelementptr inbounds [1000 x i32], ptr %ans, i64 0, i64 %idxprom67
  %34 = load i32, ptr %arrayidx68, align 4, !tbaa !5
  %cmp69 = icmp eq i32 %34, 0
  br i1 %cmp69, label %if.then70, label %if.end72

if.then70:                                        ; preds = %land.lhs.true65
  %35 = load i32, ptr %j52, align 4, !tbaa !5
  %sub71 = sub nsw i32 %35, 1
  store i32 %sub71, ptr %len, align 4, !tbaa !5
  store i32 11, ptr %cleanup.dest.slot, align 4
  br label %cleanup75

if.end72:                                         ; preds = %land.lhs.true65, %land.lhs.true60, %for.body56
  br label %for.inc73

for.inc73:                                        ; preds = %if.end72
  %36 = load i32, ptr %j52, align 4, !tbaa !5
  %inc74 = add nsw i32 %36, 1
  store i32 %inc74, ptr %j52, align 4, !tbaa !5
  br label %for.cond53, !llvm.loop !14

cleanup75:                                        ; preds = %if.then70, %for.cond.cleanup55
  call void @llvm.lifetime.end.p0(i64 4, ptr %j52) #9
  br label %for.end76

for.end76:                                        ; preds = %cleanup75
  %37 = load i32, ptr %len, align 4, !tbaa !5
  store i32 %37, ptr %i, align 4, !tbaa !5
  br label %for.cond77

for.cond77:                                       ; preds = %for.inc83, %for.end76
  %38 = load i32, ptr %i, align 4, !tbaa !5
  %cmp78 = icmp sge i32 %38, 0
  br i1 %cmp78, label %for.body79, label %for.end84

for.body79:                                       ; preds = %for.cond77
  %39 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom80 = sext i32 %39 to i64
  %arrayidx81 = getelementptr inbounds [1000 x i32], ptr %ans, i64 0, i64 %idxprom80
  %40 = load i32, ptr %arrayidx81, align 4, !tbaa !5
  %call82 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %40)
  br label %for.inc83

for.inc83:                                        ; preds = %for.body79
  %41 = load i32, ptr %i, align 4, !tbaa !5
  %dec = add nsw i32 %41, -1
  store i32 %dec, ptr %i, align 4, !tbaa !5
  br label %for.cond77, !llvm.loop !15

for.end84:                                        ; preds = %for.cond77
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #9
  br label %if.end85

if.end85:                                         ; preds = %for.end84, %if.then3
  br label %if.end86

if.end86:                                         ; preds = %if.end85, %if.then
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4000, ptr %ans) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #9
  %42 = load i32, ptr %retval, align 4
  ret i32 %42
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: inlinehint mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %__out, ptr noundef %__s) #4 {
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

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) #2

; Function Attrs: mustprogress uwtable
define available_externally void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %this, i32 noundef %__state) #5 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__state.addr = alloca i32, align 4
  store ptr %this, ptr %this.addr, align 8, !tbaa !25
  store i32 %__state, ptr %__state.addr, align 4, !tbaa !27
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef i32 @_ZNKSt9basic_iosIcSt11char_traitsIcEE7rdstateEv(ptr noundef nonnull align 8 dereferenceable(264) %this1)
  %0 = load i32, ptr %__state.addr, align 4, !tbaa !27
  %call2 = call noundef i32 @_ZStorSt12_Ios_IostateS_(i32 noundef %call, i32 noundef %0)
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %this1, i32 noundef %call2)
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt11char_traitsIcE6lengthEPKc(ptr noundef %__s) #6 comdat align 2 {
entry:
  %__s.addr = alloca ptr, align 8
  store ptr %__s, ptr %__s.addr, align 8, !tbaa !19
  %0 = load ptr, ptr %__s.addr, align 8, !tbaa !19
  %call = call i64 @strlen(ptr noundef %0) #9
  ret i64 %call
}

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZStorSt12_Ios_IostateS_(i32 noundef %__a, i32 noundef %__b) #7 comdat {
entry:
  %__a.addr = alloca i32, align 4
  %__b.addr = alloca i32, align 4
  store i32 %__a, ptr %__a.addr, align 4, !tbaa !27
  store i32 %__b, ptr %__b.addr, align 4, !tbaa !27
  %0 = load i32, ptr %__a.addr, align 4, !tbaa !27
  %1 = load i32, ptr %__b.addr, align 4, !tbaa !27
  %or = or i32 %0, %1
  ret i32 %or
}

; Function Attrs: mustprogress nounwind uwtable
define available_externally noundef i32 @_ZNKSt9basic_iosIcSt11char_traitsIcEE7rdstateEv(ptr noundef nonnull align 8 dereferenceable(264) %this) #6 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !25
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_streambuf_state = getelementptr inbounds nuw %"class.std::ios_base", ptr %this1, i32 0, i32 5
  %0 = load i32, ptr %_M_streambuf_state, align 8, !tbaa !29
  ret i32 %0
}

; Function Attrs: nounwind
declare i64 @strlen(ptr noundef) #8

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
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
!26 = !{!"p1 _ZTSSt9basic_iosIcSt11char_traitsIcEE", !18, i64 0}
!27 = !{!28, !28, i64 0}
!28 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!29 = !{!30, !28, i64 32}
!30 = !{!"_ZTSSt8ios_base", !31, i64 8, !31, i64 16, !32, i64 24, !28, i64 28, !28, i64 32, !33, i64 40, !34, i64 48, !7, i64 64, !6, i64 192, !35, i64 200, !36, i64 208}
!31 = !{!"long", !7, i64 0}
!32 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!33 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !18, i64 0}
!34 = !{!"_ZTSNSt8ios_base6_WordsE", !18, i64 0, !31, i64 8}
!35 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !18, i64 0}
!36 = !{!"_ZTSSt6locale", !37, i64 0}
!37 = !{!"p1 _ZTSNSt6locale5_ImplE", !18, i64 0}
