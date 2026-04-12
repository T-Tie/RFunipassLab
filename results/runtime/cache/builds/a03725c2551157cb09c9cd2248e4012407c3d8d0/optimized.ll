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
%"class.std::ctype" = type <{ %"class.std::locale::facet.base", [4 x i8], ptr, i8, [7 x i8], ptr, ptr, ptr, i8, [256 x i8], [256 x i8], i8, [6 x i8] }>
%"class.std::locale::facet.base" = type <{ ptr, i32 }>

$_ZSt13__check_facetISt5ctypeIcEERKT_PS3_ = comdat any

$_ZNKSt5ctypeIcE5widenEc = comdat any

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
  %k = alloca i32, align 4
  %l44 = alloca i32, align 4
  %k59 = alloca i32, align 4
  %l93 = alloca i32, align 4
  %i111 = alloca i32, align 4
  %j116 = alloca i32, align 4
  %i135 = alloca i32, align 4
  %i150 = alloca i32, align 4
  %i165 = alloca i32, align 4
  %j170 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %s) #7
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %min) #7
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %n0) #7
  call void @llvm.lifetime.start.p0(i64 noundef 40000, ptr noundef align 16 %a) #7
  call void @llvm.memset.p0.i64(ptr noundef writeonly align 16 %a, i8 noundef 0, i64 noundef 40000, i1 noundef false) #8
  call void @llvm.lifetime.start.p0(i64 noundef 40000, ptr noundef align 16 %temp) #7
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n0)
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef %z) #9
  store i32 0, ptr %z, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc195, %entry
  %0 = load i32, ptr %z, align 4, !tbaa !5
  %1 = load i32, ptr %n0, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end197

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %s, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef %i) #9
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc12, %for.body
  %2 = load i32, ptr %i, align 4, !tbaa !5
  %3 = load i32, ptr %n0, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body4, label %for.end14

for.body4:                                        ; preds = %for.cond1
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef %j) #9
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc, %for.body4
  %4 = load i32, ptr %j, align 4, !tbaa !5
  %5 = load i32, ptr %n0, align 4, !tbaa !5
  %cmp6 = icmp slt i32 %4, %5
  br i1 %cmp6, label %for.inc, label %for.inc12

for.inc:                                          ; preds = %for.cond5
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom
  %idxprom9 = sext i32 %4 to i64
  %arrayidx10 = getelementptr inbounds [100 x i32], ptr %arrayidx, i64 0, i64 %idxprom9
  %call11 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx10)
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr %j, align 4, !tbaa !5
  br label %for.cond5, !llvm.loop !9

for.inc12:                                        ; preds = %for.cond5
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %j) #9
  %inc13 = add nsw i32 %2, 1
  store i32 %inc13, ptr %i, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !12

for.end14:                                        ; preds = %for.cond1
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %i) #9
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc191, %for.end14
  %.sink = phi i32 [ %3, %for.end14 ], [ %dec, %for.inc191 ]
  %cmp16 = icmp sgt i32 %.sink, 1
  br i1 %cmp16, label %for.body18, label %for.inc195

for.body18:                                       ; preds = %for.cond15
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef %k) #9
  store i32 0, ptr %k, align 4, !tbaa !5
  br label %for.cond19

for.cond19:                                       ; preds = %for.inc56, %for.body18
  %6 = load i32, ptr %k, align 4, !tbaa !5
  %cmp20 = icmp slt i32 %6, %.sink
  br i1 %cmp20, label %for.body22, label %for.end58

for.body22:                                       ; preds = %for.cond19
  br label %for.cond23

for.cond23:                                       ; preds = %for.inc41, %for.body22
  %.sink22 = phi i32 [ 0, %for.body22 ], [ %inc42, %for.inc41 ]
  %cmp24 = icmp slt i32 %.sink22, %.sink
  br i1 %cmp24, label %for.body26, label %for.end43

for.body26:                                       ; preds = %for.cond23
  %cmp27 = icmp eq i32 %.sink22, 0
  %idxprom28 = sext i32 %6 to i64
  %idxprom30 = sext i32 %.sink22 to i64
  %7 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom28
  %8 = getelementptr inbounds [100 x i32], ptr %7, i64 0, i64 %idxprom30
  %9 = load i32, ptr %8, align 4, !tbaa !5
  br i1 %cmp27, label %if.then, label %for.inc41

if.then:                                          ; preds = %for.body26
  store i32 %9, ptr %min, align 4, !tbaa !5
  br label %for.inc41

for.inc41:                                        ; preds = %for.body26, %if.then
  %inc42 = add nsw i32 %.sink22, 1
  br label %for.cond23, !llvm.loop !13

for.end43:                                        ; preds = %for.cond23
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef %l44) #9
  store i32 0, ptr %l44, align 4, !tbaa !5
  br label %for.cond45

for.cond45:                                       ; preds = %for.inc53, %for.end43
  %10 = load i32, ptr %l44, align 4, !tbaa !5
  %cmp46 = icmp slt i32 %10, %.sink
  br i1 %cmp46, label %for.inc53, label %for.inc56

for.inc53:                                        ; preds = %for.cond45
  %11 = load i32, ptr %min, align 4, !tbaa !5
  %idxprom49 = sext i32 %6 to i64
  %arrayidx50 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom49
  %idxprom51 = sext i32 %10 to i64
  %arrayidx52 = getelementptr inbounds [100 x i32], ptr %arrayidx50, i64 0, i64 %idxprom51
  %12 = load i32, ptr %arrayidx52, align 4, !tbaa !5
  %sub = sub nsw i32 %12, %11
  store i32 %sub, ptr %arrayidx52, align 4, !tbaa !5
  %inc54 = add nsw i32 %10, 1
  store i32 %inc54, ptr %l44, align 4, !tbaa !5
  br label %for.cond45, !llvm.loop !14

for.inc56:                                        ; preds = %for.cond45
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %l44) #9
  %inc57 = add nsw i32 %6, 1
  store i32 %inc57, ptr %k, align 4, !tbaa !5
  br label %for.cond19, !llvm.loop !15

for.end58:                                        ; preds = %for.cond19
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %k) #9
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef %k59) #9
  store i32 0, ptr %k59, align 4, !tbaa !5
  br label %for.cond60

for.cond60:                                       ; preds = %for.inc106, %for.end58
  %13 = load i32, ptr %k59, align 4, !tbaa !5
  %cmp61 = icmp slt i32 %13, %.sink
  br i1 %cmp61, label %for.body63, label %for.end108

for.body63:                                       ; preds = %for.cond60
  br label %for.cond65

for.cond65:                                       ; preds = %for.inc90, %for.body63
  %.sink21 = phi i32 [ 0, %for.body63 ], [ %inc91, %for.inc90 ]
  %cmp66 = icmp slt i32 %.sink21, %.sink
  br i1 %cmp66, label %for.body68, label %for.end92

for.body68:                                       ; preds = %for.cond65
  %cmp69 = icmp eq i32 %.sink21, 0
  %idxprom71 = sext i32 %.sink21 to i64
  %idxprom73 = sext i32 %13 to i64
  %14 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom71
  %15 = getelementptr inbounds [100 x i32], ptr %14, i64 0, i64 %idxprom73
  %16 = load i32, ptr %15, align 4, !tbaa !5
  br i1 %cmp69, label %if.then70, label %for.inc90

if.then70:                                        ; preds = %for.body68
  store i32 %16, ptr %min, align 4, !tbaa !5
  br label %for.inc90

for.inc90:                                        ; preds = %for.body68, %if.then70
  %inc91 = add nsw i32 %.sink21, 1
  br label %for.cond65, !llvm.loop !16

for.end92:                                        ; preds = %for.cond65
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef %l93) #9
  store i32 0, ptr %l93, align 4, !tbaa !5
  br label %for.cond94

for.cond94:                                       ; preds = %for.inc103, %for.end92
  %17 = load i32, ptr %l93, align 4, !tbaa !5
  %cmp95 = icmp slt i32 %17, %.sink
  br i1 %cmp95, label %for.inc103, label %for.inc106

for.inc103:                                       ; preds = %for.cond94
  %18 = load i32, ptr %min, align 4, !tbaa !5
  %idxprom98 = sext i32 %17 to i64
  %arrayidx99 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom98
  %idxprom100 = sext i32 %13 to i64
  %arrayidx101 = getelementptr inbounds [100 x i32], ptr %arrayidx99, i64 0, i64 %idxprom100
  %19 = load i32, ptr %arrayidx101, align 4, !tbaa !5
  %sub102 = sub nsw i32 %19, %18
  store i32 %sub102, ptr %arrayidx101, align 4, !tbaa !5
  %inc104 = add nsw i32 %17, 1
  store i32 %inc104, ptr %l93, align 4, !tbaa !5
  br label %for.cond94, !llvm.loop !17

for.inc106:                                       ; preds = %for.cond94
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %l93) #9
  %inc107 = add nsw i32 %13, 1
  store i32 %inc107, ptr %k59, align 4, !tbaa !5
  br label %for.cond60, !llvm.loop !18

for.end108:                                       ; preds = %for.cond60
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %k59) #9
  %arrayidx109 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 1
  %arrayidx110 = getelementptr inbounds [100 x i32], ptr %arrayidx109, i64 0, i64 1
  %20 = load i32, ptr %arrayidx110, align 4, !tbaa !5
  %21 = load i32, ptr %s, align 4, !tbaa !5
  %add = add nsw i32 %21, %20
  store i32 %add, ptr %s, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef %i111) #9
  store i32 0, ptr %i111, align 4, !tbaa !5
  br label %for.cond112

for.cond112:                                      ; preds = %for.inc132, %for.end108
  %22 = load i32, ptr %i111, align 4, !tbaa !5
  %cmp113 = icmp slt i32 %22, %.sink
  br i1 %cmp113, label %for.body115, label %for.end134

for.body115:                                      ; preds = %for.cond112
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef %j116) #9
  store i32 0, ptr %j116, align 4, !tbaa !5
  br label %for.cond117

for.cond117:                                      ; preds = %for.inc129, %for.body115
  %23 = load i32, ptr %j116, align 4, !tbaa !5
  %cmp118 = icmp slt i32 %23, %.sink
  br i1 %cmp118, label %for.inc129, label %for.inc132

for.inc129:                                       ; preds = %for.cond117
  %idxprom121 = sext i32 %22 to i64
  %arrayidx122 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom121
  %idxprom123 = sext i32 %23 to i64
  %arrayidx124 = getelementptr inbounds [100 x i32], ptr %arrayidx122, i64 0, i64 %idxprom123
  %24 = load i32, ptr %arrayidx124, align 4, !tbaa !5
  %arrayidx126 = getelementptr inbounds [100 x [100 x i32]], ptr %temp, i64 0, i64 %idxprom121
  %arrayidx128 = getelementptr inbounds [100 x i32], ptr %arrayidx126, i64 0, i64 %idxprom123
  store i32 %24, ptr %arrayidx128, align 4, !tbaa !5
  %inc130 = add nsw i32 %23, 1
  store i32 %inc130, ptr %j116, align 4, !tbaa !5
  br label %for.cond117, !llvm.loop !19

for.inc132:                                       ; preds = %for.cond117
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %j116) #9
  %inc133 = add nsw i32 %22, 1
  store i32 %inc133, ptr %i111, align 4, !tbaa !5
  br label %for.cond112, !llvm.loop !20

for.end134:                                       ; preds = %for.cond112
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %i111) #9
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef %i135) #9
  store i32 2, ptr %i135, align 4, !tbaa !5
  br label %for.cond136

for.cond136:                                      ; preds = %for.inc147, %for.end134
  %25 = load i32, ptr %i135, align 4, !tbaa !5
  %cmp137 = icmp slt i32 %25, %.sink
  br i1 %cmp137, label %for.inc147, label %for.end149

for.inc147:                                       ; preds = %for.cond136
  %idxprom140 = sext i32 %25 to i64
  %arrayidx141 = getelementptr inbounds [100 x [100 x i32]], ptr %temp, i64 0, i64 %idxprom140
  %26 = load i32, ptr %arrayidx141, align 16, !tbaa !5
  %sub143 = sub nsw i32 %25, 1
  %idxprom144 = sext i32 %sub143 to i64
  %arrayidx145 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom144
  store i32 %26, ptr %arrayidx145, align 16, !tbaa !5
  %inc148 = add nsw i32 %25, 1
  store i32 %inc148, ptr %i135, align 4, !tbaa !5
  br label %for.cond136, !llvm.loop !21

for.end149:                                       ; preds = %for.cond136
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %i135) #9
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef %i150) #9
  store i32 2, ptr %i150, align 4, !tbaa !5
  br label %for.cond151

for.cond151:                                      ; preds = %for.inc162, %for.end149
  %27 = load i32, ptr %i150, align 4, !tbaa !5
  %cmp152 = icmp slt i32 %27, %.sink
  br i1 %cmp152, label %for.inc162, label %for.end164

for.inc162:                                       ; preds = %for.cond151
  %idxprom156 = sext i32 %27 to i64
  %arrayidx157 = getelementptr inbounds [100 x i32], ptr %temp, i64 0, i64 %idxprom156
  %28 = load i32, ptr %arrayidx157, align 4, !tbaa !5
  %sub159 = sub nsw i32 %27, 1
  %idxprom160 = sext i32 %sub159 to i64
  %arrayidx161 = getelementptr inbounds [100 x i32], ptr %a, i64 0, i64 %idxprom160
  store i32 %28, ptr %arrayidx161, align 4, !tbaa !5
  %inc163 = add nsw i32 %27, 1
  store i32 %inc163, ptr %i150, align 4, !tbaa !5
  br label %for.cond151, !llvm.loop !22

for.end164:                                       ; preds = %for.cond151
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %i150) #9
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef %i165) #9
  store i32 2, ptr %i165, align 4, !tbaa !5
  br label %for.cond166

for.cond166:                                      ; preds = %for.inc188, %for.end164
  %29 = load i32, ptr %i165, align 4, !tbaa !5
  %cmp167 = icmp slt i32 %29, %.sink
  br i1 %cmp167, label %for.body169, label %for.inc191

for.body169:                                      ; preds = %for.cond166
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef %j170) #9
  store i32 2, ptr %j170, align 4, !tbaa !5
  br label %for.cond171

for.cond171:                                      ; preds = %for.inc185, %for.body169
  %30 = load i32, ptr %j170, align 4, !tbaa !5
  %cmp172 = icmp slt i32 %30, %.sink
  br i1 %cmp172, label %for.inc185, label %for.inc188

for.inc185:                                       ; preds = %for.cond171
  %idxprom175 = sext i32 %29 to i64
  %arrayidx176 = getelementptr inbounds [100 x [100 x i32]], ptr %temp, i64 0, i64 %idxprom175
  %idxprom177 = sext i32 %30 to i64
  %arrayidx178 = getelementptr inbounds [100 x i32], ptr %arrayidx176, i64 0, i64 %idxprom177
  %31 = load i32, ptr %arrayidx178, align 4, !tbaa !5
  %sub179 = sub nsw i32 %29, 1
  %idxprom180 = sext i32 %sub179 to i64
  %arrayidx181 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom180
  %sub182 = sub nsw i32 %30, 1
  %idxprom183 = sext i32 %sub182 to i64
  %arrayidx184 = getelementptr inbounds [100 x i32], ptr %arrayidx181, i64 0, i64 %idxprom183
  store i32 %31, ptr %arrayidx184, align 4, !tbaa !5
  %inc186 = add nsw i32 %30, 1
  store i32 %inc186, ptr %j170, align 4, !tbaa !5
  br label %for.cond171, !llvm.loop !23

for.inc188:                                       ; preds = %for.cond171
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %j170) #9
  %inc189 = add nsw i32 %29, 1
  store i32 %inc189, ptr %i165, align 4, !tbaa !5
  br label %for.cond166, !llvm.loop !24

for.inc191:                                       ; preds = %for.cond166
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %i165) #9
  %dec = add nsw i32 %.sink, -1
  br label %for.cond15, !llvm.loop !25

for.inc195:                                       ; preds = %for.cond15
  %32 = load i32, ptr %s, align 4, !tbaa !5
  %call193 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %32)
  %call194 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call193, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %inc196 = add nsw i32 %0, 1
  store i32 %inc196, ptr %z, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !26

for.end197:                                       ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %z) #9
  call void @llvm.lifetime.end.p0(i64 noundef 40000, ptr noundef %temp) #9
  call void @llvm.lifetime.end.p0(i64 noundef 40000, ptr noundef %a) #9
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %n0) #9
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %min) #9
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %s) #9
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
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef %__pf) local_unnamed_addr #4 align 2 {
entry:
  %call = call noundef nonnull align 8 dereferenceable(8) ptr %__pf(ptr noundef nonnull align 8 dereferenceable(8) %this)
  ret ptr %call
}

; Function Attrs: inlinehint mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %__os) #5 {
entry:
  %vtable = load ptr, ptr %__os, align 8, !tbaa !27
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8, !invariant.load !29
  %add.ptr = getelementptr inbounds i8, ptr %__os, i64 %vbase.offset
  %call = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr, i8 noundef signext 10)
  %call1 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %__os, i8 noundef signext %call)
  %call2 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %call1)
  ret ptr %call2
}

; Function Attrs: inlinehint mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %__os) local_unnamed_addr #5 {
entry:
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %__os)
  ret ptr %call
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define available_externally noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %this, i8 noundef signext %__c) local_unnamed_addr #4 align 2 {
entry:
  %_M_ctype = getelementptr inbounds nuw %"class.std::basic_ios", ptr %this, i32 0, i32 5
  %0 = load ptr, ptr %_M_ctype, align 8, !tbaa !30
  %call = call noundef nonnull align 8 dereferenceable(570) ptr @_ZSt13__check_facetISt5ctypeIcEERKT_PS3_(ptr noundef %0)
  %call2 = call noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %call, i8 noundef signext %__c)
  ret i8 %call2
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(570) ptr @_ZSt13__check_facetISt5ctypeIcEERKT_PS3_(ptr noundef %__f) local_unnamed_addr #5 comdat {
entry:
  %tobool = icmp ne ptr %__f, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @_ZSt16__throw_bad_castv() #10
  unreachable

if.end:                                           ; preds = %entry
  ret ptr %__f
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %this, i8 noundef signext %__c) local_unnamed_addr #4 comdat align 2 {
entry:
  %retval = alloca i8, align 1
  %_M_widen_ok = getelementptr inbounds nuw %"class.std::ctype", ptr %this, i32 0, i32 8
  %0 = load i8, ptr %_M_widen_ok, align 8, !tbaa !48
  %tobool = icmp ne i8 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %_M_widen = getelementptr inbounds nuw %"class.std::ctype", ptr %this, i32 0, i32 9
  %idxprom = zext i8 %__c to i64
  %arrayidx = getelementptr inbounds nuw [256 x i8], ptr %_M_widen, i64 0, i64 %idxprom
  %1 = load i8, ptr %arrayidx, align 1, !tbaa !54
  store i8 %1, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %this)
  %vtable = load ptr, ptr %this, align 8, !tbaa !27
  %vfn = getelementptr inbounds ptr, ptr %vtable, i64 6
  %2 = load ptr, ptr %vfn, align 8, !invariant.load !29
  %call = call noundef signext i8 %2(ptr noundef nonnull align 8 dereferenceable(570) %this, i8 noundef signext %__c)
  store i8 %call, ptr %retval, align 1
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i8, ptr %retval, align 1
  ret i8 %3
}

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #6

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #3

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind }
attributes #8 = { nofree }
attributes #9 = { nounwind }
attributes #10 = { noreturn }

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
!27 = !{!28, !28, i64 0}
!28 = !{!"vtable pointer", !8, i64 0}
!29 = !{}
!30 = !{!31, !45, i64 240}
!31 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !32, i64 0, !42, i64 216, !7, i64 224, !43, i64 225, !44, i64 232, !45, i64 240, !46, i64 248, !47, i64 256}
!32 = !{!"_ZTSSt8ios_base", !33, i64 8, !33, i64 16, !34, i64 24, !35, i64 28, !35, i64 32, !36, i64 40, !38, i64 48, !7, i64 64, !6, i64 192, !39, i64 200, !40, i64 208}
!33 = !{!"long", !7, i64 0}
!34 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!35 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!36 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !37, i64 0}
!37 = !{!"any pointer", !7, i64 0}
!38 = !{!"_ZTSNSt8ios_base6_WordsE", !37, i64 0, !33, i64 8}
!39 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !37, i64 0}
!40 = !{!"_ZTSSt6locale", !41, i64 0}
!41 = !{!"p1 _ZTSNSt6locale5_ImplE", !37, i64 0}
!42 = !{!"p1 _ZTSSo", !37, i64 0}
!43 = !{!"bool", !7, i64 0}
!44 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !37, i64 0}
!45 = !{!"p1 _ZTSSt5ctypeIcE", !37, i64 0}
!46 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !37, i64 0}
!47 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !37, i64 0}
!48 = !{!49, !7, i64 56}
!49 = !{!"_ZTSSt5ctypeIcE", !50, i64 0, !51, i64 16, !43, i64 24, !52, i64 32, !52, i64 40, !53, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!50 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!51 = !{!"p1 _ZTS15__locale_struct", !37, i64 0}
!52 = !{!"p1 int", !37, i64 0}
!53 = !{!"p1 short", !37, i64 0}
!54 = !{!7, !7, i64 0}
