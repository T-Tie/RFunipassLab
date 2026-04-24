; ModuleID = '<stdin>'
source_filename = "/tmp/tmp4z9uxflz.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_Z3MinPii(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %a, i32 noundef %n) local_unnamed_addr #0 {
entry:
  %0 = load i32, ptr %a, align 4, !tbaa !5, !invariant.load !9
  %smax = call i32 @llvm.smax.i32(i32 noundef %n, i32 noundef 1)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 1, %entry ]
  %min.0 = phi i32 [ %spec.select, %for.body ], [ %0, %entry ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %arrayidx1 = getelementptr inbounds nuw i32, ptr %a, i64 %indvars.iv
  %1 = load i32, ptr %arrayidx1, align 4, !tbaa !5, !invariant.load !9
  %spec.select = tail call i32 @llvm.smin.i32(i32 %1, i32 %min.0)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  ret i32 %min.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 {
entry:
  %n = alloca i32, align 4
  %row = alloca [100 x [100 x i32]], align 16
  %col = alloca [100 x [100 x i32]], align 16
  %sum = alloca [100 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #6
  call void @llvm.lifetime.start.p0(i64 noundef 40000, ptr noundef nonnull align 16 dereferenceable(40000) %row) #6
  call void @llvm.lifetime.start.p0(i64 noundef 40000, ptr noundef nonnull align 16 dereferenceable(40000) %col) #6
  call void @llvm.lifetime.start.p0(i64 noundef 400, ptr noundef nonnull align 16 %sum) #6
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %sub = add i32 %0, -1
  %arrayidx112 = getelementptr inbounds nuw i8, ptr %row, i64 404
  %smax119 = call i32 @llvm.smax.i32(i32 %sub, i32 noundef 0)
  %smax124 = call i32 @llvm.smax.i32(i32 %0, i32 noundef 0)
  %wide.trip.count125 = zext nneg i32 %smax124 to i64
  %wide.trip.count59 = zext i32 %0 to i64
  br label %for.cond

for.cond:                                         ; preds = %for.inc174, %entry
  %indvars.iv121 = phi i64 [ %indvars.iv.next122, %for.inc174 ], [ 0, %entry ]
  %exitcond126.not = icmp eq i64 %indvars.iv121, %wide.trip.count125
  br i1 %exitcond126.not, label %for.cond177, label %for.cond1

for.cond1:                                        ; preds = %for.cond, %for.inc10
  %indvars.iv56 = phi i64 [ %indvars.iv.next57, %for.inc10 ], [ 0, %for.cond ]
  %exitcond60.not = icmp eq i64 %indvars.iv56, %wide.trip.count59
  br i1 %exitcond60.not, label %for.end12, label %for.cond4

for.cond4:                                        ; preds = %for.cond1, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.cond1 ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count59
  br i1 %exitcond.not, label %for.inc10, label %for.inc

for.inc:                                          ; preds = %for.cond4
  %arrayidx8 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %row, i64 0, i64 %indvars.iv56, i64 %indvars.iv
  %call9 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %arrayidx8)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond4, !llvm.loop !13

for.inc10:                                        ; preds = %for.cond4
  %indvars.iv.next57 = add nuw nsw i64 %indvars.iv56, 1
  br label %for.cond1, !llvm.loop !14

for.end12:                                        ; preds = %for.cond1
  %arrayidx14 = getelementptr inbounds nuw [100 x i32], ptr %sum, i64 0, i64 %indvars.iv121
  store i32 0, ptr %arrayidx14, align 4, !tbaa !5
  store i32 %0, ptr %n, align 4, !tbaa !5
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc171, %for.end12
  %indvars.iv109 = phi i32 [ %indvars.iv.next110, %for.inc171 ], [ %sub, %for.end12 ]
  %dec54 = phi i32 [ %dec, %for.inc171 ], [ %0, %for.end12 ]
  %j.0 = phi i32 [ %inc172, %for.inc171 ], [ 0, %for.end12 ]
  %smax116 = call i32 @llvm.smax.i32(i32 %indvars.iv109, i32 noundef 0)
  %exitcond120.not = icmp eq i32 %j.0, %smax119
  br i1 %exitcond120.not, label %for.inc174, label %for.cond18.preheader

for.cond18.preheader:                             ; preds = %for.cond15
  %smax101 = call i32 @llvm.smax.i32(i32 %dec54, i32 noundef 0)
  %smax.i = call i32 @llvm.smax.i32(i32 %dec54, i32 noundef 1)
  %wide.trip.count.i = zext nneg i32 %smax.i to i64
  %wide.trip.count69 = zext nneg i32 %smax101 to i64
  %wide.trip.count64 = zext i32 %dec54 to i64
  br label %for.cond18

for.cond18:                                       ; preds = %for.cond18.preheader, %for.inc40
  %indvars.iv66 = phi i64 [ 0, %for.cond18.preheader ], [ %indvars.iv.next67, %for.inc40 ]
  %exitcond70.not = icmp eq i64 %indvars.iv66, %wide.trip.count69
  br i1 %exitcond70.not, label %for.cond43.preheader, label %for.body20

for.cond43.preheader:                             ; preds = %for.cond18
  %wide.trip.count74 = zext i32 %dec54 to i64
  br label %for.cond43

for.body20:                                       ; preds = %for.cond18
  %arrayidx22 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %row, i64 0, i64 %indvars.iv66
  %1 = load i32, ptr %arrayidx22, align 4, !tbaa !5, !invariant.load !9
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i, %for.body20
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.body.i ], [ 1, %for.body20 ]
  %min.0.i = phi i32 [ %spec.select.i, %for.body.i ], [ %1, %for.body20 ]
  %exitcond.not.i = icmp eq i64 %indvars.iv.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_Z3MinPii.exit, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %arrayidx1.i = getelementptr inbounds nuw i32, ptr %arrayidx22, i64 %indvars.iv.i
  %2 = load i32, ptr %arrayidx1.i, align 4, !tbaa !5, !invariant.load !9
  %spec.select.i = call i32 @llvm.smin.i32(i32 %2, i32 %min.0.i)
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br label %for.cond.i, !llvm.loop !10

_Z3MinPii.exit:                                   ; preds = %for.cond.i
  %cmp24.not = icmp eq i32 %min.0.i, 0
  br i1 %cmp24.not, label %for.inc40, label %for.cond.i8

for.cond.i8:                                      ; preds = %_Z3MinPii.exit, %for.body.i12
  %indvars.iv.i9 = phi i64 [ %indvars.iv.next.i15, %for.body.i12 ], [ 1, %_Z3MinPii.exit ]
  %min.0.i10 = phi i32 [ %spec.select.i14, %for.body.i12 ], [ %1, %_Z3MinPii.exit ]
  %exitcond.not.i11 = icmp eq i64 %indvars.iv.i9, %wide.trip.count.i
  br i1 %exitcond.not.i11, label %for.cond29.preheader, label %for.body.i12

for.cond29.preheader:                             ; preds = %for.cond.i8
  br label %for.cond29

for.body.i12:                                     ; preds = %for.cond.i8
  %arrayidx1.i13 = getelementptr inbounds nuw i32, ptr %arrayidx22, i64 %indvars.iv.i9
  %3 = load i32, ptr %arrayidx1.i13, align 4, !tbaa !5, !invariant.load !9
  %spec.select.i14 = call i32 @llvm.smin.i32(i32 %3, i32 %min.0.i10)
  %indvars.iv.next.i15 = add nuw nsw i64 %indvars.iv.i9, 1
  br label %for.cond.i8, !llvm.loop !10

for.cond29:                                       ; preds = %for.cond29.preheader, %for.inc37
  %indvars.iv61 = phi i64 [ 0, %for.cond29.preheader ], [ %indvars.iv.next62, %for.inc37 ]
  %exitcond65.not = icmp eq i64 %indvars.iv61, %wide.trip.count64
  br i1 %exitcond65.not, label %for.inc40, label %for.inc37

for.inc37:                                        ; preds = %for.cond29
  %arrayidx35 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %row, i64 0, i64 %indvars.iv66, i64 %indvars.iv61
  %4 = load i32, ptr %arrayidx35, align 4, !tbaa !5, !invariant.load !9
  %sub36 = sub nsw i32 %4, %min.0.i10
  store i32 %sub36, ptr %arrayidx35, align 4, !tbaa !5
  %indvars.iv.next62 = add nuw nsw i64 %indvars.iv61, 1
  br label %for.cond29, !llvm.loop !15

for.inc40:                                        ; preds = %for.cond29, %_Z3MinPii.exit
  %indvars.iv.next67 = add nuw nsw i64 %indvars.iv66, 1
  br label %for.cond18, !llvm.loop !16

for.cond43:                                       ; preds = %for.cond43.preheader, %for.inc60
  %indvars.iv76 = phi i64 [ 0, %for.cond43.preheader ], [ %indvars.iv.next77, %for.inc60 ]
  %exitcond81.not = icmp eq i64 %indvars.iv76, %wide.trip.count69
  br i1 %exitcond81.not, label %for.cond63.preheader, label %for.cond46

for.cond63.preheader:                             ; preds = %for.cond43
  %wide.trip.count85 = zext i32 %dec54 to i64
  br label %for.cond63

for.cond46:                                       ; preds = %for.cond43, %for.inc57
  %indvars.iv71 = phi i64 [ %indvars.iv.next72, %for.inc57 ], [ 0, %for.cond43 ]
  %exitcond75.not = icmp eq i64 %indvars.iv71, %wide.trip.count74
  br i1 %exitcond75.not, label %for.inc60, label %for.inc57

for.inc57:                                        ; preds = %for.cond46
  %arrayidx52 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %row, i64 0, i64 %indvars.iv76, i64 %indvars.iv71
  %5 = load i32, ptr %arrayidx52, align 4, !tbaa !5, !invariant.load !9
  %arrayidx56 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %col, i64 0, i64 %indvars.iv71, i64 %indvars.iv76
  store i32 %5, ptr %arrayidx56, align 4, !tbaa !5
  %indvars.iv.next72 = add nuw nsw i64 %indvars.iv71, 1
  br label %for.cond46, !llvm.loop !17

for.inc60:                                        ; preds = %for.cond46
  %indvars.iv.next77 = add nuw nsw i64 %indvars.iv76, 1
  br label %for.cond43, !llvm.loop !18

for.cond63:                                       ; preds = %for.cond63.preheader, %for.inc88
  %indvars.iv87 = phi i64 [ 0, %for.cond63.preheader ], [ %indvars.iv.next88, %for.inc88 ]
  %exitcond92.not = icmp eq i64 %indvars.iv87, %wide.trip.count69
  br i1 %exitcond92.not, label %for.cond91.preheader, label %for.body65

for.cond91.preheader:                             ; preds = %for.cond63
  %wide.trip.count96 = zext i32 %dec54 to i64
  br label %for.cond91

for.body65:                                       ; preds = %for.cond63
  %arrayidx67 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %col, i64 0, i64 %indvars.iv87
  %6 = load i32, ptr %arrayidx67, align 4, !tbaa !5, !invariant.load !9
  br label %for.cond.i19

for.cond.i19:                                     ; preds = %for.body.i23, %for.body65
  %indvars.iv.i20 = phi i64 [ %indvars.iv.next.i26, %for.body.i23 ], [ 1, %for.body65 ]
  %min.0.i21 = phi i32 [ %spec.select.i25, %for.body.i23 ], [ %6, %for.body65 ]
  %exitcond.not.i22 = icmp eq i64 %indvars.iv.i20, %wide.trip.count.i
  br i1 %exitcond.not.i22, label %_Z3MinPii.exit27, label %for.body.i23

for.body.i23:                                     ; preds = %for.cond.i19
  %arrayidx1.i24 = getelementptr inbounds nuw i32, ptr %arrayidx67, i64 %indvars.iv.i20
  %7 = load i32, ptr %arrayidx1.i24, align 4, !tbaa !5, !invariant.load !9
  %spec.select.i25 = call i32 @llvm.smin.i32(i32 %7, i32 %min.0.i21)
  %indvars.iv.next.i26 = add nuw nsw i64 %indvars.iv.i20, 1
  br label %for.cond.i19, !llvm.loop !10

_Z3MinPii.exit27:                                 ; preds = %for.cond.i19
  %cmp70.not = icmp eq i32 %min.0.i21, 0
  br i1 %cmp70.not, label %for.inc88, label %for.cond.i30

for.cond.i30:                                     ; preds = %_Z3MinPii.exit27, %for.body.i34
  %indvars.iv.i31 = phi i64 [ %indvars.iv.next.i37, %for.body.i34 ], [ 1, %_Z3MinPii.exit27 ]
  %min.0.i32 = phi i32 [ %spec.select.i36, %for.body.i34 ], [ %6, %_Z3MinPii.exit27 ]
  %exitcond.not.i33 = icmp eq i64 %indvars.iv.i31, %wide.trip.count.i
  br i1 %exitcond.not.i33, label %for.cond76.preheader, label %for.body.i34

for.cond76.preheader:                             ; preds = %for.cond.i30
  br label %for.cond76

for.body.i34:                                     ; preds = %for.cond.i30
  %arrayidx1.i35 = getelementptr inbounds nuw i32, ptr %arrayidx67, i64 %indvars.iv.i31
  %8 = load i32, ptr %arrayidx1.i35, align 4, !tbaa !5, !invariant.load !9
  %spec.select.i36 = call i32 @llvm.smin.i32(i32 %8, i32 %min.0.i32)
  %indvars.iv.next.i37 = add nuw nsw i64 %indvars.iv.i31, 1
  br label %for.cond.i30, !llvm.loop !10

for.cond76:                                       ; preds = %for.cond76.preheader, %for.inc84
  %indvars.iv82 = phi i64 [ 0, %for.cond76.preheader ], [ %indvars.iv.next83, %for.inc84 ]
  %exitcond86.not = icmp eq i64 %indvars.iv82, %wide.trip.count85
  br i1 %exitcond86.not, label %for.inc88, label %for.inc84

for.inc84:                                        ; preds = %for.cond76
  %arrayidx82 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %col, i64 0, i64 %indvars.iv87, i64 %indvars.iv82
  %9 = load i32, ptr %arrayidx82, align 4, !tbaa !5, !invariant.load !9
  %sub83 = sub nsw i32 %9, %min.0.i32
  store i32 %sub83, ptr %arrayidx82, align 4, !tbaa !5
  %indvars.iv.next83 = add nuw nsw i64 %indvars.iv82, 1
  br label %for.cond76, !llvm.loop !19

for.inc88:                                        ; preds = %for.cond76, %_Z3MinPii.exit27
  %indvars.iv.next88 = add nuw nsw i64 %indvars.iv87, 1
  br label %for.cond63, !llvm.loop !20

for.cond91:                                       ; preds = %for.cond91.preheader, %for.inc108
  %indvars.iv98 = phi i64 [ 0, %for.cond91.preheader ], [ %indvars.iv.next99, %for.inc108 ]
  %exitcond103.not = icmp eq i64 %indvars.iv98, %wide.trip.count69
  br i1 %exitcond103.not, label %for.end110, label %for.cond94

for.cond94:                                       ; preds = %for.cond91, %for.inc105
  %indvars.iv93 = phi i64 [ %indvars.iv.next94, %for.inc105 ], [ 0, %for.cond91 ]
  %exitcond97.not = icmp eq i64 %indvars.iv93, %wide.trip.count96
  br i1 %exitcond97.not, label %for.inc108, label %for.inc105

for.inc105:                                       ; preds = %for.cond94
  %arrayidx100 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %col, i64 0, i64 %indvars.iv93, i64 %indvars.iv98
  %10 = load i32, ptr %arrayidx100, align 4, !tbaa !5, !invariant.load !9
  %arrayidx104 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %row, i64 0, i64 %indvars.iv98, i64 %indvars.iv93
  store i32 %10, ptr %arrayidx104, align 4, !tbaa !5
  %indvars.iv.next94 = add nuw nsw i64 %indvars.iv93, 1
  br label %for.cond94, !llvm.loop !21

for.inc108:                                       ; preds = %for.cond94
  %indvars.iv.next99 = add nuw nsw i64 %indvars.iv98, 1
  br label %for.cond91, !llvm.loop !22

for.end110:                                       ; preds = %for.cond91
  %11 = load i32, ptr %arrayidx112, align 4, !tbaa !5
  store i32 %11, ptr %arrayidx14, align 4, !tbaa !5
  %wide.trip.count117 = zext nneg i32 %smax116 to i64
  %wide.trip.count111 = zext i32 %indvars.iv109 to i64
  br label %for.cond115

for.cond115:                                      ; preds = %for.cond119, %for.end110
  %indvars.iv113 = phi i64 [ 0, %for.end110 ], [ %indvars.iv.next114, %for.cond119 ]
  %exitcond118.not = icmp eq i64 %indvars.iv113, %wide.trip.count117
  br i1 %exitcond118.not, label %for.inc171, label %for.cond119.preheader

for.cond119.preheader:                            ; preds = %for.cond115
  %cmp123 = icmp ne i64 %indvars.iv113, 0
  %cmp138 = icmp eq i64 %indvars.iv113, 0
  %indvars.iv.next114 = add nuw nsw i64 %indvars.iv113, 1
  %arrayidx130 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %row, i64 0, i64 %indvars.iv.next114, i64 0
  %arrayidx134 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %row, i64 0, i64 %indvars.iv113, i64 0
  br label %for.cond119

for.cond119:                                      ; preds = %for.cond119.preheader, %for.inc165
  %indvars.iv104 = phi i64 [ 0, %for.cond119.preheader ], [ %indvars.iv.next105, %for.inc165 ]
  %exitcond112.not = icmp eq i64 %indvars.iv104, %wide.trip.count111
  br i1 %exitcond112.not, label %for.cond115, label %for.body122, !llvm.loop !23

for.body122:                                      ; preds = %for.cond119
  %cmp124 = icmp eq i64 %indvars.iv104, 0
  %or.cond = and i1 %cmp123, %cmp124
  br i1 %or.cond, label %land.lhs.true151.thread, label %if.end135

land.lhs.true151.thread:                          ; preds = %for.body122
  %12 = load i32, ptr %arrayidx130, align 4, !tbaa !5, !invariant.load !9
  store i32 %12, ptr %arrayidx134, align 4, !tbaa !5
  br label %for.inc165

if.end135:                                        ; preds = %for.body122
  %cmp136 = icmp ne i64 %indvars.iv104, 0
  %or.cond52 = and i1 %cmp138, %cmp136
  br i1 %or.cond52, label %if.end149.thread, label %if.end149

if.end149.thread:                                 ; preds = %if.end135
  %13 = add nuw nsw i64 %indvars.iv104, 1
  %arrayidx144 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %row, i64 0, i64 0, i64 %13
  %14 = load i32, ptr %arrayidx144, align 4, !tbaa !5
  %arrayidx148 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %row, i64 0, i64 0, i64 %indvars.iv104
  store i32 %14, ptr %arrayidx148, align 4, !tbaa !5
  br label %for.inc165

if.end149:                                        ; preds = %if.end135
  %or.cond53 = and i1 %cmp123, %cmp136
  br i1 %or.cond53, label %if.then153, label %for.inc165

if.then153:                                       ; preds = %if.end149
  %15 = add nuw nsw i64 %indvars.iv104, 1
  %arrayidx159 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %row, i64 0, i64 %indvars.iv.next114, i64 %15
  %16 = load i32, ptr %arrayidx159, align 4, !tbaa !5
  %arrayidx163 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %row, i64 0, i64 %indvars.iv113, i64 %indvars.iv104
  store i32 %16, ptr %arrayidx163, align 4, !tbaa !5
  br label %for.inc165

for.inc165:                                       ; preds = %land.lhs.true151.thread, %if.end149, %if.then153, %if.end149.thread
  %indvars.iv.next105 = add nuw nsw i64 %indvars.iv104, 1
  br label %for.cond119, !llvm.loop !24

for.inc171:                                       ; preds = %for.cond115
  %dec = add nsw i32 %dec54, -1
  store i32 %dec, ptr %n, align 4, !tbaa !5
  %inc172 = add nuw i32 %j.0, 1
  %indvars.iv.next110 = add i32 %indvars.iv109, -1
  br label %for.cond15, !llvm.loop !25

for.inc174:                                       ; preds = %for.cond15
  %indvars.iv.next122 = add nuw nsw i64 %indvars.iv121, 1
  br label %for.cond, !llvm.loop !26

for.cond177:                                      ; preds = %for.cond, %for.inc183
  %indvars.iv127 = phi i64 [ %indvars.iv.next128, %for.inc183 ], [ 0, %for.cond ]
  %exitcond131.not = icmp eq i64 %indvars.iv127, %wide.trip.count125
  br i1 %exitcond131.not, label %for.end185, label %for.inc183

for.inc183:                                       ; preds = %for.cond177
  %arrayidx181 = getelementptr inbounds nuw [100 x i32], ptr %sum, i64 0, i64 %indvars.iv127
  %17 = load i32, ptr %arrayidx181, align 4, !tbaa !5, !invariant.load !9
  %call182 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %17) #7
  %indvars.iv.next128 = add nuw nsw i64 %indvars.iv127, 1
  br label %for.cond177, !llvm.loop !27

for.end185:                                       ; preds = %for.cond177
  call void @llvm.lifetime.end.p0(i64 noundef 400, ptr noundef nonnull %sum) #7
  call void @llvm.lifetime.end.p0(i64 noundef 40000, ptr noundef nonnull %col) #7
  call void @llvm.lifetime.end.p0(i64 noundef 40000, ptr noundef nonnull %row) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #7
  ret i32 0
}

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nofree nounwind }
attributes #7 = { nounwind }

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
!9 = !{}
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = distinct !{!13, !11, !12}
!14 = distinct !{!14, !11, !12}
!15 = distinct !{!15, !11, !12}
!16 = distinct !{!16, !11, !12}
!17 = distinct !{!17, !11, !12}
!18 = distinct !{!18, !11, !12}
!19 = distinct !{!19, !11, !12}
!20 = distinct !{!20, !11, !12}
!21 = distinct !{!21, !11, !12}
!22 = distinct !{!22, !11, !12}
!23 = distinct !{!23, !11, !12}
!24 = distinct !{!24, !11, !12}
!25 = distinct !{!25, !11, !12}
!26 = distinct !{!26, !11, !12}
!27 = distinct !{!27, !11, !12}
