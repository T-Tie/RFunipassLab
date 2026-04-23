; ModuleID = '/tmp/tmpy8_8nxfh.cpp'
source_filename = "/tmp/tmpy8_8nxfh.cpp"
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
  %n = alloca i32, align 4
  %a = alloca [100 x [100 x i32]], align 16
  %m = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %t = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %l = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #7
  call void @llvm.lifetime.start.p0(i64 40000, ptr %a) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %m) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %t) #7
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #7
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc116, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp sle i32 %0, %1
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #7
  br label %for.end118

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc10, %for.body
  %2 = load i32, ptr %j, align 4, !tbaa !5
  %3 = load i32, ptr %n, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body3, label %for.end12

for.body3:                                        ; preds = %for.cond1
  store i32 0, ptr %k, align 4, !tbaa !5
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %4 = load i32, ptr %k, align 4, !tbaa !5
  %5 = load i32, ptr %n, align 4, !tbaa !5
  %cmp5 = icmp slt i32 %4, %5
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %6 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom
  %7 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom7 = sext i32 %7 to i64
  %arrayidx8 = getelementptr inbounds [100 x i32], ptr %arrayidx, i64 0, i64 %idxprom7
  %call9 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx8)
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %8 = load i32, ptr %k, align 4, !tbaa !5
  %inc = add nsw i32 %8, 1
  store i32 %inc, ptr %k, align 4, !tbaa !5
  br label %for.cond4, !llvm.loop !9

for.end:                                          ; preds = %for.cond4
  br label %for.inc10

for.inc10:                                        ; preds = %for.end
  %9 = load i32, ptr %j, align 4, !tbaa !5
  %inc11 = add nsw i32 %9, 1
  store i32 %inc11, ptr %j, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !12

for.end12:                                        ; preds = %for.cond1
  store i32 0, ptr %m, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %l) #7
  store i32 0, ptr %l, align 4, !tbaa !5
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc111, %for.end12
  %10 = load i32, ptr %l, align 4, !tbaa !5
  %11 = load i32, ptr %n, align 4, !tbaa !5
  %sub = sub nsw i32 %11, 1
  %cmp14 = icmp slt i32 %10, %sub
  br i1 %cmp14, label %for.body16, label %for.cond.cleanup15

for.cond.cleanup15:                               ; preds = %for.cond13
  store i32 11, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %l) #7
  br label %for.end113

for.body16:                                       ; preds = %for.cond13
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond17

for.cond17:                                       ; preds = %for.inc35, %for.body16
  %12 = load i32, ptr %j, align 4, !tbaa !5
  %13 = load i32, ptr %n, align 4, !tbaa !5
  %14 = load i32, ptr %l, align 4, !tbaa !5
  %sub18 = sub nsw i32 %13, %14
  %cmp19 = icmp slt i32 %12, %sub18
  br i1 %cmp19, label %for.body20, label %for.end37

for.body20:                                       ; preds = %for.cond17
  %arraydecay = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 0
  %15 = load i32, ptr %j, align 4, !tbaa !5
  %16 = load i32, ptr %n, align 4, !tbaa !5
  %17 = load i32, ptr %l, align 4, !tbaa !5
  %sub21 = sub nsw i32 %16, %17
  %call22 = call noundef i32 @_Z3minPA100_iiii(ptr noundef %arraydecay, i32 noundef 0, i32 noundef %15, i32 noundef %sub21)
  store i32 %call22, ptr %t, align 4, !tbaa !5
  store i32 0, ptr %k, align 4, !tbaa !5
  br label %for.cond23

for.cond23:                                       ; preds = %for.inc32, %for.body20
  %18 = load i32, ptr %k, align 4, !tbaa !5
  %19 = load i32, ptr %n, align 4, !tbaa !5
  %20 = load i32, ptr %l, align 4, !tbaa !5
  %sub24 = sub nsw i32 %19, %20
  %cmp25 = icmp slt i32 %18, %sub24
  br i1 %cmp25, label %for.body26, label %for.end34

for.body26:                                       ; preds = %for.cond23
  %21 = load i32, ptr %t, align 4, !tbaa !5
  %22 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom27 = sext i32 %22 to i64
  %arrayidx28 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom27
  %23 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom29 = sext i32 %23 to i64
  %arrayidx30 = getelementptr inbounds [100 x i32], ptr %arrayidx28, i64 0, i64 %idxprom29
  %24 = load i32, ptr %arrayidx30, align 4, !tbaa !5
  %sub31 = sub nsw i32 %24, %21
  store i32 %sub31, ptr %arrayidx30, align 4, !tbaa !5
  br label %for.inc32

for.inc32:                                        ; preds = %for.body26
  %25 = load i32, ptr %k, align 4, !tbaa !5
  %inc33 = add nsw i32 %25, 1
  store i32 %inc33, ptr %k, align 4, !tbaa !5
  br label %for.cond23, !llvm.loop !13

for.end34:                                        ; preds = %for.cond23
  br label %for.inc35

for.inc35:                                        ; preds = %for.end34
  %26 = load i32, ptr %j, align 4, !tbaa !5
  %inc36 = add nsw i32 %26, 1
  store i32 %inc36, ptr %j, align 4, !tbaa !5
  br label %for.cond17, !llvm.loop !14

for.end37:                                        ; preds = %for.cond17
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond38

for.cond38:                                       ; preds = %for.inc57, %for.end37
  %27 = load i32, ptr %j, align 4, !tbaa !5
  %28 = load i32, ptr %n, align 4, !tbaa !5
  %29 = load i32, ptr %l, align 4, !tbaa !5
  %sub39 = sub nsw i32 %28, %29
  %cmp40 = icmp slt i32 %27, %sub39
  br i1 %cmp40, label %for.body41, label %for.end59

for.body41:                                       ; preds = %for.cond38
  %arraydecay42 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 0
  %30 = load i32, ptr %j, align 4, !tbaa !5
  %31 = load i32, ptr %n, align 4, !tbaa !5
  %32 = load i32, ptr %l, align 4, !tbaa !5
  %sub43 = sub nsw i32 %31, %32
  %call44 = call noundef i32 @_Z3minPA100_iiii(ptr noundef %arraydecay42, i32 noundef 1, i32 noundef %30, i32 noundef %sub43)
  store i32 %call44, ptr %t, align 4, !tbaa !5
  store i32 0, ptr %k, align 4, !tbaa !5
  br label %for.cond45

for.cond45:                                       ; preds = %for.inc54, %for.body41
  %33 = load i32, ptr %k, align 4, !tbaa !5
  %34 = load i32, ptr %n, align 4, !tbaa !5
  %35 = load i32, ptr %l, align 4, !tbaa !5
  %sub46 = sub nsw i32 %34, %35
  %cmp47 = icmp slt i32 %33, %sub46
  br i1 %cmp47, label %for.body48, label %for.end56

for.body48:                                       ; preds = %for.cond45
  %36 = load i32, ptr %t, align 4, !tbaa !5
  %37 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom49 = sext i32 %37 to i64
  %arrayidx50 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom49
  %38 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom51 = sext i32 %38 to i64
  %arrayidx52 = getelementptr inbounds [100 x i32], ptr %arrayidx50, i64 0, i64 %idxprom51
  %39 = load i32, ptr %arrayidx52, align 4, !tbaa !5
  %sub53 = sub nsw i32 %39, %36
  store i32 %sub53, ptr %arrayidx52, align 4, !tbaa !5
  br label %for.inc54

for.inc54:                                        ; preds = %for.body48
  %40 = load i32, ptr %k, align 4, !tbaa !5
  %inc55 = add nsw i32 %40, 1
  store i32 %inc55, ptr %k, align 4, !tbaa !5
  br label %for.cond45, !llvm.loop !15

for.end56:                                        ; preds = %for.cond45
  br label %for.inc57

for.inc57:                                        ; preds = %for.end56
  %41 = load i32, ptr %j, align 4, !tbaa !5
  %inc58 = add nsw i32 %41, 1
  store i32 %inc58, ptr %j, align 4, !tbaa !5
  br label %for.cond38, !llvm.loop !16

for.end59:                                        ; preds = %for.cond38
  %arrayidx60 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 1
  %arrayidx61 = getelementptr inbounds [100 x i32], ptr %arrayidx60, i64 0, i64 1
  %42 = load i32, ptr %arrayidx61, align 4, !tbaa !5
  %43 = load i32, ptr %m, align 4, !tbaa !5
  %add = add nsw i32 %43, %42
  store i32 %add, ptr %m, align 4, !tbaa !5
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond62

for.cond62:                                       ; preds = %for.inc83, %for.end59
  %44 = load i32, ptr %j, align 4, !tbaa !5
  %45 = load i32, ptr %n, align 4, !tbaa !5
  %46 = load i32, ptr %l, align 4, !tbaa !5
  %sub63 = sub nsw i32 %45, %46
  %cmp64 = icmp slt i32 %44, %sub63
  br i1 %cmp64, label %for.body65, label %for.end85

for.body65:                                       ; preds = %for.cond62
  store i32 1, ptr %k, align 4, !tbaa !5
  br label %for.cond66

for.cond66:                                       ; preds = %for.inc80, %for.body65
  %47 = load i32, ptr %k, align 4, !tbaa !5
  %48 = load i32, ptr %n, align 4, !tbaa !5
  %49 = load i32, ptr %l, align 4, !tbaa !5
  %sub67 = sub nsw i32 %48, %49
  %sub68 = sub nsw i32 %sub67, 1
  %cmp69 = icmp slt i32 %47, %sub68
  br i1 %cmp69, label %for.body70, label %for.end82

for.body70:                                       ; preds = %for.cond66
  %50 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom71 = sext i32 %50 to i64
  %arrayidx72 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom71
  %51 = load i32, ptr %k, align 4, !tbaa !5
  %add73 = add nsw i32 %51, 1
  %idxprom74 = sext i32 %add73 to i64
  %arrayidx75 = getelementptr inbounds [100 x i32], ptr %arrayidx72, i64 0, i64 %idxprom74
  %52 = load i32, ptr %arrayidx75, align 4, !tbaa !5
  %53 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom76 = sext i32 %53 to i64
  %arrayidx77 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom76
  %54 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom78 = sext i32 %54 to i64
  %arrayidx79 = getelementptr inbounds [100 x i32], ptr %arrayidx77, i64 0, i64 %idxprom78
  store i32 %52, ptr %arrayidx79, align 4, !tbaa !5
  br label %for.inc80

for.inc80:                                        ; preds = %for.body70
  %55 = load i32, ptr %k, align 4, !tbaa !5
  %inc81 = add nsw i32 %55, 1
  store i32 %inc81, ptr %k, align 4, !tbaa !5
  br label %for.cond66, !llvm.loop !17

for.end82:                                        ; preds = %for.cond66
  br label %for.inc83

for.inc83:                                        ; preds = %for.end82
  %56 = load i32, ptr %j, align 4, !tbaa !5
  %inc84 = add nsw i32 %56, 1
  store i32 %inc84, ptr %j, align 4, !tbaa !5
  br label %for.cond62, !llvm.loop !18

for.end85:                                        ; preds = %for.cond62
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond86

for.cond86:                                       ; preds = %for.inc108, %for.end85
  %57 = load i32, ptr %j, align 4, !tbaa !5
  %58 = load i32, ptr %n, align 4, !tbaa !5
  %59 = load i32, ptr %l, align 4, !tbaa !5
  %sub87 = sub nsw i32 %58, %59
  %sub88 = sub nsw i32 %sub87, 1
  %cmp89 = icmp slt i32 %57, %sub88
  br i1 %cmp89, label %for.body90, label %for.end110

for.body90:                                       ; preds = %for.cond86
  store i32 1, ptr %k, align 4, !tbaa !5
  br label %for.cond91

for.cond91:                                       ; preds = %for.inc105, %for.body90
  %60 = load i32, ptr %k, align 4, !tbaa !5
  %61 = load i32, ptr %n, align 4, !tbaa !5
  %62 = load i32, ptr %l, align 4, !tbaa !5
  %sub92 = sub nsw i32 %61, %62
  %sub93 = sub nsw i32 %sub92, 1
  %cmp94 = icmp slt i32 %60, %sub93
  br i1 %cmp94, label %for.body95, label %for.end107

for.body95:                                       ; preds = %for.cond91
  %63 = load i32, ptr %k, align 4, !tbaa !5
  %add96 = add nsw i32 %63, 1
  %idxprom97 = sext i32 %add96 to i64
  %arrayidx98 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom97
  %64 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom99 = sext i32 %64 to i64
  %arrayidx100 = getelementptr inbounds [100 x i32], ptr %arrayidx98, i64 0, i64 %idxprom99
  %65 = load i32, ptr %arrayidx100, align 4, !tbaa !5
  %66 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom101 = sext i32 %66 to i64
  %arrayidx102 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom101
  %67 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom103 = sext i32 %67 to i64
  %arrayidx104 = getelementptr inbounds [100 x i32], ptr %arrayidx102, i64 0, i64 %idxprom103
  store i32 %65, ptr %arrayidx104, align 4, !tbaa !5
  br label %for.inc105

for.inc105:                                       ; preds = %for.body95
  %68 = load i32, ptr %k, align 4, !tbaa !5
  %inc106 = add nsw i32 %68, 1
  store i32 %inc106, ptr %k, align 4, !tbaa !5
  br label %for.cond91, !llvm.loop !19

for.end107:                                       ; preds = %for.cond91
  br label %for.inc108

for.inc108:                                       ; preds = %for.end107
  %69 = load i32, ptr %j, align 4, !tbaa !5
  %inc109 = add nsw i32 %69, 1
  store i32 %inc109, ptr %j, align 4, !tbaa !5
  br label %for.cond86, !llvm.loop !20

for.end110:                                       ; preds = %for.cond86
  br label %for.inc111

for.inc111:                                       ; preds = %for.end110
  %70 = load i32, ptr %l, align 4, !tbaa !5
  %inc112 = add nsw i32 %70, 1
  store i32 %inc112, ptr %l, align 4, !tbaa !5
  br label %for.cond13, !llvm.loop !21

for.end113:                                       ; preds = %for.cond.cleanup15
  %71 = load i32, ptr %m, align 4, !tbaa !5
  %call114 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %71)
  %call115 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call114, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %for.inc116

for.inc116:                                       ; preds = %for.end113
  %72 = load i32, ptr %i, align 4, !tbaa !5
  %inc117 = add nsw i32 %72, 1
  store i32 %inc117, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !22

for.end118:                                       ; preds = %for.cond.cleanup
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %t) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %m) #7
  call void @llvm.lifetime.end.p0(i64 40000, ptr %a) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #7
  %73 = load i32, ptr %retval, align 4
  ret i32 %73
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_Z3minPA100_iiii(ptr noundef %a, i32 noundef %s, i32 noundef %l, i32 noundef %n) #3 {
entry:
  %a.addr = alloca ptr, align 8
  %s.addr = alloca i32, align 4
  %l.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %t = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store ptr %a, ptr %a.addr, align 8, !tbaa !23
  store i32 %s, ptr %s.addr, align 4, !tbaa !5
  store i32 %l, ptr %l.addr, align 4, !tbaa !5
  store i32 %n, ptr %n.addr, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %t) #7
  %0 = load i32, ptr %s.addr, align 4, !tbaa !5
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %a.addr, align 8, !tbaa !23
  %2 = load i32, ptr %l.addr, align 4, !tbaa !5
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [100 x i32], ptr %1, i64 %idxprom
  %arrayidx1 = getelementptr inbounds [100 x i32], ptr %arrayidx, i64 0, i64 0
  %3 = load i32, ptr %arrayidx1, align 4, !tbaa !5
  store i32 %3, ptr %t, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #7
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %4 = load i32, ptr %i, align 4, !tbaa !5
  %5 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %4, %5
  br i1 %cmp2, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #7
  br label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, ptr %t, align 4, !tbaa !5
  %7 = load ptr, ptr %a.addr, align 8, !tbaa !23
  %8 = load i32, ptr %l.addr, align 4, !tbaa !5
  %idxprom3 = sext i32 %8 to i64
  %arrayidx4 = getelementptr inbounds [100 x i32], ptr %7, i64 %idxprom3
  %9 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom5 = sext i32 %9 to i64
  %arrayidx6 = getelementptr inbounds [100 x i32], ptr %arrayidx4, i64 0, i64 %idxprom5
  %10 = load i32, ptr %arrayidx6, align 4, !tbaa !5
  %cmp7 = icmp sgt i32 %6, %10
  br i1 %cmp7, label %if.then8, label %if.end

if.then8:                                         ; preds = %for.body
  %11 = load ptr, ptr %a.addr, align 8, !tbaa !23
  %12 = load i32, ptr %l.addr, align 4, !tbaa !5
  %idxprom9 = sext i32 %12 to i64
  %arrayidx10 = getelementptr inbounds [100 x i32], ptr %11, i64 %idxprom9
  %13 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom11 = sext i32 %13 to i64
  %arrayidx12 = getelementptr inbounds [100 x i32], ptr %arrayidx10, i64 0, i64 %idxprom11
  %14 = load i32, ptr %arrayidx12, align 4, !tbaa !5
  store i32 %14, ptr %t, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then8, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %15 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %15, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !26

for.end:                                          ; preds = %for.cond.cleanup
  br label %if.end34

if.else:                                          ; preds = %entry
  %16 = load ptr, ptr %a.addr, align 8, !tbaa !23
  %arrayidx13 = getelementptr inbounds [100 x i32], ptr %16, i64 0
  %17 = load i32, ptr %l.addr, align 4, !tbaa !5
  %idxprom14 = sext i32 %17 to i64
  %arrayidx15 = getelementptr inbounds [100 x i32], ptr %arrayidx13, i64 0, i64 %idxprom14
  %18 = load i32, ptr %arrayidx15, align 4, !tbaa !5
  store i32 %18, ptr %t, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #7
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc31, %if.else
  %19 = load i32, ptr %j, align 4, !tbaa !5
  %20 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp17 = icmp slt i32 %19, %20
  br i1 %cmp17, label %for.body19, label %for.cond.cleanup18

for.cond.cleanup18:                               ; preds = %for.cond16
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #7
  br label %for.end33

for.body19:                                       ; preds = %for.cond16
  %21 = load i32, ptr %t, align 4, !tbaa !5
  %22 = load ptr, ptr %a.addr, align 8, !tbaa !23
  %23 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom20 = sext i32 %23 to i64
  %arrayidx21 = getelementptr inbounds [100 x i32], ptr %22, i64 %idxprom20
  %24 = load i32, ptr %l.addr, align 4, !tbaa !5
  %idxprom22 = sext i32 %24 to i64
  %arrayidx23 = getelementptr inbounds [100 x i32], ptr %arrayidx21, i64 0, i64 %idxprom22
  %25 = load i32, ptr %arrayidx23, align 4, !tbaa !5
  %cmp24 = icmp sgt i32 %21, %25
  br i1 %cmp24, label %if.then25, label %if.end30

if.then25:                                        ; preds = %for.body19
  %26 = load ptr, ptr %a.addr, align 8, !tbaa !23
  %27 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom26 = sext i32 %27 to i64
  %arrayidx27 = getelementptr inbounds [100 x i32], ptr %26, i64 %idxprom26
  %28 = load i32, ptr %l.addr, align 4, !tbaa !5
  %idxprom28 = sext i32 %28 to i64
  %arrayidx29 = getelementptr inbounds [100 x i32], ptr %arrayidx27, i64 0, i64 %idxprom28
  %29 = load i32, ptr %arrayidx29, align 4, !tbaa !5
  store i32 %29, ptr %t, align 4, !tbaa !5
  br label %if.end30

if.end30:                                         ; preds = %if.then25, %for.body19
  br label %for.inc31

for.inc31:                                        ; preds = %if.end30
  %30 = load i32, ptr %j, align 4, !tbaa !5
  %inc32 = add nsw i32 %30, 1
  store i32 %inc32, ptr %j, align 4, !tbaa !5
  br label %for.cond16, !llvm.loop !27

for.end33:                                        ; preds = %for.cond.cleanup18
  br label %if.end34

if.end34:                                         ; preds = %for.end33, %for.end
  %31 = load i32, ptr %t, align 4, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 4, ptr %t) #7
  ret i32 %31
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) #2

; Function Attrs: mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef %__pf) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__pf.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !28
  store ptr %__pf, ptr %__pf.addr, align 8, !tbaa !30
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__pf.addr, align 8, !tbaa !30
  %call = call noundef nonnull align 8 dereferenceable(8) ptr %0(ptr noundef nonnull align 8 dereferenceable(8) %this1)
  ret ptr %call
}

; Function Attrs: inlinehint mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %__os) #5 {
entry:
  %__os.addr = alloca ptr, align 8
  store ptr %__os, ptr %__os.addr, align 8, !tbaa !28
  %0 = load ptr, ptr %__os.addr, align 8, !tbaa !28, !nonnull !31, !align !32
  %1 = load ptr, ptr %__os.addr, align 8, !tbaa !28, !nonnull !31, !align !32
  %vtable = load ptr, ptr %1, align 8, !tbaa !33
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
  store ptr %__os, ptr %__os.addr, align 8, !tbaa !28
  %0 = load ptr, ptr %__os.addr, align 8, !tbaa !28, !nonnull !31, !align !32
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  ret ptr %call
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) #2

; Function Attrs: mustprogress uwtable
define available_externally noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %this, i8 noundef signext %__c) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__c.addr = alloca i8, align 1
  store ptr %this, ptr %this.addr, align 8, !tbaa !35
  store i8 %__c, ptr %__c.addr, align 1, !tbaa !37
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_ctype = getelementptr inbounds nuw %"class.std::basic_ios", ptr %this1, i32 0, i32 5
  %0 = load ptr, ptr %_M_ctype, align 8, !tbaa !38
  %call = call noundef nonnull align 8 dereferenceable(570) ptr @_ZSt13__check_facetISt5ctypeIcEERKT_PS3_(ptr noundef %0)
  %1 = load i8, ptr %__c.addr, align 1, !tbaa !37
  %call2 = call noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %call, i8 noundef signext %1)
  ret i8 %call2
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) #2

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(570) ptr @_ZSt13__check_facetISt5ctypeIcEERKT_PS3_(ptr noundef %__f) #5 comdat {
entry:
  %__f.addr = alloca ptr, align 8
  store ptr %__f, ptr %__f.addr, align 8, !tbaa !54
  %0 = load ptr, ptr %__f.addr, align 8, !tbaa !54
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @_ZSt16__throw_bad_castv() #8
  unreachable

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %__f.addr, align 8, !tbaa !54
  ret ptr %1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %this, i8 noundef signext %__c) #4 comdat align 2 {
entry:
  %retval = alloca i8, align 1
  %this.addr = alloca ptr, align 8
  %__c.addr = alloca i8, align 1
  store ptr %this, ptr %this.addr, align 8, !tbaa !54
  store i8 %__c, ptr %__c.addr, align 1, !tbaa !37
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_widen_ok = getelementptr inbounds nuw %"class.std::ctype", ptr %this1, i32 0, i32 8
  %0 = load i8, ptr %_M_widen_ok, align 8, !tbaa !55
  %tobool = icmp ne i8 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %_M_widen = getelementptr inbounds nuw %"class.std::ctype", ptr %this1, i32 0, i32 9
  %1 = load i8, ptr %__c.addr, align 1, !tbaa !37
  %idxprom = zext i8 %1 to i64
  %arrayidx = getelementptr inbounds nuw [256 x i8], ptr %_M_widen, i64 0, i64 %idxprom
  %2 = load i8, ptr %arrayidx, align 1, !tbaa !37
  store i8 %2, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %this1)
  %3 = load i8, ptr %__c.addr, align 1, !tbaa !37
  %vtable = load ptr, ptr %this1, align 8, !tbaa !33
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

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) #2

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11}
!18 = distinct !{!18, !10, !11}
!19 = distinct !{!19, !10, !11}
!20 = distinct !{!20, !10, !11}
!21 = distinct !{!21, !10, !11}
!22 = distinct !{!22, !10, !11}
!23 = !{!24, !24, i64 0}
!24 = !{!"p1 int", !25, i64 0}
!25 = !{!"any pointer", !7, i64 0}
!26 = distinct !{!26, !10, !11}
!27 = distinct !{!27, !10, !11}
!28 = !{!29, !29, i64 0}
!29 = !{!"p1 _ZTSSo", !25, i64 0}
!30 = !{!25, !25, i64 0}
!31 = !{}
!32 = !{i64 8}
!33 = !{!34, !34, i64 0}
!34 = !{!"vtable pointer", !8, i64 0}
!35 = !{!36, !36, i64 0}
!36 = !{!"p1 _ZTSSt9basic_iosIcSt11char_traitsIcEE", !25, i64 0}
!37 = !{!7, !7, i64 0}
!38 = !{!39, !51, i64 240}
!39 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !40, i64 0, !29, i64 216, !7, i64 224, !49, i64 225, !50, i64 232, !51, i64 240, !52, i64 248, !53, i64 256}
!40 = !{!"_ZTSSt8ios_base", !41, i64 8, !41, i64 16, !42, i64 24, !43, i64 28, !43, i64 32, !44, i64 40, !45, i64 48, !7, i64 64, !6, i64 192, !46, i64 200, !47, i64 208}
!41 = !{!"long", !7, i64 0}
!42 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!43 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!44 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !25, i64 0}
!45 = !{!"_ZTSNSt8ios_base6_WordsE", !25, i64 0, !41, i64 8}
!46 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !25, i64 0}
!47 = !{!"_ZTSSt6locale", !48, i64 0}
!48 = !{!"p1 _ZTSNSt6locale5_ImplE", !25, i64 0}
!49 = !{!"bool", !7, i64 0}
!50 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !25, i64 0}
!51 = !{!"p1 _ZTSSt5ctypeIcE", !25, i64 0}
!52 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !25, i64 0}
!53 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !25, i64 0}
!54 = !{!51, !51, i64 0}
!55 = !{!56, !7, i64 56}
!56 = !{!"_ZTSSt5ctypeIcE", !57, i64 0, !58, i64 16, !49, i64 24, !24, i64 32, !24, i64 40, !59, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!57 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!58 = !{!"p1 _ZTS15__locale_struct", !25, i64 0}
!59 = !{!"p1 short", !25, i64 0}
