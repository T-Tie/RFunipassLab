; ModuleID = '/tmp/tmpkaf2ugbt.cpp'
source_filename = "/tmp/tmpkaf2ugbt.cpp"
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
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %n = alloca i32, align 4
  %num = alloca [20001 x i32], align 16
  %sum = alloca i32, align 4
  %i = alloca i32, align 4
  %i2 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %j = alloca i32, align 4
  %i30 = alloca i32, align 4
  %m = alloca i32, align 4
  %m66 = alloca i32, align 4
  %i87 = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #8
  call void @llvm.lifetime.start.p0(i64 80004, ptr %num) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %sum) #8
  store i32 0, ptr %sum, align 4, !tbaa !5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #8
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #8
  br label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [20001 x i32], ptr %num, i64 0, i64 %idxprom
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %3, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond.cleanup
  call void @llvm.lifetime.start.p0(i64 4, ptr %i2) #8
  store i32 0, ptr %i2, align 4, !tbaa !5
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc26, %for.end
  %4 = load i32, ptr %i2, align 4, !tbaa !5
  %5 = load i32, ptr %n, align 4, !tbaa !5
  %cmp4 = icmp slt i32 %4, %5
  br i1 %cmp4, label %for.body6, label %for.cond.cleanup5

for.cond.cleanup5:                                ; preds = %for.cond3
  store i32 5, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i2) #8
  br label %for.end29

for.body6:                                        ; preds = %for.cond3
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #8
  %6 = load i32, ptr %i2, align 4, !tbaa !5
  %add = add nsw i32 %6, 1
  store i32 %add, ptr %j, align 4, !tbaa !5
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc23, %for.body6
  %7 = load i32, ptr %j, align 4, !tbaa !5
  %8 = load i32, ptr %n, align 4, !tbaa !5
  %cmp8 = icmp slt i32 %7, %8
  br i1 %cmp8, label %for.body10, label %for.cond.cleanup9

for.cond.cleanup9:                                ; preds = %for.cond7
  store i32 8, ptr %cleanup.dest.slot, align 4
  br label %cleanup

for.body10:                                       ; preds = %for.cond7
  %9 = load i32, ptr %i2, align 4, !tbaa !5
  %idxprom11 = sext i32 %9 to i64
  %arrayidx12 = getelementptr inbounds [20001 x i32], ptr %num, i64 0, i64 %idxprom11
  %10 = load i32, ptr %arrayidx12, align 4, !tbaa !5
  %cmp13 = icmp eq i32 %10, 101
  br i1 %cmp13, label %if.then, label %if.end

if.then:                                          ; preds = %for.body10
  store i32 8, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %for.body10
  %11 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom14 = sext i32 %11 to i64
  %arrayidx15 = getelementptr inbounds [20001 x i32], ptr %num, i64 0, i64 %idxprom14
  %12 = load i32, ptr %arrayidx15, align 4, !tbaa !5
  %13 = load i32, ptr %i2, align 4, !tbaa !5
  %idxprom16 = sext i32 %13 to i64
  %arrayidx17 = getelementptr inbounds [20001 x i32], ptr %num, i64 0, i64 %idxprom16
  %14 = load i32, ptr %arrayidx17, align 4, !tbaa !5
  %cmp18 = icmp eq i32 %12, %14
  br i1 %cmp18, label %if.then19, label %if.end22

if.then19:                                        ; preds = %if.end
  %15 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom20 = sext i32 %15 to i64
  %arrayidx21 = getelementptr inbounds [20001 x i32], ptr %num, i64 0, i64 %idxprom20
  store i32 101, ptr %arrayidx21, align 4, !tbaa !5
  br label %if.end22

if.end22:                                         ; preds = %if.then19, %if.end
  br label %for.inc23

for.inc23:                                        ; preds = %if.end22
  %16 = load i32, ptr %j, align 4, !tbaa !5
  %inc24 = add nsw i32 %16, 1
  store i32 %inc24, ptr %j, align 4, !tbaa !5
  br label %for.cond7, !llvm.loop !12

cleanup:                                          ; preds = %if.then, %for.cond.cleanup9
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #8
  br label %for.end25

for.end25:                                        ; preds = %cleanup
  br label %for.inc26

for.inc26:                                        ; preds = %for.end25
  %17 = load i32, ptr %i2, align 4, !tbaa !5
  %inc27 = add nsw i32 %17, 1
  store i32 %inc27, ptr %i2, align 4, !tbaa !5
  br label %for.cond3, !llvm.loop !13

for.end29:                                        ; preds = %for.cond.cleanup5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i30) #8
  store i32 0, ptr %i30, align 4, !tbaa !5
  br label %for.cond31

for.cond31:                                       ; preds = %for.inc83, %for.end29
  %18 = load i32, ptr %i30, align 4, !tbaa !5
  %19 = load i32, ptr %n, align 4, !tbaa !5
  %cmp32 = icmp slt i32 %18, %19
  br i1 %cmp32, label %for.body34, label %for.cond.cleanup33

for.cond.cleanup33:                               ; preds = %for.cond31
  store i32 11, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i30) #8
  br label %for.end86

for.body34:                                       ; preds = %for.cond31
  %20 = load i32, ptr %i30, align 4, !tbaa !5
  %idxprom35 = sext i32 %20 to i64
  %arrayidx36 = getelementptr inbounds [20001 x i32], ptr %num, i64 0, i64 %idxprom35
  %21 = load i32, ptr %arrayidx36, align 4, !tbaa !5
  %cmp37 = icmp eq i32 %21, 101
  br i1 %cmp37, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.body34
  %22 = load i32, ptr %i30, align 4, !tbaa !5
  %add38 = add nsw i32 %22, 1
  %idxprom39 = sext i32 %add38 to i64
  %arrayidx40 = getelementptr inbounds [20001 x i32], ptr %num, i64 0, i64 %idxprom39
  %23 = load i32, ptr %arrayidx40, align 4, !tbaa !5
  %cmp41 = icmp ne i32 %23, 101
  br i1 %cmp41, label %if.then42, label %if.else

if.then42:                                        ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %m) #8
  %24 = load i32, ptr %i30, align 4, !tbaa !5
  store i32 %24, ptr %m, align 4, !tbaa !5
  br label %for.cond43

for.cond43:                                       ; preds = %for.inc52, %if.then42
  %25 = load i32, ptr %m, align 4, !tbaa !5
  %26 = load i32, ptr %n, align 4, !tbaa !5
  %cmp44 = icmp slt i32 %25, %26
  br i1 %cmp44, label %for.body46, label %for.cond.cleanup45

for.cond.cleanup45:                               ; preds = %for.cond43
  store i32 14, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %m) #8
  br label %for.end55

for.body46:                                       ; preds = %for.cond43
  %27 = load i32, ptr %m, align 4, !tbaa !5
  %add47 = add nsw i32 %27, 1
  %idxprom48 = sext i32 %add47 to i64
  %arrayidx49 = getelementptr inbounds [20001 x i32], ptr %num, i64 0, i64 %idxprom48
  %28 = load i32, ptr %arrayidx49, align 4, !tbaa !5
  %29 = load i32, ptr %m, align 4, !tbaa !5
  %idxprom50 = sext i32 %29 to i64
  %arrayidx51 = getelementptr inbounds [20001 x i32], ptr %num, i64 0, i64 %idxprom50
  store i32 %28, ptr %arrayidx51, align 4, !tbaa !5
  br label %for.inc52

for.inc52:                                        ; preds = %for.body46
  %30 = load i32, ptr %m, align 4, !tbaa !5
  %inc53 = add nsw i32 %30, 1
  store i32 %inc53, ptr %m, align 4, !tbaa !5
  br label %for.cond43, !llvm.loop !14

for.end55:                                        ; preds = %for.cond.cleanup45
  %31 = load i32, ptr %sum, align 4, !tbaa !5
  %inc56 = add nsw i32 %31, 1
  store i32 %inc56, ptr %sum, align 4, !tbaa !5
  br label %if.end82

if.else:                                          ; preds = %land.lhs.true, %for.body34
  %32 = load i32, ptr %i30, align 4, !tbaa !5
  %idxprom57 = sext i32 %32 to i64
  %arrayidx58 = getelementptr inbounds [20001 x i32], ptr %num, i64 0, i64 %idxprom57
  %33 = load i32, ptr %arrayidx58, align 4, !tbaa !5
  %cmp59 = icmp eq i32 %33, 101
  br i1 %cmp59, label %land.lhs.true60, label %if.end81

land.lhs.true60:                                  ; preds = %if.else
  %34 = load i32, ptr %i30, align 4, !tbaa !5
  %add61 = add nsw i32 %34, 1
  %idxprom62 = sext i32 %add61 to i64
  %arrayidx63 = getelementptr inbounds [20001 x i32], ptr %num, i64 0, i64 %idxprom62
  %35 = load i32, ptr %arrayidx63, align 4, !tbaa !5
  %cmp64 = icmp eq i32 %35, 101
  br i1 %cmp64, label %if.then65, label %if.end81

if.then65:                                        ; preds = %land.lhs.true60
  call void @llvm.lifetime.start.p0(i64 4, ptr %m66) #8
  %36 = load i32, ptr %i30, align 4, !tbaa !5
  store i32 %36, ptr %m66, align 4, !tbaa !5
  br label %for.cond67

for.cond67:                                       ; preds = %for.inc76, %if.then65
  %37 = load i32, ptr %m66, align 4, !tbaa !5
  %38 = load i32, ptr %n, align 4, !tbaa !5
  %cmp68 = icmp slt i32 %37, %38
  br i1 %cmp68, label %for.body70, label %for.cond.cleanup69

for.cond.cleanup69:                               ; preds = %for.cond67
  store i32 17, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %m66) #8
  br label %for.end79

for.body70:                                       ; preds = %for.cond67
  %39 = load i32, ptr %m66, align 4, !tbaa !5
  %add71 = add nsw i32 %39, 1
  %idxprom72 = sext i32 %add71 to i64
  %arrayidx73 = getelementptr inbounds [20001 x i32], ptr %num, i64 0, i64 %idxprom72
  %40 = load i32, ptr %arrayidx73, align 4, !tbaa !5
  %41 = load i32, ptr %m66, align 4, !tbaa !5
  %idxprom74 = sext i32 %41 to i64
  %arrayidx75 = getelementptr inbounds [20001 x i32], ptr %num, i64 0, i64 %idxprom74
  store i32 %40, ptr %arrayidx75, align 4, !tbaa !5
  br label %for.inc76

for.inc76:                                        ; preds = %for.body70
  %42 = load i32, ptr %m66, align 4, !tbaa !5
  %inc77 = add nsw i32 %42, 1
  store i32 %inc77, ptr %m66, align 4, !tbaa !5
  br label %for.cond67, !llvm.loop !15

for.end79:                                        ; preds = %for.cond.cleanup69
  %43 = load i32, ptr %sum, align 4, !tbaa !5
  %inc80 = add nsw i32 %43, 1
  store i32 %inc80, ptr %sum, align 4, !tbaa !5
  %44 = load i32, ptr %i30, align 4, !tbaa !5
  %dec = add nsw i32 %44, -1
  store i32 %dec, ptr %i30, align 4, !tbaa !5
  br label %if.end81

if.end81:                                         ; preds = %for.end79, %land.lhs.true60, %if.else
  br label %if.end82

if.end82:                                         ; preds = %if.end81, %for.end55
  br label %for.inc83

for.inc83:                                        ; preds = %if.end82
  %45 = load i32, ptr %i30, align 4, !tbaa !5
  %inc84 = add nsw i32 %45, 1
  store i32 %inc84, ptr %i30, align 4, !tbaa !5
  br label %for.cond31, !llvm.loop !16

for.end86:                                        ; preds = %for.cond.cleanup33
  call void @llvm.lifetime.start.p0(i64 4, ptr %i87) #8
  store i32 0, ptr %i87, align 4, !tbaa !5
  br label %for.cond88

for.cond88:                                       ; preds = %for.inc97, %for.end86
  %46 = load i32, ptr %i87, align 4, !tbaa !5
  %47 = load i32, ptr %n, align 4, !tbaa !5
  %48 = load i32, ptr %sum, align 4, !tbaa !5
  %sub = sub nsw i32 %47, %48
  %sub89 = sub nsw i32 %sub, 1
  %cmp90 = icmp slt i32 %46, %sub89
  br i1 %cmp90, label %for.body92, label %for.cond.cleanup91

for.cond.cleanup91:                               ; preds = %for.cond88
  store i32 20, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i87) #8
  br label %for.end100

for.body92:                                       ; preds = %for.cond88
  %49 = load i32, ptr %i87, align 4, !tbaa !5
  %idxprom93 = sext i32 %49 to i64
  %arrayidx94 = getelementptr inbounds [20001 x i32], ptr %num, i64 0, i64 %idxprom93
  %50 = load i32, ptr %arrayidx94, align 4, !tbaa !5
  %call95 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %50)
  %call96 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %call95, ptr noundef @.str)
  br label %for.inc97

for.inc97:                                        ; preds = %for.body92
  %51 = load i32, ptr %i87, align 4, !tbaa !5
  %inc98 = add nsw i32 %51, 1
  store i32 %inc98, ptr %i87, align 4, !tbaa !5
  br label %for.cond88, !llvm.loop !17

for.end100:                                       ; preds = %for.cond.cleanup91
  %52 = load i32, ptr %n, align 4, !tbaa !5
  %53 = load i32, ptr %sum, align 4, !tbaa !5
  %sub101 = sub nsw i32 %52, %53
  %sub102 = sub nsw i32 %sub101, 1
  %idxprom103 = sext i32 %sub102 to i64
  %arrayidx104 = getelementptr inbounds [20001 x i32], ptr %num, i64 0, i64 %idxprom103
  %54 = load i32, ptr %arrayidx104, align 4, !tbaa !5
  %call105 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %54)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %sum) #8
  call void @llvm.lifetime.end.p0(i64 80004, ptr %num) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #8
  %55 = load i32, ptr %retval, align 4
  ret i32 %55
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: inlinehint mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %__out, ptr noundef %__s) #3 {
entry:
  %__out.addr = alloca ptr, align 8
  %__s.addr = alloca ptr, align 8
  store ptr %__out, ptr %__out.addr, align 8, !tbaa !18
  store ptr %__s, ptr %__s.addr, align 8, !tbaa !21
  %0 = load ptr, ptr %__s.addr, align 8, !tbaa !21
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %__out.addr, align 8, !tbaa !18, !nonnull !23, !align !24
  %vtable = load ptr, ptr %1, align 8, !tbaa !25
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %1, i64 %vbase.offset
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr, i32 noundef 1)
  br label %if.end

if.else:                                          ; preds = %entry
  %2 = load ptr, ptr %__out.addr, align 8, !tbaa !18, !nonnull !23, !align !24
  %3 = load ptr, ptr %__s.addr, align 8, !tbaa !21
  %4 = load ptr, ptr %__s.addr, align 8, !tbaa !21
  %call = call noundef i64 @_ZNSt11char_traitsIcE6lengthEPKc(ptr noundef %4)
  %call1 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, i64 noundef %call)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load ptr, ptr %__out.addr, align 8, !tbaa !18, !nonnull !23, !align !24
  ret ptr %5
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) #2

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
  store ptr %__s, ptr %__s.addr, align 8, !tbaa !21
  %0 = load ptr, ptr %__s.addr, align 8, !tbaa !21
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
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11}
!18 = !{!19, !19, i64 0}
!19 = !{!"p1 _ZTSSo", !20, i64 0}
!20 = !{!"any pointer", !7, i64 0}
!21 = !{!22, !22, i64 0}
!22 = !{!"p1 omnipotent char", !20, i64 0}
!23 = !{}
!24 = !{i64 8}
!25 = !{!26, !26, i64 0}
!26 = !{!"vtable pointer", !8, i64 0}
!27 = !{!28, !28, i64 0}
!28 = !{!"p1 _ZTSSt9basic_iosIcSt11char_traitsIcEE", !20, i64 0}
!29 = !{!30, !30, i64 0}
!30 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!31 = !{!32, !30, i64 32}
!32 = !{!"_ZTSSt8ios_base", !33, i64 8, !33, i64 16, !34, i64 24, !30, i64 28, !30, i64 32, !35, i64 40, !36, i64 48, !7, i64 64, !6, i64 192, !37, i64 200, !38, i64 208}
!33 = !{!"long", !7, i64 0}
!34 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!35 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !20, i64 0}
!36 = !{!"_ZTSNSt8ios_base6_WordsE", !20, i64 0, !33, i64 8}
!37 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !20, i64 0}
!38 = !{!"_ZTSSt6locale", !39, i64 0}
!39 = !{!"p1 _ZTSNSt6locale5_ImplE", !20, i64 0}
