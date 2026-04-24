; ModuleID = '/tmp/tmpw8ovaago.cpp'
source_filename = "/tmp/tmpw8ovaago.cpp"
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

@a = dso_local global [101 x [101 x i32]] zeroinitializer, align 16
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_Z4xiaoi(i32 noundef %n) #0 {
entry:
  %retval = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %t = alloca i32, align 4
  %minh = alloca [101 x i32], align 16
  %minl = alloca [101 x i32], align 16
  %temp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %n, ptr %n.addr, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %t) #7
  call void @llvm.lifetime.start.p0(i64 404, ptr %minh) #7
  call void @llvm.memset.p0.i64(ptr align 16 %minh, i8 0, i64 404, i1 false)
  call void @llvm.lifetime.start.p0(i64 404, ptr %minl) #7
  call void @llvm.memset.p0.i64(ptr align 16 %minl, i8 0, i64 404, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr %temp) #7
  store i32 0, ptr %temp, align 4, !tbaa !5
  %0 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp = icmp eq i32 %0, 2
  br i1 %cmp, label %if.then, label %if.end81

if.then:                                          ; preds = %entry
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc34, %if.then
  %1 = load i32, ptr %i, align 4, !tbaa !5
  %2 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp1 = icmp slt i32 %1, %2
  br i1 %cmp1, label %for.body, label %for.end36

for.body:                                         ; preds = %for.cond
  %3 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [101 x [101 x i32]], ptr @a, i64 0, i64 %idxprom
  %arrayidx2 = getelementptr inbounds [101 x i32], ptr %arrayidx, i64 0, i64 0
  %4 = load i32, ptr %arrayidx2, align 4, !tbaa !5
  %5 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom3 = sext i32 %5 to i64
  %arrayidx4 = getelementptr inbounds [101 x i32], ptr %minh, i64 0, i64 %idxprom3
  store i32 %4, ptr %arrayidx4, align 4, !tbaa !5
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc, %for.body
  %6 = load i32, ptr %j, align 4, !tbaa !5
  %7 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp6 = icmp slt i32 %6, %7
  br i1 %cmp6, label %for.body7, label %for.end

for.body7:                                        ; preds = %for.cond5
  %8 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom8 = sext i32 %8 to i64
  %arrayidx9 = getelementptr inbounds [101 x [101 x i32]], ptr @a, i64 0, i64 %idxprom8
  %9 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom10 = sext i32 %9 to i64
  %arrayidx11 = getelementptr inbounds [101 x i32], ptr %arrayidx9, i64 0, i64 %idxprom10
  %10 = load i32, ptr %arrayidx11, align 4, !tbaa !5
  %11 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom12 = sext i32 %11 to i64
  %arrayidx13 = getelementptr inbounds [101 x i32], ptr %minh, i64 0, i64 %idxprom12
  %12 = load i32, ptr %arrayidx13, align 4, !tbaa !5
  %cmp14 = icmp slt i32 %10, %12
  br i1 %cmp14, label %if.then15, label %if.end

if.then15:                                        ; preds = %for.body7
  %13 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom16 = sext i32 %13 to i64
  %arrayidx17 = getelementptr inbounds [101 x [101 x i32]], ptr @a, i64 0, i64 %idxprom16
  %14 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom18 = sext i32 %14 to i64
  %arrayidx19 = getelementptr inbounds [101 x i32], ptr %arrayidx17, i64 0, i64 %idxprom18
  %15 = load i32, ptr %arrayidx19, align 4, !tbaa !5
  %16 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom20 = sext i32 %16 to i64
  %arrayidx21 = getelementptr inbounds [101 x i32], ptr %minh, i64 0, i64 %idxprom20
  store i32 %15, ptr %arrayidx21, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then15, %for.body7
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %17 = load i32, ptr %j, align 4, !tbaa !5
  %inc = add nsw i32 %17, 1
  store i32 %inc, ptr %j, align 4, !tbaa !5
  br label %for.cond5, !llvm.loop !9

for.end:                                          ; preds = %for.cond5
  store i32 0, ptr %t, align 4, !tbaa !5
  br label %for.cond22

for.cond22:                                       ; preds = %for.inc31, %for.end
  %18 = load i32, ptr %t, align 4, !tbaa !5
  %19 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp23 = icmp slt i32 %18, %19
  br i1 %cmp23, label %for.body24, label %for.end33

for.body24:                                       ; preds = %for.cond22
  %20 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom25 = sext i32 %20 to i64
  %arrayidx26 = getelementptr inbounds [101 x i32], ptr %minh, i64 0, i64 %idxprom25
  %21 = load i32, ptr %arrayidx26, align 4, !tbaa !5
  %22 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom27 = sext i32 %22 to i64
  %arrayidx28 = getelementptr inbounds [101 x [101 x i32]], ptr @a, i64 0, i64 %idxprom27
  %23 = load i32, ptr %t, align 4, !tbaa !5
  %idxprom29 = sext i32 %23 to i64
  %arrayidx30 = getelementptr inbounds [101 x i32], ptr %arrayidx28, i64 0, i64 %idxprom29
  %24 = load i32, ptr %arrayidx30, align 4, !tbaa !5
  %sub = sub nsw i32 %24, %21
  store i32 %sub, ptr %arrayidx30, align 4, !tbaa !5
  br label %for.inc31

for.inc31:                                        ; preds = %for.body24
  %25 = load i32, ptr %t, align 4, !tbaa !5
  %inc32 = add nsw i32 %25, 1
  store i32 %inc32, ptr %t, align 4, !tbaa !5
  br label %for.cond22, !llvm.loop !12

for.end33:                                        ; preds = %for.cond22
  br label %for.inc34

for.inc34:                                        ; preds = %for.end33
  %26 = load i32, ptr %i, align 4, !tbaa !5
  %inc35 = add nsw i32 %26, 1
  store i32 %inc35, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !13

for.end36:                                        ; preds = %for.cond
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond37

for.cond37:                                       ; preds = %for.inc78, %for.end36
  %27 = load i32, ptr %i, align 4, !tbaa !5
  %28 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp38 = icmp slt i32 %27, %28
  br i1 %cmp38, label %for.body39, label %for.end80

for.body39:                                       ; preds = %for.cond37
  %29 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom40 = sext i32 %29 to i64
  %arrayidx41 = getelementptr inbounds [101 x i32], ptr @a, i64 0, i64 %idxprom40
  %30 = load i32, ptr %arrayidx41, align 4, !tbaa !5
  %31 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom42 = sext i32 %31 to i64
  %arrayidx43 = getelementptr inbounds [101 x i32], ptr %minl, i64 0, i64 %idxprom42
  store i32 %30, ptr %arrayidx43, align 4, !tbaa !5
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond44

for.cond44:                                       ; preds = %for.inc62, %for.body39
  %32 = load i32, ptr %j, align 4, !tbaa !5
  %33 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp45 = icmp slt i32 %32, %33
  br i1 %cmp45, label %for.body46, label %for.end64

for.body46:                                       ; preds = %for.cond44
  %34 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom47 = sext i32 %34 to i64
  %arrayidx48 = getelementptr inbounds [101 x [101 x i32]], ptr @a, i64 0, i64 %idxprom47
  %35 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom49 = sext i32 %35 to i64
  %arrayidx50 = getelementptr inbounds [101 x i32], ptr %arrayidx48, i64 0, i64 %idxprom49
  %36 = load i32, ptr %arrayidx50, align 4, !tbaa !5
  %37 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom51 = sext i32 %37 to i64
  %arrayidx52 = getelementptr inbounds [101 x i32], ptr %minl, i64 0, i64 %idxprom51
  %38 = load i32, ptr %arrayidx52, align 4, !tbaa !5
  %cmp53 = icmp slt i32 %36, %38
  br i1 %cmp53, label %if.then54, label %if.end61

if.then54:                                        ; preds = %for.body46
  %39 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom55 = sext i32 %39 to i64
  %arrayidx56 = getelementptr inbounds [101 x [101 x i32]], ptr @a, i64 0, i64 %idxprom55
  %40 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom57 = sext i32 %40 to i64
  %arrayidx58 = getelementptr inbounds [101 x i32], ptr %arrayidx56, i64 0, i64 %idxprom57
  %41 = load i32, ptr %arrayidx58, align 4, !tbaa !5
  %42 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom59 = sext i32 %42 to i64
  %arrayidx60 = getelementptr inbounds [101 x i32], ptr %minl, i64 0, i64 %idxprom59
  store i32 %41, ptr %arrayidx60, align 4, !tbaa !5
  br label %if.end61

if.end61:                                         ; preds = %if.then54, %for.body46
  br label %for.inc62

for.inc62:                                        ; preds = %if.end61
  %43 = load i32, ptr %j, align 4, !tbaa !5
  %inc63 = add nsw i32 %43, 1
  store i32 %inc63, ptr %j, align 4, !tbaa !5
  br label %for.cond44, !llvm.loop !14

for.end64:                                        ; preds = %for.cond44
  store i32 0, ptr %t, align 4, !tbaa !5
  br label %for.cond65

for.cond65:                                       ; preds = %for.inc75, %for.end64
  %44 = load i32, ptr %t, align 4, !tbaa !5
  %45 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp66 = icmp slt i32 %44, %45
  br i1 %cmp66, label %for.body67, label %for.end77

for.body67:                                       ; preds = %for.cond65
  %46 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom68 = sext i32 %46 to i64
  %arrayidx69 = getelementptr inbounds [101 x i32], ptr %minl, i64 0, i64 %idxprom68
  %47 = load i32, ptr %arrayidx69, align 4, !tbaa !5
  %48 = load i32, ptr %t, align 4, !tbaa !5
  %idxprom70 = sext i32 %48 to i64
  %arrayidx71 = getelementptr inbounds [101 x [101 x i32]], ptr @a, i64 0, i64 %idxprom70
  %49 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom72 = sext i32 %49 to i64
  %arrayidx73 = getelementptr inbounds [101 x i32], ptr %arrayidx71, i64 0, i64 %idxprom72
  %50 = load i32, ptr %arrayidx73, align 4, !tbaa !5
  %sub74 = sub nsw i32 %50, %47
  store i32 %sub74, ptr %arrayidx73, align 4, !tbaa !5
  br label %for.inc75

for.inc75:                                        ; preds = %for.body67
  %51 = load i32, ptr %t, align 4, !tbaa !5
  %inc76 = add nsw i32 %51, 1
  store i32 %inc76, ptr %t, align 4, !tbaa !5
  br label %for.cond65, !llvm.loop !15

for.end77:                                        ; preds = %for.cond65
  br label %for.inc78

for.inc78:                                        ; preds = %for.end77
  %52 = load i32, ptr %i, align 4, !tbaa !5
  %inc79 = add nsw i32 %52, 1
  store i32 %inc79, ptr %i, align 4, !tbaa !5
  br label %for.cond37, !llvm.loop !16

for.end80:                                        ; preds = %for.cond37
  %53 = load i32, ptr getelementptr inbounds ([101 x i32], ptr getelementptr inbounds ([101 x [101 x i32]], ptr @a, i64 0, i64 1), i64 0, i64 1), align 4, !tbaa !5
  store i32 %53, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end81:                                         ; preds = %entry
  %54 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp82 = icmp sge i32 %54, 2
  br i1 %cmp82, label %if.then83, label %if.end208

if.then83:                                        ; preds = %if.end81
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond84

for.cond84:                                       ; preds = %for.inc126, %if.then83
  %55 = load i32, ptr %i, align 4, !tbaa !5
  %56 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp85 = icmp slt i32 %55, %56
  br i1 %cmp85, label %for.body86, label %for.end128

for.body86:                                       ; preds = %for.cond84
  %57 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom87 = sext i32 %57 to i64
  %arrayidx88 = getelementptr inbounds [101 x [101 x i32]], ptr @a, i64 0, i64 %idxprom87
  %arrayidx89 = getelementptr inbounds [101 x i32], ptr %arrayidx88, i64 0, i64 0
  %58 = load i32, ptr %arrayidx89, align 4, !tbaa !5
  %59 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom90 = sext i32 %59 to i64
  %arrayidx91 = getelementptr inbounds [101 x i32], ptr %minh, i64 0, i64 %idxprom90
  store i32 %58, ptr %arrayidx91, align 4, !tbaa !5
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond92

for.cond92:                                       ; preds = %for.inc110, %for.body86
  %60 = load i32, ptr %j, align 4, !tbaa !5
  %61 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp93 = icmp slt i32 %60, %61
  br i1 %cmp93, label %for.body94, label %for.end112

for.body94:                                       ; preds = %for.cond92
  %62 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom95 = sext i32 %62 to i64
  %arrayidx96 = getelementptr inbounds [101 x [101 x i32]], ptr @a, i64 0, i64 %idxprom95
  %63 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom97 = sext i32 %63 to i64
  %arrayidx98 = getelementptr inbounds [101 x i32], ptr %arrayidx96, i64 0, i64 %idxprom97
  %64 = load i32, ptr %arrayidx98, align 4, !tbaa !5
  %65 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom99 = sext i32 %65 to i64
  %arrayidx100 = getelementptr inbounds [101 x i32], ptr %minh, i64 0, i64 %idxprom99
  %66 = load i32, ptr %arrayidx100, align 4, !tbaa !5
  %cmp101 = icmp slt i32 %64, %66
  br i1 %cmp101, label %if.then102, label %if.end109

if.then102:                                       ; preds = %for.body94
  %67 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom103 = sext i32 %67 to i64
  %arrayidx104 = getelementptr inbounds [101 x [101 x i32]], ptr @a, i64 0, i64 %idxprom103
  %68 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom105 = sext i32 %68 to i64
  %arrayidx106 = getelementptr inbounds [101 x i32], ptr %arrayidx104, i64 0, i64 %idxprom105
  %69 = load i32, ptr %arrayidx106, align 4, !tbaa !5
  %70 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom107 = sext i32 %70 to i64
  %arrayidx108 = getelementptr inbounds [101 x i32], ptr %minh, i64 0, i64 %idxprom107
  store i32 %69, ptr %arrayidx108, align 4, !tbaa !5
  br label %if.end109

if.end109:                                        ; preds = %if.then102, %for.body94
  br label %for.inc110

for.inc110:                                       ; preds = %if.end109
  %71 = load i32, ptr %j, align 4, !tbaa !5
  %inc111 = add nsw i32 %71, 1
  store i32 %inc111, ptr %j, align 4, !tbaa !5
  br label %for.cond92, !llvm.loop !17

for.end112:                                       ; preds = %for.cond92
  store i32 0, ptr %t, align 4, !tbaa !5
  br label %for.cond113

for.cond113:                                      ; preds = %for.inc123, %for.end112
  %72 = load i32, ptr %t, align 4, !tbaa !5
  %73 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp114 = icmp slt i32 %72, %73
  br i1 %cmp114, label %for.body115, label %for.end125

for.body115:                                      ; preds = %for.cond113
  %74 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom116 = sext i32 %74 to i64
  %arrayidx117 = getelementptr inbounds [101 x i32], ptr %minh, i64 0, i64 %idxprom116
  %75 = load i32, ptr %arrayidx117, align 4, !tbaa !5
  %76 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom118 = sext i32 %76 to i64
  %arrayidx119 = getelementptr inbounds [101 x [101 x i32]], ptr @a, i64 0, i64 %idxprom118
  %77 = load i32, ptr %t, align 4, !tbaa !5
  %idxprom120 = sext i32 %77 to i64
  %arrayidx121 = getelementptr inbounds [101 x i32], ptr %arrayidx119, i64 0, i64 %idxprom120
  %78 = load i32, ptr %arrayidx121, align 4, !tbaa !5
  %sub122 = sub nsw i32 %78, %75
  store i32 %sub122, ptr %arrayidx121, align 4, !tbaa !5
  br label %for.inc123

for.inc123:                                       ; preds = %for.body115
  %79 = load i32, ptr %t, align 4, !tbaa !5
  %inc124 = add nsw i32 %79, 1
  store i32 %inc124, ptr %t, align 4, !tbaa !5
  br label %for.cond113, !llvm.loop !18

for.end125:                                       ; preds = %for.cond113
  br label %for.inc126

for.inc126:                                       ; preds = %for.end125
  %80 = load i32, ptr %i, align 4, !tbaa !5
  %inc127 = add nsw i32 %80, 1
  store i32 %inc127, ptr %i, align 4, !tbaa !5
  br label %for.cond84, !llvm.loop !19

for.end128:                                       ; preds = %for.cond84
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond129

for.cond129:                                      ; preds = %for.inc170, %for.end128
  %81 = load i32, ptr %i, align 4, !tbaa !5
  %82 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp130 = icmp slt i32 %81, %82
  br i1 %cmp130, label %for.body131, label %for.end172

for.body131:                                      ; preds = %for.cond129
  %83 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom132 = sext i32 %83 to i64
  %arrayidx133 = getelementptr inbounds [101 x i32], ptr @a, i64 0, i64 %idxprom132
  %84 = load i32, ptr %arrayidx133, align 4, !tbaa !5
  %85 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom134 = sext i32 %85 to i64
  %arrayidx135 = getelementptr inbounds [101 x i32], ptr %minl, i64 0, i64 %idxprom134
  store i32 %84, ptr %arrayidx135, align 4, !tbaa !5
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond136

for.cond136:                                      ; preds = %for.inc154, %for.body131
  %86 = load i32, ptr %j, align 4, !tbaa !5
  %87 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp137 = icmp slt i32 %86, %87
  br i1 %cmp137, label %for.body138, label %for.end156

for.body138:                                      ; preds = %for.cond136
  %88 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom139 = sext i32 %88 to i64
  %arrayidx140 = getelementptr inbounds [101 x [101 x i32]], ptr @a, i64 0, i64 %idxprom139
  %89 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom141 = sext i32 %89 to i64
  %arrayidx142 = getelementptr inbounds [101 x i32], ptr %arrayidx140, i64 0, i64 %idxprom141
  %90 = load i32, ptr %arrayidx142, align 4, !tbaa !5
  %91 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom143 = sext i32 %91 to i64
  %arrayidx144 = getelementptr inbounds [101 x i32], ptr %minl, i64 0, i64 %idxprom143
  %92 = load i32, ptr %arrayidx144, align 4, !tbaa !5
  %cmp145 = icmp slt i32 %90, %92
  br i1 %cmp145, label %if.then146, label %if.end153

if.then146:                                       ; preds = %for.body138
  %93 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom147 = sext i32 %93 to i64
  %arrayidx148 = getelementptr inbounds [101 x [101 x i32]], ptr @a, i64 0, i64 %idxprom147
  %94 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom149 = sext i32 %94 to i64
  %arrayidx150 = getelementptr inbounds [101 x i32], ptr %arrayidx148, i64 0, i64 %idxprom149
  %95 = load i32, ptr %arrayidx150, align 4, !tbaa !5
  %96 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom151 = sext i32 %96 to i64
  %arrayidx152 = getelementptr inbounds [101 x i32], ptr %minl, i64 0, i64 %idxprom151
  store i32 %95, ptr %arrayidx152, align 4, !tbaa !5
  br label %if.end153

if.end153:                                        ; preds = %if.then146, %for.body138
  br label %for.inc154

for.inc154:                                       ; preds = %if.end153
  %97 = load i32, ptr %j, align 4, !tbaa !5
  %inc155 = add nsw i32 %97, 1
  store i32 %inc155, ptr %j, align 4, !tbaa !5
  br label %for.cond136, !llvm.loop !20

for.end156:                                       ; preds = %for.cond136
  store i32 0, ptr %t, align 4, !tbaa !5
  br label %for.cond157

for.cond157:                                      ; preds = %for.inc167, %for.end156
  %98 = load i32, ptr %t, align 4, !tbaa !5
  %99 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp158 = icmp slt i32 %98, %99
  br i1 %cmp158, label %for.body159, label %for.end169

for.body159:                                      ; preds = %for.cond157
  %100 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom160 = sext i32 %100 to i64
  %arrayidx161 = getelementptr inbounds [101 x i32], ptr %minl, i64 0, i64 %idxprom160
  %101 = load i32, ptr %arrayidx161, align 4, !tbaa !5
  %102 = load i32, ptr %t, align 4, !tbaa !5
  %idxprom162 = sext i32 %102 to i64
  %arrayidx163 = getelementptr inbounds [101 x [101 x i32]], ptr @a, i64 0, i64 %idxprom162
  %103 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom164 = sext i32 %103 to i64
  %arrayidx165 = getelementptr inbounds [101 x i32], ptr %arrayidx163, i64 0, i64 %idxprom164
  %104 = load i32, ptr %arrayidx165, align 4, !tbaa !5
  %sub166 = sub nsw i32 %104, %101
  store i32 %sub166, ptr %arrayidx165, align 4, !tbaa !5
  br label %for.inc167

for.inc167:                                       ; preds = %for.body159
  %105 = load i32, ptr %t, align 4, !tbaa !5
  %inc168 = add nsw i32 %105, 1
  store i32 %inc168, ptr %t, align 4, !tbaa !5
  br label %for.cond157, !llvm.loop !21

for.end169:                                       ; preds = %for.cond157
  br label %for.inc170

for.inc170:                                       ; preds = %for.end169
  %106 = load i32, ptr %i, align 4, !tbaa !5
  %inc171 = add nsw i32 %106, 1
  store i32 %inc171, ptr %i, align 4, !tbaa !5
  br label %for.cond129, !llvm.loop !22

for.end172:                                       ; preds = %for.cond129
  %107 = load i32, ptr getelementptr inbounds ([101 x i32], ptr getelementptr inbounds ([101 x [101 x i32]], ptr @a, i64 0, i64 1), i64 0, i64 1), align 4, !tbaa !5
  store i32 %107, ptr %temp, align 4, !tbaa !5
  store i32 2, ptr %i, align 4, !tbaa !5
  br label %for.cond173

for.cond173:                                      ; preds = %for.inc204, %for.end172
  %108 = load i32, ptr %i, align 4, !tbaa !5
  %109 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp174 = icmp slt i32 %108, %109
  br i1 %cmp174, label %for.body175, label %for.end206

for.body175:                                      ; preds = %for.cond173
  %110 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom176 = sext i32 %110 to i64
  %arrayidx177 = getelementptr inbounds [101 x [101 x i32]], ptr @a, i64 0, i64 %idxprom176
  %arrayidx178 = getelementptr inbounds [101 x i32], ptr %arrayidx177, i64 0, i64 0
  %111 = load i32, ptr %arrayidx178, align 4, !tbaa !5
  %112 = load i32, ptr %i, align 4, !tbaa !5
  %sub179 = sub nsw i32 %112, 1
  %idxprom180 = sext i32 %sub179 to i64
  %arrayidx181 = getelementptr inbounds [101 x [101 x i32]], ptr @a, i64 0, i64 %idxprom180
  %arrayidx182 = getelementptr inbounds [101 x i32], ptr %arrayidx181, i64 0, i64 0
  store i32 %111, ptr %arrayidx182, align 4, !tbaa !5
  %113 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom183 = sext i32 %113 to i64
  %arrayidx184 = getelementptr inbounds [101 x i32], ptr @a, i64 0, i64 %idxprom183
  %114 = load i32, ptr %arrayidx184, align 4, !tbaa !5
  %115 = load i32, ptr %i, align 4, !tbaa !5
  %sub185 = sub nsw i32 %115, 1
  %idxprom186 = sext i32 %sub185 to i64
  %arrayidx187 = getelementptr inbounds [101 x i32], ptr @a, i64 0, i64 %idxprom186
  store i32 %114, ptr %arrayidx187, align 4, !tbaa !5
  store i32 2, ptr %j, align 4, !tbaa !5
  br label %for.cond188

for.cond188:                                      ; preds = %for.inc201, %for.body175
  %116 = load i32, ptr %j, align 4, !tbaa !5
  %117 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp189 = icmp slt i32 %116, %117
  br i1 %cmp189, label %for.body190, label %for.end203

for.body190:                                      ; preds = %for.cond188
  %118 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom191 = sext i32 %118 to i64
  %arrayidx192 = getelementptr inbounds [101 x [101 x i32]], ptr @a, i64 0, i64 %idxprom191
  %119 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom193 = sext i32 %119 to i64
  %arrayidx194 = getelementptr inbounds [101 x i32], ptr %arrayidx192, i64 0, i64 %idxprom193
  %120 = load i32, ptr %arrayidx194, align 4, !tbaa !5
  %121 = load i32, ptr %i, align 4, !tbaa !5
  %sub195 = sub nsw i32 %121, 1
  %idxprom196 = sext i32 %sub195 to i64
  %arrayidx197 = getelementptr inbounds [101 x [101 x i32]], ptr @a, i64 0, i64 %idxprom196
  %122 = load i32, ptr %j, align 4, !tbaa !5
  %sub198 = sub nsw i32 %122, 1
  %idxprom199 = sext i32 %sub198 to i64
  %arrayidx200 = getelementptr inbounds [101 x i32], ptr %arrayidx197, i64 0, i64 %idxprom199
  store i32 %120, ptr %arrayidx200, align 4, !tbaa !5
  br label %for.inc201

for.inc201:                                       ; preds = %for.body190
  %123 = load i32, ptr %j, align 4, !tbaa !5
  %inc202 = add nsw i32 %123, 1
  store i32 %inc202, ptr %j, align 4, !tbaa !5
  br label %for.cond188, !llvm.loop !23

for.end203:                                       ; preds = %for.cond188
  br label %for.inc204

for.inc204:                                       ; preds = %for.end203
  %124 = load i32, ptr %i, align 4, !tbaa !5
  %inc205 = add nsw i32 %124, 1
  store i32 %inc205, ptr %i, align 4, !tbaa !5
  br label %for.cond173, !llvm.loop !24

for.end206:                                       ; preds = %for.cond173
  %125 = load i32, ptr %temp, align 4, !tbaa !5
  %126 = load i32, ptr %n.addr, align 4, !tbaa !5
  %sub207 = sub nsw i32 %126, 1
  %call = call noundef i32 @_Z4xiaoi(i32 noundef %sub207)
  %add = add nsw i32 %125, %call
  store i32 %add, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end208:                                        ; preds = %if.end81
  unreachable

cleanup:                                          ; preds = %for.end206, %for.end80
  call void @llvm.lifetime.end.p0(i64 4, ptr %temp) #7
  call void @llvm.lifetime.end.p0(i64 404, ptr %minl) #7
  call void @llvm.lifetime.end.p0(i64 404, ptr %minh) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %t) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #7
  %127 = load i32, ptr %retval, align 4
  ret i32 %127
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #3 {
entry:
  %retval = alloca i32, align 4
  %n = alloca i32, align 4
  %k = alloca i32, align 4
  %l = alloca i32, align 4
  %m = alloca i32, align 4
  %ans = alloca [101 x i32], align 16
  %f = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %l) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %m) #7
  call void @llvm.lifetime.start.p0(i64 404, ptr %ans) #7
  call void @llvm.memset.p0.i64(ptr align 16 %ans, i8 0, i64 404, i1 false)
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  store i32 1, ptr %m, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc16, %entry
  %0 = load i32, ptr %m, align 4, !tbaa !5
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp sle i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end18

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %k, align 4, !tbaa !5
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc10, %for.body
  %2 = load i32, ptr %k, align 4, !tbaa !5
  %3 = load i32, ptr %n, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body3, label %for.end12

for.body3:                                        ; preds = %for.cond1
  store i32 0, ptr %l, align 4, !tbaa !5
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %4 = load i32, ptr %l, align 4, !tbaa !5
  %5 = load i32, ptr %n, align 4, !tbaa !5
  %cmp5 = icmp slt i32 %4, %5
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %6 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [101 x [101 x i32]], ptr @a, i64 0, i64 %idxprom
  %7 = load i32, ptr %l, align 4, !tbaa !5
  %idxprom7 = sext i32 %7 to i64
  %arrayidx8 = getelementptr inbounds [101 x i32], ptr %arrayidx, i64 0, i64 %idxprom7
  %call9 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx8)
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %8 = load i32, ptr %l, align 4, !tbaa !5
  %inc = add nsw i32 %8, 1
  store i32 %inc, ptr %l, align 4, !tbaa !5
  br label %for.cond4, !llvm.loop !25

for.end:                                          ; preds = %for.cond4
  br label %for.inc10

for.inc10:                                        ; preds = %for.end
  %9 = load i32, ptr %k, align 4, !tbaa !5
  %inc11 = add nsw i32 %9, 1
  store i32 %inc11, ptr %k, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !26

for.end12:                                        ; preds = %for.cond1
  %10 = load i32, ptr %n, align 4, !tbaa !5
  %call13 = call noundef i32 @_Z4xiaoi(i32 noundef %10)
  %11 = load i32, ptr %m, align 4, !tbaa !5
  %idxprom14 = sext i32 %11 to i64
  %arrayidx15 = getelementptr inbounds [101 x i32], ptr %ans, i64 0, i64 %idxprom14
  store i32 %call13, ptr %arrayidx15, align 4, !tbaa !5
  br label %for.inc16

for.inc16:                                        ; preds = %for.end12
  %12 = load i32, ptr %m, align 4, !tbaa !5
  %inc17 = add nsw i32 %12, 1
  store i32 %inc17, ptr %m, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !27

for.end18:                                        ; preds = %for.cond
  store i32 1, ptr %k, align 4, !tbaa !5
  br label %for.cond19

for.cond19:                                       ; preds = %for.inc26, %for.end18
  %13 = load i32, ptr %k, align 4, !tbaa !5
  %14 = load i32, ptr %n, align 4, !tbaa !5
  %cmp20 = icmp sle i32 %13, %14
  br i1 %cmp20, label %for.body21, label %for.end28

for.body21:                                       ; preds = %for.cond19
  %15 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom22 = sext i32 %15 to i64
  %arrayidx23 = getelementptr inbounds [101 x i32], ptr %ans, i64 0, i64 %idxprom22
  %16 = load i32, ptr %arrayidx23, align 4, !tbaa !5
  %call24 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %16)
  %call25 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call24, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %for.inc26

for.inc26:                                        ; preds = %for.body21
  %17 = load i32, ptr %k, align 4, !tbaa !5
  %inc27 = add nsw i32 %17, 1
  store i32 %inc27, ptr %k, align 4, !tbaa !5
  br label %for.cond19, !llvm.loop !28

for.end28:                                        ; preds = %for.cond19
  call void @llvm.lifetime.start.p0(i64 4, ptr %f) #7
  %call29 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %f)
  call void @llvm.lifetime.end.p0(i64 4, ptr %f) #7
  call void @llvm.lifetime.end.p0(i64 404, ptr %ans) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %m) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %l) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #7
  ret i32 0
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) #4

; Function Attrs: mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef %__pf) #0 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__pf.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !29
  store ptr %__pf, ptr %__pf.addr, align 8, !tbaa !32
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__pf.addr, align 8, !tbaa !32
  %call = call noundef nonnull align 8 dereferenceable(8) ptr %0(ptr noundef nonnull align 8 dereferenceable(8) %this1)
  ret ptr %call
}

; Function Attrs: inlinehint mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %__os) #5 {
entry:
  %__os.addr = alloca ptr, align 8
  store ptr %__os, ptr %__os.addr, align 8, !tbaa !29
  %0 = load ptr, ptr %__os.addr, align 8, !tbaa !29, !nonnull !33, !align !34
  %1 = load ptr, ptr %__os.addr, align 8, !tbaa !29, !nonnull !33, !align !34
  %vtable = load ptr, ptr %1, align 8, !tbaa !35
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
  store ptr %__os, ptr %__os.addr, align 8, !tbaa !29
  %0 = load ptr, ptr %__os.addr, align 8, !tbaa !29, !nonnull !33, !align !34
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  ret ptr %call
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) #4

; Function Attrs: mustprogress uwtable
define available_externally noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %this, i8 noundef signext %__c) #0 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__c.addr = alloca i8, align 1
  store ptr %this, ptr %this.addr, align 8, !tbaa !37
  store i8 %__c, ptr %__c.addr, align 1, !tbaa !39
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_ctype = getelementptr inbounds nuw %"class.std::basic_ios", ptr %this1, i32 0, i32 5
  %0 = load ptr, ptr %_M_ctype, align 8, !tbaa !40
  %call = call noundef nonnull align 8 dereferenceable(570) ptr @_ZSt13__check_facetISt5ctypeIcEERKT_PS3_(ptr noundef %0)
  %1 = load i8, ptr %__c.addr, align 1, !tbaa !39
  %call2 = call noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %call, i8 noundef signext %1)
  ret i8 %call2
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) #4

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(570) ptr @_ZSt13__check_facetISt5ctypeIcEERKT_PS3_(ptr noundef %__f) #5 comdat {
entry:
  %__f.addr = alloca ptr, align 8
  store ptr %__f, ptr %__f.addr, align 8, !tbaa !56
  %0 = load ptr, ptr %__f.addr, align 8, !tbaa !56
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @_ZSt16__throw_bad_castv() #8
  unreachable

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %__f.addr, align 8, !tbaa !56
  ret ptr %1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %this, i8 noundef signext %__c) #0 comdat align 2 {
entry:
  %retval = alloca i8, align 1
  %this.addr = alloca ptr, align 8
  %__c.addr = alloca i8, align 1
  store ptr %this, ptr %this.addr, align 8, !tbaa !56
  store i8 %__c, ptr %__c.addr, align 1, !tbaa !39
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_widen_ok = getelementptr inbounds nuw %"class.std::ctype", ptr %this1, i32 0, i32 8
  %0 = load i8, ptr %_M_widen_ok, align 8, !tbaa !57
  %tobool = icmp ne i8 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %_M_widen = getelementptr inbounds nuw %"class.std::ctype", ptr %this1, i32 0, i32 9
  %1 = load i8, ptr %__c.addr, align 1, !tbaa !39
  %idxprom = zext i8 %1 to i64
  %arrayidx = getelementptr inbounds nuw [256 x i8], ptr %_M_widen, i64 0, i64 %idxprom
  %2 = load i8, ptr %arrayidx, align 1, !tbaa !39
  store i8 %2, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %this1)
  %3 = load i8, ptr %__c.addr, align 1, !tbaa !39
  %vtable = load ptr, ptr %this1, align 8, !tbaa !35
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

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) #4

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!23 = distinct !{!23, !10, !11}
!24 = distinct !{!24, !10, !11}
!25 = distinct !{!25, !10, !11}
!26 = distinct !{!26, !10, !11}
!27 = distinct !{!27, !10, !11}
!28 = distinct !{!28, !10, !11}
!29 = !{!30, !30, i64 0}
!30 = !{!"p1 _ZTSSo", !31, i64 0}
!31 = !{!"any pointer", !7, i64 0}
!32 = !{!31, !31, i64 0}
!33 = !{}
!34 = !{i64 8}
!35 = !{!36, !36, i64 0}
!36 = !{!"vtable pointer", !8, i64 0}
!37 = !{!38, !38, i64 0}
!38 = !{!"p1 _ZTSSt9basic_iosIcSt11char_traitsIcEE", !31, i64 0}
!39 = !{!7, !7, i64 0}
!40 = !{!41, !53, i64 240}
!41 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !42, i64 0, !30, i64 216, !7, i64 224, !51, i64 225, !52, i64 232, !53, i64 240, !54, i64 248, !55, i64 256}
!42 = !{!"_ZTSSt8ios_base", !43, i64 8, !43, i64 16, !44, i64 24, !45, i64 28, !45, i64 32, !46, i64 40, !47, i64 48, !7, i64 64, !6, i64 192, !48, i64 200, !49, i64 208}
!43 = !{!"long", !7, i64 0}
!44 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!45 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!46 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !31, i64 0}
!47 = !{!"_ZTSNSt8ios_base6_WordsE", !31, i64 0, !43, i64 8}
!48 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !31, i64 0}
!49 = !{!"_ZTSSt6locale", !50, i64 0}
!50 = !{!"p1 _ZTSNSt6locale5_ImplE", !31, i64 0}
!51 = !{!"bool", !7, i64 0}
!52 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !31, i64 0}
!53 = !{!"p1 _ZTSSt5ctypeIcE", !31, i64 0}
!54 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !31, i64 0}
!55 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !31, i64 0}
!56 = !{!53, !53, i64 0}
!57 = !{!58, !7, i64 56}
!58 = !{!"_ZTSSt5ctypeIcE", !59, i64 0, !60, i64 16, !51, i64 24, !61, i64 32, !61, i64 40, !62, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!59 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!60 = !{!"p1 _ZTS15__locale_struct", !31, i64 0}
!61 = !{!"p1 int", !31, i64 0}
!62 = !{!"p1 short", !31, i64 0}
