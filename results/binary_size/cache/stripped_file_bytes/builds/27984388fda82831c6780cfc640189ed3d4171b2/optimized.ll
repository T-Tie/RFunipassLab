; ModuleID = '/tmp/tmprwosuzdr.cpp'
source_filename = "/tmp/tmprwosuzdr.cpp"
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
  %m = alloca i32, align 4
  %sum = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %a = alloca [100 x [100 x i32]], align 16
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %j16 = alloca i32, align 4
  %min = alloca i32, align 4
  %k24 = alloca i32, align 4
  %k41 = alloca i32, align 4
  %j60 = alloca i32, align 4
  %min65 = alloca i32, align 4
  %k69 = alloca i32, align 4
  %k88 = alloca i32, align 4
  %j110 = alloca i32, align 4
  %k115 = alloca i32, align 4
  %j136 = alloca i32, align 4
  %k141 = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %m) #6
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  store i32 %0, ptr %m, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %sum) #6
  store i32 0, ptr %sum, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc165, %entry
  %1 = load i32, ptr %i, align 4, !tbaa !5
  %2 = load i32, ptr %m, align 4, !tbaa !5
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6
  br label %for.end167

for.body:                                         ; preds = %for.cond
  %3 = load i32, ptr %m, align 4, !tbaa !5
  store i32 %3, ptr %n, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 40000, ptr %a) #6
  store i32 0, ptr %sum, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #6
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc12, %for.body
  %4 = load i32, ptr %j, align 4, !tbaa !5
  %5 = load i32, ptr %n, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %4, %5
  br i1 %cmp2, label %for.body4, label %for.cond.cleanup3

for.cond.cleanup3:                                ; preds = %for.cond1
  store i32 5, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #6
  br label %for.end14

for.body4:                                        ; preds = %for.cond1
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #6
  store i32 0, ptr %k, align 4, !tbaa !5
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc, %for.body4
  %6 = load i32, ptr %k, align 4, !tbaa !5
  %7 = load i32, ptr %n, align 4, !tbaa !5
  %cmp6 = icmp slt i32 %6, %7
  br i1 %cmp6, label %for.body8, label %for.cond.cleanup7

for.cond.cleanup7:                                ; preds = %for.cond5
  store i32 8, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #6
  br label %for.end

for.body8:                                        ; preds = %for.cond5
  %8 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom
  %9 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom9 = sext i32 %9 to i64
  %arrayidx10 = getelementptr inbounds [100 x i32], ptr %arrayidx, i64 0, i64 %idxprom9
  %call11 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx10)
  br label %for.inc

for.inc:                                          ; preds = %for.body8
  %10 = load i32, ptr %k, align 4, !tbaa !5
  %inc = add nsw i32 %10, 1
  store i32 %inc, ptr %k, align 4, !tbaa !5
  br label %for.cond5, !llvm.loop !9

for.end:                                          ; preds = %for.cond.cleanup7
  br label %for.inc12

for.inc12:                                        ; preds = %for.end
  %11 = load i32, ptr %j, align 4, !tbaa !5
  %inc13 = add nsw i32 %11, 1
  store i32 %inc13, ptr %j, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !12

for.end14:                                        ; preds = %for.cond.cleanup3
  br label %while.cond

while.cond:                                       ; preds = %for.end161, %for.end14
  %12 = load i32, ptr %n, align 4, !tbaa !5
  %cmp15 = icmp sgt i32 %12, 1
  br i1 %cmp15, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %j16) #6
  store i32 0, ptr %j16, align 4, !tbaa !5
  br label %for.cond17

for.cond17:                                       ; preds = %for.inc57, %while.body
  %13 = load i32, ptr %j16, align 4, !tbaa !5
  %14 = load i32, ptr %n, align 4, !tbaa !5
  %cmp18 = icmp slt i32 %13, %14
  br i1 %cmp18, label %for.body20, label %for.cond.cleanup19

for.cond.cleanup19:                               ; preds = %for.cond17
  store i32 13, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %j16) #6
  br label %for.end59

for.body20:                                       ; preds = %for.cond17
  call void @llvm.lifetime.start.p0(i64 4, ptr %min) #6
  %15 = load i32, ptr %j16, align 4, !tbaa !5
  %idxprom21 = sext i32 %15 to i64
  %arrayidx22 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom21
  %arrayidx23 = getelementptr inbounds [100 x i32], ptr %arrayidx22, i64 0, i64 0
  %16 = load i32, ptr %arrayidx23, align 16, !tbaa !5
  store i32 %16, ptr %min, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %k24) #6
  store i32 0, ptr %k24, align 4, !tbaa !5
  br label %for.cond25

for.cond25:                                       ; preds = %for.inc38, %for.body20
  %17 = load i32, ptr %k24, align 4, !tbaa !5
  %18 = load i32, ptr %n, align 4, !tbaa !5
  %cmp26 = icmp slt i32 %17, %18
  br i1 %cmp26, label %for.body28, label %for.cond.cleanup27

for.cond.cleanup27:                               ; preds = %for.cond25
  store i32 16, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %k24) #6
  br label %for.end40

for.body28:                                       ; preds = %for.cond25
  %19 = load i32, ptr %j16, align 4, !tbaa !5
  %idxprom29 = sext i32 %19 to i64
  %arrayidx30 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom29
  %20 = load i32, ptr %k24, align 4, !tbaa !5
  %idxprom31 = sext i32 %20 to i64
  %arrayidx32 = getelementptr inbounds [100 x i32], ptr %arrayidx30, i64 0, i64 %idxprom31
  %21 = load i32, ptr %arrayidx32, align 4, !tbaa !5
  %22 = load i32, ptr %min, align 4, !tbaa !5
  %cmp33 = icmp slt i32 %21, %22
  br i1 %cmp33, label %if.then, label %if.end

if.then:                                          ; preds = %for.body28
  %23 = load i32, ptr %j16, align 4, !tbaa !5
  %idxprom34 = sext i32 %23 to i64
  %arrayidx35 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom34
  %24 = load i32, ptr %k24, align 4, !tbaa !5
  %idxprom36 = sext i32 %24 to i64
  %arrayidx37 = getelementptr inbounds [100 x i32], ptr %arrayidx35, i64 0, i64 %idxprom36
  %25 = load i32, ptr %arrayidx37, align 4, !tbaa !5
  store i32 %25, ptr %min, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body28
  br label %for.inc38

for.inc38:                                        ; preds = %if.end
  %26 = load i32, ptr %k24, align 4, !tbaa !5
  %inc39 = add nsw i32 %26, 1
  store i32 %inc39, ptr %k24, align 4, !tbaa !5
  br label %for.cond25, !llvm.loop !13

for.end40:                                        ; preds = %for.cond.cleanup27
  call void @llvm.lifetime.start.p0(i64 4, ptr %k41) #6
  store i32 0, ptr %k41, align 4, !tbaa !5
  br label %for.cond42

for.cond42:                                       ; preds = %for.inc54, %for.end40
  %27 = load i32, ptr %k41, align 4, !tbaa !5
  %28 = load i32, ptr %n, align 4, !tbaa !5
  %cmp43 = icmp slt i32 %27, %28
  br i1 %cmp43, label %for.body45, label %for.cond.cleanup44

for.cond.cleanup44:                               ; preds = %for.cond42
  store i32 19, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %k41) #6
  br label %for.end56

for.body45:                                       ; preds = %for.cond42
  %29 = load i32, ptr %j16, align 4, !tbaa !5
  %idxprom46 = sext i32 %29 to i64
  %arrayidx47 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom46
  %30 = load i32, ptr %k41, align 4, !tbaa !5
  %idxprom48 = sext i32 %30 to i64
  %arrayidx49 = getelementptr inbounds [100 x i32], ptr %arrayidx47, i64 0, i64 %idxprom48
  %31 = load i32, ptr %arrayidx49, align 4, !tbaa !5
  %32 = load i32, ptr %min, align 4, !tbaa !5
  %sub = sub nsw i32 %31, %32
  %33 = load i32, ptr %j16, align 4, !tbaa !5
  %idxprom50 = sext i32 %33 to i64
  %arrayidx51 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom50
  %34 = load i32, ptr %k41, align 4, !tbaa !5
  %idxprom52 = sext i32 %34 to i64
  %arrayidx53 = getelementptr inbounds [100 x i32], ptr %arrayidx51, i64 0, i64 %idxprom52
  store i32 %sub, ptr %arrayidx53, align 4, !tbaa !5
  br label %for.inc54

for.inc54:                                        ; preds = %for.body45
  %35 = load i32, ptr %k41, align 4, !tbaa !5
  %inc55 = add nsw i32 %35, 1
  store i32 %inc55, ptr %k41, align 4, !tbaa !5
  br label %for.cond42, !llvm.loop !14

for.end56:                                        ; preds = %for.cond.cleanup44
  call void @llvm.lifetime.end.p0(i64 4, ptr %min) #6
  br label %for.inc57

for.inc57:                                        ; preds = %for.end56
  %36 = load i32, ptr %j16, align 4, !tbaa !5
  %inc58 = add nsw i32 %36, 1
  store i32 %inc58, ptr %j16, align 4, !tbaa !5
  br label %for.cond17, !llvm.loop !15

for.end59:                                        ; preds = %for.cond.cleanup19
  call void @llvm.lifetime.start.p0(i64 4, ptr %j60) #6
  store i32 0, ptr %j60, align 4, !tbaa !5
  br label %for.cond61

for.cond61:                                       ; preds = %for.inc105, %for.end59
  %37 = load i32, ptr %j60, align 4, !tbaa !5
  %38 = load i32, ptr %n, align 4, !tbaa !5
  %cmp62 = icmp slt i32 %37, %38
  br i1 %cmp62, label %for.body64, label %for.cond.cleanup63

for.cond.cleanup63:                               ; preds = %for.cond61
  store i32 22, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %j60) #6
  br label %for.end107

for.body64:                                       ; preds = %for.cond61
  call void @llvm.lifetime.start.p0(i64 4, ptr %min65) #6
  %arrayidx66 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 0
  %39 = load i32, ptr %j60, align 4, !tbaa !5
  %idxprom67 = sext i32 %39 to i64
  %arrayidx68 = getelementptr inbounds [100 x i32], ptr %arrayidx66, i64 0, i64 %idxprom67
  %40 = load i32, ptr %arrayidx68, align 4, !tbaa !5
  store i32 %40, ptr %min65, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %k69) #6
  store i32 0, ptr %k69, align 4, !tbaa !5
  br label %for.cond70

for.cond70:                                       ; preds = %for.inc85, %for.body64
  %41 = load i32, ptr %k69, align 4, !tbaa !5
  %42 = load i32, ptr %n, align 4, !tbaa !5
  %cmp71 = icmp slt i32 %41, %42
  br i1 %cmp71, label %for.body73, label %for.cond.cleanup72

for.cond.cleanup72:                               ; preds = %for.cond70
  store i32 25, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %k69) #6
  br label %for.end87

for.body73:                                       ; preds = %for.cond70
  %43 = load i32, ptr %k69, align 4, !tbaa !5
  %idxprom74 = sext i32 %43 to i64
  %arrayidx75 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom74
  %44 = load i32, ptr %j60, align 4, !tbaa !5
  %idxprom76 = sext i32 %44 to i64
  %arrayidx77 = getelementptr inbounds [100 x i32], ptr %arrayidx75, i64 0, i64 %idxprom76
  %45 = load i32, ptr %arrayidx77, align 4, !tbaa !5
  %46 = load i32, ptr %min65, align 4, !tbaa !5
  %cmp78 = icmp slt i32 %45, %46
  br i1 %cmp78, label %if.then79, label %if.end84

if.then79:                                        ; preds = %for.body73
  %47 = load i32, ptr %k69, align 4, !tbaa !5
  %idxprom80 = sext i32 %47 to i64
  %arrayidx81 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom80
  %48 = load i32, ptr %j60, align 4, !tbaa !5
  %idxprom82 = sext i32 %48 to i64
  %arrayidx83 = getelementptr inbounds [100 x i32], ptr %arrayidx81, i64 0, i64 %idxprom82
  %49 = load i32, ptr %arrayidx83, align 4, !tbaa !5
  store i32 %49, ptr %min65, align 4, !tbaa !5
  br label %if.end84

if.end84:                                         ; preds = %if.then79, %for.body73
  br label %for.inc85

for.inc85:                                        ; preds = %if.end84
  %50 = load i32, ptr %k69, align 4, !tbaa !5
  %inc86 = add nsw i32 %50, 1
  store i32 %inc86, ptr %k69, align 4, !tbaa !5
  br label %for.cond70, !llvm.loop !16

for.end87:                                        ; preds = %for.cond.cleanup72
  call void @llvm.lifetime.start.p0(i64 4, ptr %k88) #6
  store i32 0, ptr %k88, align 4, !tbaa !5
  br label %for.cond89

for.cond89:                                       ; preds = %for.inc102, %for.end87
  %51 = load i32, ptr %k88, align 4, !tbaa !5
  %52 = load i32, ptr %n, align 4, !tbaa !5
  %cmp90 = icmp slt i32 %51, %52
  br i1 %cmp90, label %for.body92, label %for.cond.cleanup91

for.cond.cleanup91:                               ; preds = %for.cond89
  store i32 28, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %k88) #6
  br label %for.end104

for.body92:                                       ; preds = %for.cond89
  %53 = load i32, ptr %k88, align 4, !tbaa !5
  %idxprom93 = sext i32 %53 to i64
  %arrayidx94 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom93
  %54 = load i32, ptr %j60, align 4, !tbaa !5
  %idxprom95 = sext i32 %54 to i64
  %arrayidx96 = getelementptr inbounds [100 x i32], ptr %arrayidx94, i64 0, i64 %idxprom95
  %55 = load i32, ptr %arrayidx96, align 4, !tbaa !5
  %56 = load i32, ptr %min65, align 4, !tbaa !5
  %sub97 = sub nsw i32 %55, %56
  %57 = load i32, ptr %k88, align 4, !tbaa !5
  %idxprom98 = sext i32 %57 to i64
  %arrayidx99 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom98
  %58 = load i32, ptr %j60, align 4, !tbaa !5
  %idxprom100 = sext i32 %58 to i64
  %arrayidx101 = getelementptr inbounds [100 x i32], ptr %arrayidx99, i64 0, i64 %idxprom100
  store i32 %sub97, ptr %arrayidx101, align 4, !tbaa !5
  br label %for.inc102

for.inc102:                                       ; preds = %for.body92
  %59 = load i32, ptr %k88, align 4, !tbaa !5
  %inc103 = add nsw i32 %59, 1
  store i32 %inc103, ptr %k88, align 4, !tbaa !5
  br label %for.cond89, !llvm.loop !17

for.end104:                                       ; preds = %for.cond.cleanup91
  call void @llvm.lifetime.end.p0(i64 4, ptr %min65) #6
  br label %for.inc105

for.inc105:                                       ; preds = %for.end104
  %60 = load i32, ptr %j60, align 4, !tbaa !5
  %inc106 = add nsw i32 %60, 1
  store i32 %inc106, ptr %j60, align 4, !tbaa !5
  br label %for.cond61, !llvm.loop !18

for.end107:                                       ; preds = %for.cond.cleanup63
  %61 = load i32, ptr %sum, align 4, !tbaa !5
  %arrayidx108 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 1
  %arrayidx109 = getelementptr inbounds [100 x i32], ptr %arrayidx108, i64 0, i64 1
  %62 = load i32, ptr %arrayidx109, align 4, !tbaa !5
  %add = add nsw i32 %61, %62
  store i32 %add, ptr %sum, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %j110) #6
  store i32 0, ptr %j110, align 4, !tbaa !5
  br label %for.cond111

for.cond111:                                      ; preds = %for.inc133, %for.end107
  %63 = load i32, ptr %j110, align 4, !tbaa !5
  %64 = load i32, ptr %n, align 4, !tbaa !5
  %cmp112 = icmp slt i32 %63, %64
  br i1 %cmp112, label %for.body114, label %for.cond.cleanup113

for.cond.cleanup113:                              ; preds = %for.cond111
  store i32 31, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %j110) #6
  br label %for.end135

for.body114:                                      ; preds = %for.cond111
  call void @llvm.lifetime.start.p0(i64 4, ptr %k115) #6
  store i32 1, ptr %k115, align 4, !tbaa !5
  br label %for.cond116

for.cond116:                                      ; preds = %for.inc130, %for.body114
  %65 = load i32, ptr %k115, align 4, !tbaa !5
  %66 = load i32, ptr %n, align 4, !tbaa !5
  %sub117 = sub nsw i32 %66, 1
  %cmp118 = icmp slt i32 %65, %sub117
  br i1 %cmp118, label %for.body120, label %for.cond.cleanup119

for.cond.cleanup119:                              ; preds = %for.cond116
  store i32 34, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %k115) #6
  br label %for.end132

for.body120:                                      ; preds = %for.cond116
  %67 = load i32, ptr %j110, align 4, !tbaa !5
  %idxprom121 = sext i32 %67 to i64
  %arrayidx122 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom121
  %68 = load i32, ptr %k115, align 4, !tbaa !5
  %add123 = add nsw i32 %68, 1
  %idxprom124 = sext i32 %add123 to i64
  %arrayidx125 = getelementptr inbounds [100 x i32], ptr %arrayidx122, i64 0, i64 %idxprom124
  %69 = load i32, ptr %arrayidx125, align 4, !tbaa !5
  %70 = load i32, ptr %j110, align 4, !tbaa !5
  %idxprom126 = sext i32 %70 to i64
  %arrayidx127 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom126
  %71 = load i32, ptr %k115, align 4, !tbaa !5
  %idxprom128 = sext i32 %71 to i64
  %arrayidx129 = getelementptr inbounds [100 x i32], ptr %arrayidx127, i64 0, i64 %idxprom128
  store i32 %69, ptr %arrayidx129, align 4, !tbaa !5
  br label %for.inc130

for.inc130:                                       ; preds = %for.body120
  %72 = load i32, ptr %k115, align 4, !tbaa !5
  %inc131 = add nsw i32 %72, 1
  store i32 %inc131, ptr %k115, align 4, !tbaa !5
  br label %for.cond116, !llvm.loop !19

for.end132:                                       ; preds = %for.cond.cleanup119
  br label %for.inc133

for.inc133:                                       ; preds = %for.end132
  %73 = load i32, ptr %j110, align 4, !tbaa !5
  %inc134 = add nsw i32 %73, 1
  store i32 %inc134, ptr %j110, align 4, !tbaa !5
  br label %for.cond111, !llvm.loop !20

for.end135:                                       ; preds = %for.cond.cleanup113
  call void @llvm.lifetime.start.p0(i64 4, ptr %j136) #6
  store i32 0, ptr %j136, align 4, !tbaa !5
  br label %for.cond137

for.cond137:                                      ; preds = %for.inc159, %for.end135
  %74 = load i32, ptr %j136, align 4, !tbaa !5
  %75 = load i32, ptr %n, align 4, !tbaa !5
  %cmp138 = icmp slt i32 %74, %75
  br i1 %cmp138, label %for.body140, label %for.cond.cleanup139

for.cond.cleanup139:                              ; preds = %for.cond137
  store i32 37, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %j136) #6
  br label %for.end161

for.body140:                                      ; preds = %for.cond137
  call void @llvm.lifetime.start.p0(i64 4, ptr %k141) #6
  store i32 1, ptr %k141, align 4, !tbaa !5
  br label %for.cond142

for.cond142:                                      ; preds = %for.inc156, %for.body140
  %76 = load i32, ptr %k141, align 4, !tbaa !5
  %77 = load i32, ptr %n, align 4, !tbaa !5
  %sub143 = sub nsw i32 %77, 1
  %cmp144 = icmp slt i32 %76, %sub143
  br i1 %cmp144, label %for.body146, label %for.cond.cleanup145

for.cond.cleanup145:                              ; preds = %for.cond142
  store i32 40, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %k141) #6
  br label %for.end158

for.body146:                                      ; preds = %for.cond142
  %78 = load i32, ptr %k141, align 4, !tbaa !5
  %add147 = add nsw i32 %78, 1
  %idxprom148 = sext i32 %add147 to i64
  %arrayidx149 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom148
  %79 = load i32, ptr %j136, align 4, !tbaa !5
  %idxprom150 = sext i32 %79 to i64
  %arrayidx151 = getelementptr inbounds [100 x i32], ptr %arrayidx149, i64 0, i64 %idxprom150
  %80 = load i32, ptr %arrayidx151, align 4, !tbaa !5
  %81 = load i32, ptr %k141, align 4, !tbaa !5
  %idxprom152 = sext i32 %81 to i64
  %arrayidx153 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom152
  %82 = load i32, ptr %j136, align 4, !tbaa !5
  %idxprom154 = sext i32 %82 to i64
  %arrayidx155 = getelementptr inbounds [100 x i32], ptr %arrayidx153, i64 0, i64 %idxprom154
  store i32 %80, ptr %arrayidx155, align 4, !tbaa !5
  br label %for.inc156

for.inc156:                                       ; preds = %for.body146
  %83 = load i32, ptr %k141, align 4, !tbaa !5
  %inc157 = add nsw i32 %83, 1
  store i32 %inc157, ptr %k141, align 4, !tbaa !5
  br label %for.cond142, !llvm.loop !21

for.end158:                                       ; preds = %for.cond.cleanup145
  br label %for.inc159

for.inc159:                                       ; preds = %for.end158
  %84 = load i32, ptr %j136, align 4, !tbaa !5
  %inc160 = add nsw i32 %84, 1
  store i32 %inc160, ptr %j136, align 4, !tbaa !5
  br label %for.cond137, !llvm.loop !22

for.end161:                                       ; preds = %for.cond.cleanup139
  %85 = load i32, ptr %n, align 4, !tbaa !5
  %sub162 = sub nsw i32 %85, 1
  store i32 %sub162, ptr %n, align 4, !tbaa !5
  br label %while.cond, !llvm.loop !23

while.end:                                        ; preds = %while.cond
  %86 = load i32, ptr %sum, align 4, !tbaa !5
  %call163 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %86)
  %call164 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call163, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  call void @llvm.lifetime.end.p0(i64 40000, ptr %a) #6
  br label %for.inc165

for.inc165:                                       ; preds = %while.end
  %87 = load i32, ptr %i, align 4, !tbaa !5
  %inc166 = add nsw i32 %87, 1
  store i32 %inc166, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !24

for.end167:                                       ; preds = %for.cond.cleanup
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %sum) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %m) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #6
  %88 = load i32, ptr %retval, align 4
  ret i32 %88
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) #2

; Function Attrs: mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef %__pf) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__pf.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !25
  store ptr %__pf, ptr %__pf.addr, align 8, !tbaa !28
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__pf.addr, align 8, !tbaa !28
  %call = call noundef nonnull align 8 dereferenceable(8) ptr %0(ptr noundef nonnull align 8 dereferenceable(8) %this1)
  ret ptr %call
}

; Function Attrs: inlinehint mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %__os) #4 {
entry:
  %__os.addr = alloca ptr, align 8
  store ptr %__os, ptr %__os.addr, align 8, !tbaa !25
  %0 = load ptr, ptr %__os.addr, align 8, !tbaa !25, !nonnull !29, !align !30
  %1 = load ptr, ptr %__os.addr, align 8, !tbaa !25, !nonnull !29, !align !30
  %vtable = load ptr, ptr %1, align 8, !tbaa !31
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %1, i64 %vbase.offset
  %call = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr, i8 noundef signext 10)
  %call1 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %call)
  %call2 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %call1)
  ret ptr %call2
}

; Function Attrs: inlinehint mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %__os) #4 {
entry:
  %__os.addr = alloca ptr, align 8
  store ptr %__os, ptr %__os.addr, align 8, !tbaa !25
  %0 = load ptr, ptr %__os.addr, align 8, !tbaa !25, !nonnull !29, !align !30
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  ret ptr %call
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) #2

; Function Attrs: mustprogress uwtable
define available_externally noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %this, i8 noundef signext %__c) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__c.addr = alloca i8, align 1
  store ptr %this, ptr %this.addr, align 8, !tbaa !33
  store i8 %__c, ptr %__c.addr, align 1, !tbaa !35
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_ctype = getelementptr inbounds nuw %"class.std::basic_ios", ptr %this1, i32 0, i32 5
  %0 = load ptr, ptr %_M_ctype, align 8, !tbaa !36
  %call = call noundef nonnull align 8 dereferenceable(570) ptr @_ZSt13__check_facetISt5ctypeIcEERKT_PS3_(ptr noundef %0)
  %1 = load i8, ptr %__c.addr, align 1, !tbaa !35
  %call2 = call noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %call, i8 noundef signext %1)
  ret i8 %call2
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) #2

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(570) ptr @_ZSt13__check_facetISt5ctypeIcEERKT_PS3_(ptr noundef %__f) #4 comdat {
entry:
  %__f.addr = alloca ptr, align 8
  store ptr %__f, ptr %__f.addr, align 8, !tbaa !52
  %0 = load ptr, ptr %__f.addr, align 8, !tbaa !52
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @_ZSt16__throw_bad_castv() #7
  unreachable

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %__f.addr, align 8, !tbaa !52
  ret ptr %1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %this, i8 noundef signext %__c) #3 comdat align 2 {
entry:
  %retval = alloca i8, align 1
  %this.addr = alloca ptr, align 8
  %__c.addr = alloca i8, align 1
  store ptr %this, ptr %this.addr, align 8, !tbaa !52
  store i8 %__c, ptr %__c.addr, align 1, !tbaa !35
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_widen_ok = getelementptr inbounds nuw %"class.std::ctype", ptr %this1, i32 0, i32 8
  %0 = load i8, ptr %_M_widen_ok, align 8, !tbaa !53
  %tobool = icmp ne i8 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %_M_widen = getelementptr inbounds nuw %"class.std::ctype", ptr %this1, i32 0, i32 9
  %1 = load i8, ptr %__c.addr, align 1, !tbaa !35
  %idxprom = zext i8 %1 to i64
  %arrayidx = getelementptr inbounds nuw [256 x i8], ptr %_M_widen, i64 0, i64 %idxprom
  %2 = load i8, ptr %arrayidx, align 1, !tbaa !35
  store i8 %2, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %this1)
  %3 = load i8, ptr %__c.addr, align 1, !tbaa !35
  %vtable = load ptr, ptr %this1, align 8, !tbaa !31
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
declare void @_ZSt16__throw_bad_castv() #5

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) #2

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { noreturn }

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
!23 = distinct !{!23, !10, !11}
!24 = distinct !{!24, !10, !11}
!25 = !{!26, !26, i64 0}
!26 = !{!"p1 _ZTSSo", !27, i64 0}
!27 = !{!"any pointer", !7, i64 0}
!28 = !{!27, !27, i64 0}
!29 = !{}
!30 = !{i64 8}
!31 = !{!32, !32, i64 0}
!32 = !{!"vtable pointer", !8, i64 0}
!33 = !{!34, !34, i64 0}
!34 = !{!"p1 _ZTSSt9basic_iosIcSt11char_traitsIcEE", !27, i64 0}
!35 = !{!7, !7, i64 0}
!36 = !{!37, !49, i64 240}
!37 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !38, i64 0, !26, i64 216, !7, i64 224, !47, i64 225, !48, i64 232, !49, i64 240, !50, i64 248, !51, i64 256}
!38 = !{!"_ZTSSt8ios_base", !39, i64 8, !39, i64 16, !40, i64 24, !41, i64 28, !41, i64 32, !42, i64 40, !43, i64 48, !7, i64 64, !6, i64 192, !44, i64 200, !45, i64 208}
!39 = !{!"long", !7, i64 0}
!40 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!41 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!42 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !27, i64 0}
!43 = !{!"_ZTSNSt8ios_base6_WordsE", !27, i64 0, !39, i64 8}
!44 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !27, i64 0}
!45 = !{!"_ZTSSt6locale", !46, i64 0}
!46 = !{!"p1 _ZTSNSt6locale5_ImplE", !27, i64 0}
!47 = !{!"bool", !7, i64 0}
!48 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !27, i64 0}
!49 = !{!"p1 _ZTSSt5ctypeIcE", !27, i64 0}
!50 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !27, i64 0}
!51 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !27, i64 0}
!52 = !{!49, !49, i64 0}
!53 = !{!54, !7, i64 56}
!54 = !{!"_ZTSSt5ctypeIcE", !55, i64 0, !56, i64 16, !47, i64 24, !57, i64 32, !57, i64 40, !58, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!55 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!56 = !{!"p1 _ZTS15__locale_struct", !27, i64 0}
!57 = !{!"p1 int", !27, i64 0}
!58 = !{!"p1 short", !27, i64 0}
