; ModuleID = '<stdin>'
source_filename = "/tmp/tmpj0j9eeh5.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@__const.main.days = private unnamed_addr constant [12 x i32] [i32 0, i32 31, i32 28, i32 31, i32 30, i32 31, i32 30, i32 31, i32 31, i32 30, i32 31, i32 30], align 16
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"%d %d %d\00", align 1
@str = private unnamed_addr constant [3 x i8] c"NO\00", align 1
@str.1 = private unnamed_addr constant [4 x i8] c"YES\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %a = alloca [200 x i32], align 16
  %b = alloca [200 x i32], align 16
  %c = alloca [200 x i32], align 16
  %days = alloca [12 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #6
  call void @llvm.lifetime.start.p0(i64 800, ptr nonnull %a) #6
  call void @llvm.lifetime.start.p0(i64 800, ptr nonnull %b) #6
  call void @llvm.lifetime.start.p0(i64 800, ptr nonnull %c) #6
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %days) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %days, ptr noundef nonnull align 16 dereferenceable(48) @__const.main.days, i64 48, i1 false)
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp62 = icmp sgt i32 %0, 0
  br i1 %cmp62, label %for.body.lr.ph, label %for.end94

for.body.lr.ph:                                   ; preds = %entry
  %arrayidx13 = getelementptr inbounds nuw i8, ptr %days, i64 8
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %if.end84
  %indvars.iv92 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next93, %if.end84 ]
  %arrayidx = getelementptr inbounds nuw [200 x i32], ptr %a, i64 0, i64 %indvars.iv92
  %arrayidx2 = getelementptr inbounds nuw [200 x i32], ptr %b, i64 0, i64 %indvars.iv92
  %arrayidx4 = getelementptr inbounds nuw [200 x i32], ptr %c, i64 0, i64 %indvars.iv92
  %call5 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %arrayidx, ptr noundef nonnull %arrayidx2, ptr noundef nonnull %arrayidx4)
  %1 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %2 = and i32 %1, 3
  %cmp8 = icmp ne i32 %2, 0
  %rem11 = srem i32 %1, 100
  %cmp12.not = icmp eq i32 %rem11, 0
  %or.cond = or i1 %cmp8, %cmp12.not
  br i1 %or.cond, label %if.else, label %if.then

if.then:                                          ; preds = %for.body
  store i32 29, ptr %arrayidx13, align 8, !tbaa !5
  %3 = load i32, ptr %arrayidx2, align 4, !tbaa !5
  %cmp1739 = icmp sgt i32 %3, 0
  br i1 %cmp1739, label %for.body18.preheader, label %for.cond21.preheader

for.body18.preheader:                             ; preds = %if.then
  %wide.trip.count = zext nneg i32 %3 to i64
  %min.iters.check156 = icmp ult i32 %3, 4
  br i1 %min.iters.check156, label %for.body18.preheader176, label %vector.ph157

vector.ph157:                                     ; preds = %for.body18.preheader
  %n.vec159 = and i64 %wide.trip.count, 2147483644
  br label %vector.body160

vector.body160:                                   ; preds = %vector.body160, %vector.ph157
  %index161 = phi i64 [ 0, %vector.ph157 ], [ %index.next164, %vector.body160 ]
  %vec.phi162 = phi <4 x i32> [ zeroinitializer, %vector.ph157 ], [ %5, %vector.body160 ]
  %4 = getelementptr inbounds nuw [12 x i32], ptr %days, i64 0, i64 %index161
  %wide.load163 = load <4 x i32>, ptr %4, align 16, !tbaa !5
  %5 = add <4 x i32> %wide.load163, %vec.phi162
  %index.next164 = add nuw i64 %index161, 4
  %6 = icmp eq i64 %index.next164, %n.vec159
  br i1 %6, label %middle.block165, label %vector.body160, !llvm.loop !9

middle.block165:                                  ; preds = %vector.body160
  %7 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %5)
  %cmp.n166 = icmp eq i64 %n.vec159, %wide.trip.count
  br i1 %cmp.n166, label %for.cond21.preheader, label %for.body18.preheader176

for.body18.preheader176:                          ; preds = %for.body18.preheader, %middle.block165
  %indvars.iv.ph = phi i64 [ 0, %for.body18.preheader ], [ %n.vec159, %middle.block165 ]
  %w1.140.ph = phi i32 [ 0, %for.body18.preheader ], [ %7, %middle.block165 ]
  br label %for.body18

for.cond21.preheader:                             ; preds = %for.body18, %middle.block165, %if.then
  %w1.1.lcssa = phi i32 [ 0, %if.then ], [ %7, %middle.block165 ], [ %add, %for.body18 ]
  %8 = load i32, ptr %arrayidx4, align 4, !tbaa !5
  %cmp2442 = icmp sgt i32 %8, 0
  br i1 %cmp2442, label %for.body25.preheader, label %if.end84

for.body25.preheader:                             ; preds = %for.cond21.preheader
  %wide.trip.count70 = zext nneg i32 %8 to i64
  %min.iters.check142 = icmp ult i32 %8, 4
  br i1 %min.iters.check142, label %for.body25.preheader174, label %vector.ph143

vector.ph143:                                     ; preds = %for.body25.preheader
  %n.vec145 = and i64 %wide.trip.count70, 2147483644
  br label %vector.body146

vector.body146:                                   ; preds = %vector.body146, %vector.ph143
  %index147 = phi i64 [ 0, %vector.ph143 ], [ %index.next150, %vector.body146 ]
  %vec.phi148 = phi <4 x i32> [ zeroinitializer, %vector.ph143 ], [ %10, %vector.body146 ]
  %9 = getelementptr inbounds nuw [12 x i32], ptr %days, i64 0, i64 %index147
  %wide.load149 = load <4 x i32>, ptr %9, align 16, !tbaa !5
  %10 = add <4 x i32> %wide.load149, %vec.phi148
  %index.next150 = add nuw i64 %index147, 4
  %11 = icmp eq i64 %index.next150, %n.vec145
  br i1 %11, label %middle.block151, label %vector.body146, !llvm.loop !14

middle.block151:                                  ; preds = %vector.body146
  %12 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %10)
  %cmp.n152 = icmp eq i64 %n.vec145, %wide.trip.count70
  br i1 %cmp.n152, label %if.end84, label %for.body25.preheader174

for.body25.preheader174:                          ; preds = %for.body25.preheader, %middle.block151
  %indvars.iv67.ph = phi i64 [ 0, %for.body25.preheader ], [ %n.vec145, %middle.block151 ]
  %w2.143.ph = phi i32 [ 0, %for.body25.preheader ], [ %12, %middle.block151 ]
  br label %for.body25

for.body18:                                       ; preds = %for.body18.preheader176, %for.body18
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body18 ], [ %indvars.iv.ph, %for.body18.preheader176 ]
  %w1.140 = phi i32 [ %add, %for.body18 ], [ %w1.140.ph, %for.body18.preheader176 ]
  %arrayidx20 = getelementptr inbounds nuw [12 x i32], ptr %days, i64 0, i64 %indvars.iv
  %13 = load i32, ptr %arrayidx20, align 4, !tbaa !5
  %add = add nsw i32 %13, %w1.140
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.cond21.preheader, label %for.body18, !llvm.loop !15

for.body25:                                       ; preds = %for.body25.preheader174, %for.body25
  %indvars.iv67 = phi i64 [ %indvars.iv.next68, %for.body25 ], [ %indvars.iv67.ph, %for.body25.preheader174 ]
  %w2.143 = phi i32 [ %add28, %for.body25 ], [ %w2.143.ph, %for.body25.preheader174 ]
  %arrayidx27 = getelementptr inbounds nuw [12 x i32], ptr %days, i64 0, i64 %indvars.iv67
  %14 = load i32, ptr %arrayidx27, align 4, !tbaa !5
  %add28 = add nsw i32 %14, %w2.143
  %indvars.iv.next68 = add nuw nsw i64 %indvars.iv67, 1
  %exitcond71.not = icmp eq i64 %indvars.iv.next68, %wide.trip.count70
  br i1 %exitcond71.not, label %if.end84, label %for.body25, !llvm.loop !16

if.else:                                          ; preds = %for.body
  %rem34 = srem i32 %1, 400
  %cmp35 = icmp eq i32 %rem34, 0
  br i1 %cmp35, label %if.then36, label %if.else60

if.then36:                                        ; preds = %if.else
  store i32 29, ptr %arrayidx13, align 8, !tbaa !5
  %15 = load i32, ptr %arrayidx2, align 4, !tbaa !5
  %cmp4154 = icmp sgt i32 %15, 0
  br i1 %cmp4154, label %for.body42.preheader, label %for.cond49.preheader

for.body42.preheader:                             ; preds = %if.then36
  %wide.trip.count85 = zext nneg i32 %15 to i64
  %min.iters.check100 = icmp ult i32 %15, 4
  br i1 %min.iters.check100, label %for.body42.preheader170, label %vector.ph101

vector.ph101:                                     ; preds = %for.body42.preheader
  %n.vec103 = and i64 %wide.trip.count85, 2147483644
  br label %vector.body104

vector.body104:                                   ; preds = %vector.body104, %vector.ph101
  %index105 = phi i64 [ 0, %vector.ph101 ], [ %index.next108, %vector.body104 ]
  %vec.phi106 = phi <4 x i32> [ zeroinitializer, %vector.ph101 ], [ %17, %vector.body104 ]
  %16 = getelementptr inbounds nuw [12 x i32], ptr %days, i64 0, i64 %index105
  %wide.load107 = load <4 x i32>, ptr %16, align 16, !tbaa !5
  %17 = add <4 x i32> %wide.load107, %vec.phi106
  %index.next108 = add nuw i64 %index105, 4
  %18 = icmp eq i64 %index.next108, %n.vec103
  br i1 %18, label %middle.block109, label %vector.body104, !llvm.loop !17

middle.block109:                                  ; preds = %vector.body104
  %19 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %17)
  %cmp.n110 = icmp eq i64 %n.vec103, %wide.trip.count85
  br i1 %cmp.n110, label %for.cond49.preheader, label %for.body42.preheader170

for.body42.preheader170:                          ; preds = %for.body42.preheader, %middle.block109
  %indvars.iv82.ph = phi i64 [ 0, %for.body42.preheader ], [ %n.vec103, %middle.block109 ]
  %w1.355.ph = phi i32 [ 0, %for.body42.preheader ], [ %19, %middle.block109 ]
  br label %for.body42

for.cond49.preheader:                             ; preds = %for.body42, %middle.block109, %if.then36
  %w1.3.lcssa = phi i32 [ 0, %if.then36 ], [ %19, %middle.block109 ], [ %add45, %for.body42 ]
  %20 = load i32, ptr %arrayidx4, align 4, !tbaa !5
  %cmp5258 = icmp sgt i32 %20, 0
  br i1 %cmp5258, label %for.body53.preheader, label %if.end84

for.body53.preheader:                             ; preds = %for.cond49.preheader
  %wide.trip.count90 = zext nneg i32 %20 to i64
  %min.iters.check = icmp ult i32 %20, 4
  br i1 %min.iters.check, label %for.body53.preheader169, label %vector.ph

vector.ph:                                        ; preds = %for.body53.preheader
  %n.vec = and i64 %wide.trip.count90, 2147483644
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %22, %vector.body ]
  %21 = getelementptr inbounds nuw [12 x i32], ptr %days, i64 0, i64 %index
  %wide.load = load <4 x i32>, ptr %21, align 16, !tbaa !5
  %22 = add <4 x i32> %wide.load, %vec.phi
  %index.next = add nuw i64 %index, 4
  %23 = icmp eq i64 %index.next, %n.vec
  br i1 %23, label %middle.block, label %vector.body, !llvm.loop !18

middle.block:                                     ; preds = %vector.body
  %24 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %22)
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count90
  br i1 %cmp.n, label %if.end84, label %for.body53.preheader169

for.body53.preheader169:                          ; preds = %for.body53.preheader, %middle.block
  %indvars.iv87.ph = phi i64 [ 0, %for.body53.preheader ], [ %n.vec, %middle.block ]
  %w2.359.ph = phi i32 [ 0, %for.body53.preheader ], [ %24, %middle.block ]
  br label %for.body53

for.body42:                                       ; preds = %for.body42.preheader170, %for.body42
  %indvars.iv82 = phi i64 [ %indvars.iv.next83, %for.body42 ], [ %indvars.iv82.ph, %for.body42.preheader170 ]
  %w1.355 = phi i32 [ %add45, %for.body42 ], [ %w1.355.ph, %for.body42.preheader170 ]
  %arrayidx44 = getelementptr inbounds nuw [12 x i32], ptr %days, i64 0, i64 %indvars.iv82
  %25 = load i32, ptr %arrayidx44, align 4, !tbaa !5
  %add45 = add nsw i32 %25, %w1.355
  %indvars.iv.next83 = add nuw nsw i64 %indvars.iv82, 1
  %exitcond86.not = icmp eq i64 %indvars.iv.next83, %wide.trip.count85
  br i1 %exitcond86.not, label %for.cond49.preheader, label %for.body42, !llvm.loop !19

for.body53:                                       ; preds = %for.body53.preheader169, %for.body53
  %indvars.iv87 = phi i64 [ %indvars.iv.next88, %for.body53 ], [ %indvars.iv87.ph, %for.body53.preheader169 ]
  %w2.359 = phi i32 [ %add56, %for.body53 ], [ %w2.359.ph, %for.body53.preheader169 ]
  %arrayidx55 = getelementptr inbounds nuw [12 x i32], ptr %days, i64 0, i64 %indvars.iv87
  %26 = load i32, ptr %arrayidx55, align 4, !tbaa !5
  %add56 = add nsw i32 %26, %w2.359
  %indvars.iv.next88 = add nuw nsw i64 %indvars.iv87, 1
  %exitcond91.not = icmp eq i64 %indvars.iv.next88, %wide.trip.count90
  br i1 %exitcond91.not, label %if.end84, label %for.body53, !llvm.loop !20

if.else60:                                        ; preds = %if.else
  store i32 28, ptr %arrayidx13, align 8, !tbaa !5
  %27 = load i32, ptr %arrayidx2, align 4, !tbaa !5
  %cmp6546 = icmp sgt i32 %27, 0
  br i1 %cmp6546, label %for.body66.preheader, label %for.cond73.preheader

for.body66.preheader:                             ; preds = %if.else60
  %wide.trip.count75 = zext nneg i32 %27 to i64
  %min.iters.check128 = icmp ult i32 %27, 4
  br i1 %min.iters.check128, label %for.body66.preheader173, label %vector.ph129

vector.ph129:                                     ; preds = %for.body66.preheader
  %n.vec131 = and i64 %wide.trip.count75, 2147483644
  br label %vector.body132

vector.body132:                                   ; preds = %vector.body132, %vector.ph129
  %index133 = phi i64 [ 0, %vector.ph129 ], [ %index.next136, %vector.body132 ]
  %vec.phi134 = phi <4 x i32> [ zeroinitializer, %vector.ph129 ], [ %29, %vector.body132 ]
  %28 = getelementptr inbounds nuw [12 x i32], ptr %days, i64 0, i64 %index133
  %wide.load135 = load <4 x i32>, ptr %28, align 16, !tbaa !5
  %29 = add <4 x i32> %wide.load135, %vec.phi134
  %index.next136 = add nuw i64 %index133, 4
  %30 = icmp eq i64 %index.next136, %n.vec131
  br i1 %30, label %middle.block137, label %vector.body132, !llvm.loop !21

middle.block137:                                  ; preds = %vector.body132
  %31 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %29)
  %cmp.n138 = icmp eq i64 %n.vec131, %wide.trip.count75
  br i1 %cmp.n138, label %for.cond73.preheader, label %for.body66.preheader173

for.body66.preheader173:                          ; preds = %for.body66.preheader, %middle.block137
  %indvars.iv72.ph = phi i64 [ 0, %for.body66.preheader ], [ %n.vec131, %middle.block137 ]
  %w1.447.ph = phi i32 [ 0, %for.body66.preheader ], [ %31, %middle.block137 ]
  br label %for.body66

for.cond73.preheader:                             ; preds = %for.body66, %middle.block137, %if.else60
  %w1.4.lcssa = phi i32 [ 0, %if.else60 ], [ %31, %middle.block137 ], [ %add69, %for.body66 ]
  %32 = load i32, ptr %arrayidx4, align 4, !tbaa !5
  %cmp7650 = icmp sgt i32 %32, 0
  br i1 %cmp7650, label %for.body77.preheader, label %if.end84

for.body77.preheader:                             ; preds = %for.cond73.preheader
  %wide.trip.count80 = zext nneg i32 %32 to i64
  %min.iters.check114 = icmp ult i32 %32, 4
  br i1 %min.iters.check114, label %for.body77.preheader171, label %vector.ph115

vector.ph115:                                     ; preds = %for.body77.preheader
  %n.vec117 = and i64 %wide.trip.count80, 2147483644
  br label %vector.body118

vector.body118:                                   ; preds = %vector.body118, %vector.ph115
  %index119 = phi i64 [ 0, %vector.ph115 ], [ %index.next122, %vector.body118 ]
  %vec.phi120 = phi <4 x i32> [ zeroinitializer, %vector.ph115 ], [ %34, %vector.body118 ]
  %33 = getelementptr inbounds nuw [12 x i32], ptr %days, i64 0, i64 %index119
  %wide.load121 = load <4 x i32>, ptr %33, align 16, !tbaa !5
  %34 = add <4 x i32> %wide.load121, %vec.phi120
  %index.next122 = add nuw i64 %index119, 4
  %35 = icmp eq i64 %index.next122, %n.vec117
  br i1 %35, label %middle.block123, label %vector.body118, !llvm.loop !22

middle.block123:                                  ; preds = %vector.body118
  %36 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %34)
  %cmp.n124 = icmp eq i64 %n.vec117, %wide.trip.count80
  br i1 %cmp.n124, label %if.end84, label %for.body77.preheader171

for.body77.preheader171:                          ; preds = %for.body77.preheader, %middle.block123
  %indvars.iv77.ph = phi i64 [ 0, %for.body77.preheader ], [ %n.vec117, %middle.block123 ]
  %w2.451.ph = phi i32 [ 0, %for.body77.preheader ], [ %36, %middle.block123 ]
  br label %for.body77

for.body66:                                       ; preds = %for.body66.preheader173, %for.body66
  %indvars.iv72 = phi i64 [ %indvars.iv.next73, %for.body66 ], [ %indvars.iv72.ph, %for.body66.preheader173 ]
  %w1.447 = phi i32 [ %add69, %for.body66 ], [ %w1.447.ph, %for.body66.preheader173 ]
  %arrayidx68 = getelementptr inbounds nuw [12 x i32], ptr %days, i64 0, i64 %indvars.iv72
  %37 = load i32, ptr %arrayidx68, align 4, !tbaa !5
  %add69 = add nsw i32 %37, %w1.447
  %indvars.iv.next73 = add nuw nsw i64 %indvars.iv72, 1
  %exitcond76.not = icmp eq i64 %indvars.iv.next73, %wide.trip.count75
  br i1 %exitcond76.not, label %for.cond73.preheader, label %for.body66, !llvm.loop !23

for.body77:                                       ; preds = %for.body77.preheader171, %for.body77
  %indvars.iv77 = phi i64 [ %indvars.iv.next78, %for.body77 ], [ %indvars.iv77.ph, %for.body77.preheader171 ]
  %w2.451 = phi i32 [ %add80, %for.body77 ], [ %w2.451.ph, %for.body77.preheader171 ]
  %arrayidx79 = getelementptr inbounds nuw [12 x i32], ptr %days, i64 0, i64 %indvars.iv77
  %38 = load i32, ptr %arrayidx79, align 4, !tbaa !5
  %add80 = add nsw i32 %38, %w2.451
  %indvars.iv.next78 = add nuw nsw i64 %indvars.iv77, 1
  %exitcond81.not = icmp eq i64 %indvars.iv.next78, %wide.trip.count80
  br i1 %exitcond81.not, label %if.end84, label %for.body77, !llvm.loop !24

if.end84:                                         ; preds = %for.body25, %for.body77, %for.body53, %middle.block151, %middle.block123, %middle.block, %for.cond21.preheader, %for.cond73.preheader, %for.cond49.preheader
  %w1.2 = phi i32 [ %w1.3.lcssa, %for.cond49.preheader ], [ %w1.4.lcssa, %for.cond73.preheader ], [ %w1.1.lcssa, %for.cond21.preheader ], [ %w1.3.lcssa, %middle.block ], [ %w1.4.lcssa, %middle.block123 ], [ %w1.1.lcssa, %middle.block151 ], [ %w1.3.lcssa, %for.body53 ], [ %w1.4.lcssa, %for.body77 ], [ %w1.1.lcssa, %for.body25 ]
  %w2.2 = phi i32 [ 0, %for.cond49.preheader ], [ 0, %for.cond73.preheader ], [ 0, %for.cond21.preheader ], [ %24, %middle.block ], [ %36, %middle.block123 ], [ %12, %middle.block151 ], [ %add56, %for.body53 ], [ %add80, %for.body77 ], [ %add28, %for.body25 ]
  %sub = sub nsw i32 %w2.2, %w1.2
  %rem85 = srem i32 %sub, 7
  %cmp86 = icmp eq i32 %rem85, 0
  %str.1.str = select i1 %cmp86, ptr @str.1, ptr @str
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) %str.1.str)
  %indvars.iv.next93 = add nuw nsw i64 %indvars.iv92, 1
  %39 = load i32, ptr %n, align 4, !tbaa !5
  %40 = sext i32 %39 to i64
  %cmp = icmp slt i64 %indvars.iv.next93, %40
  br i1 %cmp, label %for.body, label %for.end94, !llvm.loop !25

for.end94:                                        ; preds = %if.end84, %entry
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %days) #6
  call void @llvm.lifetime.end.p0(i64 800, ptr nonnull %c) #6
  call void @llvm.lifetime.end.p0(i64 800, ptr nonnull %b) #6
  call void @llvm.lifetime.end.p0(i64 800, ptr nonnull %a) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #6
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

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
!9 = distinct !{!9, !10, !11, !12, !13}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = !{!"llvm.loop.isvectorized", i32 1}
!13 = !{!"llvm.loop.unroll.runtime.disable"}
!14 = distinct !{!14, !10, !11, !12, !13}
!15 = distinct !{!15, !10, !11, !12}
!16 = distinct !{!16, !10, !11, !12}
!17 = distinct !{!17, !10, !11, !12, !13}
!18 = distinct !{!18, !10, !11, !12, !13}
!19 = distinct !{!19, !10, !11, !12}
!20 = distinct !{!20, !10, !11, !12}
!21 = distinct !{!21, !10, !11, !12, !13}
!22 = distinct !{!22, !10, !11, !12, !13}
!23 = distinct !{!23, !10, !11, !12}
!24 = distinct !{!24, !10, !11, !12}
!25 = distinct !{!25, !10, !11}
