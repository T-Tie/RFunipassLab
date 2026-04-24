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
  %smax117 = call i32 @llvm.smax.i32(i32 %sub, i32 noundef 0)
  %smax122 = call i32 @llvm.smax.i32(i32 %0, i32 noundef 0)
  %wide.trip.count123 = zext nneg i32 %smax122 to i64
  %wide.trip.count57 = zext i32 %0 to i64
  br label %for.cond

for.cond:                                         ; preds = %for.inc174, %entry
  %indvars.iv119 = phi i64 [ %indvars.iv.next120, %for.inc174 ], [ 0, %entry ]
  %exitcond124.not = icmp eq i64 %indvars.iv119, %wide.trip.count123
  br i1 %exitcond124.not, label %for.cond177, label %for.cond1

for.cond1:                                        ; preds = %for.cond, %for.inc10
  %indvars.iv54 = phi i64 [ %indvars.iv.next55, %for.inc10 ], [ 0, %for.cond ]
  %exitcond58.not = icmp eq i64 %indvars.iv54, %wide.trip.count57
  br i1 %exitcond58.not, label %for.end12, label %for.cond4

for.cond4:                                        ; preds = %for.cond1, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.cond1 ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count57
  br i1 %exitcond.not, label %for.inc10, label %for.inc

for.inc:                                          ; preds = %for.cond4
  %arrayidx8 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %row, i64 0, i64 %indvars.iv54, i64 %indvars.iv
  %call9 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %arrayidx8)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond4, !llvm.loop !13

for.inc10:                                        ; preds = %for.cond4
  %indvars.iv.next55 = add nuw nsw i64 %indvars.iv54, 1
  br label %for.cond1, !llvm.loop !14

for.end12:                                        ; preds = %for.cond1
  %arrayidx14 = getelementptr inbounds nuw [100 x i32], ptr %sum, i64 0, i64 %indvars.iv119
  store i32 0, ptr %arrayidx14, align 4, !tbaa !5
  store i32 %0, ptr %n, align 4, !tbaa !5
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc171, %for.end12
  %indvars.iv107 = phi i32 [ %indvars.iv.next108, %for.inc171 ], [ %sub, %for.end12 ]
  %dec52 = phi i32 [ %dec, %for.inc171 ], [ %0, %for.end12 ]
  %j.0 = phi i32 [ %inc172, %for.inc171 ], [ 0, %for.end12 ]
  %smax114 = call i32 @llvm.smax.i32(i32 %indvars.iv107, i32 noundef 0)
  %exitcond118.not = icmp eq i32 %j.0, %smax117
  br i1 %exitcond118.not, label %for.inc174, label %for.cond18.preheader

for.cond18.preheader:                             ; preds = %for.cond15
  %smax99 = call i32 @llvm.smax.i32(i32 %dec52, i32 noundef 0)
  %smax.i = call i32 @llvm.smax.i32(i32 %dec52, i32 noundef 1)
  %wide.trip.count.i = zext nneg i32 %smax.i to i64
  %wide.trip.count67 = zext nneg i32 %smax99 to i64
  %wide.trip.count62 = zext i32 %dec52 to i64
  br label %for.cond18

for.cond18:                                       ; preds = %for.cond18.preheader, %for.inc40
  %indvars.iv64 = phi i64 [ 0, %for.cond18.preheader ], [ %indvars.iv.next65, %for.inc40 ]
  %exitcond68.not = icmp eq i64 %indvars.iv64, %wide.trip.count67
  br i1 %exitcond68.not, label %for.cond43.preheader, label %for.body20

for.cond43.preheader:                             ; preds = %for.cond18
  %wide.trip.count72 = zext i32 %dec52 to i64
  br label %for.cond43

for.body20:                                       ; preds = %for.cond18
  %arrayidx22 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %row, i64 0, i64 %indvars.iv64
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
  br i1 %cmp24.not, label %for.inc40, label %for.cond.i6

for.cond.i6:                                      ; preds = %_Z3MinPii.exit, %for.body.i10
  %indvars.iv.i7 = phi i64 [ %indvars.iv.next.i13, %for.body.i10 ], [ 1, %_Z3MinPii.exit ]
  %min.0.i8 = phi i32 [ %spec.select.i12, %for.body.i10 ], [ %1, %_Z3MinPii.exit ]
  %exitcond.not.i9 = icmp eq i64 %indvars.iv.i7, %wide.trip.count.i
  br i1 %exitcond.not.i9, label %for.cond29.preheader, label %for.body.i10

for.cond29.preheader:                             ; preds = %for.cond.i6
  br label %for.cond29

for.body.i10:                                     ; preds = %for.cond.i6
  %arrayidx1.i11 = getelementptr inbounds nuw i32, ptr %arrayidx22, i64 %indvars.iv.i7
  %3 = load i32, ptr %arrayidx1.i11, align 4, !tbaa !5, !invariant.load !9
  %spec.select.i12 = call i32 @llvm.smin.i32(i32 %3, i32 %min.0.i8)
  %indvars.iv.next.i13 = add nuw nsw i64 %indvars.iv.i7, 1
  br label %for.cond.i6, !llvm.loop !10

for.cond29:                                       ; preds = %for.cond29.preheader, %for.inc37
  %indvars.iv59 = phi i64 [ 0, %for.cond29.preheader ], [ %indvars.iv.next60, %for.inc37 ]
  %exitcond63.not = icmp eq i64 %indvars.iv59, %wide.trip.count62
  br i1 %exitcond63.not, label %for.inc40, label %for.inc37

for.inc37:                                        ; preds = %for.cond29
  %arrayidx35 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %row, i64 0, i64 %indvars.iv64, i64 %indvars.iv59
  %4 = load i32, ptr %arrayidx35, align 4, !tbaa !5, !invariant.load !9
  %sub36 = sub nsw i32 %4, %min.0.i8
  store i32 %sub36, ptr %arrayidx35, align 4, !tbaa !5
  %indvars.iv.next60 = add nuw nsw i64 %indvars.iv59, 1
  br label %for.cond29, !llvm.loop !15

for.inc40:                                        ; preds = %for.cond29, %_Z3MinPii.exit
  %indvars.iv.next65 = add nuw nsw i64 %indvars.iv64, 1
  br label %for.cond18, !llvm.loop !16

for.cond43:                                       ; preds = %for.cond43.preheader, %for.inc60
  %indvars.iv74 = phi i64 [ 0, %for.cond43.preheader ], [ %indvars.iv.next75, %for.inc60 ]
  %exitcond79.not = icmp eq i64 %indvars.iv74, %wide.trip.count67
  br i1 %exitcond79.not, label %for.cond63.preheader, label %for.cond46

for.cond63.preheader:                             ; preds = %for.cond43
  %wide.trip.count83 = zext i32 %dec52 to i64
  br label %for.cond63

for.cond46:                                       ; preds = %for.cond43, %for.inc57
  %indvars.iv69 = phi i64 [ %indvars.iv.next70, %for.inc57 ], [ 0, %for.cond43 ]
  %exitcond73.not = icmp eq i64 %indvars.iv69, %wide.trip.count72
  br i1 %exitcond73.not, label %for.inc60, label %for.inc57

for.inc57:                                        ; preds = %for.cond46
  %arrayidx52 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %row, i64 0, i64 %indvars.iv74, i64 %indvars.iv69
  %5 = load i32, ptr %arrayidx52, align 4, !tbaa !5, !invariant.load !9
  %arrayidx56 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %col, i64 0, i64 %indvars.iv69, i64 %indvars.iv74
  store i32 %5, ptr %arrayidx56, align 4, !tbaa !5
  %indvars.iv.next70 = add nuw nsw i64 %indvars.iv69, 1
  br label %for.cond46, !llvm.loop !17

for.inc60:                                        ; preds = %for.cond46
  %indvars.iv.next75 = add nuw nsw i64 %indvars.iv74, 1
  br label %for.cond43, !llvm.loop !18

for.cond63:                                       ; preds = %for.cond63.preheader, %for.inc88
  %indvars.iv85 = phi i64 [ 0, %for.cond63.preheader ], [ %indvars.iv.next86, %for.inc88 ]
  %exitcond90.not = icmp eq i64 %indvars.iv85, %wide.trip.count67
  br i1 %exitcond90.not, label %for.cond91.preheader, label %for.body65

for.cond91.preheader:                             ; preds = %for.cond63
  %wide.trip.count94 = zext i32 %dec52 to i64
  br label %for.cond91

for.body65:                                       ; preds = %for.cond63
  %arrayidx67 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %col, i64 0, i64 %indvars.iv85
  %6 = load i32, ptr %arrayidx67, align 4, !tbaa !5, !invariant.load !9
  br label %for.cond.i17

for.cond.i17:                                     ; preds = %for.body.i21, %for.body65
  %indvars.iv.i18 = phi i64 [ %indvars.iv.next.i24, %for.body.i21 ], [ 1, %for.body65 ]
  %min.0.i19 = phi i32 [ %spec.select.i23, %for.body.i21 ], [ %6, %for.body65 ]
  %exitcond.not.i20 = icmp eq i64 %indvars.iv.i18, %wide.trip.count.i
  br i1 %exitcond.not.i20, label %_Z3MinPii.exit25, label %for.body.i21

for.body.i21:                                     ; preds = %for.cond.i17
  %arrayidx1.i22 = getelementptr inbounds nuw i32, ptr %arrayidx67, i64 %indvars.iv.i18
  %7 = load i32, ptr %arrayidx1.i22, align 4, !tbaa !5, !invariant.load !9
  %spec.select.i23 = call i32 @llvm.smin.i32(i32 %7, i32 %min.0.i19)
  %indvars.iv.next.i24 = add nuw nsw i64 %indvars.iv.i18, 1
  br label %for.cond.i17, !llvm.loop !10

_Z3MinPii.exit25:                                 ; preds = %for.cond.i17
  %cmp70.not = icmp eq i32 %min.0.i19, 0
  br i1 %cmp70.not, label %for.inc88, label %for.cond.i28

for.cond.i28:                                     ; preds = %_Z3MinPii.exit25, %for.body.i32
  %indvars.iv.i29 = phi i64 [ %indvars.iv.next.i35, %for.body.i32 ], [ 1, %_Z3MinPii.exit25 ]
  %min.0.i30 = phi i32 [ %spec.select.i34, %for.body.i32 ], [ %6, %_Z3MinPii.exit25 ]
  %exitcond.not.i31 = icmp eq i64 %indvars.iv.i29, %wide.trip.count.i
  br i1 %exitcond.not.i31, label %for.cond76.preheader, label %for.body.i32

for.cond76.preheader:                             ; preds = %for.cond.i28
  br label %for.cond76

for.body.i32:                                     ; preds = %for.cond.i28
  %arrayidx1.i33 = getelementptr inbounds nuw i32, ptr %arrayidx67, i64 %indvars.iv.i29
  %8 = load i32, ptr %arrayidx1.i33, align 4, !tbaa !5, !invariant.load !9
  %spec.select.i34 = call i32 @llvm.smin.i32(i32 %8, i32 %min.0.i30)
  %indvars.iv.next.i35 = add nuw nsw i64 %indvars.iv.i29, 1
  br label %for.cond.i28, !llvm.loop !10

for.cond76:                                       ; preds = %for.cond76.preheader, %for.inc84
  %indvars.iv80 = phi i64 [ 0, %for.cond76.preheader ], [ %indvars.iv.next81, %for.inc84 ]
  %exitcond84.not = icmp eq i64 %indvars.iv80, %wide.trip.count83
  br i1 %exitcond84.not, label %for.inc88, label %for.inc84

for.inc84:                                        ; preds = %for.cond76
  %arrayidx82 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %col, i64 0, i64 %indvars.iv85, i64 %indvars.iv80
  %9 = load i32, ptr %arrayidx82, align 4, !tbaa !5, !invariant.load !9
  %sub83 = sub nsw i32 %9, %min.0.i30
  store i32 %sub83, ptr %arrayidx82, align 4, !tbaa !5
  %indvars.iv.next81 = add nuw nsw i64 %indvars.iv80, 1
  br label %for.cond76, !llvm.loop !19

for.inc88:                                        ; preds = %for.cond76, %_Z3MinPii.exit25
  %indvars.iv.next86 = add nuw nsw i64 %indvars.iv85, 1
  br label %for.cond63, !llvm.loop !20

for.cond91:                                       ; preds = %for.cond91.preheader, %for.inc108
  %indvars.iv96 = phi i64 [ 0, %for.cond91.preheader ], [ %indvars.iv.next97, %for.inc108 ]
  %exitcond101.not = icmp eq i64 %indvars.iv96, %wide.trip.count67
  br i1 %exitcond101.not, label %for.end110, label %for.cond94

for.cond94:                                       ; preds = %for.cond91, %for.inc105
  %indvars.iv91 = phi i64 [ %indvars.iv.next92, %for.inc105 ], [ 0, %for.cond91 ]
  %exitcond95.not = icmp eq i64 %indvars.iv91, %wide.trip.count94
  br i1 %exitcond95.not, label %for.inc108, label %for.inc105

for.inc105:                                       ; preds = %for.cond94
  %arrayidx100 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %col, i64 0, i64 %indvars.iv91, i64 %indvars.iv96
  %10 = load i32, ptr %arrayidx100, align 4, !tbaa !5, !invariant.load !9
  %arrayidx104 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %row, i64 0, i64 %indvars.iv96, i64 %indvars.iv91
  store i32 %10, ptr %arrayidx104, align 4, !tbaa !5
  %indvars.iv.next92 = add nuw nsw i64 %indvars.iv91, 1
  br label %for.cond94, !llvm.loop !21

for.inc108:                                       ; preds = %for.cond94
  %indvars.iv.next97 = add nuw nsw i64 %indvars.iv96, 1
  br label %for.cond91, !llvm.loop !22

for.end110:                                       ; preds = %for.cond91
  %11 = load i32, ptr %arrayidx112, align 4, !tbaa !5
  store i32 %11, ptr %arrayidx14, align 4, !tbaa !5
  %wide.trip.count115 = zext nneg i32 %smax114 to i64
  %wide.trip.count109 = zext i32 %indvars.iv107 to i64
  br label %for.cond115

for.cond115:                                      ; preds = %for.cond119, %for.end110
  %indvars.iv111 = phi i64 [ 0, %for.end110 ], [ %indvars.iv.next112, %for.cond119 ]
  %exitcond116.not = icmp eq i64 %indvars.iv111, %wide.trip.count115
  br i1 %exitcond116.not, label %for.inc171, label %for.cond119.preheader

for.cond119.preheader:                            ; preds = %for.cond115
  %cmp123 = icmp ne i64 %indvars.iv111, 0
  %cmp138 = icmp eq i64 %indvars.iv111, 0
  %indvars.iv.next112 = add nuw nsw i64 %indvars.iv111, 1
  %arrayidx130 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %row, i64 0, i64 %indvars.iv.next112, i64 0
  %arrayidx134 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %row, i64 0, i64 %indvars.iv111, i64 0
  br label %for.cond119

for.cond119:                                      ; preds = %for.cond119.preheader, %for.inc165
  %indvars.iv102 = phi i64 [ 0, %for.cond119.preheader ], [ %indvars.iv.next103, %for.inc165 ]
  %exitcond110.not = icmp eq i64 %indvars.iv102, %wide.trip.count109
  br i1 %exitcond110.not, label %for.cond115, label %for.body122, !llvm.loop !23

for.body122:                                      ; preds = %for.cond119
  %cmp124 = icmp eq i64 %indvars.iv102, 0
  %or.cond = and i1 %cmp123, %cmp124
  br i1 %or.cond, label %land.lhs.true151.thread, label %if.end135

land.lhs.true151.thread:                          ; preds = %for.body122
  %12 = load i32, ptr %arrayidx130, align 4, !tbaa !5, !invariant.load !9
  store i32 %12, ptr %arrayidx134, align 4, !tbaa !5
  br label %for.inc165

if.end135:                                        ; preds = %for.body122
  %cmp136 = icmp ne i64 %indvars.iv102, 0
  %or.cond50 = and i1 %cmp138, %cmp136
  br i1 %or.cond50, label %if.end149.thread, label %if.end149

if.end149.thread:                                 ; preds = %if.end135
  %13 = add nuw nsw i64 %indvars.iv102, 1
  %arrayidx144 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %row, i64 0, i64 0, i64 %13
  %14 = load i32, ptr %arrayidx144, align 4, !tbaa !5
  %arrayidx148 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %row, i64 0, i64 0, i64 %indvars.iv102
  store i32 %14, ptr %arrayidx148, align 4, !tbaa !5
  br label %for.inc165

if.end149:                                        ; preds = %if.end135
  %or.cond51 = and i1 %cmp123, %cmp136
  br i1 %or.cond51, label %if.then153, label %for.inc165

if.then153:                                       ; preds = %if.end149
  %15 = add nuw nsw i64 %indvars.iv102, 1
  %arrayidx159 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %row, i64 0, i64 %indvars.iv.next112, i64 %15
  %16 = load i32, ptr %arrayidx159, align 4, !tbaa !5
  %arrayidx163 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %row, i64 0, i64 %indvars.iv111, i64 %indvars.iv102
  store i32 %16, ptr %arrayidx163, align 4, !tbaa !5
  br label %for.inc165

for.inc165:                                       ; preds = %land.lhs.true151.thread, %if.end149, %if.then153, %if.end149.thread
  %indvars.iv.next103 = add nuw nsw i64 %indvars.iv102, 1
  br label %for.cond119, !llvm.loop !24

for.inc171:                                       ; preds = %for.cond115
  %dec = add nsw i32 %dec52, -1
  store i32 %dec, ptr %n, align 4, !tbaa !5
  %inc172 = add nuw i32 %j.0, 1
  %indvars.iv.next108 = add i32 %indvars.iv107, -1
  br label %for.cond15, !llvm.loop !25

for.inc174:                                       ; preds = %for.cond15
  %indvars.iv.next120 = add nuw nsw i64 %indvars.iv119, 1
  br label %for.cond, !llvm.loop !26

for.cond177:                                      ; preds = %for.cond, %for.inc183
  %indvars.iv125 = phi i64 [ %indvars.iv.next126, %for.inc183 ], [ 0, %for.cond ]
  %exitcond129.not = icmp eq i64 %indvars.iv125, %wide.trip.count123
  br i1 %exitcond129.not, label %for.end185, label %for.inc183

for.inc183:                                       ; preds = %for.cond177
  %arrayidx181 = getelementptr inbounds nuw [100 x i32], ptr %sum, i64 0, i64 %indvars.iv125
  %17 = load i32, ptr %arrayidx181, align 4, !tbaa !5, !invariant.load !9
  %call182 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %17) #7
  %indvars.iv.next126 = add nuw nsw i64 %indvars.iv125, 1
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
