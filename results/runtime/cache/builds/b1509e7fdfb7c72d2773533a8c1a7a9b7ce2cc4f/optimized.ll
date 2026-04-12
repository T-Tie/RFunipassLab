; ModuleID = '<stdin>'
source_filename = "/tmp/tmpuhu4tefw.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"NO\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %a = alloca [500 x i8], align 16
  %b = alloca [501 x [6 x i8]], align 16
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 500, ptr noundef nonnull align 16 %a) #5
  call void @llvm.lifetime.start.p0(i64 noundef 3006, ptr noundef nonnull align 16 %b) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull writeonly align 16 dereferenceable(3006) %b, i8 noundef 0, i64 noundef 3006, i1 noundef false) #7
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %n)
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %a)
  %call3 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %a) #8
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 noundef 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.inc

for.inc:                                          ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [500 x i8], ptr %a, i64 0, i64 %indvars.iv
  %1 = load i8, ptr %arrayidx, align 1, !tbaa !9, !invariant.load !10
  %arrayidx6 = getelementptr inbounds nuw [6 x i8], ptr %b, i64 0, i64 %indvars.iv
  store i8 %1, ptr %arrayidx6, align 1, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !11

for.end:                                          ; preds = %for.cond
  %conv = trunc i64 %call3 to i32
  %arrayidx8 = getelementptr inbounds nuw i8, ptr %b, i64 4
  store i8 1, ptr %arrayidx8, align 4, !tbaa !9
  %arrayidx10 = getelementptr inbounds nuw i8, ptr %b, i64 5
  store i8 0, ptr %arrayidx10, align 1, !tbaa !9
  %sub = sub nsw i32 %conv, %0
  %smax103 = call i32 @llvm.smax.i32(i32 %sub, i32 noundef 0)
  %2 = add nuw i32 %smax103, 1
  %wide.trip.count104 = zext i32 %2 to i64
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc68, %for.end
  %indvars.iv100 = phi i64 [ %indvars.iv.next101, %for.inc68 ], [ 1, %for.end ]
  %l.0 = phi i32 [ %l.1, %for.inc68 ], [ 1, %for.end ]
  %exitcond105 = icmp eq i64 %indvars.iv100, %wide.trip.count104
  br i1 %exitcond105, label %for.cond71.preheader, label %for.cond14.preheader

for.cond14.preheader:                             ; preds = %for.cond11
  %smax91 = call i32 @llvm.smax.i32(i32 %l.0, i32 noundef 0)
  %wide.trip.count92 = zext nneg i32 %smax91 to i64
  br label %for.cond14

for.cond71.preheader:                             ; preds = %for.cond11
  %arrayidx96 = getelementptr inbounds nuw i8, ptr %b, i64 3000
  %3 = call i32 @llvm.smax.i32(i32 %l.0, i32 noundef 1)
  %smax118 = add nsw i32 %3, -1
  %wide.trip.count119 = zext nneg i32 %smax118 to i64
  %sext = sext i32 %l.0 to i64
  br label %for.cond71

for.cond14:                                       ; preds = %for.cond14.preheader, %for.inc41
  %indvars.iv88 = phi i64 [ 0, %for.cond14.preheader ], [ %indvars.iv.next89, %for.inc41 ]
  %y.0 = phi i32 [ 0, %for.cond14.preheader ], [ %y.1, %for.inc41 ]
  %exitcond93.not = icmp eq i64 %indvars.iv88, %wide.trip.count92
  br i1 %exitcond93.not, label %for.end43, label %for.cond17

for.cond17:                                       ; preds = %for.cond14, %for.body19
  %indvars.iv82 = phi i64 [ %indvars.iv.next83, %for.body19 ], [ 0, %for.cond14 ]
  %x.0 = phi i32 [ %spec.select, %for.body19 ], [ 0, %for.cond14 ]
  %exitcond87.not = icmp eq i64 %indvars.iv82, %wide.trip.count
  br i1 %exitcond87.not, label %for.end32, label %for.body19

for.body19:                                       ; preds = %for.cond17
  %4 = add nuw nsw i64 %indvars.iv82, %indvars.iv100
  %arrayidx21 = getelementptr inbounds nuw [500 x i8], ptr %a, i64 0, i64 %4
  %5 = load i8, ptr %arrayidx21, align 1, !tbaa !9, !invariant.load !10
  %arrayidx26 = getelementptr inbounds nuw [501 x [6 x i8]], ptr %b, i64 0, i64 %indvars.iv88, i64 %indvars.iv82
  %6 = load i8, ptr %arrayidx26, align 1, !tbaa !9, !invariant.load !10
  %cmp28.not = icmp ne i8 %5, %6
  %inc29 = zext i1 %cmp28.not to i32
  %spec.select = add nuw nsw i32 %x.0, %inc29
  %indvars.iv.next83 = add nuw nsw i64 %indvars.iv82, 1
  br label %for.cond17, !llvm.loop !14

for.end32:                                        ; preds = %for.cond17
  %cmp33 = icmp eq i32 %x.0, 0
  br i1 %cmp33, label %if.then34, label %for.inc41

if.then34:                                        ; preds = %for.end32
  %arrayidx37 = getelementptr inbounds nuw [501 x [6 x i8]], ptr %b, i64 0, i64 %indvars.iv88, i64 4
  %7 = load i8, ptr %arrayidx37, align 2, !tbaa !9, !invariant.load !10
  %inc38 = add i8 %7, 1
  store i8 %inc38, ptr %arrayidx37, align 2, !tbaa !9
  %inc39 = add nsw i32 %y.0, 1
  br label %for.inc41

for.inc41:                                        ; preds = %for.end32, %if.then34
  %y.1 = phi i32 [ %inc39, %if.then34 ], [ %y.0, %for.end32 ]
  %indvars.iv.next89 = add nuw nsw i64 %indvars.iv88, 1
  br label %for.cond14, !llvm.loop !15

for.end43:                                        ; preds = %for.cond14
  %cmp44 = icmp eq i32 %y.0, 0
  br i1 %cmp44, label %for.cond46.preheader, label %for.inc68

for.cond46.preheader:                             ; preds = %for.end43
  %idxprom52 = sext i32 %l.0 to i64
  br label %for.cond46

for.cond46:                                       ; preds = %for.cond46.preheader, %for.inc56
  %indvars.iv94 = phi i64 [ 0, %for.cond46.preheader ], [ %indvars.iv.next95, %for.inc56 ]
  %exitcond99.not = icmp eq i64 %indvars.iv94, %wide.trip.count
  br i1 %exitcond99.not, label %for.end58, label %for.inc56

for.inc56:                                        ; preds = %for.cond46
  %8 = add nuw nsw i64 %indvars.iv94, %indvars.iv100
  %arrayidx51 = getelementptr inbounds nuw [500 x i8], ptr %a, i64 0, i64 %8
  %9 = load i8, ptr %arrayidx51, align 1, !tbaa !9, !invariant.load !10
  %arrayidx55 = getelementptr inbounds [501 x [6 x i8]], ptr %b, i64 0, i64 %idxprom52, i64 %indvars.iv94
  store i8 %9, ptr %arrayidx55, align 1, !tbaa !9
  %indvars.iv.next95 = add nuw nsw i64 %indvars.iv94, 1
  br label %for.cond46, !llvm.loop !16

for.end58:                                        ; preds = %for.cond46
  %arrayidx60 = getelementptr inbounds [501 x [6 x i8]], ptr %b, i64 0, i64 %idxprom52
  %arrayidx61 = getelementptr inbounds nuw i8, ptr %arrayidx60, i64 4
  store i8 1, ptr %arrayidx61, align 2, !tbaa !9
  %conv62 = trunc i32 %l.0 to i8
  %arrayidx65 = getelementptr inbounds nuw i8, ptr %arrayidx60, i64 5
  store i8 %conv62, ptr %arrayidx65, align 1, !tbaa !9
  %inc66 = add nsw i32 %l.0, 1
  br label %for.inc68

for.inc68:                                        ; preds = %for.end43, %for.end58
  %l.1 = phi i32 [ %inc66, %for.end58 ], [ %l.0, %for.end43 ]
  %indvars.iv.next101 = add nuw nsw i64 %indvars.iv100, 1
  br label %for.cond11, !llvm.loop !17

for.cond71.loopexit:                              ; preds = %for.cond76
  %indvars.iv.next116 = add nuw nsw i64 %indvars.iv115, 1
  %indvars.iv.next111 = add nuw nsw i64 %indvars.iv110, 1
  br label %for.cond71, !llvm.loop !18

for.cond71:                                       ; preds = %for.cond71.loopexit, %for.cond71.preheader
  %indvars.iv115 = phi i64 [ %indvars.iv.next116, %for.cond71.loopexit ], [ 0, %for.cond71.preheader ]
  %indvars.iv110 = phi i64 [ %indvars.iv.next111, %for.cond71.loopexit ], [ 1, %for.cond71.preheader ]
  %exitcond120.not = icmp eq i64 %indvars.iv115, %wide.trip.count119
  br i1 %exitcond120.not, label %for.end123, label %for.body74

for.body74:                                       ; preds = %for.cond71
  %arrayidx85 = getelementptr inbounds nuw [501 x [6 x i8]], ptr %b, i64 0, i64 %indvars.iv115, i64 4
  br label %for.cond76

for.cond76:                                       ; preds = %for.inc118, %for.body74
  %indvars.iv112 = phi i64 [ %indvars.iv.next113, %for.inc118 ], [ %indvars.iv110, %for.body74 ]
  %10 = icmp slt i64 %indvars.iv112, %sext
  br i1 %10, label %for.body78, label %for.cond71.loopexit

for.body78:                                       ; preds = %for.cond76
  %arrayidx81 = getelementptr inbounds nuw [501 x [6 x i8]], ptr %b, i64 0, i64 %indvars.iv112, i64 4
  %11 = load i8, ptr %arrayidx81, align 2, !tbaa !9
  %12 = load i8, ptr %arrayidx85, align 2, !tbaa !9
  %cmp87 = icmp sgt i8 %11, %12
  br i1 %cmp87, label %for.cond89, label %for.inc118

for.cond89:                                       ; preds = %for.body78, %for.inc114
  %indvars.iv106 = phi i64 [ %indvars.iv.next107, %for.inc114 ], [ 0, %for.body78 ]
  %exitcond109.not = icmp eq i64 %indvars.iv106, 6
  br i1 %exitcond109.not, label %for.inc118, label %for.inc114

for.inc114:                                       ; preds = %for.cond89
  %arrayidx95 = getelementptr inbounds nuw [501 x [6 x i8]], ptr %b, i64 0, i64 %indvars.iv112, i64 %indvars.iv106
  %13 = load i8, ptr %arrayidx95, align 1, !tbaa !9
  %arrayidx98 = getelementptr inbounds nuw [6 x i8], ptr %arrayidx96, i64 0, i64 %indvars.iv106
  store i8 %13, ptr %arrayidx98, align 1, !tbaa !9
  %arrayidx102 = getelementptr inbounds nuw [501 x [6 x i8]], ptr %b, i64 0, i64 %indvars.iv115, i64 %indvars.iv106
  %14 = load i8, ptr %arrayidx102, align 1, !tbaa !9
  store i8 %14, ptr %arrayidx95, align 1, !tbaa !9
  %15 = load i8, ptr %arrayidx98, align 1, !tbaa !9
  store i8 %15, ptr %arrayidx102, align 1, !tbaa !9
  %indvars.iv.next107 = add nuw nsw i64 %indvars.iv106, 1
  br label %for.cond89, !llvm.loop !19

for.inc118:                                       ; preds = %for.cond89, %for.body78
  %indvars.iv.next113 = add nuw nsw i64 %indvars.iv112, 1
  br label %for.cond76, !llvm.loop !20

for.end123:                                       ; preds = %for.cond71
  %16 = load i8, ptr %arrayidx8, align 4, !tbaa !9
  %cmp127 = icmp eq i8 %16, 1
  br i1 %cmp127, label %if.then128, label %if.else

if.then128:                                       ; preds = %for.end123
  %call129 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2)
  br label %if.end226

if.else:                                          ; preds = %for.end123
  %conv126 = sext i8 %16 to i32
  %call133 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %conv126)
  %wide.trip.count129 = zext nneg i32 %3 to i64
  br label %for.cond134

for.cond134:                                      ; preds = %for.inc151, %if.else
  %indvars.iv121 = phi i64 [ %indvars.iv.next122, %for.inc151 ], [ 1, %if.else ]
  %exitcond130.not = icmp eq i64 %indvars.iv121, %wide.trip.count129
  br i1 %exitcond130.not, label %for.end153, label %for.body136

for.body136:                                      ; preds = %for.cond134
  %arrayidx139 = getelementptr inbounds nuw [501 x [6 x i8]], ptr %b, i64 0, i64 %indvars.iv121, i64 4
  %17 = load i8, ptr %arrayidx139, align 2, !tbaa !9
  %18 = add nsw i64 %indvars.iv121, -1
  %arrayidx144 = getelementptr inbounds [501 x [6 x i8]], ptr %b, i64 0, i64 %18, i64 4
  %19 = load i8, ptr %arrayidx144, align 2, !tbaa !9
  %cmp146 = icmp eq i8 %17, %19
  br i1 %cmp146, label %for.inc151, label %for.end153.split.loop.exit

for.inc151:                                       ; preds = %for.body136
  %indvars.iv.next122 = add nuw nsw i64 %indvars.iv121, 1
  br label %for.cond134, !llvm.loop !21

for.end153.split.loop.exit:                       ; preds = %for.body136
  %.pre = add nuw i64 %indvars.iv121, 4294967295
  %.pre159 = and i64 %.pre, 4294967295
  %.pre160 = and i64 %indvars.iv121, 4294967295
  br label %for.end153

for.end153:                                       ; preds = %for.cond134, %for.end153.split.loop.exit
  %wide.trip.count140.pre-phi = phi i64 [ %.pre160, %for.end153.split.loop.exit ], [ %wide.trip.count129, %for.cond134 ]
  %wide.trip.count145.pre-phi = phi i64 [ %.pre159, %for.end153.split.loop.exit ], [ %wide.trip.count119, %for.cond134 ]
  br label %for.cond154

for.cond154.loopexit:                             ; preds = %for.cond159
  %indvars.iv.next143 = add nuw nsw i64 %indvars.iv142, 1
  %indvars.iv.next136 = add nuw nsw i64 %indvars.iv135, 1
  br label %for.cond154, !llvm.loop !22

for.cond154:                                      ; preds = %for.cond154.loopexit, %for.end153
  %indvars.iv142 = phi i64 [ %indvars.iv.next143, %for.cond154.loopexit ], [ 0, %for.end153 ]
  %indvars.iv135 = phi i64 [ %indvars.iv.next136, %for.cond154.loopexit ], [ 1, %for.end153 ]
  %exitcond146.not = icmp eq i64 %indvars.iv142, %wide.trip.count145.pre-phi
  br i1 %exitcond146.not, label %for.cond207, label %for.body157

for.body157:                                      ; preds = %for.cond154
  %arrayidx168 = getelementptr inbounds nuw [501 x [6 x i8]], ptr %b, i64 0, i64 %indvars.iv142, i64 5
  br label %for.cond159

for.cond159:                                      ; preds = %for.inc201, %for.body157
  %indvars.iv137 = phi i64 [ %indvars.iv.next138, %for.inc201 ], [ %indvars.iv135, %for.body157 ]
  %exitcond141.not = icmp eq i64 %indvars.iv137, %wide.trip.count140.pre-phi
  br i1 %exitcond141.not, label %for.cond154.loopexit, label %for.body161

for.body161:                                      ; preds = %for.cond159
  %arrayidx164 = getelementptr inbounds nuw [501 x [6 x i8]], ptr %b, i64 0, i64 %indvars.iv137, i64 5
  %20 = load i8, ptr %arrayidx164, align 1, !tbaa !9
  %21 = load i8, ptr %arrayidx168, align 1, !tbaa !9
  %cmp170 = icmp slt i8 %20, %21
  br i1 %cmp170, label %for.cond172, label %for.inc201

for.cond172:                                      ; preds = %for.body161, %for.inc197
  %indvars.iv131 = phi i64 [ %indvars.iv.next132, %for.inc197 ], [ 0, %for.body161 ]
  %exitcond134.not = icmp eq i64 %indvars.iv131, 6
  br i1 %exitcond134.not, label %for.inc201, label %for.inc197

for.inc197:                                       ; preds = %for.cond172
  %arrayidx178 = getelementptr inbounds nuw [501 x [6 x i8]], ptr %b, i64 0, i64 %indvars.iv137, i64 %indvars.iv131
  %22 = load i8, ptr %arrayidx178, align 1, !tbaa !9
  %arrayidx181 = getelementptr inbounds nuw [6 x i8], ptr %arrayidx96, i64 0, i64 %indvars.iv131
  store i8 %22, ptr %arrayidx181, align 1, !tbaa !9
  %arrayidx185 = getelementptr inbounds nuw [501 x [6 x i8]], ptr %b, i64 0, i64 %indvars.iv142, i64 %indvars.iv131
  %23 = load i8, ptr %arrayidx185, align 1, !tbaa !9
  store i8 %23, ptr %arrayidx178, align 1, !tbaa !9
  %24 = load i8, ptr %arrayidx181, align 1, !tbaa !9
  store i8 %24, ptr %arrayidx185, align 1, !tbaa !9
  %indvars.iv.next132 = add nuw nsw i64 %indvars.iv131, 1
  br label %for.cond172, !llvm.loop !23

for.inc201:                                       ; preds = %for.cond172, %for.body161
  %indvars.iv.next138 = add nuw nsw i64 %indvars.iv137, 1
  br label %for.cond159, !llvm.loop !24

for.cond207:                                      ; preds = %for.cond154, %for.inc223
  %indvars.iv150 = phi i64 [ %indvars.iv.next151, %for.inc223 ], [ 0, %for.cond154 ]
  %exitcond154.not = icmp eq i64 %indvars.iv150, %wide.trip.count140.pre-phi
  br i1 %exitcond154.not, label %if.end226, label %for.body209

for.body209:                                      ; preds = %for.cond207
  %putchar = call i32 @putchar(i32 noundef 10) #9
  br label %for.cond211

for.cond211:                                      ; preds = %for.inc220, %for.body209
  %indvars.iv147 = phi i64 [ %indvars.iv.next148, %for.inc220 ], [ 0, %for.body209 ]
  %25 = load i32, ptr %n, align 4, !tbaa !5
  %26 = sext i32 %25 to i64
  %cmp212 = icmp slt i64 %indvars.iv147, %26
  br i1 %cmp212, label %for.inc220, label %for.inc223

for.inc220:                                       ; preds = %for.cond211
  %arrayidx217 = getelementptr inbounds nuw [501 x [6 x i8]], ptr %b, i64 0, i64 %indvars.iv150, i64 %indvars.iv147
  %27 = load i8, ptr %arrayidx217, align 1, !tbaa !9
  %conv218 = sext i8 %27 to i32
  %putchar80 = call i32 @putchar(i32 noundef %conv218) #9
  %indvars.iv.next148 = add nuw nsw i64 %indvars.iv147, 1
  br label %for.cond211, !llvm.loop !25

for.inc223:                                       ; preds = %for.cond211
  %indvars.iv.next151 = add nuw nsw i64 %indvars.iv150, 1
  br label %for.cond207, !llvm.loop !26

if.end226:                                        ; preds = %for.cond207, %if.then128
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #9
  call void @llvm.lifetime.end.p0(i64 noundef 3006, ptr noundef nonnull %b) #9
  call void @llvm.lifetime.end.p0(i64 noundef 500, ptr noundef nonnull %a) #9
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) local_unnamed_addr #4

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nofree }
attributes #8 = { nounwind willreturn memory(read) }
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
!9 = !{!7, !7, i64 0}
!10 = !{}
!11 = distinct !{!11, !12, !13}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"llvm.loop.unroll.disable"}
!14 = distinct !{!14, !12, !13}
!15 = distinct !{!15, !12, !13}
!16 = distinct !{!16, !12, !13}
!17 = distinct !{!17, !12, !13}
!18 = distinct !{!18, !12, !13}
!19 = distinct !{!19, !12, !13}
!20 = distinct !{!20, !12, !13}
!21 = distinct !{!21, !12, !13}
!22 = distinct !{!22, !12, !13}
!23 = distinct !{!23, !12, !13}
!24 = distinct !{!24, !12, !13}
!25 = distinct !{!25, !12, !13}
!26 = distinct !{!26, !12, !13}
