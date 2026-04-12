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
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %n0) #8
  call void @llvm.lifetime.start.p0(i64 noundef 40000, ptr noundef align 16 %a) #8
  call void @llvm.memset.p0.i64(ptr noundef writeonly align 16 %a, i8 noundef 0, i64 noundef 40000, i1 noundef false) #9
  call void @llvm.lifetime.start.p0(i64 noundef 40000, ptr noundef align 16 %temp) #8
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n0)
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef %z) #10
  store i32 0, ptr %z, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.end192, %entry
  %min.0 = phi i32 [ undef, %entry ], [ %min.1, %for.end192 ]
  %0 = load i32, ptr %z, align 4, !tbaa !5
  %1 = load i32, ptr %n0, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end197

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef %i) #10
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
  %5 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom
  %idxprom9 = sext i32 %j.0 to i64
  %arrayidx10 = getelementptr inbounds [100 x i32], ptr %arrayidx, i64 0, i64 %idxprom9
  %call11 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx10)
  %inc = add nsw i32 %j.0, 1
  br label %for.cond5, !llvm.loop !9

for.end:                                          ; preds = %for.cond5
  call fastcc void @outlined_ir_func_0(ptr %i, i32 1)
  br label %for.cond1

for.end14:                                        ; preds = %for.cond1
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %i) #10
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef %n) #10
  store i32 %3, ptr %n, align 4, !tbaa !5
  br label %for.cond15

for.cond15:                                       ; preds = %for.end190, %for.end14
  %6 = phi i32 [ %.pr, %for.end190 ], [ %3, %for.end14 ]
  %min.1 = phi i32 [ %min.0, %for.end14 ], [ %min.5, %for.end190 ]
  %s.0 = phi i32 [ 0, %for.end14 ], [ %add, %for.end190 ]
  %cmp16 = icmp sgt i32 %6, 1
  br i1 %cmp16, label %for.body18, label %for.end192

for.body18:                                       ; preds = %for.cond15
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef %k) #10
  store i32 0, ptr %k, align 4, !tbaa !5
  br label %for.cond19

for.cond19:                                       ; preds = %for.end55, %for.body18
  %min.2 = phi i32 [ %min.1, %for.body18 ], [ %min.3, %for.end55 ]
  %7 = load i32, ptr %k, align 4, !tbaa !5
  %8 = load i32, ptr %n, align 4, !tbaa !5
  %cmp20 = icmp slt i32 %7, %8
  br i1 %cmp20, label %for.body22, label %for.end58

for.body22:                                       ; preds = %for.cond19
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef %l) #10
  store i32 0, ptr %l, align 4, !tbaa !5
  br label %for.cond23

for.cond23:                                       ; preds = %if.end, %for.body22
  %9 = phi i32 [ %.pr1, %if.end ], [ 0, %for.body22 ]
  %min.3 = phi i32 [ %min.2, %for.body22 ], [ %min.4, %if.end ]
  %10 = load i32, ptr %n, align 4, !tbaa !5
  %cmp24 = icmp slt i32 %9, %10
  br i1 %cmp24, label %for.body26, label %for.end43

for.body26:                                       ; preds = %for.cond23
  %cmp27 = icmp eq i32 %9, 0
  br i1 %cmp27, label %if.then, label %if.else

if.then:                                          ; preds = %for.body26
  %11 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom28 = sext i32 %11 to i64
  %arrayidx29 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom28
  %idxprom30 = sext i32 %9 to i64
  %arrayidx31 = getelementptr inbounds [100 x i32], ptr %arrayidx29, i64 0, i64 %idxprom30
  %12 = load i32, ptr %arrayidx31, align 4, !tbaa !5, !invariant.load !12
  br label %if.end

if.else:                                          ; preds = %for.body26
  %13 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom32 = sext i32 %13 to i64
  %arrayidx33 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom32
  %idxprom34 = sext i32 %9 to i64
  %arrayidx35 = getelementptr inbounds [100 x i32], ptr %arrayidx33, i64 0, i64 %idxprom34
  %14 = load i32, ptr %arrayidx35, align 4, !tbaa !5, !invariant.load !12
  %cmp36 = icmp sgt i32 %min.3, %14
  br i1 %cmp36, label %if.end, label %cond.false

cond.false:                                       ; preds = %if.else
  br label %if.end

if.end:                                           ; preds = %cond.false, %if.else, %if.then
  %min.4 = phi i32 [ %12, %if.then ], [ %min.3, %cond.false ], [ %14, %if.else ]
  call fastcc void @outlined_ir_func_0(ptr %l, i32 1)
  %.pr1 = load i32, ptr %l, align 4, !tbaa !5
  br label %for.cond23

for.end43:                                        ; preds = %for.cond23
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %l) #10
  br label %for.cond45

for.cond45:                                       ; preds = %for.inc53, %for.end43
  %l44.0 = phi i32 [ 0, %for.end43 ], [ %inc54, %for.inc53 ]
  %cmp46 = icmp slt i32 %l44.0, %10
  br i1 %cmp46, label %for.inc53, label %for.end55

for.inc53:                                        ; preds = %for.cond45
  %15 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom49 = sext i32 %15 to i64
  %arrayidx50 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom49
  %idxprom51 = sext i32 %l44.0 to i64
  %arrayidx52 = getelementptr inbounds [100 x i32], ptr %arrayidx50, i64 0, i64 %idxprom51
  %16 = load i32, ptr %arrayidx52, align 4, !tbaa !5, !invariant.load !12
  %sub = sub nsw i32 %16, %min.3
  store i32 %sub, ptr %arrayidx52, align 4, !tbaa !5
  %inc54 = add nsw i32 %l44.0, 1
  br label %for.cond45, !llvm.loop !13

for.end55:                                        ; preds = %for.cond45
  call fastcc void @outlined_ir_func_0(ptr %k, i32 1)
  br label %for.cond19

for.end58:                                        ; preds = %for.cond19
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %k) #10
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef %k59) #10
  store i32 0, ptr %k59, align 4, !tbaa !5
  br label %for.cond60

for.cond60:                                       ; preds = %for.end105, %for.end58
  %min.5 = phi i32 [ %min.2, %for.end58 ], [ %min.6, %for.end105 ]
  %17 = load i32, ptr %k59, align 4, !tbaa !5
  %18 = load i32, ptr %n, align 4, !tbaa !5
  %cmp61 = icmp slt i32 %17, %18
  br i1 %cmp61, label %for.body63, label %for.end108

for.body63:                                       ; preds = %for.cond60
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef %l64) #10
  store i32 0, ptr %l64, align 4, !tbaa !5
  br label %for.cond65

for.cond65:                                       ; preds = %if.end89, %for.body63
  %19 = phi i32 [ %.pr2, %if.end89 ], [ 0, %for.body63 ]
  %min.6 = phi i32 [ %min.5, %for.body63 ], [ %min.7, %if.end89 ]
  %20 = load i32, ptr %n, align 4, !tbaa !5
  %cmp66 = icmp slt i32 %19, %20
  br i1 %cmp66, label %for.body68, label %for.end92

for.body68:                                       ; preds = %for.cond65
  %cmp69 = icmp eq i32 %19, 0
  br i1 %cmp69, label %if.then70, label %if.else75

if.then70:                                        ; preds = %for.body68
  %idxprom71 = sext i32 %19 to i64
  %arrayidx72 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom71
  %21 = load i32, ptr %k59, align 4, !tbaa !5
  %idxprom73 = sext i32 %21 to i64
  %arrayidx74 = getelementptr inbounds [100 x i32], ptr %arrayidx72, i64 0, i64 %idxprom73
  %22 = load i32, ptr %arrayidx74, align 4, !tbaa !5, !invariant.load !12
  br label %if.end89

if.else75:                                        ; preds = %for.body68
  %idxprom76 = sext i32 %19 to i64
  %arrayidx77 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom76
  %23 = load i32, ptr %k59, align 4, !tbaa !5
  %idxprom78 = sext i32 %23 to i64
  %arrayidx79 = getelementptr inbounds [100 x i32], ptr %arrayidx77, i64 0, i64 %idxprom78
  %24 = load i32, ptr %arrayidx79, align 4, !tbaa !5, !invariant.load !12
  %cmp80 = icmp sgt i32 %min.6, %24
  br i1 %cmp80, label %if.end89, label %cond.false86

cond.false86:                                     ; preds = %if.else75
  br label %if.end89

if.end89:                                         ; preds = %cond.false86, %if.else75, %if.then70
  %min.7 = phi i32 [ %22, %if.then70 ], [ %min.6, %cond.false86 ], [ %24, %if.else75 ]
  call fastcc void @outlined_ir_func_0(ptr %l64, i32 1)
  %.pr2 = load i32, ptr %l64, align 4, !tbaa !5
  br label %for.cond65

for.end92:                                        ; preds = %for.cond65
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %l64) #10
  br label %for.cond94

for.cond94:                                       ; preds = %for.inc103, %for.end92
  %l93.0 = phi i32 [ 0, %for.end92 ], [ %inc104, %for.inc103 ]
  %cmp95 = icmp slt i32 %l93.0, %20
  br i1 %cmp95, label %for.inc103, label %for.end105

for.inc103:                                       ; preds = %for.cond94
  %idxprom98 = sext i32 %l93.0 to i64
  %arrayidx99 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom98
  %25 = load i32, ptr %k59, align 4, !tbaa !5
  %idxprom100 = sext i32 %25 to i64
  %arrayidx101 = getelementptr inbounds [100 x i32], ptr %arrayidx99, i64 0, i64 %idxprom100
  %26 = load i32, ptr %arrayidx101, align 4, !tbaa !5, !invariant.load !12
  %sub102 = sub nsw i32 %26, %min.6
  store i32 %sub102, ptr %arrayidx101, align 4, !tbaa !5
  %inc104 = add nsw i32 %l93.0, 1
  br label %for.cond94, !llvm.loop !14

for.end105:                                       ; preds = %for.cond94
  call fastcc void @outlined_ir_func_0(ptr %k59, i32 1)
  br label %for.cond60

for.end108:                                       ; preds = %for.cond60
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %k59) #10
  %arrayidx109 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 1
  %arrayidx110 = getelementptr inbounds [100 x i32], ptr %arrayidx109, i64 0, i64 1
  %27 = load i32, ptr %arrayidx110, align 4, !tbaa !5
  %add = add nsw i32 %s.0, %27
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef %i111) #10
  store i32 0, ptr %i111, align 4, !tbaa !5
  br label %for.cond112

for.cond112:                                      ; preds = %for.end131, %for.end108
  %28 = load i32, ptr %i111, align 4, !tbaa !5
  %29 = load i32, ptr %n, align 4, !tbaa !5
  %cmp113 = icmp slt i32 %28, %29
  br i1 %cmp113, label %for.body115, label %for.end134

for.body115:                                      ; preds = %for.cond112
  br label %for.cond117

for.cond117:                                      ; preds = %for.inc129, %for.body115
  %j116.0 = phi i32 [ 0, %for.body115 ], [ %inc130, %for.inc129 ]
  %cmp118 = icmp slt i32 %j116.0, %29
  br i1 %cmp118, label %for.inc129, label %for.end131

for.inc129:                                       ; preds = %for.cond117
  %idxprom121 = sext i32 %28 to i64
  %arrayidx122 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom121
  %idxprom123 = sext i32 %j116.0 to i64
  %arrayidx124 = getelementptr inbounds [100 x i32], ptr %arrayidx122, i64 0, i64 %idxprom123
  %30 = load i32, ptr %arrayidx124, align 4, !tbaa !5, !invariant.load !12
  %arrayidx126 = getelementptr inbounds [100 x [100 x i32]], ptr %temp, i64 0, i64 %idxprom121
  %arrayidx128 = getelementptr inbounds [100 x i32], ptr %arrayidx126, i64 0, i64 %idxprom123
  store i32 %30, ptr %arrayidx128, align 4, !tbaa !5
  %inc130 = add nsw i32 %j116.0, 1
  br label %for.cond117, !llvm.loop !15

for.end131:                                       ; preds = %for.cond117
  call fastcc void @outlined_ir_func_0(ptr %i111, i32 1)
  br label %for.cond112

for.end134:                                       ; preds = %for.cond112
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %i111) #10
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef %i135) #10
  store i32 2, ptr %i135, align 4, !tbaa !5
  br label %for.cond136

for.cond136:                                      ; preds = %for.body139, %for.end134
  %31 = load i32, ptr %i135, align 4, !tbaa !5
  %32 = load i32, ptr %n, align 4, !tbaa !5
  %cmp137 = icmp slt i32 %31, %32
  br i1 %cmp137, label %for.body139, label %for.end149

for.body139:                                      ; preds = %for.cond136
  %idxprom140 = sext i32 %31 to i64
  %arrayidx141 = getelementptr inbounds [100 x [100 x i32]], ptr %temp, i64 0, i64 %idxprom140
  %33 = load i32, ptr %arrayidx141, align 16, !tbaa !5, !invariant.load !12
  %sub143 = sub nsw i32 %31, 1
  %idxprom144 = sext i32 %sub143 to i64
  %arrayidx145 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom144
  store i32 %33, ptr %arrayidx145, align 16, !tbaa !5
  call fastcc void @outlined_ir_func_0(ptr %i135, i32 1)
  br label %for.cond136

for.end149:                                       ; preds = %for.cond136
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %i135) #10
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef %i150) #10
  store i32 2, ptr %i150, align 4, !tbaa !5
  br label %for.cond151

for.cond151:                                      ; preds = %for.body154, %for.end149
  %34 = load i32, ptr %i150, align 4, !tbaa !5
  %35 = load i32, ptr %n, align 4, !tbaa !5
  %cmp152 = icmp slt i32 %34, %35
  br i1 %cmp152, label %for.body154, label %for.end164

for.body154:                                      ; preds = %for.cond151
  %idxprom156 = sext i32 %34 to i64
  %arrayidx157 = getelementptr inbounds [100 x i32], ptr %temp, i64 0, i64 %idxprom156
  %36 = load i32, ptr %arrayidx157, align 4, !tbaa !5, !invariant.load !12
  %sub159 = sub nsw i32 %34, 1
  %idxprom160 = sext i32 %sub159 to i64
  %arrayidx161 = getelementptr inbounds [100 x i32], ptr %a, i64 0, i64 %idxprom160
  store i32 %36, ptr %arrayidx161, align 4, !tbaa !5
  call fastcc void @outlined_ir_func_0(ptr %i150, i32 1)
  br label %for.cond151

for.end164:                                       ; preds = %for.cond151
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %i150) #10
  br label %for.cond166

for.cond166:                                      ; preds = %for.inc188, %for.end164
  %i165.0 = phi i32 [ 2, %for.end164 ], [ %inc189, %for.inc188 ]
  %cmp167 = icmp slt i32 %i165.0, %35
  br i1 %cmp167, label %for.body169, label %for.end190

for.body169:                                      ; preds = %for.cond166
  br label %for.cond171

for.cond171:                                      ; preds = %for.inc185, %for.body169
  %j170.0 = phi i32 [ 2, %for.body169 ], [ %inc186, %for.inc185 ]
  %cmp172 = icmp slt i32 %j170.0, %35
  br i1 %cmp172, label %for.inc185, label %for.inc188

for.inc185:                                       ; preds = %for.cond171
  %idxprom175 = sext i32 %i165.0 to i64
  %arrayidx176 = getelementptr inbounds [100 x [100 x i32]], ptr %temp, i64 0, i64 %idxprom175
  %idxprom177 = sext i32 %j170.0 to i64
  %arrayidx178 = getelementptr inbounds [100 x i32], ptr %arrayidx176, i64 0, i64 %idxprom177
  %37 = load i32, ptr %arrayidx178, align 4, !tbaa !5, !invariant.load !12
  %sub179 = sub nsw i32 %i165.0, 1
  %idxprom180 = sext i32 %sub179 to i64
  %arrayidx181 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom180
  %sub182 = sub nsw i32 %j170.0, 1
  %idxprom183 = sext i32 %sub182 to i64
  %arrayidx184 = getelementptr inbounds [100 x i32], ptr %arrayidx181, i64 0, i64 %idxprom183
  store i32 %37, ptr %arrayidx184, align 4, !tbaa !5
  %inc186 = add nsw i32 %j170.0, 1
  br label %for.cond171, !llvm.loop !16

for.inc188:                                       ; preds = %for.cond171
  %inc189 = add nsw i32 %i165.0, 1
  br label %for.cond166, !llvm.loop !17

for.end190:                                       ; preds = %for.cond166
  call fastcc void @outlined_ir_func_0(ptr %n, i32 -1)
  %.pr = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond15

for.end192:                                       ; preds = %for.cond15
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %n) #10
  %call193 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %s.0)
  %call194 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call193, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  call fastcc void @outlined_ir_func_0(ptr %z, i32 1)
  br label %for.cond

for.end197:                                       ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %z) #10
  call void @llvm.lifetime.end.p0(i64 noundef 40000, ptr noundef %temp) #10
  call void @llvm.lifetime.end.p0(i64 noundef 40000, ptr noundef %a) #10
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %n0) #10
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
  %vtable = load ptr, ptr %__os, align 8, !tbaa !18, !invariant.load !12
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8, !invariant.load !12
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
  %0 = load ptr, ptr %_M_ctype, align 8, !tbaa !20, !invariant.load !12
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
  call void @_ZSt16__throw_bad_castv() #11
  unreachable

if.end:                                           ; preds = %entry
  ret ptr %__f
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %this, i8 noundef signext %__c) local_unnamed_addr #4 comdat align 2 {
entry:
  %_M_widen_ok = getelementptr inbounds nuw %"class.std::ctype", ptr %this, i32 0, i32 8
  %0 = load i8, ptr %_M_widen_ok, align 8, !tbaa !38, !invariant.load !12
  %tobool = icmp ne i8 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %_M_widen = getelementptr inbounds nuw %"class.std::ctype", ptr %this, i32 0, i32 9
  %idxprom = zext i8 %__c to i64
  %arrayidx = getelementptr inbounds nuw [256 x i8], ptr %_M_widen, i64 0, i64 %idxprom
  %1 = load i8, ptr %arrayidx, align 1, !tbaa !44, !invariant.load !12
  br label %return

if.end:                                           ; preds = %entry
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %this)
  %vtable = load ptr, ptr %this, align 8, !tbaa !18, !invariant.load !12
  %vfn = getelementptr inbounds ptr, ptr %vtable, i64 6
  %2 = load ptr, ptr %vfn, align 8, !invariant.load !12
  %call = call noundef signext i8 %2(ptr noundef nonnull align 8 dereferenceable(570) %this, i8 noundef signext %__c)
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i8 [ %1, %if.then ], [ %call, %if.end ]
  ret i8 %retval.0
}

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #6

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #3

; Function Attrs: minsize mustprogress norecurse optsize uwtable
define internal fastcc void @outlined_ir_func_0(ptr %0, i32 %1) unnamed_addr #7 {
for.cond1.exitStub:
  %2 = load i32, ptr %0, align 4, !tbaa !5
  %inc13 = add nsw i32 %2, %1
  store i32 %inc13, ptr %0, align 4, !tbaa !5
  ret void
}

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { minsize mustprogress norecurse optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind }
attributes #9 = { nofree }
attributes #10 = { nounwind }
attributes #11 = { noreturn }

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
!18 = !{!19, !19, i64 0}
!19 = !{!"vtable pointer", !8, i64 0}
!20 = !{!21, !35, i64 240}
!21 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !22, i64 0, !32, i64 216, !7, i64 224, !33, i64 225, !34, i64 232, !35, i64 240, !36, i64 248, !37, i64 256}
!22 = !{!"_ZTSSt8ios_base", !23, i64 8, !23, i64 16, !24, i64 24, !25, i64 28, !25, i64 32, !26, i64 40, !28, i64 48, !7, i64 64, !6, i64 192, !29, i64 200, !30, i64 208}
!23 = !{!"long", !7, i64 0}
!24 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!25 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!26 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !27, i64 0}
!27 = !{!"any pointer", !7, i64 0}
!28 = !{!"_ZTSNSt8ios_base6_WordsE", !27, i64 0, !23, i64 8}
!29 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !27, i64 0}
!30 = !{!"_ZTSSt6locale", !31, i64 0}
!31 = !{!"p1 _ZTSNSt6locale5_ImplE", !27, i64 0}
!32 = !{!"p1 _ZTSSo", !27, i64 0}
!33 = !{!"bool", !7, i64 0}
!34 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !27, i64 0}
!35 = !{!"p1 _ZTSSt5ctypeIcE", !27, i64 0}
!36 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !27, i64 0}
!37 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !27, i64 0}
!38 = !{!39, !7, i64 56}
!39 = !{!"_ZTSSt5ctypeIcE", !40, i64 0, !41, i64 16, !33, i64 24, !42, i64 32, !42, i64 40, !43, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!40 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!41 = !{!"p1 _ZTS15__locale_struct", !27, i64 0}
!42 = !{!"p1 int", !27, i64 0}
!43 = !{!"p1 short", !27, i64 0}
!44 = !{!7, !7, i64 0}
