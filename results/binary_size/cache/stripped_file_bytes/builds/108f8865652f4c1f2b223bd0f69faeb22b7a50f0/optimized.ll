; ModuleID = '<stdin>'
source_filename = "/tmp/tmp2p90rhzx.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }

@a = dso_local global [100 x [100 x i32]] zeroinitializer, align 16
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local noundef i32 @_Z7findminiii(i32 noundef %c, i32 noundef %low, i32 noundef %n) local_unnamed_addr #0 {
entry:
  %switch = icmp eq i32 %c, 1
  %idxprom = sext i32 %low to i64
  %cmp218 = icmp sgt i32 %n, 0
  br i1 %switch, label %if.then, label %if.then15

if.then:                                          ; preds = %entry
  %arrayidx = getelementptr inbounds [100 x [100 x i32]], ptr @a, i64 0, i64 %idxprom
  %0 = load i32, ptr %arrayidx, align 16, !tbaa !5
  br i1 %cmp218, label %for.body.preheader, label %if.end36

for.body.preheader:                               ; preds = %if.then
  %wide.trip.count = zext nneg i32 %n to i64
  %min.iters.check36 = icmp ult i32 %n, 4
  br i1 %min.iters.check36, label %for.body.preheader50, label %vector.ph37

vector.ph37:                                      ; preds = %for.body.preheader
  %n.vec39 = and i64 %wide.trip.count, 2147483644
  %broadcast.splatinsert40 = insertelement <4 x i32> poison, i32 %0, i64 0
  %broadcast.splat41 = shufflevector <4 x i32> %broadcast.splatinsert40, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body42

vector.body42:                                    ; preds = %vector.body42, %vector.ph37
  %index43 = phi i64 [ 0, %vector.ph37 ], [ %index.next45, %vector.body42 ]
  %vec.phi44 = phi <4 x i32> [ %broadcast.splat41, %vector.ph37 ], [ %2, %vector.body42 ]
  %1 = getelementptr inbounds [100 x [100 x i32]], ptr @a, i64 0, i64 %idxprom, i64 %index43
  %wide.load = load <4 x i32>, ptr %1, align 16, !tbaa !5
  %2 = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.load, <4 x i32> %vec.phi44)
  %index.next45 = add nuw i64 %index43, 4
  %3 = icmp eq i64 %index.next45, %n.vec39
  br i1 %3, label %middle.block46, label %vector.body42, !llvm.loop !9

middle.block46:                                   ; preds = %vector.body42
  %4 = tail call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %2)
  %cmp.n47 = icmp eq i64 %n.vec39, %wide.trip.count
  br i1 %cmp.n47, label %if.end36, label %for.body.preheader50

for.body.preheader50:                             ; preds = %for.body.preheader, %middle.block46
  %indvars.iv.ph = phi i64 [ 0, %for.body.preheader ], [ %n.vec39, %middle.block46 ]
  %min.119.ph = phi i32 [ %0, %for.body.preheader ], [ %4, %middle.block46 ]
  br label %for.body

for.body:                                         ; preds = %for.body.preheader50, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ %indvars.iv.ph, %for.body.preheader50 ]
  %min.119 = phi i32 [ %spec.select, %for.body ], [ %min.119.ph, %for.body.preheader50 ]
  %arrayidx6 = getelementptr inbounds [100 x [100 x i32]], ptr @a, i64 0, i64 %idxprom, i64 %indvars.iv
  %5 = load i32, ptr %arrayidx6, align 4, !tbaa !5
  %spec.select = tail call i32 @llvm.smin.i32(i32 %5, i32 %min.119)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %if.end36, label %for.body, !llvm.loop !14

if.then15:                                        ; preds = %entry
  %arrayidx18 = getelementptr inbounds [100 x i32], ptr @a, i64 0, i64 %idxprom
  %6 = load i32, ptr %arrayidx18, align 4, !tbaa !5
  br i1 %cmp218, label %for.body21.preheader, label %if.end36

for.body21.preheader:                             ; preds = %if.then15
  %wide.trip.count29 = zext nneg i32 %n to i64
  %min.iters.check = icmp ult i32 %n, 4
  br i1 %min.iters.check, label %for.body21.preheader51, label %vector.ph

vector.ph:                                        ; preds = %for.body21.preheader
  %n.vec = and i64 %wide.trip.count29, 2147483644
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %6, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %22, %vector.body ]
  %7 = or disjoint i64 %index, 1
  %8 = or disjoint i64 %index, 2
  %9 = or disjoint i64 %index, 3
  %10 = getelementptr inbounds [100 x [100 x i32]], ptr @a, i64 0, i64 %index, i64 %idxprom
  %11 = getelementptr inbounds [100 x [100 x i32]], ptr @a, i64 0, i64 %7, i64 %idxprom
  %12 = getelementptr inbounds [100 x [100 x i32]], ptr @a, i64 0, i64 %8, i64 %idxprom
  %13 = getelementptr inbounds [100 x [100 x i32]], ptr @a, i64 0, i64 %9, i64 %idxprom
  %14 = load i32, ptr %10, align 4, !tbaa !5
  %15 = load i32, ptr %11, align 4, !tbaa !5
  %16 = load i32, ptr %12, align 4, !tbaa !5
  %17 = load i32, ptr %13, align 4, !tbaa !5
  %18 = insertelement <4 x i32> poison, i32 %14, i64 0
  %19 = insertelement <4 x i32> %18, i32 %15, i64 1
  %20 = insertelement <4 x i32> %19, i32 %16, i64 2
  %21 = insertelement <4 x i32> %20, i32 %17, i64 3
  %22 = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %21, <4 x i32> %vec.phi)
  %index.next = add nuw i64 %index, 4
  %23 = icmp eq i64 %index.next, %n.vec
  br i1 %23, label %middle.block, label %vector.body, !llvm.loop !15

middle.block:                                     ; preds = %vector.body
  %24 = tail call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %22)
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count29
  br i1 %cmp.n, label %if.end36, label %for.body21.preheader51

for.body21.preheader51:                           ; preds = %for.body21.preheader, %middle.block
  %indvars.iv26.ph = phi i64 [ 0, %for.body21.preheader ], [ %n.vec, %middle.block ]
  %min.422.ph = phi i32 [ %6, %for.body21.preheader ], [ %24, %middle.block ]
  br label %for.body21

for.body21:                                       ; preds = %for.body21.preheader51, %for.body21
  %indvars.iv26 = phi i64 [ %indvars.iv.next27, %for.body21 ], [ %indvars.iv26.ph, %for.body21.preheader51 ]
  %min.422 = phi i32 [ %spec.select17, %for.body21 ], [ %min.422.ph, %for.body21.preheader51 ]
  %arrayidx25 = getelementptr inbounds [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv26, i64 %idxprom
  %25 = load i32, ptr %arrayidx25, align 4, !tbaa !5
  %spec.select17 = tail call i32 @llvm.smin.i32(i32 %25, i32 %min.422)
  %indvars.iv.next27 = add nuw nsw i64 %indvars.iv26, 1
  %exitcond30.not = icmp eq i64 %indvars.iv.next27, %wide.trip.count29
  br i1 %exitcond30.not, label %if.end36, label %for.body21, !llvm.loop !16

if.end36:                                         ; preds = %for.body21, %for.body, %middle.block, %middle.block46, %if.then, %if.then15
  %min.3 = phi i32 [ %6, %if.then15 ], [ %0, %if.then ], [ %4, %middle.block46 ], [ %24, %middle.block ], [ %spec.select, %for.body ], [ %spec.select17, %for.body21 ]
  ret i32 %min.3
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local noundef i32 @_Z3decii(i32 noundef %n, i32 noundef %sum) local_unnamed_addr #2 {
entry:
  %cmp67 = icmp eq i32 %n, 1
  br i1 %cmp67, label %return, label %for.cond.preheader.preheader

for.cond.preheader.preheader:                     ; preds = %entry
  %0 = add i32 %n, -1
  %1 = zext i32 %0 to i64
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %for.cond.preheader.preheader, %for.end79
  %indvar = phi i64 [ 0, %for.cond.preheader.preheader ], [ %indvar.next, %for.end79 ]
  %indvars.iv112 = phi i64 [ %1, %for.cond.preheader.preheader ], [ %indvars.iv.next113, %for.end79 ]
  %sum.tr70 = phi i32 [ %sum, %for.cond.preheader.preheader ], [ %add116118, %for.end79 ]
  %n.tr68 = phi i32 [ %n, %for.cond.preheader.preheader ], [ %sub80, %for.end79 ]
  %2 = zext i32 %n.tr68 to i64
  %3 = zext i32 %n.tr68 to i64
  %4 = zext i32 %n.tr68 to i64
  %5 = xor i64 %indvar, -1
  %6 = add i64 %5, %1
  %cmp153 = icmp sgt i32 %n.tr68, 0
  br i1 %cmp153, label %for.body.lr.ph, label %for.end35.thread

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %wide.trip.count.i = zext nneg i32 %n.tr68 to i64
  %min.iters.check152 = icmp ult i32 %n.tr68, 4
  %n.vec155 = and i64 %2, 2147483644
  %cmp.n164 = icmp eq i64 %n.vec155, %2
  %min.iters.check138 = icmp ult i32 %n.tr68, 4
  %n.vec141 = and i64 %3, 2147483644
  %cmp.n149 = icmp eq i64 %n.vec141, %3
  br label %for.body

for.body16.lr.ph:                                 ; preds = %for.inc11
  %wide.trip.count29.i = zext nneg i32 %n.tr68 to i64
  %min.iters.check127 = icmp ult i32 %n.tr68, 4
  %n.vec130 = and i64 %4, 2147483644
  %cmp.n135 = icmp eq i64 %n.vec130, %4
  br label %for.body16

for.body:                                         ; preds = %for.body.lr.ph, %for.inc11
  %indvars.iv74 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next75, %for.inc11 ]
  %arrayidx.i = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv74
  %7 = load i32, ptr %arrayidx.i, align 16, !tbaa !5
  br i1 %min.iters.check152, label %for.body.i.preheader, label %vector.ph153

vector.ph153:                                     ; preds = %for.body
  %broadcast.splatinsert156 = insertelement <4 x i32> poison, i32 %7, i64 0
  %broadcast.splat157 = shufflevector <4 x i32> %broadcast.splatinsert156, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body158

vector.body158:                                   ; preds = %vector.body158, %vector.ph153
  %index159 = phi i64 [ 0, %vector.ph153 ], [ %index.next162, %vector.body158 ]
  %vec.phi160 = phi <4 x i32> [ %broadcast.splat157, %vector.ph153 ], [ %9, %vector.body158 ]
  %8 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv74, i64 %index159
  %wide.load161 = load <4 x i32>, ptr %8, align 16, !tbaa !5
  %9 = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.load161, <4 x i32> %vec.phi160)
  %index.next162 = add nuw i64 %index159, 4
  %10 = icmp eq i64 %index.next162, %n.vec155
  br i1 %10, label %middle.block163, label %vector.body158, !llvm.loop !17

middle.block163:                                  ; preds = %vector.body158
  %11 = tail call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %9)
  br i1 %cmp.n164, label %for.body4.lr.ph, label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %for.body, %middle.block163
  %indvars.iv.i.ph = phi i64 [ 0, %for.body ], [ %n.vec155, %middle.block163 ]
  %min.119.i.ph = phi i32 [ %7, %for.body ], [ %11, %middle.block163 ]
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.preheader, %for.body.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.body.i ], [ %indvars.iv.i.ph, %for.body.i.preheader ]
  %min.119.i = phi i32 [ %spec.select.i, %for.body.i ], [ %min.119.i.ph, %for.body.i.preheader ]
  %arrayidx6.i = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv74, i64 %indvars.iv.i
  %12 = load i32, ptr %arrayidx6.i, align 4, !tbaa !5
  %spec.select.i = tail call i32 @llvm.smin.i32(i32 %12, i32 %min.119.i)
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %for.body4.lr.ph, label %for.body.i, !llvm.loop !18

for.body4.lr.ph:                                  ; preds = %for.body.i, %middle.block163
  %spec.select.i.lcssa = phi i32 [ %11, %middle.block163 ], [ %spec.select.i, %for.body.i ]
  br i1 %min.iters.check138, label %for.body4.preheader, label %vector.ph139

vector.ph139:                                     ; preds = %for.body4.lr.ph
  %broadcast.splatinsert142 = insertelement <4 x i32> poison, i32 %spec.select.i.lcssa, i64 0
  %broadcast.splat143 = shufflevector <4 x i32> %broadcast.splatinsert142, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body144

vector.body144:                                   ; preds = %vector.body144, %vector.ph139
  %index145 = phi i64 [ 0, %vector.ph139 ], [ %index.next147, %vector.body144 ]
  %13 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv74, i64 %index145
  %wide.load146 = load <4 x i32>, ptr %13, align 16, !tbaa !5
  %14 = sub nsw <4 x i32> %wide.load146, %broadcast.splat143
  store <4 x i32> %14, ptr %13, align 16, !tbaa !5
  %index.next147 = add nuw i64 %index145, 4
  %15 = icmp eq i64 %index.next147, %n.vec141
  br i1 %15, label %middle.block148, label %vector.body144, !llvm.loop !19

middle.block148:                                  ; preds = %vector.body144
  br i1 %cmp.n149, label %for.inc11, label %for.body4.preheader

for.body4.preheader:                              ; preds = %for.body4.lr.ph, %middle.block148
  %indvars.iv.ph = phi i64 [ 0, %for.body4.lr.ph ], [ %n.vec141, %middle.block148 ]
  br label %for.body4

for.body4:                                        ; preds = %for.body4.preheader, %for.body4
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body4 ], [ %indvars.iv.ph, %for.body4.preheader ]
  %arrayidx6 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv74, i64 %indvars.iv
  %16 = load i32, ptr %arrayidx6, align 4, !tbaa !5
  %sub = sub nsw i32 %16, %spec.select.i.lcssa
  store i32 %sub, ptr %arrayidx6, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count.i
  br i1 %exitcond.not, label %for.inc11, label %for.body4, !llvm.loop !20

for.inc11:                                        ; preds = %for.body4, %middle.block148
  %indvars.iv.next75 = add nuw nsw i64 %indvars.iv74, 1
  %exitcond78.not = icmp eq i64 %indvars.iv.next75, %wide.trip.count.i
  br i1 %exitcond78.not, label %for.body16.lr.ph, label %for.body, !llvm.loop !21

for.body16:                                       ; preds = %for.body16.lr.ph, %for.inc33
  %indvars.iv84 = phi i64 [ 0, %for.body16.lr.ph ], [ %indvars.iv.next85, %for.inc33 ]
  %arrayidx18.i = getelementptr inbounds nuw [100 x i32], ptr @a, i64 0, i64 %indvars.iv84
  %17 = load i32, ptr %arrayidx18.i, align 4, !tbaa !5
  br i1 %min.iters.check127, label %for.body21.i.preheader, label %vector.ph128

vector.ph128:                                     ; preds = %for.body16
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %17, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body131

vector.body131:                                   ; preds = %vector.body131, %vector.ph128
  %index132 = phi i64 [ 0, %vector.ph128 ], [ %index.next133, %vector.body131 ]
  %vec.phi = phi <4 x i32> [ %broadcast.splat, %vector.ph128 ], [ %33, %vector.body131 ]
  %18 = or disjoint i64 %index132, 1
  %19 = or disjoint i64 %index132, 2
  %20 = or disjoint i64 %index132, 3
  %21 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %index132, i64 %indvars.iv84
  %22 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %18, i64 %indvars.iv84
  %23 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %19, i64 %indvars.iv84
  %24 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %20, i64 %indvars.iv84
  %25 = load i32, ptr %21, align 4, !tbaa !5
  %26 = load i32, ptr %22, align 4, !tbaa !5
  %27 = load i32, ptr %23, align 4, !tbaa !5
  %28 = load i32, ptr %24, align 4, !tbaa !5
  %29 = insertelement <4 x i32> poison, i32 %25, i64 0
  %30 = insertelement <4 x i32> %29, i32 %26, i64 1
  %31 = insertelement <4 x i32> %30, i32 %27, i64 2
  %32 = insertelement <4 x i32> %31, i32 %28, i64 3
  %33 = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %32, <4 x i32> %vec.phi)
  %index.next133 = add nuw i64 %index132, 4
  %34 = icmp eq i64 %index.next133, %n.vec130
  br i1 %34, label %middle.block134, label %vector.body131, !llvm.loop !22

middle.block134:                                  ; preds = %vector.body131
  %35 = tail call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %33)
  br i1 %cmp.n135, label %for.body20.lr.ph, label %for.body21.i.preheader

for.body21.i.preheader:                           ; preds = %for.body16, %middle.block134
  %indvars.iv26.i.ph = phi i64 [ 0, %for.body16 ], [ %n.vec130, %middle.block134 ]
  %min.422.i.ph = phi i32 [ %17, %for.body16 ], [ %35, %middle.block134 ]
  br label %for.body21.i

for.body21.i:                                     ; preds = %for.body21.i.preheader, %for.body21.i
  %indvars.iv26.i = phi i64 [ %indvars.iv.next27.i, %for.body21.i ], [ %indvars.iv26.i.ph, %for.body21.i.preheader ]
  %min.422.i = phi i32 [ %spec.select17.i, %for.body21.i ], [ %min.422.i.ph, %for.body21.i.preheader ]
  %arrayidx25.i = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv26.i, i64 %indvars.iv84
  %36 = load i32, ptr %arrayidx25.i, align 4, !tbaa !5
  %spec.select17.i = tail call i32 @llvm.smin.i32(i32 %36, i32 %min.422.i)
  %indvars.iv.next27.i = add nuw nsw i64 %indvars.iv26.i, 1
  %exitcond30.not.i = icmp eq i64 %indvars.iv.next27.i, %wide.trip.count29.i
  br i1 %exitcond30.not.i, label %for.body20.lr.ph, label %for.body21.i, !llvm.loop !23

for.body20.lr.ph:                                 ; preds = %for.body21.i, %middle.block134
  %spec.select17.i.lcssa = phi i32 [ %35, %middle.block134 ], [ %spec.select17.i, %for.body21.i ]
  br label %for.body20

for.body20:                                       ; preds = %for.body20.lr.ph, %for.body20
  %indvars.iv79 = phi i64 [ 0, %for.body20.lr.ph ], [ %indvars.iv.next80, %for.body20 ]
  %arrayidx24 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv79, i64 %indvars.iv84
  %37 = load i32, ptr %arrayidx24, align 4, !tbaa !5
  %sub25 = sub nsw i32 %37, %spec.select17.i.lcssa
  store i32 %sub25, ptr %arrayidx24, align 4, !tbaa !5
  %indvars.iv.next80 = add nuw nsw i64 %indvars.iv79, 1
  %exitcond83.not = icmp eq i64 %indvars.iv.next80, %wide.trip.count29.i
  br i1 %exitcond83.not, label %for.inc33, label %for.body20, !llvm.loop !24

for.inc33:                                        ; preds = %for.body20
  %indvars.iv.next85 = add nuw nsw i64 %indvars.iv84, 1
  %exitcond88.not = icmp eq i64 %indvars.iv.next85, %wide.trip.count29.i
  br i1 %exitcond88.not, label %for.end35, label %for.body16, !llvm.loop !25

for.end35.thread:                                 ; preds = %for.cond.preheader
  %38 = load i32, ptr getelementptr inbounds nuw (i8, ptr @a, i64 404), align 4, !tbaa !5
  br label %for.end79

for.end35:                                        ; preds = %for.inc33
  %39 = load i32, ptr getelementptr inbounds nuw (i8, ptr @a, i64 404), align 4, !tbaa !5
  %cmp4159 = icmp samesign ugt i32 %n.tr68, 2
  br i1 %cmp4159, label %for.cond39.preheader.us.preheader, label %for.end79

for.cond39.preheader.us.preheader:                ; preds = %for.end35
  %wide.trip.count99 = zext nneg i32 %n.tr68 to i64
  br label %for.cond39.preheader.us

for.cond39.preheader.us:                          ; preds = %for.cond39.preheader.us.preheader, %for.cond39.for.inc55_crit_edge.us
  %indvars.iv96 = phi i64 [ 0, %for.cond39.preheader.us.preheader ], [ %indvars.iv.next97, %for.cond39.for.inc55_crit_edge.us ]
  br label %for.body42.us

for.body42.us:                                    ; preds = %for.cond39.preheader.us, %for.body42.us
  %indvars.iv89 = phi i64 [ 1, %for.cond39.preheader.us ], [ %indvars.iv.next90, %for.body42.us ]
  %indvars.iv.next90 = add nuw nsw i64 %indvars.iv89, 1
  %arrayidx47.us = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv.next90, i64 %indvars.iv96
  %40 = load i32, ptr %arrayidx47.us, align 4, !tbaa !5
  %arrayidx51.us = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv89, i64 %indvars.iv96
  store i32 %40, ptr %arrayidx51.us, align 4, !tbaa !5
  %exitcond95.not = icmp eq i64 %indvars.iv.next90, %indvars.iv112
  br i1 %exitcond95.not, label %for.cond39.for.inc55_crit_edge.us, label %for.body42.us, !llvm.loop !26

for.cond39.for.inc55_crit_edge.us:                ; preds = %for.body42.us
  %indvars.iv.next97 = add nuw nsw i64 %indvars.iv96, 1
  %exitcond100.not = icmp eq i64 %indvars.iv.next97, %wide.trip.count99
  br i1 %exitcond100.not, label %for.cond61.preheader.us.preheader, label %for.cond39.preheader.us, !llvm.loop !27

for.cond61.preheader.us.preheader:                ; preds = %for.cond39.for.inc55_crit_edge.us
  %wide.trip.count110 = zext nneg i32 %n.tr68 to i64
  %min.iters.check = icmp ult i64 %6, 4
  %n.vec = and i64 %6, -4
  %41 = or disjoint i64 %n.vec, 1
  %cmp.n = icmp eq i64 %6, %n.vec
  br label %for.cond61.preheader.us

for.cond61.preheader.us:                          ; preds = %for.cond61.preheader.us.preheader, %for.cond61.for.inc77_crit_edge.us
  %indvars.iv107 = phi i64 [ 0, %for.cond61.preheader.us.preheader ], [ %indvars.iv.next108, %for.cond61.for.inc77_crit_edge.us ]
  br i1 %min.iters.check, label %for.body64.us.preheader, label %vector.body

vector.body:                                      ; preds = %for.cond61.preheader.us, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %for.cond61.preheader.us ]
  %offset.idx = or disjoint i64 %index, 1
  %42 = or disjoint i64 %index, 2
  %43 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv107, i64 %42
  %wide.load = load <4 x i32>, ptr %43, align 8, !tbaa !5
  %44 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv107, i64 %offset.idx
  store <4 x i32> %wide.load, ptr %44, align 4, !tbaa !5
  %index.next = add nuw i64 %index, 4
  %45 = icmp eq i64 %index.next, %n.vec
  br i1 %45, label %middle.block, label %vector.body, !llvm.loop !28

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %for.cond61.for.inc77_crit_edge.us, label %for.body64.us.preheader

for.body64.us.preheader:                          ; preds = %for.cond61.preheader.us, %middle.block
  %indvars.iv102.ph = phi i64 [ 1, %for.cond61.preheader.us ], [ %41, %middle.block ]
  br label %for.body64.us

for.body64.us:                                    ; preds = %for.body64.us.preheader, %for.body64.us
  %indvars.iv102 = phi i64 [ %indvars.iv.next103, %for.body64.us ], [ %indvars.iv102.ph, %for.body64.us.preheader ]
  %indvars.iv.next103 = add nuw nsw i64 %indvars.iv102, 1
  %arrayidx69.us = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv107, i64 %indvars.iv.next103
  %46 = load i32, ptr %arrayidx69.us, align 4, !tbaa !5
  %arrayidx73.us = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv107, i64 %indvars.iv102
  store i32 %46, ptr %arrayidx73.us, align 4, !tbaa !5
  %exitcond106.not = icmp eq i64 %indvars.iv.next103, %indvars.iv112
  br i1 %exitcond106.not, label %for.cond61.for.inc77_crit_edge.us, label %for.body64.us, !llvm.loop !29

for.cond61.for.inc77_crit_edge.us:                ; preds = %for.body64.us, %middle.block
  %indvars.iv.next108 = add nuw nsw i64 %indvars.iv107, 1
  %exitcond111.not = icmp eq i64 %indvars.iv.next108, %wide.trip.count110
  br i1 %exitcond111.not, label %for.end79, label %for.cond61.preheader.us, !llvm.loop !30

for.end79:                                        ; preds = %for.cond61.for.inc77_crit_edge.us, %for.end35, %for.end35.thread
  %.pn = phi i32 [ %39, %for.end35 ], [ %38, %for.end35.thread ], [ %39, %for.cond61.for.inc77_crit_edge.us ]
  %add116118 = add nsw i32 %.pn, %sum.tr70
  %sub80 = add nsw i32 %n.tr68, -1
  %cmp = icmp eq i32 %sub80, 1
  %indvars.iv.next113 = add nsw i64 %indvars.iv112, -1
  %indvar.next = add i64 %indvar, 1
  br i1 %cmp, label %return, label %for.cond.preheader

return:                                           ; preds = %for.end79, %entry
  %sum.tr.lcssa = phi i32 [ %sum, %entry ], [ %add116118, %for.end79 ]
  ret i32 %sum.tr.lcssa
}

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main(i32 noundef %argc, ptr noundef readnone captures(none) %argv) local_unnamed_addr #3 {
entry:
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #7
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp.not10 = icmp slt i32 %0, 1
  br i1 %cmp.not10, label %for.cond.cleanup, label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %entry, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %1 = phi i32 [ %10, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit ], [ %0, %entry ]
  %k.011 = phi i32 [ %inc17, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit ], [ 1, %entry ]
  %cmp28 = icmp sgt i32 %1, 0
  br i1 %cmp28, label %for.cond4.preheader, label %for.end12

for.cond.cleanup:                                 ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %entry
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #7
  ret i32 0

for.cond4.preheader:                              ; preds = %for.cond1.preheader, %for.inc10
  %2 = phi i32 [ %5, %for.inc10 ], [ %1, %for.cond1.preheader ]
  %indvars.iv15 = phi i64 [ %indvars.iv.next16, %for.inc10 ], [ 0, %for.cond1.preheader ]
  %cmp56 = icmp sgt i32 %2, 0
  br i1 %cmp56, label %for.body6, label %for.cond4.preheader.for.inc10_crit_edge

for.cond4.preheader.for.inc10_crit_edge:          ; preds = %for.cond4.preheader
  %.pre = sext i32 %2 to i64
  br label %for.inc10

for.body6:                                        ; preds = %for.cond4.preheader, %for.body6
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body6 ], [ 0, %for.cond4.preheader ]
  %arrayidx8 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv15, i64 %indvars.iv
  %call9 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx8)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %3 = load i32, ptr %n, align 4, !tbaa !5
  %4 = sext i32 %3 to i64
  %cmp5 = icmp slt i64 %indvars.iv.next, %4
  br i1 %cmp5, label %for.body6, label %for.inc10, !llvm.loop !31

for.inc10:                                        ; preds = %for.body6, %for.cond4.preheader.for.inc10_crit_edge
  %.pre-phi = phi i64 [ %.pre, %for.cond4.preheader.for.inc10_crit_edge ], [ %4, %for.body6 ]
  %5 = phi i32 [ %2, %for.cond4.preheader.for.inc10_crit_edge ], [ %3, %for.body6 ]
  %indvars.iv.next16 = add nuw nsw i64 %indvars.iv15, 1
  %cmp2 = icmp slt i64 %indvars.iv.next16, %.pre-phi
  br i1 %cmp2, label %for.cond4.preheader, label %for.end12, !llvm.loop !32

for.end12:                                        ; preds = %for.inc10, %for.cond1.preheader
  %.lcssa = phi i32 [ %1, %for.cond1.preheader ], [ %5, %for.inc10 ]
  %call13 = call noundef i32 @_Z3decii(i32 noundef %.lcssa, i32 noundef 0)
  %call14 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %call13)
  %vtable.i = load ptr, ptr %call14, align 8, !tbaa !34
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call14, i64 %vbase.offset.i
  %_M_ctype.i.i = getelementptr inbounds nuw i8, ptr %add.ptr.i, i64 240
  %6 = load ptr, ptr %_M_ctype.i.i, align 8, !tbaa !36
  %tobool.not.i.i.i = icmp eq ptr %6, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

if.then.i.i.i:                                    ; preds = %for.end12
  call void @_ZSt16__throw_bad_castv() #8
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %for.end12
  %_M_widen_ok.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 56
  %7 = load i8, ptr %_M_widen_ok.i.i.i, align 8, !tbaa !54
  %tobool.not.i1.i.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i1.i.i, label %if.end.i.i.i, label %if.then.i2.i.i

if.then.i2.i.i:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %arrayidx.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 67
  %8 = load i8, ptr %arrayidx.i.i.i, align 1, !tbaa !60
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

if.end.i.i.i:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %6)
  %vtable.i.i.i = load ptr, ptr %6, align 8, !tbaa !34
  %vfn.i.i.i = getelementptr inbounds nuw i8, ptr %vtable.i.i.i, i64 48
  %9 = load ptr, ptr %vfn.i.i.i, align 8
  %call.i.i.i = call noundef signext i8 %9(ptr noundef nonnull align 8 dereferenceable(570) %6, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %if.then.i2.i.i, %if.end.i.i.i
  %retval.0.i.i.i = phi i8 [ %8, %if.then.i2.i.i ], [ %call.i.i.i, %if.end.i.i.i ]
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call14, i8 noundef signext %retval.0.i.i.i)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  %inc17 = add nuw nsw i32 %k.011, 1
  %10 = load i32, ptr %n, align 4, !tbaa !5
  %cmp.not.not = icmp slt i32 %k.011, %10
  br i1 %cmp.not.not, label %for.cond1.preheader, label %for.cond.cleanup, !llvm.loop !61
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #5

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smin.v4i32(<4 x i32>, <4 x i32>) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smin.v4i32(<4 x i32>) #6

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
!9 = distinct !{!9, !10, !11, !12, !13}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = !{!"llvm.loop.isvectorized", i32 1}
!13 = !{!"llvm.loop.unroll.runtime.disable"}
!14 = distinct !{!14, !10, !11, !12}
!15 = distinct !{!15, !10, !11, !12, !13}
!16 = distinct !{!16, !10, !11, !12}
!17 = distinct !{!17, !10, !11, !12, !13}
!18 = distinct !{!18, !10, !11, !12}
!19 = distinct !{!19, !10, !11, !12, !13}
!20 = distinct !{!20, !10, !11, !12}
!21 = distinct !{!21, !10, !11}
!22 = distinct !{!22, !10, !11, !12, !13}
!23 = distinct !{!23, !10, !11, !12}
!24 = distinct !{!24, !10, !11}
!25 = distinct !{!25, !10, !11}
!26 = distinct !{!26, !10, !11}
!27 = distinct !{!27, !10, !11}
!28 = distinct !{!28, !10, !11, !12, !13}
!29 = distinct !{!29, !10, !11, !12}
!30 = distinct !{!30, !10, !11}
!31 = distinct !{!31, !10, !11}
!32 = distinct !{!32, !10, !11, !33}
!33 = !{!"llvm.loop.unswitch.partial.disable"}
!34 = !{!35, !35, i64 0}
!35 = !{!"vtable pointer", !8, i64 0}
!36 = !{!37, !51, i64 240}
!37 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !38, i64 0, !48, i64 216, !7, i64 224, !49, i64 225, !50, i64 232, !51, i64 240, !52, i64 248, !53, i64 256}
!38 = !{!"_ZTSSt8ios_base", !39, i64 8, !39, i64 16, !40, i64 24, !41, i64 28, !41, i64 32, !42, i64 40, !44, i64 48, !7, i64 64, !6, i64 192, !45, i64 200, !46, i64 208}
!39 = !{!"long", !7, i64 0}
!40 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!41 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!42 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !43, i64 0}
!43 = !{!"any pointer", !7, i64 0}
!44 = !{!"_ZTSNSt8ios_base6_WordsE", !43, i64 0, !39, i64 8}
!45 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !43, i64 0}
!46 = !{!"_ZTSSt6locale", !47, i64 0}
!47 = !{!"p1 _ZTSNSt6locale5_ImplE", !43, i64 0}
!48 = !{!"p1 _ZTSSo", !43, i64 0}
!49 = !{!"bool", !7, i64 0}
!50 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !43, i64 0}
!51 = !{!"p1 _ZTSSt5ctypeIcE", !43, i64 0}
!52 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !43, i64 0}
!53 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !43, i64 0}
!54 = !{!55, !7, i64 56}
!55 = !{!"_ZTSSt5ctypeIcE", !56, i64 0, !57, i64 16, !49, i64 24, !58, i64 32, !58, i64 40, !59, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!56 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!57 = !{!"p1 _ZTS15__locale_struct", !43, i64 0}
!58 = !{!"p1 int", !43, i64 0}
!59 = !{!"p1 short", !43, i64 0}
!60 = !{!7, !7, i64 0}
!61 = distinct !{!61, !10, !11}
