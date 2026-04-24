; ModuleID = '<stdin>'
source_filename = "/tmp/tmp4z9uxflz.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_Z3MinPii(ptr noundef readonly captures(none) %a, i32 noundef %n) local_unnamed_addr #0 {
entry:
  %0 = load i32, ptr %a, align 4, !tbaa !5
  %smax = tail call i32 @llvm.smax.i32(i32 %n, i32 1)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 1, %entry ]
  %min.0 = phi i32 [ %spec.select, %for.body ], [ %0, %entry ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %arrayidx1 = getelementptr inbounds nuw i32, ptr %a, i64 %indvars.iv
  %1 = load i32, ptr %arrayidx1, align 4, !tbaa !5
  %spec.select = tail call i32 @llvm.smin.i32(i32 %1, i32 %min.0)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #6
  call void @llvm.lifetime.start.p0(i64 40000, ptr nonnull %row) #6
  call void @llvm.lifetime.start.p0(i64 40000, ptr nonnull %col) #6
  call void @llvm.lifetime.start.p0(i64 400, ptr nonnull %sum) #6
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %sub = add i32 %0, -1
  %arrayidx112 = getelementptr inbounds nuw i8, ptr %row, i64 404
  %smax180 = call i32 @llvm.smax.i32(i32 %sub, i32 0)
  %smax185 = call i32 @llvm.smax.i32(i32 %0, i32 0)
  %wide.trip.count186 = zext nneg i32 %smax185 to i64
  %wide.trip.count120 = zext i32 %0 to i64
  br label %for.cond

for.cond:                                         ; preds = %for.inc174, %entry
  %indvars.iv182 = phi i64 [ %indvars.iv.next183, %for.inc174 ], [ 0, %entry ]
  %exitcond187.not = icmp eq i64 %indvars.iv182, %wide.trip.count186
  br i1 %exitcond187.not, label %for.cond177, label %for.cond1

for.cond1:                                        ; preds = %for.cond, %for.inc10
  %indvars.iv117 = phi i64 [ %indvars.iv.next118, %for.inc10 ], [ 0, %for.cond ]
  %exitcond121.not = icmp eq i64 %indvars.iv117, %wide.trip.count120
  br i1 %exitcond121.not, label %for.end12, label %for.cond4

for.cond4:                                        ; preds = %for.cond1, %for.body6
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body6 ], [ 0, %for.cond1 ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count120
  br i1 %exitcond.not, label %for.inc10, label %for.body6

for.body6:                                        ; preds = %for.cond4
  %arrayidx8 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %row, i64 0, i64 %indvars.iv117, i64 %indvars.iv
  %call9 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %arrayidx8)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond4, !llvm.loop !12

for.inc10:                                        ; preds = %for.cond4
  %indvars.iv.next118 = add nuw nsw i64 %indvars.iv117, 1
  br label %for.cond1, !llvm.loop !13

for.end12:                                        ; preds = %for.cond1
  %arrayidx14 = getelementptr inbounds nuw [100 x i32], ptr %sum, i64 0, i64 %indvars.iv182
  store i32 0, ptr %arrayidx14, align 4, !tbaa !5
  store i32 %0, ptr %n, align 4, !tbaa !5
  br label %for.cond15

for.cond15:                                       ; preds = %for.end170, %for.end12
  %1 = phi i32 [ %add, %for.end170 ], [ 0, %for.end12 ]
  %indvars.iv170 = phi i32 [ %indvars.iv.next171, %for.end170 ], [ %sub, %for.end12 ]
  %sub116115 = phi i32 [ %sub116, %for.end170 ], [ %0, %for.end12 ]
  %j.0 = phi i32 [ %inc172, %for.end170 ], [ 0, %for.end12 ]
  %smax177 = call i32 @llvm.smax.i32(i32 %indvars.iv170, i32 0)
  %exitcond181.not = icmp eq i32 %j.0, %smax180
  br i1 %exitcond181.not, label %for.inc174, label %for.cond18.preheader

for.cond18.preheader:                             ; preds = %for.cond15
  %smax162 = call i32 @llvm.smax.i32(i32 %sub116115, i32 0)
  %smax.i = call i32 @llvm.smax.i32(i32 %sub116115, i32 1)
  %wide.trip.count.i = zext nneg i32 %smax.i to i64
  %wide.trip.count130 = zext nneg i32 %smax162 to i64
  %wide.trip.count125 = zext i32 %sub116115 to i64
  br label %for.cond18

for.cond18:                                       ; preds = %for.cond18.preheader, %for.inc40
  %indvars.iv127 = phi i64 [ 0, %for.cond18.preheader ], [ %indvars.iv.next128, %for.inc40 ]
  %exitcond131.not = icmp eq i64 %indvars.iv127, %wide.trip.count130
  br i1 %exitcond131.not, label %for.cond43.preheader, label %for.body20

for.cond43.preheader:                             ; preds = %for.cond18
  %wide.trip.count135 = zext i32 %sub116115 to i64
  br label %for.cond43

for.body20:                                       ; preds = %for.cond18
  %arrayidx22 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %row, i64 0, i64 %indvars.iv127
  %2 = load i32, ptr %arrayidx22, align 16, !tbaa !5
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i, %for.body20
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.body.i ], [ 1, %for.body20 ]
  %min.0.i = phi i32 [ %spec.select.i, %for.body.i ], [ %2, %for.body20 ]
  %exitcond.not.i = icmp eq i64 %indvars.iv.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_Z3MinPii.exit, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %arrayidx1.i = getelementptr inbounds nuw i32, ptr %arrayidx22, i64 %indvars.iv.i
  %3 = load i32, ptr %arrayidx1.i, align 4, !tbaa !5
  %spec.select.i = call i32 @llvm.smin.i32(i32 %3, i32 %min.0.i)
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br label %for.cond.i, !llvm.loop !9

_Z3MinPii.exit:                                   ; preds = %for.cond.i
  %cmp24.not = icmp eq i32 %min.0.i, 0
  br i1 %cmp24.not, label %for.inc40, label %for.cond.i78

for.cond.i78:                                     ; preds = %_Z3MinPii.exit, %for.body.i82
  %indvars.iv.i79 = phi i64 [ %indvars.iv.next.i85, %for.body.i82 ], [ 1, %_Z3MinPii.exit ]
  %min.0.i80 = phi i32 [ %spec.select.i84, %for.body.i82 ], [ %2, %_Z3MinPii.exit ]
  %exitcond.not.i81 = icmp eq i64 %indvars.iv.i79, %wide.trip.count.i
  br i1 %exitcond.not.i81, label %for.cond29, label %for.body.i82

for.body.i82:                                     ; preds = %for.cond.i78
  %arrayidx1.i83 = getelementptr inbounds nuw i32, ptr %arrayidx22, i64 %indvars.iv.i79
  %4 = load i32, ptr %arrayidx1.i83, align 4, !tbaa !5
  %spec.select.i84 = call i32 @llvm.smin.i32(i32 %4, i32 %min.0.i80)
  %indvars.iv.next.i85 = add nuw nsw i64 %indvars.iv.i79, 1
  br label %for.cond.i78, !llvm.loop !9

for.cond29:                                       ; preds = %for.cond.i78, %for.body31
  %indvars.iv122 = phi i64 [ %indvars.iv.next123, %for.body31 ], [ 0, %for.cond.i78 ]
  %exitcond126.not = icmp eq i64 %indvars.iv122, %wide.trip.count125
  br i1 %exitcond126.not, label %for.inc40, label %for.body31

for.body31:                                       ; preds = %for.cond29
  %arrayidx35 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %row, i64 0, i64 %indvars.iv127, i64 %indvars.iv122
  %5 = load i32, ptr %arrayidx35, align 4, !tbaa !5
  %sub36 = sub nsw i32 %5, %min.0.i80
  store i32 %sub36, ptr %arrayidx35, align 4, !tbaa !5
  %indvars.iv.next123 = add nuw nsw i64 %indvars.iv122, 1
  br label %for.cond29, !llvm.loop !14

for.inc40:                                        ; preds = %for.cond29, %_Z3MinPii.exit
  %indvars.iv.next128 = add nuw nsw i64 %indvars.iv127, 1
  br label %for.cond18, !llvm.loop !15

for.cond43:                                       ; preds = %for.cond43.preheader, %for.inc60
  %indvars.iv137 = phi i64 [ 0, %for.cond43.preheader ], [ %indvars.iv.next138, %for.inc60 ]
  %exitcond142.not = icmp eq i64 %indvars.iv137, %wide.trip.count130
  br i1 %exitcond142.not, label %for.cond63.preheader, label %for.cond46

for.cond63.preheader:                             ; preds = %for.cond43
  %wide.trip.count146 = zext i32 %sub116115 to i64
  br label %for.cond63

for.cond46:                                       ; preds = %for.cond43, %for.body48
  %indvars.iv132 = phi i64 [ %indvars.iv.next133, %for.body48 ], [ 0, %for.cond43 ]
  %exitcond136.not = icmp eq i64 %indvars.iv132, %wide.trip.count135
  br i1 %exitcond136.not, label %for.inc60, label %for.body48

for.body48:                                       ; preds = %for.cond46
  %arrayidx52 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %row, i64 0, i64 %indvars.iv137, i64 %indvars.iv132
  %6 = load i32, ptr %arrayidx52, align 4, !tbaa !5
  %arrayidx56 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %col, i64 0, i64 %indvars.iv132, i64 %indvars.iv137
  store i32 %6, ptr %arrayidx56, align 4, !tbaa !5
  %indvars.iv.next133 = add nuw nsw i64 %indvars.iv132, 1
  br label %for.cond46, !llvm.loop !16

for.inc60:                                        ; preds = %for.cond46
  %indvars.iv.next138 = add nuw nsw i64 %indvars.iv137, 1
  br label %for.cond43, !llvm.loop !17

for.cond63:                                       ; preds = %for.cond63.preheader, %for.inc88
  %indvars.iv148 = phi i64 [ 0, %for.cond63.preheader ], [ %indvars.iv.next149, %for.inc88 ]
  %exitcond153.not = icmp eq i64 %indvars.iv148, %wide.trip.count130
  br i1 %exitcond153.not, label %for.cond91.preheader, label %for.body65

for.cond91.preheader:                             ; preds = %for.cond63
  %wide.trip.count157 = zext i32 %sub116115 to i64
  br label %for.cond91

for.body65:                                       ; preds = %for.cond63
  %arrayidx67 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %col, i64 0, i64 %indvars.iv148
  %7 = load i32, ptr %arrayidx67, align 16, !tbaa !5
  br label %for.cond.i89

for.cond.i89:                                     ; preds = %for.body.i93, %for.body65
  %indvars.iv.i90 = phi i64 [ %indvars.iv.next.i96, %for.body.i93 ], [ 1, %for.body65 ]
  %min.0.i91 = phi i32 [ %spec.select.i95, %for.body.i93 ], [ %7, %for.body65 ]
  %exitcond.not.i92 = icmp eq i64 %indvars.iv.i90, %wide.trip.count.i
  br i1 %exitcond.not.i92, label %_Z3MinPii.exit97, label %for.body.i93

for.body.i93:                                     ; preds = %for.cond.i89
  %arrayidx1.i94 = getelementptr inbounds nuw i32, ptr %arrayidx67, i64 %indvars.iv.i90
  %8 = load i32, ptr %arrayidx1.i94, align 4, !tbaa !5
  %spec.select.i95 = call i32 @llvm.smin.i32(i32 %8, i32 %min.0.i91)
  %indvars.iv.next.i96 = add nuw nsw i64 %indvars.iv.i90, 1
  br label %for.cond.i89, !llvm.loop !9

_Z3MinPii.exit97:                                 ; preds = %for.cond.i89
  %cmp70.not = icmp eq i32 %min.0.i91, 0
  br i1 %cmp70.not, label %for.inc88, label %for.cond.i100

for.cond.i100:                                    ; preds = %_Z3MinPii.exit97, %for.body.i104
  %indvars.iv.i101 = phi i64 [ %indvars.iv.next.i107, %for.body.i104 ], [ 1, %_Z3MinPii.exit97 ]
  %min.0.i102 = phi i32 [ %spec.select.i106, %for.body.i104 ], [ %7, %_Z3MinPii.exit97 ]
  %exitcond.not.i103 = icmp eq i64 %indvars.iv.i101, %wide.trip.count.i
  br i1 %exitcond.not.i103, label %for.cond76, label %for.body.i104

for.body.i104:                                    ; preds = %for.cond.i100
  %arrayidx1.i105 = getelementptr inbounds nuw i32, ptr %arrayidx67, i64 %indvars.iv.i101
  %9 = load i32, ptr %arrayidx1.i105, align 4, !tbaa !5
  %spec.select.i106 = call i32 @llvm.smin.i32(i32 %9, i32 %min.0.i102)
  %indvars.iv.next.i107 = add nuw nsw i64 %indvars.iv.i101, 1
  br label %for.cond.i100, !llvm.loop !9

for.cond76:                                       ; preds = %for.cond.i100, %for.body78
  %indvars.iv143 = phi i64 [ %indvars.iv.next144, %for.body78 ], [ 0, %for.cond.i100 ]
  %exitcond147.not = icmp eq i64 %indvars.iv143, %wide.trip.count146
  br i1 %exitcond147.not, label %for.inc88, label %for.body78

for.body78:                                       ; preds = %for.cond76
  %arrayidx82 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %col, i64 0, i64 %indvars.iv148, i64 %indvars.iv143
  %10 = load i32, ptr %arrayidx82, align 4, !tbaa !5
  %sub83 = sub nsw i32 %10, %min.0.i102
  store i32 %sub83, ptr %arrayidx82, align 4, !tbaa !5
  %indvars.iv.next144 = add nuw nsw i64 %indvars.iv143, 1
  br label %for.cond76, !llvm.loop !18

for.inc88:                                        ; preds = %for.cond76, %_Z3MinPii.exit97
  %indvars.iv.next149 = add nuw nsw i64 %indvars.iv148, 1
  br label %for.cond63, !llvm.loop !19

for.cond91:                                       ; preds = %for.cond91.preheader, %for.inc108
  %indvars.iv159 = phi i64 [ 0, %for.cond91.preheader ], [ %indvars.iv.next160, %for.inc108 ]
  %exitcond164.not = icmp eq i64 %indvars.iv159, %wide.trip.count130
  br i1 %exitcond164.not, label %for.end110, label %for.cond94

for.cond94:                                       ; preds = %for.cond91, %for.body96
  %indvars.iv154 = phi i64 [ %indvars.iv.next155, %for.body96 ], [ 0, %for.cond91 ]
  %exitcond158.not = icmp eq i64 %indvars.iv154, %wide.trip.count157
  br i1 %exitcond158.not, label %for.inc108, label %for.body96

for.body96:                                       ; preds = %for.cond94
  %arrayidx100 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %col, i64 0, i64 %indvars.iv154, i64 %indvars.iv159
  %11 = load i32, ptr %arrayidx100, align 4, !tbaa !5
  %arrayidx104 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %row, i64 0, i64 %indvars.iv159, i64 %indvars.iv154
  store i32 %11, ptr %arrayidx104, align 4, !tbaa !5
  %indvars.iv.next155 = add nuw nsw i64 %indvars.iv154, 1
  br label %for.cond94, !llvm.loop !20

for.inc108:                                       ; preds = %for.cond94
  %indvars.iv.next160 = add nuw nsw i64 %indvars.iv159, 1
  br label %for.cond91, !llvm.loop !21

for.end110:                                       ; preds = %for.cond91
  %12 = load i32, ptr %arrayidx112, align 4, !tbaa !5
  %add = add nsw i32 %1, %12
  store i32 %add, ptr %arrayidx14, align 4, !tbaa !5
  %wide.trip.count178 = zext nneg i32 %smax177 to i64
  %wide.trip.count172 = zext i32 %indvars.iv170 to i64
  br label %for.cond115

for.cond115:                                      ; preds = %for.cond119, %for.end110
  %indvars.iv174 = phi i64 [ 0, %for.end110 ], [ %indvars.iv.next175, %for.cond119 ]
  %exitcond179.not = icmp eq i64 %indvars.iv174, %wide.trip.count178
  br i1 %exitcond179.not, label %for.end170, label %for.cond119.preheader

for.cond119.preheader:                            ; preds = %for.cond115
  %cmp123 = icmp ne i64 %indvars.iv174, 0
  %cmp138 = icmp eq i64 %indvars.iv174, 0
  %indvars.iv.next175 = add nuw nsw i64 %indvars.iv174, 1
  %arrayidx128 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %row, i64 0, i64 %indvars.iv.next175
  %arrayidx132 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %row, i64 0, i64 %indvars.iv174
  br label %for.cond119

for.cond119:                                      ; preds = %for.cond119.backedge, %for.cond119.preheader
  %indvars.iv165 = phi i64 [ 0, %for.cond119.preheader ], [ %indvars.iv165.be, %for.cond119.backedge ]
  %exitcond173.not = icmp eq i64 %indvars.iv165, %wide.trip.count172
  br i1 %exitcond173.not, label %for.cond115, label %for.body122, !llvm.loop !22

for.body122:                                      ; preds = %for.cond119
  %cmp124 = icmp eq i64 %indvars.iv165, 0
  %or.cond = and i1 %cmp123, %cmp124
  br i1 %or.cond, label %if.end149.thread193, label %if.end135

if.end149.thread193:                              ; preds = %for.body122
  %13 = load i32, ptr %arrayidx128, align 16, !tbaa !5
  store i32 %13, ptr %arrayidx132, align 16, !tbaa !5
  br label %if.end149.for.inc165_crit_edge

if.end135:                                        ; preds = %for.body122
  %cmp136 = icmp ne i64 %indvars.iv165, 0
  %or.cond1 = and i1 %cmp138, %cmp136
  br i1 %or.cond1, label %if.end149.thread, label %if.end149

if.end149.thread:                                 ; preds = %if.end135
  %14 = add nuw nsw i64 %indvars.iv165, 1
  %arrayidx144 = getelementptr inbounds nuw [100 x i32], ptr %row, i64 0, i64 %14
  %15 = load i32, ptr %arrayidx144, align 4, !tbaa !5
  %arrayidx148 = getelementptr inbounds nuw [100 x i32], ptr %row, i64 0, i64 %indvars.iv165
  store i32 %15, ptr %arrayidx148, align 4, !tbaa !5
  br label %for.cond119.backedge

if.end149:                                        ; preds = %if.end135
  %or.cond2 = and i1 %cmp123, %cmp136
  br i1 %or.cond2, label %if.then153, label %if.end149.for.inc165_crit_edge

if.end149.for.inc165_crit_edge:                   ; preds = %if.end149.thread193, %if.end149
  %.pre = add nuw nsw i64 %indvars.iv165, 1
  br label %for.cond119.backedge

for.cond119.backedge:                             ; preds = %if.end149.for.inc165_crit_edge, %if.end149.thread, %if.then153
  %indvars.iv165.be = phi i64 [ %.pre, %if.end149.for.inc165_crit_edge ], [ %14, %if.end149.thread ], [ %16, %if.then153 ]
  br label %for.cond119, !llvm.loop !23

if.then153:                                       ; preds = %if.end149
  %16 = add nuw nsw i64 %indvars.iv165, 1
  %arrayidx159 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %row, i64 0, i64 %indvars.iv.next175, i64 %16
  %17 = load i32, ptr %arrayidx159, align 4, !tbaa !5
  %arrayidx163 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %row, i64 0, i64 %indvars.iv174, i64 %indvars.iv165
  store i32 %17, ptr %arrayidx163, align 4, !tbaa !5
  br label %for.cond119.backedge

for.end170:                                       ; preds = %for.cond115
  %sub116 = add nsw i32 %sub116115, -1
  store i32 %sub116, ptr %n, align 4, !tbaa !5
  %inc172 = add nuw i32 %j.0, 1
  %indvars.iv.next171 = add i32 %indvars.iv170, -1
  br label %for.cond15, !llvm.loop !24

for.inc174:                                       ; preds = %for.cond15
  %indvars.iv.next183 = add nuw nsw i64 %indvars.iv182, 1
  br label %for.cond, !llvm.loop !25

for.cond177:                                      ; preds = %for.cond, %for.body179
  %indvars.iv188 = phi i64 [ %indvars.iv.next189, %for.body179 ], [ 0, %for.cond ]
  %exitcond192.not = icmp eq i64 %indvars.iv188, %wide.trip.count186
  br i1 %exitcond192.not, label %for.end185, label %for.body179

for.body179:                                      ; preds = %for.cond177
  %arrayidx181 = getelementptr inbounds nuw [100 x i32], ptr %sum, i64 0, i64 %indvars.iv188
  %18 = load i32, ptr %arrayidx181, align 4, !tbaa !5
  %call182 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %18)
  %indvars.iv.next189 = add nuw nsw i64 %indvars.iv188, 1
  br label %for.cond177, !llvm.loop !26

for.end185:                                       ; preds = %for.cond177
  call void @llvm.lifetime.end.p0(i64 400, ptr nonnull %sum) #6
  call void @llvm.lifetime.end.p0(i64 40000, ptr nonnull %col) #6
  call void @llvm.lifetime.end.p0(i64 40000, ptr nonnull %row) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #6
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
