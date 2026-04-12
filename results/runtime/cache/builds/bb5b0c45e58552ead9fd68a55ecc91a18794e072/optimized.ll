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
  %n0 = alloca i32, align 4
  %a = alloca [100 x [100 x i32]], align 16
  %temp = alloca [100 x [100 x i32]], align 16
  %z = alloca i32, align 4
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %k = alloca i32, align 4
  %l = alloca i32, align 4
  %k59 = alloca i32, align 4
  %l64 = alloca i32, align 4
  %i111 = alloca i32, align 4
  %i135 = alloca i32, align 4
  %i150 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %n0) #7
  call void @llvm.lifetime.start.p0(i64 noundef 40000, ptr noundef align 16 %a) #7
  call void @llvm.memset.p0.i64(ptr noundef writeonly align 16 %a, i8 noundef 0, i64 noundef 40000, i1 noundef false) #8
  call void @llvm.lifetime.start.p0(i64 noundef 40000, ptr noundef align 16 %temp) #7
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n0)
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 captures(none) dereferenceable(4) %z) #9
  store i32 0, ptr %z, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.end192, %entry
  %min.0 = phi i32 [ undef, %entry ], [ %min.1, %for.end192 ]
  %0 = load i32, ptr %z, align 4, !tbaa !5
  %1 = load i32, ptr %n0, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end197

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 captures(none) dereferenceable(4) %i) #9
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond1

for.cond1:                                        ; preds = %for.end, %for.body
  %2 = load i32, ptr %i, align 4, !tbaa !5
  %3 = load i32, ptr %n0, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body4, label %for.end14

for.body4:                                        ; preds = %for.cond1
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc, %for.body4
  %j.0 = phi i32 [ 0, %for.body4 ], [ %inc, %for.inc ]
  %4 = load i32, ptr %n0, align 4, !tbaa !5
  %cmp6 = icmp slt i32 %j.0, %4
  br i1 %cmp6, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.cond5
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom
  %idxprom9 = sext i32 %j.0 to i64
  %arrayidx10 = getelementptr inbounds [100 x i32], ptr %arrayidx, i64 0, i64 %idxprom9
  %call11 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx10)
  %inc = add nsw i32 %j.0, 1
  br label %for.cond5, !llvm.loop !9

for.end:                                          ; preds = %for.cond5
  call fastcc void @outlined_ir_func_0(ptr noalias nofree noundef nonnull align 4 captures(none) dereferenceable(4) %i, i32 noundef 1) #9
  br label %for.cond1

for.end14:                                        ; preds = %for.cond1
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull align 4 captures(none) dereferenceable(4) %i) #9
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 dereferenceable(4) %n) #9
  store i32 %3, ptr %n, align 4, !tbaa !5
  br label %for.cond15

for.cond15:                                       ; preds = %for.end190, %for.end14
  %5 = phi i32 [ %.pr, %for.end190 ], [ %3, %for.end14 ]
  %min.1 = phi i32 [ %min.0, %for.end14 ], [ %min.5, %for.end190 ]
  %s.0 = phi i32 [ 0, %for.end14 ], [ %add, %for.end190 ]
  %cmp16 = icmp sgt i32 %5, 1
  br i1 %cmp16, label %for.body18, label %for.end192

for.body18:                                       ; preds = %for.cond15
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 captures(none) dereferenceable(4) %k) #9
  store i32 0, ptr %k, align 4, !tbaa !5
  br label %for.cond19

for.cond19:                                       ; preds = %for.end55, %for.body18
  %min.2 = phi i32 [ %min.1, %for.body18 ], [ %min.3, %for.end55 ]
  %6 = load i32, ptr %k, align 4, !tbaa !5
  %7 = load i32, ptr %n, align 4, !tbaa !5
  %cmp20 = icmp slt i32 %6, %7
  br i1 %cmp20, label %for.body22, label %for.end58

for.body22:                                       ; preds = %for.cond19
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 captures(none) dereferenceable(4) %l) #9
  store i32 0, ptr %l, align 4, !tbaa !5
  br label %for.cond23

for.cond23:                                       ; preds = %if.end, %for.body22
  %8 = phi i32 [ %.pr1, %if.end ], [ 0, %for.body22 ]
  %min.3 = phi i32 [ %min.2, %for.body22 ], [ %min.4, %if.end ]
  %cmp24 = icmp slt i32 %8, %7
  br i1 %cmp24, label %for.body26, label %for.end43

for.body26:                                       ; preds = %for.cond23
  %cmp27 = icmp eq i32 %8, 0
  br i1 %cmp27, label %if.then, label %if.else

if.then:                                          ; preds = %for.body26
  %idxprom28 = sext i32 %6 to i64
  %arrayidx29 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom28
  %9 = load i32, ptr %arrayidx29, align 4, !tbaa !5, !invariant.load !12
  br label %if.end

if.else:                                          ; preds = %for.body26
  %idxprom32 = sext i32 %6 to i64
  %arrayidx33 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom32
  %idxprom34 = sext i32 %8 to i64
  %arrayidx35 = getelementptr inbounds [100 x i32], ptr %arrayidx33, i64 0, i64 %idxprom34
  %10 = load i32, ptr %arrayidx35, align 4, !tbaa !5, !invariant.load !12
  %cmp36 = icmp sgt i32 %min.3, %10
  br i1 %cmp36, label %cond.true, label %if.end

cond.true:                                        ; preds = %if.else
  br label %if.end

if.end:                                           ; preds = %cond.true, %if.else, %if.then
  %min.4 = phi i32 [ %9, %if.then ], [ %10, %cond.true ], [ %min.3, %if.else ]
  call fastcc void @outlined_ir_func_0(ptr noalias nofree noundef nonnull align 4 captures(none) dereferenceable(4) %l, i32 noundef 1) #9
  %.pr1 = load i32, ptr %l, align 4, !tbaa !5
  br label %for.cond23

for.end43:                                        ; preds = %for.cond23
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull align 4 captures(none) dereferenceable(4) %l) #9
  br label %for.cond45

for.cond45:                                       ; preds = %for.inc53, %for.end43
  %l44.0 = phi i32 [ 0, %for.end43 ], [ %inc54, %for.inc53 ]
  %cmp46 = icmp slt i32 %l44.0, %7
  br i1 %cmp46, label %for.inc53, label %for.end55

for.inc53:                                        ; preds = %for.cond45
  %idxprom49 = sext i32 %6 to i64
  %arrayidx50 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom49
  %idxprom51 = sext i32 %l44.0 to i64
  %arrayidx52 = getelementptr inbounds [100 x i32], ptr %arrayidx50, i64 0, i64 %idxprom51
  %11 = load i32, ptr %arrayidx52, align 4, !tbaa !5, !invariant.load !12
  %sub = sub nsw i32 %11, %min.3
  store i32 %sub, ptr %arrayidx52, align 4, !tbaa !5
  %inc54 = add nsw i32 %l44.0, 1
  br label %for.cond45, !llvm.loop !13

for.end55:                                        ; preds = %for.cond45
  call fastcc void @outlined_ir_func_0(ptr noalias nofree noundef nonnull align 4 captures(none) dereferenceable(4) %k, i32 noundef 1) #9
  br label %for.cond19

for.end58:                                        ; preds = %for.cond19
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull align 4 captures(none) dereferenceable(4) %k) #9
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 captures(none) dereferenceable(4) %k59) #9
  store i32 0, ptr %k59, align 4, !tbaa !5
  br label %for.cond60

for.cond60:                                       ; preds = %for.end105, %for.end58
  %min.5 = phi i32 [ %min.2, %for.end58 ], [ %min.6, %for.end105 ]
  %12 = load i32, ptr %k59, align 4, !tbaa !5
  %cmp61 = icmp slt i32 %12, %7
  br i1 %cmp61, label %for.body63, label %for.end108

for.body63:                                       ; preds = %for.cond60
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 captures(none) dereferenceable(4) %l64) #9
  store i32 0, ptr %l64, align 4, !tbaa !5
  br label %for.cond65

for.cond65:                                       ; preds = %if.end89, %for.body63
  %13 = phi i32 [ %.pr2, %if.end89 ], [ 0, %for.body63 ]
  %min.6 = phi i32 [ %min.5, %for.body63 ], [ %min.7, %if.end89 ]
  %cmp66 = icmp slt i32 %13, %7
  br i1 %cmp66, label %for.body68, label %for.end92

for.body68:                                       ; preds = %for.cond65
  %cmp69 = icmp eq i32 %13, 0
  br i1 %cmp69, label %if.then70, label %if.else75

if.then70:                                        ; preds = %for.body68
  %idxprom73 = sext i32 %12 to i64
  %arrayidx74 = getelementptr inbounds [100 x i32], ptr %a, i64 0, i64 %idxprom73
  %14 = load i32, ptr %arrayidx74, align 4, !tbaa !5, !invariant.load !12
  br label %if.end89

if.else75:                                        ; preds = %for.body68
  %idxprom76 = sext i32 %13 to i64
  %arrayidx77 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom76
  %idxprom78 = sext i32 %12 to i64
  %arrayidx79 = getelementptr inbounds [100 x i32], ptr %arrayidx77, i64 0, i64 %idxprom78
  %15 = load i32, ptr %arrayidx79, align 4, !tbaa !5, !invariant.load !12
  %cmp80 = icmp sgt i32 %min.6, %15
  br i1 %cmp80, label %cond.true81, label %if.end89

cond.true81:                                      ; preds = %if.else75
  %16 = load i32, ptr %arrayidx79, align 4, !tbaa !5
  br label %if.end89

if.end89:                                         ; preds = %cond.true81, %if.else75, %if.then70
  %min.7 = phi i32 [ %14, %if.then70 ], [ %16, %cond.true81 ], [ %min.6, %if.else75 ]
  call fastcc void @outlined_ir_func_0(ptr noalias nofree noundef nonnull align 4 captures(none) dereferenceable(4) %l64, i32 noundef 1) #9
  %.pr2 = load i32, ptr %l64, align 4, !tbaa !5
  br label %for.cond65

for.end92:                                        ; preds = %for.cond65
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull align 4 captures(none) dereferenceable(4) %l64) #9
  br label %for.cond94

for.cond94:                                       ; preds = %for.inc103, %for.end92
  %l93.0 = phi i32 [ 0, %for.end92 ], [ %inc104, %for.inc103 ]
  %cmp95 = icmp slt i32 %l93.0, %7
  br i1 %cmp95, label %for.inc103, label %for.end105

for.inc103:                                       ; preds = %for.cond94
  %idxprom98 = sext i32 %l93.0 to i64
  %arrayidx99 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom98
  %idxprom100 = sext i32 %12 to i64
  %arrayidx101 = getelementptr inbounds [100 x i32], ptr %arrayidx99, i64 0, i64 %idxprom100
  %17 = load i32, ptr %arrayidx101, align 4, !tbaa !5, !invariant.load !12
  %sub102 = sub nsw i32 %17, %min.6
  store i32 %sub102, ptr %arrayidx101, align 4, !tbaa !5
  %inc104 = add nsw i32 %l93.0, 1
  br label %for.cond94, !llvm.loop !14

for.end105:                                       ; preds = %for.cond94
  call fastcc void @outlined_ir_func_0(ptr noalias nofree noundef nonnull align 4 captures(none) dereferenceable(4) %k59, i32 noundef 1) #9
  br label %for.cond60

for.end108:                                       ; preds = %for.cond60
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull align 4 captures(none) dereferenceable(4) %k59) #9
  %arrayidx109 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 1
  %arrayidx110 = getelementptr inbounds [100 x i32], ptr %arrayidx109, i64 0, i64 1
  %18 = load i32, ptr %arrayidx110, align 4, !tbaa !5
  %add = add nsw i32 %s.0, %18
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 captures(none) dereferenceable(4) %i111) #9
  store i32 0, ptr %i111, align 4, !tbaa !5
  br label %for.cond112

for.cond112:                                      ; preds = %for.end131, %for.end108
  %19 = load i32, ptr %i111, align 4, !tbaa !5
  %cmp113 = icmp slt i32 %19, %7
  br i1 %cmp113, label %for.body115, label %for.end134

for.body115:                                      ; preds = %for.cond112
  br label %for.cond117

for.cond117:                                      ; preds = %for.inc129, %for.body115
  %j116.0 = phi i32 [ 0, %for.body115 ], [ %inc130, %for.inc129 ]
  %cmp118 = icmp slt i32 %j116.0, %7
  br i1 %cmp118, label %for.inc129, label %for.end131

for.inc129:                                       ; preds = %for.cond117
  %idxprom121 = sext i32 %19 to i64
  %arrayidx122 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom121
  %idxprom123 = sext i32 %j116.0 to i64
  %arrayidx124 = getelementptr inbounds [100 x i32], ptr %arrayidx122, i64 0, i64 %idxprom123
  %20 = load i32, ptr %arrayidx124, align 4, !tbaa !5, !invariant.load !12
  %arrayidx126 = getelementptr inbounds [100 x [100 x i32]], ptr %temp, i64 0, i64 %idxprom121
  %arrayidx128 = getelementptr inbounds [100 x i32], ptr %arrayidx126, i64 0, i64 %idxprom123
  store i32 %20, ptr %arrayidx128, align 4, !tbaa !5
  %inc130 = add nsw i32 %j116.0, 1
  br label %for.cond117, !llvm.loop !15

for.end131:                                       ; preds = %for.cond117
  call fastcc void @outlined_ir_func_0(ptr noalias nofree noundef nonnull align 4 captures(none) dereferenceable(4) %i111, i32 noundef 1) #9
  br label %for.cond112

for.end134:                                       ; preds = %for.cond112
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull align 4 captures(none) dereferenceable(4) %i111) #9
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 captures(none) dereferenceable(4) %i135) #9
  store i32 2, ptr %i135, align 4, !tbaa !5
  br label %for.cond136

for.cond136:                                      ; preds = %for.body139, %for.end134
  %21 = load i32, ptr %i135, align 4, !tbaa !5
  %cmp137 = icmp slt i32 %21, %7
  br i1 %cmp137, label %for.body139, label %for.end149

for.body139:                                      ; preds = %for.cond136
  %idxprom140 = sext i32 %21 to i64
  %arrayidx141 = getelementptr inbounds [100 x [100 x i32]], ptr %temp, i64 0, i64 %idxprom140
  %22 = load i32, ptr %arrayidx141, align 16, !tbaa !5, !invariant.load !12
  %sub143 = sub nsw i32 %21, 1
  %idxprom144 = sext i32 %sub143 to i64
  %arrayidx145 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom144
  store i32 %22, ptr %arrayidx145, align 16, !tbaa !5
  call fastcc void @outlined_ir_func_0(ptr noalias nofree noundef nonnull align 4 captures(none) dereferenceable(4) %i135, i32 noundef 1) #9
  br label %for.cond136

for.end149:                                       ; preds = %for.cond136
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull align 4 captures(none) dereferenceable(4) %i135) #9
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 captures(none) dereferenceable(4) %i150) #9
  store i32 2, ptr %i150, align 4, !tbaa !5
  br label %for.cond151

for.cond151:                                      ; preds = %for.body154, %for.end149
  %23 = load i32, ptr %i150, align 4, !tbaa !5
  %cmp152 = icmp slt i32 %23, %7
  br i1 %cmp152, label %for.body154, label %for.end164

for.body154:                                      ; preds = %for.cond151
  %idxprom156 = sext i32 %23 to i64
  %arrayidx157 = getelementptr inbounds [100 x i32], ptr %temp, i64 0, i64 %idxprom156
  %24 = load i32, ptr %arrayidx157, align 4, !tbaa !5, !invariant.load !12
  %sub159 = sub nsw i32 %23, 1
  %idxprom160 = sext i32 %sub159 to i64
  %arrayidx161 = getelementptr inbounds [100 x i32], ptr %a, i64 0, i64 %idxprom160
  store i32 %24, ptr %arrayidx161, align 4, !tbaa !5
  call fastcc void @outlined_ir_func_0(ptr noalias nofree noundef nonnull align 4 captures(none) dereferenceable(4) %i150, i32 noundef 1) #9
  br label %for.cond151

for.end164:                                       ; preds = %for.cond151
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull align 4 captures(none) dereferenceable(4) %i150) #9
  br label %for.cond166

for.cond166:                                      ; preds = %for.inc188, %for.end164
  %i165.0 = phi i32 [ 2, %for.end164 ], [ %inc189, %for.inc188 ]
  %cmp167 = icmp slt i32 %i165.0, %7
  br i1 %cmp167, label %for.body169, label %for.end190

for.body169:                                      ; preds = %for.cond166
  br label %for.cond171

for.cond171:                                      ; preds = %for.inc185, %for.body169
  %j170.0 = phi i32 [ 2, %for.body169 ], [ %inc186, %for.inc185 ]
  %cmp172 = icmp slt i32 %j170.0, %7
  br i1 %cmp172, label %for.inc185, label %for.inc188

for.inc185:                                       ; preds = %for.cond171
  %idxprom175 = sext i32 %i165.0 to i64
  %arrayidx176 = getelementptr inbounds [100 x [100 x i32]], ptr %temp, i64 0, i64 %idxprom175
  %idxprom177 = sext i32 %j170.0 to i64
  %arrayidx178 = getelementptr inbounds [100 x i32], ptr %arrayidx176, i64 0, i64 %idxprom177
  %25 = load i32, ptr %arrayidx178, align 4, !tbaa !5, !invariant.load !12
  %sub179 = sub nsw i32 %i165.0, 1
  %idxprom180 = sext i32 %sub179 to i64
  %arrayidx181 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom180
  %sub182 = sub nsw i32 %j170.0, 1
  %idxprom183 = sext i32 %sub182 to i64
  %arrayidx184 = getelementptr inbounds [100 x i32], ptr %arrayidx181, i64 0, i64 %idxprom183
  store i32 %25, ptr %arrayidx184, align 4, !tbaa !5
  %inc186 = add nsw i32 %j170.0, 1
  br label %for.cond171, !llvm.loop !16

for.inc188:                                       ; preds = %for.cond171
  %inc189 = add nsw i32 %i165.0, 1
  br label %for.cond166, !llvm.loop !17

for.end190:                                       ; preds = %for.cond166
  call fastcc void @outlined_ir_func_0(ptr noalias nofree noundef nonnull align 4 captures(none) dereferenceable(4) %n, i32 noundef -1) #9
  %.pr = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond15

for.end192:                                       ; preds = %for.cond15
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull align 4 dereferenceable(4) %n) #9
  %call193 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %s.0)
  %call194 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call193, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  call fastcc void @outlined_ir_func_0(ptr noalias nofree noundef nonnull align 4 captures(none) dereferenceable(4) %z, i32 noundef 1) #9
  br label %for.cond

for.end197:                                       ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull align 4 captures(none) dereferenceable(4) %z) #9
  call void @llvm.lifetime.end.p0(i64 noundef 40000, ptr noundef %temp) #9
  call void @llvm.lifetime.end.p0(i64 noundef 40000, ptr noundef %a) #9
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %n0) #9
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #4 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #5

; Function Attrs: minsize mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @outlined_ir_func_0(ptr noalias nofree noundef nonnull align 4 captures(none) dereferenceable(4) %0, i32 noundef %1) unnamed_addr #6 {
for.cond1.exitStub:
  %2 = load i32, ptr %0, align 4, !tbaa !5
  %inc13 = add nsw i32 %2, %1
  store i32 %inc13, ptr %0, align 4, !tbaa !5
  ret void
}

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { minsize mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind }
attributes #8 = { nofree }
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
!12 = !{}
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11}
