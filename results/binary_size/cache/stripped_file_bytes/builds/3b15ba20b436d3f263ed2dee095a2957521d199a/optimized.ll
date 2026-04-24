; ModuleID = '<stdin>'
source_filename = "/tmp/tmpqu_ydsxv.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"NO\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %z = alloca [1000 x i8], align 16
  %x = alloca [20 x i8], align 16
  %n = alloca i32, align 4
  %h = alloca [1000 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 1000, ptr nonnull %z) #8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %x) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #8
  call void @llvm.lifetime.start.p0(i64 4000, ptr nonnull %h) #8
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %z)
  %call3 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %z) #9
  %conv = trunc i64 %call3 to i32
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %sub = sub nsw i32 %conv, %0
  %cmp.not69 = icmp slt i32 %sub, 0
  br i1 %cmp.not69, label %if.then142, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %idxprom12 = sext i32 %0 to i64
  %arrayidx13 = getelementptr inbounds [20 x i8], ptr %x, i64 0, i64 %idxprom12
  %sext = shl i64 %call3, 32
  %1 = ashr exact i64 %sext, 32
  %2 = add i32 %conv, 1
  %3 = sub i32 %2, %0
  %wide.trip.count107 = zext i32 %3 to i64
  %cmp562 = icmp sgt i32 %0, 0
  %wide.trip.count = and i64 %call3, 4294967295
  br label %for.body

for.cond50.preheader.lr.ph:                       ; preds = %for.inc42
  %add52 = add nuw i32 %sub, 1
  %4 = add i32 %conv, 1
  %5 = sub i32 %4, %0
  %wide.trip.count117 = zext i32 %add52 to i64
  %wide.trip.count112 = zext i32 %5 to i64
  %min.iters.check153 = icmp ult i32 %3, 4
  %n.vec156 = and i64 %wide.trip.count107, 4294967292
  %cmp.n164 = icmp eq i64 %n.vec156, %wide.trip.count107
  br label %for.cond50.preheader

for.body:                                         ; preds = %for.body.lr.ph, %for.inc42
  %indvar = phi i64 [ 0, %for.body.lr.ph ], [ %8, %for.inc42 ]
  %6 = add i64 %indvar, %idxprom12
  %7 = add nuw i64 %indvar, 1
  %8 = add nuw nsw i64 %indvar, 1
  %arrayidx = getelementptr inbounds nuw [1000 x i32], ptr %h, i64 0, i64 %indvar
  store i32 0, ptr %arrayidx, align 4, !tbaa !5
  br i1 %cmp562, label %for.body6.preheader, label %for.end

for.body6.preheader:                              ; preds = %for.body
  %9 = trunc i64 %indvar to i32
  %10 = add i32 %0, %9
  %11 = trunc i64 %8 to i32
  %smax = call i32 @llvm.smax.i32(i32 %10, i32 %11)
  %12 = trunc i64 %indvar to i32
  %13 = xor i32 %12, -1
  %14 = add i32 %smax, %13
  %15 = zext i32 %14 to i64
  %16 = add nuw nsw i64 %15, 1
  %scevgep = getelementptr i8, ptr %z, i64 %indvar
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %x, ptr noundef nonnull align 1 dereferenceable(1) %scevgep, i64 %16, i1 false), !tbaa !9
  br label %for.end

for.end:                                          ; preds = %for.body6.preheader, %for.body
  store i8 0, ptr %arrayidx13, align 1, !tbaa !9
  %cmp1567 = icmp slt i64 %indvar, %1
  br i1 %cmp1567, label %for.cond17.preheader, label %for.inc42

for.cond17.preheader:                             ; preds = %for.end, %for.inc39
  %indvar149 = phi i64 [ %indvar.next, %for.inc39 ], [ 0, %for.end ]
  %17 = phi i32 [ %34, %for.inc39 ], [ 0, %for.end ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc39 ], [ %indvar, %for.end ]
  %18 = add i64 %6, %indvar149
  %19 = add i64 %7, %indvar149
  %smax150 = call i64 @llvm.smax.i64(i64 %18, i64 %19)
  %20 = add i64 %indvar, %indvar149
  %21 = sub i64 %smax150, %20
  %22 = add nsw i64 %indvars.iv, %idxprom12
  br i1 %cmp562, label %for.body20.preheader, label %for.end32

for.body20.preheader:                             ; preds = %for.cond17.preheader
  %min.iters.check = icmp ult i64 %21, 4
  br i1 %min.iters.check, label %for.body20.preheader196, label %vector.ph

vector.ph:                                        ; preds = %for.body20.preheader
  %n.vec = and i64 %21, -4
  %23 = add i64 %indvars.iv, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %28, %vector.body ]
  %offset.idx = add i64 %indvars.iv, %index
  %24 = getelementptr inbounds nuw [20 x i8], ptr %x, i64 0, i64 %index
  %wide.load = load <4 x i8>, ptr %24, align 4, !tbaa !9
  %25 = getelementptr inbounds nuw [1000 x i8], ptr %z, i64 0, i64 %offset.idx
  %wide.load151 = load <4 x i8>, ptr %25, align 1, !tbaa !9
  %26 = icmp eq <4 x i8> %wide.load, %wide.load151
  %27 = zext <4 x i1> %26 to <4 x i32>
  %28 = add <4 x i32> %vec.phi, %27
  %index.next = add nuw i64 %index, 4
  %29 = icmp eq i64 %index.next, %n.vec
  br i1 %29, label %middle.block, label %vector.body, !llvm.loop !10

middle.block:                                     ; preds = %vector.body
  %30 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %28)
  %cmp.n = icmp eq i64 %21, %n.vec
  br i1 %cmp.n, label %for.end32, label %for.body20.preheader196

for.body20.preheader196:                          ; preds = %for.body20.preheader, %middle.block
  %indvars.iv100.ph = phi i64 [ %indvars.iv, %for.body20.preheader ], [ %23, %middle.block ]
  %p.066.ph = phi i32 [ 0, %for.body20.preheader ], [ %30, %middle.block ]
  br label %for.body20

for.body20:                                       ; preds = %for.body20.preheader196, %for.body20
  %indvars.iv100 = phi i64 [ %indvars.iv.next101, %for.body20 ], [ %indvars.iv100.ph, %for.body20.preheader196 ]
  %p.066 = phi i32 [ %spec.select, %for.body20 ], [ %p.066.ph, %for.body20.preheader196 ]
  %31 = sub nuw nsw i64 %indvars.iv100, %indvars.iv
  %arrayidx23 = getelementptr inbounds nuw [20 x i8], ptr %x, i64 0, i64 %31
  %32 = load i8, ptr %arrayidx23, align 1, !tbaa !9
  %arrayidx26 = getelementptr inbounds nuw [1000 x i8], ptr %z, i64 0, i64 %indvars.iv100
  %33 = load i8, ptr %arrayidx26, align 1, !tbaa !9
  %cmp28 = icmp eq i8 %32, %33
  %inc29 = zext i1 %cmp28 to i32
  %spec.select = add nuw nsw i32 %p.066, %inc29
  %indvars.iv.next101 = add nuw nsw i64 %indvars.iv100, 1
  %cmp19 = icmp slt i64 %indvars.iv.next101, %22
  br i1 %cmp19, label %for.body20, label %for.end32, !llvm.loop !15

for.end32:                                        ; preds = %for.body20, %middle.block, %for.cond17.preheader
  %p.0.lcssa = phi i32 [ 0, %for.cond17.preheader ], [ %30, %middle.block ], [ %spec.select, %for.body20 ]
  %cmp33 = icmp eq i32 %p.0.lcssa, %0
  br i1 %cmp33, label %if.then34, label %for.inc39

if.then34:                                        ; preds = %for.end32
  %inc37 = add nsw i32 %17, 1
  store i32 %inc37, ptr %arrayidx, align 4, !tbaa !5
  br label %for.inc39

for.inc39:                                        ; preds = %for.end32, %if.then34
  %34 = phi i32 [ %17, %for.end32 ], [ %inc37, %if.then34 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  %indvar.next = add i64 %indvar149, 1
  br i1 %exitcond.not, label %for.inc42, label %for.cond17.preheader, !llvm.loop !16

for.inc42:                                        ; preds = %for.inc39, %for.end
  %exitcond108.not = icmp eq i64 %8, %wide.trip.count107
  br i1 %exitcond108.not, label %for.cond50.preheader.lr.ph, label %for.body, !llvm.loop !17

for.cond50.preheader:                             ; preds = %for.cond50.preheader.lr.ph, %for.inc84
  %indvars.iv114 = phi i64 [ 0, %for.cond50.preheader.lr.ph ], [ %indvars.iv.next115, %for.inc84 ]
  %arrayidx56 = getelementptr inbounds nuw [1000 x i32], ptr %h, i64 0, i64 %indvars.iv114
  %35 = load i32, ptr %arrayidx56, align 4, !tbaa !5
  br i1 %min.iters.check153, label %for.body54.preheader, label %vector.ph154

vector.ph154:                                     ; preds = %for.cond50.preheader
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %35, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body157

vector.body157:                                   ; preds = %vector.body157, %vector.ph154
  %index158 = phi i64 [ 0, %vector.ph154 ], [ %index.next162, %vector.body157 ]
  %vec.phi159 = phi <4 x i32> [ zeroinitializer, %vector.ph154 ], [ %42, %vector.body157 ]
  %vec.phi160 = phi <4 x i32> [ zeroinitializer, %vector.ph154 ], [ %39, %vector.body157 ]
  %36 = getelementptr inbounds nuw [1000 x i32], ptr %h, i64 0, i64 %index158
  %wide.load161 = load <4 x i32>, ptr %36, align 16, !tbaa !5
  %37 = icmp sge <4 x i32> %broadcast.splat, %wide.load161
  %38 = zext <4 x i1> %37 to <4 x i32>
  %39 = add <4 x i32> %vec.phi160, %38
  %40 = icmp sgt <4 x i32> %broadcast.splat, %wide.load161
  %41 = zext <4 x i1> %40 to <4 x i32>
  %42 = add <4 x i32> %vec.phi159, %41
  %index.next162 = add nuw i64 %index158, 4
  %43 = icmp eq i64 %index.next162, %n.vec156
  br i1 %43, label %middle.block163, label %vector.body157, !llvm.loop !18

middle.block163:                                  ; preds = %vector.body157
  %44 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %42)
  %45 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %39)
  br i1 %cmp.n164, label %for.cond50.for.end73_crit_edge, label %for.body54.preheader

for.body54.preheader:                             ; preds = %for.cond50.preheader, %middle.block163
  %indvars.iv109.ph = phi i64 [ 0, %for.cond50.preheader ], [ %n.vec156, %middle.block163 ]
  %dount.075.ph = phi i32 [ 0, %for.cond50.preheader ], [ %44, %middle.block163 ]
  %count.074.ph = phi i32 [ 0, %for.cond50.preheader ], [ %45, %middle.block163 ]
  br label %for.body54

for.body54:                                       ; preds = %for.body54.preheader, %for.body54
  %indvars.iv109 = phi i64 [ %indvars.iv.next110, %for.body54 ], [ %indvars.iv109.ph, %for.body54.preheader ]
  %dount.075 = phi i32 [ %dount.1, %for.body54 ], [ %dount.075.ph, %for.body54.preheader ]
  %count.074 = phi i32 [ %spec.select56, %for.body54 ], [ %count.074.ph, %for.body54.preheader ]
  %arrayidx58 = getelementptr inbounds nuw [1000 x i32], ptr %h, i64 0, i64 %indvars.iv109
  %46 = load i32, ptr %arrayidx58, align 4, !tbaa !5
  %cmp59.not = icmp sge i32 %35, %46
  %inc61 = zext i1 %cmp59.not to i32
  %spec.select56 = add nuw nsw i32 %count.074, %inc61
  %cmp67 = icmp sgt i32 %35, %46
  %inc69 = zext i1 %cmp67 to i32
  %dount.1 = add nuw nsw i32 %dount.075, %inc69
  %indvars.iv.next110 = add nuw nsw i64 %indvars.iv109, 1
  %exitcond113.not = icmp eq i64 %indvars.iv.next110, %wide.trip.count112
  br i1 %exitcond113.not, label %for.cond50.for.end73_crit_edge, label %for.body54, !llvm.loop !19

for.cond50.for.end73_crit_edge:                   ; preds = %for.body54, %middle.block163
  %spec.select56.lcssa = phi i32 [ %45, %middle.block163 ], [ %spec.select56, %for.body54 ]
  %dount.1.lcssa = phi i32 [ %44, %middle.block163 ], [ %dount.1, %for.body54 ]
  %cmp76 = icmp ne i32 %spec.select56.lcssa, %add52
  %cmp77 = icmp eq i32 %dount.1.lcssa, 0
  %or.cond.not = select i1 %cmp76, i1 true, i1 %cmp77
  br i1 %or.cond.not, label %for.inc84, label %if.then78

if.then78:                                        ; preds = %for.cond50.for.end73_crit_edge
  %idxprom79 = and i64 %indvars.iv114, 4294967295
  %arrayidx80 = getelementptr inbounds nuw [1000 x i32], ptr %h, i64 0, i64 %idxprom79
  %47 = load i32, ptr %arrayidx80, align 4, !tbaa !5
  %call81 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %47)
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  %.pre133 = sub nsw i32 %conv, %.pre
  br label %for.end86

for.inc84:                                        ; preds = %for.cond50.for.end73_crit_edge
  %indvars.iv.next115 = add nuw nsw i64 %indvars.iv114, 1
  %exitcond118.not = icmp eq i64 %indvars.iv.next115, %wide.trip.count117
  br i1 %exitcond118.not, label %for.end86, label %for.cond50.preheader, !llvm.loop !20

for.end86:                                        ; preds = %for.inc84, %if.then78
  %sub8892.pre-phi = phi i32 [ %.pre133, %if.then78 ], [ %sub, %for.inc84 ]
  %48 = phi i32 [ %.pre, %if.then78 ], [ %0, %for.inc84 ]
  %cmp90.not93 = icmp slt i32 %sub8892.pre-phi, 0
  br i1 %cmp90.not93, label %for.end140, label %for.cond92.preheader

for.cond92.preheader:                             ; preds = %for.end86, %for.inc138
  %49 = phi i32 [ %65, %for.inc138 ], [ %48, %for.end86 ]
  %indvar124 = phi i64 [ %indvar.next125, %for.inc138 ], [ 0, %for.end86 ]
  %sub8896 = phi i32 [ %sub88, %for.inc138 ], [ %sub8892.pre-phi, %for.end86 ]
  %scevgep126 = getelementptr i8, ptr %z, i64 %indvar124
  %cmp95.not84 = icmp slt i32 %sub8896, 0
  br i1 %cmp95.not84, label %for.inc138, label %for.body96.lr.ph

for.body96.lr.ph:                                 ; preds = %for.cond92.preheader
  %arrayidx98 = getelementptr inbounds nuw [1000 x i32], ptr %h, i64 0, i64 %indvar124
  %50 = load i32, ptr %arrayidx98, align 4, !tbaa !5
  %51 = add nuw i32 %sub8896, 1
  %wide.trip.count122 = zext i32 %51 to i64
  %min.iters.check169 = icmp ult i32 %sub8896, 3
  br i1 %min.iters.check169, label %for.body96.preheader, label %vector.ph170

vector.ph170:                                     ; preds = %for.body96.lr.ph
  %n.vec172 = and i64 %wide.trip.count122, 4294967292
  %broadcast.splatinsert173 = insertelement <4 x i32> poison, i32 %50, i64 0
  %broadcast.splat174 = shufflevector <4 x i32> %broadcast.splatinsert173, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body175

vector.body175:                                   ; preds = %vector.body175, %vector.ph170
  %index176 = phi i64 [ 0, %vector.ph170 ], [ %index.next180, %vector.body175 ]
  %vec.phi177 = phi <4 x i32> [ zeroinitializer, %vector.ph170 ], [ %58, %vector.body175 ]
  %vec.phi178 = phi <4 x i32> [ zeroinitializer, %vector.ph170 ], [ %55, %vector.body175 ]
  %52 = getelementptr inbounds nuw [1000 x i32], ptr %h, i64 0, i64 %index176
  %wide.load179 = load <4 x i32>, ptr %52, align 16, !tbaa !5
  %53 = icmp sge <4 x i32> %broadcast.splat174, %wide.load179
  %54 = zext <4 x i1> %53 to <4 x i32>
  %55 = add <4 x i32> %vec.phi178, %54
  %56 = icmp sgt <4 x i32> %broadcast.splat174, %wide.load179
  %57 = zext <4 x i1> %56 to <4 x i32>
  %58 = add <4 x i32> %vec.phi177, %57
  %index.next180 = add nuw i64 %index176, 4
  %59 = icmp eq i64 %index.next180, %n.vec172
  br i1 %59, label %middle.block181, label %vector.body175, !llvm.loop !21

middle.block181:                                  ; preds = %vector.body175
  %60 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %58)
  %61 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %55)
  %cmp.n182 = icmp eq i64 %n.vec172, %wide.trip.count122
  br i1 %cmp.n182, label %for.end115, label %for.body96.preheader

for.body96.preheader:                             ; preds = %for.body96.lr.ph, %middle.block181
  %indvars.iv119.ph = phi i64 [ 0, %for.body96.lr.ph ], [ %n.vec172, %middle.block181 ]
  %dount.287.ph = phi i32 [ 0, %for.body96.lr.ph ], [ %60, %middle.block181 ]
  %count.286.ph = phi i32 [ 0, %for.body96.lr.ph ], [ %61, %middle.block181 ]
  br label %for.body96

for.body96:                                       ; preds = %for.body96.preheader, %for.body96
  %indvars.iv119 = phi i64 [ %indvars.iv.next120, %for.body96 ], [ %indvars.iv119.ph, %for.body96.preheader ]
  %dount.287 = phi i32 [ %dount.3, %for.body96 ], [ %dount.287.ph, %for.body96.preheader ]
  %count.286 = phi i32 [ %spec.select57, %for.body96 ], [ %count.286.ph, %for.body96.preheader ]
  %arrayidx100 = getelementptr inbounds nuw [1000 x i32], ptr %h, i64 0, i64 %indvars.iv119
  %62 = load i32, ptr %arrayidx100, align 4, !tbaa !5
  %cmp101.not = icmp sge i32 %50, %62
  %inc103 = zext i1 %cmp101.not to i32
  %spec.select57 = add nuw nsw i32 %count.286, %inc103
  %cmp109 = icmp sgt i32 %50, %62
  %inc111 = zext i1 %cmp109 to i32
  %dount.3 = add nuw nsw i32 %dount.287, %inc111
  %indvars.iv.next120 = add nuw nsw i64 %indvars.iv119, 1
  %exitcond123.not = icmp eq i64 %indvars.iv.next120, %wide.trip.count122
  br i1 %exitcond123.not, label %for.end115, label %for.body96, !llvm.loop !22

for.end115:                                       ; preds = %for.body96, %middle.block181
  %spec.select57.lcssa = phi i32 [ %61, %middle.block181 ], [ %spec.select57, %for.body96 ]
  %dount.3.lcssa = phi i32 [ %60, %middle.block181 ], [ %dount.3, %for.body96 ]
  %63 = icmp ne i32 %dount.3.lcssa, 0
  %cmp120 = icmp eq i32 %spec.select57.lcssa, %51
  %or.cond58 = select i1 %63, i1 %cmp120, i1 false
  br i1 %or.cond58, label %for.cond122.preheader, label %for.inc138

for.cond122.preheader:                            ; preds = %for.end115
  %cmp12390 = icmp sgt i32 %49, 0
  br i1 %cmp12390, label %for.body124.preheader, label %for.end132

for.body124.preheader:                            ; preds = %for.cond122.preheader
  %64 = zext nneg i32 %49 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %x, ptr align 1 %scevgep126, i64 %64, i1 false), !tbaa !9
  br label %for.end132

for.end132:                                       ; preds = %for.body124.preheader, %for.cond122.preheader
  %idxprom133 = sext i32 %49 to i64
  %arrayidx134 = getelementptr inbounds [20 x i8], ptr %x, i64 0, i64 %idxprom133
  store i8 0, ptr %arrayidx134, align 1, !tbaa !9
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) %x)
  %.pre132 = load i32, ptr %n, align 4, !tbaa !5
  br label %for.inc138

for.inc138:                                       ; preds = %for.cond92.preheader, %for.end115, %for.end132
  %65 = phi i32 [ %49, %for.end115 ], [ %.pre132, %for.end132 ], [ %49, %for.cond92.preheader ]
  %indvar.next125 = add nuw nsw i64 %indvar124, 1
  %sub88 = sub nsw i32 %conv, %65
  %66 = sext i32 %sub88 to i64
  %cmp90.not.not = icmp slt i64 %indvar124, %66
  br i1 %cmp90.not.not, label %for.cond92.preheader, label %for.end140, !llvm.loop !23

for.end140:                                       ; preds = %for.inc138, %for.end86
  br i1 %or.cond.not, label %if.then142, label %if.end144

if.then142:                                       ; preds = %entry, %for.end140
  %call143 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4)
  br label %if.end144

if.end144:                                        ; preds = %if.then142, %for.end140
  call void @llvm.lifetime.end.p0(i64 4000, ptr nonnull %h) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %x) #8
  call void @llvm.lifetime.end.p0(i64 1000, ptr nonnull %z) #8
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #6

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nounwind }
attributes #9 = { nounwind willreturn memory(read) }

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
!9 = !{!7, !7, i64 0}
!10 = distinct !{!10, !11, !12, !13, !14}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = !{!"llvm.loop.isvectorized", i32 1}
!14 = !{!"llvm.loop.unroll.runtime.disable"}
!15 = distinct !{!15, !11, !12, !13}
!16 = distinct !{!16, !11, !12}
!17 = distinct !{!17, !11, !12}
!18 = distinct !{!18, !11, !12, !13, !14}
!19 = distinct !{!19, !11, !12, !13}
!20 = distinct !{!20, !11, !12}
!21 = distinct !{!21, !11, !12, !13, !14}
!22 = distinct !{!22, !11, !12, !13}
!23 = distinct !{!23, !11, !12}
