; ModuleID = '<stdin>'
source_filename = "/tmp/tmpz565ecju.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }

@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %s = alloca i32, align 4
  %min = alloca i32, align 4
  %n0 = alloca i32, align 4
  %a = alloca [100 x [100 x i32]], align 16
  %temp = alloca [100 x [100 x i32]], align 16
  %z = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %n = alloca i32, align 4
  %k = alloca i32, align 4
  %l = alloca i32, align 4
  %l44 = alloca i32, align 4
  %k59 = alloca i32, align 4
  %l64 = alloca i32, align 4
  %l93 = alloca i32, align 4
  %i111 = alloca i32, align 4
  %j116 = alloca i32, align 4
  %i135 = alloca i32, align 4
  %i150 = alloca i32, align 4
  %i165 = alloca i32, align 4
  %j170 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %s) #6
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %min) #6
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %n0) #6
  call void @llvm.lifetime.start.p0(i64 noundef 40000, ptr noundef align 16 %a) #6
  call void @llvm.memset.p0.i64(ptr noundef writeonly align 16 %a, i8 noundef 0, i64 noundef 40000, i1 noundef false) #7
  call void @llvm.lifetime.start.p0(i64 noundef 40000, ptr noundef align 16 %temp) #6
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n0)
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef %z) #8
  store i32 0, ptr %z, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc195, %entry
  %0 = load i32, ptr %z, align 4, !tbaa !5
  %1 = load i32, ptr %n0, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %z) #8
  br label %for.end197

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %s, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef %i) #8
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc12, %for.body
  %2 = load i32, ptr %i, align 4, !tbaa !5
  %3 = load i32, ptr %n0, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body4, label %for.cond.cleanup3

for.cond.cleanup3:                                ; preds = %for.cond1
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %i) #8
  br label %for.end14

for.body4:                                        ; preds = %for.cond1
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef %j) #8
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc, %for.body4
  %4 = load i32, ptr %j, align 4, !tbaa !5
  %5 = load i32, ptr %n0, align 4, !tbaa !5
  %cmp6 = icmp slt i32 %4, %5
  br i1 %cmp6, label %for.body8, label %for.cond.cleanup7

for.cond.cleanup7:                                ; preds = %for.cond5
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %j) #8
  br label %for.end

for.body8:                                        ; preds = %for.cond5
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom
  %idxprom9 = sext i32 %4 to i64
  %arrayidx10 = getelementptr inbounds [100 x i32], ptr %arrayidx, i64 0, i64 %idxprom9
  %call11 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx10)
  br label %for.inc

for.inc:                                          ; preds = %for.body8
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr %j, align 4, !tbaa !5
  br label %for.cond5, !llvm.loop !9

for.end:                                          ; preds = %for.cond.cleanup7
  br label %for.inc12

for.inc12:                                        ; preds = %for.end
  %inc13 = add nsw i32 %2, 1
  store i32 %inc13, ptr %i, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !12

for.end14:                                        ; preds = %for.cond.cleanup3
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef %n) #8
  store i32 %3, ptr %n, align 4, !tbaa !5
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc191, %for.end14
  %6 = load i32, ptr %n, align 4, !tbaa !5
  %cmp16 = icmp sgt i32 %6, 1
  br i1 %cmp16, label %for.body18, label %for.cond.cleanup17

for.cond.cleanup17:                               ; preds = %for.cond15
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %n) #8
  br label %for.end192

for.body18:                                       ; preds = %for.cond15
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef %k) #8
  store i32 0, ptr %k, align 4, !tbaa !5
  br label %for.cond19

for.cond19:                                       ; preds = %for.inc56, %for.body18
  %7 = load i32, ptr %k, align 4, !tbaa !5
  %cmp20 = icmp slt i32 %7, %6
  br i1 %cmp20, label %for.body22, label %for.cond.cleanup21

for.cond.cleanup21:                               ; preds = %for.cond19
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %k) #8
  br label %for.end58

for.body22:                                       ; preds = %for.cond19
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef %l) #8
  store i32 0, ptr %l, align 4, !tbaa !5
  br label %for.cond23

for.cond23:                                       ; preds = %for.inc41, %for.body22
  %8 = load i32, ptr %l, align 4, !tbaa !5
  %cmp24 = icmp slt i32 %8, %6
  br i1 %cmp24, label %for.body26, label %for.cond.cleanup25

for.cond.cleanup25:                               ; preds = %for.cond23
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %l) #8
  br label %for.end43

for.body26:                                       ; preds = %for.cond23
  %cmp27 = icmp eq i32 %8, 0
  br i1 %cmp27, label %if.then, label %if.else

if.then:                                          ; preds = %for.body26
  %idxprom28 = sext i32 %7 to i64
  %arrayidx29 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom28
  %idxprom30 = sext i32 %8 to i64
  %arrayidx31 = getelementptr inbounds [100 x i32], ptr %arrayidx29, i64 0, i64 %idxprom30
  %9 = load i32, ptr %arrayidx31, align 4, !tbaa !5
  store i32 %9, ptr %min, align 4, !tbaa !5
  br label %if.end

if.else:                                          ; preds = %for.body26
  %10 = load i32, ptr %min, align 4, !tbaa !5
  %idxprom32 = sext i32 %7 to i64
  %arrayidx33 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom32
  %idxprom34 = sext i32 %8 to i64
  %arrayidx35 = getelementptr inbounds [100 x i32], ptr %arrayidx33, i64 0, i64 %idxprom34
  %11 = load i32, ptr %arrayidx35, align 4, !tbaa !5
  %cmp36 = icmp sgt i32 %10, %11
  br i1 %cmp36, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  br label %cond.end

cond.false:                                       ; preds = %if.else
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %11, %cond.true ], [ %10, %cond.false ]
  store i32 %cond, ptr %min, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %cond.end, %if.then
  br label %for.inc41

for.inc41:                                        ; preds = %if.end
  %inc42 = add nsw i32 %8, 1
  store i32 %inc42, ptr %l, align 4, !tbaa !5
  br label %for.cond23, !llvm.loop !13

for.end43:                                        ; preds = %for.cond.cleanup25
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef %l44) #8
  store i32 0, ptr %l44, align 4, !tbaa !5
  br label %for.cond45

for.cond45:                                       ; preds = %for.inc53, %for.end43
  %12 = load i32, ptr %l44, align 4, !tbaa !5
  %cmp46 = icmp slt i32 %12, %6
  br i1 %cmp46, label %for.body48, label %for.cond.cleanup47

for.cond.cleanup47:                               ; preds = %for.cond45
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %l44) #8
  br label %for.end55

for.body48:                                       ; preds = %for.cond45
  %13 = load i32, ptr %min, align 4, !tbaa !5
  %idxprom49 = sext i32 %7 to i64
  %arrayidx50 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom49
  %idxprom51 = sext i32 %12 to i64
  %arrayidx52 = getelementptr inbounds [100 x i32], ptr %arrayidx50, i64 0, i64 %idxprom51
  %14 = load i32, ptr %arrayidx52, align 4, !tbaa !5
  %sub = sub nsw i32 %14, %13
  store i32 %sub, ptr %arrayidx52, align 4, !tbaa !5
  br label %for.inc53

for.inc53:                                        ; preds = %for.body48
  %inc54 = add nsw i32 %12, 1
  store i32 %inc54, ptr %l44, align 4, !tbaa !5
  br label %for.cond45, !llvm.loop !14

for.end55:                                        ; preds = %for.cond.cleanup47
  br label %for.inc56

for.inc56:                                        ; preds = %for.end55
  %inc57 = add nsw i32 %7, 1
  store i32 %inc57, ptr %k, align 4, !tbaa !5
  br label %for.cond19, !llvm.loop !15

for.end58:                                        ; preds = %for.cond.cleanup21
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef %k59) #8
  store i32 0, ptr %k59, align 4, !tbaa !5
  br label %for.cond60

for.cond60:                                       ; preds = %for.inc106, %for.end58
  %15 = load i32, ptr %k59, align 4, !tbaa !5
  %cmp61 = icmp slt i32 %15, %6
  br i1 %cmp61, label %for.body63, label %for.cond.cleanup62

for.cond.cleanup62:                               ; preds = %for.cond60
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %k59) #8
  br label %for.end108

for.body63:                                       ; preds = %for.cond60
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef %l64) #8
  store i32 0, ptr %l64, align 4, !tbaa !5
  br label %for.cond65

for.cond65:                                       ; preds = %for.inc90, %for.body63
  %16 = load i32, ptr %l64, align 4, !tbaa !5
  %cmp66 = icmp slt i32 %16, %6
  br i1 %cmp66, label %for.body68, label %for.cond.cleanup67

for.cond.cleanup67:                               ; preds = %for.cond65
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %l64) #8
  br label %for.end92

for.body68:                                       ; preds = %for.cond65
  %cmp69 = icmp eq i32 %16, 0
  br i1 %cmp69, label %if.then70, label %if.else75

if.then70:                                        ; preds = %for.body68
  %idxprom71 = sext i32 %16 to i64
  %arrayidx72 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom71
  %idxprom73 = sext i32 %15 to i64
  %arrayidx74 = getelementptr inbounds [100 x i32], ptr %arrayidx72, i64 0, i64 %idxprom73
  %17 = load i32, ptr %arrayidx74, align 4, !tbaa !5
  store i32 %17, ptr %min, align 4, !tbaa !5
  br label %if.end89

if.else75:                                        ; preds = %for.body68
  %18 = load i32, ptr %min, align 4, !tbaa !5
  %idxprom76 = sext i32 %16 to i64
  %arrayidx77 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom76
  %idxprom78 = sext i32 %15 to i64
  %arrayidx79 = getelementptr inbounds [100 x i32], ptr %arrayidx77, i64 0, i64 %idxprom78
  %19 = load i32, ptr %arrayidx79, align 4, !tbaa !5
  %cmp80 = icmp sgt i32 %18, %19
  br i1 %cmp80, label %cond.true81, label %cond.false86

cond.true81:                                      ; preds = %if.else75
  br label %cond.end87

cond.false86:                                     ; preds = %if.else75
  br label %cond.end87

cond.end87:                                       ; preds = %cond.false86, %cond.true81
  %cond88 = phi i32 [ %19, %cond.true81 ], [ %18, %cond.false86 ]
  store i32 %cond88, ptr %min, align 4, !tbaa !5
  br label %if.end89

if.end89:                                         ; preds = %cond.end87, %if.then70
  br label %for.inc90

for.inc90:                                        ; preds = %if.end89
  %inc91 = add nsw i32 %16, 1
  store i32 %inc91, ptr %l64, align 4, !tbaa !5
  br label %for.cond65, !llvm.loop !16

for.end92:                                        ; preds = %for.cond.cleanup67
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef %l93) #8
  store i32 0, ptr %l93, align 4, !tbaa !5
  br label %for.cond94

for.cond94:                                       ; preds = %for.inc103, %for.end92
  %20 = load i32, ptr %l93, align 4, !tbaa !5
  %cmp95 = icmp slt i32 %20, %6
  br i1 %cmp95, label %for.body97, label %for.cond.cleanup96

for.cond.cleanup96:                               ; preds = %for.cond94
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %l93) #8
  br label %for.end105

for.body97:                                       ; preds = %for.cond94
  %21 = load i32, ptr %min, align 4, !tbaa !5
  %idxprom98 = sext i32 %20 to i64
  %arrayidx99 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom98
  %idxprom100 = sext i32 %15 to i64
  %arrayidx101 = getelementptr inbounds [100 x i32], ptr %arrayidx99, i64 0, i64 %idxprom100
  %22 = load i32, ptr %arrayidx101, align 4, !tbaa !5
  %sub102 = sub nsw i32 %22, %21
  store i32 %sub102, ptr %arrayidx101, align 4, !tbaa !5
  br label %for.inc103

for.inc103:                                       ; preds = %for.body97
  %inc104 = add nsw i32 %20, 1
  store i32 %inc104, ptr %l93, align 4, !tbaa !5
  br label %for.cond94, !llvm.loop !17

for.end105:                                       ; preds = %for.cond.cleanup96
  br label %for.inc106

for.inc106:                                       ; preds = %for.end105
  %inc107 = add nsw i32 %15, 1
  store i32 %inc107, ptr %k59, align 4, !tbaa !5
  br label %for.cond60, !llvm.loop !18

for.end108:                                       ; preds = %for.cond.cleanup62
  %arrayidx109 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 1
  %arrayidx110 = getelementptr inbounds [100 x i32], ptr %arrayidx109, i64 0, i64 1
  %23 = load i32, ptr %arrayidx110, align 4, !tbaa !5
  %24 = load i32, ptr %s, align 4, !tbaa !5
  %add = add nsw i32 %24, %23
  store i32 %add, ptr %s, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef %i111) #8
  store i32 0, ptr %i111, align 4, !tbaa !5
  br label %for.cond112

for.cond112:                                      ; preds = %for.inc132, %for.end108
  %25 = load i32, ptr %i111, align 4, !tbaa !5
  %cmp113 = icmp slt i32 %25, %6
  br i1 %cmp113, label %for.body115, label %for.cond.cleanup114

for.cond.cleanup114:                              ; preds = %for.cond112
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %i111) #8
  br label %for.end134

for.body115:                                      ; preds = %for.cond112
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef %j116) #8
  store i32 0, ptr %j116, align 4, !tbaa !5
  br label %for.cond117

for.cond117:                                      ; preds = %for.inc129, %for.body115
  %26 = load i32, ptr %j116, align 4, !tbaa !5
  %cmp118 = icmp slt i32 %26, %6
  br i1 %cmp118, label %for.body120, label %for.cond.cleanup119

for.cond.cleanup119:                              ; preds = %for.cond117
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %j116) #8
  br label %for.end131

for.body120:                                      ; preds = %for.cond117
  %idxprom121 = sext i32 %25 to i64
  %arrayidx122 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom121
  %idxprom123 = sext i32 %26 to i64
  %arrayidx124 = getelementptr inbounds [100 x i32], ptr %arrayidx122, i64 0, i64 %idxprom123
  %27 = load i32, ptr %arrayidx124, align 4, !tbaa !5
  %arrayidx126 = getelementptr inbounds [100 x [100 x i32]], ptr %temp, i64 0, i64 %idxprom121
  %arrayidx128 = getelementptr inbounds [100 x i32], ptr %arrayidx126, i64 0, i64 %idxprom123
  store i32 %27, ptr %arrayidx128, align 4, !tbaa !5
  br label %for.inc129

for.inc129:                                       ; preds = %for.body120
  %inc130 = add nsw i32 %26, 1
  store i32 %inc130, ptr %j116, align 4, !tbaa !5
  br label %for.cond117, !llvm.loop !19

for.end131:                                       ; preds = %for.cond.cleanup119
  br label %for.inc132

for.inc132:                                       ; preds = %for.end131
  %inc133 = add nsw i32 %25, 1
  store i32 %inc133, ptr %i111, align 4, !tbaa !5
  br label %for.cond112, !llvm.loop !20

for.end134:                                       ; preds = %for.cond.cleanup114
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef %i135) #8
  store i32 2, ptr %i135, align 4, !tbaa !5
  br label %for.cond136

for.cond136:                                      ; preds = %for.inc147, %for.end134
  %28 = load i32, ptr %i135, align 4, !tbaa !5
  %cmp137 = icmp slt i32 %28, %6
  br i1 %cmp137, label %for.body139, label %for.cond.cleanup138

for.cond.cleanup138:                              ; preds = %for.cond136
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %i135) #8
  br label %for.end149

for.body139:                                      ; preds = %for.cond136
  %idxprom140 = sext i32 %28 to i64
  %arrayidx141 = getelementptr inbounds [100 x [100 x i32]], ptr %temp, i64 0, i64 %idxprom140
  %29 = load i32, ptr %arrayidx141, align 16, !tbaa !5
  %sub143 = sub nsw i32 %28, 1
  %idxprom144 = sext i32 %sub143 to i64
  %arrayidx145 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom144
  store i32 %29, ptr %arrayidx145, align 16, !tbaa !5
  br label %for.inc147

for.inc147:                                       ; preds = %for.body139
  %inc148 = add nsw i32 %28, 1
  store i32 %inc148, ptr %i135, align 4, !tbaa !5
  br label %for.cond136, !llvm.loop !21

for.end149:                                       ; preds = %for.cond.cleanup138
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef %i150) #8
  store i32 2, ptr %i150, align 4, !tbaa !5
  br label %for.cond151

for.cond151:                                      ; preds = %for.inc162, %for.end149
  %30 = load i32, ptr %i150, align 4, !tbaa !5
  %cmp152 = icmp slt i32 %30, %6
  br i1 %cmp152, label %for.body154, label %for.cond.cleanup153

for.cond.cleanup153:                              ; preds = %for.cond151
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %i150) #8
  br label %for.end164

for.body154:                                      ; preds = %for.cond151
  %idxprom156 = sext i32 %30 to i64
  %arrayidx157 = getelementptr inbounds [100 x i32], ptr %temp, i64 0, i64 %idxprom156
  %31 = load i32, ptr %arrayidx157, align 4, !tbaa !5
  %sub159 = sub nsw i32 %30, 1
  %idxprom160 = sext i32 %sub159 to i64
  %arrayidx161 = getelementptr inbounds [100 x i32], ptr %a, i64 0, i64 %idxprom160
  store i32 %31, ptr %arrayidx161, align 4, !tbaa !5
  br label %for.inc162

for.inc162:                                       ; preds = %for.body154
  %inc163 = add nsw i32 %30, 1
  store i32 %inc163, ptr %i150, align 4, !tbaa !5
  br label %for.cond151, !llvm.loop !22

for.end164:                                       ; preds = %for.cond.cleanup153
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef %i165) #8
  store i32 2, ptr %i165, align 4, !tbaa !5
  br label %for.cond166

for.cond166:                                      ; preds = %for.inc188, %for.end164
  %32 = load i32, ptr %i165, align 4, !tbaa !5
  %cmp167 = icmp slt i32 %32, %6
  br i1 %cmp167, label %for.body169, label %for.cond.cleanup168

for.cond.cleanup168:                              ; preds = %for.cond166
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %i165) #8
  br label %for.end190

for.body169:                                      ; preds = %for.cond166
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef %j170) #8
  store i32 2, ptr %j170, align 4, !tbaa !5
  br label %for.cond171

for.cond171:                                      ; preds = %for.inc185, %for.body169
  %33 = load i32, ptr %j170, align 4, !tbaa !5
  %cmp172 = icmp slt i32 %33, %6
  br i1 %cmp172, label %for.body174, label %for.cond.cleanup173

for.cond.cleanup173:                              ; preds = %for.cond171
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %j170) #8
  br label %for.end187

for.body174:                                      ; preds = %for.cond171
  %idxprom175 = sext i32 %32 to i64
  %arrayidx176 = getelementptr inbounds [100 x [100 x i32]], ptr %temp, i64 0, i64 %idxprom175
  %idxprom177 = sext i32 %33 to i64
  %arrayidx178 = getelementptr inbounds [100 x i32], ptr %arrayidx176, i64 0, i64 %idxprom177
  %34 = load i32, ptr %arrayidx178, align 4, !tbaa !5
  %sub179 = sub nsw i32 %32, 1
  %idxprom180 = sext i32 %sub179 to i64
  %arrayidx181 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom180
  %sub182 = sub nsw i32 %33, 1
  %idxprom183 = sext i32 %sub182 to i64
  %arrayidx184 = getelementptr inbounds [100 x i32], ptr %arrayidx181, i64 0, i64 %idxprom183
  store i32 %34, ptr %arrayidx184, align 4, !tbaa !5
  br label %for.inc185

for.inc185:                                       ; preds = %for.body174
  %inc186 = add nsw i32 %33, 1
  store i32 %inc186, ptr %j170, align 4, !tbaa !5
  br label %for.cond171, !llvm.loop !23

for.end187:                                       ; preds = %for.cond.cleanup173
  br label %for.inc188

for.inc188:                                       ; preds = %for.end187
  %inc189 = add nsw i32 %32, 1
  store i32 %inc189, ptr %i165, align 4, !tbaa !5
  br label %for.cond166, !llvm.loop !24

for.end190:                                       ; preds = %for.cond.cleanup168
  br label %for.inc191

for.inc191:                                       ; preds = %for.end190
  %dec = add nsw i32 %6, -1
  store i32 %dec, ptr %n, align 4, !tbaa !5
  br label %for.cond15, !llvm.loop !25

for.end192:                                       ; preds = %for.cond.cleanup17
  %35 = load i32, ptr %s, align 4, !tbaa !5
  %call193 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %35)
  %call194 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call193, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %for.inc195

for.inc195:                                       ; preds = %for.end192
  %inc196 = add nsw i32 %0, 1
  store i32 %inc196, ptr %z, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !26

for.end197:                                       ; preds = %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 noundef 40000, ptr noundef %temp) #8
  call void @llvm.lifetime.end.p0(i64 noundef 40000, ptr noundef %a) #8
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %n0) #8
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %min) #8
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %s) #8
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #4 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { nofree }
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
!18 = distinct !{!18, !10, !11}
!19 = distinct !{!19, !10, !11}
!20 = distinct !{!20, !10, !11}
!21 = distinct !{!21, !10, !11}
!22 = distinct !{!22, !10, !11}
!23 = distinct !{!23, !10, !11}
!24 = distinct !{!24, !10, !11}
!25 = distinct !{!25, !10, !11}
!26 = distinct !{!26, !10, !11}
