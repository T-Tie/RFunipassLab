; ModuleID = '<stdin>'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"_finfo_dataset\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"rt\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"\0AError: Can't find dataset!\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.13 = private unnamed_addr constant [26 x i8] c"Image %s not binary PGM.\0A\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"is\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.16 = private unnamed_addr constant [23 x i8] c"Can't input image %s.\0A\00", align 1
@.str.17 = private unnamed_addr constant [43 x i8] c"Image %s does not have binary PGM header.\0A\00", align 1
@.str.18 = private unnamed_addr constant [25 x i8] c"Image %s is wrong size.\0A\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.20 = private unnamed_addr constant [23 x i8] c"Can't output image%s.\0A\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"P5\0A\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"%d %d\0A\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"255\0A\00", align 1
@.str.24 = private unnamed_addr constant [23 x i8] c"Can't write image %s.\0A\00", align 1
@.str.25 = private unnamed_addr constant [54 x i8] c"Distance_thresh (%f) too big for integer arithmetic.\0A\00", align 1
@.str.28 = private unnamed_addr constant [65 x i8] c"Mask size (1.5*distance_thresh+1=%d) too big for image (%dx%d).\0A\00", align 1
@.str.29 = private unnamed_addr constant [19 x i8] c"Too many corners.\0A\00", align 1
@str = private unnamed_addr constant [43 x i8] c"Usage: susan <in.pgm> <out.pgm> [options]\0A\00", align 1
@str.1 = private unnamed_addr constant [30 x i8] c"-s : Smoothing mode (default)\00", align 1
@str.2 = private unnamed_addr constant [16 x i8] c"-e : Edges mode\00", align 1
@str.3 = private unnamed_addr constant [19 x i8] c"-c : Corners mode\0A\00", align 1
@str.4 = private unnamed_addr constant [66 x i8] c"See source code for more information about setting the thresholds\00", align 1
@str.5 = private unnamed_addr constant [59 x i8] c"-t <thresh> : Brightness threshold, all modes (default=20)\00", align 1
@str.6 = private unnamed_addr constant [106 x i8] c"-d <thresh> : Distance threshold, smoothing mode, (default=4) (use next option instead for flat 3x3 mask)\00", align 1
@str.7 = private unnamed_addr constant [48 x i8] c"-3 : Use flat 3x3 mask, edges or smoothing mode\00", align 1
@str.8 = private unnamed_addr constant [78 x i8] c"-n : No post-processing on the binary edge map (runs much faster); edges mode\00", align 1
@str.9 = private unnamed_addr constant [110 x i8] c"-q : Use faster (and usually stabler) corner mode; edge-like corner suppression not carried out; corners mode\00", align 1
@str.10 = private unnamed_addr constant [107 x i8] c"-b : Mark corners/edges with single black points instead of black with white border; corners or edges mode\00", align 1
@str.11 = private unnamed_addr constant [90 x i8] c"-p : Output initial enhancement image only; corners or edges mode (default is edges mode)\00", align 1
@str.12 = private unnamed_addr constant [76 x i8] c"\0ASUSAN Version 2l (C) 1995-1997 Stephen Smith, DRA UK. steve@fmrib.ox.ac.uk\00", align 1
@str.13 = private unnamed_addr constant [60 x i8] c"Either reduce it to <=15 or recompile with variable \22total\22\00", align 1
@str.14 = private unnamed_addr constant [39 x i8] c"as a float: see top \22defines\22 section.\00", align 1
@str.15 = private unnamed_addr constant [25 x i8] c"No argument following -t\00", align 1
@str.16 = private unnamed_addr constant [25 x i8] c"No argument following -d\00", align 1

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @main(i32 noundef %argc, ptr noundef readonly captures(none) %argv) local_unnamed_addr #0 {
entry:
  %loop_wrap2 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %loop_wrap2) #22
  %call = tail call noalias ptr @fopen(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1)
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr @stderr, align 8, !tbaa !5
  %1 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 28, i64 1, ptr %0) #23
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef nonnull %call, ptr noundef nonnull @.str.3, ptr noundef nonnull %loop_wrap2) #22
  %call3 = call i32 @fclose(ptr noundef nonnull %call)
  %2 = load i64, ptr %loop_wrap2, align 8, !tbaa !10
  %cmp43 = icmp sgt i64 %2, 0
  br i1 %cmp43, label %for.body, label %cleanup

for.body:                                         ; preds = %if.end, %for.body
  %loop_wrap1.04 = phi i64 [ %inc, %for.body ], [ 0, %if.end ]
  call void @main1(i32 noundef %argc, ptr noundef %argv)
  %inc = add nuw nsw i64 %loop_wrap1.04, 1
  %3 = load i64, ptr %loop_wrap2, align 8, !tbaa !10
  %cmp4 = icmp slt i64 %inc, %3
  br i1 %cmp4, label %for.body, label %cleanup, !llvm.loop !12

cleanup:                                          ; preds = %for.body, %if.end, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ 0, %if.end ], [ 0, %for.body ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %loop_wrap2) #22
  ret i32 %retval.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #2

declare i32 @__isoc99_fscanf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree noreturn nounwind uwtable
define dso_local void @usage() local_unnamed_addr #4 {
entry:
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %puts1 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  %puts2 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  %puts3 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.3)
  %puts4 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.4)
  %puts5 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.5)
  %puts6 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.6)
  %puts7 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.7)
  %puts8 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.8)
  %puts9 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.9)
  %puts10 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.10)
  %puts11 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.11)
  %puts12 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.12)
  tail call void @exit(i32 noundef 0) #24
  unreachable
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #2

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @getint(ptr noundef captures(none) %fd) local_unnamed_addr #6 {
entry:
  %dummy = alloca [10000 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 10000, ptr nonnull %dummy) #22
  %call = tail call i32 @getc(ptr noundef %fd)
  br label %while.cond

while.cond:                                       ; preds = %if.end9, %entry
  %c.0 = phi i32 [ %call, %entry ], [ %call10, %if.end9 ]
  switch i32 %c.0, label %if.end5 [
    i32 35, label %if.end5.thread
    i32 -1, label %if.then3
  ]

if.end5.thread:                                   ; preds = %while.cond
  %call1 = call ptr @fgets(ptr noundef nonnull %dummy, i32 noundef 9000, ptr noundef %fd)
  br label %if.end9

if.then3:                                         ; preds = %while.cond
  %0 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call4 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14) #25
  call void @exit(i32 noundef 0) #24
  unreachable

if.end5:                                          ; preds = %while.cond
  %1 = add i32 %c.0, -48
  %or.cond = icmp ult i32 %1, 10
  br i1 %or.cond, label %while.cond11, label %if.end9

if.end9:                                          ; preds = %if.end5.thread, %if.end5
  %call10 = call i32 @getc(ptr noundef %fd)
  br label %while.cond, !llvm.loop !14

while.cond11:                                     ; preds = %if.end5, %while.cond11
  %c.1 = phi i32 [ %call13, %while.cond11 ], [ %c.0, %if.end5 ]
  %i.0 = phi i32 [ %add, %while.cond11 ], [ 0, %if.end5 ]
  %mul = mul nsw i32 %i.0, 10
  %sub = add nsw i32 %c.1, -48
  %add = add nsw i32 %sub, %mul
  %call13 = call i32 @getc(ptr noundef %fd)
  %2 = add i32 %call13, -58
  %or.cond1 = icmp ult i32 %2, -10
  br i1 %or.cond1, label %cleanup, label %while.cond11, !llvm.loop !15

cleanup:                                          ; preds = %while.cond11
  call void @llvm.lifetime.end.p0(i64 10000, ptr nonnull %dummy) #22
  ret i32 %add
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef ptr @fgets(ptr noundef writeonly, i32 noundef, ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nofree nounwind uwtable
define dso_local void @get_image(ptr noundef %filename, ptr noundef writeonly captures(none) %in, ptr noundef captures(none) %x_size, ptr noundef captures(none) %y_size) local_unnamed_addr #6 {
entry:
  %call = tail call noalias ptr @fopen(ptr noundef %filename, ptr noundef nonnull @.str.15)
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call1 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.16, ptr noundef %filename) #25
  tail call void @exit(i32 noundef 0) #24
  unreachable

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @fgetc(ptr noundef nonnull %call)
  %call3 = tail call i32 @fgetc(ptr noundef nonnull %call)
  %sext.mask = and i32 %call2, 255
  %cmp8 = icmp eq i32 %sext.mask, 80
  %sext.mask15 = and i32 %call3, 255
  %cmp12 = icmp eq i32 %sext.mask15, 53
  %or.cond = and i1 %cmp8, %cmp12
  br i1 %or.cond, label %if.end16, label %if.then14

if.then14:                                        ; preds = %if.end
  %1 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call15 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.17, ptr noundef %filename) #25
  tail call void @exit(i32 noundef 0) #24
  unreachable

if.end16:                                         ; preds = %if.end
  %call17 = tail call i32 @getint(ptr noundef nonnull %call)
  store i32 %call17, ptr %x_size, align 4, !tbaa !16
  %call18 = tail call i32 @getint(ptr noundef nonnull %call)
  store i32 %call18, ptr %y_size, align 4, !tbaa !16
  %call19 = tail call i32 @getint(ptr noundef nonnull %call)
  %2 = load i32, ptr %x_size, align 4, !tbaa !16
  %3 = load i32, ptr %y_size, align 4, !tbaa !16
  %mul = mul nsw i32 %3, %2
  %conv20 = sext i32 %mul to i64
  %call21 = tail call noalias ptr @malloc(i64 noundef %conv20) #26
  store ptr %call21, ptr %in, align 8, !tbaa !18
  %call24 = tail call i64 @fread(ptr noundef %call21, i64 noundef 1, i64 noundef %conv20, ptr noundef nonnull %call)
  %cmp25 = icmp eq i64 %call24, 0
  br i1 %cmp25, label %if.then27, label %if.end29

if.then27:                                        ; preds = %if.end16
  %4 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call28 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.18, ptr noundef %filename) #25
  tail call void @exit(i32 noundef 0) #24
  unreachable

if.end29:                                         ; preds = %if.end16
  %call30 = tail call i32 @fclose(ptr noundef nonnull %call)
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fgetc(ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr noundef writeonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nofree nounwind uwtable
define dso_local void @put_image(ptr noundef %filename, ptr noundef readonly captures(none) %in, i32 noundef %x_size, i32 noundef %y_size) local_unnamed_addr #6 {
entry:
  %call = tail call noalias ptr @fopen(ptr noundef %filename, ptr noundef nonnull @.str.19)
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call1 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.20, ptr noundef %filename) #25
  tail call void @exit(i32 noundef 0) #24
  unreachable

if.end:                                           ; preds = %entry
  %1 = tail call i64 @fwrite(ptr nonnull @.str.21, i64 3, i64 1, ptr nonnull %call)
  %call3 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %call, ptr noundef nonnull @.str.22, i32 noundef %x_size, i32 noundef %y_size) #22
  %2 = tail call i64 @fwrite(ptr nonnull @.str.23, i64 4, i64 1, ptr nonnull %call)
  %mul = mul nsw i32 %y_size, %x_size
  %conv = sext i32 %mul to i64
  %call5 = tail call i64 @fwrite(ptr noundef %in, i64 noundef %conv, i64 noundef 1, ptr noundef nonnull %call)
  %cmp6.not = icmp eq i64 %call5, 1
  br i1 %cmp6.not, label %if.end10, label %if.then8

if.then8:                                         ; preds = %if.end
  %3 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @.str.24, ptr noundef %filename) #25
  tail call void @exit(i32 noundef 0) #24
  unreachable

if.end10:                                         ; preds = %if.end
  %call11 = tail call i32 @fclose(ptr noundef nonnull %call)
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @int_to_uchar(ptr noundef readonly captures(none) %r, ptr noundef writeonly captures(none) %in, i32 noundef %size) local_unnamed_addr #8 {
entry:
  %cmp22 = icmp sgt i32 %size, 0
  br i1 %cmp22, label %for.body.preheader, label %for.end23

for.body.preheader:                               ; preds = %entry
  %0 = load i32, ptr %r, align 4, !tbaa !16
  %wide.trip.count = zext nneg i32 %size to i64
  %min.iters.check = icmp ult i32 %size, 4
  br i1 %min.iters.check, label %for.body.preheader42, label %vector.ph

vector.ph:                                        ; preds = %for.body.preheader
  %n.vec = and i64 %wide.trip.count, 2147483644
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %0, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %3, %vector.body ]
  %vec.phi40 = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %2, %vector.body ]
  %1 = getelementptr inbounds nuw i32, ptr %r, i64 %index
  %wide.load = load <4 x i32>, ptr %1, align 4, !tbaa !16
  %2 = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load, <4 x i32> %vec.phi40)
  %3 = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.load, <4 x i32> %vec.phi)
  %index.next = add nuw i64 %index, 4
  %4 = icmp eq i64 %index.next, %n.vec
  br i1 %4, label %middle.block, label %vector.body, !llvm.loop !20

middle.block:                                     ; preds = %vector.body
  %5 = tail call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %3)
  %6 = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %2)
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %for.body15.preheader, label %for.body.preheader42

for.body.preheader42:                             ; preds = %for.body.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %for.body.preheader ], [ %n.vec, %middle.block ]
  %min_r.025.ph = phi i32 [ %0, %for.body.preheader ], [ %5, %middle.block ]
  %max_r.024.ph = phi i32 [ %0, %for.body.preheader ], [ %6, %middle.block ]
  br label %for.body

for.body:                                         ; preds = %for.body.preheader42, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ %indvars.iv.ph, %for.body.preheader42 ]
  %min_r.025 = phi i32 [ %min_r.1, %for.body ], [ %min_r.025.ph, %for.body.preheader42 ]
  %max_r.024 = phi i32 [ %spec.select, %for.body ], [ %max_r.024.ph, %for.body.preheader42 ]
  %arrayidx2 = getelementptr inbounds nuw i32, ptr %r, i64 %indvars.iv
  %7 = load i32, ptr %arrayidx2, align 4, !tbaa !16
  %spec.select = tail call i32 @llvm.smax.i32(i32 %7, i32 %max_r.024)
  %min_r.1 = tail call i32 @llvm.smin.i32(i32 %7, i32 %min_r.025)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.body15.preheader, label %for.body, !llvm.loop !23

for.body15.preheader:                             ; preds = %for.body, %middle.block
  %spec.select.lcssa = phi i32 [ %6, %middle.block ], [ %spec.select, %for.body ]
  %min_r.1.lcssa = phi i32 [ %5, %middle.block ], [ %min_r.1, %for.body ]
  %sub37 = sub nsw i32 %spec.select.lcssa, %min_r.1.lcssa
  %wide.trip.count33 = zext nneg i32 %size to i64
  br label %for.body15

for.body15:                                       ; preds = %for.body15.preheader, %for.body15
  %indvars.iv30 = phi i64 [ 0, %for.body15.preheader ], [ %indvars.iv.next31, %for.body15 ]
  %arrayidx17 = getelementptr inbounds nuw i32, ptr %r, i64 %indvars.iv30
  %8 = load i32, ptr %arrayidx17, align 4, !tbaa !16
  %sub18 = sub nsw i32 %8, %min_r.1.lcssa
  %mul = mul nsw i32 %sub18, 255
  %div = sdiv i32 %mul, %sub37
  %conv = trunc i32 %div to i8
  %arrayidx20 = getelementptr inbounds nuw i8, ptr %in, i64 %indvars.iv30
  store i8 %conv, ptr %arrayidx20, align 1, !tbaa !24
  %indvars.iv.next31 = add nuw nsw i64 %indvars.iv30, 1
  %exitcond34.not = icmp eq i64 %indvars.iv.next31, %wide.trip.count33
  br i1 %exitcond34.not, label %for.end23, label %for.body15, !llvm.loop !25

for.end23:                                        ; preds = %for.body15, %entry
  ret void
}

; Function Attrs: nofree nounwind memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local void @setup_brightness_lut(ptr noundef captures(none) initializes((0, 8)) %bp, i32 noundef %thresh, i32 noundef %form) local_unnamed_addr #9 {
entry:
  %call = tail call noalias dereferenceable_or_null(516) ptr @malloc(i64 noundef 516) #26
  %add.ptr = getelementptr inbounds nuw i8, ptr %call, i64 258
  store ptr %add.ptr, ptr %bp, align 8, !tbaa !18
  %conv1 = sitofp i32 %thresh to float
  %cmp3 = icmp eq i32 %form, 6
  br i1 %cmp3, label %for.body.us, label %for.body

for.body.us:                                      ; preds = %entry, %for.body.us
  %indvars.iv16 = phi i64 [ %indvars.iv.next17, %for.body.us ], [ -256, %entry ]
  %0 = trunc nsw i64 %indvars.iv16 to i32
  %conv.us = sitofp i32 %0 to float
  %div.us = fdiv float %conv.us, %conv1
  %conv2.us = fpext float %div.us to double
  %mul.us = fmul double %conv2.us, %conv2.us
  %1 = fneg double %mul.us
  %2 = fmul double %mul.us, %1
  %fneg.us = fmul double %mul.us, %2
  %call7.us = tail call double @exp(double noundef %fneg.us) #22, !tbaa !16
  %mul8.us = fmul double %call7.us, 1.000000e+02
  %conv9.us = fptoui double %mul8.us to i8
  %3 = load ptr, ptr %bp, align 8, !tbaa !18
  %add.ptr10.us = getelementptr inbounds i8, ptr %3, i64 %indvars.iv16
  store i8 %conv9.us, ptr %add.ptr10.us, align 1, !tbaa !24
  %indvars.iv.next17 = add nsw i64 %indvars.iv16, 1
  %exitcond19.not = icmp eq i64 %indvars.iv.next17, 257
  br i1 %exitcond19.not, label %for.end, label %for.body.us, !llvm.loop !26

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ -256, %entry ]
  %4 = trunc nsw i64 %indvars.iv to i32
  %conv = sitofp i32 %4 to float
  %div = fdiv float %conv, %conv1
  %conv2 = fpext float %div to double
  %5 = fneg double %conv2
  %fneg = fmul double %conv2, %5
  %call7 = tail call double @exp(double noundef %fneg) #22, !tbaa !16
  %mul8 = fmul double %call7, 1.000000e+02
  %conv9 = fptoui double %mul8 to i8
  %6 = load ptr, ptr %bp, align 8, !tbaa !18
  %add.ptr10 = getelementptr inbounds i8, ptr %6, i64 %indvars.iv
  store i8 %conv9, ptr %add.ptr10, align 1, !tbaa !24
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 257
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !26

for.end:                                          ; preds = %for.body, %for.body.us
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(errnomem: write)
declare double @exp(double noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local void @free_brightness_lut(ptr noundef captures(none) %bp) local_unnamed_addr #11 {
entry:
  %add.ptr = getelementptr inbounds i8, ptr %bp, i64 -258
  tail call void @free(ptr noundef nonnull %add.ptr) #22
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @susan_principle(ptr noundef readonly captures(none) %in, ptr noundef writeonly captures(none) %r, ptr noundef readonly captures(none) %bp, i32 noundef %max_no, i32 noundef %x_size, i32 noundef %y_size) local_unnamed_addr #13 {
entry:
  %mul = mul nsw i32 %y_size, %x_size
  %conv = sext i32 %mul to i64
  %mul1 = shl nsw i64 %conv, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %r, i8 0, i64 %mul1, i1 false)
  %sub = add i32 %y_size, -3
  %cmp139 = icmp sgt i32 %y_size, 6
  br i1 %cmp139, label %for.cond3.preheader.lr.ph, label %for.end287

for.cond3.preheader.lr.ph:                        ; preds = %entry
  %sub4 = add i32 %x_size, -3
  %cmp5137 = icmp sgt i32 %x_size, 6
  %idx.ext36 = sext i32 %sub4 to i64
  %sub72 = add nsw i32 %x_size, -5
  %idx.ext73 = sext i32 %sub72 to i64
  %sub123 = add nsw i32 %x_size, -6
  %idx.ext124 = sext i32 %sub123 to i64
  br i1 %cmp5137, label %for.cond3.preheader.us.preheader, label %for.end287

for.cond3.preheader.us.preheader:                 ; preds = %for.cond3.preheader.lr.ph
  %0 = zext nneg i32 %x_size to i64
  %wide.trip.count150 = zext nneg i32 %sub to i64
  %wide.trip.count = zext i32 %sub4 to i64
  br label %for.cond3.preheader.us

for.cond3.preheader.us:                           ; preds = %for.cond3.preheader.us.preheader, %for.cond3.for.inc285_crit_edge.us
  %indvars.iv144 = phi i64 [ 3, %for.cond3.preheader.us.preheader ], [ %indvars.iv.next145, %for.cond3.for.inc285_crit_edge.us ]
  %1 = add nsw i64 %indvars.iv144, -3
  %2 = mul nsw i64 %1, %0
  %add.ptr.us = getelementptr inbounds i8, ptr %in, i64 %2
  %3 = trunc i64 %indvars.iv144 to i32
  %4 = mul i32 %x_size, %3
  %5 = zext i32 %4 to i64
  br label %for.body7.us

for.body7.us:                                     ; preds = %for.cond3.preheader.us, %for.inc.us
  %indvars.iv = phi i64 [ 3, %for.cond3.preheader.us ], [ %indvars.iv.next, %for.inc.us ]
  %add.ptr11.us = getelementptr inbounds nuw i8, ptr %add.ptr.us, i64 %indvars.iv
  %add.ptr12.us = getelementptr inbounds i8, ptr %add.ptr11.us, i64 -1
  %6 = add nuw nsw i64 %indvars.iv, %5
  %arrayidx.us = getelementptr inbounds nuw i8, ptr %in, i64 %6
  %7 = load i8, ptr %arrayidx.us, align 1, !tbaa !24
  %idx.ext15.us = zext i8 %7 to i64
  %add.ptr16.us = getelementptr inbounds nuw i8, ptr %bp, i64 %idx.ext15.us
  %8 = load i8, ptr %add.ptr12.us, align 1, !tbaa !24
  %idx.ext18.us = zext i8 %8 to i64
  %idx.neg.us = sub nsw i64 0, %idx.ext18.us
  %add.ptr19.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg.us
  %9 = load i8, ptr %add.ptr19.us, align 1, !tbaa !24
  %conv20.us = zext i8 %9 to i32
  %add21.us = add nuw nsw i32 %conv20.us, 100
  %incdec.ptr22.us = getelementptr inbounds nuw i8, ptr %add.ptr11.us, i64 1
  %10 = load i8, ptr %add.ptr11.us, align 1, !tbaa !24
  %idx.ext24.us = zext i8 %10 to i64
  %idx.neg25.us = sub nsw i64 0, %idx.ext24.us
  %add.ptr26.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg25.us
  %11 = load i8, ptr %add.ptr26.us, align 1, !tbaa !24
  %conv27.us = zext i8 %11 to i32
  %add28.us = add nuw nsw i32 %add21.us, %conv27.us
  %12 = load i8, ptr %incdec.ptr22.us, align 1, !tbaa !24
  %idx.ext30.us = zext i8 %12 to i64
  %idx.neg31.us = sub nsw i64 0, %idx.ext30.us
  %add.ptr32.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg31.us
  %13 = load i8, ptr %add.ptr32.us, align 1, !tbaa !24
  %conv33.us = zext i8 %13 to i32
  %add34.us = add nuw nsw i32 %add28.us, %conv33.us
  %add.ptr37.us = getelementptr inbounds i8, ptr %incdec.ptr22.us, i64 %idx.ext36
  %incdec.ptr38.us = getelementptr inbounds nuw i8, ptr %add.ptr37.us, i64 1
  %14 = load i8, ptr %add.ptr37.us, align 1, !tbaa !24
  %idx.ext40.us = zext i8 %14 to i64
  %idx.neg41.us = sub nsw i64 0, %idx.ext40.us
  %add.ptr42.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg41.us
  %15 = load i8, ptr %add.ptr42.us, align 1, !tbaa !24
  %conv43.us = zext i8 %15 to i32
  %add44.us = add nuw nsw i32 %add34.us, %conv43.us
  %incdec.ptr45.us = getelementptr inbounds nuw i8, ptr %add.ptr37.us, i64 2
  %16 = load i8, ptr %incdec.ptr38.us, align 1, !tbaa !24
  %idx.ext47.us = zext i8 %16 to i64
  %idx.neg48.us = sub nsw i64 0, %idx.ext47.us
  %add.ptr49.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg48.us
  %17 = load i8, ptr %add.ptr49.us, align 1, !tbaa !24
  %conv50.us = zext i8 %17 to i32
  %add51.us = add nuw nsw i32 %add44.us, %conv50.us
  %incdec.ptr52.us = getelementptr inbounds nuw i8, ptr %add.ptr37.us, i64 3
  %18 = load i8, ptr %incdec.ptr45.us, align 1, !tbaa !24
  %idx.ext54.us = zext i8 %18 to i64
  %idx.neg55.us = sub nsw i64 0, %idx.ext54.us
  %add.ptr56.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg55.us
  %19 = load i8, ptr %add.ptr56.us, align 1, !tbaa !24
  %conv57.us = zext i8 %19 to i32
  %add58.us = add nuw nsw i32 %add51.us, %conv57.us
  %incdec.ptr59.us = getelementptr inbounds nuw i8, ptr %add.ptr37.us, i64 4
  %20 = load i8, ptr %incdec.ptr52.us, align 1, !tbaa !24
  %idx.ext61.us = zext i8 %20 to i64
  %idx.neg62.us = sub nsw i64 0, %idx.ext61.us
  %add.ptr63.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg62.us
  %21 = load i8, ptr %add.ptr63.us, align 1, !tbaa !24
  %conv64.us = zext i8 %21 to i32
  %add65.us = add nuw nsw i32 %add58.us, %conv64.us
  %22 = load i8, ptr %incdec.ptr59.us, align 1, !tbaa !24
  %idx.ext67.us = zext i8 %22 to i64
  %idx.neg68.us = sub nsw i64 0, %idx.ext67.us
  %add.ptr69.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg68.us
  %23 = load i8, ptr %add.ptr69.us, align 1, !tbaa !24
  %conv70.us = zext i8 %23 to i32
  %add71.us = add nuw nsw i32 %add65.us, %conv70.us
  %add.ptr74.us = getelementptr inbounds i8, ptr %incdec.ptr59.us, i64 %idx.ext73
  %incdec.ptr75.us = getelementptr inbounds nuw i8, ptr %add.ptr74.us, i64 1
  %24 = load i8, ptr %add.ptr74.us, align 1, !tbaa !24
  %idx.ext77.us = zext i8 %24 to i64
  %idx.neg78.us = sub nsw i64 0, %idx.ext77.us
  %add.ptr79.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg78.us
  %25 = load i8, ptr %add.ptr79.us, align 1, !tbaa !24
  %conv80.us = zext i8 %25 to i32
  %add81.us = add nuw nsw i32 %add71.us, %conv80.us
  %incdec.ptr82.us = getelementptr inbounds nuw i8, ptr %add.ptr74.us, i64 2
  %26 = load i8, ptr %incdec.ptr75.us, align 1, !tbaa !24
  %idx.ext84.us = zext i8 %26 to i64
  %idx.neg85.us = sub nsw i64 0, %idx.ext84.us
  %add.ptr86.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg85.us
  %27 = load i8, ptr %add.ptr86.us, align 1, !tbaa !24
  %conv87.us = zext i8 %27 to i32
  %add88.us = add nuw nsw i32 %add81.us, %conv87.us
  %incdec.ptr89.us = getelementptr inbounds nuw i8, ptr %add.ptr74.us, i64 3
  %28 = load i8, ptr %incdec.ptr82.us, align 1, !tbaa !24
  %idx.ext91.us = zext i8 %28 to i64
  %idx.neg92.us = sub nsw i64 0, %idx.ext91.us
  %add.ptr93.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg92.us
  %29 = load i8, ptr %add.ptr93.us, align 1, !tbaa !24
  %conv94.us = zext i8 %29 to i32
  %add95.us = add nuw nsw i32 %add88.us, %conv94.us
  %incdec.ptr96.us = getelementptr inbounds nuw i8, ptr %add.ptr74.us, i64 4
  %30 = load i8, ptr %incdec.ptr89.us, align 1, !tbaa !24
  %idx.ext98.us = zext i8 %30 to i64
  %idx.neg99.us = sub nsw i64 0, %idx.ext98.us
  %add.ptr100.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg99.us
  %31 = load i8, ptr %add.ptr100.us, align 1, !tbaa !24
  %conv101.us = zext i8 %31 to i32
  %add102.us = add nuw nsw i32 %add95.us, %conv101.us
  %incdec.ptr103.us = getelementptr inbounds nuw i8, ptr %add.ptr74.us, i64 5
  %32 = load i8, ptr %incdec.ptr96.us, align 1, !tbaa !24
  %idx.ext105.us = zext i8 %32 to i64
  %idx.neg106.us = sub nsw i64 0, %idx.ext105.us
  %add.ptr107.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg106.us
  %33 = load i8, ptr %add.ptr107.us, align 1, !tbaa !24
  %conv108.us = zext i8 %33 to i32
  %add109.us = add nuw nsw i32 %add102.us, %conv108.us
  %incdec.ptr110.us = getelementptr inbounds nuw i8, ptr %add.ptr74.us, i64 6
  %34 = load i8, ptr %incdec.ptr103.us, align 1, !tbaa !24
  %idx.ext112.us = zext i8 %34 to i64
  %idx.neg113.us = sub nsw i64 0, %idx.ext112.us
  %add.ptr114.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg113.us
  %35 = load i8, ptr %add.ptr114.us, align 1, !tbaa !24
  %conv115.us = zext i8 %35 to i32
  %add116.us = add nuw nsw i32 %add109.us, %conv115.us
  %36 = load i8, ptr %incdec.ptr110.us, align 1, !tbaa !24
  %idx.ext118.us = zext i8 %36 to i64
  %idx.neg119.us = sub nsw i64 0, %idx.ext118.us
  %add.ptr120.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg119.us
  %37 = load i8, ptr %add.ptr120.us, align 1, !tbaa !24
  %conv121.us = zext i8 %37 to i32
  %add122.us = add nuw nsw i32 %add116.us, %conv121.us
  %add.ptr125.us = getelementptr inbounds i8, ptr %incdec.ptr110.us, i64 %idx.ext124
  %incdec.ptr126.us = getelementptr inbounds nuw i8, ptr %add.ptr125.us, i64 1
  %38 = load i8, ptr %add.ptr125.us, align 1, !tbaa !24
  %idx.ext128.us = zext i8 %38 to i64
  %idx.neg129.us = sub nsw i64 0, %idx.ext128.us
  %add.ptr130.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg129.us
  %39 = load i8, ptr %add.ptr130.us, align 1, !tbaa !24
  %conv131.us = zext i8 %39 to i32
  %add132.us = add nuw nsw i32 %add122.us, %conv131.us
  %incdec.ptr133.us = getelementptr inbounds nuw i8, ptr %add.ptr125.us, i64 2
  %40 = load i8, ptr %incdec.ptr126.us, align 1, !tbaa !24
  %idx.ext135.us = zext i8 %40 to i64
  %idx.neg136.us = sub nsw i64 0, %idx.ext135.us
  %add.ptr137.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg136.us
  %41 = load i8, ptr %add.ptr137.us, align 1, !tbaa !24
  %conv138.us = zext i8 %41 to i32
  %add139.us = add nuw nsw i32 %add132.us, %conv138.us
  %42 = load i8, ptr %incdec.ptr133.us, align 1, !tbaa !24
  %idx.ext141.us = zext i8 %42 to i64
  %idx.neg142.us = sub nsw i64 0, %idx.ext141.us
  %add.ptr143.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg142.us
  %43 = load i8, ptr %add.ptr143.us, align 1, !tbaa !24
  %conv144.us = zext i8 %43 to i32
  %add145.us = add nuw nsw i32 %add139.us, %conv144.us
  %add.ptr146.us = getelementptr inbounds nuw i8, ptr %add.ptr125.us, i64 4
  %incdec.ptr147.us = getelementptr inbounds nuw i8, ptr %add.ptr125.us, i64 5
  %44 = load i8, ptr %add.ptr146.us, align 1, !tbaa !24
  %idx.ext149.us = zext i8 %44 to i64
  %idx.neg150.us = sub nsw i64 0, %idx.ext149.us
  %add.ptr151.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg150.us
  %45 = load i8, ptr %add.ptr151.us, align 1, !tbaa !24
  %conv152.us = zext i8 %45 to i32
  %add153.us = add nuw nsw i32 %add145.us, %conv152.us
  %incdec.ptr154.us = getelementptr inbounds nuw i8, ptr %add.ptr125.us, i64 6
  %46 = load i8, ptr %incdec.ptr147.us, align 1, !tbaa !24
  %idx.ext156.us = zext i8 %46 to i64
  %idx.neg157.us = sub nsw i64 0, %idx.ext156.us
  %add.ptr158.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg157.us
  %47 = load i8, ptr %add.ptr158.us, align 1, !tbaa !24
  %conv159.us = zext i8 %47 to i32
  %add160.us = add nuw nsw i32 %add153.us, %conv159.us
  %48 = load i8, ptr %incdec.ptr154.us, align 1, !tbaa !24
  %idx.ext162.us = zext i8 %48 to i64
  %idx.neg163.us = sub nsw i64 0, %idx.ext162.us
  %add.ptr164.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg163.us
  %49 = load i8, ptr %add.ptr164.us, align 1, !tbaa !24
  %conv165.us = zext i8 %49 to i32
  %add166.us = add nuw nsw i32 %add160.us, %conv165.us
  %add.ptr169.us = getelementptr inbounds i8, ptr %incdec.ptr154.us, i64 %idx.ext124
  %incdec.ptr170.us = getelementptr inbounds nuw i8, ptr %add.ptr169.us, i64 1
  %50 = load i8, ptr %add.ptr169.us, align 1, !tbaa !24
  %idx.ext172.us = zext i8 %50 to i64
  %idx.neg173.us = sub nsw i64 0, %idx.ext172.us
  %add.ptr174.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg173.us
  %51 = load i8, ptr %add.ptr174.us, align 1, !tbaa !24
  %conv175.us = zext i8 %51 to i32
  %add176.us = add nuw nsw i32 %add166.us, %conv175.us
  %incdec.ptr177.us = getelementptr inbounds nuw i8, ptr %add.ptr169.us, i64 2
  %52 = load i8, ptr %incdec.ptr170.us, align 1, !tbaa !24
  %idx.ext179.us = zext i8 %52 to i64
  %idx.neg180.us = sub nsw i64 0, %idx.ext179.us
  %add.ptr181.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg180.us
  %53 = load i8, ptr %add.ptr181.us, align 1, !tbaa !24
  %conv182.us = zext i8 %53 to i32
  %add183.us = add nuw nsw i32 %add176.us, %conv182.us
  %incdec.ptr184.us = getelementptr inbounds nuw i8, ptr %add.ptr169.us, i64 3
  %54 = load i8, ptr %incdec.ptr177.us, align 1, !tbaa !24
  %idx.ext186.us = zext i8 %54 to i64
  %idx.neg187.us = sub nsw i64 0, %idx.ext186.us
  %add.ptr188.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg187.us
  %55 = load i8, ptr %add.ptr188.us, align 1, !tbaa !24
  %conv189.us = zext i8 %55 to i32
  %add190.us = add nuw nsw i32 %add183.us, %conv189.us
  %incdec.ptr191.us = getelementptr inbounds nuw i8, ptr %add.ptr169.us, i64 4
  %56 = load i8, ptr %incdec.ptr184.us, align 1, !tbaa !24
  %idx.ext193.us = zext i8 %56 to i64
  %idx.neg194.us = sub nsw i64 0, %idx.ext193.us
  %add.ptr195.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg194.us
  %57 = load i8, ptr %add.ptr195.us, align 1, !tbaa !24
  %conv196.us = zext i8 %57 to i32
  %add197.us = add nuw nsw i32 %add190.us, %conv196.us
  %incdec.ptr198.us = getelementptr inbounds nuw i8, ptr %add.ptr169.us, i64 5
  %58 = load i8, ptr %incdec.ptr191.us, align 1, !tbaa !24
  %idx.ext200.us = zext i8 %58 to i64
  %idx.neg201.us = sub nsw i64 0, %idx.ext200.us
  %add.ptr202.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg201.us
  %59 = load i8, ptr %add.ptr202.us, align 1, !tbaa !24
  %conv203.us = zext i8 %59 to i32
  %add204.us = add nuw nsw i32 %add197.us, %conv203.us
  %incdec.ptr205.us = getelementptr inbounds nuw i8, ptr %add.ptr169.us, i64 6
  %60 = load i8, ptr %incdec.ptr198.us, align 1, !tbaa !24
  %idx.ext207.us = zext i8 %60 to i64
  %idx.neg208.us = sub nsw i64 0, %idx.ext207.us
  %add.ptr209.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg208.us
  %61 = load i8, ptr %add.ptr209.us, align 1, !tbaa !24
  %conv210.us = zext i8 %61 to i32
  %add211.us = add nuw nsw i32 %add204.us, %conv210.us
  %62 = load i8, ptr %incdec.ptr205.us, align 1, !tbaa !24
  %idx.ext213.us = zext i8 %62 to i64
  %idx.neg214.us = sub nsw i64 0, %idx.ext213.us
  %add.ptr215.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg214.us
  %63 = load i8, ptr %add.ptr215.us, align 1, !tbaa !24
  %conv216.us = zext i8 %63 to i32
  %add217.us = add nuw nsw i32 %add211.us, %conv216.us
  %add.ptr220.us = getelementptr inbounds i8, ptr %incdec.ptr205.us, i64 %idx.ext73
  %incdec.ptr221.us = getelementptr inbounds nuw i8, ptr %add.ptr220.us, i64 1
  %64 = load i8, ptr %add.ptr220.us, align 1, !tbaa !24
  %idx.ext223.us = zext i8 %64 to i64
  %idx.neg224.us = sub nsw i64 0, %idx.ext223.us
  %add.ptr225.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg224.us
  %65 = load i8, ptr %add.ptr225.us, align 1, !tbaa !24
  %conv226.us = zext i8 %65 to i32
  %add227.us = add nuw nsw i32 %add217.us, %conv226.us
  %incdec.ptr228.us = getelementptr inbounds nuw i8, ptr %add.ptr220.us, i64 2
  %66 = load i8, ptr %incdec.ptr221.us, align 1, !tbaa !24
  %idx.ext230.us = zext i8 %66 to i64
  %idx.neg231.us = sub nsw i64 0, %idx.ext230.us
  %add.ptr232.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg231.us
  %67 = load i8, ptr %add.ptr232.us, align 1, !tbaa !24
  %conv233.us = zext i8 %67 to i32
  %add234.us = add nuw nsw i32 %add227.us, %conv233.us
  %incdec.ptr235.us = getelementptr inbounds nuw i8, ptr %add.ptr220.us, i64 3
  %68 = load i8, ptr %incdec.ptr228.us, align 1, !tbaa !24
  %idx.ext237.us = zext i8 %68 to i64
  %idx.neg238.us = sub nsw i64 0, %idx.ext237.us
  %add.ptr239.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg238.us
  %69 = load i8, ptr %add.ptr239.us, align 1, !tbaa !24
  %conv240.us = zext i8 %69 to i32
  %add241.us = add nuw nsw i32 %add234.us, %conv240.us
  %incdec.ptr242.us = getelementptr inbounds nuw i8, ptr %add.ptr220.us, i64 4
  %70 = load i8, ptr %incdec.ptr235.us, align 1, !tbaa !24
  %idx.ext244.us = zext i8 %70 to i64
  %idx.neg245.us = sub nsw i64 0, %idx.ext244.us
  %add.ptr246.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg245.us
  %71 = load i8, ptr %add.ptr246.us, align 1, !tbaa !24
  %conv247.us = zext i8 %71 to i32
  %add248.us = add nuw nsw i32 %add241.us, %conv247.us
  %72 = load i8, ptr %incdec.ptr242.us, align 1, !tbaa !24
  %idx.ext250.us = zext i8 %72 to i64
  %idx.neg251.us = sub nsw i64 0, %idx.ext250.us
  %add.ptr252.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg251.us
  %73 = load i8, ptr %add.ptr252.us, align 1, !tbaa !24
  %conv253.us = zext i8 %73 to i32
  %add254.us = add nuw nsw i32 %add248.us, %conv253.us
  %add.ptr257.us = getelementptr inbounds i8, ptr %incdec.ptr242.us, i64 %idx.ext36
  %incdec.ptr258.us = getelementptr inbounds nuw i8, ptr %add.ptr257.us, i64 1
  %74 = load i8, ptr %add.ptr257.us, align 1, !tbaa !24
  %idx.ext260.us = zext i8 %74 to i64
  %idx.neg261.us = sub nsw i64 0, %idx.ext260.us
  %add.ptr262.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg261.us
  %75 = load i8, ptr %add.ptr262.us, align 1, !tbaa !24
  %conv263.us = zext i8 %75 to i32
  %add264.us = add nuw nsw i32 %add254.us, %conv263.us
  %incdec.ptr265.us = getelementptr inbounds nuw i8, ptr %add.ptr257.us, i64 2
  %76 = load i8, ptr %incdec.ptr258.us, align 1, !tbaa !24
  %idx.ext267.us = zext i8 %76 to i64
  %idx.neg268.us = sub nsw i64 0, %idx.ext267.us
  %add.ptr269.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg268.us
  %77 = load i8, ptr %add.ptr269.us, align 1, !tbaa !24
  %conv270.us = zext i8 %77 to i32
  %add271.us = add nuw nsw i32 %add264.us, %conv270.us
  %78 = load i8, ptr %incdec.ptr265.us, align 1, !tbaa !24
  %idx.ext273.us = zext i8 %78 to i64
  %idx.neg274.us = sub nsw i64 0, %idx.ext273.us
  %add.ptr275.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg274.us
  %79 = load i8, ptr %add.ptr275.us, align 1, !tbaa !24
  %conv276.us = zext i8 %79 to i32
  %add277.us = add nuw nsw i32 %add271.us, %conv276.us
  %cmp278.not.us = icmp sgt i32 %add277.us, %max_no
  br i1 %cmp278.not.us, label %for.inc.us, label %if.then.us

if.then.us:                                       ; preds = %for.body7.us
  %sub280.us = sub nsw i32 %max_no, %add277.us
  %arrayidx284.us = getelementptr inbounds nuw i32, ptr %r, i64 %6
  store i32 %sub280.us, ptr %arrayidx284.us, align 4, !tbaa !16
  br label %for.inc.us

for.inc.us:                                       ; preds = %if.then.us, %for.body7.us
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.cond3.for.inc285_crit_edge.us, label %for.body7.us, !llvm.loop !27

for.cond3.for.inc285_crit_edge.us:                ; preds = %for.inc.us
  %indvars.iv.next145 = add nuw nsw i64 %indvars.iv144, 1
  %exitcond151.not = icmp eq i64 %indvars.iv.next145, %wide.trip.count150
  br i1 %exitcond151.not, label %for.end287, label %for.cond3.preheader.us, !llvm.loop !28

for.end287:                                       ; preds = %for.cond3.for.inc285_crit_edge.us, %for.cond3.preheader.lr.ph, %entry
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #14

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @susan_principle_small(ptr noundef readonly captures(none) %in, ptr noundef writeonly captures(none) %r, ptr noundef readonly captures(none) %bp, i32 noundef %max_no, i32 noundef %x_size, i32 noundef %y_size) local_unnamed_addr #8 {
entry:
  %mul = mul nsw i32 %y_size, %x_size
  %conv = sext i32 %mul to i64
  %mul1 = shl nsw i64 %conv, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %r, i8 0, i64 %mul1, i1 false)
  %sub = add i32 %y_size, -1
  %cmp47 = icmp sgt i32 %y_size, 2
  br i1 %cmp47, label %for.cond3.preheader.lr.ph, label %for.end83

for.cond3.preheader.lr.ph:                        ; preds = %entry
  %cmp545 = icmp sgt i32 %x_size, 2
  %sub35 = add nsw i32 %x_size, -2
  %idx.ext36 = sext i32 %sub35 to i64
  br i1 %cmp545, label %for.cond3.preheader.us.preheader, label %for.end83

for.cond3.preheader.us.preheader:                 ; preds = %for.cond3.preheader.lr.ph
  %sub4 = add nsw i32 %x_size, -1
  %0 = zext nneg i32 %x_size to i64
  %wide.trip.count58 = zext nneg i32 %sub to i64
  %wide.trip.count = zext i32 %sub4 to i64
  br label %for.cond3.preheader.us

for.cond3.preheader.us:                           ; preds = %for.cond3.preheader.us.preheader, %for.cond3.for.inc81_crit_edge.us
  %indvars.iv52 = phi i64 [ 1, %for.cond3.preheader.us.preheader ], [ %indvars.iv.next53, %for.cond3.for.inc81_crit_edge.us ]
  %1 = add nsw i64 %indvars.iv52, -1
  %2 = mul nsw i64 %1, %0
  %add.ptr.us = getelementptr inbounds i8, ptr %in, i64 %2
  %3 = trunc i64 %indvars.iv52 to i32
  %4 = mul i32 %x_size, %3
  %5 = zext i32 %4 to i64
  br label %for.body7.us

for.body7.us:                                     ; preds = %for.cond3.preheader.us, %for.inc.us
  %indvars.iv = phi i64 [ 1, %for.cond3.preheader.us ], [ %indvars.iv.next, %for.inc.us ]
  %add.ptr11.us = getelementptr inbounds nuw i8, ptr %add.ptr.us, i64 %indvars.iv
  %add.ptr12.us = getelementptr inbounds i8, ptr %add.ptr11.us, i64 -1
  %6 = add nuw nsw i64 %indvars.iv, %5
  %arrayidx.us = getelementptr inbounds nuw i8, ptr %in, i64 %6
  %7 = load i8, ptr %arrayidx.us, align 1, !tbaa !24
  %idx.ext15.us = zext i8 %7 to i64
  %add.ptr16.us = getelementptr inbounds nuw i8, ptr %bp, i64 %idx.ext15.us
  %8 = load i8, ptr %add.ptr12.us, align 1, !tbaa !24
  %idx.ext18.us = zext i8 %8 to i64
  %idx.neg.us = sub nsw i64 0, %idx.ext18.us
  %add.ptr19.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg.us
  %9 = load i8, ptr %add.ptr19.us, align 1, !tbaa !24
  %conv20.us = zext i8 %9 to i32
  %add21.us = add nuw nsw i32 %conv20.us, 100
  %incdec.ptr22.us = getelementptr inbounds nuw i8, ptr %add.ptr11.us, i64 1
  %10 = load i8, ptr %add.ptr11.us, align 1, !tbaa !24
  %idx.ext24.us = zext i8 %10 to i64
  %idx.neg25.us = sub nsw i64 0, %idx.ext24.us
  %add.ptr26.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg25.us
  %11 = load i8, ptr %add.ptr26.us, align 1, !tbaa !24
  %conv27.us = zext i8 %11 to i32
  %add28.us = add nuw nsw i32 %add21.us, %conv27.us
  %12 = load i8, ptr %incdec.ptr22.us, align 1, !tbaa !24
  %idx.ext30.us = zext i8 %12 to i64
  %idx.neg31.us = sub nsw i64 0, %idx.ext30.us
  %add.ptr32.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg31.us
  %13 = load i8, ptr %add.ptr32.us, align 1, !tbaa !24
  %conv33.us = zext i8 %13 to i32
  %add34.us = add nuw nsw i32 %add28.us, %conv33.us
  %add.ptr37.us = getelementptr inbounds i8, ptr %incdec.ptr22.us, i64 %idx.ext36
  %14 = load i8, ptr %add.ptr37.us, align 1, !tbaa !24
  %idx.ext39.us = zext i8 %14 to i64
  %idx.neg40.us = sub nsw i64 0, %idx.ext39.us
  %add.ptr41.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg40.us
  %15 = load i8, ptr %add.ptr41.us, align 1, !tbaa !24
  %conv42.us = zext i8 %15 to i32
  %add43.us = add nuw nsw i32 %add34.us, %conv42.us
  %add.ptr44.us = getelementptr inbounds nuw i8, ptr %add.ptr37.us, i64 2
  %16 = load i8, ptr %add.ptr44.us, align 1, !tbaa !24
  %idx.ext46.us = zext i8 %16 to i64
  %idx.neg47.us = sub nsw i64 0, %idx.ext46.us
  %add.ptr48.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg47.us
  %17 = load i8, ptr %add.ptr48.us, align 1, !tbaa !24
  %conv49.us = zext i8 %17 to i32
  %add50.us = add nuw nsw i32 %add43.us, %conv49.us
  %add.ptr53.us = getelementptr inbounds i8, ptr %add.ptr44.us, i64 %idx.ext36
  %incdec.ptr54.us = getelementptr inbounds nuw i8, ptr %add.ptr53.us, i64 1
  %18 = load i8, ptr %add.ptr53.us, align 1, !tbaa !24
  %idx.ext56.us = zext i8 %18 to i64
  %idx.neg57.us = sub nsw i64 0, %idx.ext56.us
  %add.ptr58.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg57.us
  %19 = load i8, ptr %add.ptr58.us, align 1, !tbaa !24
  %conv59.us = zext i8 %19 to i32
  %add60.us = add nuw nsw i32 %add50.us, %conv59.us
  %incdec.ptr61.us = getelementptr inbounds nuw i8, ptr %add.ptr53.us, i64 2
  %20 = load i8, ptr %incdec.ptr54.us, align 1, !tbaa !24
  %idx.ext63.us = zext i8 %20 to i64
  %idx.neg64.us = sub nsw i64 0, %idx.ext63.us
  %add.ptr65.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg64.us
  %21 = load i8, ptr %add.ptr65.us, align 1, !tbaa !24
  %conv66.us = zext i8 %21 to i32
  %add67.us = add nuw nsw i32 %add60.us, %conv66.us
  %22 = load i8, ptr %incdec.ptr61.us, align 1, !tbaa !24
  %idx.ext69.us = zext i8 %22 to i64
  %idx.neg70.us = sub nsw i64 0, %idx.ext69.us
  %add.ptr71.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg70.us
  %23 = load i8, ptr %add.ptr71.us, align 1, !tbaa !24
  %conv72.us = zext i8 %23 to i32
  %add73.us = add nuw nsw i32 %add67.us, %conv72.us
  %cmp74.us = icmp samesign ult i32 %add73.us, 731
  br i1 %cmp74.us, label %if.then.us, label %for.inc.us

if.then.us:                                       ; preds = %for.body7.us
  %sub76.us = sub nuw nsw i32 730, %add73.us
  %arrayidx80.us = getelementptr inbounds nuw i32, ptr %r, i64 %6
  store i32 %sub76.us, ptr %arrayidx80.us, align 4, !tbaa !16
  br label %for.inc.us

for.inc.us:                                       ; preds = %if.then.us, %for.body7.us
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.cond3.for.inc81_crit_edge.us, label %for.body7.us, !llvm.loop !29

for.cond3.for.inc81_crit_edge.us:                 ; preds = %for.inc.us
  %indvars.iv.next53 = add nuw nsw i64 %indvars.iv52, 1
  %exitcond59.not = icmp eq i64 %indvars.iv.next53, %wide.trip.count58
  br i1 %exitcond59.not, label %for.end83, label %for.cond3.preheader.us, !llvm.loop !30

for.end83:                                        ; preds = %for.cond3.for.inc81_crit_edge.us, %for.cond3.preheader.lr.ph, %entry
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local zeroext i8 @median(ptr noundef readonly captures(none) %in, i32 noundef %i, i32 noundef %j, i32 noundef %x_size) local_unnamed_addr #15 {
entry:
  %p = alloca [8 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %p) #22
  %sub = add nsw i32 %i, -1
  %mul = mul nsw i32 %x_size, %sub
  %add = add nsw i32 %mul, %j
  %0 = sext i32 %add to i64
  %1 = getelementptr i8, ptr %in, i64 %0
  %arrayidx = getelementptr i8, ptr %1, i64 -1
  %2 = load <2 x i8>, ptr %arrayidx, align 1, !tbaa !24
  %3 = zext <2 x i8> %2 to <2 x i32>
  store <2 x i32> %3, ptr %p, align 16, !tbaa !16
  %arrayidx15 = getelementptr i8, ptr %1, i64 1
  %4 = load i8, ptr %arrayidx15, align 1, !tbaa !24
  %conv16 = zext i8 %4 to i32
  %arrayidx17 = getelementptr inbounds nuw i8, ptr %p, i64 8
  store i32 %conv16, ptr %arrayidx17, align 8, !tbaa !16
  %mul18 = mul nsw i32 %x_size, %i
  %add19 = add nsw i32 %mul18, %j
  %5 = sext i32 %add19 to i64
  %6 = getelementptr i8, ptr %in, i64 %5
  %arrayidx22 = getelementptr i8, ptr %6, i64 -1
  %7 = load i8, ptr %arrayidx22, align 1, !tbaa !24
  %conv23 = zext i8 %7 to i32
  %arrayidx24 = getelementptr inbounds nuw i8, ptr %p, i64 12
  store i32 %conv23, ptr %arrayidx24, align 4, !tbaa !16
  %arrayidx29 = getelementptr i8, ptr %6, i64 1
  %8 = load i8, ptr %arrayidx29, align 1, !tbaa !24
  %conv30 = zext i8 %8 to i32
  %arrayidx31 = getelementptr inbounds nuw i8, ptr %p, i64 16
  store i32 %conv30, ptr %arrayidx31, align 16, !tbaa !16
  %add32 = add nsw i32 %i, 1
  %mul33 = mul nsw i32 %x_size, %add32
  %add34 = add nsw i32 %mul33, %j
  %9 = sext i32 %add34 to i64
  %10 = getelementptr i8, ptr %in, i64 %9
  %arrayidx37 = getelementptr i8, ptr %10, i64 -1
  %arrayidx39 = getelementptr inbounds nuw i8, ptr %p, i64 20
  %11 = load <2 x i8>, ptr %arrayidx37, align 1, !tbaa !24
  %12 = zext <2 x i8> %11 to <2 x i32>
  store <2 x i32> %12, ptr %arrayidx39, align 4, !tbaa !16
  %arrayidx52 = getelementptr i8, ptr %10, i64 1
  %13 = load i8, ptr %arrayidx52, align 1, !tbaa !24
  %conv53 = zext i8 %13 to i32
  %arrayidx54 = getelementptr inbounds nuw i8, ptr %p, i64 28
  store i32 %conv53, ptr %arrayidx54, align 4, !tbaa !16
  br label %for.body60.preheader

for.body60.preheader:                             ; preds = %for.inc78, %entry
  %indvars.iv45 = phi i64 [ 7, %entry ], [ %indvars.iv.next46, %for.inc78 ]
  %k.041 = phi i32 [ 0, %entry ], [ %inc79, %for.inc78 ]
  %.pre = load i32, ptr %p, align 16, !tbaa !16
  br label %for.body60

for.body60:                                       ; preds = %for.body60.preheader, %for.inc
  %14 = phi i32 [ %.pre, %for.body60.preheader ], [ %16, %for.inc ]
  %indvars.iv = phi i64 [ 0, %for.body60.preheader ], [ %indvars.iv.next, %for.inc ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %arrayidx65 = getelementptr inbounds nuw [8 x i32], ptr %p, i64 0, i64 %indvars.iv.next
  %15 = load i32, ptr %arrayidx65, align 4, !tbaa !16
  %cmp66 = icmp sgt i32 %14, %15
  br i1 %cmp66, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body60
  %arrayidx62 = getelementptr inbounds nuw [8 x i32], ptr %p, i64 0, i64 %indvars.iv
  store i32 %15, ptr %arrayidx62, align 4, !tbaa !16
  store i32 %14, ptr %arrayidx65, align 4, !tbaa !16
  br label %for.inc

for.inc:                                          ; preds = %for.body60, %if.then
  %16 = phi i32 [ %15, %for.body60 ], [ %14, %if.then ]
  %exitcond.not = icmp eq i64 %indvars.iv.next, %indvars.iv45
  br i1 %exitcond.not, label %for.inc78, label %for.body60, !llvm.loop !31

for.inc78:                                        ; preds = %for.inc
  %inc79 = add nuw nsw i32 %k.041, 1
  %indvars.iv.next46 = add nsw i64 %indvars.iv45, -1
  %exitcond48.not = icmp eq i32 %inc79, 7
  br i1 %exitcond48.not, label %for.end80, label %for.body60.preheader, !llvm.loop !32

for.end80:                                        ; preds = %for.inc78
  %17 = load i32, ptr %arrayidx24, align 4, !tbaa !16
  %18 = load i32, ptr %arrayidx31, align 16, !tbaa !16
  %add83 = add nsw i32 %18, %17
  %div = sdiv i32 %add83, 2
  %conv84 = trunc i32 %div to i8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %p) #22
  ret i8 %conv84
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @enlarge(ptr noundef captures(none) %in, ptr noundef %tmp_image, ptr noundef captures(none) %x_size, ptr noundef captures(none) %y_size, i32 noundef %border) local_unnamed_addr #16 {
entry:
  %0 = load i32, ptr %y_size, align 4, !tbaa !16
  %cmp71 = icmp sgt i32 %0, 0
  br i1 %cmp71, label %for.body.lr.ph, label %for.cond8.preheader

for.body.lr.ph:                                   ; preds = %entry
  %mul = shl nsw i32 %border, 1
  %idx.ext3 = sext i32 %border to i64
  %invariant.gep = getelementptr i8, ptr %tmp_image, i64 %idx.ext3
  br label %for.body

for.cond8.preheader:                              ; preds = %for.body, %entry
  %cmp973 = icmp sgt i32 %border, 0
  %mul13 = shl nsw i32 %border, 1
  br i1 %cmp973, label %for.body11.lr.ph, label %for.end87

for.body11.lr.ph:                                 ; preds = %for.cond8.preheader
  %idx.ext18 = zext nneg i32 %border to i64
  %invariant.gep75 = getelementptr i8, ptr %tmp_image, i64 %idx.ext18
  br label %for.body11

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %i.072 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body ]
  %add = add nsw i32 %i.072, %border
  %1 = load i32, ptr %x_size, align 4, !tbaa !16
  %add1 = add nsw i32 %1, %mul
  %mul2 = mul nsw i32 %add1, %add
  %idx.ext = sext i32 %mul2 to i64
  %gep = getelementptr i8, ptr %invariant.gep, i64 %idx.ext
  %2 = load ptr, ptr %in, align 8, !tbaa !18
  %mul5 = mul nsw i32 %1, %i.072
  %idx.ext6 = sext i32 %mul5 to i64
  %add.ptr7 = getelementptr inbounds i8, ptr %2, i64 %idx.ext6
  %conv = sext i32 %1 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %gep, ptr align 1 %add.ptr7, i64 %conv, i1 false)
  %inc = add nuw nsw i32 %i.072, 1
  %3 = load i32, ptr %y_size, align 4, !tbaa !16
  %cmp = icmp slt i32 %inc, %3
  br i1 %cmp, label %for.body, label %for.cond8.preheader, !llvm.loop !33

for.cond46.preheader.lr.ph:                       ; preds = %for.body11
  %mul47 = shl nuw nsw i32 %border, 1
  %.pre = load i32, ptr %y_size, align 4, !tbaa !16
  %invariant.op87 = sub nsw i32 0, %mul47
  br label %for.cond46.preheader

for.body11:                                       ; preds = %for.body11.lr.ph, %for.body11
  %i.174 = phi i32 [ 0, %for.body11.lr.ph ], [ %inc40, %for.body11 ]
  %4 = xor i32 %i.174, -1
  %sub12 = add nsw i32 %border, %4
  %5 = load i32, ptr %x_size, align 4, !tbaa !16
  %add14 = add nsw i32 %5, %mul13
  %mul15 = mul nsw i32 %add14, %sub12
  %idx.ext16 = sext i32 %mul15 to i64
  %gep76 = getelementptr i8, ptr %invariant.gep75, i64 %idx.ext16
  %6 = load ptr, ptr %in, align 8, !tbaa !18
  %mul20 = mul nsw i32 %5, %i.174
  %idx.ext21 = sext i32 %mul20 to i64
  %add.ptr22 = getelementptr inbounds i8, ptr %6, i64 %idx.ext21
  %conv23 = sext i32 %5 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %gep76, ptr align 1 %add.ptr22, i64 %conv23, i1 false)
  %7 = load i32, ptr %y_size, align 4, !tbaa !16
  %add24 = add nuw i32 %i.174, %border
  %add25 = add i32 %add24, %7
  %8 = load i32, ptr %x_size, align 4, !tbaa !16
  %add27 = add nsw i32 %8, %mul13
  %mul28 = mul nsw i32 %add25, %add27
  %idx.ext29 = sext i32 %mul28 to i64
  %gep78 = getelementptr i8, ptr %invariant.gep75, i64 %idx.ext29
  %9 = load ptr, ptr %in, align 8, !tbaa !18
  %sub34 = add i32 %7, %4
  %mul35 = mul nsw i32 %sub34, %8
  %idx.ext36 = sext i32 %mul35 to i64
  %add.ptr37 = getelementptr inbounds i8, ptr %9, i64 %idx.ext36
  %conv38 = sext i32 %8 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %gep78, ptr align 1 %add.ptr37, i64 %conv38, i1 false)
  %inc40 = add nuw nsw i32 %i.174, 1
  %exitcond.not = icmp eq i32 %inc40, %border
  br i1 %exitcond.not, label %for.cond46.preheader.lr.ph, label %for.body11, !llvm.loop !34

for.cond46.preheader:                             ; preds = %for.cond46.preheader.lr.ph, %for.inc85
  %10 = phi i32 [ %.pre, %for.cond46.preheader.lr.ph ], [ %17, %for.inc85 ]
  %i.284 = phi i32 [ 0, %for.cond46.preheader.lr.ph ], [ %inc86, %for.inc85 ]
  %invariant.op = add nuw i32 %border, %i.284
  %cmp4980 = icmp sgt i32 %10, %invariant.op87
  br i1 %cmp4980, label %for.body51.lr.ph, label %for.inc85

for.body51.lr.ph:                                 ; preds = %for.cond46.preheader
  %11 = xor i32 %i.284, -1
  %invariant.op82 = add nsw i32 %border, %11
  br label %for.body51

for.body51:                                       ; preds = %for.body51.lr.ph, %for.body51
  %j.081 = phi i32 [ 0, %for.body51.lr.ph ], [ %inc83, %for.body51 ]
  %12 = load i32, ptr %x_size, align 4, !tbaa !16
  %add53 = add nsw i32 %12, %mul47
  %mul54 = mul nsw i32 %add53, %j.081
  %add56.reass = add i32 %mul54, %invariant.op
  %idxprom = sext i32 %add56.reass to i64
  %arrayidx = getelementptr inbounds i8, ptr %tmp_image, i64 %idxprom
  %13 = load i8, ptr %arrayidx, align 1, !tbaa !24
  %sub62.reass = add i32 %mul54, %invariant.op82
  %idxprom63 = sext i32 %sub62.reass to i64
  %arrayidx64 = getelementptr inbounds i8, ptr %tmp_image, i64 %idxprom63
  store i8 %13, ptr %arrayidx64, align 1, !tbaa !24
  %14 = load i32, ptr %x_size, align 4, !tbaa !16
  %add66 = add nsw i32 %14, %mul47
  %mul67 = mul nsw i32 %add66, %j.081
  %add68 = add i32 %14, %border
  %add69 = add i32 %add68, %mul67
  %sub71 = add i32 %add69, %11
  %idxprom72 = sext i32 %sub71 to i64
  %arrayidx73 = getelementptr inbounds i8, ptr %tmp_image, i64 %idxprom72
  %15 = load i8, ptr %arrayidx73, align 1, !tbaa !24
  %add79 = add nsw i32 %add69, %i.284
  %idxprom80 = sext i32 %add79 to i64
  %arrayidx81 = getelementptr inbounds i8, ptr %tmp_image, i64 %idxprom80
  store i8 %15, ptr %arrayidx81, align 1, !tbaa !24
  %inc83 = add nuw nsw i32 %j.081, 1
  %16 = load i32, ptr %y_size, align 4, !tbaa !16
  %add48 = add nsw i32 %16, %mul47
  %cmp49 = icmp slt i32 %inc83, %add48
  br i1 %cmp49, label %for.body51, label %for.inc85, !llvm.loop !35

for.inc85:                                        ; preds = %for.body51, %for.cond46.preheader
  %17 = phi i32 [ %10, %for.cond46.preheader ], [ %16, %for.body51 ]
  %inc86 = add nuw nsw i32 %i.284, 1
  %exitcond85.not = icmp eq i32 %inc86, %border
  br i1 %exitcond85.not, label %for.end87, label %for.cond46.preheader, !llvm.loop !36

for.end87:                                        ; preds = %for.inc85, %for.cond8.preheader
  %mul88.pre-phi = phi i32 [ %mul13, %for.cond8.preheader ], [ %mul47, %for.inc85 ]
  %18 = load i32, ptr %x_size, align 4, !tbaa !16
  %add89 = add nsw i32 %18, %mul88.pre-phi
  store i32 %add89, ptr %x_size, align 4, !tbaa !16
  %19 = load i32, ptr %y_size, align 4, !tbaa !16
  %add91 = add nsw i32 %19, %mul88.pre-phi
  store i32 %add91, ptr %y_size, align 4, !tbaa !16
  store ptr %tmp_image, ptr %in, align 8, !tbaa !18
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #17

; Function Attrs: nounwind uwtable
define dso_local void @susan_smoothing(i32 noundef %three_by_three, ptr noundef %in, float noundef %dt, i32 noundef %x_size, i32 noundef %y_size, ptr noundef readonly captures(none) %bp) local_unnamed_addr #0 {
entry:
  %p.i156 = alloca [8 x i32], align 16
  %p.i = alloca [8 x i32], align 16
  %in.addr = alloca ptr, align 8
  %x_size.addr = alloca i32, align 4
  %y_size.addr = alloca i32, align 4
  store ptr %in, ptr %in.addr, align 8, !tbaa !18
  store i32 %x_size, ptr %x_size.addr, align 4, !tbaa !16
  store i32 %y_size, ptr %y_size.addr, align 4, !tbaa !16
  %cmp = icmp eq i32 %three_by_three, 0
  %conv = fpext float %dt to double
  %mul = fmul double %conv, 1.500000e+00
  %conv1 = fptosi double %mul to i32
  %add = add nsw i32 %conv1, 1
  %mask_size.0 = select i1 %cmp, i32 %add, i32 1
  %cmp2 = fcmp ogt float %dt, 1.500000e+01
  br i1 %cmp2, label %if.then6, label %if.end10

if.then6:                                         ; preds = %entry
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.25, double noundef %conv)
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.13)
  %puts155 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.14)
  tail call void @exit(i32 noundef 0) #24
  unreachable

if.end10:                                         ; preds = %entry
  %mul11 = shl nsw i32 %mask_size.0, 1
  %add12 = or disjoint i32 %mul11, 1
  %cmp13.not = icmp slt i32 %mul11, %x_size
  %cmp17.not = icmp slt i32 %mul11, %y_size
  %or.cond = and i1 %cmp13.not, %cmp17.not
  br i1 %or.cond, label %if.end21, label %if.then19

if.then19:                                        ; preds = %if.end10
  %call20 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.28, i32 noundef %mask_size.0, i32 noundef %x_size, i32 noundef %y_size)
  tail call void @exit(i32 noundef 0) #24
  unreachable

if.end21:                                         ; preds = %if.end10
  %add23 = add nsw i32 %mul11, %x_size
  %add25 = add nsw i32 %mul11, %y_size
  %mul26 = mul nsw i32 %add23, %add25
  %conv27 = sext i32 %mul26 to i64
  %call28 = tail call noalias ptr @malloc(i64 noundef %conv27) #26
  call void @enlarge(ptr noundef nonnull %in.addr, ptr noundef %call28, ptr noundef nonnull %x_size.addr, ptr noundef nonnull %y_size.addr, i32 noundef %mask_size.0)
  br i1 %cmp, label %if.then31, label %for.cond129.preheader

for.cond129.preheader:                            ; preds = %if.end21
  %0 = load i32, ptr %y_size.addr, align 4, !tbaa !16
  %cmp131212 = icmp sgt i32 %0, 2
  br i1 %cmp131212, label %for.cond134.preheader.lr.ph, label %if.end256

for.cond134.preheader.lr.ph:                      ; preds = %for.cond129.preheader
  %arrayidx17.i166 = getelementptr inbounds nuw i8, ptr %p.i156, i64 8
  %arrayidx24.i171 = getelementptr inbounds nuw i8, ptr %p.i156, i64 12
  %arrayidx31.i174 = getelementptr inbounds nuw i8, ptr %p.i156, i64 16
  %arrayidx39.i180 = getelementptr inbounds nuw i8, ptr %p.i156, i64 20
  %arrayidx54.i185 = getelementptr inbounds nuw i8, ptr %p.i156, i64 28
  %1 = load i32, ptr %x_size.addr, align 4, !tbaa !16
  %2 = icmp sgt i32 %1, 2
  br i1 %2, label %for.cond134.preheader, label %if.end256

if.then31:                                        ; preds = %if.end21
  %3 = load i32, ptr %x_size.addr, align 4, !tbaa !16
  %sub = sub nsw i32 %3, %add12
  %mul34 = mul nsw i32 %add12, %add12
  %conv35 = zext nneg i32 %mul34 to i64
  %call36 = tail call noalias ptr @malloc(i64 noundef %conv35) #26
  %4 = fneg float %dt
  %fneg = fmul float %dt, %4
  %sub38 = xor i32 %conv1, -1
  %cmp39.not219 = icmp slt i32 %add, %sub38
  br i1 %cmp39.not219, label %for.cond58.preheader, label %for.cond42.preheader

for.cond42.preheader:                             ; preds = %if.then31, %for.cond42.for.inc55_crit_edge
  %dpt.0221 = phi ptr [ %incdec.ptr, %for.cond42.for.inc55_crit_edge ], [ %call36, %if.then31 ]
  %i.0220 = phi i32 [ %inc56, %for.cond42.for.inc55_crit_edge ], [ %sub38, %if.then31 ]
  %mul46 = mul nsw i32 %i.0220, %i.0220
  br label %for.body45

for.cond58.preheader:                             ; preds = %for.cond42.for.inc55_crit_edge, %if.then31
  %5 = load i32, ptr %y_size.addr, align 4, !tbaa !16
  %sub59246 = sub nsw i32 %5, %mask_size.0
  %cmp60247 = icmp slt i32 %mask_size.0, %sub59246
  br i1 %cmp60247, label %for.cond63.preheader.lr.ph, label %for.end127

for.cond63.preheader.lr.ph:                       ; preds = %for.cond58.preheader
  %narrow = sub nsw i32 0, %mask_size.0
  %idx.neg = sext i32 %narrow to i64
  %idx.ext104 = sext i32 %sub to i64
  %arrayidx17.i = getelementptr inbounds nuw i8, ptr %p.i, i64 8
  %arrayidx24.i = getelementptr inbounds nuw i8, ptr %p.i, i64 12
  %arrayidx31.i = getelementptr inbounds nuw i8, ptr %p.i, i64 16
  %arrayidx39.i = getelementptr inbounds nuw i8, ptr %p.i, i64 20
  %arrayidx54.i = getelementptr inbounds nuw i8, ptr %p.i, i64 28
  %6 = add i32 %mask_size.0, %conv1
  %7 = add i32 %6, 1
  %8 = zext i32 %7 to i64
  %9 = add nuw nsw i64 %8, 1
  %10 = sext i32 %mask_size.0 to i64
  %.pre262 = load i32, ptr %x_size.addr, align 4, !tbaa !16
  br label %for.cond63.preheader

for.body45:                                       ; preds = %for.cond42.preheader, %for.body45
  %dpt.1217 = phi ptr [ %dpt.0221, %for.cond42.preheader ], [ %incdec.ptr, %for.body45 ]
  %j.0216 = phi i32 [ %sub38, %for.cond42.preheader ], [ %inc, %for.body45 ]
  %mul47 = mul nsw i32 %j.0216, %j.0216
  %add48 = add nuw nsw i32 %mul47, %mul46
  %conv49 = uitofp nneg i32 %add48 to float
  %div = fdiv float %conv49, %fneg
  %conv50 = fpext float %div to double
  %call51 = tail call double @exp(double noundef %conv50) #22, !tbaa !16
  %mul52 = fmul double %call51, 1.000000e+02
  %conv53 = fptosi double %mul52 to i32
  %conv54 = trunc i32 %conv53 to i8
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %dpt.1217, i64 1
  store i8 %conv54, ptr %dpt.1217, align 1, !tbaa !24
  %inc = add i32 %j.0216, 1
  %exitcond.not = icmp eq i32 %j.0216, %mask_size.0
  br i1 %exitcond.not, label %for.cond42.for.inc55_crit_edge, label %for.body45, !llvm.loop !37

for.cond42.for.inc55_crit_edge:                   ; preds = %for.body45
  %inc56 = add i32 %i.0220, 1
  %exitcond252.not = icmp eq i32 %i.0220, %mask_size.0
  br i1 %exitcond252.not, label %for.cond58.preheader, label %for.cond42.preheader, !llvm.loop !38

for.cond63.preheader:                             ; preds = %for.cond63.preheader.lr.ph, %for.inc125
  %11 = phi i32 [ %5, %for.cond63.preheader.lr.ph ], [ %43, %for.inc125 ]
  %12 = phi i32 [ %.pre262, %for.cond63.preheader.lr.ph ], [ %44, %for.inc125 ]
  %out.0249 = phi ptr [ %in, %for.cond63.preheader.lr.ph ], [ %out.1.lcssa, %for.inc125 ]
  %i.1248 = phi i32 [ %mask_size.0, %for.cond63.preheader.lr.ph ], [ %inc126.pre-phi, %for.inc125 ]
  %sub64241 = sub nsw i32 %12, %mask_size.0
  %cmp65242 = icmp slt i32 %mask_size.0, %sub64241
  br i1 %cmp65242, label %for.body67.lr.ph, label %for.cond63.preheader.for.inc125_crit_edge

for.cond63.preheader.for.inc125_crit_edge:        ; preds = %for.cond63.preheader
  %.pre264 = add nsw i32 %i.1248, 1
  br label %for.inc125

for.body67.lr.ph:                                 ; preds = %for.cond63.preheader
  %sub68 = sub nsw i32 %i.1248, %mask_size.0
  %sub.i = add nsw i32 %i.1248, -1
  %add32.i = add nsw i32 %i.1248, 1
  br label %for.body67

for.body67:                                       ; preds = %for.body67.lr.ph, %for.inc122
  %indvars.iv256 = phi i64 [ %10, %for.body67.lr.ph ], [ %indvars.iv.next257, %for.inc122 ]
  %13 = phi i32 [ %12, %for.body67.lr.ph ], [ %41, %for.inc122 ]
  %out.1244 = phi ptr [ %out.0249, %for.body67.lr.ph ], [ %out.2, %for.inc122 ]
  %14 = load ptr, ptr %in.addr, align 8, !tbaa !18
  %mul74 = mul nsw i32 %13, %i.1248
  %15 = sext i32 %mul74 to i64
  %16 = getelementptr i8, ptr %14, i64 %indvars.iv256
  %arrayidx = getelementptr i8, ptr %16, i64 %15
  %17 = load i8, ptr %arrayidx, align 1, !tbaa !24
  %conv76 = zext i8 %17 to i32
  %idx.ext77 = zext i8 %17 to i64
  %add.ptr78 = getelementptr inbounds nuw i8, ptr %bp, i64 %idx.ext77
  br i1 %cmp39.not219, label %if.else115, label %for.cond85.preheader.preheader

for.cond85.preheader.preheader:                   ; preds = %for.body67
  %mul69 = mul nsw i32 %13, %sub68
  %idx.ext = sext i32 %mul69 to i64
  %add.ptr = getelementptr inbounds i8, ptr %14, i64 %idx.ext
  %add.ptr71 = getelementptr inbounds i8, ptr %add.ptr, i64 %indvars.iv256
  %add.ptr73 = getelementptr inbounds i8, ptr %add.ptr71, i64 %idx.neg
  br label %for.cond85.preheader

for.cond85.preheader:                             ; preds = %for.cond85.preheader.preheader, %for.cond85.for.end103_crit_edge
  %total.0237 = phi i32 [ %add100, %for.cond85.for.end103_crit_edge ], [ 0, %for.cond85.preheader.preheader ]
  %dpt.2236 = phi ptr [ %scevgep253, %for.cond85.for.end103_crit_edge ], [ %call36, %for.cond85.preheader.preheader ]
  %ip.0235 = phi ptr [ %add.ptr105, %for.cond85.for.end103_crit_edge ], [ %add.ptr73, %for.cond85.preheader.preheader ]
  %area.0234 = phi i32 [ %add98, %for.cond85.for.end103_crit_edge ], [ 0, %for.cond85.preheader.preheader ]
  %y.0233 = phi i32 [ %inc107, %for.cond85.for.end103_crit_edge ], [ %sub38, %for.cond85.preheader.preheader ]
  br label %for.body88

for.body88:                                       ; preds = %for.cond85.preheader, %for.body88
  %total.1227 = phi i32 [ %total.0237, %for.cond85.preheader ], [ %add100, %for.body88 ]
  %dpt.3226 = phi ptr [ %dpt.2236, %for.cond85.preheader ], [ %incdec.ptr91, %for.body88 ]
  %ip.1225 = phi ptr [ %ip.0235, %for.cond85.preheader ], [ %incdec.ptr89, %for.body88 ]
  %area.1224 = phi i32 [ %area.0234, %for.cond85.preheader ], [ %add98, %for.body88 ]
  %x.0223 = phi i32 [ %sub38, %for.cond85.preheader ], [ %inc102, %for.body88 ]
  %incdec.ptr89 = getelementptr inbounds nuw i8, ptr %ip.1225, i64 1
  %18 = load i8, ptr %ip.1225, align 1, !tbaa !24
  %conv90 = zext i8 %18 to i32
  %incdec.ptr91 = getelementptr inbounds nuw i8, ptr %dpt.3226, i64 1
  %19 = load i8, ptr %dpt.3226, align 1, !tbaa !24
  %conv92 = zext i8 %19 to i32
  %idx.ext93 = zext i8 %18 to i64
  %idx.neg94 = sub nsw i64 0, %idx.ext93
  %add.ptr95 = getelementptr inbounds i8, ptr %add.ptr78, i64 %idx.neg94
  %20 = load i8, ptr %add.ptr95, align 1, !tbaa !24
  %conv96 = zext i8 %20 to i32
  %mul97 = mul nuw nsw i32 %conv96, %conv92
  %add98 = add nsw i32 %mul97, %area.1224
  %mul99 = mul nuw nsw i32 %mul97, %conv90
  %add100 = add nsw i32 %mul99, %total.1227
  %inc102 = add i32 %x.0223, 1
  %exitcond254.not = icmp eq i32 %x.0223, %mask_size.0
  br i1 %exitcond254.not, label %for.cond85.for.end103_crit_edge, label %for.body88, !llvm.loop !39

for.cond85.for.end103_crit_edge:                  ; preds = %for.body88
  %scevgep = getelementptr i8, ptr %ip.0235, i64 %9
  %scevgep253 = getelementptr i8, ptr %dpt.2236, i64 %9
  %add.ptr105 = getelementptr inbounds i8, ptr %scevgep, i64 %idx.ext104
  %inc107 = add i32 %y.0233, 1
  %exitcond255.not = icmp eq i32 %y.0233, %mask_size.0
  br i1 %exitcond255.not, label %for.end108, label %for.cond85.preheader, !llvm.loop !40

for.end108:                                       ; preds = %for.cond85.for.end103_crit_edge
  %21 = add nsw i32 %add98, -10000
  %cmp110 = icmp eq i32 %21, 0
  br i1 %cmp110, label %if.then112, label %if.else115

if.then112:                                       ; preds = %for.end108
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %p.i) #22
  %mul.i = mul nsw i32 %13, %sub.i
  %22 = sext i32 %mul.i to i64
  %23 = getelementptr i8, ptr %14, i64 %indvars.iv256
  %24 = getelementptr i8, ptr %23, i64 %22
  %arrayidx.i = getelementptr i8, ptr %24, i64 -1
  %25 = load <2 x i8>, ptr %arrayidx.i, align 1, !tbaa !24
  %26 = zext <2 x i8> %25 to <2 x i32>
  store <2 x i32> %26, ptr %p.i, align 16, !tbaa !16
  %arrayidx15.i = getelementptr i8, ptr %24, i64 1
  %27 = load i8, ptr %arrayidx15.i, align 1, !tbaa !24
  %conv16.i = zext i8 %27 to i32
  store i32 %conv16.i, ptr %arrayidx17.i, align 8, !tbaa !16
  %arrayidx22.i = getelementptr i8, ptr %arrayidx, i64 -1
  %28 = load i8, ptr %arrayidx22.i, align 1, !tbaa !24
  %conv23.i = zext i8 %28 to i32
  store i32 %conv23.i, ptr %arrayidx24.i, align 4, !tbaa !16
  %arrayidx29.i = getelementptr i8, ptr %arrayidx, i64 1
  %29 = load i8, ptr %arrayidx29.i, align 1, !tbaa !24
  %conv30.i = zext i8 %29 to i32
  store i32 %conv30.i, ptr %arrayidx31.i, align 16, !tbaa !16
  %mul33.i = mul nsw i32 %13, %add32.i
  %30 = sext i32 %mul33.i to i64
  %31 = getelementptr i8, ptr %14, i64 %indvars.iv256
  %32 = getelementptr i8, ptr %31, i64 %30
  %arrayidx37.i = getelementptr i8, ptr %32, i64 -1
  %33 = load <2 x i8>, ptr %arrayidx37.i, align 1, !tbaa !24
  %34 = zext <2 x i8> %33 to <2 x i32>
  store <2 x i32> %34, ptr %arrayidx39.i, align 4, !tbaa !16
  %arrayidx52.i = getelementptr i8, ptr %32, i64 1
  %35 = load i8, ptr %arrayidx52.i, align 1, !tbaa !24
  %conv53.i = zext i8 %35 to i32
  store i32 %conv53.i, ptr %arrayidx54.i, align 4, !tbaa !16
  br label %for.body60.preheader.i

for.body60.preheader.i:                           ; preds = %for.inc78.i, %if.then112
  %indvars.iv45.i = phi i64 [ 7, %if.then112 ], [ %indvars.iv.next46.i, %for.inc78.i ]
  %k.041.i = phi i32 [ 0, %if.then112 ], [ %inc79.i, %for.inc78.i ]
  %.pre.i = load i32, ptr %p.i, align 16, !tbaa !16
  br label %for.body60.i

for.body60.i:                                     ; preds = %for.inc.i, %for.body60.preheader.i
  %36 = phi i32 [ %.pre.i, %for.body60.preheader.i ], [ %38, %for.inc.i ]
  %indvars.iv.i = phi i64 [ 0, %for.body60.preheader.i ], [ %indvars.iv.next.i, %for.inc.i ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %arrayidx65.i = getelementptr inbounds nuw [8 x i32], ptr %p.i, i64 0, i64 %indvars.iv.next.i
  %37 = load i32, ptr %arrayidx65.i, align 4, !tbaa !16
  %cmp66.i = icmp sgt i32 %36, %37
  br i1 %cmp66.i, label %if.then.i, label %for.inc.i

if.then.i:                                        ; preds = %for.body60.i
  %arrayidx62.i = getelementptr inbounds nuw [8 x i32], ptr %p.i, i64 0, i64 %indvars.iv.i
  store i32 %37, ptr %arrayidx62.i, align 4, !tbaa !16
  store i32 %36, ptr %arrayidx65.i, align 4, !tbaa !16
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body60.i
  %38 = phi i32 [ %37, %for.body60.i ], [ %36, %if.then.i ]
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %indvars.iv45.i
  br i1 %exitcond.not.i, label %for.inc78.i, label %for.body60.i, !llvm.loop !31

for.inc78.i:                                      ; preds = %for.inc.i
  %inc79.i = add nuw nsw i32 %k.041.i, 1
  %indvars.iv.next46.i = add nsw i64 %indvars.iv45.i, -1
  %exitcond48.not.i = icmp eq i32 %inc79.i, 7
  br i1 %exitcond48.not.i, label %median.exit, label %for.body60.preheader.i, !llvm.loop !32

median.exit:                                      ; preds = %for.inc78.i
  %39 = load i32, ptr %arrayidx24.i, align 4, !tbaa !16
  %40 = load i32, ptr %arrayidx31.i, align 16, !tbaa !16
  %add83.i = add nsw i32 %40, %39
  %div.i = sdiv i32 %add83.i, 2
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %p.i) #22
  br label %for.inc122

if.else115:                                       ; preds = %for.body67, %for.end108
  %total.0.lcssa270 = phi i32 [ %add100, %for.end108 ], [ 0, %for.body67 ]
  %area.0.lcssa269 = phi i32 [ %21, %for.end108 ], [ -10000, %for.body67 ]
  %mul116.neg = mul nsw i32 %conv76, -10000
  %sub117 = add i32 %total.0.lcssa270, %mul116.neg
  %div118 = sdiv i32 %sub117, %area.0.lcssa269
  br label %for.inc122

for.inc122:                                       ; preds = %median.exit, %if.else115
  %storemerge154.in = phi i32 [ %div118, %if.else115 ], [ %div.i, %median.exit ]
  %storemerge154 = trunc i32 %storemerge154.in to i8
  %out.2 = getelementptr inbounds nuw i8, ptr %out.1244, i64 1
  store i8 %storemerge154, ptr %out.1244, align 1, !tbaa !24
  %indvars.iv.next257 = add nsw i64 %indvars.iv256, 1
  %41 = load i32, ptr %x_size.addr, align 4, !tbaa !16
  %sub64 = sub nsw i32 %41, %mask_size.0
  %42 = sext i32 %sub64 to i64
  %cmp65 = icmp slt i64 %indvars.iv.next257, %42
  br i1 %cmp65, label %for.body67, label %for.inc125.loopexit, !llvm.loop !41

for.inc125.loopexit:                              ; preds = %for.inc122
  %.pre263 = load i32, ptr %y_size.addr, align 4, !tbaa !16
  br label %for.inc125

for.inc125:                                       ; preds = %for.cond63.preheader.for.inc125_crit_edge, %for.inc125.loopexit
  %inc126.pre-phi = phi i32 [ %.pre264, %for.cond63.preheader.for.inc125_crit_edge ], [ %add32.i, %for.inc125.loopexit ]
  %43 = phi i32 [ %11, %for.cond63.preheader.for.inc125_crit_edge ], [ %.pre263, %for.inc125.loopexit ]
  %44 = phi i32 [ %12, %for.cond63.preheader.for.inc125_crit_edge ], [ %41, %for.inc125.loopexit ]
  %out.1.lcssa = phi ptr [ %out.0249, %for.cond63.preheader.for.inc125_crit_edge ], [ %out.2, %for.inc125.loopexit ]
  %sub59 = sub nsw i32 %43, %mask_size.0
  %cmp60 = icmp slt i32 %inc126.pre-phi, %sub59
  br i1 %cmp60, label %for.cond63.preheader, label %for.end127, !llvm.loop !42

for.end127:                                       ; preds = %for.inc125, %for.cond58.preheader
  tail call void @free(ptr noundef %call36) #22
  br label %if.end256

for.cond134.preheader:                            ; preds = %for.cond134.preheader.lr.ph, %for.inc253
  %45 = phi i32 [ %88, %for.inc253 ], [ %0, %for.cond134.preheader.lr.ph ]
  %46 = phi i32 [ %89, %for.inc253 ], [ %1, %for.cond134.preheader.lr.ph ]
  %out.3214 = phi ptr [ %out.4.lcssa, %for.inc253 ], [ %in, %for.cond134.preheader.lr.ph ]
  %i.2213 = phi i32 [ %inc254.pre-phi, %for.inc253 ], [ 1, %for.cond134.preheader.lr.ph ]
  %cmp136208 = icmp sgt i32 %46, 2
  br i1 %cmp136208, label %for.body138.lr.ph, label %for.cond134.preheader.for.inc253_crit_edge

for.cond134.preheader.for.inc253_crit_edge:       ; preds = %for.cond134.preheader
  %.pre265 = add nuw nsw i32 %i.2213, 1
  br label %for.inc253

for.body138.lr.ph:                                ; preds = %for.cond134.preheader
  %sub139 = add nsw i32 %i.2213, -1
  %add32.i175 = add nuw nsw i32 %i.2213, 1
  br label %for.body138

for.body138:                                      ; preds = %for.body138.lr.ph, %for.inc250
  %indvars.iv = phi i64 [ 1, %for.body138.lr.ph ], [ %indvars.iv.next, %for.inc250 ]
  %47 = phi i32 [ %46, %for.body138.lr.ph ], [ %86, %for.inc250 ]
  %out.4210 = phi ptr [ %out.3214, %for.body138.lr.ph ], [ %out.5, %for.inc250 ]
  %48 = load ptr, ptr %in.addr, align 8, !tbaa !18
  %mul140 = mul nsw i32 %47, %sub139
  %idx.ext141 = sext i32 %mul140 to i64
  %add.ptr142 = getelementptr inbounds i8, ptr %48, i64 %idx.ext141
  %add.ptr144 = getelementptr inbounds nuw i8, ptr %add.ptr142, i64 %indvars.iv
  %add.ptr145 = getelementptr inbounds i8, ptr %add.ptr144, i64 -1
  %mul146 = mul nsw i32 %47, %i.2213
  %49 = trunc nuw nsw i64 %indvars.iv to i32
  %add147 = add nsw i32 %mul146, %49
  %idxprom148 = sext i32 %add147 to i64
  %arrayidx149 = getelementptr inbounds i8, ptr %48, i64 %idxprom148
  %50 = load i8, ptr %arrayidx149, align 1, !tbaa !24
  %idx.ext151 = zext i8 %50 to i64
  %add.ptr152 = getelementptr inbounds nuw i8, ptr %bp, i64 %idx.ext151
  %51 = load i8, ptr %add.ptr145, align 1, !tbaa !24
  %idx.ext155 = zext i8 %51 to i64
  %idx.neg156 = sub nsw i64 0, %idx.ext155
  %add.ptr157 = getelementptr inbounds i8, ptr %add.ptr152, i64 %idx.neg156
  %52 = load i8, ptr %add.ptr157, align 1, !tbaa !24
  %conv158 = zext i8 %52 to i32
  %incdec.ptr162 = getelementptr inbounds nuw i8, ptr %add.ptr144, i64 1
  %53 = load i8, ptr %add.ptr144, align 1, !tbaa !24
  %idx.ext164 = zext i8 %53 to i64
  %idx.neg165 = sub nsw i64 0, %idx.ext164
  %add.ptr166 = getelementptr inbounds i8, ptr %add.ptr152, i64 %idx.neg165
  %54 = load i8, ptr %add.ptr166, align 1, !tbaa !24
  %conv167 = zext i8 %54 to i32
  %55 = load i8, ptr %incdec.ptr162, align 1, !tbaa !24
  %idx.ext172 = zext i8 %55 to i64
  %idx.neg173 = sub nsw i64 0, %idx.ext172
  %add.ptr174 = getelementptr inbounds i8, ptr %add.ptr152, i64 %idx.neg173
  %56 = load i8, ptr %add.ptr174, align 1, !tbaa !24
  %conv175 = zext i8 %56 to i32
  %sub179 = add nsw i32 %47, -2
  %idx.ext180 = sext i32 %sub179 to i64
  %add.ptr181 = getelementptr inbounds i8, ptr %incdec.ptr162, i64 %idx.ext180
  %incdec.ptr182 = getelementptr inbounds nuw i8, ptr %add.ptr181, i64 1
  %57 = load i8, ptr %add.ptr181, align 1, !tbaa !24
  %idx.ext184 = zext i8 %57 to i64
  %idx.neg185 = sub nsw i64 0, %idx.ext184
  %add.ptr186 = getelementptr inbounds i8, ptr %add.ptr152, i64 %idx.neg185
  %58 = load i8, ptr %add.ptr186, align 1, !tbaa !24
  %conv187 = zext i8 %58 to i32
  %incdec.ptr191 = getelementptr inbounds nuw i8, ptr %add.ptr181, i64 2
  %59 = load i8, ptr %incdec.ptr182, align 1, !tbaa !24
  %idx.ext193 = zext i8 %59 to i64
  %idx.neg194 = sub nsw i64 0, %idx.ext193
  %add.ptr195 = getelementptr inbounds i8, ptr %add.ptr152, i64 %idx.neg194
  %60 = load i8, ptr %add.ptr195, align 1, !tbaa !24
  %conv196 = zext i8 %60 to i32
  %61 = load i8, ptr %incdec.ptr191, align 1, !tbaa !24
  %idx.ext201 = zext i8 %61 to i64
  %idx.neg202 = sub nsw i64 0, %idx.ext201
  %add.ptr203 = getelementptr inbounds i8, ptr %add.ptr152, i64 %idx.neg202
  %62 = load i8, ptr %add.ptr203, align 1, !tbaa !24
  %conv204 = zext i8 %62 to i32
  %add.ptr210 = getelementptr inbounds i8, ptr %incdec.ptr191, i64 %idx.ext180
  %incdec.ptr211 = getelementptr inbounds nuw i8, ptr %add.ptr210, i64 1
  %63 = load i8, ptr %add.ptr210, align 1, !tbaa !24
  %idx.ext213 = zext i8 %63 to i64
  %idx.neg214 = sub nsw i64 0, %idx.ext213
  %add.ptr215 = getelementptr inbounds i8, ptr %add.ptr152, i64 %idx.neg214
  %64 = load i8, ptr %add.ptr215, align 1, !tbaa !24
  %conv216 = zext i8 %64 to i32
  %incdec.ptr220 = getelementptr inbounds nuw i8, ptr %add.ptr210, i64 2
  %65 = load i8, ptr %incdec.ptr211, align 1, !tbaa !24
  %idx.ext222 = zext i8 %65 to i64
  %idx.neg223 = sub nsw i64 0, %idx.ext222
  %add.ptr224 = getelementptr inbounds i8, ptr %add.ptr152, i64 %idx.neg223
  %66 = load i8, ptr %add.ptr224, align 1, !tbaa !24
  %conv225 = zext i8 %66 to i32
  %67 = load i8, ptr %incdec.ptr220, align 1, !tbaa !24
  %idx.ext230 = zext i8 %67 to i64
  %idx.neg231 = sub nsw i64 0, %idx.ext230
  %add.ptr232 = getelementptr inbounds i8, ptr %add.ptr152, i64 %idx.neg231
  %68 = load i8, ptr %add.ptr232, align 1, !tbaa !24
  %conv233 = zext i8 %68 to i32
  %add168 = add nsw i32 %conv158, -100
  %add176 = add nsw i32 %add168, %conv167
  %add188 = add nsw i32 %add176, %conv175
  %add197 = add nsw i32 %add188, %conv187
  %add205 = add nsw i32 %add197, %conv196
  %add217 = add nsw i32 %add205, %conv204
  %add226 = add nsw i32 %add217, %conv216
  %add234 = add nsw i32 %add226, %conv225
  %sub237 = add nsw i32 %add234, %conv233
  %cmp238 = icmp eq i32 %sub237, 0
  br i1 %cmp238, label %if.then240, label %if.else243

if.then240:                                       ; preds = %for.body138
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %p.i156) #22
  %add.i159 = add nsw i32 %mul140, %49
  %69 = sext i32 %add.i159 to i64
  %70 = getelementptr i8, ptr %48, i64 %69
  %arrayidx.i160 = getelementptr i8, ptr %70, i64 -1
  %71 = load <2 x i8>, ptr %arrayidx.i160, align 1, !tbaa !24
  %72 = zext <2 x i8> %71 to <2 x i32>
  store <2 x i32> %72, ptr %p.i156, align 16, !tbaa !16
  %arrayidx15.i164 = getelementptr i8, ptr %70, i64 1
  %73 = load i8, ptr %arrayidx15.i164, align 1, !tbaa !24
  %conv16.i165 = zext i8 %73 to i32
  store i32 %conv16.i165, ptr %arrayidx17.i166, align 8, !tbaa !16
  %arrayidx22.i169 = getelementptr i8, ptr %arrayidx149, i64 -1
  %74 = load i8, ptr %arrayidx22.i169, align 1, !tbaa !24
  %conv23.i170 = zext i8 %74 to i32
  store i32 %conv23.i170, ptr %arrayidx24.i171, align 4, !tbaa !16
  %arrayidx29.i172 = getelementptr i8, ptr %arrayidx149, i64 1
  %75 = load i8, ptr %arrayidx29.i172, align 1, !tbaa !24
  %conv30.i173 = zext i8 %75 to i32
  store i32 %conv30.i173, ptr %arrayidx31.i174, align 16, !tbaa !16
  %mul33.i176 = mul nsw i32 %47, %add32.i175
  %add34.i177 = add nsw i32 %mul33.i176, %49
  %76 = sext i32 %add34.i177 to i64
  %77 = getelementptr i8, ptr %48, i64 %76
  %arrayidx37.i178 = getelementptr i8, ptr %77, i64 -1
  %78 = load <2 x i8>, ptr %arrayidx37.i178, align 1, !tbaa !24
  %79 = zext <2 x i8> %78 to <2 x i32>
  store <2 x i32> %79, ptr %arrayidx39.i180, align 4, !tbaa !16
  %arrayidx52.i183 = getelementptr i8, ptr %77, i64 1
  %80 = load i8, ptr %arrayidx52.i183, align 1, !tbaa !24
  %conv53.i184 = zext i8 %80 to i32
  store i32 %conv53.i184, ptr %arrayidx54.i185, align 4, !tbaa !16
  br label %for.body60.preheader.i186

for.body60.preheader.i186:                        ; preds = %for.inc78.i197, %if.then240
  %indvars.iv45.i187 = phi i64 [ 7, %if.then240 ], [ %indvars.iv.next46.i199, %for.inc78.i197 ]
  %k.041.i188 = phi i32 [ 0, %if.then240 ], [ %inc79.i198, %for.inc78.i197 ]
  %.pre.i189 = load i32, ptr %p.i156, align 16, !tbaa !16
  br label %for.body60.i190

for.body60.i190:                                  ; preds = %for.inc.i195, %for.body60.preheader.i186
  %81 = phi i32 [ %.pre.i189, %for.body60.preheader.i186 ], [ %83, %for.inc.i195 ]
  %indvars.iv.i191 = phi i64 [ 0, %for.body60.preheader.i186 ], [ %indvars.iv.next.i192, %for.inc.i195 ]
  %indvars.iv.next.i192 = add nuw nsw i64 %indvars.iv.i191, 1
  %arrayidx65.i193 = getelementptr inbounds nuw [8 x i32], ptr %p.i156, i64 0, i64 %indvars.iv.next.i192
  %82 = load i32, ptr %arrayidx65.i193, align 4, !tbaa !16
  %cmp66.i194 = icmp sgt i32 %81, %82
  br i1 %cmp66.i194, label %if.then.i204, label %for.inc.i195

if.then.i204:                                     ; preds = %for.body60.i190
  %arrayidx62.i205 = getelementptr inbounds nuw [8 x i32], ptr %p.i156, i64 0, i64 %indvars.iv.i191
  store i32 %82, ptr %arrayidx62.i205, align 4, !tbaa !16
  store i32 %81, ptr %arrayidx65.i193, align 4, !tbaa !16
  br label %for.inc.i195

for.inc.i195:                                     ; preds = %if.then.i204, %for.body60.i190
  %83 = phi i32 [ %82, %for.body60.i190 ], [ %81, %if.then.i204 ]
  %exitcond.not.i196 = icmp eq i64 %indvars.iv.next.i192, %indvars.iv45.i187
  br i1 %exitcond.not.i196, label %for.inc78.i197, label %for.body60.i190, !llvm.loop !31

for.inc78.i197:                                   ; preds = %for.inc.i195
  %inc79.i198 = add nuw nsw i32 %k.041.i188, 1
  %indvars.iv.next46.i199 = add nsw i64 %indvars.iv45.i187, -1
  %exitcond48.not.i200 = icmp eq i32 %inc79.i198, 7
  br i1 %exitcond48.not.i200, label %median.exit206, label %for.body60.preheader.i186, !llvm.loop !32

median.exit206:                                   ; preds = %for.inc78.i197
  %84 = load i32, ptr %arrayidx24.i171, align 4, !tbaa !16
  %85 = load i32, ptr %arrayidx31.i174, align 16, !tbaa !16
  %add83.i201 = add nsw i32 %85, %84
  %div.i202 = sdiv i32 %add83.i201, 2
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %p.i156) #22
  br label %for.inc250

if.else243:                                       ; preds = %for.body138
  %conv154 = zext i8 %51 to i32
  %mul160 = mul nuw nsw i32 %conv158, %conv154
  %conv163 = zext i8 %53 to i32
  %mul169 = mul nuw nsw i32 %conv167, %conv163
  %conv171 = zext i8 %55 to i32
  %mul177 = mul nuw nsw i32 %conv175, %conv171
  %conv183 = zext i8 %57 to i32
  %mul189 = mul nuw nsw i32 %conv187, %conv183
  %conv192 = zext i8 %59 to i32
  %mul198 = mul nuw nsw i32 %conv196, %conv192
  %conv200 = zext i8 %61 to i32
  %mul206 = mul nuw nsw i32 %conv204, %conv200
  %conv212 = zext i8 %63 to i32
  %mul218 = mul nuw nsw i32 %conv216, %conv212
  %conv221 = zext i8 %65 to i32
  %mul227 = mul nuw nsw i32 %conv225, %conv221
  %conv229 = zext i8 %67 to i32
  %mul235 = mul nuw nsw i32 %conv233, %conv229
  %conv150 = zext i8 %50 to i32
  %mul244.neg = mul nsw i32 %conv150, -100
  %add170 = add nsw i32 %mul160, %mul244.neg
  %add178 = add nsw i32 %add170, %mul169
  %add190 = add nsw i32 %add178, %mul177
  %add199 = add nsw i32 %add190, %mul189
  %add207 = add nsw i32 %add199, %mul198
  %add219 = add nsw i32 %add207, %mul206
  %add228 = add nsw i32 %add219, %mul218
  %add236 = add nsw i32 %add228, %mul227
  %sub245 = add nsw i32 %add236, %mul235
  %div246 = sdiv i32 %sub245, %sub237
  br label %for.inc250

for.inc250:                                       ; preds = %median.exit206, %if.else243
  %storemerge.in = phi i32 [ %div246, %if.else243 ], [ %div.i202, %median.exit206 ]
  %storemerge = trunc i32 %storemerge.in to i8
  %out.5 = getelementptr inbounds nuw i8, ptr %out.4210, i64 1
  store i8 %storemerge, ptr %out.4210, align 1, !tbaa !24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %86 = load i32, ptr %x_size.addr, align 4, !tbaa !16
  %sub135 = add nsw i32 %86, -1
  %87 = sext i32 %sub135 to i64
  %cmp136 = icmp slt i64 %indvars.iv.next, %87
  br i1 %cmp136, label %for.body138, label %for.inc253.loopexit, !llvm.loop !43

for.inc253.loopexit:                              ; preds = %for.inc250
  %.pre = load i32, ptr %y_size.addr, align 4, !tbaa !16
  br label %for.inc253

for.inc253:                                       ; preds = %for.cond134.preheader.for.inc253_crit_edge, %for.inc253.loopexit
  %inc254.pre-phi = phi i32 [ %.pre265, %for.cond134.preheader.for.inc253_crit_edge ], [ %add32.i175, %for.inc253.loopexit ]
  %88 = phi i32 [ %45, %for.cond134.preheader.for.inc253_crit_edge ], [ %.pre, %for.inc253.loopexit ]
  %89 = phi i32 [ %46, %for.cond134.preheader.for.inc253_crit_edge ], [ %86, %for.inc253.loopexit ]
  %out.4.lcssa = phi ptr [ %out.3214, %for.cond134.preheader.for.inc253_crit_edge ], [ %out.5, %for.inc253.loopexit ]
  %sub130 = add nsw i32 %88, -1
  %cmp131 = icmp slt i32 %inc254.pre-phi, %sub130
  br i1 %cmp131, label %for.cond134.preheader, label %if.end256, !llvm.loop !44

if.end256:                                        ; preds = %for.inc253, %for.cond134.preheader.lr.ph, %for.cond129.preheader, %for.end127
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @edge_draw(ptr noundef writeonly captures(none) %in, ptr noundef %mid, i32 noundef %x_size, i32 noundef %y_size, i32 noundef %drawing_mode) local_unnamed_addr #8 {
entry:
  %in37 = ptrtoint ptr %in to i64
  %cmp = icmp eq i32 %drawing_mode, 0
  %mul = mul i32 %y_size, %x_size
  br i1 %cmp, label %for.cond.preheader, label %if.end18

for.cond.preheader:                               ; preds = %entry
  %cmp128 = icmp sgt i32 %mul, 0
  br i1 %cmp128, label %for.body.lr.ph, label %for.end36

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %sub.ptr.rhs.cast = ptrtoint ptr %mid to i64
  %idx.ext = sext i32 %x_size to i64
  %idx.neg = sub nsw i64 0, %idx.ext
  %invariant.gep = getelementptr i8, ptr %in, i64 %idx.neg
  %sub = add nsw i32 %x_size, -2
  %idx.ext8 = sext i32 %sub to i64
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %if.end
  %midp.030 = phi ptr [ %mid, %for.body.lr.ph ], [ %incdec.ptr17, %if.end ]
  %i.029 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end ]
  %0 = load i8, ptr %midp.030, align 1, !tbaa !24
  %cmp2 = icmp ult i8 %0, 8
  br i1 %cmp2, label %if.then4, label %if.end

if.then4:                                         ; preds = %for.body
  %sub.ptr.lhs.cast = ptrtoint ptr %midp.030 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %gep = getelementptr i8, ptr %invariant.gep, i64 %sub.ptr.sub
  %add.ptr6 = getelementptr inbounds i8, ptr %gep, i64 -1
  store i8 -1, ptr %add.ptr6, align 1, !tbaa !24
  %incdec.ptr7 = getelementptr inbounds nuw i8, ptr %gep, i64 1
  store i8 -1, ptr %gep, align 1, !tbaa !24
  store i8 -1, ptr %incdec.ptr7, align 1, !tbaa !24
  %add.ptr9 = getelementptr inbounds i8, ptr %incdec.ptr7, i64 %idx.ext8
  store i8 -1, ptr %add.ptr9, align 1, !tbaa !24
  %incdec.ptr11 = getelementptr inbounds nuw i8, ptr %add.ptr9, i64 2
  store i8 -1, ptr %incdec.ptr11, align 1, !tbaa !24
  %add.ptr14 = getelementptr inbounds i8, ptr %incdec.ptr11, i64 %idx.ext8
  %incdec.ptr15 = getelementptr inbounds nuw i8, ptr %add.ptr14, i64 1
  store i8 -1, ptr %add.ptr14, align 1, !tbaa !24
  %incdec.ptr16 = getelementptr inbounds nuw i8, ptr %add.ptr14, i64 2
  store i8 -1, ptr %incdec.ptr15, align 1, !tbaa !24
  store i8 -1, ptr %incdec.ptr16, align 1, !tbaa !24
  br label %if.end

if.end:                                           ; preds = %if.then4, %for.body
  %incdec.ptr17 = getelementptr inbounds nuw i8, ptr %midp.030, i64 1
  %inc = add nuw nsw i32 %i.029, 1
  %exitcond.not = icmp eq i32 %inc, %mul
  br i1 %exitcond.not, label %if.end18, label %for.body, !llvm.loop !46

if.end18:                                         ; preds = %if.end, %entry
  %cmp2131 = icmp sgt i32 %mul, 0
  br i1 %cmp2131, label %iter.check, label %for.end36

iter.check:                                       ; preds = %if.end18
  %sub.ptr.rhs.cast29 = ptrtoint ptr %mid to i64
  %1 = zext nneg i32 %mul to i64
  %min.iters.check = icmp ult i32 %mul, 4
  %2 = sub i64 %in37, %sub.ptr.rhs.cast29
  %diff.check = icmp ult i64 %2, 16
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %for.body23.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check38 = icmp ult i32 %mul, 16
  br i1 %min.iters.check38, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %1, 2147483632
  %invariant.gep104 = getelementptr i8, ptr %in, i64 1
  %invariant.gep106 = getelementptr i8, ptr %in, i64 2
  %invariant.gep108 = getelementptr i8, ptr %in, i64 3
  %invariant.gep110 = getelementptr i8, ptr %in, i64 4
  %invariant.gep112 = getelementptr i8, ptr %in, i64 5
  %invariant.gep114 = getelementptr i8, ptr %in, i64 6
  %invariant.gep116 = getelementptr i8, ptr %in, i64 7
  %invariant.gep118 = getelementptr i8, ptr %in, i64 8
  %invariant.gep120 = getelementptr i8, ptr %in, i64 9
  %invariant.gep122 = getelementptr i8, ptr %in, i64 10
  %invariant.gep124 = getelementptr i8, ptr %in, i64 11
  %invariant.gep126 = getelementptr i8, ptr %in, i64 12
  %invariant.gep128 = getelementptr i8, ptr %in, i64 13
  %invariant.gep130 = getelementptr i8, ptr %in, i64 14
  %invariant.gep132 = getelementptr i8, ptr %in, i64 15
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue83, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue83 ]
  %next.gep = getelementptr i8, ptr %mid, i64 %index
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !24
  %3 = icmp ult <16 x i8> %wide.load, splat (i8 8)
  %4 = extractelement <16 x i1> %3, i64 0
  br i1 %4, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  %5 = getelementptr inbounds i8, ptr %in, i64 %index
  store i8 0, ptr %5, align 1, !tbaa !24
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %6 = extractelement <16 x i1> %3, i64 1
  br i1 %6, label %pred.store.if54, label %pred.store.continue55

pred.store.if54:                                  ; preds = %pred.store.continue
  %gep105 = getelementptr i8, ptr %invariant.gep104, i64 %index
  store i8 0, ptr %gep105, align 1, !tbaa !24
  br label %pred.store.continue55

pred.store.continue55:                            ; preds = %pred.store.if54, %pred.store.continue
  %7 = extractelement <16 x i1> %3, i64 2
  br i1 %7, label %pred.store.if56, label %pred.store.continue57

pred.store.if56:                                  ; preds = %pred.store.continue55
  %gep107 = getelementptr i8, ptr %invariant.gep106, i64 %index
  store i8 0, ptr %gep107, align 1, !tbaa !24
  br label %pred.store.continue57

pred.store.continue57:                            ; preds = %pred.store.if56, %pred.store.continue55
  %8 = extractelement <16 x i1> %3, i64 3
  br i1 %8, label %pred.store.if58, label %pred.store.continue59

pred.store.if58:                                  ; preds = %pred.store.continue57
  %gep109 = getelementptr i8, ptr %invariant.gep108, i64 %index
  store i8 0, ptr %gep109, align 1, !tbaa !24
  br label %pred.store.continue59

pred.store.continue59:                            ; preds = %pred.store.if58, %pred.store.continue57
  %9 = extractelement <16 x i1> %3, i64 4
  br i1 %9, label %pred.store.if60, label %pred.store.continue61

pred.store.if60:                                  ; preds = %pred.store.continue59
  %gep111 = getelementptr i8, ptr %invariant.gep110, i64 %index
  store i8 0, ptr %gep111, align 1, !tbaa !24
  br label %pred.store.continue61

pred.store.continue61:                            ; preds = %pred.store.if60, %pred.store.continue59
  %10 = extractelement <16 x i1> %3, i64 5
  br i1 %10, label %pred.store.if62, label %pred.store.continue63

pred.store.if62:                                  ; preds = %pred.store.continue61
  %gep113 = getelementptr i8, ptr %invariant.gep112, i64 %index
  store i8 0, ptr %gep113, align 1, !tbaa !24
  br label %pred.store.continue63

pred.store.continue63:                            ; preds = %pred.store.if62, %pred.store.continue61
  %11 = extractelement <16 x i1> %3, i64 6
  br i1 %11, label %pred.store.if64, label %pred.store.continue65

pred.store.if64:                                  ; preds = %pred.store.continue63
  %gep115 = getelementptr i8, ptr %invariant.gep114, i64 %index
  store i8 0, ptr %gep115, align 1, !tbaa !24
  br label %pred.store.continue65

pred.store.continue65:                            ; preds = %pred.store.if64, %pred.store.continue63
  %12 = extractelement <16 x i1> %3, i64 7
  br i1 %12, label %pred.store.if66, label %pred.store.continue67

pred.store.if66:                                  ; preds = %pred.store.continue65
  %gep117 = getelementptr i8, ptr %invariant.gep116, i64 %index
  store i8 0, ptr %gep117, align 1, !tbaa !24
  br label %pred.store.continue67

pred.store.continue67:                            ; preds = %pred.store.if66, %pred.store.continue65
  %13 = extractelement <16 x i1> %3, i64 8
  br i1 %13, label %pred.store.if68, label %pred.store.continue69

pred.store.if68:                                  ; preds = %pred.store.continue67
  %gep119 = getelementptr i8, ptr %invariant.gep118, i64 %index
  store i8 0, ptr %gep119, align 1, !tbaa !24
  br label %pred.store.continue69

pred.store.continue69:                            ; preds = %pred.store.if68, %pred.store.continue67
  %14 = extractelement <16 x i1> %3, i64 9
  br i1 %14, label %pred.store.if70, label %pred.store.continue71

pred.store.if70:                                  ; preds = %pred.store.continue69
  %gep121 = getelementptr i8, ptr %invariant.gep120, i64 %index
  store i8 0, ptr %gep121, align 1, !tbaa !24
  br label %pred.store.continue71

pred.store.continue71:                            ; preds = %pred.store.if70, %pred.store.continue69
  %15 = extractelement <16 x i1> %3, i64 10
  br i1 %15, label %pred.store.if72, label %pred.store.continue73

pred.store.if72:                                  ; preds = %pred.store.continue71
  %gep123 = getelementptr i8, ptr %invariant.gep122, i64 %index
  store i8 0, ptr %gep123, align 1, !tbaa !24
  br label %pred.store.continue73

pred.store.continue73:                            ; preds = %pred.store.if72, %pred.store.continue71
  %16 = extractelement <16 x i1> %3, i64 11
  br i1 %16, label %pred.store.if74, label %pred.store.continue75

pred.store.if74:                                  ; preds = %pred.store.continue73
  %gep125 = getelementptr i8, ptr %invariant.gep124, i64 %index
  store i8 0, ptr %gep125, align 1, !tbaa !24
  br label %pred.store.continue75

pred.store.continue75:                            ; preds = %pred.store.if74, %pred.store.continue73
  %17 = extractelement <16 x i1> %3, i64 12
  br i1 %17, label %pred.store.if76, label %pred.store.continue77

pred.store.if76:                                  ; preds = %pred.store.continue75
  %gep127 = getelementptr i8, ptr %invariant.gep126, i64 %index
  store i8 0, ptr %gep127, align 1, !tbaa !24
  br label %pred.store.continue77

pred.store.continue77:                            ; preds = %pred.store.if76, %pred.store.continue75
  %18 = extractelement <16 x i1> %3, i64 13
  br i1 %18, label %pred.store.if78, label %pred.store.continue79

pred.store.if78:                                  ; preds = %pred.store.continue77
  %gep129 = getelementptr i8, ptr %invariant.gep128, i64 %index
  store i8 0, ptr %gep129, align 1, !tbaa !24
  br label %pred.store.continue79

pred.store.continue79:                            ; preds = %pred.store.if78, %pred.store.continue77
  %19 = extractelement <16 x i1> %3, i64 14
  br i1 %19, label %pred.store.if80, label %pred.store.continue81

pred.store.if80:                                  ; preds = %pred.store.continue79
  %gep131 = getelementptr i8, ptr %invariant.gep130, i64 %index
  store i8 0, ptr %gep131, align 1, !tbaa !24
  br label %pred.store.continue81

pred.store.continue81:                            ; preds = %pred.store.if80, %pred.store.continue79
  %20 = extractelement <16 x i1> %3, i64 15
  br i1 %20, label %pred.store.if82, label %pred.store.continue83

pred.store.if82:                                  ; preds = %pred.store.continue81
  %gep133 = getelementptr i8, ptr %invariant.gep132, i64 %index
  store i8 0, ptr %gep133, align 1, !tbaa !24
  br label %pred.store.continue83

pred.store.continue83:                            ; preds = %pred.store.if82, %pred.store.continue81
  %index.next = add nuw i64 %index, 16
  %21 = icmp eq i64 %index.next, %n.vec
  br i1 %21, label %middle.block, label %vector.body, !llvm.loop !47

middle.block:                                     ; preds = %pred.store.continue83
  %cmp.n = icmp eq i64 %n.vec, %1
  br i1 %cmp.n, label %for.end36, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %ind.end = getelementptr i8, ptr %mid, i64 %n.vec
  %ind.end103 = trunc nuw nsw i64 %n.vec to i32
  %n.vec.remaining = and i64 %1, 12
  %min.epilog.iters.check = icmp eq i64 %n.vec.remaining, 0
  br i1 %min.epilog.iters.check, label %for.body23.preheader, label %vec.epilog.ph

vec.epilog.ph:                                    ; preds = %vec.epilog.iter.check, %vector.main.loop.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec85 = and i64 %1, 2147483644
  %22 = getelementptr i8, ptr %mid, i64 %n.vec85
  %23 = trunc nuw nsw i64 %n.vec85 to i32
  %invariant.gep134 = getelementptr i8, ptr %in, i64 1
  %invariant.gep136 = getelementptr i8, ptr %in, i64 2
  %invariant.gep138 = getelementptr i8, ptr %in, i64 3
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %pred.store.continue99, %vec.epilog.ph
  %index86 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next100, %pred.store.continue99 ]
  %next.gep87 = getelementptr i8, ptr %mid, i64 %index86
  %wide.load91 = load <4 x i8>, ptr %next.gep87, align 1, !tbaa !24
  %24 = icmp ult <4 x i8> %wide.load91, splat (i8 8)
  %25 = extractelement <4 x i1> %24, i64 0
  br i1 %25, label %pred.store.if92, label %pred.store.continue93

pred.store.if92:                                  ; preds = %vec.epilog.vector.body
  %26 = getelementptr inbounds i8, ptr %in, i64 %index86
  store i8 0, ptr %26, align 1, !tbaa !24
  br label %pred.store.continue93

pred.store.continue93:                            ; preds = %pred.store.if92, %vec.epilog.vector.body
  %27 = extractelement <4 x i1> %24, i64 1
  br i1 %27, label %pred.store.if94, label %pred.store.continue95

pred.store.if94:                                  ; preds = %pred.store.continue93
  %gep135 = getelementptr i8, ptr %invariant.gep134, i64 %index86
  store i8 0, ptr %gep135, align 1, !tbaa !24
  br label %pred.store.continue95

pred.store.continue95:                            ; preds = %pred.store.if94, %pred.store.continue93
  %28 = extractelement <4 x i1> %24, i64 2
  br i1 %28, label %pred.store.if96, label %pred.store.continue97

pred.store.if96:                                  ; preds = %pred.store.continue95
  %gep137 = getelementptr i8, ptr %invariant.gep136, i64 %index86
  store i8 0, ptr %gep137, align 1, !tbaa !24
  br label %pred.store.continue97

pred.store.continue97:                            ; preds = %pred.store.if96, %pred.store.continue95
  %29 = extractelement <4 x i1> %24, i64 3
  br i1 %29, label %pred.store.if98, label %pred.store.continue99

pred.store.if98:                                  ; preds = %pred.store.continue97
  %gep139 = getelementptr i8, ptr %invariant.gep138, i64 %index86
  store i8 0, ptr %gep139, align 1, !tbaa !24
  br label %pred.store.continue99

pred.store.continue99:                            ; preds = %pred.store.if98, %pred.store.continue97
  %index.next100 = add nuw i64 %index86, 4
  %30 = icmp eq i64 %index.next100, %n.vec85
  br i1 %30, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !48

vec.epilog.middle.block:                          ; preds = %pred.store.continue99
  %cmp.n101 = icmp eq i64 %n.vec85, %1
  br i1 %cmp.n101, label %for.end36, label %for.body23.preheader

for.body23.preheader:                             ; preds = %vec.epilog.iter.check, %vec.epilog.middle.block, %iter.check
  %midp.133.ph = phi ptr [ %mid, %iter.check ], [ %ind.end, %vec.epilog.iter.check ], [ %22, %vec.epilog.middle.block ]
  %i.132.ph = phi i32 [ 0, %iter.check ], [ %ind.end103, %vec.epilog.iter.check ], [ %23, %vec.epilog.middle.block ]
  br label %for.body23

for.body23:                                       ; preds = %for.body23.preheader, %if.end32
  %midp.133 = phi ptr [ %incdec.ptr33, %if.end32 ], [ %midp.133.ph, %for.body23.preheader ]
  %i.132 = phi i32 [ %inc35, %if.end32 ], [ %i.132.ph, %for.body23.preheader ]
  %31 = load i8, ptr %midp.133, align 1, !tbaa !24
  %cmp25 = icmp ult i8 %31, 8
  br i1 %cmp25, label %if.then27, label %if.end32

if.then27:                                        ; preds = %for.body23
  %sub.ptr.lhs.cast28 = ptrtoint ptr %midp.133 to i64
  %sub.ptr.sub30 = sub i64 %sub.ptr.lhs.cast28, %sub.ptr.rhs.cast29
  %add.ptr31 = getelementptr inbounds i8, ptr %in, i64 %sub.ptr.sub30
  store i8 0, ptr %add.ptr31, align 1, !tbaa !24
  br label %if.end32

if.end32:                                         ; preds = %if.then27, %for.body23
  %incdec.ptr33 = getelementptr inbounds nuw i8, ptr %midp.133, i64 1
  %inc35 = add nuw nsw i32 %i.132, 1
  %exitcond34.not = icmp eq i32 %inc35, %mul
  br i1 %exitcond34.not, label %for.end36, label %for.body23, !llvm.loop !49

for.end36:                                        ; preds = %if.end32, %middle.block, %vec.epilog.middle.block, %for.cond.preheader, %if.end18
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @susan_thin(ptr noundef readonly captures(none) %r, ptr noundef %mid, i32 noundef %x_size, i32 noundef %y_size) local_unnamed_addr #8 {
entry:
  %l = alloca [9 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %l) #22
  %sub = add nsw i32 %y_size, -4
  %cmp399 = icmp sgt i32 %y_size, 8
  br i1 %cmp399, label %for.cond1.preheader.lr.ph, label %for.end828

for.cond1.preheader.lr.ph:                        ; preds = %entry
  %sub2 = add nsw i32 %x_size, -4
  %invariant.gep = getelementptr i8, ptr %mid, i64 -1
  %cmp3392 = icmp sgt i32 %x_size, 8
  %idx.ext29 = sext i32 %x_size to i64
  %arrayidx97 = getelementptr inbounds nuw i8, ptr %l, i64 4
  %arrayidx104 = getelementptr inbounds nuw i8, ptr %l, i64 8
  %arrayidx110 = getelementptr inbounds nuw i8, ptr %l, i64 12
  %arrayidx111 = getelementptr inbounds nuw i8, ptr %l, i64 16
  %arrayidx117 = getelementptr inbounds nuw i8, ptr %l, i64 20
  %arrayidx124 = getelementptr inbounds nuw i8, ptr %l, i64 24
  %arrayidx130 = getelementptr inbounds nuw i8, ptr %l, i64 28
  %arrayidx137 = getelementptr inbounds nuw i8, ptr %l, i64 32
  br i1 %cmp3392, label %for.body4.us, label %for.end828

for.body4.us:                                     ; preds = %for.cond1.preheader.lr.ph, %for.body4.us.backedge
  %j.0396.us = phi i32 [ %j.0396.us.be, %for.body4.us.backedge ], [ 4, %for.cond1.preheader.lr.ph ]
  %i.1395.us = phi i32 [ %i.1395.us.be, %for.body4.us.backedge ], [ 4, %for.cond1.preheader.lr.ph ]
  %b.1394.us = phi i32 [ %b.6.us, %for.body4.us.backedge ], [ 0, %for.cond1.preheader.lr.ph ]
  %a.1393.us = phi i32 [ %a.6.us, %for.body4.us.backedge ], [ 0, %for.cond1.preheader.lr.ph ]
  %mul.us = mul nsw i32 %i.1395.us, %x_size
  %add.us = add nsw i32 %mul.us, %j.0396.us
  %idxprom.us = sext i32 %add.us to i64
  %arrayidx.us = getelementptr inbounds i8, ptr %mid, i64 %idxprom.us
  %0 = load i8, ptr %arrayidx.us, align 1, !tbaa !24
  %cmp5.us = icmp ult i8 %0, 8
  br i1 %cmp5.us, label %if.then.us, label %for.inc823.us

if.then.us:                                       ; preds = %for.body4.us
  %arrayidx10.us = getelementptr inbounds i32, ptr %r, i64 %idxprom.us
  %1 = load i32, ptr %arrayidx10.us, align 4, !tbaa !16
  %sub11.us = add i32 %i.1395.us, -1
  %mul12.us = mul nsw i32 %sub11.us, %x_size
  %idx.ext.us = sext i32 %mul12.us to i64
  %add.ptr.us = getelementptr inbounds i8, ptr %mid, i64 %idx.ext.us
  %idx.ext13.us = sext i32 %j.0396.us to i64
  %add.ptr14.us = getelementptr inbounds i8, ptr %add.ptr.us, i64 %idx.ext13.us
  %add.ptr15.us = getelementptr inbounds i8, ptr %add.ptr14.us, i64 -1
  %2 = load i8, ptr %add.ptr15.us, align 1, !tbaa !24
  %cmp17.us = icmp ult i8 %2, 8
  %conv18.us = zext i1 %cmp17.us to i32
  %3 = load i8, ptr %add.ptr14.us, align 1, !tbaa !24
  %cmp21.us = icmp ult i8 %3, 8
  %conv22.us = zext i1 %cmp21.us to i32
  %add23.us = add nuw nsw i32 %conv22.us, %conv18.us
  %add.ptr24.us = getelementptr inbounds nuw i8, ptr %add.ptr14.us, i64 1
  %4 = load i8, ptr %add.ptr24.us, align 1, !tbaa !24
  %cmp26.us = icmp ult i8 %4, 8
  %conv27.us = zext i1 %cmp26.us to i32
  %add28.us = add nuw nsw i32 %add23.us, %conv27.us
  %add.ptr30.us = getelementptr inbounds nuw i8, ptr %add.ptr15.us, i64 %idx.ext29
  %5 = load i8, ptr %add.ptr30.us, align 1, !tbaa !24
  %cmp32.us = icmp ult i8 %5, 8
  %conv33.us = zext i1 %cmp32.us to i32
  %add34.us = add nuw nsw i32 %add28.us, %conv33.us
  %add.ptr37.us = getelementptr inbounds nuw i8, ptr %add.ptr30.us, i64 2
  %6 = load i8, ptr %add.ptr37.us, align 1, !tbaa !24
  %cmp39.us = icmp ult i8 %6, 8
  %conv40.us = zext i1 %cmp39.us to i32
  %add41.us = add nuw nsw i32 %add34.us, %conv40.us
  %add.ptr45.us = getelementptr inbounds nuw i8, ptr %add.ptr30.us, i64 %idx.ext29
  %7 = load i8, ptr %add.ptr45.us, align 1, !tbaa !24
  %cmp47.us = icmp ult i8 %7, 8
  %conv48.us = zext i1 %cmp47.us to i32
  %add49.us = add nuw nsw i32 %add41.us, %conv48.us
  %add.ptr54.us = getelementptr inbounds nuw i8, ptr %add.ptr45.us, i64 1
  %8 = load i8, ptr %add.ptr54.us, align 1, !tbaa !24
  %cmp56.us = icmp ult i8 %8, 8
  %conv57.us = zext i1 %cmp56.us to i32
  %add58.us = add nuw nsw i32 %add49.us, %conv57.us
  %add.ptr63.us = getelementptr inbounds nuw i8, ptr %add.ptr45.us, i64 2
  %9 = load i8, ptr %add.ptr63.us, align 1, !tbaa !24
  %cmp65.us = icmp ult i8 %9, 8
  %conv66.us = zext i1 %cmp65.us to i32
  %add67.us = add nuw nsw i32 %add58.us, %conv66.us
  switch i32 %add67.us, label %if.end412.us [
    i32 0, label %if.then70.us
    i32 1, label %land.lhs.true.us
  ]

land.lhs.true.us:                                 ; preds = %if.then.us
  %cmp82.us = icmp samesign ult i8 %0, 6
  br i1 %cmp82.us, label %if.then84.us, label %for.inc823.us

if.then84.us:                                     ; preds = %land.lhs.true.us
  %add87.us = add nsw i32 %mul12.us, %j.0396.us
  %sub88.us = add nsw i32 %add87.us, -1
  %idxprom89.us = sext i32 %sub88.us to i64
  %arrayidx90.us = getelementptr inbounds i32, ptr %r, i64 %idxprom89.us
  %10 = load i32, ptr %arrayidx90.us, align 4, !tbaa !16
  store i32 %10, ptr %l, align 16, !tbaa !16
  %idxprom95.us = sext i32 %add87.us to i64
  %arrayidx96.us = getelementptr inbounds i32, ptr %r, i64 %idxprom95.us
  %11 = load i32, ptr %arrayidx96.us, align 4, !tbaa !16
  store i32 %11, ptr %arrayidx97, align 4, !tbaa !16
  %add101.us = add nsw i32 %add87.us, 1
  %idxprom102.us = sext i32 %add101.us to i64
  %arrayidx103.us = getelementptr inbounds i32, ptr %r, i64 %idxprom102.us
  %12 = load i32, ptr %arrayidx103.us, align 4, !tbaa !16
  store i32 %12, ptr %arrayidx104, align 8, !tbaa !16
  %sub107.us = add nsw i32 %add.us, -1
  %idxprom108.us = sext i32 %sub107.us to i64
  %arrayidx109.us = getelementptr inbounds i32, ptr %r, i64 %idxprom108.us
  %13 = load i32, ptr %arrayidx109.us, align 4, !tbaa !16
  store i32 %13, ptr %arrayidx110, align 4, !tbaa !16
  store i32 0, ptr %arrayidx111, align 16, !tbaa !16
  %add114.us = add nsw i32 %add.us, 1
  %idxprom115.us = sext i32 %add114.us to i64
  %arrayidx116.us = getelementptr inbounds i32, ptr %r, i64 %idxprom115.us
  %14 = load i32, ptr %arrayidx116.us, align 4, !tbaa !16
  store i32 %14, ptr %arrayidx117, align 4, !tbaa !16
  %add118.us = add nsw i32 %i.1395.us, 1
  %mul119.us = mul nsw i32 %add118.us, %x_size
  %add120.us = add nsw i32 %mul119.us, %j.0396.us
  %sub121.us = add nsw i32 %add120.us, -1
  %idxprom122.us = sext i32 %sub121.us to i64
  %arrayidx123.us = getelementptr inbounds i32, ptr %r, i64 %idxprom122.us
  %15 = load i32, ptr %arrayidx123.us, align 4, !tbaa !16
  store i32 %15, ptr %arrayidx124, align 8, !tbaa !16
  %idxprom128.us = sext i32 %add120.us to i64
  %arrayidx129.us = getelementptr inbounds i32, ptr %r, i64 %idxprom128.us
  %16 = load i32, ptr %arrayidx129.us, align 4, !tbaa !16
  store i32 %16, ptr %arrayidx130, align 4, !tbaa !16
  %add134.us = add nsw i32 %add120.us, 1
  %idxprom135.us = sext i32 %add134.us to i64
  %arrayidx136.us = getelementptr inbounds i32, ptr %r, i64 %idxprom135.us
  %17 = load i32, ptr %arrayidx136.us, align 4, !tbaa !16
  store i32 %17, ptr %arrayidx137, align 16, !tbaa !16
  %arrayidx143.us = getelementptr inbounds i8, ptr %mid, i64 %idxprom89.us
  %18 = load i8, ptr %arrayidx143.us, align 1, !tbaa !24
  %cmp145.us = icmp ult i8 %18, 8
  br i1 %cmp145.us, label %if.then147.us, label %if.else.us

if.else.us:                                       ; preds = %if.then84.us
  %arrayidx165.us = getelementptr inbounds i8, ptr %mid, i64 %idxprom95.us
  %19 = load i8, ptr %arrayidx165.us, align 1, !tbaa !24
  %cmp167.us = icmp ult i8 %19, 8
  br i1 %cmp167.us, label %if.then169.us, label %if.else183.us

if.else183.us:                                    ; preds = %if.else.us
  %arrayidx189.us = getelementptr inbounds i8, ptr %mid, i64 %idxprom102.us
  %20 = load i8, ptr %arrayidx189.us, align 1, !tbaa !24
  %cmp191.us = icmp ult i8 %20, 8
  br i1 %cmp191.us, label %if.then193.us, label %if.else207.us

if.else207.us:                                    ; preds = %if.else183.us
  %arrayidx212.us = getelementptr inbounds i8, ptr %mid, i64 %idxprom108.us
  %21 = load i8, ptr %arrayidx212.us, align 1, !tbaa !24
  %cmp214.us = icmp ult i8 %21, 8
  br i1 %cmp214.us, label %if.then216.us, label %if.else230.us

if.else230.us:                                    ; preds = %if.else207.us
  %arrayidx235.us = getelementptr inbounds i8, ptr %mid, i64 %idxprom115.us
  %22 = load i8, ptr %arrayidx235.us, align 1, !tbaa !24
  %cmp237.us = icmp ult i8 %22, 8
  br i1 %cmp237.us, label %if.then239.us, label %if.else253.us

if.else253.us:                                    ; preds = %if.else230.us
  %arrayidx259.us = getelementptr inbounds i8, ptr %mid, i64 %idxprom122.us
  %23 = load i8, ptr %arrayidx259.us, align 1, !tbaa !24
  %cmp261.us = icmp ult i8 %23, 8
  br i1 %cmp261.us, label %if.then263.us, label %if.else277.us

if.else277.us:                                    ; preds = %if.else253.us
  %arrayidx282.us = getelementptr inbounds i8, ptr %mid, i64 %idxprom128.us
  %24 = load i8, ptr %arrayidx282.us, align 1, !tbaa !24
  %cmp284.us = icmp ult i8 %24, 8
  br i1 %cmp284.us, label %if.then286.us, label %if.else300.us

if.else300.us:                                    ; preds = %if.else277.us
  %arrayidx306.us = getelementptr inbounds i8, ptr %mid, i64 %idxprom135.us
  %25 = load i8, ptr %arrayidx306.us, align 1, !tbaa !24
  %cmp308.us = icmp ult i8 %25, 8
  br i1 %cmp308.us, label %if.then310.us, label %for.cond336.preheader.us.preheader

for.cond336.preheader.us.preheader:               ; preds = %if.then147.us, %if.then169.us, %if.then193.us, %if.then216.us, %if.then239.us, %if.then263.us, %if.then286.us, %if.then310.us, %if.else300.us
  br label %for.cond336.preheader.us

if.then310.us:                                    ; preds = %if.else300.us
  store i32 0, ptr %arrayidx137, align 16, !tbaa !16
  store i32 0, ptr %arrayidx117, align 4, !tbaa !16
  store i32 0, ptr %arrayidx130, align 4, !tbaa !16
  %mul315.us = shl nsw i32 %15, 1
  store i32 %mul315.us, ptr %arrayidx124, align 8, !tbaa !16
  %mul317.us = shl nsw i32 %12, 1
  store i32 %mul317.us, ptr %arrayidx104, align 8, !tbaa !16
  %mul319.us = mul nsw i32 %11, 3
  store i32 %mul319.us, ptr %arrayidx97, align 4, !tbaa !16
  %mul321.us = mul nsw i32 %13, 3
  store i32 %mul321.us, ptr %arrayidx110, align 4, !tbaa !16
  %mul323.us = shl nsw i32 %10, 2
  store i32 %mul323.us, ptr %l, align 16, !tbaa !16
  br label %for.cond336.preheader.us.preheader

if.then286.us:                                    ; preds = %if.else277.us
  store i32 0, ptr %arrayidx130, align 4, !tbaa !16
  store i32 0, ptr %arrayidx124, align 8, !tbaa !16
  store i32 0, ptr %arrayidx137, align 16, !tbaa !16
  %mul291.us = shl nsw i32 %13, 1
  store i32 %mul291.us, ptr %arrayidx110, align 4, !tbaa !16
  %mul293.us = shl nsw i32 %14, 1
  store i32 %mul293.us, ptr %arrayidx117, align 4, !tbaa !16
  %mul295.us = mul nsw i32 %10, 3
  store i32 %mul295.us, ptr %l, align 16, !tbaa !16
  %mul297.us = mul nsw i32 %12, 3
  store i32 %mul297.us, ptr %arrayidx104, align 8, !tbaa !16
  %mul299.us = shl nsw i32 %11, 2
  store i32 %mul299.us, ptr %arrayidx97, align 4, !tbaa !16
  br label %for.cond336.preheader.us.preheader

if.then263.us:                                    ; preds = %if.else253.us
  store i32 0, ptr %arrayidx124, align 8, !tbaa !16
  store i32 0, ptr %arrayidx110, align 4, !tbaa !16
  store i32 0, ptr %arrayidx130, align 4, !tbaa !16
  %mul268.us = shl nsw i32 %10, 1
  store i32 %mul268.us, ptr %l, align 16, !tbaa !16
  %mul270.us = shl nsw i32 %17, 1
  store i32 %mul270.us, ptr %arrayidx137, align 16, !tbaa !16
  %mul272.us = mul nsw i32 %11, 3
  store i32 %mul272.us, ptr %arrayidx97, align 4, !tbaa !16
  %mul274.us = mul nsw i32 %14, 3
  store i32 %mul274.us, ptr %arrayidx117, align 4, !tbaa !16
  %mul276.us = shl nsw i32 %12, 2
  store i32 %mul276.us, ptr %arrayidx104, align 8, !tbaa !16
  br label %for.cond336.preheader.us.preheader

if.then239.us:                                    ; preds = %if.else230.us
  store i32 0, ptr %arrayidx117, align 4, !tbaa !16
  store i32 0, ptr %arrayidx104, align 8, !tbaa !16
  store i32 0, ptr %arrayidx137, align 16, !tbaa !16
  %mul244.us = shl nsw i32 %11, 1
  store i32 %mul244.us, ptr %arrayidx97, align 4, !tbaa !16
  %mul246.us = shl nsw i32 %16, 1
  store i32 %mul246.us, ptr %arrayidx130, align 4, !tbaa !16
  %mul248.us = mul nsw i32 %10, 3
  store i32 %mul248.us, ptr %l, align 16, !tbaa !16
  %mul250.us = mul nsw i32 %15, 3
  store i32 %mul250.us, ptr %arrayidx124, align 8, !tbaa !16
  %mul252.us = shl nsw i32 %13, 2
  store i32 %mul252.us, ptr %arrayidx110, align 4, !tbaa !16
  br label %for.cond336.preheader.us.preheader

if.then216.us:                                    ; preds = %if.else207.us
  store i32 0, ptr %arrayidx110, align 4, !tbaa !16
  store i32 0, ptr %l, align 16, !tbaa !16
  store i32 0, ptr %arrayidx124, align 8, !tbaa !16
  %mul221.us = shl nsw i32 %11, 1
  store i32 %mul221.us, ptr %arrayidx97, align 4, !tbaa !16
  %mul223.us = shl nsw i32 %16, 1
  store i32 %mul223.us, ptr %arrayidx130, align 4, !tbaa !16
  %mul225.us = mul nsw i32 %12, 3
  store i32 %mul225.us, ptr %arrayidx104, align 8, !tbaa !16
  %mul227.us = mul nsw i32 %17, 3
  store i32 %mul227.us, ptr %arrayidx137, align 16, !tbaa !16
  %mul229.us = shl nsw i32 %14, 2
  store i32 %mul229.us, ptr %arrayidx117, align 4, !tbaa !16
  br label %for.cond336.preheader.us.preheader

if.then193.us:                                    ; preds = %if.else183.us
  store i32 0, ptr %arrayidx104, align 8, !tbaa !16
  store i32 0, ptr %arrayidx97, align 4, !tbaa !16
  store i32 0, ptr %arrayidx117, align 4, !tbaa !16
  %mul198.us = shl nsw i32 %10, 1
  store i32 %mul198.us, ptr %l, align 16, !tbaa !16
  %mul200.us = shl nsw i32 %17, 1
  store i32 %mul200.us, ptr %arrayidx137, align 16, !tbaa !16
  %mul202.us = mul nsw i32 %13, 3
  store i32 %mul202.us, ptr %arrayidx110, align 4, !tbaa !16
  %mul204.us = mul nsw i32 %16, 3
  store i32 %mul204.us, ptr %arrayidx130, align 4, !tbaa !16
  %mul206.us = shl nsw i32 %15, 2
  store i32 %mul206.us, ptr %arrayidx124, align 8, !tbaa !16
  br label %for.cond336.preheader.us.preheader

if.then169.us:                                    ; preds = %if.else.us
  store i32 0, ptr %arrayidx97, align 4, !tbaa !16
  store i32 0, ptr %l, align 16, !tbaa !16
  store i32 0, ptr %arrayidx104, align 8, !tbaa !16
  %mul174.us = shl nsw i32 %13, 1
  store i32 %mul174.us, ptr %arrayidx110, align 4, !tbaa !16
  %mul176.us = shl nsw i32 %14, 1
  store i32 %mul176.us, ptr %arrayidx117, align 4, !tbaa !16
  %mul178.us = mul nsw i32 %15, 3
  store i32 %mul178.us, ptr %arrayidx124, align 8, !tbaa !16
  %mul180.us = mul nsw i32 %17, 3
  store i32 %mul180.us, ptr %arrayidx137, align 16, !tbaa !16
  %mul182.us = shl nsw i32 %16, 2
  store i32 %mul182.us, ptr %arrayidx130, align 4, !tbaa !16
  br label %for.cond336.preheader.us.preheader

if.then147.us:                                    ; preds = %if.then84.us
  store i32 0, ptr %l, align 16, !tbaa !16
  store i32 0, ptr %arrayidx97, align 4, !tbaa !16
  store i32 0, ptr %arrayidx110, align 4, !tbaa !16
  %mul152.us = shl nsw i32 %12, 1
  store i32 %mul152.us, ptr %arrayidx104, align 8, !tbaa !16
  %mul154.us = shl nsw i32 %15, 1
  store i32 %mul154.us, ptr %arrayidx124, align 8, !tbaa !16
  %mul156.us = mul nsw i32 %14, 3
  store i32 %mul156.us, ptr %arrayidx117, align 4, !tbaa !16
  %mul158.us = mul nsw i32 %16, 3
  store i32 %mul158.us, ptr %arrayidx130, align 4, !tbaa !16
  %mul160.us = shl nsw i32 %17, 2
  store i32 %mul160.us, ptr %arrayidx137, align 16, !tbaa !16
  br label %for.cond336.preheader.us.preheader

for.end356.us:                                    ; preds = %for.inc354.us
  %cmp357.us = icmp sgt i32 %m.2.us, 0
  br i1 %cmp357.us, label %if.then359.us, label %if.end412.us

if.then359.us:                                    ; preds = %for.end356.us
  %26 = tail call i8 @llvm.umax.i8(i8 %0, i8 3)
  %.sink = add nuw nsw i8 %26, 1
  %sub369.us = add i32 %sub11.us, %a.5.us
  %mul370.us = mul nsw i32 %sub369.us, %x_size
  %add371.us = add i32 %b.5.us, %j.0396.us
  %add372.us = add i32 %add371.us, %mul370.us
  %27 = sext i32 %add372.us to i64
  %gep391.us = getelementptr i8, ptr %invariant.gep, i64 %27
  store i8 %.sink, ptr %gep391.us, align 1, !tbaa !24
  %add393.us = shl nsw i32 %a.5.us, 1
  %add394.us = add nsw i32 %add393.us, %b.5.us
  %cmp395.us = icmp slt i32 %add394.us, 3
  br i1 %cmp395.us, label %if.then397.us, label %if.end412.us

if.then397.us:                                    ; preds = %if.then359.us
  %add399.us = add i32 %sub11.us, %a.5.us
  %sub400.us = add i32 %j.0396.us, -2
  %add401.us = add i32 %sub400.us, %b.5.us
  %spec.store.select.us = tail call i32 @llvm.smax.i32(i32 %add399.us, i32 4)
  %spec.store.select3.us = tail call i32 @llvm.smax.i32(i32 %add401.us, i32 4)
  br label %if.end412.us

for.inc354.us:                                    ; preds = %for.body339.us
  %indvars.iv.next407 = add nuw nsw i64 %indvars.iv406, 1
  %exitcond410.not = icmp eq i64 %indvars.iv.next407, 3
  br i1 %exitcond410.not, label %for.end356.us, label %for.cond336.preheader.us, !llvm.loop !50

for.body339.us:                                   ; preds = %for.cond336.preheader.us, %for.body339.us
  %indvars.iv = phi i64 [ 0, %for.cond336.preheader.us ], [ %indvars.iv.next, %for.body339.us ]
  %b.4384.us = phi i32 [ %b.3388.us, %for.cond336.preheader.us ], [ %b.5.us, %for.body339.us ]
  %a.4383.us = phi i32 [ %a.3387.us, %for.cond336.preheader.us ], [ %a.5.us, %for.body339.us ]
  %m.1382.us = phi i32 [ %m.0386.us, %for.cond336.preheader.us ], [ %m.2.us, %for.body339.us ]
  %28 = add nuw nsw i64 %indvars.iv, %83
  %arrayidx344.us = getelementptr inbounds nuw [9 x i32], ptr %l, i64 0, i64 %28
  %29 = load i32, ptr %arrayidx344.us, align 4, !tbaa !16
  %cmp345.us = icmp sgt i32 %29, %m.1382.us
  %m.2.us = tail call i32 @llvm.smax.i32(i32 %29, i32 %m.1382.us)
  %a.5.us = select i1 %cmp345.us, i32 %84, i32 %a.4383.us
  %30 = trunc nuw nsw i64 %indvars.iv to i32
  %b.5.us = select i1 %cmp345.us, i32 %30, i32 %b.4384.us
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond.not, label %for.inc354.us, label %for.body339.us, !llvm.loop !51

if.then70.us:                                     ; preds = %if.then.us
  store i8 100, ptr %arrayidx.us, align 1, !tbaa !24
  br label %for.inc823.us

if.end412.us:                                     ; preds = %if.then397.us, %if.then359.us, %for.end356.us, %if.then.us
  %a.2.us = phi i32 [ %a.5.us, %if.then397.us ], [ %a.5.us, %if.then359.us ], [ %a.5.us, %for.end356.us ], [ %a.1393.us, %if.then.us ]
  %b.2.us = phi i32 [ %b.5.us, %if.then397.us ], [ %b.5.us, %if.then359.us ], [ %b.5.us, %for.end356.us ], [ %b.1394.us, %if.then.us ]
  %i.2.us = phi i32 [ %spec.store.select.us, %if.then397.us ], [ %i.1395.us, %if.then359.us ], [ %i.1395.us, %for.end356.us ], [ %i.1395.us, %if.then.us ]
  %j.1.us = phi i32 [ %spec.store.select3.us, %if.then397.us ], [ %j.0396.us, %if.then359.us ], [ %j.0396.us, %for.end356.us ], [ %j.0396.us, %if.then.us ]
  %cmp413.us = icmp eq i32 %add67.us, 2
  br i1 %cmp413.us, label %if.then415.us, label %if.end709.us

if.end709.us:                                     ; preds = %if.end412.us
  %cmp710.us = icmp sgt i32 %add67.us, 2
  br i1 %cmp710.us, label %if.then712.us, label %for.inc823.us

if.then712.us:                                    ; preds = %if.end709.us
  %sub713.us = add nsw i32 %i.2.us, -1
  %mul714.us = mul nsw i32 %sub713.us, %x_size
  %add715.us = add nsw i32 %mul714.us, %j.1.us
  %idxprom716.us = sext i32 %add715.us to i64
  %arrayidx717.us = getelementptr inbounds i8, ptr %mid, i64 %idxprom716.us
  %31 = load i8, ptr %arrayidx717.us, align 1, !tbaa !24
  %cmp719.us = icmp ult i8 %31, 8
  %conv720.us = zext i1 %cmp719.us to i32
  %mul721.us = mul nsw i32 %i.2.us, %x_size
  %add722.us = add nsw i32 %mul721.us, %j.1.us
  %32 = sext i32 %add722.us to i64
  %33 = getelementptr i8, ptr %mid, i64 %32
  %arrayidx725.us = getelementptr i8, ptr %33, i64 1
  %34 = load i8, ptr %arrayidx725.us, align 1, !tbaa !24
  %cmp727.us = icmp ult i8 %34, 8
  %conv728.us = zext i1 %cmp727.us to i32
  %add729.us = add nsw i32 %i.2.us, 1
  %mul730.us = mul nsw i32 %add729.us, %x_size
  %add731.us = add nsw i32 %mul730.us, %j.1.us
  %idxprom732.us = sext i32 %add731.us to i64
  %arrayidx733.us = getelementptr inbounds i8, ptr %mid, i64 %idxprom732.us
  %35 = load i8, ptr %arrayidx733.us, align 1, !tbaa !24
  %cmp735.us = icmp ult i8 %35, 8
  %conv736.us = zext i1 %cmp735.us to i32
  %arrayidx741.us = getelementptr i8, ptr %33, i64 -1
  %36 = load i8, ptr %arrayidx741.us, align 1, !tbaa !24
  %cmp743.us = icmp ult i8 %36, 8
  %conv744.us = zext i1 %cmp743.us to i32
  %add745.us = add nuw nsw i32 %conv728.us, %conv720.us
  %add746.us = add nuw nsw i32 %add745.us, %conv736.us
  %add747.us = add nuw nsw i32 %add746.us, %conv744.us
  %cmp748.us = icmp samesign ugt i32 %add747.us, 1
  br i1 %cmp748.us, label %if.then750.us, label %for.inc823.us

if.then750.us:                                    ; preds = %if.then712.us
  %arrayidx756.us = getelementptr i8, ptr %arrayidx717.us, i64 -1
  %37 = load i8, ptr %arrayidx756.us, align 1, !tbaa !24
  %cmp758.us = icmp ult i8 %37, 8
  %arrayidx765.us = getelementptr i8, ptr %arrayidx717.us, i64 1
  %38 = load i8, ptr %arrayidx765.us, align 1, !tbaa !24
  %cmp767.us = icmp ult i8 %38, 8
  %arrayidx774.us = getelementptr i8, ptr %arrayidx733.us, i64 -1
  %39 = load i8, ptr %arrayidx774.us, align 1, !tbaa !24
  %cmp776.us = icmp ult i8 %39, 8
  %arrayidx783.us = getelementptr i8, ptr %arrayidx733.us, i64 1
  %40 = load i8, ptr %arrayidx783.us, align 1, !tbaa !24
  %cmp785.us = icmp ult i8 %40, 8
  %or787354.us = or i1 %cmp719.us, %cmp758.us
  %or787.us = zext i1 %or787354.us to i32
  %or788355.us = or i1 %cmp727.us, %cmp767.us
  %or788.us = zext i1 %or788355.us to i32
  %or789356.us = or i1 %cmp735.us, %cmp785.us
  %or789.us = zext i1 %or789356.us to i32
  %or790357.us = or i1 %cmp743.us, %cmp776.us
  %or790.us = zext i1 %or790357.us to i32
  %and794.us = and i32 %or788.us, %conv720.us
  %and795.us = and i32 %or789.us, %conv728.us
  %and797.us = and i32 %or790.us, %conv736.us
  %and799.us = and i32 %or787.us, %conv744.us
  %add796.neg.us = add nuw nsw i32 %or788.us, %or787.us
  %41 = add nuw nsw i32 %add796.neg.us, %or790.us
  %42 = add nuw nsw i32 %and799.us, %and794.us
  %43 = add nuw nsw i32 %41, %or789.us
  %44 = add nuw nsw i32 %42, %and797.us
  %45 = add nuw nsw i32 %44, %and795.us
  %sub801.us = sub nsw i32 %43, %45
  %cmp802.us = icmp slt i32 %sub801.us, 2
  br i1 %cmp802.us, label %if.then804.us, label %for.inc823.us

if.then804.us:                                    ; preds = %if.then750.us
  store i8 100, ptr %33, align 1, !tbaa !24
  %46 = tail call i32 @llvm.smax.i32(i32 %i.2.us, i32 5)
  %spec.store.select2.us = add nsw i32 %46, -1
  %47 = tail call i32 @llvm.smax.i32(i32 %j.1.us, i32 6)
  %spec.store.select5.us = add nsw i32 %47, -2
  br label %for.inc823.us

if.then415.us:                                    ; preds = %if.end412.us
  %sub416.us = add nsw i32 %i.2.us, -1
  %mul417.us = mul nsw i32 %sub416.us, %x_size
  %add418.us = add nsw i32 %mul417.us, %j.1.us
  %48 = sext i32 %add418.us to i64
  %49 = getelementptr i8, ptr %mid, i64 %48
  %arrayidx421.us = getelementptr i8, ptr %49, i64 -1
  %50 = load i8, ptr %arrayidx421.us, align 1, !tbaa !24
  %cmp423.us = icmp ult i8 %50, 8
  %conv424.us = zext i1 %cmp423.us to i32
  %arrayidx430.us = getelementptr i8, ptr %49, i64 1
  %51 = load i8, ptr %arrayidx430.us, align 1, !tbaa !24
  %cmp432.us = icmp ult i8 %51, 8
  %conv433.us = zext i1 %cmp432.us to i32
  %add434.us = add nsw i32 %i.2.us, 1
  %mul435.us = mul nsw i32 %add434.us, %x_size
  %add436.us = add nsw i32 %mul435.us, %j.1.us
  %52 = sext i32 %add436.us to i64
  %53 = getelementptr i8, ptr %mid, i64 %52
  %arrayidx439.us = getelementptr i8, ptr %53, i64 -1
  %54 = load i8, ptr %arrayidx439.us, align 1, !tbaa !24
  %cmp441.us = icmp ult i8 %54, 8
  %conv442.us = zext i1 %cmp441.us to i32
  %arrayidx448.us = getelementptr i8, ptr %53, i64 1
  %55 = load i8, ptr %arrayidx448.us, align 1, !tbaa !24
  %cmp450.us = icmp ult i8 %55, 8
  %conv451.us = zext i1 %cmp450.us to i32
  %add452.us = add nuw nsw i32 %conv433.us, %conv424.us
  %add453.us = add nuw nsw i32 %add452.us, %conv442.us
  %add454.us = add nuw nsw i32 %add453.us, %conv451.us
  %cmp455.us = icmp eq i32 %add454.us, 2
  br i1 %cmp455.us, label %land.lhs.true457.us, label %if.else565.us

land.lhs.true457.us:                              ; preds = %if.then415.us
  %or.us = or i32 %conv451.us, %conv424.us
  %or458.us = or i32 %conv442.us, %conv433.us
  %and.us = and i32 %or.us, %or458.us
  %tobool.not.us = icmp eq i32 %and.us, 0
  br i1 %tobool.not.us, label %if.else565.us, label %if.then459.us

if.then459.us:                                    ; preds = %land.lhs.true457.us
  %not.cmp432380.us = xor i1 %cmp432.us, true
  br i1 %cmp423.us, label %if.then461.us, label %if.else466.us

if.else466.us:                                    ; preds = %if.then459.us
  %.364.us = zext i1 %not.cmp432380.us to i32
  br label %if.end471.us

if.then461.us:                                    ; preds = %if.then459.us
  %.358.us = sext i1 %not.cmp432380.us to i32
  %.360.us = sext i1 %cmp432.us to i32
  br label %if.end471.us

if.end471.us:                                     ; preds = %if.then461.us, %if.else466.us
  %cmp484.us = phi i1 [ %cmp432.us, %if.then461.us ], [ %not.cmp432380.us, %if.else466.us ]
  %x.1.us = phi i32 [ %.358.us, %if.then461.us ], [ %conv433.us, %if.else466.us ]
  %cmp518.us = phi i1 [ %not.cmp432380.us, %if.then461.us ], [ %cmp432.us, %if.else466.us ]
  %y.1.us = phi i32 [ %.360.us, %if.then461.us ], [ %.364.us, %if.else466.us ]
  %add472.us = add nsw i32 %y.1.us, %i.2.us
  %mul473.us = mul nsw i32 %add472.us, %x_size
  %add474.us = add i32 %x.1.us, %j.1.us
  %add475.us = add i32 %add474.us, %mul473.us
  %idxprom476.us = sext i32 %add475.us to i64
  %arrayidx477.us = getelementptr inbounds i32, ptr %r, i64 %idxprom476.us
  %56 = load i32, ptr %arrayidx477.us, align 4, !tbaa !16
  %conv478.us = sitofp i32 %56 to float
  %conv479.us = sitofp i32 %1 to float
  %div.us = fdiv float %conv478.us, %conv479.us
  %conv480.us = fpext float %div.us to double
  %cmp481.us = fcmp ogt double %conv480.us, 0x3FE6666666666666
  br i1 %cmp481.us, label %if.then483.us, label %for.inc823.us

if.then483.us:                                    ; preds = %if.end471.us
  br i1 %cmp484.us, label %land.lhs.true486.us, label %lor.lhs.false.us

land.lhs.true486.us:                              ; preds = %if.then483.us
  %mul487.us = shl nsw i32 %y.1.us, 1
  %add488.us = add nsw i32 %mul487.us, %i.2.us
  %mul489.us = mul nsw i32 %add488.us, %x_size
  %add490.us = add nsw i32 %mul489.us, %j.1.us
  %idxprom491.us = sext i32 %add490.us to i64
  %arrayidx492.us = getelementptr inbounds i8, ptr %mid, i64 %idxprom491.us
  %57 = load i8, ptr %arrayidx492.us, align 1, !tbaa !24
  %cmp494.us = icmp ugt i8 %57, 7
  br i1 %cmp494.us, label %land.lhs.true496.us, label %lor.lhs.false.us

land.lhs.true496.us:                              ; preds = %land.lhs.true486.us
  %arrayidx503.us = getelementptr i8, ptr %arrayidx492.us, i64 -1
  %58 = load i8, ptr %arrayidx503.us, align 1, !tbaa !24
  %cmp505.us = icmp ugt i8 %58, 7
  br i1 %cmp505.us, label %land.lhs.true507.us, label %lor.lhs.false.us

land.lhs.true507.us:                              ; preds = %land.lhs.true496.us
  %arrayidx514.us = getelementptr i8, ptr %arrayidx492.us, i64 1
  %59 = load i8, ptr %arrayidx514.us, align 1, !tbaa !24
  %cmp516.us = icmp ugt i8 %59, 7
  br i1 %cmp516.us, label %land.lhs.true507.us.if.then552.us_crit_edge, label %lor.lhs.false.us

land.lhs.true507.us.if.then552.us_crit_edge:      ; preds = %land.lhs.true507.us
  %.pre = mul nsw i32 %i.2.us, %x_size
  %.pre411 = add nsw i32 %.pre, %j.1.us
  br label %if.then552.us

lor.lhs.false.us:                                 ; preds = %land.lhs.true507.us, %land.lhs.true496.us, %land.lhs.true486.us, %if.then483.us
  br i1 %cmp518.us, label %land.lhs.true520.us, label %for.inc823.us

land.lhs.true520.us:                              ; preds = %lor.lhs.false.us
  %mul521.us = mul nsw i32 %i.2.us, %x_size
  %add522.us = add nsw i32 %mul521.us, %j.1.us
  %mul523.us = shl nsw i32 %x.1.us, 1
  %add524.us = add nsw i32 %add522.us, %mul523.us
  %idxprom525.us = sext i32 %add524.us to i64
  %arrayidx526.us = getelementptr inbounds i8, ptr %mid, i64 %idxprom525.us
  %60 = load i8, ptr %arrayidx526.us, align 1, !tbaa !24
  %cmp528.us = icmp ugt i8 %60, 7
  br i1 %cmp528.us, label %land.lhs.true530.us, label %for.inc823.us

land.lhs.true530.us:                              ; preds = %land.lhs.true520.us
  %add535.us = add nsw i32 %mul523.us, %add436.us
  %idxprom536.us = sext i32 %add535.us to i64
  %arrayidx537.us = getelementptr inbounds i8, ptr %mid, i64 %idxprom536.us
  %61 = load i8, ptr %arrayidx537.us, align 1, !tbaa !24
  %cmp539.us = icmp ugt i8 %61, 7
  br i1 %cmp539.us, label %land.lhs.true541.us, label %for.inc823.us

land.lhs.true541.us:                              ; preds = %land.lhs.true530.us
  %add546.us = add nsw i32 %mul523.us, %add418.us
  %idxprom547.us = sext i32 %add546.us to i64
  %arrayidx548.us = getelementptr inbounds i8, ptr %mid, i64 %idxprom547.us
  %62 = load i8, ptr %arrayidx548.us, align 1, !tbaa !24
  %cmp550.us = icmp ugt i8 %62, 7
  br i1 %cmp550.us, label %if.then552.us, label %for.inc823.us

if.then552.us:                                    ; preds = %land.lhs.true507.us.if.then552.us_crit_edge, %land.lhs.true541.us
  %add554.us.pre-phi = phi i32 [ %.pre411, %land.lhs.true507.us.if.then552.us_crit_edge ], [ %add522.us, %land.lhs.true541.us ]
  %idxprom555.us = sext i32 %add554.us.pre-phi to i64
  %arrayidx556.us = getelementptr inbounds i8, ptr %mid, i64 %idxprom555.us
  store i8 100, ptr %arrayidx556.us, align 1, !tbaa !24
  %arrayidx562.us = getelementptr inbounds i8, ptr %mid, i64 %idxprom476.us
  store i8 3, ptr %arrayidx562.us, align 1, !tbaa !24
  br label %for.inc823.us

if.else565.us:                                    ; preds = %land.lhs.true457.us, %if.then415.us
  %63 = load i8, ptr %49, align 1, !tbaa !24
  %cmp572.us = icmp ult i8 %63, 8
  %conv573.us = zext i1 %cmp572.us to i32
  %mul574.us = mul nsw i32 %i.2.us, %x_size
  %add575.us = add nsw i32 %mul574.us, %j.1.us
  %64 = sext i32 %add575.us to i64
  %65 = getelementptr i8, ptr %mid, i64 %64
  %arrayidx578.us = getelementptr i8, ptr %65, i64 1
  %66 = load i8, ptr %arrayidx578.us, align 1, !tbaa !24
  %cmp580.us = icmp ult i8 %66, 8
  %conv581.us = zext i1 %cmp580.us to i32
  %67 = load i8, ptr %53, align 1, !tbaa !24
  %cmp588.us = icmp ult i8 %67, 8
  %conv589.us = zext i1 %cmp588.us to i32
  %arrayidx594.us = getelementptr i8, ptr %65, i64 -1
  %68 = load i8, ptr %arrayidx594.us, align 1, !tbaa !24
  %cmp596.us = icmp ult i8 %68, 8
  %conv597.us = zext i1 %cmp596.us to i32
  %add598.us = add nuw nsw i32 %conv581.us, %conv573.us
  %add599.us = add nuw nsw i32 %add598.us, %conv589.us
  %add600.us = add nuw nsw i32 %add599.us, %conv597.us
  %cmp601.us = icmp eq i32 %add600.us, 2
  br i1 %cmp601.us, label %land.lhs.true603.us, label %for.inc823.us

land.lhs.true603.us:                              ; preds = %if.else565.us
  %or604.us = or i32 %conv597.us, %conv581.us
  %or605.us = or i32 %conv589.us, %conv573.us
  %and606.us = and i32 %or604.us, %or605.us
  %tobool607.not.us = icmp eq i32 %and606.us, 0
  br i1 %tobool607.not.us, label %for.inc823.us, label %land.lhs.true608.us

land.lhs.true608.us:                              ; preds = %land.lhs.true603.us
  %sub609.us = add nsw i32 %i.2.us, -2
  %mul610.us = mul nsw i32 %sub609.us, %x_size
  %add611.us = add nsw i32 %mul610.us, %j.1.us
  %69 = sext i32 %add611.us to i64
  %70 = getelementptr i8, ptr %mid, i64 %69
  %arrayidx614.us = getelementptr i8, ptr %70, i64 -1
  %71 = load i8, ptr %arrayidx614.us, align 1, !tbaa !24
  %cmp616.us = icmp ult i8 %71, 8
  %arrayidx623.us = getelementptr i8, ptr %70, i64 1
  %72 = load i8, ptr %arrayidx623.us, align 1, !tbaa !24
  %cmp625.us = icmp ult i8 %72, 8
  %or627343.us = or i1 %cmp616.us, %cmp625.us
  %and628344.us = and i1 %cmp572.us, %or627343.us
  %arrayidx634.us = getelementptr i8, ptr %49, i64 -2
  %73 = load i8, ptr %arrayidx634.us, align 1, !tbaa !24
  %cmp636.us = icmp ult i8 %73, 8
  %arrayidx643.us = getelementptr i8, ptr %53, i64 -2
  %74 = load i8, ptr %arrayidx643.us, align 1, !tbaa !24
  %cmp645.us = icmp ult i8 %74, 8
  %or647345.us = or i1 %cmp636.us, %cmp645.us
  %and648346.us = and i1 %cmp596.us, %or647345.us
  %or649347.us = or i1 %and628344.us, %and648346.us
  %arrayidx655.us = getelementptr i8, ptr %49, i64 2
  %75 = load i8, ptr %arrayidx655.us, align 1, !tbaa !24
  %cmp657.us = icmp ult i8 %75, 8
  %arrayidx664.us = getelementptr i8, ptr %53, i64 2
  %76 = load i8, ptr %arrayidx664.us, align 1, !tbaa !24
  %cmp666.us = icmp ult i8 %76, 8
  %or668348.us = or i1 %cmp657.us, %cmp666.us
  %and669349.us = and i1 %cmp580.us, %or668348.us
  %or670350.us = or i1 %or649347.us, %and669349.us
  %add671.us = add nsw i32 %i.2.us, 2
  %mul672.us = mul nsw i32 %add671.us, %x_size
  %add673.us = add nsw i32 %mul672.us, %j.1.us
  %77 = sext i32 %add673.us to i64
  %78 = getelementptr i8, ptr %mid, i64 %77
  %arrayidx676.us = getelementptr i8, ptr %78, i64 -1
  %79 = load i8, ptr %arrayidx676.us, align 1, !tbaa !24
  %cmp678.us = icmp ult i8 %79, 8
  %arrayidx685.us = getelementptr i8, ptr %78, i64 1
  %80 = load i8, ptr %arrayidx685.us, align 1, !tbaa !24
  %cmp687.us = icmp ult i8 %80, 8
  %or689351.us = or i1 %cmp678.us, %cmp687.us
  %and690352.us = and i1 %cmp588.us, %or689351.us
  %or691353.us = or i1 %or670350.us, %and690352.us
  br i1 %or691353.us, label %if.then693.us, label %for.inc823.us

if.then693.us:                                    ; preds = %land.lhs.true608.us
  store i8 100, ptr %65, align 1, !tbaa !24
  %81 = tail call i32 @llvm.smax.i32(i32 %i.2.us, i32 5)
  %spec.store.select1.us = add nsw i32 %81, -1
  %82 = tail call i32 @llvm.smax.i32(i32 %j.1.us, i32 6)
  %spec.store.select4.us = add nsw i32 %82, -2
  br label %for.inc823.us

for.inc823.us:                                    ; preds = %if.then693.us, %land.lhs.true608.us, %land.lhs.true603.us, %if.else565.us, %if.then552.us, %land.lhs.true541.us, %land.lhs.true530.us, %land.lhs.true520.us, %lor.lhs.false.us, %if.end471.us, %if.then804.us, %if.then750.us, %if.then712.us, %if.end709.us, %if.then70.us, %land.lhs.true.us, %for.body4.us
  %a.6.us = phi i32 [ %a.2.us, %if.then804.us ], [ %a.2.us, %if.then750.us ], [ %a.2.us, %if.then712.us ], [ %a.2.us, %if.end709.us ], [ %a.1393.us, %for.body4.us ], [ %a.2.us, %if.else565.us ], [ %a.2.us, %land.lhs.true603.us ], [ %a.2.us, %land.lhs.true608.us ], [ %a.2.us, %if.then693.us ], [ %a.2.us, %if.end471.us ], [ %a.2.us, %lor.lhs.false.us ], [ %a.2.us, %land.lhs.true520.us ], [ %a.2.us, %land.lhs.true530.us ], [ %a.2.us, %land.lhs.true541.us ], [ %a.2.us, %if.then552.us ], [ %a.1393.us, %if.then70.us ], [ %a.1393.us, %land.lhs.true.us ]
  %b.6.us = phi i32 [ %b.2.us, %if.then804.us ], [ %b.2.us, %if.then750.us ], [ %b.2.us, %if.then712.us ], [ %b.2.us, %if.end709.us ], [ %b.1394.us, %for.body4.us ], [ %b.2.us, %if.else565.us ], [ %b.2.us, %land.lhs.true603.us ], [ %b.2.us, %land.lhs.true608.us ], [ %b.2.us, %if.then693.us ], [ %b.2.us, %if.end471.us ], [ %b.2.us, %lor.lhs.false.us ], [ %b.2.us, %land.lhs.true520.us ], [ %b.2.us, %land.lhs.true530.us ], [ %b.2.us, %land.lhs.true541.us ], [ %b.2.us, %if.then552.us ], [ %b.1394.us, %if.then70.us ], [ %b.1394.us, %land.lhs.true.us ]
  %i.4.us = phi i32 [ %spec.store.select2.us, %if.then804.us ], [ %i.2.us, %if.then750.us ], [ %i.2.us, %if.then712.us ], [ %i.2.us, %if.end709.us ], [ %i.1395.us, %for.body4.us ], [ %i.2.us, %if.else565.us ], [ %i.2.us, %land.lhs.true603.us ], [ %i.2.us, %land.lhs.true608.us ], [ %spec.store.select1.us, %if.then693.us ], [ %i.2.us, %if.end471.us ], [ %i.2.us, %lor.lhs.false.us ], [ %i.2.us, %land.lhs.true520.us ], [ %i.2.us, %land.lhs.true530.us ], [ %i.2.us, %land.lhs.true541.us ], [ %i.2.us, %if.then552.us ], [ %i.1395.us, %if.then70.us ], [ %i.1395.us, %land.lhs.true.us ]
  %j.3.us = phi i32 [ %spec.store.select5.us, %if.then804.us ], [ %j.1.us, %if.then750.us ], [ %j.1.us, %if.then712.us ], [ %j.1.us, %if.end709.us ], [ %j.0396.us, %for.body4.us ], [ %j.1.us, %if.else565.us ], [ %j.1.us, %land.lhs.true603.us ], [ %j.1.us, %land.lhs.true608.us ], [ %spec.store.select4.us, %if.then693.us ], [ %j.1.us, %if.end471.us ], [ %j.1.us, %lor.lhs.false.us ], [ %j.1.us, %land.lhs.true520.us ], [ %j.1.us, %land.lhs.true530.us ], [ %j.1.us, %land.lhs.true541.us ], [ %j.1.us, %if.then552.us ], [ %j.0396.us, %if.then70.us ], [ %j.0396.us, %land.lhs.true.us ]
  %inc824.us = add nsw i32 %j.3.us, 1
  %cmp3.us = icmp slt i32 %inc824.us, %sub2
  br i1 %cmp3.us, label %for.body4.us.backedge, label %for.cond1.for.inc826_crit_edge.us

for.body4.us.backedge:                            ; preds = %for.inc823.us, %for.cond1.for.inc826_crit_edge.us
  %j.0396.us.be = phi i32 [ %inc824.us, %for.inc823.us ], [ 4, %for.cond1.for.inc826_crit_edge.us ]
  %i.1395.us.be = phi i32 [ %i.4.us, %for.inc823.us ], [ %inc827.us, %for.cond1.for.inc826_crit_edge.us ]
  br label %for.body4.us, !llvm.loop !52

for.cond336.preheader.us:                         ; preds = %for.cond336.preheader.us.preheader, %for.inc354.us
  %indvars.iv406 = phi i64 [ %indvars.iv.next407, %for.inc354.us ], [ 0, %for.cond336.preheader.us.preheader ]
  %b.3388.us = phi i32 [ %b.5.us, %for.inc354.us ], [ %b.1394.us, %for.cond336.preheader.us.preheader ]
  %a.3387.us = phi i32 [ %a.5.us, %for.inc354.us ], [ %a.1393.us, %for.cond336.preheader.us.preheader ]
  %m.0386.us = phi i32 [ %m.2.us, %for.inc354.us ], [ 0, %for.cond336.preheader.us.preheader ]
  %83 = mul nuw nsw i64 %indvars.iv406, 3
  %84 = trunc nuw nsw i64 %indvars.iv406 to i32
  br label %for.body339.us

for.cond1.for.inc826_crit_edge.us:                ; preds = %for.inc823.us
  %inc827.us = add nsw i32 %i.4.us, 1
  %cmp.us = icmp slt i32 %inc827.us, %sub
  br i1 %cmp.us, label %for.body4.us.backedge, label %for.end828

for.end828:                                       ; preds = %for.cond1.for.inc826_crit_edge.us, %for.cond1.preheader.lr.ph, %entry
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %l) #22
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @susan_edges(ptr noundef readonly %in, ptr noundef captures(none) %r, ptr noundef writeonly captures(none) %mid, ptr noundef readonly %bp, i32 noundef %max_no, i32 noundef %x_size, i32 noundef %y_size) local_unnamed_addr #13 {
entry:
  %mul = mul nsw i32 %y_size, %x_size
  %conv = sext i32 %mul to i64
  %mul1 = shl nsw i64 %conv, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %r, i8 0, i64 %mul1, i1 false)
  %sub = add i32 %y_size, -3
  %cmp799 = icmp sgt i32 %y_size, 6
  br i1 %cmp799, label %for.cond3.preheader.lr.ph, label %for.end1257

for.cond3.preheader.lr.ph:                        ; preds = %entry
  %sub4 = add i32 %x_size, -3
  %cmp5797 = icmp sgt i32 %x_size, 6
  %idx.ext36 = sext i32 %sub4 to i64
  %sub72 = add nsw i32 %x_size, -5
  %idx.ext73 = sext i32 %sub72 to i64
  %sub123 = add nsw i32 %x_size, -6
  %idx.ext124 = sext i32 %sub123 to i64
  br i1 %cmp5797, label %for.cond3.preheader.us.preheader, label %for.cond288.preheader

for.cond3.preheader.us.preheader:                 ; preds = %for.cond3.preheader.lr.ph
  %0 = zext nneg i32 %x_size to i64
  %wide.trip.count815 = zext nneg i32 %sub to i64
  %wide.trip.count = zext i32 %sub4 to i64
  br label %for.cond3.preheader.us

for.cond3.preheader.us:                           ; preds = %for.cond3.preheader.us.preheader, %for.cond3.for.inc285_crit_edge.us
  %indvars.iv809 = phi i64 [ 3, %for.cond3.preheader.us.preheader ], [ %indvars.iv.next810, %for.cond3.for.inc285_crit_edge.us ]
  %1 = add nsw i64 %indvars.iv809, -3
  %2 = mul nsw i64 %1, %0
  %add.ptr.us = getelementptr inbounds i8, ptr %in, i64 %2
  %3 = trunc i64 %indvars.iv809 to i32
  %4 = mul i32 %x_size, %3
  %5 = zext i32 %4 to i64
  br label %for.body7.us

for.body7.us:                                     ; preds = %for.cond3.preheader.us, %for.inc.us
  %indvars.iv = phi i64 [ 3, %for.cond3.preheader.us ], [ %indvars.iv.next, %for.inc.us ]
  %add.ptr11.us = getelementptr inbounds nuw i8, ptr %add.ptr.us, i64 %indvars.iv
  %add.ptr12.us = getelementptr inbounds i8, ptr %add.ptr11.us, i64 -1
  %6 = add nuw nsw i64 %indvars.iv, %5
  %arrayidx.us = getelementptr inbounds nuw i8, ptr %in, i64 %6
  %7 = load i8, ptr %arrayidx.us, align 1, !tbaa !24
  %idx.ext15.us = zext i8 %7 to i64
  %add.ptr16.us = getelementptr inbounds nuw i8, ptr %bp, i64 %idx.ext15.us
  %8 = load i8, ptr %add.ptr12.us, align 1, !tbaa !24
  %idx.ext18.us = zext i8 %8 to i64
  %idx.neg.us = sub nsw i64 0, %idx.ext18.us
  %add.ptr19.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg.us
  %9 = load i8, ptr %add.ptr19.us, align 1, !tbaa !24
  %conv20.us = zext i8 %9 to i32
  %add21.us = add nuw nsw i32 %conv20.us, 100
  %incdec.ptr22.us = getelementptr inbounds nuw i8, ptr %add.ptr11.us, i64 1
  %10 = load i8, ptr %add.ptr11.us, align 1, !tbaa !24
  %idx.ext24.us = zext i8 %10 to i64
  %idx.neg25.us = sub nsw i64 0, %idx.ext24.us
  %add.ptr26.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg25.us
  %11 = load i8, ptr %add.ptr26.us, align 1, !tbaa !24
  %conv27.us = zext i8 %11 to i32
  %add28.us = add nuw nsw i32 %add21.us, %conv27.us
  %12 = load i8, ptr %incdec.ptr22.us, align 1, !tbaa !24
  %idx.ext30.us = zext i8 %12 to i64
  %idx.neg31.us = sub nsw i64 0, %idx.ext30.us
  %add.ptr32.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg31.us
  %13 = load i8, ptr %add.ptr32.us, align 1, !tbaa !24
  %conv33.us = zext i8 %13 to i32
  %add34.us = add nuw nsw i32 %add28.us, %conv33.us
  %add.ptr37.us = getelementptr inbounds i8, ptr %incdec.ptr22.us, i64 %idx.ext36
  %incdec.ptr38.us = getelementptr inbounds nuw i8, ptr %add.ptr37.us, i64 1
  %14 = load i8, ptr %add.ptr37.us, align 1, !tbaa !24
  %idx.ext40.us = zext i8 %14 to i64
  %idx.neg41.us = sub nsw i64 0, %idx.ext40.us
  %add.ptr42.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg41.us
  %15 = load i8, ptr %add.ptr42.us, align 1, !tbaa !24
  %conv43.us = zext i8 %15 to i32
  %add44.us = add nuw nsw i32 %add34.us, %conv43.us
  %incdec.ptr45.us = getelementptr inbounds nuw i8, ptr %add.ptr37.us, i64 2
  %16 = load i8, ptr %incdec.ptr38.us, align 1, !tbaa !24
  %idx.ext47.us = zext i8 %16 to i64
  %idx.neg48.us = sub nsw i64 0, %idx.ext47.us
  %add.ptr49.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg48.us
  %17 = load i8, ptr %add.ptr49.us, align 1, !tbaa !24
  %conv50.us = zext i8 %17 to i32
  %add51.us = add nuw nsw i32 %add44.us, %conv50.us
  %incdec.ptr52.us = getelementptr inbounds nuw i8, ptr %add.ptr37.us, i64 3
  %18 = load i8, ptr %incdec.ptr45.us, align 1, !tbaa !24
  %idx.ext54.us = zext i8 %18 to i64
  %idx.neg55.us = sub nsw i64 0, %idx.ext54.us
  %add.ptr56.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg55.us
  %19 = load i8, ptr %add.ptr56.us, align 1, !tbaa !24
  %conv57.us = zext i8 %19 to i32
  %add58.us = add nuw nsw i32 %add51.us, %conv57.us
  %incdec.ptr59.us = getelementptr inbounds nuw i8, ptr %add.ptr37.us, i64 4
  %20 = load i8, ptr %incdec.ptr52.us, align 1, !tbaa !24
  %idx.ext61.us = zext i8 %20 to i64
  %idx.neg62.us = sub nsw i64 0, %idx.ext61.us
  %add.ptr63.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg62.us
  %21 = load i8, ptr %add.ptr63.us, align 1, !tbaa !24
  %conv64.us = zext i8 %21 to i32
  %add65.us = add nuw nsw i32 %add58.us, %conv64.us
  %22 = load i8, ptr %incdec.ptr59.us, align 1, !tbaa !24
  %idx.ext67.us = zext i8 %22 to i64
  %idx.neg68.us = sub nsw i64 0, %idx.ext67.us
  %add.ptr69.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg68.us
  %23 = load i8, ptr %add.ptr69.us, align 1, !tbaa !24
  %conv70.us = zext i8 %23 to i32
  %add71.us = add nuw nsw i32 %add65.us, %conv70.us
  %add.ptr74.us = getelementptr inbounds i8, ptr %incdec.ptr59.us, i64 %idx.ext73
  %incdec.ptr75.us = getelementptr inbounds nuw i8, ptr %add.ptr74.us, i64 1
  %24 = load i8, ptr %add.ptr74.us, align 1, !tbaa !24
  %idx.ext77.us = zext i8 %24 to i64
  %idx.neg78.us = sub nsw i64 0, %idx.ext77.us
  %add.ptr79.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg78.us
  %25 = load i8, ptr %add.ptr79.us, align 1, !tbaa !24
  %conv80.us = zext i8 %25 to i32
  %add81.us = add nuw nsw i32 %add71.us, %conv80.us
  %incdec.ptr82.us = getelementptr inbounds nuw i8, ptr %add.ptr74.us, i64 2
  %26 = load i8, ptr %incdec.ptr75.us, align 1, !tbaa !24
  %idx.ext84.us = zext i8 %26 to i64
  %idx.neg85.us = sub nsw i64 0, %idx.ext84.us
  %add.ptr86.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg85.us
  %27 = load i8, ptr %add.ptr86.us, align 1, !tbaa !24
  %conv87.us = zext i8 %27 to i32
  %add88.us = add nuw nsw i32 %add81.us, %conv87.us
  %incdec.ptr89.us = getelementptr inbounds nuw i8, ptr %add.ptr74.us, i64 3
  %28 = load i8, ptr %incdec.ptr82.us, align 1, !tbaa !24
  %idx.ext91.us = zext i8 %28 to i64
  %idx.neg92.us = sub nsw i64 0, %idx.ext91.us
  %add.ptr93.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg92.us
  %29 = load i8, ptr %add.ptr93.us, align 1, !tbaa !24
  %conv94.us = zext i8 %29 to i32
  %add95.us = add nuw nsw i32 %add88.us, %conv94.us
  %incdec.ptr96.us = getelementptr inbounds nuw i8, ptr %add.ptr74.us, i64 4
  %30 = load i8, ptr %incdec.ptr89.us, align 1, !tbaa !24
  %idx.ext98.us = zext i8 %30 to i64
  %idx.neg99.us = sub nsw i64 0, %idx.ext98.us
  %add.ptr100.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg99.us
  %31 = load i8, ptr %add.ptr100.us, align 1, !tbaa !24
  %conv101.us = zext i8 %31 to i32
  %add102.us = add nuw nsw i32 %add95.us, %conv101.us
  %incdec.ptr103.us = getelementptr inbounds nuw i8, ptr %add.ptr74.us, i64 5
  %32 = load i8, ptr %incdec.ptr96.us, align 1, !tbaa !24
  %idx.ext105.us = zext i8 %32 to i64
  %idx.neg106.us = sub nsw i64 0, %idx.ext105.us
  %add.ptr107.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg106.us
  %33 = load i8, ptr %add.ptr107.us, align 1, !tbaa !24
  %conv108.us = zext i8 %33 to i32
  %add109.us = add nuw nsw i32 %add102.us, %conv108.us
  %incdec.ptr110.us = getelementptr inbounds nuw i8, ptr %add.ptr74.us, i64 6
  %34 = load i8, ptr %incdec.ptr103.us, align 1, !tbaa !24
  %idx.ext112.us = zext i8 %34 to i64
  %idx.neg113.us = sub nsw i64 0, %idx.ext112.us
  %add.ptr114.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg113.us
  %35 = load i8, ptr %add.ptr114.us, align 1, !tbaa !24
  %conv115.us = zext i8 %35 to i32
  %add116.us = add nuw nsw i32 %add109.us, %conv115.us
  %36 = load i8, ptr %incdec.ptr110.us, align 1, !tbaa !24
  %idx.ext118.us = zext i8 %36 to i64
  %idx.neg119.us = sub nsw i64 0, %idx.ext118.us
  %add.ptr120.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg119.us
  %37 = load i8, ptr %add.ptr120.us, align 1, !tbaa !24
  %conv121.us = zext i8 %37 to i32
  %add122.us = add nuw nsw i32 %add116.us, %conv121.us
  %add.ptr125.us = getelementptr inbounds i8, ptr %incdec.ptr110.us, i64 %idx.ext124
  %incdec.ptr126.us = getelementptr inbounds nuw i8, ptr %add.ptr125.us, i64 1
  %38 = load i8, ptr %add.ptr125.us, align 1, !tbaa !24
  %idx.ext128.us = zext i8 %38 to i64
  %idx.neg129.us = sub nsw i64 0, %idx.ext128.us
  %add.ptr130.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg129.us
  %39 = load i8, ptr %add.ptr130.us, align 1, !tbaa !24
  %conv131.us = zext i8 %39 to i32
  %add132.us = add nuw nsw i32 %add122.us, %conv131.us
  %incdec.ptr133.us = getelementptr inbounds nuw i8, ptr %add.ptr125.us, i64 2
  %40 = load i8, ptr %incdec.ptr126.us, align 1, !tbaa !24
  %idx.ext135.us = zext i8 %40 to i64
  %idx.neg136.us = sub nsw i64 0, %idx.ext135.us
  %add.ptr137.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg136.us
  %41 = load i8, ptr %add.ptr137.us, align 1, !tbaa !24
  %conv138.us = zext i8 %41 to i32
  %add139.us = add nuw nsw i32 %add132.us, %conv138.us
  %42 = load i8, ptr %incdec.ptr133.us, align 1, !tbaa !24
  %idx.ext141.us = zext i8 %42 to i64
  %idx.neg142.us = sub nsw i64 0, %idx.ext141.us
  %add.ptr143.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg142.us
  %43 = load i8, ptr %add.ptr143.us, align 1, !tbaa !24
  %conv144.us = zext i8 %43 to i32
  %add145.us = add nuw nsw i32 %add139.us, %conv144.us
  %add.ptr146.us = getelementptr inbounds nuw i8, ptr %add.ptr125.us, i64 4
  %incdec.ptr147.us = getelementptr inbounds nuw i8, ptr %add.ptr125.us, i64 5
  %44 = load i8, ptr %add.ptr146.us, align 1, !tbaa !24
  %idx.ext149.us = zext i8 %44 to i64
  %idx.neg150.us = sub nsw i64 0, %idx.ext149.us
  %add.ptr151.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg150.us
  %45 = load i8, ptr %add.ptr151.us, align 1, !tbaa !24
  %conv152.us = zext i8 %45 to i32
  %add153.us = add nuw nsw i32 %add145.us, %conv152.us
  %incdec.ptr154.us = getelementptr inbounds nuw i8, ptr %add.ptr125.us, i64 6
  %46 = load i8, ptr %incdec.ptr147.us, align 1, !tbaa !24
  %idx.ext156.us = zext i8 %46 to i64
  %idx.neg157.us = sub nsw i64 0, %idx.ext156.us
  %add.ptr158.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg157.us
  %47 = load i8, ptr %add.ptr158.us, align 1, !tbaa !24
  %conv159.us = zext i8 %47 to i32
  %add160.us = add nuw nsw i32 %add153.us, %conv159.us
  %48 = load i8, ptr %incdec.ptr154.us, align 1, !tbaa !24
  %idx.ext162.us = zext i8 %48 to i64
  %idx.neg163.us = sub nsw i64 0, %idx.ext162.us
  %add.ptr164.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg163.us
  %49 = load i8, ptr %add.ptr164.us, align 1, !tbaa !24
  %conv165.us = zext i8 %49 to i32
  %add166.us = add nuw nsw i32 %add160.us, %conv165.us
  %add.ptr169.us = getelementptr inbounds i8, ptr %incdec.ptr154.us, i64 %idx.ext124
  %incdec.ptr170.us = getelementptr inbounds nuw i8, ptr %add.ptr169.us, i64 1
  %50 = load i8, ptr %add.ptr169.us, align 1, !tbaa !24
  %idx.ext172.us = zext i8 %50 to i64
  %idx.neg173.us = sub nsw i64 0, %idx.ext172.us
  %add.ptr174.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg173.us
  %51 = load i8, ptr %add.ptr174.us, align 1, !tbaa !24
  %conv175.us = zext i8 %51 to i32
  %add176.us = add nuw nsw i32 %add166.us, %conv175.us
  %incdec.ptr177.us = getelementptr inbounds nuw i8, ptr %add.ptr169.us, i64 2
  %52 = load i8, ptr %incdec.ptr170.us, align 1, !tbaa !24
  %idx.ext179.us = zext i8 %52 to i64
  %idx.neg180.us = sub nsw i64 0, %idx.ext179.us
  %add.ptr181.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg180.us
  %53 = load i8, ptr %add.ptr181.us, align 1, !tbaa !24
  %conv182.us = zext i8 %53 to i32
  %add183.us = add nuw nsw i32 %add176.us, %conv182.us
  %incdec.ptr184.us = getelementptr inbounds nuw i8, ptr %add.ptr169.us, i64 3
  %54 = load i8, ptr %incdec.ptr177.us, align 1, !tbaa !24
  %idx.ext186.us = zext i8 %54 to i64
  %idx.neg187.us = sub nsw i64 0, %idx.ext186.us
  %add.ptr188.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg187.us
  %55 = load i8, ptr %add.ptr188.us, align 1, !tbaa !24
  %conv189.us = zext i8 %55 to i32
  %add190.us = add nuw nsw i32 %add183.us, %conv189.us
  %incdec.ptr191.us = getelementptr inbounds nuw i8, ptr %add.ptr169.us, i64 4
  %56 = load i8, ptr %incdec.ptr184.us, align 1, !tbaa !24
  %idx.ext193.us = zext i8 %56 to i64
  %idx.neg194.us = sub nsw i64 0, %idx.ext193.us
  %add.ptr195.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg194.us
  %57 = load i8, ptr %add.ptr195.us, align 1, !tbaa !24
  %conv196.us = zext i8 %57 to i32
  %add197.us = add nuw nsw i32 %add190.us, %conv196.us
  %incdec.ptr198.us = getelementptr inbounds nuw i8, ptr %add.ptr169.us, i64 5
  %58 = load i8, ptr %incdec.ptr191.us, align 1, !tbaa !24
  %idx.ext200.us = zext i8 %58 to i64
  %idx.neg201.us = sub nsw i64 0, %idx.ext200.us
  %add.ptr202.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg201.us
  %59 = load i8, ptr %add.ptr202.us, align 1, !tbaa !24
  %conv203.us = zext i8 %59 to i32
  %add204.us = add nuw nsw i32 %add197.us, %conv203.us
  %incdec.ptr205.us = getelementptr inbounds nuw i8, ptr %add.ptr169.us, i64 6
  %60 = load i8, ptr %incdec.ptr198.us, align 1, !tbaa !24
  %idx.ext207.us = zext i8 %60 to i64
  %idx.neg208.us = sub nsw i64 0, %idx.ext207.us
  %add.ptr209.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg208.us
  %61 = load i8, ptr %add.ptr209.us, align 1, !tbaa !24
  %conv210.us = zext i8 %61 to i32
  %add211.us = add nuw nsw i32 %add204.us, %conv210.us
  %62 = load i8, ptr %incdec.ptr205.us, align 1, !tbaa !24
  %idx.ext213.us = zext i8 %62 to i64
  %idx.neg214.us = sub nsw i64 0, %idx.ext213.us
  %add.ptr215.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg214.us
  %63 = load i8, ptr %add.ptr215.us, align 1, !tbaa !24
  %conv216.us = zext i8 %63 to i32
  %add217.us = add nuw nsw i32 %add211.us, %conv216.us
  %add.ptr220.us = getelementptr inbounds i8, ptr %incdec.ptr205.us, i64 %idx.ext73
  %incdec.ptr221.us = getelementptr inbounds nuw i8, ptr %add.ptr220.us, i64 1
  %64 = load i8, ptr %add.ptr220.us, align 1, !tbaa !24
  %idx.ext223.us = zext i8 %64 to i64
  %idx.neg224.us = sub nsw i64 0, %idx.ext223.us
  %add.ptr225.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg224.us
  %65 = load i8, ptr %add.ptr225.us, align 1, !tbaa !24
  %conv226.us = zext i8 %65 to i32
  %add227.us = add nuw nsw i32 %add217.us, %conv226.us
  %incdec.ptr228.us = getelementptr inbounds nuw i8, ptr %add.ptr220.us, i64 2
  %66 = load i8, ptr %incdec.ptr221.us, align 1, !tbaa !24
  %idx.ext230.us = zext i8 %66 to i64
  %idx.neg231.us = sub nsw i64 0, %idx.ext230.us
  %add.ptr232.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg231.us
  %67 = load i8, ptr %add.ptr232.us, align 1, !tbaa !24
  %conv233.us = zext i8 %67 to i32
  %add234.us = add nuw nsw i32 %add227.us, %conv233.us
  %incdec.ptr235.us = getelementptr inbounds nuw i8, ptr %add.ptr220.us, i64 3
  %68 = load i8, ptr %incdec.ptr228.us, align 1, !tbaa !24
  %idx.ext237.us = zext i8 %68 to i64
  %idx.neg238.us = sub nsw i64 0, %idx.ext237.us
  %add.ptr239.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg238.us
  %69 = load i8, ptr %add.ptr239.us, align 1, !tbaa !24
  %conv240.us = zext i8 %69 to i32
  %add241.us = add nuw nsw i32 %add234.us, %conv240.us
  %incdec.ptr242.us = getelementptr inbounds nuw i8, ptr %add.ptr220.us, i64 4
  %70 = load i8, ptr %incdec.ptr235.us, align 1, !tbaa !24
  %idx.ext244.us = zext i8 %70 to i64
  %idx.neg245.us = sub nsw i64 0, %idx.ext244.us
  %add.ptr246.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg245.us
  %71 = load i8, ptr %add.ptr246.us, align 1, !tbaa !24
  %conv247.us = zext i8 %71 to i32
  %add248.us = add nuw nsw i32 %add241.us, %conv247.us
  %72 = load i8, ptr %incdec.ptr242.us, align 1, !tbaa !24
  %idx.ext250.us = zext i8 %72 to i64
  %idx.neg251.us = sub nsw i64 0, %idx.ext250.us
  %add.ptr252.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg251.us
  %73 = load i8, ptr %add.ptr252.us, align 1, !tbaa !24
  %conv253.us = zext i8 %73 to i32
  %add254.us = add nuw nsw i32 %add248.us, %conv253.us
  %add.ptr257.us = getelementptr inbounds i8, ptr %incdec.ptr242.us, i64 %idx.ext36
  %incdec.ptr258.us = getelementptr inbounds nuw i8, ptr %add.ptr257.us, i64 1
  %74 = load i8, ptr %add.ptr257.us, align 1, !tbaa !24
  %idx.ext260.us = zext i8 %74 to i64
  %idx.neg261.us = sub nsw i64 0, %idx.ext260.us
  %add.ptr262.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg261.us
  %75 = load i8, ptr %add.ptr262.us, align 1, !tbaa !24
  %conv263.us = zext i8 %75 to i32
  %add264.us = add nuw nsw i32 %add254.us, %conv263.us
  %incdec.ptr265.us = getelementptr inbounds nuw i8, ptr %add.ptr257.us, i64 2
  %76 = load i8, ptr %incdec.ptr258.us, align 1, !tbaa !24
  %idx.ext267.us = zext i8 %76 to i64
  %idx.neg268.us = sub nsw i64 0, %idx.ext267.us
  %add.ptr269.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg268.us
  %77 = load i8, ptr %add.ptr269.us, align 1, !tbaa !24
  %conv270.us = zext i8 %77 to i32
  %add271.us = add nuw nsw i32 %add264.us, %conv270.us
  %78 = load i8, ptr %incdec.ptr265.us, align 1, !tbaa !24
  %idx.ext273.us = zext i8 %78 to i64
  %idx.neg274.us = sub nsw i64 0, %idx.ext273.us
  %add.ptr275.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg274.us
  %79 = load i8, ptr %add.ptr275.us, align 1, !tbaa !24
  %conv276.us = zext i8 %79 to i32
  %add277.us = add nuw nsw i32 %add271.us, %conv276.us
  %cmp278.not.us = icmp sgt i32 %add277.us, %max_no
  br i1 %cmp278.not.us, label %for.inc.us, label %if.then.us

if.then.us:                                       ; preds = %for.body7.us
  %sub280.us = sub nsw i32 %max_no, %add277.us
  %arrayidx284.us = getelementptr inbounds nuw i32, ptr %r, i64 %6
  store i32 %sub280.us, ptr %arrayidx284.us, align 4, !tbaa !16
  br label %for.inc.us

for.inc.us:                                       ; preds = %if.then.us, %for.body7.us
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.cond3.for.inc285_crit_edge.us, label %for.body7.us, !llvm.loop !53

for.cond3.for.inc285_crit_edge.us:                ; preds = %for.inc.us
  %indvars.iv.next810 = add nuw nsw i64 %indvars.iv809, 1
  %exitcond816.not = icmp eq i64 %indvars.iv.next810, %wide.trip.count815
  br i1 %exitcond816.not, label %for.cond288.preheader, label %for.cond3.preheader.us, !llvm.loop !54

for.cond288.preheader:                            ; preds = %for.cond3.for.inc285_crit_edge.us, %for.cond3.preheader.lr.ph
  %sub289 = add nsw i32 %y_size, -4
  %cmp290803 = icmp sgt i32 %y_size, 8
  br i1 %cmp290803, label %for.cond293.preheader.lr.ph, label %for.end1257

for.cond293.preheader.lr.ph:                      ; preds = %for.cond288.preheader
  %cmp295801 = icmp sgt i32 %x_size, 8
  %sub354 = add nsw i32 %x_size, -3
  %idx.ext355 = sext i32 %sub354 to i64
  %sub406 = add nsw i32 %x_size, -5
  %idx.ext407 = sext i32 %sub406 to i64
  %sub473 = add nsw i32 %x_size, -6
  %idx.ext474 = sext i32 %sub473 to i64
  br i1 %cmp295801, label %for.cond293.preheader.us.preheader, label %for.end1257

for.cond293.preheader.us.preheader:               ; preds = %for.cond293.preheader.lr.ph
  %sub294 = add nsw i32 %x_size, -4
  %80 = zext nneg i32 %x_size to i64
  %wide.trip.count831 = zext nneg i32 %sub289 to i64
  %wide.trip.count821 = zext i32 %sub294 to i64
  br label %for.cond293.preheader.us

for.cond293.preheader.us:                         ; preds = %for.cond293.preheader.us.preheader, %for.cond293.for.inc1255_crit_edge.us
  %indvars.iv823 = phi i64 [ 4, %for.cond293.preheader.us.preheader ], [ %indvars.iv.next824, %for.cond293.for.inc1255_crit_edge.us ]
  %81 = add nsw i64 %indvars.iv823, -3
  %82 = mul nsw i64 %81, %80
  %add.ptr323.us = getelementptr inbounds i8, ptr %in, i64 %82
  %83 = trunc i64 %indvars.iv823 to i32
  %84 = mul i32 %x_size, %83
  %85 = zext i32 %84 to i64
  %86 = trunc nuw nsw i64 %indvars.iv823 to i32
  %87 = trunc nuw nsw i64 %indvars.iv823 to i32
  br label %for.body297.us

for.body297.us:                                   ; preds = %for.cond293.preheader.us, %for.inc1252.us
  %indvars.iv817 = phi i64 [ 4, %for.cond293.preheader.us ], [ %indvars.iv.next818, %for.inc1252.us ]
  %88 = add nuw nsw i64 %indvars.iv817, %85
  %arrayidx301.us = getelementptr inbounds nuw i32, ptr %r, i64 %88
  %89 = load i32, ptr %arrayidx301.us, align 4, !tbaa !16
  %cmp302.us = icmp sgt i32 %89, 0
  br i1 %cmp302.us, label %if.then304.us, label %for.inc1252.us

if.then304.us:                                    ; preds = %for.body297.us
  %sub309.us = sub nsw i32 %max_no, %89
  %arrayidx313.us = getelementptr inbounds nuw i8, ptr %in, i64 %88
  %90 = load i8, ptr %arrayidx313.us, align 1, !tbaa !24
  %idx.ext315.us = zext i8 %90 to i64
  %add.ptr316.us = getelementptr inbounds nuw i8, ptr %bp, i64 %idx.ext315.us
  %cmp317.us = icmp sgt i32 %sub309.us, 600
  br i1 %cmp317.us, label %if.then319.us, label %if.then761.us

if.then319.us:                                    ; preds = %if.then304.us
  %add.ptr325.us = getelementptr inbounds nuw i8, ptr %add.ptr323.us, i64 %indvars.iv817
  %add.ptr326.us = getelementptr inbounds i8, ptr %add.ptr325.us, i64 -1
  %91 = load i8, ptr %add.ptr326.us, align 1, !tbaa !24
  %idx.ext329.us = zext i8 %91 to i64
  %idx.neg330.us = sub nsw i64 0, %idx.ext329.us
  %add.ptr331.us = getelementptr inbounds i8, ptr %add.ptr316.us, i64 %idx.neg330.us
  %92 = load i8, ptr %add.ptr331.us, align 1, !tbaa !24
  %conv332.us = zext i8 %92 to i32
  %incdec.ptr337.us = getelementptr inbounds nuw i8, ptr %add.ptr325.us, i64 1
  %93 = load i8, ptr %add.ptr325.us, align 1, !tbaa !24
  %idx.ext339.us = zext i8 %93 to i64
  %idx.neg340.us = sub nsw i64 0, %idx.ext339.us
  %add.ptr341.us = getelementptr inbounds i8, ptr %add.ptr316.us, i64 %idx.neg340.us
  %94 = load i8, ptr %add.ptr341.us, align 1, !tbaa !24
  %conv342.us = zext i8 %94 to i32
  %mul343.neg700.us = add nuw nsw i32 %conv342.us, %conv332.us
  %95 = load i8, ptr %incdec.ptr337.us, align 1, !tbaa !24
  %idx.ext346.us = zext i8 %95 to i64
  %idx.neg347.us = sub nsw i64 0, %idx.ext346.us
  %add.ptr348.us = getelementptr inbounds i8, ptr %add.ptr316.us, i64 %idx.neg347.us
  %96 = load i8, ptr %add.ptr348.us, align 1, !tbaa !24
  %conv349.us = zext i8 %96 to i32
  %mul352.neg701.us = add nuw nsw i32 %mul343.neg700.us, %conv349.us
  %add.ptr356.us = getelementptr inbounds i8, ptr %incdec.ptr337.us, i64 %idx.ext355
  %incdec.ptr357.us = getelementptr inbounds nuw i8, ptr %add.ptr356.us, i64 1
  %97 = load i8, ptr %add.ptr356.us, align 1, !tbaa !24
  %idx.ext359.us = zext i8 %97 to i64
  %idx.neg360.us = sub nsw i64 0, %idx.ext359.us
  %add.ptr361.us = getelementptr inbounds i8, ptr %add.ptr316.us, i64 %idx.neg360.us
  %98 = load i8, ptr %add.ptr361.us, align 1, !tbaa !24
  %conv362.us = zext i8 %98 to i32
  %incdec.ptr368.us = getelementptr inbounds nuw i8, ptr %add.ptr356.us, i64 2
  %99 = load i8, ptr %incdec.ptr357.us, align 1, !tbaa !24
  %idx.ext370.us = zext i8 %99 to i64
  %idx.neg371.us = sub nsw i64 0, %idx.ext370.us
  %add.ptr372.us = getelementptr inbounds i8, ptr %add.ptr316.us, i64 %idx.neg371.us
  %100 = load i8, ptr %add.ptr372.us, align 1, !tbaa !24
  %conv373.us = zext i8 %100 to i32
  %mul363702.us = add nuw nsw i32 %conv373.us, %conv362.us
  %incdec.ptr378.us = getelementptr inbounds nuw i8, ptr %add.ptr356.us, i64 3
  %101 = load i8, ptr %incdec.ptr368.us, align 1, !tbaa !24
  %idx.ext380.us = zext i8 %101 to i64
  %idx.neg381.us = sub nsw i64 0, %idx.ext380.us
  %add.ptr382.us = getelementptr inbounds i8, ptr %add.ptr316.us, i64 %idx.neg381.us
  %102 = load i8, ptr %add.ptr382.us, align 1, !tbaa !24
  %conv383.us = zext i8 %102 to i32
  %103 = add nuw nsw i32 %mul363702.us, %conv383.us
  %incdec.ptr386.us = getelementptr inbounds nuw i8, ptr %add.ptr356.us, i64 4
  %104 = load i8, ptr %incdec.ptr378.us, align 1, !tbaa !24
  %idx.ext388.us = zext i8 %104 to i64
  %idx.neg389.us = sub nsw i64 0, %idx.ext388.us
  %add.ptr390.us = getelementptr inbounds i8, ptr %add.ptr316.us, i64 %idx.neg389.us
  %105 = load i8, ptr %add.ptr390.us, align 1, !tbaa !24
  %conv391.us = zext i8 %105 to i32
  %106 = add nuw nsw i32 %103, %conv391.us
  %107 = load i8, ptr %incdec.ptr386.us, align 1, !tbaa !24
  %idx.ext397.us = zext i8 %107 to i64
  %idx.neg398.us = sub nsw i64 0, %idx.ext397.us
  %add.ptr399.us = getelementptr inbounds i8, ptr %add.ptr316.us, i64 %idx.neg398.us
  %108 = load i8, ptr %add.ptr399.us, align 1, !tbaa !24
  %conv400.us = zext i8 %108 to i32
  %109 = add nuw nsw i32 %106, %conv400.us
  %add.ptr408.us = getelementptr inbounds i8, ptr %incdec.ptr386.us, i64 %idx.ext407
  %incdec.ptr409.us = getelementptr inbounds nuw i8, ptr %add.ptr408.us, i64 1
  %110 = load i8, ptr %add.ptr408.us, align 1, !tbaa !24
  %idx.ext411.us = zext i8 %110 to i64
  %idx.neg412.us = sub nsw i64 0, %idx.ext411.us
  %add.ptr413.us = getelementptr inbounds i8, ptr %add.ptr316.us, i64 %idx.neg412.us
  %111 = load i8, ptr %add.ptr413.us, align 1, !tbaa !24
  %conv414.us = zext i8 %111 to i32
  %incdec.ptr419.us = getelementptr inbounds nuw i8, ptr %add.ptr408.us, i64 2
  %112 = load i8, ptr %incdec.ptr409.us, align 1, !tbaa !24
  %idx.ext421.us = zext i8 %112 to i64
  %idx.neg422.us = sub nsw i64 0, %idx.ext421.us
  %add.ptr423.us = getelementptr inbounds i8, ptr %add.ptr316.us, i64 %idx.neg422.us
  %113 = load i8, ptr %add.ptr423.us, align 1, !tbaa !24
  %conv424.us = zext i8 %113 to i32
  %incdec.ptr429.us = getelementptr inbounds nuw i8, ptr %add.ptr408.us, i64 3
  %114 = load i8, ptr %incdec.ptr419.us, align 1, !tbaa !24
  %idx.ext431.us = zext i8 %114 to i64
  %idx.neg432.us = sub nsw i64 0, %idx.ext431.us
  %add.ptr433.us = getelementptr inbounds i8, ptr %add.ptr316.us, i64 %idx.neg432.us
  %115 = load i8, ptr %add.ptr433.us, align 1, !tbaa !24
  %conv434.us = zext i8 %115 to i32
  %incdec.ptr438.us = getelementptr inbounds nuw i8, ptr %add.ptr408.us, i64 4
  %116 = load i8, ptr %incdec.ptr429.us, align 1, !tbaa !24
  %idx.ext440.us = zext i8 %116 to i64
  %idx.neg441.us = sub nsw i64 0, %idx.ext440.us
  %add.ptr442.us = getelementptr inbounds i8, ptr %add.ptr316.us, i64 %idx.neg441.us
  %117 = load i8, ptr %add.ptr442.us, align 1, !tbaa !24
  %conv443.us = zext i8 %117 to i32
  %incdec.ptr445.us = getelementptr inbounds nuw i8, ptr %add.ptr408.us, i64 5
  %118 = load i8, ptr %incdec.ptr438.us, align 1, !tbaa !24
  %idx.ext447.us = zext i8 %118 to i64
  %idx.neg448.us = sub nsw i64 0, %idx.ext447.us
  %add.ptr449.us = getelementptr inbounds i8, ptr %add.ptr316.us, i64 %idx.neg448.us
  %119 = load i8, ptr %add.ptr449.us, align 1, !tbaa !24
  %conv450.us = zext i8 %119 to i32
  %incdec.ptr454.us = getelementptr inbounds nuw i8, ptr %add.ptr408.us, i64 6
  %120 = load i8, ptr %incdec.ptr445.us, align 1, !tbaa !24
  %idx.ext456.us = zext i8 %120 to i64
  %idx.neg457.us = sub nsw i64 0, %idx.ext456.us
  %add.ptr458.us = getelementptr inbounds i8, ptr %add.ptr316.us, i64 %idx.neg457.us
  %121 = load i8, ptr %add.ptr458.us, align 1, !tbaa !24
  %conv459.us = zext i8 %121 to i32
  %122 = load i8, ptr %incdec.ptr454.us, align 1, !tbaa !24
  %idx.ext465.us = zext i8 %122 to i64
  %idx.neg466.us = sub nsw i64 0, %idx.ext465.us
  %add.ptr467.us = getelementptr inbounds i8, ptr %add.ptr316.us, i64 %idx.neg466.us
  %123 = load i8, ptr %add.ptr467.us, align 1, !tbaa !24
  %conv468.us = zext i8 %123 to i32
  %add.ptr475.us = getelementptr inbounds i8, ptr %incdec.ptr454.us, i64 %idx.ext474
  %incdec.ptr476.us = getelementptr inbounds nuw i8, ptr %add.ptr475.us, i64 1
  %124 = load i8, ptr %add.ptr475.us, align 1, !tbaa !24
  %idx.ext478.us = zext i8 %124 to i64
  %idx.neg479.us = sub nsw i64 0, %idx.ext478.us
  %add.ptr480.us = getelementptr inbounds i8, ptr %add.ptr316.us, i64 %idx.neg479.us
  %125 = load i8, ptr %add.ptr480.us, align 1, !tbaa !24
  %conv481.us = zext i8 %125 to i32
  %incdec.ptr484.us = getelementptr inbounds nuw i8, ptr %add.ptr475.us, i64 2
  %126 = load i8, ptr %incdec.ptr476.us, align 1, !tbaa !24
  %idx.ext486.us = zext i8 %126 to i64
  %idx.neg487.us = sub nsw i64 0, %idx.ext486.us
  %add.ptr488.us = getelementptr inbounds i8, ptr %add.ptr316.us, i64 %idx.neg487.us
  %127 = load i8, ptr %add.ptr488.us, align 1, !tbaa !24
  %conv489.us = zext i8 %127 to i32
  %128 = load i8, ptr %incdec.ptr484.us, align 1, !tbaa !24
  %idx.ext493.us = zext i8 %128 to i64
  %idx.neg494.us = sub nsw i64 0, %idx.ext493.us
  %add.ptr495.us = getelementptr inbounds i8, ptr %add.ptr316.us, i64 %idx.neg494.us
  %129 = load i8, ptr %add.ptr495.us, align 1, !tbaa !24
  %conv496.us = zext i8 %129 to i32
  %add.ptr498.us = getelementptr inbounds nuw i8, ptr %add.ptr475.us, i64 4
  %incdec.ptr499.us = getelementptr inbounds nuw i8, ptr %add.ptr475.us, i64 5
  %130 = load i8, ptr %add.ptr498.us, align 1, !tbaa !24
  %idx.ext501.us = zext i8 %130 to i64
  %idx.neg502.us = sub nsw i64 0, %idx.ext501.us
  %add.ptr503.us = getelementptr inbounds i8, ptr %add.ptr316.us, i64 %idx.neg502.us
  %131 = load i8, ptr %add.ptr503.us, align 1, !tbaa !24
  %conv504.us = zext i8 %131 to i32
  %incdec.ptr506.us = getelementptr inbounds nuw i8, ptr %add.ptr475.us, i64 6
  %132 = load i8, ptr %incdec.ptr499.us, align 1, !tbaa !24
  %idx.ext508.us = zext i8 %132 to i64
  %idx.neg509.us = sub nsw i64 0, %idx.ext508.us
  %add.ptr510.us = getelementptr inbounds i8, ptr %add.ptr316.us, i64 %idx.neg509.us
  %133 = load i8, ptr %add.ptr510.us, align 1, !tbaa !24
  %conv511.us = zext i8 %133 to i32
  %134 = load i8, ptr %incdec.ptr506.us, align 1, !tbaa !24
  %idx.ext515.us = zext i8 %134 to i64
  %idx.neg516.us = sub nsw i64 0, %idx.ext515.us
  %add.ptr517.us = getelementptr inbounds i8, ptr %add.ptr316.us, i64 %idx.neg516.us
  %135 = load i8, ptr %add.ptr517.us, align 1, !tbaa !24
  %conv518.us = zext i8 %135 to i32
  %add.ptr523.us = getelementptr inbounds i8, ptr %incdec.ptr506.us, i64 %idx.ext474
  %incdec.ptr524.us = getelementptr inbounds nuw i8, ptr %add.ptr523.us, i64 1
  %136 = load i8, ptr %add.ptr523.us, align 1, !tbaa !24
  %idx.ext526.us = zext i8 %136 to i64
  %idx.neg527.us = sub nsw i64 0, %idx.ext526.us
  %add.ptr528.us = getelementptr inbounds i8, ptr %add.ptr316.us, i64 %idx.neg527.us
  %137 = load i8, ptr %add.ptr528.us, align 1, !tbaa !24
  %conv529.us = zext i8 %137 to i32
  %incdec.ptr534.us = getelementptr inbounds nuw i8, ptr %add.ptr523.us, i64 2
  %138 = load i8, ptr %incdec.ptr524.us, align 1, !tbaa !24
  %idx.ext536.us = zext i8 %138 to i64
  %idx.neg537.us = sub nsw i64 0, %idx.ext536.us
  %add.ptr538.us = getelementptr inbounds i8, ptr %add.ptr316.us, i64 %idx.neg537.us
  %139 = load i8, ptr %add.ptr538.us, align 1, !tbaa !24
  %conv539.us = zext i8 %139 to i32
  %incdec.ptr544.us = getelementptr inbounds nuw i8, ptr %add.ptr523.us, i64 3
  %140 = load i8, ptr %incdec.ptr534.us, align 1, !tbaa !24
  %idx.ext546.us = zext i8 %140 to i64
  %idx.neg547.us = sub nsw i64 0, %idx.ext546.us
  %add.ptr548.us = getelementptr inbounds i8, ptr %add.ptr316.us, i64 %idx.neg547.us
  %141 = load i8, ptr %add.ptr548.us, align 1, !tbaa !24
  %conv549.us = zext i8 %141 to i32
  %incdec.ptr553.us = getelementptr inbounds nuw i8, ptr %add.ptr523.us, i64 4
  %142 = load i8, ptr %incdec.ptr544.us, align 1, !tbaa !24
  %idx.ext555.us = zext i8 %142 to i64
  %idx.neg556.us = sub nsw i64 0, %idx.ext555.us
  %add.ptr557.us = getelementptr inbounds i8, ptr %add.ptr316.us, i64 %idx.neg556.us
  %143 = load i8, ptr %add.ptr557.us, align 1, !tbaa !24
  %conv558.us = zext i8 %143 to i32
  %incdec.ptr560.us = getelementptr inbounds nuw i8, ptr %add.ptr523.us, i64 5
  %144 = load i8, ptr %incdec.ptr553.us, align 1, !tbaa !24
  %idx.ext562.us = zext i8 %144 to i64
  %idx.neg563.us = sub nsw i64 0, %idx.ext562.us
  %add.ptr564.us = getelementptr inbounds i8, ptr %add.ptr316.us, i64 %idx.neg563.us
  %145 = load i8, ptr %add.ptr564.us, align 1, !tbaa !24
  %conv565.us = zext i8 %145 to i32
  %incdec.ptr569.us = getelementptr inbounds nuw i8, ptr %add.ptr523.us, i64 6
  %146 = load i8, ptr %incdec.ptr560.us, align 1, !tbaa !24
  %idx.ext571.us = zext i8 %146 to i64
  %idx.neg572.us = sub nsw i64 0, %idx.ext571.us
  %add.ptr573.us = getelementptr inbounds i8, ptr %add.ptr316.us, i64 %idx.neg572.us
  %147 = load i8, ptr %add.ptr573.us, align 1, !tbaa !24
  %conv574.us = zext i8 %147 to i32
  %148 = load i8, ptr %incdec.ptr569.us, align 1, !tbaa !24
  %idx.ext580.us = zext i8 %148 to i64
  %idx.neg581.us = sub nsw i64 0, %idx.ext580.us
  %add.ptr582.us = getelementptr inbounds i8, ptr %add.ptr316.us, i64 %idx.neg581.us
  %149 = load i8, ptr %add.ptr582.us, align 1, !tbaa !24
  %conv583.us = zext i8 %149 to i32
  %add.ptr590.us = getelementptr inbounds i8, ptr %incdec.ptr569.us, i64 %idx.ext407
  %incdec.ptr591.us = getelementptr inbounds nuw i8, ptr %add.ptr590.us, i64 1
  %150 = load i8, ptr %add.ptr590.us, align 1, !tbaa !24
  %idx.ext593.us = zext i8 %150 to i64
  %idx.neg594.us = sub nsw i64 0, %idx.ext593.us
  %add.ptr595.us = getelementptr inbounds i8, ptr %add.ptr316.us, i64 %idx.neg594.us
  %151 = load i8, ptr %add.ptr595.us, align 1, !tbaa !24
  %conv596.us = zext i8 %151 to i32
  %mul597.us = shl nuw nsw i32 %conv596.us, 1
  %incdec.ptr602.us = getelementptr inbounds nuw i8, ptr %add.ptr590.us, i64 2
  %152 = load i8, ptr %incdec.ptr591.us, align 1, !tbaa !24
  %idx.ext604.us = zext i8 %152 to i64
  %idx.neg605.us = sub nsw i64 0, %idx.ext604.us
  %add.ptr606.us = getelementptr inbounds i8, ptr %add.ptr316.us, i64 %idx.neg605.us
  %153 = load i8, ptr %add.ptr606.us, align 1, !tbaa !24
  %conv607.us = zext i8 %153 to i32
  %incdec.ptr612.us = getelementptr inbounds nuw i8, ptr %add.ptr590.us, i64 3
  %154 = load i8, ptr %incdec.ptr602.us, align 1, !tbaa !24
  %idx.ext614.us = zext i8 %154 to i64
  %idx.neg615.us = sub nsw i64 0, %idx.ext614.us
  %add.ptr616.us = getelementptr inbounds i8, ptr %add.ptr316.us, i64 %idx.neg615.us
  %155 = load i8, ptr %add.ptr616.us, align 1, !tbaa !24
  %conv617.us = zext i8 %155 to i32
  %incdec.ptr620.us = getelementptr inbounds nuw i8, ptr %add.ptr590.us, i64 4
  %156 = load i8, ptr %incdec.ptr612.us, align 1, !tbaa !24
  %idx.ext622.us = zext i8 %156 to i64
  %idx.neg623.us = sub nsw i64 0, %idx.ext622.us
  %add.ptr624.us = getelementptr inbounds i8, ptr %add.ptr316.us, i64 %idx.neg623.us
  %157 = load i8, ptr %add.ptr624.us, align 1, !tbaa !24
  %conv625.us = zext i8 %157 to i32
  %158 = load i8, ptr %incdec.ptr620.us, align 1, !tbaa !24
  %idx.ext631.us = zext i8 %158 to i64
  %idx.neg632.us = sub nsw i64 0, %idx.ext631.us
  %add.ptr633.us = getelementptr inbounds i8, ptr %add.ptr316.us, i64 %idx.neg632.us
  %159 = load i8, ptr %add.ptr633.us, align 1, !tbaa !24
  %conv634.us = zext i8 %159 to i32
  %mul635.us = shl nuw nsw i32 %conv634.us, 1
  %add.ptr642.us = getelementptr inbounds i8, ptr %incdec.ptr620.us, i64 %idx.ext355
  %incdec.ptr643.us = getelementptr inbounds nuw i8, ptr %add.ptr642.us, i64 1
  %160 = load i8, ptr %add.ptr642.us, align 1, !tbaa !24
  %idx.ext645.us = zext i8 %160 to i64
  %idx.neg646.us = sub nsw i64 0, %idx.ext645.us
  %add.ptr647.us = getelementptr inbounds i8, ptr %add.ptr316.us, i64 %idx.neg646.us
  %161 = load i8, ptr %add.ptr647.us, align 1, !tbaa !24
  %conv648.us = zext i8 %161 to i32
  %incdec.ptr653.us = getelementptr inbounds nuw i8, ptr %add.ptr642.us, i64 2
  %162 = load i8, ptr %incdec.ptr643.us, align 1, !tbaa !24
  %idx.ext655.us = zext i8 %162 to i64
  %idx.neg656.us = sub nsw i64 0, %idx.ext655.us
  %add.ptr657.us = getelementptr inbounds i8, ptr %add.ptr316.us, i64 %idx.neg656.us
  %163 = load i8, ptr %add.ptr657.us, align 1, !tbaa !24
  %conv658.us = zext i8 %163 to i32
  %164 = load i8, ptr %incdec.ptr653.us, align 1, !tbaa !24
  %idx.ext662.us = zext i8 %164 to i64
  %idx.neg663.us = sub nsw i64 0, %idx.ext662.us
  %add.ptr664.us = getelementptr inbounds i8, ptr %add.ptr316.us, i64 %idx.neg663.us
  %165 = load i8, ptr %add.ptr664.us, align 1, !tbaa !24
  %conv665.us = zext i8 %165 to i32
  %166 = add nuw nsw i32 %conv414.us, %conv481.us
  %167 = add nuw nsw i32 %conv468.us, %conv518.us
  %168 = add nuw nsw i32 %166, %conv529.us
  %reass.add728.us = sub nsw i32 %167, %168
  %reass.add729.us = add nsw i32 %reass.add728.us, %conv583.us
  %reass.mul.us = mul nsw i32 %reass.add729.us, 3
  %169 = add nuw nsw i32 %conv362.us, %conv424.us
  %170 = add nuw nsw i32 %conv400.us, %conv459.us
  %171 = add nuw nsw i32 %169, %conv489.us
  %172 = add nuw nsw i32 %170, %conv511.us
  %173 = add nuw nsw i32 %171, %conv539.us
  %reass.add745.us = sub nsw i32 %172, %173
  %reass.add746.us = add nsw i32 %reass.add745.us, %conv574.us
  %reass.mul747.us = shl nsw i32 %reass.add746.us, 1
  %174 = add nuw nsw i32 %conv332.us, %conv373.us
  %175 = add nuw nsw i32 %conv349.us, %conv391.us
  %176 = add nuw nsw i32 %174, %conv434.us
  %177 = add nuw nsw i32 %175, %conv450.us
  %178 = add nuw nsw i32 %176, %conv496.us
  %179 = add nuw nsw i32 %177, %conv504.us
  %180 = add nuw nsw i32 %178, %conv549.us
  %181 = add nuw nsw i32 %179, %conv565.us
  %182 = add nuw nsw i32 %180, %mul597.us
  %183 = add nuw nsw i32 %182, %conv607.us
  %add576.us = sub nsw i32 %181, %183
  %add585.us = add nsw i32 %add576.us, %reass.mul.us
  %sub608.us = add nsw i32 %add585.us, %reass.mul747.us
  %add626.us = add nsw i32 %sub608.us, %conv625.us
  %add636.us = add nsw i32 %add626.us, %mul635.us
  %sub649.us = sub nsw i32 %add636.us, %conv648.us
  %add666.us = add nsw i32 %sub649.us, %conv665.us
  %reass.add735.us = sub nsw i32 %conv648.us, %mul352.neg701.us
  %reass.add736.us = add nsw i32 %reass.add735.us, %conv658.us
  %reass.add737.us = add nsw i32 %reass.add736.us, %conv665.us
  %reass.mul738.us = mul nsw i32 %reass.add737.us, 3
  %184 = sub nsw i32 %conv607.us, %109
  %185 = add nsw i32 %184, %conv617.us
  %reass.add749.us = add nsw i32 %185, %conv625.us
  %reass.mul750.us = shl nsw i32 %reass.add749.us, 1
  %186 = add nuw nsw i32 %conv424.us, %conv414.us
  %187 = add nuw nsw i32 %186, %conv434.us
  %188 = add nuw nsw i32 %187, %conv443.us
  %189 = add nuw nsw i32 %188, %conv450.us
  %190 = add nuw nsw i32 %189, %conv459.us
  %191 = add nuw nsw i32 %190, %conv468.us
  %add552.us = sub nsw i32 %conv529.us, %191
  %add559.us = add nsw i32 %add552.us, %conv539.us
  %add568.us = add nsw i32 %add559.us, %conv549.us
  %add578.us = add nsw i32 %add568.us, %conv558.us
  %add587.us = add nsw i32 %add578.us, %conv565.us
  %add601.us = add nsw i32 %add587.us, %conv574.us
  %add629.us = add nsw i32 %add601.us, %conv583.us
  %add639.us = add nsw i32 %add629.us, %mul597.us
  %add652.us = add nsw i32 %add639.us, %mul635.us
  %add660.us = add nsw i32 %add652.us, %reass.mul750.us
  %add669.us = add nsw i32 %add660.us, %reass.mul738.us
  %mul670.us = mul nsw i32 %add666.us, %add666.us
  %mul671.us = mul nsw i32 %add669.us, %add669.us
  %add672.us = add nuw nsw i32 %mul671.us, %mul670.us
  %conv673.us = uitofp nneg i32 %add672.us to float
  %sqrt.us = tail call float @llvm.sqrt.f32(float %conv673.us)
  %conv676.us = fpext float %sqrt.us to double
  %conv677.us = uitofp nneg i32 %sub309.us to float
  %conv678.us = fpext float %conv677.us to double
  %mul679.us = fmul double %conv678.us, 9.000000e-01
  %cmp680.us = fcmp olt double %mul679.us, %conv676.us
  br i1 %cmp680.us, label %if.then682.us, label %if.then761.us

if.then761.us:                                    ; preds = %if.then319.us, %if.then304.us
  %add.ptr767.us = getelementptr inbounds nuw i8, ptr %add.ptr323.us, i64 %indvars.iv817
  %add.ptr768.us = getelementptr inbounds i8, ptr %add.ptr767.us, i64 -1
  %192 = load i8, ptr %add.ptr768.us, align 1, !tbaa !24
  %idx.ext771.us = zext i8 %192 to i64
  %idx.neg772.us = sub nsw i64 0, %idx.ext771.us
  %add.ptr773.us = getelementptr inbounds i8, ptr %add.ptr316.us, i64 %idx.neg772.us
  %193 = load i8, ptr %add.ptr773.us, align 1, !tbaa !24
  %conv774.us = zext i8 %193 to i32
  %incdec.ptr782.us = getelementptr inbounds nuw i8, ptr %add.ptr767.us, i64 1
  %194 = load i8, ptr %add.ptr767.us, align 1, !tbaa !24
  %idx.ext784.us = zext i8 %194 to i64
  %idx.neg785.us = sub nsw i64 0, %idx.ext784.us
  %add.ptr786.us = getelementptr inbounds i8, ptr %add.ptr316.us, i64 %idx.neg785.us
  %195 = load i8, ptr %add.ptr786.us, align 1, !tbaa !24
  %conv787.us = zext i8 %195 to i32
  %196 = load i8, ptr %incdec.ptr782.us, align 1, !tbaa !24
  %idx.ext791.us = zext i8 %196 to i64
  %idx.neg792.us = sub nsw i64 0, %idx.ext791.us
  %add.ptr793.us = getelementptr inbounds i8, ptr %add.ptr316.us, i64 %idx.neg792.us
  %197 = load i8, ptr %add.ptr793.us, align 1, !tbaa !24
  %conv794.us = zext i8 %197 to i32
  %add.ptr804.us = getelementptr inbounds i8, ptr %incdec.ptr782.us, i64 %idx.ext355
  %incdec.ptr805.us = getelementptr inbounds nuw i8, ptr %add.ptr804.us, i64 1
  %198 = load i8, ptr %add.ptr804.us, align 1, !tbaa !24
  %idx.ext807.us = zext i8 %198 to i64
  %idx.neg808.us = sub nsw i64 0, %idx.ext807.us
  %add.ptr809.us = getelementptr inbounds i8, ptr %add.ptr316.us, i64 %idx.neg808.us
  %199 = load i8, ptr %add.ptr809.us, align 1, !tbaa !24
  %conv810.us = zext i8 %199 to i32
  %mul811.us = shl nuw nsw i32 %conv810.us, 2
  %incdec.ptr819.us = getelementptr inbounds nuw i8, ptr %add.ptr804.us, i64 2
  %200 = load i8, ptr %incdec.ptr805.us, align 1, !tbaa !24
  %idx.ext821.us = zext i8 %200 to i64
  %idx.neg822.us = sub nsw i64 0, %idx.ext821.us
  %add.ptr823.us = getelementptr inbounds i8, ptr %add.ptr316.us, i64 %idx.neg822.us
  %201 = load i8, ptr %add.ptr823.us, align 1, !tbaa !24
  %conv824.us = zext i8 %201 to i32
  %incdec.ptr832.us = getelementptr inbounds nuw i8, ptr %add.ptr804.us, i64 3
  %202 = load i8, ptr %incdec.ptr819.us, align 1, !tbaa !24
  %idx.ext834.us = zext i8 %202 to i64
  %idx.neg835.us = sub nsw i64 0, %idx.ext834.us
  %add.ptr836.us = getelementptr inbounds i8, ptr %add.ptr316.us, i64 %idx.neg835.us
  %203 = load i8, ptr %add.ptr836.us, align 1, !tbaa !24
  %conv837.us = zext i8 %203 to i32
  %incdec.ptr840.us = getelementptr inbounds nuw i8, ptr %add.ptr804.us, i64 4
  %204 = load i8, ptr %incdec.ptr832.us, align 1, !tbaa !24
  %idx.ext842.us = zext i8 %204 to i64
  %idx.neg843.us = sub nsw i64 0, %idx.ext842.us
  %add.ptr844.us = getelementptr inbounds i8, ptr %add.ptr316.us, i64 %idx.neg843.us
  %205 = load i8, ptr %add.ptr844.us, align 1, !tbaa !24
  %conv845.us = zext i8 %205 to i32
  %206 = load i8, ptr %incdec.ptr840.us, align 1, !tbaa !24
  %idx.ext854.us = zext i8 %206 to i64
  %idx.neg855.us = sub nsw i64 0, %idx.ext854.us
  %add.ptr856.us = getelementptr inbounds i8, ptr %add.ptr316.us, i64 %idx.neg855.us
  %207 = load i8, ptr %add.ptr856.us, align 1, !tbaa !24
  %conv857.us = zext i8 %207 to i32
  %mul858.us = shl nuw nsw i32 %conv857.us, 2
  %add.ptr868.us = getelementptr inbounds i8, ptr %incdec.ptr840.us, i64 %idx.ext407
  %incdec.ptr869.us = getelementptr inbounds nuw i8, ptr %add.ptr868.us, i64 1
  %208 = load i8, ptr %add.ptr868.us, align 1, !tbaa !24
  %idx.ext871.us = zext i8 %208 to i64
  %idx.neg872.us = sub nsw i64 0, %idx.ext871.us
  %add.ptr873.us = getelementptr inbounds i8, ptr %add.ptr316.us, i64 %idx.neg872.us
  %209 = load i8, ptr %add.ptr873.us, align 1, !tbaa !24
  %conv874.us = zext i8 %209 to i32
  %incdec.ptr882.us = getelementptr inbounds nuw i8, ptr %add.ptr868.us, i64 2
  %210 = load i8, ptr %incdec.ptr869.us, align 1, !tbaa !24
  %idx.ext884.us = zext i8 %210 to i64
  %idx.neg885.us = sub nsw i64 0, %idx.ext884.us
  %add.ptr886.us = getelementptr inbounds i8, ptr %add.ptr316.us, i64 %idx.neg885.us
  %211 = load i8, ptr %add.ptr886.us, align 1, !tbaa !24
  %conv887.us = zext i8 %211 to i32
  %incdec.ptr895.us = getelementptr inbounds nuw i8, ptr %add.ptr868.us, i64 3
  %212 = load i8, ptr %incdec.ptr882.us, align 1, !tbaa !24
  %idx.ext897.us = zext i8 %212 to i64
  %idx.neg898.us = sub nsw i64 0, %idx.ext897.us
  %add.ptr899.us = getelementptr inbounds i8, ptr %add.ptr316.us, i64 %idx.neg898.us
  %213 = load i8, ptr %add.ptr899.us, align 1, !tbaa !24
  %conv900.us = zext i8 %213 to i32
  %incdec.ptr906.us = getelementptr inbounds nuw i8, ptr %add.ptr868.us, i64 4
  %214 = load i8, ptr %incdec.ptr895.us, align 1, !tbaa !24
  %idx.ext908.us = zext i8 %214 to i64
  %idx.neg909.us = sub nsw i64 0, %idx.ext908.us
  %add.ptr910.us = getelementptr inbounds i8, ptr %add.ptr316.us, i64 %idx.neg909.us
  %215 = load i8, ptr %add.ptr910.us, align 1, !tbaa !24
  %conv911.us = zext i8 %215 to i32
  %incdec.ptr913.us = getelementptr inbounds nuw i8, ptr %add.ptr868.us, i64 5
  %216 = load i8, ptr %incdec.ptr906.us, align 1, !tbaa !24
  %idx.ext915.us = zext i8 %216 to i64
  %idx.neg916.us = sub nsw i64 0, %idx.ext915.us
  %add.ptr917.us = getelementptr inbounds i8, ptr %add.ptr316.us, i64 %idx.neg916.us
  %217 = load i8, ptr %add.ptr917.us, align 1, !tbaa !24
  %conv918.us = zext i8 %217 to i32
  %incdec.ptr924.us = getelementptr inbounds nuw i8, ptr %add.ptr868.us, i64 6
  %218 = load i8, ptr %incdec.ptr913.us, align 1, !tbaa !24
  %idx.ext926.us = zext i8 %218 to i64
  %idx.neg927.us = sub nsw i64 0, %idx.ext926.us
  %add.ptr928.us = getelementptr inbounds i8, ptr %add.ptr316.us, i64 %idx.neg927.us
  %219 = load i8, ptr %add.ptr928.us, align 1, !tbaa !24
  %conv929.us = zext i8 %219 to i32
  %220 = load i8, ptr %incdec.ptr924.us, align 1, !tbaa !24
  %idx.ext938.us = zext i8 %220 to i64
  %idx.neg939.us = sub nsw i64 0, %idx.ext938.us
  %add.ptr940.us = getelementptr inbounds i8, ptr %add.ptr316.us, i64 %idx.neg939.us
  %221 = load i8, ptr %add.ptr940.us, align 1, !tbaa !24
  %conv941.us = zext i8 %221 to i32
  %add.ptr951.us = getelementptr inbounds i8, ptr %incdec.ptr924.us, i64 %idx.ext474
  %incdec.ptr982.us = getelementptr inbounds nuw i8, ptr %add.ptr951.us, i64 6
  %add.ptr999.us = getelementptr inbounds i8, ptr %incdec.ptr982.us, i64 %idx.ext474
  %incdec.ptr1000.us = getelementptr inbounds nuw i8, ptr %add.ptr999.us, i64 1
  %222 = load i8, ptr %add.ptr999.us, align 1, !tbaa !24
  %idx.ext1002.us = zext i8 %222 to i64
  %idx.neg1003.us = sub nsw i64 0, %idx.ext1002.us
  %add.ptr1004.us = getelementptr inbounds i8, ptr %add.ptr316.us, i64 %idx.neg1003.us
  %223 = load i8, ptr %add.ptr1004.us, align 1, !tbaa !24
  %conv1005.us = zext i8 %223 to i32
  %incdec.ptr1013.us = getelementptr inbounds nuw i8, ptr %add.ptr999.us, i64 2
  %224 = load i8, ptr %incdec.ptr1000.us, align 1, !tbaa !24
  %idx.ext1015.us = zext i8 %224 to i64
  %idx.neg1016.us = sub nsw i64 0, %idx.ext1015.us
  %add.ptr1017.us = getelementptr inbounds i8, ptr %add.ptr316.us, i64 %idx.neg1016.us
  %225 = load i8, ptr %add.ptr1017.us, align 1, !tbaa !24
  %conv1018.us = zext i8 %225 to i32
  %incdec.ptr1026.us = getelementptr inbounds nuw i8, ptr %add.ptr999.us, i64 3
  %226 = load i8, ptr %incdec.ptr1013.us, align 1, !tbaa !24
  %idx.ext1028.us = zext i8 %226 to i64
  %idx.neg1029.us = sub nsw i64 0, %idx.ext1028.us
  %add.ptr1030.us = getelementptr inbounds i8, ptr %add.ptr316.us, i64 %idx.neg1029.us
  %227 = load i8, ptr %add.ptr1030.us, align 1, !tbaa !24
  %conv1031.us = zext i8 %227 to i32
  %incdec.ptr1037.us = getelementptr inbounds nuw i8, ptr %add.ptr999.us, i64 4
  %228 = load i8, ptr %incdec.ptr1026.us, align 1, !tbaa !24
  %idx.ext1039.us = zext i8 %228 to i64
  %idx.neg1040.us = sub nsw i64 0, %idx.ext1039.us
  %add.ptr1041.us = getelementptr inbounds i8, ptr %add.ptr316.us, i64 %idx.neg1040.us
  %229 = load i8, ptr %add.ptr1041.us, align 1, !tbaa !24
  %conv1042.us = zext i8 %229 to i32
  %incdec.ptr1044.us = getelementptr inbounds nuw i8, ptr %add.ptr999.us, i64 5
  %230 = load i8, ptr %incdec.ptr1037.us, align 1, !tbaa !24
  %idx.ext1046.us = zext i8 %230 to i64
  %idx.neg1047.us = sub nsw i64 0, %idx.ext1046.us
  %add.ptr1048.us = getelementptr inbounds i8, ptr %add.ptr316.us, i64 %idx.neg1047.us
  %231 = load i8, ptr %add.ptr1048.us, align 1, !tbaa !24
  %conv1049.us = zext i8 %231 to i32
  %incdec.ptr1055.us = getelementptr inbounds nuw i8, ptr %add.ptr999.us, i64 6
  %232 = load i8, ptr %incdec.ptr1044.us, align 1, !tbaa !24
  %idx.ext1057.us = zext i8 %232 to i64
  %idx.neg1058.us = sub nsw i64 0, %idx.ext1057.us
  %add.ptr1059.us = getelementptr inbounds i8, ptr %add.ptr316.us, i64 %idx.neg1058.us
  %233 = load i8, ptr %add.ptr1059.us, align 1, !tbaa !24
  %conv1060.us = zext i8 %233 to i32
  %234 = load i8, ptr %incdec.ptr1055.us, align 1, !tbaa !24
  %idx.ext1069.us = zext i8 %234 to i64
  %idx.neg1070.us = sub nsw i64 0, %idx.ext1069.us
  %add.ptr1071.us = getelementptr inbounds i8, ptr %add.ptr316.us, i64 %idx.neg1070.us
  %235 = load i8, ptr %add.ptr1071.us, align 1, !tbaa !24
  %conv1072.us = zext i8 %235 to i32
  %add.ptr1082.us = getelementptr inbounds i8, ptr %incdec.ptr1055.us, i64 %idx.ext407
  %incdec.ptr1083.us = getelementptr inbounds nuw i8, ptr %add.ptr1082.us, i64 1
  %236 = load i8, ptr %add.ptr1082.us, align 1, !tbaa !24
  %idx.ext1085.us = zext i8 %236 to i64
  %idx.neg1086.us = sub nsw i64 0, %idx.ext1085.us
  %add.ptr1087.us = getelementptr inbounds i8, ptr %add.ptr316.us, i64 %idx.neg1086.us
  %237 = load i8, ptr %add.ptr1087.us, align 1, !tbaa !24
  %conv1088.us = zext i8 %237 to i32
  %mul1089.us = shl nuw nsw i32 %conv1088.us, 2
  %incdec.ptr1097.us = getelementptr inbounds nuw i8, ptr %add.ptr1082.us, i64 2
  %238 = load i8, ptr %incdec.ptr1083.us, align 1, !tbaa !24
  %idx.ext1099.us = zext i8 %238 to i64
  %idx.neg1100.us = sub nsw i64 0, %idx.ext1099.us
  %add.ptr1101.us = getelementptr inbounds i8, ptr %add.ptr316.us, i64 %idx.neg1100.us
  %239 = load i8, ptr %add.ptr1101.us, align 1, !tbaa !24
  %conv1102.us = zext i8 %239 to i32
  %incdec.ptr1110.us = getelementptr inbounds nuw i8, ptr %add.ptr1082.us, i64 3
  %240 = load i8, ptr %incdec.ptr1097.us, align 1, !tbaa !24
  %idx.ext1112.us = zext i8 %240 to i64
  %idx.neg1113.us = sub nsw i64 0, %idx.ext1112.us
  %add.ptr1114.us = getelementptr inbounds i8, ptr %add.ptr316.us, i64 %idx.neg1113.us
  %241 = load i8, ptr %add.ptr1114.us, align 1, !tbaa !24
  %conv1115.us = zext i8 %241 to i32
  %incdec.ptr1118.us = getelementptr inbounds nuw i8, ptr %add.ptr1082.us, i64 4
  %242 = load i8, ptr %incdec.ptr1110.us, align 1, !tbaa !24
  %idx.ext1120.us = zext i8 %242 to i64
  %idx.neg1121.us = sub nsw i64 0, %idx.ext1120.us
  %add.ptr1122.us = getelementptr inbounds i8, ptr %add.ptr316.us, i64 %idx.neg1121.us
  %243 = load i8, ptr %add.ptr1122.us, align 1, !tbaa !24
  %conv1123.us = zext i8 %243 to i32
  %244 = load i8, ptr %incdec.ptr1118.us, align 1, !tbaa !24
  %idx.ext1132.us = zext i8 %244 to i64
  %idx.neg1133.us = sub nsw i64 0, %idx.ext1132.us
  %add.ptr1134.us = getelementptr inbounds i8, ptr %add.ptr316.us, i64 %idx.neg1133.us
  %245 = load i8, ptr %add.ptr1134.us, align 1, !tbaa !24
  %conv1135.us = zext i8 %245 to i32
  %mul1136.us = shl nuw nsw i32 %conv1135.us, 2
  %add.ptr1146.us = getelementptr inbounds i8, ptr %incdec.ptr1118.us, i64 %idx.ext355
  %incdec.ptr1147.us = getelementptr inbounds nuw i8, ptr %add.ptr1146.us, i64 1
  %246 = load i8, ptr %add.ptr1146.us, align 1, !tbaa !24
  %idx.ext1149.us = zext i8 %246 to i64
  %idx.neg1150.us = sub nsw i64 0, %idx.ext1149.us
  %add.ptr1151.us = getelementptr inbounds i8, ptr %add.ptr316.us, i64 %idx.neg1150.us
  %247 = load i8, ptr %add.ptr1151.us, align 1, !tbaa !24
  %conv1152.us = zext i8 %247 to i32
  %incdec.ptr1160.us = getelementptr inbounds nuw i8, ptr %add.ptr1146.us, i64 2
  %248 = load i8, ptr %incdec.ptr1147.us, align 1, !tbaa !24
  %idx.ext1162.us = zext i8 %248 to i64
  %idx.neg1163.us = sub nsw i64 0, %idx.ext1162.us
  %add.ptr1164.us = getelementptr inbounds i8, ptr %add.ptr316.us, i64 %idx.neg1163.us
  %249 = load i8, ptr %add.ptr1164.us, align 1, !tbaa !24
  %conv1165.us = zext i8 %249 to i32
  %250 = load i8, ptr %incdec.ptr1160.us, align 1, !tbaa !24
  %idx.ext1169.us = zext i8 %250 to i64
  %idx.neg1170.us = sub nsw i64 0, %idx.ext1169.us
  %add.ptr1171.us = getelementptr inbounds i8, ptr %add.ptr316.us, i64 %idx.neg1170.us
  %251 = load i8, ptr %add.ptr1171.us, align 1, !tbaa !24
  %conv1172.us = zext i8 %251 to i32
  %reass.add754.us = add nuw nsw i32 %conv787.us, %conv774.us
  %reass.add755.us = add nuw nsw i32 %reass.add754.us, %conv794.us
  %mul777703.us = add nuw nsw i32 %reass.add755.us, %conv1152.us
  %add789704.us = add nuw nsw i32 %mul777703.us, %conv1165.us
  %reass.add756.us = add nuw nsw i32 %add789704.us, %conv1172.us
  %reass.mul757.us = mul nuw nsw i32 %reass.add756.us, 9
  %252 = add nuw nsw i32 %conv837.us, %conv824.us
  %253 = add nuw nsw i32 %252, %conv845.us
  %254 = add nuw nsw i32 %253, %conv1102.us
  %255 = add nuw nsw i32 %254, %conv1115.us
  %reass.add758.us = add nuw nsw i32 %255, %conv1123.us
  %reass.mul759.us = shl nuw nsw i32 %reass.add758.us, 2
  %add891.us = add nuw nsw i32 %mul858.us, %mul811.us
  %add903.us = add nuw nsw i32 %add891.us, %conv874.us
  %add912.us = add nuw nsw i32 %add903.us, %conv887.us
  %add921.us = add nuw nsw i32 %add912.us, %conv900.us
  %add933.us = add nuw nsw i32 %add921.us, %conv911.us
  %add945.us = add nuw nsw i32 %add933.us, %conv918.us
  %add1009.us = add nuw nsw i32 %add945.us, %conv929.us
  %add1022.us = add nuw nsw i32 %add1009.us, %conv941.us
  %add1034.us = add nuw nsw i32 %add1022.us, %conv1005.us
  %add1043.us = add nuw nsw i32 %add1034.us, %conv1018.us
  %add1052.us = add nuw nsw i32 %add1043.us, %conv1031.us
  %add1064.us = add nuw nsw i32 %add1052.us, %conv1042.us
  %add1076.us = add nuw nsw i32 %add1064.us, %conv1049.us
  %add1093.us = add nuw nsw i32 %add1076.us, %conv1060.us
  %add1127.us = add nuw nsw i32 %add1093.us, %conv1072.us
  %add1140.us = add nuw nsw i32 %add1127.us, %mul1089.us
  %add1156.us = add nuw nsw i32 %add1140.us, %mul1136.us
  %add1167.us = add nuw nsw i32 %add1156.us, %reass.mul759.us
  %add1176.us = add nuw nsw i32 %add1167.us, %reass.mul757.us
  %256 = add nuw nsw i32 %conv774.us, %conv874.us
  %257 = add nuw nsw i32 %conv794.us, %conv941.us
  %258 = add nuw nsw i32 %257, %conv1005.us
  %259 = add nuw nsw i32 %256, %conv1072.us
  %260 = add nuw nsw i32 %258, %conv1152.us
  %reass.add769.us = sub nsw i32 %259, %260
  %reass.add770.us = add nsw i32 %reass.add769.us, %conv1172.us
  %reass.mul771.us = mul nsw i32 %reass.add770.us, 3
  %261 = add nuw nsw i32 %conv824.us, %conv887.us
  %262 = add nuw nsw i32 %conv845.us, %conv929.us
  %263 = add nuw nsw i32 %262, %conv1018.us
  %264 = add nuw nsw i32 %261, %conv1060.us
  %265 = add nuw nsw i32 %263, %conv1102.us
  %reass.add782.us = sub nsw i32 %264, %265
  %reass.add783.us = add nsw i32 %reass.add782.us, %conv1123.us
  %reass.mul784.us = shl nsw i32 %reass.add783.us, 1
  %266 = add nuw nsw i32 %mul811.us, %conv900.us
  %267 = add nuw nsw i32 %mul858.us, %conv918.us
  %268 = add nuw nsw i32 %267, %conv1031.us
  %269 = add nuw nsw i32 %266, %conv1049.us
  %270 = add nuw nsw i32 %268, %mul1089.us
  %add1130.us = sub nsw i32 %269, %270
  %add1143.us = add nsw i32 %add1130.us, %mul1136.us
  %sub1159.us = add nsw i32 %add1143.us, %reass.mul784.us
  %add1179.us = add nsw i32 %sub1159.us, %reass.mul771.us
  %cmp1180.us = icmp eq i32 %add1176.us, 0
  br i1 %cmp1180.us, label %if.end1204.us, label %if.end1187.us

if.end1187.us:                                    ; preds = %if.then761.us
  %271 = load i8, ptr %add.ptr951.us, align 1, !tbaa !24
  %idx.ext954.us = zext i8 %271 to i64
  %idx.neg955.us = sub nsw i64 0, %idx.ext954.us
  %add.ptr956.us = getelementptr inbounds i8, ptr %add.ptr316.us, i64 %idx.neg955.us
  %272 = load i8, ptr %add.ptr956.us, align 1, !tbaa !24
  %conv957.us = zext i8 %272 to i32
  %incdec.ptr952.us = getelementptr inbounds nuw i8, ptr %add.ptr951.us, i64 1
  %273 = load i8, ptr %incdec.ptr952.us, align 1, !tbaa !24
  %idx.ext962.us = zext i8 %273 to i64
  %idx.neg963.us = sub nsw i64 0, %idx.ext962.us
  %add.ptr964.us = getelementptr inbounds i8, ptr %add.ptr316.us, i64 %idx.neg963.us
  %274 = load i8, ptr %add.ptr964.us, align 1, !tbaa !24
  %conv965.us = zext i8 %274 to i32
  %incdec.ptr960.us = getelementptr inbounds nuw i8, ptr %add.ptr951.us, i64 2
  %275 = load i8, ptr %incdec.ptr960.us, align 1, !tbaa !24
  %idx.ext969.us = zext i8 %275 to i64
  %idx.neg970.us = sub nsw i64 0, %idx.ext969.us
  %add.ptr971.us = getelementptr inbounds i8, ptr %add.ptr316.us, i64 %idx.neg970.us
  %276 = load i8, ptr %add.ptr971.us, align 1, !tbaa !24
  %conv972.us = zext i8 %276 to i32
  %add.ptr974.us = getelementptr inbounds nuw i8, ptr %add.ptr951.us, i64 4
  %277 = load i8, ptr %add.ptr974.us, align 1, !tbaa !24
  %idx.ext977.us = zext i8 %277 to i64
  %idx.neg978.us = sub nsw i64 0, %idx.ext977.us
  %add.ptr979.us = getelementptr inbounds i8, ptr %add.ptr316.us, i64 %idx.neg978.us
  %278 = load i8, ptr %add.ptr979.us, align 1, !tbaa !24
  %conv980.us = zext i8 %278 to i32
  %incdec.ptr975.us = getelementptr inbounds nuw i8, ptr %add.ptr951.us, i64 5
  %279 = load i8, ptr %incdec.ptr975.us, align 1, !tbaa !24
  %idx.ext984.us = zext i8 %279 to i64
  %idx.neg985.us = sub nsw i64 0, %idx.ext984.us
  %add.ptr986.us = getelementptr inbounds i8, ptr %add.ptr316.us, i64 %idx.neg985.us
  %280 = load i8, ptr %add.ptr986.us, align 1, !tbaa !24
  %conv987.us = zext i8 %280 to i32
  %281 = load i8, ptr %incdec.ptr982.us, align 1, !tbaa !24
  %idx.ext991.us = zext i8 %281 to i64
  %idx.neg992.us = sub nsw i64 0, %idx.ext991.us
  %add.ptr993.us = getelementptr inbounds i8, ptr %add.ptr316.us, i64 %idx.neg992.us
  %282 = load i8, ptr %add.ptr993.us, align 1, !tbaa !24
  %conv994.us = zext i8 %282 to i32
  %reass.add785.us = add nuw nsw i32 %conv929.us, %conv887.us
  %reass.add786.us = add nuw nsw i32 %reass.add785.us, %conv1018.us
  %reass.add787.us = add nuw nsw i32 %reass.add786.us, %conv1060.us
  %reass.add788.us = add nuw nsw i32 %reass.add787.us, %conv965.us
  %reass.add789.us = add nuw nsw i32 %reass.add788.us, %conv987.us
  %reass.mul790.us = shl nuw nsw i32 %reass.add789.us, 2
  %reass.add791.us = add nuw nsw i32 %conv941.us, %conv874.us
  %reass.add792.us = add nuw nsw i32 %reass.add791.us, %conv1005.us
  %reass.add793.us = add nuw nsw i32 %reass.add792.us, %conv1072.us
  %reass.add794.us = add nuw nsw i32 %reass.add793.us, %conv957.us
  %reass.add795.us = add nuw nsw i32 %reass.add794.us, %conv994.us
  %reass.mul796.us = mul nuw nsw i32 %reass.add795.us, 9
  %add943.us = add nuw nsw i32 %conv794.us, %conv774.us
  %add959.us = add nuw nsw i32 %add943.us, %mul811.us
  %add967.us = add nuw nsw i32 %add959.us, %conv824.us
  %add973.us = add nuw nsw i32 %add967.us, %conv845.us
  %add981.us = add nuw nsw i32 %add973.us, %mul858.us
  %add989.us = add nuw nsw i32 %add981.us, %conv900.us
  %add996.us = add nuw nsw i32 %add989.us, %conv918.us
  %add1007.us = add nuw nsw i32 %add996.us, %conv1031.us
  %add1020.us = add nuw nsw i32 %add1007.us, %conv1049.us
  %add1032.us = add nuw nsw i32 %add1020.us, %mul1089.us
  %add1050.us = add nuw nsw i32 %add1032.us, %conv1102.us
  %add1062.us = add nuw nsw i32 %add1050.us, %conv1123.us
  %add1074.us = add nuw nsw i32 %add1062.us, %mul1136.us
  %add1090.us = add nuw nsw i32 %add1074.us, %conv1152.us
  %add1103.us = add nuw nsw i32 %add1090.us, %conv1172.us
  %add1124.us = add nuw nsw i32 %add1103.us, %conv972.us
  %add1137.us = add nuw nsw i32 %add1124.us, %conv980.us
  %add1153.us = add nuw nsw i32 %add1137.us, %reass.mul790.us
  %add1173.us = add nuw nsw i32 %add1153.us, %reass.mul796.us
  %conv1184.us = uitofp nneg i32 %add1173.us to float
  %conv1185.us = uitofp nneg i32 %add1176.us to float
  %div1186.us = fdiv float %conv1184.us, %conv1185.us
  %cmp1189.us = fcmp olt float %div1186.us, 5.000000e-01
  br i1 %cmp1189.us, label %if.end1204.us, label %if.else1192.us

if.else1192.us:                                   ; preds = %if.end1187.us
  %cmp1194.us = fcmp ogt float %div1186.us, 2.000000e+00
  br i1 %cmp1194.us, label %if.end1204.us, label %if.else1197.us

if.else1197.us:                                   ; preds = %if.else1192.us
  %cmp1198.inv.us = icmp slt i32 %add1179.us, 1
  %.705.us = select i1 %cmp1198.inv.us, i32 1, i32 -1
  br label %if.end1204.us

if.end1204.us:                                    ; preds = %if.else1197.us, %if.else1192.us, %if.end1187.us, %if.then761.us
  %a.1.us = phi i32 [ 0, %if.end1187.us ], [ 1, %if.else1192.us ], [ %.705.us, %if.else1197.us ], [ 1, %if.then761.us ]
  %b.1.us = phi i32 [ 1, %if.end1187.us ], [ 0, %if.else1192.us ], [ 1, %if.else1197.us ], [ 0, %if.then761.us ]
  %add1205.us = add nsw i32 %a.1.us, %86
  %mul1206.us = mul nsw i32 %add1205.us, %x_size
  %283 = trunc nuw nsw i64 %indvars.iv817 to i32
  %add1207.us = add nuw nsw i32 %b.1.us, %283
  %add1208.us = add i32 %add1207.us, %mul1206.us
  %idxprom1209.us = sext i32 %add1208.us to i64
  %arrayidx1210.us = getelementptr inbounds i32, ptr %r, i64 %idxprom1209.us
  %284 = load i32, ptr %arrayidx1210.us, align 4, !tbaa !16
  %cmp1211.us = icmp sgt i32 %89, %284
  br i1 %cmp1211.us, label %land.lhs.true1213.us, label %for.inc1252.us

land.lhs.true1213.us:                             ; preds = %if.end1204.us
  %sub1214.us = sub nsw i32 %86, %a.1.us
  %mul1215.us = mul nsw i32 %sub1214.us, %x_size
  %add1216.us = sub nsw i32 %283, %b.1.us
  %sub1217.us = add i32 %add1216.us, %mul1215.us
  %idxprom1218.us = sext i32 %sub1217.us to i64
  %arrayidx1219.us = getelementptr inbounds i32, ptr %r, i64 %idxprom1218.us
  %285 = load i32, ptr %arrayidx1219.us, align 4, !tbaa !16
  %cmp1220.not.us = icmp slt i32 %89, %285
  br i1 %cmp1220.not.us, label %for.inc1252.us, label %land.lhs.true1222.us

land.lhs.true1222.us:                             ; preds = %land.lhs.true1213.us
  %mul1223.us = shl nsw i32 %a.1.us, 1
  %add1224.us = add nsw i32 %mul1223.us, %86
  %mul1225.us = mul nsw i32 %add1224.us, %x_size
  %mul1227.us = shl nuw nsw i32 %b.1.us, 1
  %add1226.us = add nuw i32 %mul1227.us, %283
  %add1228.us = add i32 %add1226.us, %mul1225.us
  %idxprom1229.us = sext i32 %add1228.us to i64
  %arrayidx1230.us = getelementptr inbounds i32, ptr %r, i64 %idxprom1229.us
  %286 = load i32, ptr %arrayidx1230.us, align 4, !tbaa !16
  %cmp1231.us = icmp sgt i32 %89, %286
  br i1 %cmp1231.us, label %land.lhs.true1233.us, label %for.inc1252.us

land.lhs.true1233.us:                             ; preds = %land.lhs.true1222.us
  %sub1235.us = sub nsw i32 %86, %mul1223.us
  %mul1236.us = mul nsw i32 %sub1235.us, %x_size
  %add1237.us = sub nsw i32 %283, %mul1227.us
  %sub1239.us = add i32 %add1237.us, %mul1236.us
  %idxprom1240.us = sext i32 %sub1239.us to i64
  %arrayidx1241.us = getelementptr inbounds i32, ptr %r, i64 %idxprom1240.us
  %287 = load i32, ptr %arrayidx1241.us, align 4, !tbaa !16
  %cmp1242.not.us = icmp slt i32 %89, %287
  br i1 %cmp1242.not.us, label %for.inc1252.us, label %for.inc1252.us.sink.split

if.then682.us:                                    ; preds = %if.then319.us
  %cmp683.us = icmp eq i32 %add666.us, 0
  %conv686.us = sitofp i32 %add669.us to float
  %conv687.us = sitofp i32 %add666.us to float
  %div.us = fdiv float %conv686.us, %conv687.us
  %z.0.us = select i1 %cmp683.us, float 1.000000e+06, float %div.us
  %cmp689.us = fcmp uge float %z.0.us, 0.000000e+00
  %fneg.us = fneg float %z.0.us
  %z.1.us = select i1 %cmp689.us, float %z.0.us, float %fneg.us
  %cmp695.us = fcmp olt float %z.1.us, 5.000000e-01
  br i1 %cmp695.us, label %if.end710.us, label %if.else698.us

if.else698.us:                                    ; preds = %if.then682.us
  %cmp700.us = fcmp ogt float %z.1.us, 2.000000e+00
  br i1 %cmp700.us, label %if.end710.us, label %if.else703.us

if.else703.us:                                    ; preds = %if.else698.us
  %..us = select i1 %cmp689.us, i32 1, i32 -1
  br label %if.end710.us

if.end710.us:                                     ; preds = %if.else703.us, %if.else698.us, %if.then682.us
  %a.0.us = phi i32 [ 0, %if.then682.us ], [ 1, %if.else698.us ], [ %..us, %if.else703.us ]
  %b.0.us = phi i32 [ 1, %if.then682.us ], [ 0, %if.else698.us ], [ 1, %if.else703.us ]
  %add711.us = add nsw i32 %a.0.us, %87
  %mul712.us = mul nsw i32 %add711.us, %x_size
  %288 = trunc nuw nsw i64 %indvars.iv817 to i32
  %add713.us = add nuw nsw i32 %b.0.us, %288
  %add714.us = add i32 %add713.us, %mul712.us
  %idxprom715.us = sext i32 %add714.us to i64
  %arrayidx716.us = getelementptr inbounds i32, ptr %r, i64 %idxprom715.us
  %289 = load i32, ptr %arrayidx716.us, align 4, !tbaa !16
  %cmp717.us = icmp sgt i32 %89, %289
  br i1 %cmp717.us, label %land.lhs.true.us, label %for.inc1252.us

land.lhs.true.us:                                 ; preds = %if.end710.us
  %sub719.us = sub nsw i32 %87, %a.0.us
  %mul720.us = mul nsw i32 %sub719.us, %x_size
  %add721.us = sub nsw i32 %288, %b.0.us
  %sub722.us = add i32 %add721.us, %mul720.us
  %idxprom723.us = sext i32 %sub722.us to i64
  %arrayidx724.us = getelementptr inbounds i32, ptr %r, i64 %idxprom723.us
  %290 = load i32, ptr %arrayidx724.us, align 4, !tbaa !16
  %cmp725.not.us = icmp slt i32 %89, %290
  br i1 %cmp725.not.us, label %for.inc1252.us, label %land.lhs.true727.us

land.lhs.true727.us:                              ; preds = %land.lhs.true.us
  %mul728.us = shl nsw i32 %a.0.us, 1
  %add729.us = add nsw i32 %mul728.us, %87
  %mul730.us = mul nsw i32 %add729.us, %x_size
  %mul732.us = shl nuw nsw i32 %b.0.us, 1
  %add731.us = add nuw i32 %mul732.us, %288
  %add733.us = add i32 %add731.us, %mul730.us
  %idxprom734.us = sext i32 %add733.us to i64
  %arrayidx735.us = getelementptr inbounds i32, ptr %r, i64 %idxprom734.us
  %291 = load i32, ptr %arrayidx735.us, align 4, !tbaa !16
  %cmp736.us = icmp sgt i32 %89, %291
  br i1 %cmp736.us, label %land.lhs.true738.us, label %for.inc1252.us

land.lhs.true738.us:                              ; preds = %land.lhs.true727.us
  %sub740.us = sub nsw i32 %87, %mul728.us
  %mul741.us = mul nsw i32 %sub740.us, %x_size
  %add742.us = sub nsw i32 %288, %mul732.us
  %sub744.us = add i32 %add742.us, %mul741.us
  %idxprom745.us = sext i32 %sub744.us to i64
  %arrayidx746.us = getelementptr inbounds i32, ptr %r, i64 %idxprom745.us
  %292 = load i32, ptr %arrayidx746.us, align 4, !tbaa !16
  %cmp747.not.us = icmp slt i32 %89, %292
  br i1 %cmp747.not.us, label %for.inc1252.us, label %for.inc1252.us.sink.split

for.inc1252.us.sink.split:                        ; preds = %land.lhs.true738.us, %land.lhs.true1233.us
  %.sink = phi i8 [ 2, %land.lhs.true1233.us ], [ 1, %land.lhs.true738.us ]
  %arrayidx753.us = getelementptr inbounds nuw i8, ptr %mid, i64 %88
  store i8 %.sink, ptr %arrayidx753.us, align 1, !tbaa !24
  br label %for.inc1252.us

for.inc1252.us:                                   ; preds = %for.inc1252.us.sink.split, %land.lhs.true738.us, %land.lhs.true727.us, %land.lhs.true.us, %if.end710.us, %land.lhs.true1233.us, %land.lhs.true1222.us, %land.lhs.true1213.us, %if.end1204.us, %for.body297.us
  %indvars.iv.next818 = add nuw nsw i64 %indvars.iv817, 1
  %exitcond822.not = icmp eq i64 %indvars.iv.next818, %wide.trip.count821
  br i1 %exitcond822.not, label %for.cond293.for.inc1255_crit_edge.us, label %for.body297.us, !llvm.loop !55

for.cond293.for.inc1255_crit_edge.us:             ; preds = %for.inc1252.us
  %indvars.iv.next824 = add nuw nsw i64 %indvars.iv823, 1
  %exitcond832.not = icmp eq i64 %indvars.iv.next824, %wide.trip.count831
  br i1 %exitcond832.not, label %for.end1257, label %for.cond293.preheader.us, !llvm.loop !56

for.end1257:                                      ; preds = %for.cond293.for.inc1255_crit_edge.us, %entry, %for.cond293.preheader.lr.ph, %for.cond288.preheader
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @susan_edges_small(ptr noundef readonly captures(none) %in, ptr noundef captures(none) %r, ptr noundef writeonly captures(none) %mid, ptr noundef readonly captures(none) %bp, i32 %max_no, i32 noundef %x_size, i32 noundef %y_size) local_unnamed_addr #8 {
entry:
  %mul = mul nsw i32 %y_size, %x_size
  %conv = sext i32 %mul to i64
  %mul1 = shl nsw i64 %conv, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %r, i8 0, i64 %mul1, i1 false)
  %sub = add i32 %y_size, -1
  %cmp232 = icmp sgt i32 %y_size, 2
  br i1 %cmp232, label %for.cond3.preheader.lr.ph, label %for.end397

for.cond3.preheader.lr.ph:                        ; preds = %entry
  %cmp5230 = icmp sgt i32 %x_size, 2
  %sub35 = add nsw i32 %x_size, -2
  %idx.ext36 = sext i32 %sub35 to i64
  br i1 %cmp5230, label %for.cond3.preheader.us.preheader, label %for.cond84.preheader

for.cond3.preheader.us.preheader:                 ; preds = %for.cond3.preheader.lr.ph
  %sub4 = add nsw i32 %x_size, -1
  %0 = zext nneg i32 %x_size to i64
  %wide.trip.count248 = zext nneg i32 %sub to i64
  %wide.trip.count = zext i32 %sub4 to i64
  br label %for.cond3.preheader.us

for.cond3.preheader.us:                           ; preds = %for.cond3.preheader.us.preheader, %for.cond3.for.inc81_crit_edge.us
  %indvars.iv242 = phi i64 [ 1, %for.cond3.preheader.us.preheader ], [ %indvars.iv.next243, %for.cond3.for.inc81_crit_edge.us ]
  %1 = add nsw i64 %indvars.iv242, -1
  %2 = mul nsw i64 %1, %0
  %add.ptr.us = getelementptr inbounds i8, ptr %in, i64 %2
  %3 = trunc i64 %indvars.iv242 to i32
  %4 = mul i32 %x_size, %3
  %5 = zext i32 %4 to i64
  br label %for.body7.us

for.body7.us:                                     ; preds = %for.cond3.preheader.us, %for.inc.us
  %indvars.iv = phi i64 [ 1, %for.cond3.preheader.us ], [ %indvars.iv.next, %for.inc.us ]
  %add.ptr11.us = getelementptr inbounds nuw i8, ptr %add.ptr.us, i64 %indvars.iv
  %add.ptr12.us = getelementptr inbounds i8, ptr %add.ptr11.us, i64 -1
  %6 = add nuw nsw i64 %indvars.iv, %5
  %arrayidx.us = getelementptr inbounds nuw i8, ptr %in, i64 %6
  %7 = load i8, ptr %arrayidx.us, align 1, !tbaa !24
  %idx.ext15.us = zext i8 %7 to i64
  %add.ptr16.us = getelementptr inbounds nuw i8, ptr %bp, i64 %idx.ext15.us
  %8 = load i8, ptr %add.ptr12.us, align 1, !tbaa !24
  %idx.ext18.us = zext i8 %8 to i64
  %idx.neg.us = sub nsw i64 0, %idx.ext18.us
  %add.ptr19.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg.us
  %9 = load i8, ptr %add.ptr19.us, align 1, !tbaa !24
  %conv20.us = zext i8 %9 to i32
  %add21.us = add nuw nsw i32 %conv20.us, 100
  %incdec.ptr22.us = getelementptr inbounds nuw i8, ptr %add.ptr11.us, i64 1
  %10 = load i8, ptr %add.ptr11.us, align 1, !tbaa !24
  %idx.ext24.us = zext i8 %10 to i64
  %idx.neg25.us = sub nsw i64 0, %idx.ext24.us
  %add.ptr26.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg25.us
  %11 = load i8, ptr %add.ptr26.us, align 1, !tbaa !24
  %conv27.us = zext i8 %11 to i32
  %add28.us = add nuw nsw i32 %add21.us, %conv27.us
  %12 = load i8, ptr %incdec.ptr22.us, align 1, !tbaa !24
  %idx.ext30.us = zext i8 %12 to i64
  %idx.neg31.us = sub nsw i64 0, %idx.ext30.us
  %add.ptr32.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg31.us
  %13 = load i8, ptr %add.ptr32.us, align 1, !tbaa !24
  %conv33.us = zext i8 %13 to i32
  %add34.us = add nuw nsw i32 %add28.us, %conv33.us
  %add.ptr37.us = getelementptr inbounds i8, ptr %incdec.ptr22.us, i64 %idx.ext36
  %14 = load i8, ptr %add.ptr37.us, align 1, !tbaa !24
  %idx.ext39.us = zext i8 %14 to i64
  %idx.neg40.us = sub nsw i64 0, %idx.ext39.us
  %add.ptr41.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg40.us
  %15 = load i8, ptr %add.ptr41.us, align 1, !tbaa !24
  %conv42.us = zext i8 %15 to i32
  %add43.us = add nuw nsw i32 %add34.us, %conv42.us
  %add.ptr44.us = getelementptr inbounds nuw i8, ptr %add.ptr37.us, i64 2
  %16 = load i8, ptr %add.ptr44.us, align 1, !tbaa !24
  %idx.ext46.us = zext i8 %16 to i64
  %idx.neg47.us = sub nsw i64 0, %idx.ext46.us
  %add.ptr48.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg47.us
  %17 = load i8, ptr %add.ptr48.us, align 1, !tbaa !24
  %conv49.us = zext i8 %17 to i32
  %add50.us = add nuw nsw i32 %add43.us, %conv49.us
  %add.ptr53.us = getelementptr inbounds i8, ptr %add.ptr44.us, i64 %idx.ext36
  %incdec.ptr54.us = getelementptr inbounds nuw i8, ptr %add.ptr53.us, i64 1
  %18 = load i8, ptr %add.ptr53.us, align 1, !tbaa !24
  %idx.ext56.us = zext i8 %18 to i64
  %idx.neg57.us = sub nsw i64 0, %idx.ext56.us
  %add.ptr58.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg57.us
  %19 = load i8, ptr %add.ptr58.us, align 1, !tbaa !24
  %conv59.us = zext i8 %19 to i32
  %add60.us = add nuw nsw i32 %add50.us, %conv59.us
  %incdec.ptr61.us = getelementptr inbounds nuw i8, ptr %add.ptr53.us, i64 2
  %20 = load i8, ptr %incdec.ptr54.us, align 1, !tbaa !24
  %idx.ext63.us = zext i8 %20 to i64
  %idx.neg64.us = sub nsw i64 0, %idx.ext63.us
  %add.ptr65.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg64.us
  %21 = load i8, ptr %add.ptr65.us, align 1, !tbaa !24
  %conv66.us = zext i8 %21 to i32
  %add67.us = add nuw nsw i32 %add60.us, %conv66.us
  %22 = load i8, ptr %incdec.ptr61.us, align 1, !tbaa !24
  %idx.ext69.us = zext i8 %22 to i64
  %idx.neg70.us = sub nsw i64 0, %idx.ext69.us
  %add.ptr71.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg70.us
  %23 = load i8, ptr %add.ptr71.us, align 1, !tbaa !24
  %conv72.us = zext i8 %23 to i32
  %add73.us = add nuw nsw i32 %add67.us, %conv72.us
  %cmp74.us = icmp samesign ult i32 %add73.us, 731
  br i1 %cmp74.us, label %if.then.us, label %for.inc.us

if.then.us:                                       ; preds = %for.body7.us
  %sub76.us = sub nuw nsw i32 730, %add73.us
  %arrayidx80.us = getelementptr inbounds nuw i32, ptr %r, i64 %6
  store i32 %sub76.us, ptr %arrayidx80.us, align 4, !tbaa !16
  br label %for.inc.us

for.inc.us:                                       ; preds = %if.then.us, %for.body7.us
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.cond3.for.inc81_crit_edge.us, label %for.body7.us, !llvm.loop !57

for.cond3.for.inc81_crit_edge.us:                 ; preds = %for.inc.us
  %indvars.iv.next243 = add nuw nsw i64 %indvars.iv242, 1
  %exitcond249.not = icmp eq i64 %indvars.iv.next243, %wide.trip.count248
  br i1 %exitcond249.not, label %for.cond84.preheader, label %for.cond3.preheader.us, !llvm.loop !58

for.cond84.preheader:                             ; preds = %for.cond3.for.inc81_crit_edge.us, %for.cond3.preheader.lr.ph
  %sub85 = add nsw i32 %y_size, -2
  %cmp86236 = icmp sgt i32 %y_size, 4
  br i1 %cmp86236, label %for.cond89.preheader.lr.ph, label %for.end397

for.cond89.preheader.lr.ph:                       ; preds = %for.cond84.preheader
  %sub90 = add i32 %x_size, -2
  %cmp91234 = icmp sgt i32 %x_size, 4
  %idx.ext148 = sext i32 %sub90 to i64
  br i1 %cmp91234, label %for.cond89.preheader.us.preheader, label %for.end397

for.cond89.preheader.us.preheader:                ; preds = %for.cond89.preheader.lr.ph
  %24 = zext nneg i32 %x_size to i64
  %wide.trip.count264 = zext nneg i32 %sub85 to i64
  %wide.trip.count254 = zext i32 %sub90 to i64
  br label %for.cond89.preheader.us

for.cond89.preheader.us:                          ; preds = %for.cond89.preheader.us.preheader, %for.cond89.for.inc395_crit_edge.us
  %indvars.iv256 = phi i64 [ 2, %for.cond89.preheader.us.preheader ], [ %indvars.iv.next257, %for.cond89.for.inc395_crit_edge.us ]
  %25 = add nsw i64 %indvars.iv256, -1
  %26 = mul nsw i64 %25, %24
  %add.ptr119.us = getelementptr inbounds i8, ptr %in, i64 %26
  %27 = trunc i64 %indvars.iv256 to i32
  %28 = mul i32 %x_size, %27
  %29 = zext i32 %28 to i64
  %invariant.gep = getelementptr inbounds nuw i8, ptr %add.ptr119.us, i64 1
  %invariant.gep299 = getelementptr i8, ptr %invariant.gep, i64 %idx.ext148
  %30 = trunc nuw nsw i64 %indvars.iv256 to i32
  %31 = trunc nuw nsw i64 %indvars.iv256 to i32
  br label %for.body93.us

for.body93.us:                                    ; preds = %for.cond89.preheader.us, %for.inc392.us
  %indvars.iv250 = phi i64 [ 2, %for.cond89.preheader.us ], [ %indvars.iv.next251, %for.inc392.us ]
  %32 = add nuw nsw i64 %indvars.iv250, %29
  %arrayidx97.us = getelementptr inbounds nuw i32, ptr %r, i64 %32
  %33 = load i32, ptr %arrayidx97.us, align 4, !tbaa !16
  %cmp98.us = icmp sgt i32 %33, 0
  br i1 %cmp98.us, label %if.then100.us, label %for.inc392.us

if.then100.us:                                    ; preds = %for.body93.us
  %arrayidx109.us = getelementptr inbounds nuw i8, ptr %in, i64 %32
  %34 = load i8, ptr %arrayidx109.us, align 1, !tbaa !24
  %idx.ext111.us = zext i8 %34 to i64
  %add.ptr112.us = getelementptr inbounds nuw i8, ptr %bp, i64 %idx.ext111.us
  %cmp113.us = icmp samesign ult i32 %33, 480
  br i1 %cmp113.us, label %if.then115.us, label %if.then100.us.if.then259.us_crit_edge

if.then100.us.if.then259.us_crit_edge:            ; preds = %if.then100.us
  %add.ptr265.us.phi.trans.insert = getelementptr inbounds nuw i8, ptr %add.ptr119.us, i64 %indvars.iv250
  %add.ptr266.us.phi.trans.insert = getelementptr inbounds i8, ptr %add.ptr265.us.phi.trans.insert, i64 -1
  %.pre = load i8, ptr %add.ptr266.us.phi.trans.insert, align 1, !tbaa !24
  %.pre267 = load i8, ptr %add.ptr265.us.phi.trans.insert, align 1, !tbaa !24
  %incdec.ptr278.us.phi.trans.insert = getelementptr inbounds nuw i8, ptr %add.ptr265.us.phi.trans.insert, i64 1
  %.pre269 = load i8, ptr %incdec.ptr278.us.phi.trans.insert, align 1, !tbaa !24
  %add.ptr297.us.phi.trans.insert = getelementptr inbounds i8, ptr %incdec.ptr278.us.phi.trans.insert, i64 %idx.ext148
  %add.ptr304.us.phi.trans.insert = getelementptr inbounds nuw i8, ptr %add.ptr297.us.phi.trans.insert, i64 2
  %add.ptr313.us.phi.trans.insert = getelementptr inbounds i8, ptr %add.ptr304.us.phi.trans.insert, i64 %idx.ext148
  %.pre272 = load i8, ptr %add.ptr313.us.phi.trans.insert, align 1, !tbaa !24
  %incdec.ptr314.us.phi.trans.insert = getelementptr inbounds nuw i8, ptr %add.ptr313.us.phi.trans.insert, i64 1
  %.pre278 = load i8, ptr %incdec.ptr314.us.phi.trans.insert, align 1, !tbaa !24
  %incdec.ptr325.us.phi.trans.insert = getelementptr inbounds nuw i8, ptr %add.ptr313.us.phi.trans.insert, i64 2
  %.pre284 = load i8, ptr %incdec.ptr325.us.phi.trans.insert, align 1, !tbaa !24
  %.pre285 = zext i8 %.pre to i64
  %.pre286 = sub nsw i64 0, %.pre285
  %.pre287 = zext i8 %.pre267 to i64
  %.pre288 = sub nsw i64 0, %.pre287
  %.pre289 = zext i8 %.pre269 to i64
  %.pre290 = sub nsw i64 0, %.pre289
  %.pre291 = zext i8 %.pre272 to i64
  %.pre292 = sub nsw i64 0, %.pre291
  %.pre293 = zext i8 %.pre278 to i64
  %.pre294 = sub nsw i64 0, %.pre293
  %.pre295 = zext i8 %.pre284 to i64
  %.pre296 = sub nsw i64 0, %.pre295
  br label %if.then259.us

if.then115.us:                                    ; preds = %if.then100.us
  %sub105.us = sub nuw nsw i32 730, %33
  %add.ptr121.us = getelementptr inbounds nuw i8, ptr %add.ptr119.us, i64 %indvars.iv250
  %add.ptr122.us = getelementptr inbounds i8, ptr %add.ptr121.us, i64 -1
  %35 = load i8, ptr %add.ptr122.us, align 1, !tbaa !24
  %idx.ext125.us = zext i8 %35 to i64
  %idx.neg126.us = sub nsw i64 0, %idx.ext125.us
  %add.ptr127.us = getelementptr inbounds i8, ptr %add.ptr112.us, i64 %idx.neg126.us
  %36 = load i8, ptr %add.ptr127.us, align 1, !tbaa !24
  %conv128.us = zext i8 %36 to i32
  %incdec.ptr132.us = getelementptr inbounds nuw i8, ptr %add.ptr121.us, i64 1
  %37 = load i8, ptr %add.ptr121.us, align 1, !tbaa !24
  %idx.ext134.us = zext i8 %37 to i64
  %idx.neg135.us = sub nsw i64 0, %idx.ext134.us
  %add.ptr136.us = getelementptr inbounds i8, ptr %add.ptr112.us, i64 %idx.neg135.us
  %38 = load i8, ptr %add.ptr136.us, align 1, !tbaa !24
  %conv137.us = zext i8 %38 to i32
  %39 = load i8, ptr %incdec.ptr132.us, align 1, !tbaa !24
  %idx.ext140.us = zext i8 %39 to i64
  %idx.neg141.us = sub nsw i64 0, %idx.ext140.us
  %add.ptr142.us = getelementptr inbounds i8, ptr %add.ptr112.us, i64 %idx.neg141.us
  %40 = load i8, ptr %add.ptr142.us, align 1, !tbaa !24
  %conv143.us = zext i8 %40 to i32
  %add.ptr149.us = getelementptr inbounds i8, ptr %incdec.ptr132.us, i64 %idx.ext148
  %41 = load i8, ptr %add.ptr149.us, align 1, !tbaa !24
  %idx.ext151.us = zext i8 %41 to i64
  %idx.neg152.us = sub nsw i64 0, %idx.ext151.us
  %add.ptr153.us = getelementptr inbounds i8, ptr %add.ptr112.us, i64 %idx.neg152.us
  %42 = load i8, ptr %add.ptr153.us, align 1, !tbaa !24
  %conv154.us = zext i8 %42 to i32
  %add.ptr156.us = getelementptr inbounds nuw i8, ptr %add.ptr149.us, i64 2
  %43 = load i8, ptr %add.ptr156.us, align 1, !tbaa !24
  %idx.ext158.us = zext i8 %43 to i64
  %idx.neg159.us = sub nsw i64 0, %idx.ext158.us
  %add.ptr160.us = getelementptr inbounds i8, ptr %add.ptr112.us, i64 %idx.neg159.us
  %44 = load i8, ptr %add.ptr160.us, align 1, !tbaa !24
  %conv161.us = zext i8 %44 to i32
  %add.ptr165.us = getelementptr inbounds i8, ptr %add.ptr156.us, i64 %idx.ext148
  %incdec.ptr166.us = getelementptr inbounds nuw i8, ptr %add.ptr165.us, i64 1
  %45 = load i8, ptr %add.ptr165.us, align 1, !tbaa !24
  %idx.ext168.us = zext i8 %45 to i64
  %idx.neg169.us = sub nsw i64 0, %idx.ext168.us
  %add.ptr170.us = getelementptr inbounds i8, ptr %add.ptr112.us, i64 %idx.neg169.us
  %46 = load i8, ptr %add.ptr170.us, align 1, !tbaa !24
  %conv171.us = zext i8 %46 to i32
  %47 = add nuw nsw i32 %conv137.us, %conv128.us
  %48 = add nuw nsw i32 %47, %conv143.us
  %add174.us = sub nsw i32 %conv171.us, %48
  %incdec.ptr175.us = getelementptr inbounds nuw i8, ptr %add.ptr165.us, i64 2
  %49 = load i8, ptr %incdec.ptr166.us, align 1, !tbaa !24
  %idx.ext177.us = zext i8 %49 to i64
  %idx.neg178.us = sub nsw i64 0, %idx.ext177.us
  %add.ptr179.us = getelementptr inbounds i8, ptr %add.ptr112.us, i64 %idx.neg178.us
  %50 = load i8, ptr %add.ptr179.us, align 1, !tbaa !24
  %conv180.us = zext i8 %50 to i32
  %add181.us = add nsw i32 %add174.us, %conv180.us
  %51 = load i8, ptr %incdec.ptr175.us, align 1, !tbaa !24
  %idx.ext183.us = zext i8 %51 to i64
  %idx.neg184.us = sub nsw i64 0, %idx.ext183.us
  %add.ptr185.us = getelementptr inbounds i8, ptr %add.ptr112.us, i64 %idx.neg184.us
  %52 = load i8, ptr %add.ptr185.us, align 1, !tbaa !24
  %conv186.us = zext i8 %52 to i32
  %53 = add nuw nsw i32 %conv128.us, %conv154.us
  %54 = add nuw nsw i32 %conv143.us, %conv161.us
  %55 = add nuw nsw i32 %53, %conv171.us
  %sub172.us = sub nsw i32 %54, %55
  %add187.us = add nsw i32 %sub172.us, %conv186.us
  %add189.us = add nsw i32 %add181.us, %conv186.us
  %mul190.us = mul nsw i32 %add187.us, %add187.us
  %mul191.us = mul nsw i32 %add189.us, %add189.us
  %add192.us = add nuw nsw i32 %mul190.us, %mul191.us
  %conv193.us = uitofp nneg i32 %add192.us to float
  %sqrt.us = tail call float @llvm.sqrt.f32(float %conv193.us)
  %conv196.us = fpext float %sqrt.us to double
  %conv198.us = uitofp nneg i32 %sub105.us to double
  %mul199.us = fmul double %conv198.us, 4.000000e-01
  %cmp200.us = fcmp olt double %mul199.us, %conv196.us
  br i1 %cmp200.us, label %if.then202.us, label %if.then259.us

if.then259.us:                                    ; preds = %if.then100.us.if.then259.us_crit_edge, %if.then115.us
  %idx.neg334.us.pre-phi = phi i64 [ %.pre296, %if.then100.us.if.then259.us_crit_edge ], [ %idx.neg184.us, %if.then115.us ]
  %idx.neg328.us.pre-phi = phi i64 [ %.pre294, %if.then100.us.if.then259.us_crit_edge ], [ %idx.neg178.us, %if.then115.us ]
  %idx.neg317.us.pre-phi = phi i64 [ %.pre292, %if.then100.us.if.then259.us_crit_edge ], [ %idx.neg169.us, %if.then115.us ]
  %idx.neg287.us.pre-phi = phi i64 [ %.pre290, %if.then100.us.if.then259.us_crit_edge ], [ %idx.neg141.us, %if.then115.us ]
  %idx.neg281.us.pre-phi = phi i64 [ %.pre288, %if.then100.us.if.then259.us_crit_edge ], [ %idx.neg135.us, %if.then115.us ]
  %idx.neg270.us.pre-phi = phi i64 [ %.pre286, %if.then100.us.if.then259.us_crit_edge ], [ %idx.neg126.us, %if.then115.us ]
  %add.ptr271.us = getelementptr inbounds i8, ptr %add.ptr112.us, i64 %idx.neg270.us.pre-phi
  %56 = load i8, ptr %add.ptr271.us, align 1, !tbaa !24
  %conv272.us = zext i8 %56 to i32
  %add.ptr282.us = getelementptr inbounds i8, ptr %add.ptr112.us, i64 %idx.neg281.us.pre-phi
  %57 = load i8, ptr %add.ptr282.us, align 1, !tbaa !24
  %conv283.us = zext i8 %57 to i32
  %add.ptr288.us = getelementptr inbounds i8, ptr %add.ptr112.us, i64 %idx.neg287.us.pre-phi
  %58 = load i8, ptr %add.ptr288.us, align 1, !tbaa !24
  %conv289.us = zext i8 %58 to i32
  %add.ptr318.us = getelementptr inbounds i8, ptr %add.ptr112.us, i64 %idx.neg317.us.pre-phi
  %59 = load i8, ptr %add.ptr318.us, align 1, !tbaa !24
  %conv319.us = zext i8 %59 to i32
  %add.ptr329.us = getelementptr inbounds i8, ptr %add.ptr112.us, i64 %idx.neg328.us.pre-phi
  %60 = load i8, ptr %add.ptr329.us, align 1, !tbaa !24
  %conv330.us = zext i8 %60 to i32
  %add.ptr335.us = getelementptr inbounds i8, ptr %add.ptr112.us, i64 %idx.neg334.us.pre-phi
  %61 = load i8, ptr %add.ptr335.us, align 1, !tbaa !24
  %conv336.us = zext i8 %61 to i32
  %add284.us = add nuw nsw i32 %conv319.us, %conv289.us
  %add292.us = add nuw nsw i32 %add284.us, %conv272.us
  %add322.us = add nuw nsw i32 %add292.us, %conv283.us
  %add331.us = add nuw nsw i32 %add322.us, %conv330.us
  %add339.us = add nuw nsw i32 %add331.us, %conv336.us
  %.neg229.us = add nuw nsw i32 %conv336.us, %conv272.us
  %cmp342.us = icmp eq i32 %add339.us, 0
  br i1 %cmp342.us, label %if.end366.us, label %if.end349.us

if.end349.us:                                     ; preds = %if.then259.us
  %gep300 = getelementptr i8, ptr %invariant.gep299, i64 %indvars.iv250
  %add.ptr304.us = getelementptr inbounds nuw i8, ptr %gep300, i64 2
  %62 = load i8, ptr %gep300, align 1, !tbaa !24
  %idx.ext299.us = zext i8 %62 to i64
  %idx.neg300.us = sub nsw i64 0, %idx.ext299.us
  %add.ptr301.us = getelementptr inbounds i8, ptr %add.ptr112.us, i64 %idx.neg300.us
  %63 = load i8, ptr %add.ptr301.us, align 1, !tbaa !24
  %conv302.us = zext i8 %63 to i32
  %64 = load i8, ptr %add.ptr304.us, align 1, !tbaa !24
  %idx.ext306.us = zext i8 %64 to i64
  %idx.neg307.us = sub nsw i64 0, %idx.ext306.us
  %add.ptr308.us = getelementptr inbounds i8, ptr %add.ptr112.us, i64 %idx.neg307.us
  %65 = load i8, ptr %add.ptr308.us, align 1, !tbaa !24
  %conv309.us = zext i8 %65 to i32
  %add310.us = add nuw nsw i32 %add292.us, %conv336.us
  %add320.us = add nuw nsw i32 %add310.us, %conv302.us
  %add337.us = add nuw nsw i32 %add320.us, %conv309.us
  %conv346.us = uitofp nneg i32 %add337.us to float
  %conv347.us = uitofp nneg i32 %add339.us to float
  %div348.us = fdiv float %conv346.us, %conv347.us
  %cmp351.us = fcmp olt float %div348.us, 5.000000e-01
  br i1 %cmp351.us, label %if.end366.us, label %if.else354.us

if.else354.us:                                    ; preds = %if.end349.us
  %cmp356.us = fcmp ogt float %div348.us, 2.000000e+00
  br i1 %cmp356.us, label %if.end366.us, label %if.else359.us

if.else359.us:                                    ; preds = %if.else354.us
  %cmp360.inv.us.not = icmp samesign ugt i32 %.neg229.us, %add284.us
  %.220.us = select i1 %cmp360.inv.us.not, i32 -1, i32 1
  br label %if.end366.us

if.end366.us:                                     ; preds = %if.else359.us, %if.else354.us, %if.end349.us, %if.then259.us
  %a.1.us = phi i32 [ 0, %if.end349.us ], [ 1, %if.else354.us ], [ %.220.us, %if.else359.us ], [ 1, %if.then259.us ]
  %b.1.us = phi i32 [ 1, %if.end349.us ], [ 0, %if.else354.us ], [ 1, %if.else359.us ], [ 0, %if.then259.us ]
  %add367.us = add nsw i32 %a.1.us, %30
  %mul368.us = mul nsw i32 %add367.us, %x_size
  %66 = trunc nuw nsw i64 %indvars.iv250 to i32
  %add369.us = add nuw nsw i32 %b.1.us, %66
  %add370.us = add i32 %add369.us, %mul368.us
  %idxprom371.us = sext i32 %add370.us to i64
  %arrayidx372.us = getelementptr inbounds i32, ptr %r, i64 %idxprom371.us
  %67 = load i32, ptr %arrayidx372.us, align 4, !tbaa !16
  %cmp373.us = icmp sgt i32 %33, %67
  br i1 %cmp373.us, label %land.lhs.true375.us, label %for.inc392.us

land.lhs.true375.us:                              ; preds = %if.end366.us
  %sub376.us = sub nsw i32 %30, %a.1.us
  %mul377.us = mul nsw i32 %sub376.us, %x_size
  %add378.us = sub nsw i32 %66, %b.1.us
  %sub379.us = add i32 %add378.us, %mul377.us
  %idxprom380.us = sext i32 %sub379.us to i64
  %arrayidx381.us = getelementptr inbounds i32, ptr %r, i64 %idxprom380.us
  %68 = load i32, ptr %arrayidx381.us, align 4, !tbaa !16
  %cmp382.not.us = icmp slt i32 %33, %68
  br i1 %cmp382.not.us, label %for.inc392.us, label %for.inc392.us.sink.split

if.then202.us:                                    ; preds = %if.then115.us
  %cmp203.us = icmp eq i32 %add187.us, 0
  %conv206.us = sitofp i32 %add189.us to float
  %conv207.us = sitofp i32 %add187.us to float
  %div.us = fdiv float %conv206.us, %conv207.us
  %z.0.us = select i1 %cmp203.us, float 1.000000e+06, float %div.us
  %cmp209.us = fcmp uge float %z.0.us, 0.000000e+00
  %fneg.us = fneg float %z.0.us
  %z.1.us = select i1 %cmp209.us, float %z.0.us, float %fneg.us
  %cmp215.us = fcmp olt float %z.1.us, 5.000000e-01
  br i1 %cmp215.us, label %if.end230.us, label %if.else218.us

if.else218.us:                                    ; preds = %if.then202.us
  %cmp220.us = fcmp ogt float %z.1.us, 2.000000e+00
  br i1 %cmp220.us, label %if.end230.us, label %if.else223.us

if.else223.us:                                    ; preds = %if.else218.us
  %..us = select i1 %cmp209.us, i32 1, i32 -1
  br label %if.end230.us

if.end230.us:                                     ; preds = %if.else223.us, %if.else218.us, %if.then202.us
  %a.0.us = phi i32 [ 0, %if.then202.us ], [ 1, %if.else218.us ], [ %..us, %if.else223.us ]
  %b.0.us = phi i32 [ 1, %if.then202.us ], [ 0, %if.else218.us ], [ 1, %if.else223.us ]
  %add231.us = add nsw i32 %a.0.us, %31
  %mul232.us = mul nsw i32 %add231.us, %x_size
  %69 = trunc nuw nsw i64 %indvars.iv250 to i32
  %add233.us = add nuw nsw i32 %b.0.us, %69
  %add234.us = add i32 %add233.us, %mul232.us
  %idxprom235.us = sext i32 %add234.us to i64
  %arrayidx236.us = getelementptr inbounds i32, ptr %r, i64 %idxprom235.us
  %70 = load i32, ptr %arrayidx236.us, align 4, !tbaa !16
  %cmp237.us = icmp sgt i32 %33, %70
  br i1 %cmp237.us, label %land.lhs.true.us, label %for.inc392.us

land.lhs.true.us:                                 ; preds = %if.end230.us
  %sub239.us = sub nsw i32 %31, %a.0.us
  %mul240.us = mul nsw i32 %sub239.us, %x_size
  %add241.us = sub nsw i32 %69, %b.0.us
  %sub242.us = add i32 %add241.us, %mul240.us
  %idxprom243.us = sext i32 %sub242.us to i64
  %arrayidx244.us = getelementptr inbounds i32, ptr %r, i64 %idxprom243.us
  %71 = load i32, ptr %arrayidx244.us, align 4, !tbaa !16
  %cmp245.not.us = icmp slt i32 %33, %71
  br i1 %cmp245.not.us, label %for.inc392.us, label %for.inc392.us.sink.split

for.inc392.us.sink.split:                         ; preds = %land.lhs.true.us, %land.lhs.true375.us
  %.sink = phi i8 [ 2, %land.lhs.true375.us ], [ 1, %land.lhs.true.us ]
  %arrayidx251.us = getelementptr inbounds nuw i8, ptr %mid, i64 %32
  store i8 %.sink, ptr %arrayidx251.us, align 1, !tbaa !24
  br label %for.inc392.us

for.inc392.us:                                    ; preds = %for.inc392.us.sink.split, %land.lhs.true.us, %if.end230.us, %land.lhs.true375.us, %if.end366.us, %for.body93.us
  %indvars.iv.next251 = add nuw nsw i64 %indvars.iv250, 1
  %exitcond255.not = icmp eq i64 %indvars.iv.next251, %wide.trip.count254
  br i1 %exitcond255.not, label %for.cond89.for.inc395_crit_edge.us, label %for.body93.us, !llvm.loop !59

for.cond89.for.inc395_crit_edge.us:               ; preds = %for.inc392.us
  %indvars.iv.next257 = add nuw nsw i64 %indvars.iv256, 1
  %exitcond265.not = icmp eq i64 %indvars.iv.next257, %wide.trip.count264
  br i1 %exitcond265.not, label %for.end397, label %for.cond89.preheader.us, !llvm.loop !60

for.end397:                                       ; preds = %for.cond89.for.inc395_crit_edge.us, %entry, %for.cond89.preheader.lr.ph, %for.cond84.preheader
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @corner_draw(ptr noundef writeonly captures(none) %in, ptr noundef readonly captures(none) %corner_list, i32 noundef %x_size, i32 noundef %drawing_mode) local_unnamed_addr #8 {
entry:
  %info26 = getelementptr inbounds nuw i8, ptr %corner_list, i64 8
  %0 = load i32, ptr %info26, align 4, !tbaa !61
  %cmp.not27 = icmp eq i32 %0, 7
  br i1 %cmp.not27, label %while.end, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %entry
  %cmp1 = icmp eq i32 %drawing_mode, 0
  %sub10 = add nsw i32 %x_size, -2
  %idx.ext11 = sext i32 %sub10 to i64
  br i1 %cmp1, label %while.body.us, label %while.body

while.body.us:                                    ; preds = %while.body.lr.ph, %while.body.us
  %indvars.iv32 = phi i64 [ %indvars.iv.next33, %while.body.us ], [ 0, %while.body.lr.ph ]
  %arrayidx29.us = getelementptr inbounds nuw %struct.anon, ptr %corner_list, i64 %indvars.iv32
  %y.us = getelementptr inbounds nuw i8, ptr %arrayidx29.us, i64 4
  %1 = load i32, ptr %y.us, align 4, !tbaa !63
  %sub.us = add nsw i32 %1, -1
  %mul.us = mul nsw i32 %sub.us, %x_size
  %idx.ext.us = sext i32 %mul.us to i64
  %add.ptr.us = getelementptr inbounds i8, ptr %in, i64 %idx.ext.us
  %2 = load i32, ptr %arrayidx29.us, align 4, !tbaa !64
  %idx.ext6.us = sext i32 %2 to i64
  %add.ptr7.us = getelementptr inbounds i8, ptr %add.ptr.us, i64 %idx.ext6.us
  %add.ptr8.us = getelementptr inbounds i8, ptr %add.ptr7.us, i64 -1
  store i8 -1, ptr %add.ptr8.us, align 1, !tbaa !24
  %incdec.ptr9.us = getelementptr inbounds nuw i8, ptr %add.ptr7.us, i64 1
  store i8 -1, ptr %add.ptr7.us, align 1, !tbaa !24
  store i8 -1, ptr %incdec.ptr9.us, align 1, !tbaa !24
  %add.ptr12.us = getelementptr inbounds i8, ptr %incdec.ptr9.us, i64 %idx.ext11
  %incdec.ptr13.us = getelementptr inbounds nuw i8, ptr %add.ptr12.us, i64 1
  store i8 -1, ptr %add.ptr12.us, align 1, !tbaa !24
  %incdec.ptr14.us = getelementptr inbounds nuw i8, ptr %add.ptr12.us, i64 2
  store i8 0, ptr %incdec.ptr13.us, align 1, !tbaa !24
  store i8 -1, ptr %incdec.ptr14.us, align 1, !tbaa !24
  %add.ptr17.us = getelementptr inbounds i8, ptr %incdec.ptr14.us, i64 %idx.ext11
  %incdec.ptr18.us = getelementptr inbounds nuw i8, ptr %add.ptr17.us, i64 1
  store i8 -1, ptr %add.ptr17.us, align 1, !tbaa !24
  %incdec.ptr19.us = getelementptr inbounds nuw i8, ptr %add.ptr17.us, i64 2
  store i8 -1, ptr %incdec.ptr18.us, align 1, !tbaa !24
  store i8 -1, ptr %incdec.ptr19.us, align 1, !tbaa !24
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1
  %info.us = getelementptr inbounds nuw %struct.anon, ptr %corner_list, i64 %indvars.iv.next33, i32 2
  %3 = load i32, ptr %info.us, align 4, !tbaa !61
  %cmp.not.us = icmp eq i32 %3, 7
  br i1 %cmp.not.us, label %while.end, label %while.body.us, !llvm.loop !65

while.body:                                       ; preds = %while.body.lr.ph, %while.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %while.body ], [ 0, %while.body.lr.ph ]
  %arrayidx29 = getelementptr inbounds nuw %struct.anon, ptr %corner_list, i64 %indvars.iv
  %y22 = getelementptr inbounds nuw i8, ptr %arrayidx29, i64 4
  %4 = load i32, ptr %y22, align 4, !tbaa !63
  %mul23 = mul nsw i32 %4, %x_size
  %idx.ext24 = sext i32 %mul23 to i64
  %add.ptr25 = getelementptr inbounds i8, ptr %in, i64 %idx.ext24
  %5 = load i32, ptr %arrayidx29, align 4, !tbaa !64
  %idx.ext29 = sext i32 %5 to i64
  %add.ptr30 = getelementptr inbounds i8, ptr %add.ptr25, i64 %idx.ext29
  store i8 0, ptr %add.ptr30, align 1, !tbaa !24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %info = getelementptr inbounds nuw %struct.anon, ptr %corner_list, i64 %indvars.iv.next, i32 2
  %6 = load i32, ptr %info, align 4, !tbaa !61
  %cmp.not = icmp eq i32 %6, 7
  br i1 %cmp.not, label %while.end, label %while.body, !llvm.loop !65

while.end:                                        ; preds = %while.body, %while.body.us, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @susan_corners(ptr noundef readonly captures(none) %in, ptr noundef %r, ptr noundef readonly captures(none) %bp, i32 noundef %max_no, ptr noundef writeonly captures(none) %corner_list, i32 noundef %x_size, i32 noundef %y_size) local_unnamed_addr #0 {
entry:
  %mul = mul nsw i32 %y_size, %x_size
  %conv = sext i32 %mul to i64
  %mul1 = shl nsw i64 %conv, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %r, i8 0, i64 %mul1, i1 false)
  %call = tail call noalias ptr @malloc(i64 noundef %mul1) #26
  %call8 = tail call noalias ptr @malloc(i64 noundef %mul1) #26
  %sub = add i32 %y_size, -5
  %cmp796 = icmp sgt i32 %y_size, 10
  br i1 %cmp796, label %for.cond10.preheader.lr.ph, label %for.end1383

for.cond10.preheader.lr.ph:                       ; preds = %entry
  %sub11 = add i32 %x_size, -5
  %cmp12793 = icmp sgt i32 %x_size, 10
  %sub42 = add nsw i32 %x_size, -3
  %idx.ext43 = sext i32 %sub42 to i64
  %idx.ext80 = sext i32 %sub11 to i64
  %sub130 = add nsw i32 %x_size, -6
  %idx.ext131 = sext i32 %sub130 to i64
  br i1 %cmp12793, label %for.cond10.preheader.us.preheader, label %for.end1383

for.cond10.preheader.us.preheader:                ; preds = %for.cond10.preheader.lr.ph
  %0 = zext nneg i32 %x_size to i64
  %wide.trip.count817 = zext nneg i32 %sub to i64
  %wide.trip.count = zext i32 %sub11 to i64
  br label %for.cond10.preheader.us

for.cond10.preheader.us:                          ; preds = %for.cond10.preheader.us.preheader, %for.cond10.for.inc904_crit_edge.us
  %indvars.iv811 = phi i64 [ 5, %for.cond10.preheader.us.preheader ], [ %indvars.iv.next812, %for.cond10.for.inc904_crit_edge.us ]
  %1 = add nsw i64 %indvars.iv811, -3
  %2 = mul nsw i64 %1, %0
  %add.ptr.us = getelementptr inbounds i8, ptr %in, i64 %2
  %3 = trunc i64 %indvars.iv811 to i32
  %4 = mul i32 %x_size, %3
  %5 = zext i32 %4 to i64
  %6 = trunc nuw nsw i64 %indvars.iv811 to i32
  %7 = trunc nuw nsw i64 %indvars.iv811 to i32
  br label %for.body14.us

for.body14.us:                                    ; preds = %for.cond10.preheader.us, %for.inc.us
  %indvars.iv = phi i64 [ 5, %for.cond10.preheader.us ], [ %indvars.iv.next, %for.inc.us ]
  %add.ptr18.us = getelementptr inbounds nuw i8, ptr %add.ptr.us, i64 %indvars.iv
  %add.ptr19.us = getelementptr inbounds i8, ptr %add.ptr18.us, i64 -1
  %8 = add nuw nsw i64 %indvars.iv, %5
  %arrayidx.us = getelementptr inbounds nuw i8, ptr %in, i64 %8
  %9 = load i8, ptr %arrayidx.us, align 1, !tbaa !24
  %idx.ext22.us = zext i8 %9 to i64
  %add.ptr23.us = getelementptr inbounds nuw i8, ptr %bp, i64 %idx.ext22.us
  %10 = load i8, ptr %add.ptr19.us, align 1, !tbaa !24
  %idx.ext25.us = zext i8 %10 to i64
  %idx.neg.us = sub nsw i64 0, %idx.ext25.us
  %add.ptr26.us = getelementptr inbounds i8, ptr %add.ptr23.us, i64 %idx.neg.us
  %11 = load i8, ptr %add.ptr26.us, align 1, !tbaa !24
  %conv27.us = zext i8 %11 to i32
  %add28.us = add nuw nsw i32 %conv27.us, 100
  %incdec.ptr29.us = getelementptr inbounds nuw i8, ptr %add.ptr18.us, i64 1
  %12 = load i8, ptr %add.ptr18.us, align 1, !tbaa !24
  %idx.ext31.us = zext i8 %12 to i64
  %idx.neg32.us = sub nsw i64 0, %idx.ext31.us
  %add.ptr33.us = getelementptr inbounds i8, ptr %add.ptr23.us, i64 %idx.neg32.us
  %13 = load i8, ptr %add.ptr33.us, align 1, !tbaa !24
  %conv34.us = zext i8 %13 to i32
  %add35.us = add nuw nsw i32 %add28.us, %conv34.us
  %14 = load i8, ptr %incdec.ptr29.us, align 1, !tbaa !24
  %idx.ext37.us = zext i8 %14 to i64
  %idx.neg38.us = sub nsw i64 0, %idx.ext37.us
  %add.ptr39.us = getelementptr inbounds i8, ptr %add.ptr23.us, i64 %idx.neg38.us
  %15 = load i8, ptr %add.ptr39.us, align 1, !tbaa !24
  %conv40.us = zext i8 %15 to i32
  %add41.us = add nuw nsw i32 %add35.us, %conv40.us
  %add.ptr44.us = getelementptr inbounds i8, ptr %incdec.ptr29.us, i64 %idx.ext43
  %incdec.ptr45.us = getelementptr inbounds nuw i8, ptr %add.ptr44.us, i64 1
  %16 = load i8, ptr %add.ptr44.us, align 1, !tbaa !24
  %idx.ext47.us = zext i8 %16 to i64
  %idx.neg48.us = sub nsw i64 0, %idx.ext47.us
  %add.ptr49.us = getelementptr inbounds i8, ptr %add.ptr23.us, i64 %idx.neg48.us
  %17 = load i8, ptr %add.ptr49.us, align 1, !tbaa !24
  %conv50.us = zext i8 %17 to i32
  %add51.us = add nuw nsw i32 %add41.us, %conv50.us
  %incdec.ptr52.us = getelementptr inbounds nuw i8, ptr %add.ptr44.us, i64 2
  %18 = load i8, ptr %incdec.ptr45.us, align 1, !tbaa !24
  %idx.ext54.us = zext i8 %18 to i64
  %idx.neg55.us = sub nsw i64 0, %idx.ext54.us
  %add.ptr56.us = getelementptr inbounds i8, ptr %add.ptr23.us, i64 %idx.neg55.us
  %19 = load i8, ptr %add.ptr56.us, align 1, !tbaa !24
  %conv57.us = zext i8 %19 to i32
  %add58.us = add nuw nsw i32 %add51.us, %conv57.us
  %incdec.ptr59.us = getelementptr inbounds nuw i8, ptr %add.ptr44.us, i64 3
  %20 = load i8, ptr %incdec.ptr52.us, align 1, !tbaa !24
  %idx.ext61.us = zext i8 %20 to i64
  %idx.neg62.us = sub nsw i64 0, %idx.ext61.us
  %add.ptr63.us = getelementptr inbounds i8, ptr %add.ptr23.us, i64 %idx.neg62.us
  %21 = load i8, ptr %add.ptr63.us, align 1, !tbaa !24
  %conv64.us = zext i8 %21 to i32
  %add65.us = add nuw nsw i32 %add58.us, %conv64.us
  %incdec.ptr66.us = getelementptr inbounds nuw i8, ptr %add.ptr44.us, i64 4
  %22 = load i8, ptr %incdec.ptr59.us, align 1, !tbaa !24
  %idx.ext68.us = zext i8 %22 to i64
  %idx.neg69.us = sub nsw i64 0, %idx.ext68.us
  %add.ptr70.us = getelementptr inbounds i8, ptr %add.ptr23.us, i64 %idx.neg69.us
  %23 = load i8, ptr %add.ptr70.us, align 1, !tbaa !24
  %conv71.us = zext i8 %23 to i32
  %add72.us = add nuw nsw i32 %add65.us, %conv71.us
  %24 = load i8, ptr %incdec.ptr66.us, align 1, !tbaa !24
  %idx.ext74.us = zext i8 %24 to i64
  %idx.neg75.us = sub nsw i64 0, %idx.ext74.us
  %add.ptr76.us = getelementptr inbounds i8, ptr %add.ptr23.us, i64 %idx.neg75.us
  %25 = load i8, ptr %add.ptr76.us, align 1, !tbaa !24
  %conv77.us = zext i8 %25 to i32
  %add78.us = add nuw nsw i32 %add72.us, %conv77.us
  %add.ptr81.us = getelementptr inbounds i8, ptr %incdec.ptr66.us, i64 %idx.ext80
  %incdec.ptr82.us = getelementptr inbounds nuw i8, ptr %add.ptr81.us, i64 1
  %26 = load i8, ptr %add.ptr81.us, align 1, !tbaa !24
  %idx.ext84.us = zext i8 %26 to i64
  %idx.neg85.us = sub nsw i64 0, %idx.ext84.us
  %add.ptr86.us = getelementptr inbounds i8, ptr %add.ptr23.us, i64 %idx.neg85.us
  %27 = load i8, ptr %add.ptr86.us, align 1, !tbaa !24
  %conv87.us = zext i8 %27 to i32
  %add88.us = add nuw nsw i32 %add78.us, %conv87.us
  %incdec.ptr89.us = getelementptr inbounds nuw i8, ptr %add.ptr81.us, i64 2
  %28 = load i8, ptr %incdec.ptr82.us, align 1, !tbaa !24
  %idx.ext91.us = zext i8 %28 to i64
  %idx.neg92.us = sub nsw i64 0, %idx.ext91.us
  %add.ptr93.us = getelementptr inbounds i8, ptr %add.ptr23.us, i64 %idx.neg92.us
  %29 = load i8, ptr %add.ptr93.us, align 1, !tbaa !24
  %conv94.us = zext i8 %29 to i32
  %add95.us = add nuw nsw i32 %add88.us, %conv94.us
  %incdec.ptr96.us = getelementptr inbounds nuw i8, ptr %add.ptr81.us, i64 3
  %30 = load i8, ptr %incdec.ptr89.us, align 1, !tbaa !24
  %idx.ext98.us = zext i8 %30 to i64
  %idx.neg99.us = sub nsw i64 0, %idx.ext98.us
  %add.ptr100.us = getelementptr inbounds i8, ptr %add.ptr23.us, i64 %idx.neg99.us
  %31 = load i8, ptr %add.ptr100.us, align 1, !tbaa !24
  %conv101.us = zext i8 %31 to i32
  %add102.us = add nuw nsw i32 %add95.us, %conv101.us
  %incdec.ptr103.us = getelementptr inbounds nuw i8, ptr %add.ptr81.us, i64 4
  %32 = load i8, ptr %incdec.ptr96.us, align 1, !tbaa !24
  %idx.ext105.us = zext i8 %32 to i64
  %idx.neg106.us = sub nsw i64 0, %idx.ext105.us
  %add.ptr107.us = getelementptr inbounds i8, ptr %add.ptr23.us, i64 %idx.neg106.us
  %33 = load i8, ptr %add.ptr107.us, align 1, !tbaa !24
  %conv108.us = zext i8 %33 to i32
  %add109.us = add nuw nsw i32 %add102.us, %conv108.us
  %incdec.ptr110.us = getelementptr inbounds nuw i8, ptr %add.ptr81.us, i64 5
  %34 = load i8, ptr %incdec.ptr103.us, align 1, !tbaa !24
  %idx.ext112.us = zext i8 %34 to i64
  %idx.neg113.us = sub nsw i64 0, %idx.ext112.us
  %add.ptr114.us = getelementptr inbounds i8, ptr %add.ptr23.us, i64 %idx.neg113.us
  %35 = load i8, ptr %add.ptr114.us, align 1, !tbaa !24
  %conv115.us = zext i8 %35 to i32
  %add116.us = add nuw nsw i32 %add109.us, %conv115.us
  %incdec.ptr117.us = getelementptr inbounds nuw i8, ptr %add.ptr81.us, i64 6
  %36 = load i8, ptr %incdec.ptr110.us, align 1, !tbaa !24
  %idx.ext119.us = zext i8 %36 to i64
  %idx.neg120.us = sub nsw i64 0, %idx.ext119.us
  %add.ptr121.us = getelementptr inbounds i8, ptr %add.ptr23.us, i64 %idx.neg120.us
  %37 = load i8, ptr %add.ptr121.us, align 1, !tbaa !24
  %conv122.us = zext i8 %37 to i32
  %add123.us = add nuw nsw i32 %add116.us, %conv122.us
  %38 = load i8, ptr %incdec.ptr117.us, align 1, !tbaa !24
  %idx.ext125.us = zext i8 %38 to i64
  %idx.neg126.us = sub nsw i64 0, %idx.ext125.us
  %add.ptr127.us = getelementptr inbounds i8, ptr %add.ptr23.us, i64 %idx.neg126.us
  %39 = load i8, ptr %add.ptr127.us, align 1, !tbaa !24
  %conv128.us = zext i8 %39 to i32
  %add129.us = add nuw nsw i32 %add123.us, %conv128.us
  %add.ptr132.us = getelementptr inbounds i8, ptr %incdec.ptr117.us, i64 %idx.ext131
  %incdec.ptr133.us = getelementptr inbounds nuw i8, ptr %add.ptr132.us, i64 1
  %40 = load i8, ptr %add.ptr132.us, align 1, !tbaa !24
  %idx.ext135.us = zext i8 %40 to i64
  %idx.neg136.us = sub nsw i64 0, %idx.ext135.us
  %add.ptr137.us = getelementptr inbounds i8, ptr %add.ptr23.us, i64 %idx.neg136.us
  %41 = load i8, ptr %add.ptr137.us, align 1, !tbaa !24
  %conv138.us = zext i8 %41 to i32
  %add139.us = add nuw nsw i32 %add129.us, %conv138.us
  %incdec.ptr140.us = getelementptr inbounds nuw i8, ptr %add.ptr132.us, i64 2
  %42 = load i8, ptr %incdec.ptr133.us, align 1, !tbaa !24
  %idx.ext142.us = zext i8 %42 to i64
  %idx.neg143.us = sub nsw i64 0, %idx.ext142.us
  %add.ptr144.us = getelementptr inbounds i8, ptr %add.ptr23.us, i64 %idx.neg143.us
  %43 = load i8, ptr %add.ptr144.us, align 1, !tbaa !24
  %conv145.us = zext i8 %43 to i32
  %add146.us = add nuw nsw i32 %add139.us, %conv145.us
  %44 = load i8, ptr %incdec.ptr140.us, align 1, !tbaa !24
  %idx.ext148.us = zext i8 %44 to i64
  %idx.neg149.us = sub nsw i64 0, %idx.ext148.us
  %add.ptr150.us = getelementptr inbounds i8, ptr %add.ptr23.us, i64 %idx.neg149.us
  %45 = load i8, ptr %add.ptr150.us, align 1, !tbaa !24
  %conv151.us = zext i8 %45 to i32
  %add152.us = add nuw nsw i32 %add146.us, %conv151.us
  %cmp153.us = icmp slt i32 %add152.us, %max_no
  br i1 %cmp153.us, label %if.then.us, label %for.inc.us

if.then.us:                                       ; preds = %for.body14.us
  %add.ptr155.us = getelementptr inbounds nuw i8, ptr %add.ptr132.us, i64 4
  %46 = load i8, ptr %add.ptr155.us, align 1, !tbaa !24
  %idx.ext158.us = zext i8 %46 to i64
  %idx.neg159.us = sub nsw i64 0, %idx.ext158.us
  %add.ptr160.us = getelementptr inbounds i8, ptr %add.ptr23.us, i64 %idx.neg159.us
  %47 = load i8, ptr %add.ptr160.us, align 1, !tbaa !24
  %conv161.us = zext i8 %47 to i32
  %add162.us = add nuw nsw i32 %add152.us, %conv161.us
  %cmp163.us = icmp samesign ult i32 %add162.us, %max_no
  br i1 %cmp163.us, label %if.then165.us, label %for.inc.us

if.then165.us:                                    ; preds = %if.then.us
  %incdec.ptr156.us = getelementptr inbounds nuw i8, ptr %add.ptr132.us, i64 5
  %incdec.ptr166.us = getelementptr inbounds nuw i8, ptr %add.ptr132.us, i64 6
  %48 = load i8, ptr %incdec.ptr156.us, align 1, !tbaa !24
  %idx.ext168.us = zext i8 %48 to i64
  %idx.neg169.us = sub nsw i64 0, %idx.ext168.us
  %add.ptr170.us = getelementptr inbounds i8, ptr %add.ptr23.us, i64 %idx.neg169.us
  %49 = load i8, ptr %add.ptr170.us, align 1, !tbaa !24
  %conv171.us = zext i8 %49 to i32
  %add172.us = add nuw nsw i32 %add162.us, %conv171.us
  %cmp173.us = icmp samesign ult i32 %add172.us, %max_no
  br i1 %cmp173.us, label %if.then175.us, label %for.inc.us

if.then175.us:                                    ; preds = %if.then165.us
  %50 = load i8, ptr %incdec.ptr166.us, align 1, !tbaa !24
  %idx.ext177.us = zext i8 %50 to i64
  %idx.neg178.us = sub nsw i64 0, %idx.ext177.us
  %add.ptr179.us = getelementptr inbounds i8, ptr %add.ptr23.us, i64 %idx.neg178.us
  %51 = load i8, ptr %add.ptr179.us, align 1, !tbaa !24
  %conv180.us = zext i8 %51 to i32
  %add181.us = add nuw nsw i32 %add172.us, %conv180.us
  %cmp182.us = icmp samesign ult i32 %add181.us, %max_no
  br i1 %cmp182.us, label %if.then184.us, label %for.inc.us

if.then184.us:                                    ; preds = %if.then175.us
  %add.ptr187.us = getelementptr inbounds i8, ptr %incdec.ptr166.us, i64 %idx.ext131
  %52 = load i8, ptr %add.ptr187.us, align 1, !tbaa !24
  %idx.ext190.us = zext i8 %52 to i64
  %idx.neg191.us = sub nsw i64 0, %idx.ext190.us
  %add.ptr192.us = getelementptr inbounds i8, ptr %add.ptr23.us, i64 %idx.neg191.us
  %53 = load i8, ptr %add.ptr192.us, align 1, !tbaa !24
  %conv193.us = zext i8 %53 to i32
  %add194.us = add nuw nsw i32 %add181.us, %conv193.us
  %cmp195.us = icmp samesign ult i32 %add194.us, %max_no
  br i1 %cmp195.us, label %if.then197.us, label %for.inc.us

if.then197.us:                                    ; preds = %if.then184.us
  %incdec.ptr188.us = getelementptr inbounds nuw i8, ptr %add.ptr187.us, i64 1
  %54 = load i8, ptr %incdec.ptr188.us, align 1, !tbaa !24
  %idx.ext200.us = zext i8 %54 to i64
  %idx.neg201.us = sub nsw i64 0, %idx.ext200.us
  %add.ptr202.us = getelementptr inbounds i8, ptr %add.ptr23.us, i64 %idx.neg201.us
  %55 = load i8, ptr %add.ptr202.us, align 1, !tbaa !24
  %conv203.us = zext i8 %55 to i32
  %add204.us = add nuw nsw i32 %add194.us, %conv203.us
  %cmp205.us = icmp samesign ult i32 %add204.us, %max_no
  br i1 %cmp205.us, label %if.then207.us, label %for.inc.us

if.then207.us:                                    ; preds = %if.then197.us
  %incdec.ptr198.us = getelementptr inbounds nuw i8, ptr %add.ptr187.us, i64 2
  %56 = load i8, ptr %incdec.ptr198.us, align 1, !tbaa !24
  %idx.ext210.us = zext i8 %56 to i64
  %idx.neg211.us = sub nsw i64 0, %idx.ext210.us
  %add.ptr212.us = getelementptr inbounds i8, ptr %add.ptr23.us, i64 %idx.neg211.us
  %57 = load i8, ptr %add.ptr212.us, align 1, !tbaa !24
  %conv213.us = zext i8 %57 to i32
  %add214.us = add nuw nsw i32 %add204.us, %conv213.us
  %cmp215.us = icmp samesign ult i32 %add214.us, %max_no
  br i1 %cmp215.us, label %if.then217.us, label %for.inc.us

if.then217.us:                                    ; preds = %if.then207.us
  %incdec.ptr208.us = getelementptr inbounds nuw i8, ptr %add.ptr187.us, i64 3
  %58 = load i8, ptr %incdec.ptr208.us, align 1, !tbaa !24
  %idx.ext220.us = zext i8 %58 to i64
  %idx.neg221.us = sub nsw i64 0, %idx.ext220.us
  %add.ptr222.us = getelementptr inbounds i8, ptr %add.ptr23.us, i64 %idx.neg221.us
  %59 = load i8, ptr %add.ptr222.us, align 1, !tbaa !24
  %conv223.us = zext i8 %59 to i32
  %add224.us = add nuw nsw i32 %add214.us, %conv223.us
  %cmp225.us = icmp samesign ult i32 %add224.us, %max_no
  br i1 %cmp225.us, label %if.then227.us, label %for.inc.us

if.then227.us:                                    ; preds = %if.then217.us
  %incdec.ptr218.us = getelementptr inbounds nuw i8, ptr %add.ptr187.us, i64 4
  %60 = load i8, ptr %incdec.ptr218.us, align 1, !tbaa !24
  %idx.ext230.us = zext i8 %60 to i64
  %idx.neg231.us = sub nsw i64 0, %idx.ext230.us
  %add.ptr232.us = getelementptr inbounds i8, ptr %add.ptr23.us, i64 %idx.neg231.us
  %61 = load i8, ptr %add.ptr232.us, align 1, !tbaa !24
  %conv233.us = zext i8 %61 to i32
  %add234.us = add nuw nsw i32 %add224.us, %conv233.us
  %cmp235.us = icmp samesign ult i32 %add234.us, %max_no
  br i1 %cmp235.us, label %if.then237.us, label %for.inc.us

if.then237.us:                                    ; preds = %if.then227.us
  %incdec.ptr228.us = getelementptr inbounds nuw i8, ptr %add.ptr187.us, i64 5
  %incdec.ptr238.us = getelementptr inbounds nuw i8, ptr %add.ptr187.us, i64 6
  %62 = load i8, ptr %incdec.ptr228.us, align 1, !tbaa !24
  %idx.ext240.us = zext i8 %62 to i64
  %idx.neg241.us = sub nsw i64 0, %idx.ext240.us
  %add.ptr242.us = getelementptr inbounds i8, ptr %add.ptr23.us, i64 %idx.neg241.us
  %63 = load i8, ptr %add.ptr242.us, align 1, !tbaa !24
  %conv243.us = zext i8 %63 to i32
  %add244.us = add nuw nsw i32 %add234.us, %conv243.us
  %cmp245.us = icmp samesign ult i32 %add244.us, %max_no
  br i1 %cmp245.us, label %if.then247.us, label %for.inc.us

if.then247.us:                                    ; preds = %if.then237.us
  %64 = load i8, ptr %incdec.ptr238.us, align 1, !tbaa !24
  %idx.ext249.us = zext i8 %64 to i64
  %idx.neg250.us = sub nsw i64 0, %idx.ext249.us
  %add.ptr251.us = getelementptr inbounds i8, ptr %add.ptr23.us, i64 %idx.neg250.us
  %65 = load i8, ptr %add.ptr251.us, align 1, !tbaa !24
  %conv252.us = zext i8 %65 to i32
  %add253.us = add nuw nsw i32 %add244.us, %conv252.us
  %cmp254.us = icmp samesign ult i32 %add253.us, %max_no
  br i1 %cmp254.us, label %if.then256.us, label %for.inc.us

if.then256.us:                                    ; preds = %if.then247.us
  %add.ptr259.us = getelementptr inbounds i8, ptr %incdec.ptr238.us, i64 %idx.ext80
  %66 = load i8, ptr %add.ptr259.us, align 1, !tbaa !24
  %idx.ext262.us = zext i8 %66 to i64
  %idx.neg263.us = sub nsw i64 0, %idx.ext262.us
  %add.ptr264.us = getelementptr inbounds i8, ptr %add.ptr23.us, i64 %idx.neg263.us
  %67 = load i8, ptr %add.ptr264.us, align 1, !tbaa !24
  %conv265.us = zext i8 %67 to i32
  %add266.us = add nuw nsw i32 %add253.us, %conv265.us
  %cmp267.us = icmp samesign ult i32 %add266.us, %max_no
  br i1 %cmp267.us, label %if.then269.us, label %for.inc.us

if.then269.us:                                    ; preds = %if.then256.us
  %incdec.ptr260.us = getelementptr inbounds nuw i8, ptr %add.ptr259.us, i64 1
  %68 = load i8, ptr %incdec.ptr260.us, align 1, !tbaa !24
  %idx.ext272.us = zext i8 %68 to i64
  %idx.neg273.us = sub nsw i64 0, %idx.ext272.us
  %add.ptr274.us = getelementptr inbounds i8, ptr %add.ptr23.us, i64 %idx.neg273.us
  %69 = load i8, ptr %add.ptr274.us, align 1, !tbaa !24
  %conv275.us = zext i8 %69 to i32
  %add276.us = add nuw nsw i32 %add266.us, %conv275.us
  %cmp277.us = icmp samesign ult i32 %add276.us, %max_no
  br i1 %cmp277.us, label %if.then279.us, label %for.inc.us

if.then279.us:                                    ; preds = %if.then269.us
  %incdec.ptr270.us = getelementptr inbounds nuw i8, ptr %add.ptr259.us, i64 2
  %70 = load i8, ptr %incdec.ptr270.us, align 1, !tbaa !24
  %idx.ext282.us = zext i8 %70 to i64
  %idx.neg283.us = sub nsw i64 0, %idx.ext282.us
  %add.ptr284.us = getelementptr inbounds i8, ptr %add.ptr23.us, i64 %idx.neg283.us
  %71 = load i8, ptr %add.ptr284.us, align 1, !tbaa !24
  %conv285.us = zext i8 %71 to i32
  %add286.us = add nuw nsw i32 %add276.us, %conv285.us
  %cmp287.us = icmp samesign ult i32 %add286.us, %max_no
  br i1 %cmp287.us, label %if.then289.us, label %for.inc.us

if.then289.us:                                    ; preds = %if.then279.us
  %incdec.ptr280.us = getelementptr inbounds nuw i8, ptr %add.ptr259.us, i64 3
  %incdec.ptr290.us = getelementptr inbounds nuw i8, ptr %add.ptr259.us, i64 4
  %72 = load i8, ptr %incdec.ptr280.us, align 1, !tbaa !24
  %idx.ext292.us = zext i8 %72 to i64
  %idx.neg293.us = sub nsw i64 0, %idx.ext292.us
  %add.ptr294.us = getelementptr inbounds i8, ptr %add.ptr23.us, i64 %idx.neg293.us
  %73 = load i8, ptr %add.ptr294.us, align 1, !tbaa !24
  %conv295.us = zext i8 %73 to i32
  %add296.us = add nuw nsw i32 %add286.us, %conv295.us
  %cmp297.us = icmp samesign ult i32 %add296.us, %max_no
  br i1 %cmp297.us, label %if.then299.us, label %for.inc.us

if.then299.us:                                    ; preds = %if.then289.us
  %74 = load i8, ptr %incdec.ptr290.us, align 1, !tbaa !24
  %idx.ext301.us = zext i8 %74 to i64
  %idx.neg302.us = sub nsw i64 0, %idx.ext301.us
  %add.ptr303.us = getelementptr inbounds i8, ptr %add.ptr23.us, i64 %idx.neg302.us
  %75 = load i8, ptr %add.ptr303.us, align 1, !tbaa !24
  %conv304.us = zext i8 %75 to i32
  %add305.us = add nuw nsw i32 %add296.us, %conv304.us
  %cmp306.us = icmp samesign ult i32 %add305.us, %max_no
  br i1 %cmp306.us, label %if.then308.us, label %for.inc.us

if.then308.us:                                    ; preds = %if.then299.us
  %add.ptr311.us = getelementptr inbounds i8, ptr %incdec.ptr290.us, i64 %idx.ext43
  %76 = load i8, ptr %add.ptr311.us, align 1, !tbaa !24
  %idx.ext314.us = zext i8 %76 to i64
  %idx.neg315.us = sub nsw i64 0, %idx.ext314.us
  %add.ptr316.us = getelementptr inbounds i8, ptr %add.ptr23.us, i64 %idx.neg315.us
  %77 = load i8, ptr %add.ptr316.us, align 1, !tbaa !24
  %conv317.us = zext i8 %77 to i32
  %add318.us = add nuw nsw i32 %add305.us, %conv317.us
  %cmp319.us = icmp samesign ult i32 %add318.us, %max_no
  br i1 %cmp319.us, label %if.then321.us, label %for.inc.us

if.then321.us:                                    ; preds = %if.then308.us
  %incdec.ptr312.us = getelementptr inbounds nuw i8, ptr %add.ptr311.us, i64 1
  %78 = load i8, ptr %incdec.ptr312.us, align 1, !tbaa !24
  %idx.ext324.us = zext i8 %78 to i64
  %idx.neg325.us = sub nsw i64 0, %idx.ext324.us
  %add.ptr326.us = getelementptr inbounds i8, ptr %add.ptr23.us, i64 %idx.neg325.us
  %79 = load i8, ptr %add.ptr326.us, align 1, !tbaa !24
  %conv327.us = zext i8 %79 to i32
  %add328.us = add nuw nsw i32 %add318.us, %conv327.us
  %cmp329.us = icmp samesign ult i32 %add328.us, %max_no
  br i1 %cmp329.us, label %if.then331.us, label %for.inc.us

if.then331.us:                                    ; preds = %if.then321.us
  %incdec.ptr322.us = getelementptr inbounds nuw i8, ptr %add.ptr311.us, i64 2
  %80 = load i8, ptr %incdec.ptr322.us, align 1, !tbaa !24
  %idx.ext333.us = zext i8 %80 to i64
  %idx.neg334.us = sub nsw i64 0, %idx.ext333.us
  %add.ptr335.us = getelementptr inbounds i8, ptr %add.ptr23.us, i64 %idx.neg334.us
  %81 = load i8, ptr %add.ptr335.us, align 1, !tbaa !24
  %conv336.us = zext i8 %81 to i32
  %add337.us = add nuw nsw i32 %add328.us, %conv336.us
  %cmp338.us = icmp samesign ult i32 %add337.us, %max_no
  br i1 %cmp338.us, label %if.then340.us, label %for.inc.us

if.then340.us:                                    ; preds = %if.then331.us
  %mul364.neg745.us = add nuw nsw i32 %conv34.us, %conv27.us
  %mul373.neg746.us = add nuw nsw i32 %mul364.neg745.us, %conv40.us
  %mul384747.us = add nuw nsw i32 %conv57.us, %conv50.us
  %82 = add nuw nsw i32 %mul384747.us, %conv64.us
  %83 = add nuw nsw i32 %82, %conv71.us
  %84 = add nuw nsw i32 %83, %conv77.us
  %mul618.us = shl nuw nsw i32 %conv265.us, 1
  %mul656.us = shl nuw nsw i32 %conv304.us, 1
  %85 = add nuw nsw i32 %conv87.us, %conv138.us
  %86 = add nuw nsw i32 %conv128.us, %conv180.us
  %87 = add nuw nsw i32 %85, %conv193.us
  %reass.add768.us = sub nsw i32 %86, %87
  %reass.add769.us = add nsw i32 %reass.add768.us, %conv252.us
  %reass.mul.us = mul nsw i32 %reass.add769.us, 3
  %88 = add nuw nsw i32 %conv50.us, %conv94.us
  %89 = add nuw nsw i32 %conv77.us, %conv122.us
  %90 = add nuw nsw i32 %88, %conv145.us
  %91 = add nuw nsw i32 %89, %conv171.us
  %92 = add nuw nsw i32 %90, %conv203.us
  %reass.add785.us = sub nsw i32 %91, %92
  %reass.add786.us = add nsw i32 %reass.add785.us, %conv243.us
  %reass.mul787.us = shl nsw i32 %reass.add786.us, 1
  %93 = add nuw nsw i32 %conv27.us, %conv57.us
  %94 = add nuw nsw i32 %conv40.us, %conv71.us
  %95 = add nuw nsw i32 %93, %conv101.us
  %96 = add nuw nsw i32 %94, %conv115.us
  %97 = add nuw nsw i32 %95, %conv151.us
  %98 = add nuw nsw i32 %96, %conv161.us
  %99 = add nuw nsw i32 %97, %conv213.us
  %sub552.us = sub nsw i32 %98, %99
  %sub571.us = add nsw i32 %sub552.us, %conv233.us
  %add587.us = add nsw i32 %sub571.us, %reass.mul787.us
  %add597.us = add nsw i32 %add587.us, %reass.mul.us
  %100 = add nuw nsw i32 %mul618.us, %conv275.us
  %sub629.us = sub nsw i32 %add597.us, %100
  %add647.us = add nsw i32 %sub629.us, %conv295.us
  %add657.us = add nsw i32 %add647.us, %mul656.us
  %sub670.us = sub nsw i32 %add657.us, %conv317.us
  %add687.us = add nsw i32 %sub670.us, %conv336.us
  %reass.add775.us = sub nsw i32 %conv317.us, %mul373.neg746.us
  %reass.add776.us = add nsw i32 %reass.add775.us, %conv327.us
  %reass.add777.us = add nsw i32 %reass.add776.us, %conv336.us
  %reass.mul778.us = mul nsw i32 %reass.add777.us, 3
  %101 = sub nsw i32 %conv275.us, %84
  %102 = add nsw i32 %101, %conv285.us
  %reass.add789.us = add nsw i32 %102, %conv295.us
  %reass.mul790.us = shl nsw i32 %reass.add789.us, 1
  %103 = add nuw nsw i32 %conv94.us, %conv87.us
  %104 = add nuw nsw i32 %103, %conv101.us
  %105 = add nuw nsw i32 %104, %conv108.us
  %106 = add nuw nsw i32 %105, %conv115.us
  %107 = add nuw nsw i32 %106, %conv122.us
  %108 = add nuw nsw i32 %107, %conv128.us
  %add573.us = sub nsw i32 %conv193.us, %108
  %add580.us = add nsw i32 %add573.us, %conv203.us
  %add589.us = add nsw i32 %add580.us, %conv213.us
  %add599.us = add nsw i32 %add589.us, %conv223.us
  %add608.us = add nsw i32 %add599.us, %conv233.us
  %add622.us = add nsw i32 %add608.us, %conv243.us
  %add650.us = add nsw i32 %add622.us, %conv252.us
  %add660.us = add nsw i32 %add650.us, %mul618.us
  %add673.us = add nsw i32 %add660.us, %reass.mul790.us
  %add681.us = add nsw i32 %add673.us, %mul656.us
  %add690.us = add nsw i32 %add681.us, %reass.mul778.us
  %mul691.us = mul nsw i32 %add687.us, %add687.us
  %mul692.us = mul nsw i32 %add690.us, %add690.us
  %add693.us = add nuw nsw i32 %mul692.us, %mul691.us
  %mul694.us = mul nuw nsw i32 %add337.us, %add337.us
  %div748.us = lshr i32 %mul694.us, 1
  %cmp695.us = icmp samesign ugt i32 %add693.us, %div748.us
  br i1 %cmp695.us, label %if.then697.us, label %for.inc.us

if.then697.us:                                    ; preds = %if.then340.us
  %cmp698.us = icmp samesign ult i32 %mul692.us, %mul691.us
  %109 = trunc nuw nsw i64 %indvars.iv to i32
  br i1 %cmp698.us, label %if.then700.us, label %if.else.us

if.else.us:                                       ; preds = %if.then697.us
  %conv780.us = sitofp i32 %add687.us to float
  %110 = tail call i32 @llvm.abs.i32(i32 %add690.us, i1 true)
  %conv781.us = uitofp nneg i32 %110 to float
  %div782.us = fdiv float %conv780.us, %conv781.us
  %div783.lhs.trunc.us = trunc nuw nsw i32 %110 to i16
  %div783.rhs.trunc.us = trunc nsw i32 %add690.us to i16
  %div783750.us = sdiv i16 %div783.lhs.trunc.us, %div783.rhs.trunc.us
  %div783.sext.us = sext i16 %div783750.us to i32
  %add784.us = add nsw i32 %6, %div783.sext.us
  %mul785.us = mul nsw i32 %add784.us, %x_size
  %cmp787.us = fcmp olt float %div782.us, 0.000000e+00
  %conv790.us = fpext float %div782.us to double
  %cond798.in.v.us = select i1 %cmp787.us, double -5.000000e-01, double 5.000000e-01
  %cond798.in.us = fadd double %cond798.in.v.us, %conv790.us
  %cond798.us = fptosi double %cond798.in.us to i32
  %add786.us = add i32 %109, %cond798.us
  %add799.us = add i32 %add786.us, %mul785.us
  %idxprom800.us = sext i32 %add799.us to i64
  %arrayidx801.us = getelementptr inbounds i8, ptr %in, i64 %idxprom800.us
  %111 = load i8, ptr %arrayidx801.us, align 1, !tbaa !24
  %idx.ext803.us = zext i8 %111 to i64
  %idx.neg804.us = sub nsw i64 0, %idx.ext803.us
  %add.ptr805.us = getelementptr inbounds i8, ptr %add.ptr23.us, i64 %idx.neg804.us
  %112 = load i8, ptr %add.ptr805.us, align 1, !tbaa !24
  %conv806.us = zext i8 %112 to i32
  %mul807.us = shl nsw i32 %div783.sext.us, 1
  %add808.us = add nsw i32 %mul807.us, %6
  %mul809.us = mul nsw i32 %add808.us, %x_size
  %mul811.us = fmul float %div782.us, 2.000000e+00
  %cmp812.us = fcmp olt float %mul811.us, 0.000000e+00
  %conv816.us = fpext float %mul811.us to double
  %cond825.in.v.us = select i1 %cmp812.us, double -5.000000e-01, double 5.000000e-01
  %cond825.in.us = fadd double %cond825.in.v.us, %conv816.us
  %cond825.us = fptosi double %cond825.in.us to i32
  %add810.us = add i32 %109, %cond825.us
  %add826.us = add i32 %add810.us, %mul809.us
  %idxprom827.us = sext i32 %add826.us to i64
  %arrayidx828.us = getelementptr inbounds i8, ptr %in, i64 %idxprom827.us
  %113 = load i8, ptr %arrayidx828.us, align 1, !tbaa !24
  %idx.ext830.us = zext i8 %113 to i64
  %idx.neg831.us = sub nsw i64 0, %idx.ext830.us
  %add.ptr832.us = getelementptr inbounds i8, ptr %add.ptr23.us, i64 %idx.neg831.us
  %114 = load i8, ptr %add.ptr832.us, align 1, !tbaa !24
  %conv833.us = zext i8 %114 to i32
  %add834.us = add nuw nsw i32 %conv833.us, %conv806.us
  %mul835.us = mul nsw i32 %div783.sext.us, 3
  %add836.us = add nsw i32 %mul835.us, %6
  %mul837.us = mul nsw i32 %add836.us, %x_size
  %mul839.us = fmul float %div782.us, 3.000000e+00
  %cmp840.us = fcmp olt float %mul839.us, 0.000000e+00
  %conv844.us = fpext float %mul839.us to double
  %cond853.in.v.us = select i1 %cmp840.us, double -5.000000e-01, double 5.000000e-01
  %cond853.in.us = fadd double %cond853.in.v.us, %conv844.us
  %cond853.us = fptosi double %cond853.in.us to i32
  %add838.us = add i32 %109, %cond853.us
  %add854.us = add i32 %add838.us, %mul837.us
  br label %if.end.us

if.then700.us:                                    ; preds = %if.then697.us
  %conv701.us = sitofp i32 %add690.us to float
  %115 = tail call i32 @llvm.abs.i32(i32 %add687.us, i1 true)
  %conv702.us = uitofp nneg i32 %115 to float
  %div703.us = fdiv float %conv701.us, %conv702.us
  %div704.lhs.trunc.us = trunc nuw nsw i32 %115 to i16
  %div704.rhs.trunc.us = trunc nsw i32 %add687.us to i16
  %div704749.us = sdiv i16 %div704.lhs.trunc.us, %div704.rhs.trunc.us
  %div704.sext.us = sext i16 %div704749.us to i32
  %cmp705.us = fcmp olt float %div703.us, 0.000000e+00
  %conv707.us = fpext float %div703.us to double
  %cond.in.v.us = select i1 %cmp705.us, double -5.000000e-01, double 5.000000e-01
  %cond.in.us = fadd double %cond.in.v.us, %conv707.us
  %cond.us = fptosi double %cond.in.us to i32
  %add713.us = add nsw i32 %7, %cond.us
  %mul714.us = mul nsw i32 %add713.us, %x_size
  %add715.us = add nsw i32 %mul714.us, %109
  %add716.us = add nsw i32 %add715.us, %div704.sext.us
  %idxprom717.us = sext i32 %add716.us to i64
  %arrayidx718.us = getelementptr inbounds i8, ptr %in, i64 %idxprom717.us
  %116 = load i8, ptr %arrayidx718.us, align 1, !tbaa !24
  %idx.ext720.us = zext i8 %116 to i64
  %idx.neg721.us = sub nsw i64 0, %idx.ext720.us
  %add.ptr722.us = getelementptr inbounds i8, ptr %add.ptr23.us, i64 %idx.neg721.us
  %117 = load i8, ptr %add.ptr722.us, align 1, !tbaa !24
  %conv723.us = zext i8 %117 to i32
  %mul724.us = fmul float %div703.us, 2.000000e+00
  %cmp725.us = fcmp olt float %mul724.us, 0.000000e+00
  %conv729.us = fpext float %mul724.us to double
  %cond738.in.v.us = select i1 %cmp725.us, double -5.000000e-01, double 5.000000e-01
  %cond738.in.us = fadd double %cond738.in.v.us, %conv729.us
  %cond738.us = fptosi double %cond738.in.us to i32
  %add739.us = add nsw i32 %7, %cond738.us
  %mul740.us = mul nsw i32 %add739.us, %x_size
  %add741.us = add nsw i32 %mul740.us, %109
  %mul742.us = shl nsw i32 %div704.sext.us, 1
  %add743.us = add nsw i32 %add741.us, %mul742.us
  %idxprom744.us = sext i32 %add743.us to i64
  %arrayidx745.us = getelementptr inbounds i8, ptr %in, i64 %idxprom744.us
  %118 = load i8, ptr %arrayidx745.us, align 1, !tbaa !24
  %idx.ext747.us = zext i8 %118 to i64
  %idx.neg748.us = sub nsw i64 0, %idx.ext747.us
  %add.ptr749.us = getelementptr inbounds i8, ptr %add.ptr23.us, i64 %idx.neg748.us
  %119 = load i8, ptr %add.ptr749.us, align 1, !tbaa !24
  %conv750.us = zext i8 %119 to i32
  %add751.us = add nuw nsw i32 %conv750.us, %conv723.us
  %mul752.us = fmul float %div703.us, 3.000000e+00
  %cmp753.us = fcmp olt float %mul752.us, 0.000000e+00
  %conv757.us = fpext float %mul752.us to double
  %cond766.in.v.us = select i1 %cmp753.us, double -5.000000e-01, double 5.000000e-01
  %cond766.in.us = fadd double %cond766.in.v.us, %conv757.us
  %cond766.us = fptosi double %cond766.in.us to i32
  %add767.us = add nsw i32 %7, %cond766.us
  %mul768.us = mul nsw i32 %add767.us, %x_size
  %add769.us = add nsw i32 %mul768.us, %109
  %mul770.us = mul nsw i32 %div704.sext.us, 3
  %add771.us = add nsw i32 %add769.us, %mul770.us
  br label %if.end.us

if.end.us:                                        ; preds = %if.then700.us, %if.else.us
  %add771.us.sink = phi i32 [ %add771.us, %if.then700.us ], [ %add854.us, %if.else.us ]
  %add751.us.sink = phi i32 [ %add751.us, %if.then700.us ], [ %add834.us, %if.else.us ]
  %idxprom772.us = sext i32 %add771.us.sink to i64
  %arrayidx773.us = getelementptr inbounds i8, ptr %in, i64 %idxprom772.us
  %120 = load i8, ptr %arrayidx773.us, align 1, !tbaa !24
  %idx.ext775.us = zext i8 %120 to i64
  %idx.neg776.us = sub nsw i64 0, %idx.ext775.us
  %add.ptr777.us = getelementptr inbounds i8, ptr %add.ptr23.us, i64 %idx.neg776.us
  %121 = load i8, ptr %add.ptr777.us, align 1, !tbaa !24
  %conv778.us = zext i8 %121 to i32
  %add779.us = add nuw nsw i32 %add751.us.sink, %conv778.us
  %cmp863.us = icmp samesign ugt i32 %add779.us, 290
  br i1 %cmp863.us, label %if.then865.us, label %for.inc.us

if.then865.us:                                    ; preds = %if.end.us
  %sub866.us = sub nsw i32 %max_no, %add337.us
  %arrayidx870.us = getelementptr inbounds nuw i32, ptr %r, i64 %8
  store i32 %sub866.us, ptr %arrayidx870.us, align 4, !tbaa !16
  %mul871.us = mul nsw i32 %add687.us, 51
  %div872.us = sdiv i32 %mul871.us, %add337.us
  %arrayidx876.us = getelementptr inbounds nuw i32, ptr %call, i64 %8
  store i32 %div872.us, ptr %arrayidx876.us, align 4, !tbaa !16
  %mul877.us = mul nsw i32 %add690.us, 51
  %div878.us = sdiv i32 %mul877.us, %add337.us
  %arrayidx882.us = getelementptr inbounds nuw i32, ptr %call8, i64 %8
  store i32 %div878.us, ptr %arrayidx882.us, align 4, !tbaa !16
  br label %for.inc.us

for.inc.us:                                       ; preds = %if.then865.us, %if.end.us, %if.then340.us, %if.then331.us, %if.then321.us, %if.then308.us, %if.then299.us, %if.then289.us, %if.then279.us, %if.then269.us, %if.then256.us, %if.then247.us, %if.then237.us, %if.then227.us, %if.then217.us, %if.then207.us, %if.then197.us, %if.then184.us, %if.then175.us, %if.then165.us, %if.then.us, %for.body14.us
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.cond10.for.inc904_crit_edge.us, label %for.body14.us, !llvm.loop !66

for.cond10.for.inc904_crit_edge.us:               ; preds = %for.inc.us
  %indvars.iv.next812 = add nuw nsw i64 %indvars.iv811, 1
  %exitcond818.not = icmp eq i64 %indvars.iv.next812, %wide.trip.count817
  br i1 %exitcond818.not, label %for.cond912.preheader.us.preheader, label %for.cond10.preheader.us, !llvm.loop !67

for.cond912.preheader.us.preheader:               ; preds = %for.cond10.for.inc904_crit_edge.us
  %sub913 = add nsw i32 %x_size, -5
  %122 = zext nneg i32 %x_size to i64
  %wide.trip.count846 = zext nneg i32 %sub to i64
  %wide.trip.count829 = zext i32 %sub913 to i64
  br label %for.cond912.preheader.us

for.cond912.preheader.us:                         ; preds = %for.cond912.preheader.us.preheader, %for.cond912.for.inc1381_crit_edge.us
  %indvars.iv831 = phi i64 [ 5, %for.cond912.preheader.us.preheader ], [ %indvars.iv.next832, %for.cond912.for.inc1381_crit_edge.us ]
  %n.0804.us = phi i32 [ 0, %for.cond912.preheader.us.preheader ], [ %n.2.us, %for.cond912.for.inc1381_crit_edge.us ]
  %123 = mul nuw nsw i64 %indvars.iv831, %122
  %124 = add nsw i64 %indvars.iv831, -3
  %125 = mul nsw i64 %124, %122
  %126 = add nsw i64 %indvars.iv831, -2
  %127 = mul nsw i64 %126, %122
  %128 = add nsw i64 %indvars.iv831, -1
  %129 = mul nsw i64 %128, %122
  %indvars.iv.next832 = add nuw nsw i64 %indvars.iv831, 1
  %130 = mul nuw nsw i64 %indvars.iv.next832, %122
  %131 = add nuw nsw i64 %indvars.iv831, 2
  %132 = mul nuw nsw i64 %131, %122
  %133 = add nuw nsw i64 %indvars.iv831, 3
  %134 = mul nuw nsw i64 %133, %122
  %invariant.gep = getelementptr i32, ptr %r, i64 %125
  %invariant.gep851 = getelementptr i32, ptr %r, i64 %127
  %invariant.gep853 = getelementptr i32, ptr %r, i64 %129
  %invariant.gep855 = getelementptr i32, ptr %r, i64 %130
  %invariant.gep857 = getelementptr i32, ptr %r, i64 %132
  %invariant.gep859 = getelementptr i32, ptr %r, i64 %134
  %135 = trunc nuw nsw i64 %indvars.iv831 to i32
  br label %for.body916.us

for.body916.us:                                   ; preds = %for.cond912.preheader.us, %for.inc1378.us
  %indvars.iv819 = phi i64 [ 5, %for.cond912.preheader.us ], [ %indvars.iv.next820, %for.inc1378.us ]
  %n.1800.us = phi i32 [ %n.0804.us, %for.cond912.preheader.us ], [ %n.2.us, %for.inc1378.us ]
  %136 = add nuw nsw i64 %indvars.iv819, %123
  %arrayidx920.us = getelementptr inbounds nuw i32, ptr %r, i64 %136
  %137 = load i32, ptr %arrayidx920.us, align 4, !tbaa !16
  %cmp921.us = icmp sgt i32 %137, 0
  br i1 %cmp921.us, label %if.then923.us, label %for.inc1378.us

if.then923.us:                                    ; preds = %for.body916.us
  %gep = getelementptr i32, ptr %invariant.gep, i64 %indvars.iv819
  %arrayidx929.us = getelementptr i8, ptr %gep, i64 -12
  %138 = load i32, ptr %arrayidx929.us, align 4, !tbaa !16
  %cmp930.us = icmp sgt i32 %137, %138
  br i1 %cmp930.us, label %land.lhs.true.us, label %for.inc1378.us

land.lhs.true.us:                                 ; preds = %if.then923.us
  %arrayidx937.us = getelementptr i8, ptr %gep, i64 -8
  %139 = load i32, ptr %arrayidx937.us, align 4, !tbaa !16
  %cmp938.us = icmp sgt i32 %137, %139
  br i1 %cmp938.us, label %land.lhs.true940.us, label %for.inc1378.us

land.lhs.true940.us:                              ; preds = %land.lhs.true.us
  %arrayidx946.us = getelementptr i8, ptr %gep, i64 -4
  %140 = load i32, ptr %arrayidx946.us, align 4, !tbaa !16
  %cmp947.us = icmp sgt i32 %137, %140
  br i1 %cmp947.us, label %land.lhs.true949.us, label %for.inc1378.us

land.lhs.true949.us:                              ; preds = %land.lhs.true940.us
  %141 = load i32, ptr %gep, align 4, !tbaa !16
  %cmp955.us = icmp sgt i32 %137, %141
  br i1 %cmp955.us, label %land.lhs.true957.us, label %for.inc1378.us

land.lhs.true957.us:                              ; preds = %land.lhs.true949.us
  %arrayidx963.us = getelementptr i8, ptr %gep, i64 4
  %142 = load i32, ptr %arrayidx963.us, align 4, !tbaa !16
  %cmp964.us = icmp sgt i32 %137, %142
  br i1 %cmp964.us, label %land.lhs.true966.us, label %for.inc1378.us

land.lhs.true966.us:                              ; preds = %land.lhs.true957.us
  %arrayidx972.us = getelementptr i8, ptr %gep, i64 8
  %143 = load i32, ptr %arrayidx972.us, align 4, !tbaa !16
  %cmp973.us = icmp sgt i32 %137, %143
  br i1 %cmp973.us, label %land.lhs.true975.us, label %for.inc1378.us

land.lhs.true975.us:                              ; preds = %land.lhs.true966.us
  %arrayidx981.us = getelementptr i8, ptr %gep, i64 12
  %144 = load i32, ptr %arrayidx981.us, align 4, !tbaa !16
  %cmp982.us = icmp sgt i32 %137, %144
  br i1 %cmp982.us, label %land.lhs.true984.us, label %for.inc1378.us

land.lhs.true984.us:                              ; preds = %land.lhs.true975.us
  %gep852 = getelementptr i32, ptr %invariant.gep851, i64 %indvars.iv819
  %arrayidx990.us = getelementptr i8, ptr %gep852, i64 -12
  %145 = load i32, ptr %arrayidx990.us, align 4, !tbaa !16
  %cmp991.us = icmp sgt i32 %137, %145
  br i1 %cmp991.us, label %land.lhs.true993.us, label %for.inc1378.us

land.lhs.true993.us:                              ; preds = %land.lhs.true984.us
  %arrayidx999.us = getelementptr i8, ptr %gep852, i64 -8
  %146 = load i32, ptr %arrayidx999.us, align 4, !tbaa !16
  %cmp1000.us = icmp sgt i32 %137, %146
  br i1 %cmp1000.us, label %land.lhs.true1002.us, label %for.inc1378.us

land.lhs.true1002.us:                             ; preds = %land.lhs.true993.us
  %arrayidx1008.us = getelementptr i8, ptr %gep852, i64 -4
  %147 = load i32, ptr %arrayidx1008.us, align 4, !tbaa !16
  %cmp1009.us = icmp sgt i32 %137, %147
  br i1 %cmp1009.us, label %land.lhs.true1011.us, label %for.inc1378.us

land.lhs.true1011.us:                             ; preds = %land.lhs.true1002.us
  %148 = load i32, ptr %gep852, align 4, !tbaa !16
  %cmp1017.us = icmp sgt i32 %137, %148
  br i1 %cmp1017.us, label %land.lhs.true1019.us, label %for.inc1378.us

land.lhs.true1019.us:                             ; preds = %land.lhs.true1011.us
  %arrayidx1025.us = getelementptr i8, ptr %gep852, i64 4
  %149 = load i32, ptr %arrayidx1025.us, align 4, !tbaa !16
  %cmp1026.us = icmp sgt i32 %137, %149
  br i1 %cmp1026.us, label %land.lhs.true1028.us, label %for.inc1378.us

land.lhs.true1028.us:                             ; preds = %land.lhs.true1019.us
  %arrayidx1034.us = getelementptr i8, ptr %gep852, i64 8
  %150 = load i32, ptr %arrayidx1034.us, align 4, !tbaa !16
  %cmp1035.us = icmp sgt i32 %137, %150
  br i1 %cmp1035.us, label %land.lhs.true1037.us, label %for.inc1378.us

land.lhs.true1037.us:                             ; preds = %land.lhs.true1028.us
  %arrayidx1043.us = getelementptr i8, ptr %gep852, i64 12
  %151 = load i32, ptr %arrayidx1043.us, align 4, !tbaa !16
  %cmp1044.us = icmp sgt i32 %137, %151
  br i1 %cmp1044.us, label %land.lhs.true1046.us, label %for.inc1378.us

land.lhs.true1046.us:                             ; preds = %land.lhs.true1037.us
  %gep854 = getelementptr i32, ptr %invariant.gep853, i64 %indvars.iv819
  %arrayidx1052.us = getelementptr i8, ptr %gep854, i64 -12
  %152 = load i32, ptr %arrayidx1052.us, align 4, !tbaa !16
  %cmp1053.us = icmp sgt i32 %137, %152
  br i1 %cmp1053.us, label %land.lhs.true1055.us, label %for.inc1378.us

land.lhs.true1055.us:                             ; preds = %land.lhs.true1046.us
  %arrayidx1061.us = getelementptr i8, ptr %gep854, i64 -8
  %153 = load i32, ptr %arrayidx1061.us, align 4, !tbaa !16
  %cmp1062.us = icmp sgt i32 %137, %153
  br i1 %cmp1062.us, label %land.lhs.true1064.us, label %for.inc1378.us

land.lhs.true1064.us:                             ; preds = %land.lhs.true1055.us
  %arrayidx1070.us = getelementptr i8, ptr %gep854, i64 -4
  %154 = load i32, ptr %arrayidx1070.us, align 4, !tbaa !16
  %cmp1071.us = icmp sgt i32 %137, %154
  br i1 %cmp1071.us, label %land.lhs.true1073.us, label %for.inc1378.us

land.lhs.true1073.us:                             ; preds = %land.lhs.true1064.us
  %155 = load i32, ptr %gep854, align 4, !tbaa !16
  %cmp1079.us = icmp sgt i32 %137, %155
  br i1 %cmp1079.us, label %land.lhs.true1081.us, label %for.inc1378.us

land.lhs.true1081.us:                             ; preds = %land.lhs.true1073.us
  %arrayidx1087.us = getelementptr i8, ptr %gep854, i64 4
  %156 = load i32, ptr %arrayidx1087.us, align 4, !tbaa !16
  %cmp1088.us = icmp sgt i32 %137, %156
  br i1 %cmp1088.us, label %land.lhs.true1090.us, label %for.inc1378.us

land.lhs.true1090.us:                             ; preds = %land.lhs.true1081.us
  %arrayidx1096.us = getelementptr i8, ptr %gep854, i64 8
  %157 = load i32, ptr %arrayidx1096.us, align 4, !tbaa !16
  %cmp1097.us = icmp sgt i32 %137, %157
  br i1 %cmp1097.us, label %land.lhs.true1099.us, label %for.inc1378.us

land.lhs.true1099.us:                             ; preds = %land.lhs.true1090.us
  %arrayidx1105.us = getelementptr i8, ptr %gep854, i64 12
  %158 = load i32, ptr %arrayidx1105.us, align 4, !tbaa !16
  %cmp1106.us = icmp sgt i32 %137, %158
  br i1 %cmp1106.us, label %land.lhs.true1108.us, label %for.inc1378.us

land.lhs.true1108.us:                             ; preds = %land.lhs.true1099.us
  %arrayidx1113.us = getelementptr i8, ptr %arrayidx920.us, i64 -12
  %159 = load i32, ptr %arrayidx1113.us, align 4, !tbaa !16
  %cmp1114.us = icmp sgt i32 %137, %159
  br i1 %cmp1114.us, label %land.lhs.true1116.us, label %for.inc1378.us

land.lhs.true1116.us:                             ; preds = %land.lhs.true1108.us
  %arrayidx1121.us = getelementptr i8, ptr %arrayidx920.us, i64 -8
  %160 = load i32, ptr %arrayidx1121.us, align 4, !tbaa !16
  %cmp1122.us = icmp sgt i32 %137, %160
  br i1 %cmp1122.us, label %land.lhs.true1124.us, label %for.inc1378.us

land.lhs.true1124.us:                             ; preds = %land.lhs.true1116.us
  %arrayidx1129.us = getelementptr i8, ptr %arrayidx920.us, i64 -4
  %161 = load i32, ptr %arrayidx1129.us, align 4, !tbaa !16
  %cmp1130.us = icmp sgt i32 %137, %161
  br i1 %cmp1130.us, label %land.lhs.true1132.us, label %for.inc1378.us

land.lhs.true1132.us:                             ; preds = %land.lhs.true1124.us
  %arrayidx1137.us = getelementptr i8, ptr %arrayidx920.us, i64 4
  %162 = load i32, ptr %arrayidx1137.us, align 4, !tbaa !16
  %cmp1138.not.us = icmp slt i32 %137, %162
  br i1 %cmp1138.not.us, label %for.inc1378.us, label %land.lhs.true1140.us

land.lhs.true1140.us:                             ; preds = %land.lhs.true1132.us
  %arrayidx1145.us = getelementptr i8, ptr %arrayidx920.us, i64 8
  %163 = load i32, ptr %arrayidx1145.us, align 4, !tbaa !16
  %cmp1146.not.us = icmp slt i32 %137, %163
  br i1 %cmp1146.not.us, label %for.inc1378.us, label %land.lhs.true1148.us

land.lhs.true1148.us:                             ; preds = %land.lhs.true1140.us
  %arrayidx1153.us = getelementptr i8, ptr %arrayidx920.us, i64 12
  %164 = load i32, ptr %arrayidx1153.us, align 4, !tbaa !16
  %cmp1154.not.us = icmp slt i32 %137, %164
  br i1 %cmp1154.not.us, label %for.inc1378.us, label %land.lhs.true1156.us

land.lhs.true1156.us:                             ; preds = %land.lhs.true1148.us
  %gep856 = getelementptr i32, ptr %invariant.gep855, i64 %indvars.iv819
  %arrayidx1162.us = getelementptr i8, ptr %gep856, i64 -12
  %165 = load i32, ptr %arrayidx1162.us, align 4, !tbaa !16
  %cmp1163.not.us = icmp slt i32 %137, %165
  br i1 %cmp1163.not.us, label %for.inc1378.us, label %land.lhs.true1165.us

land.lhs.true1165.us:                             ; preds = %land.lhs.true1156.us
  %arrayidx1171.us = getelementptr i8, ptr %gep856, i64 -8
  %166 = load i32, ptr %arrayidx1171.us, align 4, !tbaa !16
  %cmp1172.not.us = icmp slt i32 %137, %166
  br i1 %cmp1172.not.us, label %for.inc1378.us, label %land.lhs.true1174.us

land.lhs.true1174.us:                             ; preds = %land.lhs.true1165.us
  %arrayidx1180.us = getelementptr i8, ptr %gep856, i64 -4
  %167 = load i32, ptr %arrayidx1180.us, align 4, !tbaa !16
  %cmp1181.not.us = icmp slt i32 %137, %167
  br i1 %cmp1181.not.us, label %for.inc1378.us, label %land.lhs.true1183.us

land.lhs.true1183.us:                             ; preds = %land.lhs.true1174.us
  %168 = load i32, ptr %gep856, align 4, !tbaa !16
  %cmp1189.not.us = icmp slt i32 %137, %168
  br i1 %cmp1189.not.us, label %for.inc1378.us, label %land.lhs.true1191.us

land.lhs.true1191.us:                             ; preds = %land.lhs.true1183.us
  %arrayidx1197.us = getelementptr i8, ptr %gep856, i64 4
  %169 = load i32, ptr %arrayidx1197.us, align 4, !tbaa !16
  %cmp1198.not.us = icmp slt i32 %137, %169
  br i1 %cmp1198.not.us, label %for.inc1378.us, label %land.lhs.true1200.us

land.lhs.true1200.us:                             ; preds = %land.lhs.true1191.us
  %arrayidx1206.us = getelementptr i8, ptr %gep856, i64 8
  %170 = load i32, ptr %arrayidx1206.us, align 4, !tbaa !16
  %cmp1207.not.us = icmp slt i32 %137, %170
  br i1 %cmp1207.not.us, label %for.inc1378.us, label %land.lhs.true1209.us

land.lhs.true1209.us:                             ; preds = %land.lhs.true1200.us
  %arrayidx1215.us = getelementptr i8, ptr %gep856, i64 12
  %171 = load i32, ptr %arrayidx1215.us, align 4, !tbaa !16
  %cmp1216.not.us = icmp slt i32 %137, %171
  br i1 %cmp1216.not.us, label %for.inc1378.us, label %land.lhs.true1218.us

land.lhs.true1218.us:                             ; preds = %land.lhs.true1209.us
  %gep858 = getelementptr i32, ptr %invariant.gep857, i64 %indvars.iv819
  %arrayidx1224.us = getelementptr i8, ptr %gep858, i64 -12
  %172 = load i32, ptr %arrayidx1224.us, align 4, !tbaa !16
  %cmp1225.not.us = icmp slt i32 %137, %172
  br i1 %cmp1225.not.us, label %for.inc1378.us, label %land.lhs.true1227.us

land.lhs.true1227.us:                             ; preds = %land.lhs.true1218.us
  %arrayidx1233.us = getelementptr i8, ptr %gep858, i64 -8
  %173 = load i32, ptr %arrayidx1233.us, align 4, !tbaa !16
  %cmp1234.not.us = icmp slt i32 %137, %173
  br i1 %cmp1234.not.us, label %for.inc1378.us, label %land.lhs.true1236.us

land.lhs.true1236.us:                             ; preds = %land.lhs.true1227.us
  %arrayidx1242.us = getelementptr i8, ptr %gep858, i64 -4
  %174 = load i32, ptr %arrayidx1242.us, align 4, !tbaa !16
  %cmp1243.not.us = icmp slt i32 %137, %174
  br i1 %cmp1243.not.us, label %for.inc1378.us, label %land.lhs.true1245.us

land.lhs.true1245.us:                             ; preds = %land.lhs.true1236.us
  %175 = load i32, ptr %gep858, align 4, !tbaa !16
  %cmp1251.not.us = icmp slt i32 %137, %175
  br i1 %cmp1251.not.us, label %for.inc1378.us, label %land.lhs.true1253.us

land.lhs.true1253.us:                             ; preds = %land.lhs.true1245.us
  %arrayidx1259.us = getelementptr i8, ptr %gep858, i64 4
  %176 = load i32, ptr %arrayidx1259.us, align 4, !tbaa !16
  %cmp1260.not.us = icmp slt i32 %137, %176
  br i1 %cmp1260.not.us, label %for.inc1378.us, label %land.lhs.true1262.us

land.lhs.true1262.us:                             ; preds = %land.lhs.true1253.us
  %arrayidx1268.us = getelementptr i8, ptr %gep858, i64 8
  %177 = load i32, ptr %arrayidx1268.us, align 4, !tbaa !16
  %cmp1269.not.us = icmp slt i32 %137, %177
  br i1 %cmp1269.not.us, label %for.inc1378.us, label %land.lhs.true1271.us

land.lhs.true1271.us:                             ; preds = %land.lhs.true1262.us
  %arrayidx1277.us = getelementptr i8, ptr %gep858, i64 12
  %178 = load i32, ptr %arrayidx1277.us, align 4, !tbaa !16
  %cmp1278.not.us = icmp slt i32 %137, %178
  br i1 %cmp1278.not.us, label %for.inc1378.us, label %land.lhs.true1280.us

land.lhs.true1280.us:                             ; preds = %land.lhs.true1271.us
  %gep860 = getelementptr i32, ptr %invariant.gep859, i64 %indvars.iv819
  %arrayidx1286.us = getelementptr i8, ptr %gep860, i64 -12
  %179 = load i32, ptr %arrayidx1286.us, align 4, !tbaa !16
  %cmp1287.not.us = icmp slt i32 %137, %179
  br i1 %cmp1287.not.us, label %for.inc1378.us, label %land.lhs.true1289.us

land.lhs.true1289.us:                             ; preds = %land.lhs.true1280.us
  %arrayidx1295.us = getelementptr i8, ptr %gep860, i64 -8
  %180 = load i32, ptr %arrayidx1295.us, align 4, !tbaa !16
  %cmp1296.not.us = icmp slt i32 %137, %180
  br i1 %cmp1296.not.us, label %for.inc1378.us, label %land.lhs.true1298.us

land.lhs.true1298.us:                             ; preds = %land.lhs.true1289.us
  %arrayidx1304.us = getelementptr i8, ptr %gep860, i64 -4
  %181 = load i32, ptr %arrayidx1304.us, align 4, !tbaa !16
  %cmp1305.not.us = icmp slt i32 %137, %181
  br i1 %cmp1305.not.us, label %for.inc1378.us, label %land.lhs.true1307.us

land.lhs.true1307.us:                             ; preds = %land.lhs.true1298.us
  %182 = load i32, ptr %gep860, align 4, !tbaa !16
  %cmp1313.not.us = icmp slt i32 %137, %182
  br i1 %cmp1313.not.us, label %for.inc1378.us, label %land.lhs.true1315.us

land.lhs.true1315.us:                             ; preds = %land.lhs.true1307.us
  %arrayidx1321.us = getelementptr i8, ptr %gep860, i64 4
  %183 = load i32, ptr %arrayidx1321.us, align 4, !tbaa !16
  %cmp1322.not.us = icmp slt i32 %137, %183
  br i1 %cmp1322.not.us, label %for.inc1378.us, label %land.lhs.true1324.us

land.lhs.true1324.us:                             ; preds = %land.lhs.true1315.us
  %arrayidx1330.us = getelementptr i8, ptr %gep860, i64 8
  %184 = load i32, ptr %arrayidx1330.us, align 4, !tbaa !16
  %cmp1331.not.us = icmp slt i32 %137, %184
  br i1 %cmp1331.not.us, label %for.inc1378.us, label %land.lhs.true1333.us

land.lhs.true1333.us:                             ; preds = %land.lhs.true1324.us
  %arrayidx1339.us = getelementptr i8, ptr %gep860, i64 12
  %185 = load i32, ptr %arrayidx1339.us, align 4, !tbaa !16
  %cmp1340.not.us = icmp slt i32 %137, %185
  br i1 %cmp1340.not.us, label %for.inc1378.us, label %if.then1342.us

if.then1342.us:                                   ; preds = %land.lhs.true1333.us
  %idxprom1343.us = sext i32 %n.1800.us to i64
  %arrayidx1344.us = getelementptr inbounds %struct.anon, ptr %corner_list, i64 %idxprom1343.us
  %info.us = getelementptr inbounds nuw i8, ptr %arrayidx1344.us, i64 8
  store i32 0, ptr %info.us, align 4, !tbaa !61
  %186 = trunc nuw nsw i64 %indvars.iv819 to i32
  store i32 %186, ptr %arrayidx1344.us, align 4, !tbaa !64
  %y1350.us = getelementptr inbounds nuw i8, ptr %arrayidx1344.us, i64 4
  store i32 %135, ptr %y1350.us, align 4, !tbaa !63
  %arrayidx1354.us = getelementptr inbounds nuw i32, ptr %call, i64 %136
  %187 = load i32, ptr %arrayidx1354.us, align 4, !tbaa !16
  %dx.us = getelementptr inbounds nuw i8, ptr %arrayidx1344.us, i64 12
  store i32 %187, ptr %dx.us, align 4, !tbaa !68
  %arrayidx1360.us = getelementptr inbounds nuw i32, ptr %call8, i64 %136
  %188 = load i32, ptr %arrayidx1360.us, align 4, !tbaa !16
  %dy.us = getelementptr inbounds nuw i8, ptr %arrayidx1344.us, i64 16
  store i32 %188, ptr %dy.us, align 4, !tbaa !69
  %arrayidx1366.us = getelementptr inbounds nuw i8, ptr %in, i64 %136
  %189 = load i8, ptr %arrayidx1366.us, align 1, !tbaa !24
  %conv1367.us = zext i8 %189 to i32
  %I.us = getelementptr inbounds nuw i8, ptr %arrayidx1344.us, i64 20
  store i32 %conv1367.us, ptr %I.us, align 4, !tbaa !70
  %inc1370.us = add nsw i32 %n.1800.us, 1
  %cmp1371.us = icmp eq i32 %inc1370.us, 15000
  br i1 %cmp1371.us, label %if.then1373, label %for.inc1378.us

for.inc1378.us:                                   ; preds = %if.then1342.us, %land.lhs.true1333.us, %land.lhs.true1324.us, %land.lhs.true1315.us, %land.lhs.true1307.us, %land.lhs.true1298.us, %land.lhs.true1289.us, %land.lhs.true1280.us, %land.lhs.true1271.us, %land.lhs.true1262.us, %land.lhs.true1253.us, %land.lhs.true1245.us, %land.lhs.true1236.us, %land.lhs.true1227.us, %land.lhs.true1218.us, %land.lhs.true1209.us, %land.lhs.true1200.us, %land.lhs.true1191.us, %land.lhs.true1183.us, %land.lhs.true1174.us, %land.lhs.true1165.us, %land.lhs.true1156.us, %land.lhs.true1148.us, %land.lhs.true1140.us, %land.lhs.true1132.us, %land.lhs.true1124.us, %land.lhs.true1116.us, %land.lhs.true1108.us, %land.lhs.true1099.us, %land.lhs.true1090.us, %land.lhs.true1081.us, %land.lhs.true1073.us, %land.lhs.true1064.us, %land.lhs.true1055.us, %land.lhs.true1046.us, %land.lhs.true1037.us, %land.lhs.true1028.us, %land.lhs.true1019.us, %land.lhs.true1011.us, %land.lhs.true1002.us, %land.lhs.true993.us, %land.lhs.true984.us, %land.lhs.true975.us, %land.lhs.true966.us, %land.lhs.true957.us, %land.lhs.true949.us, %land.lhs.true940.us, %land.lhs.true.us, %if.then923.us, %for.body916.us
  %n.2.us = phi i32 [ %inc1370.us, %if.then1342.us ], [ %n.1800.us, %land.lhs.true1333.us ], [ %n.1800.us, %land.lhs.true1324.us ], [ %n.1800.us, %land.lhs.true1315.us ], [ %n.1800.us, %land.lhs.true1307.us ], [ %n.1800.us, %land.lhs.true1298.us ], [ %n.1800.us, %land.lhs.true1289.us ], [ %n.1800.us, %land.lhs.true1280.us ], [ %n.1800.us, %land.lhs.true1271.us ], [ %n.1800.us, %land.lhs.true1262.us ], [ %n.1800.us, %land.lhs.true1253.us ], [ %n.1800.us, %land.lhs.true1245.us ], [ %n.1800.us, %land.lhs.true1236.us ], [ %n.1800.us, %land.lhs.true1227.us ], [ %n.1800.us, %land.lhs.true1218.us ], [ %n.1800.us, %land.lhs.true1209.us ], [ %n.1800.us, %land.lhs.true1200.us ], [ %n.1800.us, %land.lhs.true1191.us ], [ %n.1800.us, %land.lhs.true1183.us ], [ %n.1800.us, %land.lhs.true1174.us ], [ %n.1800.us, %land.lhs.true1165.us ], [ %n.1800.us, %land.lhs.true1156.us ], [ %n.1800.us, %land.lhs.true1148.us ], [ %n.1800.us, %land.lhs.true1140.us ], [ %n.1800.us, %land.lhs.true1132.us ], [ %n.1800.us, %land.lhs.true1124.us ], [ %n.1800.us, %land.lhs.true1116.us ], [ %n.1800.us, %land.lhs.true1108.us ], [ %n.1800.us, %land.lhs.true1099.us ], [ %n.1800.us, %land.lhs.true1090.us ], [ %n.1800.us, %land.lhs.true1081.us ], [ %n.1800.us, %land.lhs.true1073.us ], [ %n.1800.us, %land.lhs.true1064.us ], [ %n.1800.us, %land.lhs.true1055.us ], [ %n.1800.us, %land.lhs.true1046.us ], [ %n.1800.us, %land.lhs.true1037.us ], [ %n.1800.us, %land.lhs.true1028.us ], [ %n.1800.us, %land.lhs.true1019.us ], [ %n.1800.us, %land.lhs.true1011.us ], [ %n.1800.us, %land.lhs.true1002.us ], [ %n.1800.us, %land.lhs.true993.us ], [ %n.1800.us, %land.lhs.true984.us ], [ %n.1800.us, %land.lhs.true975.us ], [ %n.1800.us, %land.lhs.true966.us ], [ %n.1800.us, %land.lhs.true957.us ], [ %n.1800.us, %land.lhs.true949.us ], [ %n.1800.us, %land.lhs.true940.us ], [ %n.1800.us, %land.lhs.true.us ], [ %n.1800.us, %if.then923.us ], [ %n.1800.us, %for.body916.us ]
  %indvars.iv.next820 = add nuw nsw i64 %indvars.iv819, 1
  %exitcond830.not = icmp eq i64 %indvars.iv.next820, %wide.trip.count829
  br i1 %exitcond830.not, label %for.cond912.for.inc1381_crit_edge.us, label %for.body916.us, !llvm.loop !71

for.cond912.for.inc1381_crit_edge.us:             ; preds = %for.inc1378.us
  %exitcond847.not = icmp eq i64 %indvars.iv.next832, %wide.trip.count846
  br i1 %exitcond847.not, label %for.end1383.loopexit, label %for.cond912.preheader.us, !llvm.loop !72

if.then1373:                                      ; preds = %if.then1342.us
  %190 = load ptr, ptr @stderr, align 8, !tbaa !5
  %191 = tail call i64 @fwrite(ptr nonnull @.str.29, i64 18, i64 1, ptr %190) #23
  tail call void @exit(i32 noundef 1) #27
  unreachable

for.end1383.loopexit:                             ; preds = %for.cond912.for.inc1381_crit_edge.us
  %192 = sext i32 %n.2.us to i64
  br label %for.end1383

for.end1383:                                      ; preds = %for.cond10.preheader.lr.ph, %entry, %for.end1383.loopexit
  %n.0.lcssa = phi i64 [ %192, %for.end1383.loopexit ], [ 0, %entry ], [ 0, %for.cond10.preheader.lr.ph ]
  %info1386 = getelementptr inbounds %struct.anon, ptr %corner_list, i64 %n.0.lcssa, i32 2
  store i32 7, ptr %info1386, align 4, !tbaa !61
  tail call void @free(ptr noundef %call) #22
  tail call void @free(ptr noundef %call8) #22
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #18

; Function Attrs: nofree nounwind uwtable
define dso_local void @susan_corners_quick(ptr noundef readonly %in, ptr noundef %r, ptr noundef readonly captures(none) %bp, i32 noundef %max_no, ptr noundef writeonly captures(none) %corner_list, i32 noundef %x_size, i32 noundef %y_size) local_unnamed_addr #6 {
entry:
  %mul = mul nsw i32 %y_size, %x_size
  %conv = sext i32 %mul to i64
  %mul1 = shl nsw i64 %conv, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %r, i8 0, i64 %mul1, i1 false)
  %sub = add i32 %y_size, -7
  %cmp714 = icmp sgt i32 %y_size, 14
  br i1 %cmp714, label %for.cond3.preheader.lr.ph, label %for.end1325

for.cond3.preheader.lr.ph:                        ; preds = %entry
  %cmp5712 = icmp sgt i32 %x_size, 14
  %sub35 = add nsw i32 %x_size, -3
  %idx.ext36 = sext i32 %sub35 to i64
  %sub72 = add nsw i32 %x_size, -5
  %idx.ext73 = sext i32 %sub72 to i64
  %sub123 = add nsw i32 %x_size, -6
  %idx.ext124 = sext i32 %sub123 to i64
  br i1 %cmp5712, label %for.cond3.preheader.us.preheader, label %for.end1325

for.cond3.preheader.us.preheader:                 ; preds = %for.cond3.preheader.lr.ph
  %sub4 = add nsw i32 %x_size, -7
  %0 = zext nneg i32 %x_size to i64
  %wide.trip.count735 = zext nneg i32 %sub to i64
  %wide.trip.count = zext i32 %sub4 to i64
  br label %for.cond3.preheader.us

for.cond3.preheader.us:                           ; preds = %for.cond3.preheader.us.preheader, %for.cond3.for.inc357_crit_edge.us
  %indvars.iv729 = phi i64 [ 7, %for.cond3.preheader.us.preheader ], [ %indvars.iv.next730, %for.cond3.for.inc357_crit_edge.us ]
  %1 = add nsw i64 %indvars.iv729, -3
  %2 = mul nsw i64 %1, %0
  %add.ptr.us = getelementptr inbounds i8, ptr %in, i64 %2
  %3 = trunc i64 %indvars.iv729 to i32
  %4 = mul i32 %x_size, %3
  %5 = zext i32 %4 to i64
  br label %for.body7.us

for.body7.us:                                     ; preds = %for.cond3.preheader.us, %for.inc.us
  %indvars.iv = phi i64 [ 7, %for.cond3.preheader.us ], [ %indvars.iv.next, %for.inc.us ]
  %add.ptr11.us = getelementptr inbounds nuw i8, ptr %add.ptr.us, i64 %indvars.iv
  %add.ptr12.us = getelementptr inbounds i8, ptr %add.ptr11.us, i64 -1
  %6 = add nuw nsw i64 %indvars.iv, %5
  %arrayidx.us = getelementptr inbounds nuw i8, ptr %in, i64 %6
  %7 = load i8, ptr %arrayidx.us, align 1, !tbaa !24
  %idx.ext15.us = zext i8 %7 to i64
  %add.ptr16.us = getelementptr inbounds nuw i8, ptr %bp, i64 %idx.ext15.us
  %8 = load i8, ptr %add.ptr12.us, align 1, !tbaa !24
  %idx.ext18.us = zext i8 %8 to i64
  %idx.neg.us = sub nsw i64 0, %idx.ext18.us
  %add.ptr19.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg.us
  %9 = load i8, ptr %add.ptr19.us, align 1, !tbaa !24
  %conv20.us = zext i8 %9 to i32
  %add21.us = add nuw nsw i32 %conv20.us, 100
  %incdec.ptr22.us = getelementptr inbounds nuw i8, ptr %add.ptr11.us, i64 1
  %10 = load i8, ptr %add.ptr11.us, align 1, !tbaa !24
  %idx.ext24.us = zext i8 %10 to i64
  %idx.neg25.us = sub nsw i64 0, %idx.ext24.us
  %add.ptr26.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg25.us
  %11 = load i8, ptr %add.ptr26.us, align 1, !tbaa !24
  %conv27.us = zext i8 %11 to i32
  %add28.us = add nuw nsw i32 %add21.us, %conv27.us
  %12 = load i8, ptr %incdec.ptr22.us, align 1, !tbaa !24
  %idx.ext30.us = zext i8 %12 to i64
  %idx.neg31.us = sub nsw i64 0, %idx.ext30.us
  %add.ptr32.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg31.us
  %13 = load i8, ptr %add.ptr32.us, align 1, !tbaa !24
  %conv33.us = zext i8 %13 to i32
  %add34.us = add nuw nsw i32 %add28.us, %conv33.us
  %add.ptr37.us = getelementptr inbounds i8, ptr %incdec.ptr22.us, i64 %idx.ext36
  %incdec.ptr38.us = getelementptr inbounds nuw i8, ptr %add.ptr37.us, i64 1
  %14 = load i8, ptr %add.ptr37.us, align 1, !tbaa !24
  %idx.ext40.us = zext i8 %14 to i64
  %idx.neg41.us = sub nsw i64 0, %idx.ext40.us
  %add.ptr42.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg41.us
  %15 = load i8, ptr %add.ptr42.us, align 1, !tbaa !24
  %conv43.us = zext i8 %15 to i32
  %add44.us = add nuw nsw i32 %add34.us, %conv43.us
  %incdec.ptr45.us = getelementptr inbounds nuw i8, ptr %add.ptr37.us, i64 2
  %16 = load i8, ptr %incdec.ptr38.us, align 1, !tbaa !24
  %idx.ext47.us = zext i8 %16 to i64
  %idx.neg48.us = sub nsw i64 0, %idx.ext47.us
  %add.ptr49.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg48.us
  %17 = load i8, ptr %add.ptr49.us, align 1, !tbaa !24
  %conv50.us = zext i8 %17 to i32
  %add51.us = add nuw nsw i32 %add44.us, %conv50.us
  %incdec.ptr52.us = getelementptr inbounds nuw i8, ptr %add.ptr37.us, i64 3
  %18 = load i8, ptr %incdec.ptr45.us, align 1, !tbaa !24
  %idx.ext54.us = zext i8 %18 to i64
  %idx.neg55.us = sub nsw i64 0, %idx.ext54.us
  %add.ptr56.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg55.us
  %19 = load i8, ptr %add.ptr56.us, align 1, !tbaa !24
  %conv57.us = zext i8 %19 to i32
  %add58.us = add nuw nsw i32 %add51.us, %conv57.us
  %incdec.ptr59.us = getelementptr inbounds nuw i8, ptr %add.ptr37.us, i64 4
  %20 = load i8, ptr %incdec.ptr52.us, align 1, !tbaa !24
  %idx.ext61.us = zext i8 %20 to i64
  %idx.neg62.us = sub nsw i64 0, %idx.ext61.us
  %add.ptr63.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg62.us
  %21 = load i8, ptr %add.ptr63.us, align 1, !tbaa !24
  %conv64.us = zext i8 %21 to i32
  %add65.us = add nuw nsw i32 %add58.us, %conv64.us
  %22 = load i8, ptr %incdec.ptr59.us, align 1, !tbaa !24
  %idx.ext67.us = zext i8 %22 to i64
  %idx.neg68.us = sub nsw i64 0, %idx.ext67.us
  %add.ptr69.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg68.us
  %23 = load i8, ptr %add.ptr69.us, align 1, !tbaa !24
  %conv70.us = zext i8 %23 to i32
  %add71.us = add nuw nsw i32 %add65.us, %conv70.us
  %add.ptr74.us = getelementptr inbounds i8, ptr %incdec.ptr59.us, i64 %idx.ext73
  %incdec.ptr75.us = getelementptr inbounds nuw i8, ptr %add.ptr74.us, i64 1
  %24 = load i8, ptr %add.ptr74.us, align 1, !tbaa !24
  %idx.ext77.us = zext i8 %24 to i64
  %idx.neg78.us = sub nsw i64 0, %idx.ext77.us
  %add.ptr79.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg78.us
  %25 = load i8, ptr %add.ptr79.us, align 1, !tbaa !24
  %conv80.us = zext i8 %25 to i32
  %add81.us = add nuw nsw i32 %add71.us, %conv80.us
  %incdec.ptr82.us = getelementptr inbounds nuw i8, ptr %add.ptr74.us, i64 2
  %26 = load i8, ptr %incdec.ptr75.us, align 1, !tbaa !24
  %idx.ext84.us = zext i8 %26 to i64
  %idx.neg85.us = sub nsw i64 0, %idx.ext84.us
  %add.ptr86.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg85.us
  %27 = load i8, ptr %add.ptr86.us, align 1, !tbaa !24
  %conv87.us = zext i8 %27 to i32
  %add88.us = add nuw nsw i32 %add81.us, %conv87.us
  %incdec.ptr89.us = getelementptr inbounds nuw i8, ptr %add.ptr74.us, i64 3
  %28 = load i8, ptr %incdec.ptr82.us, align 1, !tbaa !24
  %idx.ext91.us = zext i8 %28 to i64
  %idx.neg92.us = sub nsw i64 0, %idx.ext91.us
  %add.ptr93.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg92.us
  %29 = load i8, ptr %add.ptr93.us, align 1, !tbaa !24
  %conv94.us = zext i8 %29 to i32
  %add95.us = add nuw nsw i32 %add88.us, %conv94.us
  %incdec.ptr96.us = getelementptr inbounds nuw i8, ptr %add.ptr74.us, i64 4
  %30 = load i8, ptr %incdec.ptr89.us, align 1, !tbaa !24
  %idx.ext98.us = zext i8 %30 to i64
  %idx.neg99.us = sub nsw i64 0, %idx.ext98.us
  %add.ptr100.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg99.us
  %31 = load i8, ptr %add.ptr100.us, align 1, !tbaa !24
  %conv101.us = zext i8 %31 to i32
  %add102.us = add nuw nsw i32 %add95.us, %conv101.us
  %incdec.ptr103.us = getelementptr inbounds nuw i8, ptr %add.ptr74.us, i64 5
  %32 = load i8, ptr %incdec.ptr96.us, align 1, !tbaa !24
  %idx.ext105.us = zext i8 %32 to i64
  %idx.neg106.us = sub nsw i64 0, %idx.ext105.us
  %add.ptr107.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg106.us
  %33 = load i8, ptr %add.ptr107.us, align 1, !tbaa !24
  %conv108.us = zext i8 %33 to i32
  %add109.us = add nuw nsw i32 %add102.us, %conv108.us
  %incdec.ptr110.us = getelementptr inbounds nuw i8, ptr %add.ptr74.us, i64 6
  %34 = load i8, ptr %incdec.ptr103.us, align 1, !tbaa !24
  %idx.ext112.us = zext i8 %34 to i64
  %idx.neg113.us = sub nsw i64 0, %idx.ext112.us
  %add.ptr114.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg113.us
  %35 = load i8, ptr %add.ptr114.us, align 1, !tbaa !24
  %conv115.us = zext i8 %35 to i32
  %add116.us = add nuw nsw i32 %add109.us, %conv115.us
  %36 = load i8, ptr %incdec.ptr110.us, align 1, !tbaa !24
  %idx.ext118.us = zext i8 %36 to i64
  %idx.neg119.us = sub nsw i64 0, %idx.ext118.us
  %add.ptr120.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg119.us
  %37 = load i8, ptr %add.ptr120.us, align 1, !tbaa !24
  %conv121.us = zext i8 %37 to i32
  %add122.us = add nuw nsw i32 %add116.us, %conv121.us
  %add.ptr125.us = getelementptr inbounds i8, ptr %incdec.ptr110.us, i64 %idx.ext124
  %incdec.ptr126.us = getelementptr inbounds nuw i8, ptr %add.ptr125.us, i64 1
  %38 = load i8, ptr %add.ptr125.us, align 1, !tbaa !24
  %idx.ext128.us = zext i8 %38 to i64
  %idx.neg129.us = sub nsw i64 0, %idx.ext128.us
  %add.ptr130.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg129.us
  %39 = load i8, ptr %add.ptr130.us, align 1, !tbaa !24
  %conv131.us = zext i8 %39 to i32
  %add132.us = add nuw nsw i32 %add122.us, %conv131.us
  %incdec.ptr133.us = getelementptr inbounds nuw i8, ptr %add.ptr125.us, i64 2
  %40 = load i8, ptr %incdec.ptr126.us, align 1, !tbaa !24
  %idx.ext135.us = zext i8 %40 to i64
  %idx.neg136.us = sub nsw i64 0, %idx.ext135.us
  %add.ptr137.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg136.us
  %41 = load i8, ptr %add.ptr137.us, align 1, !tbaa !24
  %conv138.us = zext i8 %41 to i32
  %add139.us = add nuw nsw i32 %add132.us, %conv138.us
  %42 = load i8, ptr %incdec.ptr133.us, align 1, !tbaa !24
  %idx.ext141.us = zext i8 %42 to i64
  %idx.neg142.us = sub nsw i64 0, %idx.ext141.us
  %add.ptr143.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg142.us
  %43 = load i8, ptr %add.ptr143.us, align 1, !tbaa !24
  %conv144.us = zext i8 %43 to i32
  %add145.us = add nuw nsw i32 %add139.us, %conv144.us
  %cmp146.us = icmp slt i32 %add145.us, %max_no
  br i1 %cmp146.us, label %if.then.us, label %for.inc.us

if.then.us:                                       ; preds = %for.body7.us
  %add.ptr148.us = getelementptr inbounds nuw i8, ptr %add.ptr125.us, i64 4
  %44 = load i8, ptr %add.ptr148.us, align 1, !tbaa !24
  %idx.ext151.us = zext i8 %44 to i64
  %idx.neg152.us = sub nsw i64 0, %idx.ext151.us
  %add.ptr153.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg152.us
  %45 = load i8, ptr %add.ptr153.us, align 1, !tbaa !24
  %conv154.us = zext i8 %45 to i32
  %add155.us = add nuw nsw i32 %add145.us, %conv154.us
  %cmp156.us = icmp samesign ult i32 %add155.us, %max_no
  br i1 %cmp156.us, label %if.then158.us, label %for.inc.us

if.then158.us:                                    ; preds = %if.then.us
  %incdec.ptr149.us = getelementptr inbounds nuw i8, ptr %add.ptr125.us, i64 5
  %incdec.ptr159.us = getelementptr inbounds nuw i8, ptr %add.ptr125.us, i64 6
  %46 = load i8, ptr %incdec.ptr149.us, align 1, !tbaa !24
  %idx.ext161.us = zext i8 %46 to i64
  %idx.neg162.us = sub nsw i64 0, %idx.ext161.us
  %add.ptr163.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg162.us
  %47 = load i8, ptr %add.ptr163.us, align 1, !tbaa !24
  %conv164.us = zext i8 %47 to i32
  %add165.us = add nuw nsw i32 %add155.us, %conv164.us
  %cmp166.us = icmp samesign ult i32 %add165.us, %max_no
  br i1 %cmp166.us, label %if.then168.us, label %for.inc.us

if.then168.us:                                    ; preds = %if.then158.us
  %48 = load i8, ptr %incdec.ptr159.us, align 1, !tbaa !24
  %idx.ext170.us = zext i8 %48 to i64
  %idx.neg171.us = sub nsw i64 0, %idx.ext170.us
  %add.ptr172.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg171.us
  %49 = load i8, ptr %add.ptr172.us, align 1, !tbaa !24
  %conv173.us = zext i8 %49 to i32
  %add174.us = add nuw nsw i32 %add165.us, %conv173.us
  %cmp175.us = icmp samesign ult i32 %add174.us, %max_no
  br i1 %cmp175.us, label %if.then177.us, label %for.inc.us

if.then177.us:                                    ; preds = %if.then168.us
  %add.ptr180.us = getelementptr inbounds i8, ptr %incdec.ptr159.us, i64 %idx.ext124
  %50 = load i8, ptr %add.ptr180.us, align 1, !tbaa !24
  %idx.ext183.us = zext i8 %50 to i64
  %idx.neg184.us = sub nsw i64 0, %idx.ext183.us
  %add.ptr185.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg184.us
  %51 = load i8, ptr %add.ptr185.us, align 1, !tbaa !24
  %conv186.us = zext i8 %51 to i32
  %add187.us = add nuw nsw i32 %add174.us, %conv186.us
  %cmp188.us = icmp samesign ult i32 %add187.us, %max_no
  br i1 %cmp188.us, label %if.then190.us, label %for.inc.us

if.then190.us:                                    ; preds = %if.then177.us
  %incdec.ptr181.us = getelementptr inbounds nuw i8, ptr %add.ptr180.us, i64 1
  %52 = load i8, ptr %incdec.ptr181.us, align 1, !tbaa !24
  %idx.ext193.us = zext i8 %52 to i64
  %idx.neg194.us = sub nsw i64 0, %idx.ext193.us
  %add.ptr195.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg194.us
  %53 = load i8, ptr %add.ptr195.us, align 1, !tbaa !24
  %conv196.us = zext i8 %53 to i32
  %add197.us = add nuw nsw i32 %add187.us, %conv196.us
  %cmp198.us = icmp samesign ult i32 %add197.us, %max_no
  br i1 %cmp198.us, label %if.then200.us, label %for.inc.us

if.then200.us:                                    ; preds = %if.then190.us
  %incdec.ptr191.us = getelementptr inbounds nuw i8, ptr %add.ptr180.us, i64 2
  %54 = load i8, ptr %incdec.ptr191.us, align 1, !tbaa !24
  %idx.ext203.us = zext i8 %54 to i64
  %idx.neg204.us = sub nsw i64 0, %idx.ext203.us
  %add.ptr205.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg204.us
  %55 = load i8, ptr %add.ptr205.us, align 1, !tbaa !24
  %conv206.us = zext i8 %55 to i32
  %add207.us = add nuw nsw i32 %add197.us, %conv206.us
  %cmp208.us = icmp samesign ult i32 %add207.us, %max_no
  br i1 %cmp208.us, label %if.then210.us, label %for.inc.us

if.then210.us:                                    ; preds = %if.then200.us
  %incdec.ptr201.us = getelementptr inbounds nuw i8, ptr %add.ptr180.us, i64 3
  %56 = load i8, ptr %incdec.ptr201.us, align 1, !tbaa !24
  %idx.ext213.us = zext i8 %56 to i64
  %idx.neg214.us = sub nsw i64 0, %idx.ext213.us
  %add.ptr215.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg214.us
  %57 = load i8, ptr %add.ptr215.us, align 1, !tbaa !24
  %conv216.us = zext i8 %57 to i32
  %add217.us = add nuw nsw i32 %add207.us, %conv216.us
  %cmp218.us = icmp samesign ult i32 %add217.us, %max_no
  br i1 %cmp218.us, label %if.then220.us, label %for.inc.us

if.then220.us:                                    ; preds = %if.then210.us
  %incdec.ptr211.us = getelementptr inbounds nuw i8, ptr %add.ptr180.us, i64 4
  %58 = load i8, ptr %incdec.ptr211.us, align 1, !tbaa !24
  %idx.ext223.us = zext i8 %58 to i64
  %idx.neg224.us = sub nsw i64 0, %idx.ext223.us
  %add.ptr225.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg224.us
  %59 = load i8, ptr %add.ptr225.us, align 1, !tbaa !24
  %conv226.us = zext i8 %59 to i32
  %add227.us = add nuw nsw i32 %add217.us, %conv226.us
  %cmp228.us = icmp samesign ult i32 %add227.us, %max_no
  br i1 %cmp228.us, label %if.then230.us, label %for.inc.us

if.then230.us:                                    ; preds = %if.then220.us
  %incdec.ptr221.us = getelementptr inbounds nuw i8, ptr %add.ptr180.us, i64 5
  %incdec.ptr231.us = getelementptr inbounds nuw i8, ptr %add.ptr180.us, i64 6
  %60 = load i8, ptr %incdec.ptr221.us, align 1, !tbaa !24
  %idx.ext233.us = zext i8 %60 to i64
  %idx.neg234.us = sub nsw i64 0, %idx.ext233.us
  %add.ptr235.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg234.us
  %61 = load i8, ptr %add.ptr235.us, align 1, !tbaa !24
  %conv236.us = zext i8 %61 to i32
  %add237.us = add nuw nsw i32 %add227.us, %conv236.us
  %cmp238.us = icmp samesign ult i32 %add237.us, %max_no
  br i1 %cmp238.us, label %if.then240.us, label %for.inc.us

if.then240.us:                                    ; preds = %if.then230.us
  %62 = load i8, ptr %incdec.ptr231.us, align 1, !tbaa !24
  %idx.ext242.us = zext i8 %62 to i64
  %idx.neg243.us = sub nsw i64 0, %idx.ext242.us
  %add.ptr244.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg243.us
  %63 = load i8, ptr %add.ptr244.us, align 1, !tbaa !24
  %conv245.us = zext i8 %63 to i32
  %add246.us = add nuw nsw i32 %add237.us, %conv245.us
  %cmp247.us = icmp samesign ult i32 %add246.us, %max_no
  br i1 %cmp247.us, label %if.then249.us, label %for.inc.us

if.then249.us:                                    ; preds = %if.then240.us
  %add.ptr252.us = getelementptr inbounds i8, ptr %incdec.ptr231.us, i64 %idx.ext73
  %64 = load i8, ptr %add.ptr252.us, align 1, !tbaa !24
  %idx.ext255.us = zext i8 %64 to i64
  %idx.neg256.us = sub nsw i64 0, %idx.ext255.us
  %add.ptr257.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg256.us
  %65 = load i8, ptr %add.ptr257.us, align 1, !tbaa !24
  %conv258.us = zext i8 %65 to i32
  %add259.us = add nuw nsw i32 %add246.us, %conv258.us
  %cmp260.us = icmp samesign ult i32 %add259.us, %max_no
  br i1 %cmp260.us, label %if.then262.us, label %for.inc.us

if.then262.us:                                    ; preds = %if.then249.us
  %incdec.ptr253.us = getelementptr inbounds nuw i8, ptr %add.ptr252.us, i64 1
  %66 = load i8, ptr %incdec.ptr253.us, align 1, !tbaa !24
  %idx.ext265.us = zext i8 %66 to i64
  %idx.neg266.us = sub nsw i64 0, %idx.ext265.us
  %add.ptr267.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg266.us
  %67 = load i8, ptr %add.ptr267.us, align 1, !tbaa !24
  %conv268.us = zext i8 %67 to i32
  %add269.us = add nuw nsw i32 %add259.us, %conv268.us
  %cmp270.us = icmp samesign ult i32 %add269.us, %max_no
  br i1 %cmp270.us, label %if.then272.us, label %for.inc.us

if.then272.us:                                    ; preds = %if.then262.us
  %incdec.ptr263.us = getelementptr inbounds nuw i8, ptr %add.ptr252.us, i64 2
  %68 = load i8, ptr %incdec.ptr263.us, align 1, !tbaa !24
  %idx.ext275.us = zext i8 %68 to i64
  %idx.neg276.us = sub nsw i64 0, %idx.ext275.us
  %add.ptr277.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg276.us
  %69 = load i8, ptr %add.ptr277.us, align 1, !tbaa !24
  %conv278.us = zext i8 %69 to i32
  %add279.us = add nuw nsw i32 %add269.us, %conv278.us
  %cmp280.us = icmp samesign ult i32 %add279.us, %max_no
  br i1 %cmp280.us, label %if.then282.us, label %for.inc.us

if.then282.us:                                    ; preds = %if.then272.us
  %incdec.ptr273.us = getelementptr inbounds nuw i8, ptr %add.ptr252.us, i64 3
  %incdec.ptr283.us = getelementptr inbounds nuw i8, ptr %add.ptr252.us, i64 4
  %70 = load i8, ptr %incdec.ptr273.us, align 1, !tbaa !24
  %idx.ext285.us = zext i8 %70 to i64
  %idx.neg286.us = sub nsw i64 0, %idx.ext285.us
  %add.ptr287.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg286.us
  %71 = load i8, ptr %add.ptr287.us, align 1, !tbaa !24
  %conv288.us = zext i8 %71 to i32
  %add289.us = add nuw nsw i32 %add279.us, %conv288.us
  %cmp290.us = icmp samesign ult i32 %add289.us, %max_no
  br i1 %cmp290.us, label %if.then292.us, label %for.inc.us

if.then292.us:                                    ; preds = %if.then282.us
  %72 = load i8, ptr %incdec.ptr283.us, align 1, !tbaa !24
  %idx.ext294.us = zext i8 %72 to i64
  %idx.neg295.us = sub nsw i64 0, %idx.ext294.us
  %add.ptr296.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg295.us
  %73 = load i8, ptr %add.ptr296.us, align 1, !tbaa !24
  %conv297.us = zext i8 %73 to i32
  %add298.us = add nuw nsw i32 %add289.us, %conv297.us
  %cmp299.us = icmp samesign ult i32 %add298.us, %max_no
  br i1 %cmp299.us, label %if.then301.us, label %for.inc.us

if.then301.us:                                    ; preds = %if.then292.us
  %add.ptr304.us = getelementptr inbounds i8, ptr %incdec.ptr283.us, i64 %idx.ext36
  %74 = load i8, ptr %add.ptr304.us, align 1, !tbaa !24
  %idx.ext307.us = zext i8 %74 to i64
  %idx.neg308.us = sub nsw i64 0, %idx.ext307.us
  %add.ptr309.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg308.us
  %75 = load i8, ptr %add.ptr309.us, align 1, !tbaa !24
  %conv310.us = zext i8 %75 to i32
  %add311.us = add nuw nsw i32 %add298.us, %conv310.us
  %cmp312.us = icmp samesign ult i32 %add311.us, %max_no
  br i1 %cmp312.us, label %if.then314.us, label %for.inc.us

if.then314.us:                                    ; preds = %if.then301.us
  %incdec.ptr305.us = getelementptr inbounds nuw i8, ptr %add.ptr304.us, i64 1
  %76 = load i8, ptr %incdec.ptr305.us, align 1, !tbaa !24
  %idx.ext317.us = zext i8 %76 to i64
  %idx.neg318.us = sub nsw i64 0, %idx.ext317.us
  %add.ptr319.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg318.us
  %77 = load i8, ptr %add.ptr319.us, align 1, !tbaa !24
  %conv320.us = zext i8 %77 to i32
  %add321.us = add nuw nsw i32 %add311.us, %conv320.us
  %cmp322.us = icmp samesign ult i32 %add321.us, %max_no
  br i1 %cmp322.us, label %if.then324.us, label %for.inc.us

if.then324.us:                                    ; preds = %if.then314.us
  %incdec.ptr315.us = getelementptr inbounds nuw i8, ptr %add.ptr304.us, i64 2
  %78 = load i8, ptr %incdec.ptr315.us, align 1, !tbaa !24
  %idx.ext326.us = zext i8 %78 to i64
  %idx.neg327.us = sub nsw i64 0, %idx.ext326.us
  %add.ptr328.us = getelementptr inbounds i8, ptr %add.ptr16.us, i64 %idx.neg327.us
  %79 = load i8, ptr %add.ptr328.us, align 1, !tbaa !24
  %conv329.us = zext i8 %79 to i32
  %add330.us = add nuw nsw i32 %add321.us, %conv329.us
  %cmp331.us = icmp samesign ult i32 %add330.us, %max_no
  br i1 %cmp331.us, label %if.then333.us, label %for.inc.us

if.then333.us:                                    ; preds = %if.then324.us
  %sub334.us = sub nuw nsw i32 %max_no, %add330.us
  %arrayidx338.us = getelementptr inbounds nuw i32, ptr %r, i64 %6
  store i32 %sub334.us, ptr %arrayidx338.us, align 4, !tbaa !16
  br label %for.inc.us

for.inc.us:                                       ; preds = %if.then333.us, %if.then324.us, %if.then314.us, %if.then301.us, %if.then292.us, %if.then282.us, %if.then272.us, %if.then262.us, %if.then249.us, %if.then240.us, %if.then230.us, %if.then220.us, %if.then210.us, %if.then200.us, %if.then190.us, %if.then177.us, %if.then168.us, %if.then158.us, %if.then.us, %for.body7.us
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.cond3.for.inc357_crit_edge.us, label %for.body7.us, !llvm.loop !73

for.cond3.for.inc357_crit_edge.us:                ; preds = %for.inc.us
  %indvars.iv.next730 = add nuw nsw i64 %indvars.iv729, 1
  %exitcond736.not = icmp eq i64 %indvars.iv.next730, %wide.trip.count735
  br i1 %exitcond736.not, label %for.cond365.preheader.us.preheader, label %for.cond3.preheader.us, !llvm.loop !74

for.cond365.preheader.us.preheader:               ; preds = %for.cond3.for.inc357_crit_edge.us
  %sub366 = add nsw i32 %x_size, -7
  %80 = zext nneg i32 %x_size to i64
  %wide.trip.count784 = zext nneg i32 %sub to i64
  %wide.trip.count767 = zext i32 %sub366 to i64
  br label %for.cond365.preheader.us

for.cond365.preheader.us:                         ; preds = %for.cond365.preheader.us.preheader, %for.cond365.for.inc1323_crit_edge.us
  %indvars.iv769 = phi i64 [ 7, %for.cond365.preheader.us.preheader ], [ %indvars.iv.next770, %for.cond365.for.inc1323_crit_edge.us ]
  %n.0722.us = phi i32 [ 0, %for.cond365.preheader.us.preheader ], [ %n.2.us, %for.cond365.for.inc1323_crit_edge.us ]
  %81 = mul nuw nsw i64 %indvars.iv769, %80
  %82 = add nsw i64 %indvars.iv769, -3
  %83 = mul nsw i64 %82, %80
  %84 = add nsw i64 %indvars.iv769, -2
  %85 = mul nsw i64 %84, %80
  %86 = add nsw i64 %indvars.iv769, -1
  %87 = mul nsw i64 %86, %80
  %indvars.iv.next770 = add nuw nsw i64 %indvars.iv769, 1
  %88 = mul nuw nsw i64 %indvars.iv.next770, %80
  %89 = add nuw nsw i64 %indvars.iv769, 2
  %90 = mul nuw nsw i64 %89, %80
  %91 = add nuw nsw i64 %indvars.iv769, 3
  %92 = mul nuw nsw i64 %91, %80
  %invariant.gep = getelementptr i32, ptr %r, i64 %83
  %invariant.gep789 = getelementptr i32, ptr %r, i64 %92
  %93 = trunc nuw nsw i64 %indvars.iv769 to i32
  br label %for.body369.us

for.body369.us:                                   ; preds = %for.cond365.preheader.us, %for.inc1320.us
  %indvars.iv737 = phi i64 [ 7, %for.cond365.preheader.us ], [ %indvars.iv.next738, %for.inc1320.us ]
  %n.1718.us = phi i32 [ %n.0722.us, %for.cond365.preheader.us ], [ %n.2.us, %for.inc1320.us ]
  %94 = add nuw nsw i64 %indvars.iv737, %81
  %arrayidx373.us = getelementptr inbounds nuw i32, ptr %r, i64 %94
  %95 = load i32, ptr %arrayidx373.us, align 4, !tbaa !16
  %cmp374.us = icmp sgt i32 %95, 0
  br i1 %cmp374.us, label %if.then376.us, label %for.inc1320.us

if.then376.us:                                    ; preds = %for.body369.us
  %gep = getelementptr i32, ptr %invariant.gep, i64 %indvars.iv737
  %arrayidx382.us = getelementptr i8, ptr %gep, i64 -12
  %96 = load i32, ptr %arrayidx382.us, align 4, !tbaa !16
  %cmp383.us = icmp sgt i32 %95, %96
  br i1 %cmp383.us, label %land.lhs.true.us, label %for.inc1320.us

land.lhs.true.us:                                 ; preds = %if.then376.us
  %arrayidx390.us = getelementptr i8, ptr %gep, i64 -8
  %97 = load i32, ptr %arrayidx390.us, align 4, !tbaa !16
  %cmp391.us = icmp sgt i32 %95, %97
  br i1 %cmp391.us, label %land.lhs.true393.us, label %for.inc1320.us

land.lhs.true393.us:                              ; preds = %land.lhs.true.us
  %arrayidx399.us = getelementptr i8, ptr %gep, i64 -4
  %98 = load i32, ptr %arrayidx399.us, align 4, !tbaa !16
  %cmp400.us = icmp sgt i32 %95, %98
  br i1 %cmp400.us, label %land.lhs.true402.us, label %for.inc1320.us

land.lhs.true402.us:                              ; preds = %land.lhs.true393.us
  %99 = load i32, ptr %gep, align 4, !tbaa !16
  %cmp408.us = icmp sgt i32 %95, %99
  br i1 %cmp408.us, label %land.lhs.true410.us, label %for.inc1320.us

land.lhs.true410.us:                              ; preds = %land.lhs.true402.us
  %arrayidx416.us = getelementptr i8, ptr %gep, i64 4
  %100 = load i32, ptr %arrayidx416.us, align 4, !tbaa !16
  %cmp417.us = icmp sgt i32 %95, %100
  br i1 %cmp417.us, label %land.lhs.true419.us, label %for.inc1320.us

land.lhs.true419.us:                              ; preds = %land.lhs.true410.us
  %arrayidx425.us = getelementptr i8, ptr %gep, i64 8
  %101 = load i32, ptr %arrayidx425.us, align 4, !tbaa !16
  %cmp426.us = icmp sgt i32 %95, %101
  br i1 %cmp426.us, label %land.lhs.true428.us, label %for.inc1320.us

land.lhs.true428.us:                              ; preds = %land.lhs.true419.us
  %arrayidx434.us = getelementptr i8, ptr %gep, i64 12
  %102 = load i32, ptr %arrayidx434.us, align 4, !tbaa !16
  %cmp435.us = icmp sgt i32 %95, %102
  br i1 %cmp435.us, label %land.lhs.true437.us, label %for.inc1320.us

land.lhs.true437.us:                              ; preds = %land.lhs.true428.us
  %103 = add nsw i64 %indvars.iv737, %85
  %104 = getelementptr i32, ptr %r, i64 %103
  %arrayidx443.us = getelementptr i8, ptr %104, i64 -12
  %105 = load i32, ptr %arrayidx443.us, align 4, !tbaa !16
  %cmp444.us = icmp sgt i32 %95, %105
  br i1 %cmp444.us, label %land.lhs.true446.us, label %for.inc1320.us

land.lhs.true446.us:                              ; preds = %land.lhs.true437.us
  %106 = add nsw i64 %103, -2
  %arrayidx452.us = getelementptr inbounds i32, ptr %r, i64 %106
  %107 = load i32, ptr %arrayidx452.us, align 4, !tbaa !16
  %cmp453.us = icmp sgt i32 %95, %107
  br i1 %cmp453.us, label %land.lhs.true455.us, label %for.inc1320.us

land.lhs.true455.us:                              ; preds = %land.lhs.true446.us
  %108 = add nsw i64 %103, -1
  %arrayidx461.us = getelementptr inbounds i32, ptr %r, i64 %108
  %109 = load i32, ptr %arrayidx461.us, align 4, !tbaa !16
  %cmp462.us = icmp sgt i32 %95, %109
  br i1 %cmp462.us, label %land.lhs.true464.us, label %for.inc1320.us

land.lhs.true464.us:                              ; preds = %land.lhs.true455.us
  %110 = load i32, ptr %104, align 4, !tbaa !16
  %cmp470.us = icmp sgt i32 %95, %110
  br i1 %cmp470.us, label %land.lhs.true472.us, label %for.inc1320.us

land.lhs.true472.us:                              ; preds = %land.lhs.true464.us
  %111 = add nsw i64 %103, 1
  %arrayidx478.us = getelementptr inbounds i32, ptr %r, i64 %111
  %112 = load i32, ptr %arrayidx478.us, align 4, !tbaa !16
  %cmp479.us = icmp sgt i32 %95, %112
  br i1 %cmp479.us, label %land.lhs.true481.us, label %for.inc1320.us

land.lhs.true481.us:                              ; preds = %land.lhs.true472.us
  %113 = add nsw i64 %103, 2
  %arrayidx487.us = getelementptr inbounds i32, ptr %r, i64 %113
  %114 = load i32, ptr %arrayidx487.us, align 4, !tbaa !16
  %cmp488.us = icmp sgt i32 %95, %114
  br i1 %cmp488.us, label %land.lhs.true490.us, label %for.inc1320.us

land.lhs.true490.us:                              ; preds = %land.lhs.true481.us
  %arrayidx496.us = getelementptr i8, ptr %104, i64 12
  %115 = load i32, ptr %arrayidx496.us, align 4, !tbaa !16
  %cmp497.us = icmp sgt i32 %95, %115
  br i1 %cmp497.us, label %land.lhs.true499.us, label %for.inc1320.us

land.lhs.true499.us:                              ; preds = %land.lhs.true490.us
  %116 = add nsw i64 %indvars.iv737, %87
  %117 = getelementptr i32, ptr %r, i64 %116
  %arrayidx505.us = getelementptr i8, ptr %117, i64 -12
  %118 = load i32, ptr %arrayidx505.us, align 4, !tbaa !16
  %cmp506.us = icmp sgt i32 %95, %118
  br i1 %cmp506.us, label %land.lhs.true508.us, label %for.inc1320.us

land.lhs.true508.us:                              ; preds = %land.lhs.true499.us
  %119 = add nsw i64 %116, -2
  %arrayidx514.us = getelementptr inbounds i32, ptr %r, i64 %119
  %120 = load i32, ptr %arrayidx514.us, align 4, !tbaa !16
  %cmp515.us = icmp sgt i32 %95, %120
  br i1 %cmp515.us, label %land.lhs.true517.us, label %for.inc1320.us

land.lhs.true517.us:                              ; preds = %land.lhs.true508.us
  %121 = add nsw i64 %116, -1
  %arrayidx523.us = getelementptr inbounds i32, ptr %r, i64 %121
  %122 = load i32, ptr %arrayidx523.us, align 4, !tbaa !16
  %cmp524.us = icmp sgt i32 %95, %122
  br i1 %cmp524.us, label %land.lhs.true526.us, label %for.inc1320.us

land.lhs.true526.us:                              ; preds = %land.lhs.true517.us
  %123 = load i32, ptr %117, align 4, !tbaa !16
  %cmp532.us = icmp sgt i32 %95, %123
  br i1 %cmp532.us, label %land.lhs.true534.us, label %for.inc1320.us

land.lhs.true534.us:                              ; preds = %land.lhs.true526.us
  %124 = add nsw i64 %116, 1
  %arrayidx540.us = getelementptr inbounds i32, ptr %r, i64 %124
  %125 = load i32, ptr %arrayidx540.us, align 4, !tbaa !16
  %cmp541.us = icmp sgt i32 %95, %125
  br i1 %cmp541.us, label %land.lhs.true543.us, label %for.inc1320.us

land.lhs.true543.us:                              ; preds = %land.lhs.true534.us
  %126 = add nsw i64 %116, 2
  %arrayidx549.us = getelementptr inbounds i32, ptr %r, i64 %126
  %127 = load i32, ptr %arrayidx549.us, align 4, !tbaa !16
  %cmp550.us = icmp sgt i32 %95, %127
  br i1 %cmp550.us, label %land.lhs.true552.us, label %for.inc1320.us

land.lhs.true552.us:                              ; preds = %land.lhs.true543.us
  %arrayidx558.us = getelementptr i8, ptr %117, i64 12
  %128 = load i32, ptr %arrayidx558.us, align 4, !tbaa !16
  %cmp559.us = icmp sgt i32 %95, %128
  br i1 %cmp559.us, label %land.lhs.true561.us, label %for.inc1320.us

land.lhs.true561.us:                              ; preds = %land.lhs.true552.us
  %arrayidx566.us = getelementptr i8, ptr %arrayidx373.us, i64 -12
  %129 = load i32, ptr %arrayidx566.us, align 4, !tbaa !16
  %cmp567.us = icmp sgt i32 %95, %129
  br i1 %cmp567.us, label %land.lhs.true569.us, label %for.inc1320.us

land.lhs.true569.us:                              ; preds = %land.lhs.true561.us
  %130 = add nsw i64 %94, -2
  %arrayidx574.us = getelementptr inbounds i32, ptr %r, i64 %130
  %131 = load i32, ptr %arrayidx574.us, align 4, !tbaa !16
  %cmp575.us = icmp sgt i32 %95, %131
  br i1 %cmp575.us, label %land.lhs.true577.us, label %for.inc1320.us

land.lhs.true577.us:                              ; preds = %land.lhs.true569.us
  %132 = add nsw i64 %94, -1
  %arrayidx582.us = getelementptr inbounds i32, ptr %r, i64 %132
  %133 = load i32, ptr %arrayidx582.us, align 4, !tbaa !16
  %cmp583.us = icmp sgt i32 %95, %133
  br i1 %cmp583.us, label %land.lhs.true585.us, label %for.inc1320.us

land.lhs.true585.us:                              ; preds = %land.lhs.true577.us
  %134 = add nuw nsw i64 %94, 1
  %arrayidx590.us = getelementptr inbounds nuw i32, ptr %r, i64 %134
  %135 = load i32, ptr %arrayidx590.us, align 4, !tbaa !16
  %cmp591.not.us = icmp slt i32 %95, %135
  br i1 %cmp591.not.us, label %for.inc1320.us, label %land.lhs.true593.us

land.lhs.true593.us:                              ; preds = %land.lhs.true585.us
  %136 = add nuw nsw i64 %94, 2
  %arrayidx598.us = getelementptr inbounds nuw i32, ptr %r, i64 %136
  %137 = load i32, ptr %arrayidx598.us, align 4, !tbaa !16
  %cmp599.not.us = icmp slt i32 %95, %137
  br i1 %cmp599.not.us, label %for.inc1320.us, label %land.lhs.true601.us

land.lhs.true601.us:                              ; preds = %land.lhs.true593.us
  %arrayidx606.us = getelementptr i8, ptr %arrayidx373.us, i64 12
  %138 = load i32, ptr %arrayidx606.us, align 4, !tbaa !16
  %cmp607.not.us = icmp slt i32 %95, %138
  br i1 %cmp607.not.us, label %for.inc1320.us, label %land.lhs.true609.us

land.lhs.true609.us:                              ; preds = %land.lhs.true601.us
  %139 = add nuw nsw i64 %indvars.iv737, %88
  %140 = getelementptr i32, ptr %r, i64 %139
  %arrayidx615.us = getelementptr i8, ptr %140, i64 -12
  %141 = load i32, ptr %arrayidx615.us, align 4, !tbaa !16
  %cmp616.not.us = icmp slt i32 %95, %141
  br i1 %cmp616.not.us, label %for.inc1320.us, label %land.lhs.true618.us

land.lhs.true618.us:                              ; preds = %land.lhs.true609.us
  %142 = add nsw i64 %139, -2
  %arrayidx624.us = getelementptr inbounds i32, ptr %r, i64 %142
  %143 = load i32, ptr %arrayidx624.us, align 4, !tbaa !16
  %cmp625.not.us = icmp slt i32 %95, %143
  br i1 %cmp625.not.us, label %for.inc1320.us, label %land.lhs.true627.us

land.lhs.true627.us:                              ; preds = %land.lhs.true618.us
  %144 = add nsw i64 %139, -1
  %arrayidx633.us = getelementptr inbounds i32, ptr %r, i64 %144
  %145 = load i32, ptr %arrayidx633.us, align 4, !tbaa !16
  %cmp634.not.us = icmp slt i32 %95, %145
  br i1 %cmp634.not.us, label %for.inc1320.us, label %land.lhs.true636.us

land.lhs.true636.us:                              ; preds = %land.lhs.true627.us
  %146 = load i32, ptr %140, align 4, !tbaa !16
  %cmp642.not.us = icmp slt i32 %95, %146
  br i1 %cmp642.not.us, label %for.inc1320.us, label %land.lhs.true644.us

land.lhs.true644.us:                              ; preds = %land.lhs.true636.us
  %147 = add nuw nsw i64 %139, 1
  %arrayidx650.us = getelementptr inbounds nuw i32, ptr %r, i64 %147
  %148 = load i32, ptr %arrayidx650.us, align 4, !tbaa !16
  %cmp651.not.us = icmp slt i32 %95, %148
  br i1 %cmp651.not.us, label %for.inc1320.us, label %land.lhs.true653.us

land.lhs.true653.us:                              ; preds = %land.lhs.true644.us
  %149 = add nuw nsw i64 %139, 2
  %arrayidx659.us = getelementptr inbounds nuw i32, ptr %r, i64 %149
  %150 = load i32, ptr %arrayidx659.us, align 4, !tbaa !16
  %cmp660.not.us = icmp slt i32 %95, %150
  br i1 %cmp660.not.us, label %for.inc1320.us, label %land.lhs.true662.us

land.lhs.true662.us:                              ; preds = %land.lhs.true653.us
  %arrayidx668.us = getelementptr i8, ptr %140, i64 12
  %151 = load i32, ptr %arrayidx668.us, align 4, !tbaa !16
  %cmp669.not.us = icmp slt i32 %95, %151
  br i1 %cmp669.not.us, label %for.inc1320.us, label %land.lhs.true671.us

land.lhs.true671.us:                              ; preds = %land.lhs.true662.us
  %152 = add nuw nsw i64 %indvars.iv737, %90
  %153 = getelementptr i32, ptr %r, i64 %152
  %arrayidx677.us = getelementptr i8, ptr %153, i64 -12
  %154 = load i32, ptr %arrayidx677.us, align 4, !tbaa !16
  %cmp678.not.us = icmp slt i32 %95, %154
  br i1 %cmp678.not.us, label %for.inc1320.us, label %land.lhs.true680.us

land.lhs.true680.us:                              ; preds = %land.lhs.true671.us
  %155 = add nsw i64 %152, -2
  %arrayidx686.us = getelementptr inbounds i32, ptr %r, i64 %155
  %156 = load i32, ptr %arrayidx686.us, align 4, !tbaa !16
  %cmp687.not.us = icmp slt i32 %95, %156
  br i1 %cmp687.not.us, label %for.inc1320.us, label %land.lhs.true689.us

land.lhs.true689.us:                              ; preds = %land.lhs.true680.us
  %157 = add nsw i64 %152, -1
  %arrayidx695.us = getelementptr inbounds i32, ptr %r, i64 %157
  %158 = load i32, ptr %arrayidx695.us, align 4, !tbaa !16
  %cmp696.not.us = icmp slt i32 %95, %158
  br i1 %cmp696.not.us, label %for.inc1320.us, label %land.lhs.true698.us

land.lhs.true698.us:                              ; preds = %land.lhs.true689.us
  %159 = load i32, ptr %153, align 4, !tbaa !16
  %cmp704.not.us = icmp slt i32 %95, %159
  br i1 %cmp704.not.us, label %for.inc1320.us, label %land.lhs.true706.us

land.lhs.true706.us:                              ; preds = %land.lhs.true698.us
  %160 = add nuw nsw i64 %152, 1
  %arrayidx712.us = getelementptr inbounds nuw i32, ptr %r, i64 %160
  %161 = load i32, ptr %arrayidx712.us, align 4, !tbaa !16
  %cmp713.not.us = icmp slt i32 %95, %161
  br i1 %cmp713.not.us, label %for.inc1320.us, label %land.lhs.true715.us

land.lhs.true715.us:                              ; preds = %land.lhs.true706.us
  %162 = add nuw nsw i64 %152, 2
  %arrayidx721.us = getelementptr inbounds nuw i32, ptr %r, i64 %162
  %163 = load i32, ptr %arrayidx721.us, align 4, !tbaa !16
  %cmp722.not.us = icmp slt i32 %95, %163
  br i1 %cmp722.not.us, label %for.inc1320.us, label %land.lhs.true724.us

land.lhs.true724.us:                              ; preds = %land.lhs.true715.us
  %arrayidx730.us = getelementptr i8, ptr %153, i64 12
  %164 = load i32, ptr %arrayidx730.us, align 4, !tbaa !16
  %cmp731.not.us = icmp slt i32 %95, %164
  br i1 %cmp731.not.us, label %for.inc1320.us, label %land.lhs.true733.us

land.lhs.true733.us:                              ; preds = %land.lhs.true724.us
  %gep790 = getelementptr i32, ptr %invariant.gep789, i64 %indvars.iv737
  %arrayidx739.us = getelementptr i8, ptr %gep790, i64 -12
  %165 = load i32, ptr %arrayidx739.us, align 4, !tbaa !16
  %cmp740.not.us = icmp slt i32 %95, %165
  br i1 %cmp740.not.us, label %for.inc1320.us, label %land.lhs.true742.us

land.lhs.true742.us:                              ; preds = %land.lhs.true733.us
  %arrayidx748.us = getelementptr i8, ptr %gep790, i64 -8
  %166 = load i32, ptr %arrayidx748.us, align 4, !tbaa !16
  %cmp749.not.us = icmp slt i32 %95, %166
  br i1 %cmp749.not.us, label %for.inc1320.us, label %land.lhs.true751.us

land.lhs.true751.us:                              ; preds = %land.lhs.true742.us
  %arrayidx757.us = getelementptr i8, ptr %gep790, i64 -4
  %167 = load i32, ptr %arrayidx757.us, align 4, !tbaa !16
  %cmp758.not.us = icmp slt i32 %95, %167
  br i1 %cmp758.not.us, label %for.inc1320.us, label %land.lhs.true760.us

land.lhs.true760.us:                              ; preds = %land.lhs.true751.us
  %168 = load i32, ptr %gep790, align 4, !tbaa !16
  %cmp766.not.us = icmp slt i32 %95, %168
  br i1 %cmp766.not.us, label %for.inc1320.us, label %land.lhs.true768.us

land.lhs.true768.us:                              ; preds = %land.lhs.true760.us
  %arrayidx774.us = getelementptr i8, ptr %gep790, i64 4
  %169 = load i32, ptr %arrayidx774.us, align 4, !tbaa !16
  %cmp775.not.us = icmp slt i32 %95, %169
  br i1 %cmp775.not.us, label %for.inc1320.us, label %land.lhs.true777.us

land.lhs.true777.us:                              ; preds = %land.lhs.true768.us
  %arrayidx783.us = getelementptr i8, ptr %gep790, i64 8
  %170 = load i32, ptr %arrayidx783.us, align 4, !tbaa !16
  %cmp784.not.us = icmp slt i32 %95, %170
  br i1 %cmp784.not.us, label %for.inc1320.us, label %land.lhs.true786.us

land.lhs.true786.us:                              ; preds = %land.lhs.true777.us
  %arrayidx792.us = getelementptr i8, ptr %gep790, i64 12
  %171 = load i32, ptr %arrayidx792.us, align 4, !tbaa !16
  %cmp793.not.us = icmp slt i32 %95, %171
  br i1 %cmp793.not.us, label %for.inc1320.us, label %if.then795.us

if.then795.us:                                    ; preds = %land.lhs.true786.us
  %idxprom796.us = sext i32 %n.1718.us to i64
  %arrayidx797.us = getelementptr inbounds %struct.anon, ptr %corner_list, i64 %idxprom796.us
  %info.us = getelementptr inbounds nuw i8, ptr %arrayidx797.us, i64 8
  store i32 0, ptr %info.us, align 4, !tbaa !61
  %172 = trunc nuw nsw i64 %indvars.iv737 to i32
  store i32 %172, ptr %arrayidx797.us, align 4, !tbaa !64
  %y803.us = getelementptr inbounds nuw i8, ptr %arrayidx797.us, i64 4
  store i32 %93, ptr %y803.us, align 4, !tbaa !63
  %arrayidx809.us = getelementptr inbounds i8, ptr %in, i64 %106
  %173 = load i8, ptr %arrayidx809.us, align 1, !tbaa !24
  %conv810.us = zext i8 %173 to i16
  %arrayidx816.us = getelementptr inbounds i8, ptr %in, i64 %108
  %174 = load i8, ptr %arrayidx816.us, align 1, !tbaa !24
  %conv817.us = zext i8 %174 to i16
  %add818.us = add nuw nsw i16 %conv817.us, %conv810.us
  %arrayidx823.us = getelementptr inbounds i8, ptr %in, i64 %103
  %175 = load i8, ptr %arrayidx823.us, align 1, !tbaa !24
  %conv824.us = zext i8 %175 to i16
  %add825.us = add nuw nsw i16 %add818.us, %conv824.us
  %arrayidx831.us = getelementptr inbounds i8, ptr %in, i64 %111
  %176 = load i8, ptr %arrayidx831.us, align 1, !tbaa !24
  %conv832.us = zext i8 %176 to i16
  %add833.us = add nuw nsw i16 %add825.us, %conv832.us
  %arrayidx839.us = getelementptr inbounds i8, ptr %in, i64 %113
  %177 = load i8, ptr %arrayidx839.us, align 1, !tbaa !24
  %conv840.us = zext i8 %177 to i16
  %add841.us = add nuw nsw i16 %add833.us, %conv840.us
  %arrayidx847.us = getelementptr inbounds i8, ptr %in, i64 %119
  %178 = load i8, ptr %arrayidx847.us, align 1, !tbaa !24
  %conv848.us = zext i8 %178 to i16
  %add849.us = add nuw nsw i16 %add841.us, %conv848.us
  %arrayidx855.us = getelementptr inbounds i8, ptr %in, i64 %121
  %179 = load i8, ptr %arrayidx855.us, align 1, !tbaa !24
  %conv856.us = zext i8 %179 to i16
  %add857.us = add nuw nsw i16 %add849.us, %conv856.us
  %arrayidx862.us = getelementptr inbounds i8, ptr %in, i64 %116
  %180 = load i8, ptr %arrayidx862.us, align 1, !tbaa !24
  %conv863.us = zext i8 %180 to i16
  %add864.us = add nuw nsw i16 %add857.us, %conv863.us
  %arrayidx870.us = getelementptr inbounds i8, ptr %in, i64 %124
  %181 = load i8, ptr %arrayidx870.us, align 1, !tbaa !24
  %conv871.us = zext i8 %181 to i16
  %add872.us = add nuw nsw i16 %add864.us, %conv871.us
  %arrayidx878.us = getelementptr inbounds i8, ptr %in, i64 %126
  %182 = load i8, ptr %arrayidx878.us, align 1, !tbaa !24
  %conv879.us = zext i8 %182 to i16
  %add880.us = add nuw nsw i16 %add872.us, %conv879.us
  %arrayidx885.us = getelementptr inbounds i8, ptr %in, i64 %130
  %183 = load i8, ptr %arrayidx885.us, align 1, !tbaa !24
  %conv886.us = zext i8 %183 to i16
  %add887.us = add nuw nsw i16 %add880.us, %conv886.us
  %arrayidx892.us = getelementptr inbounds i8, ptr %in, i64 %132
  %184 = load i8, ptr %arrayidx892.us, align 1, !tbaa !24
  %conv893.us = zext i8 %184 to i16
  %add894.us = add nuw nsw i16 %add887.us, %conv893.us
  %arrayidx898.us = getelementptr inbounds nuw i8, ptr %in, i64 %94
  %185 = load i8, ptr %arrayidx898.us, align 1, !tbaa !24
  %conv899.us = zext i8 %185 to i16
  %add900.us = add nuw nsw i16 %add894.us, %conv899.us
  %arrayidx905.us = getelementptr inbounds nuw i8, ptr %in, i64 %134
  %186 = load i8, ptr %arrayidx905.us, align 1, !tbaa !24
  %conv906.us = zext i8 %186 to i16
  %add907.us = add nuw nsw i16 %add900.us, %conv906.us
  %arrayidx912.us = getelementptr inbounds nuw i8, ptr %in, i64 %136
  %187 = load i8, ptr %arrayidx912.us, align 1, !tbaa !24
  %conv913.us = zext i8 %187 to i16
  %add914.us = add nuw nsw i16 %add907.us, %conv913.us
  %arrayidx920.us = getelementptr inbounds i8, ptr %in, i64 %142
  %188 = load i8, ptr %arrayidx920.us, align 1, !tbaa !24
  %conv921.us = zext i8 %188 to i16
  %add922.us = add nuw nsw i16 %add914.us, %conv921.us
  %arrayidx928.us = getelementptr inbounds i8, ptr %in, i64 %144
  %189 = load i8, ptr %arrayidx928.us, align 1, !tbaa !24
  %conv929.us = zext i8 %189 to i16
  %add930.us = add nuw nsw i16 %add922.us, %conv929.us
  %arrayidx935.us = getelementptr inbounds nuw i8, ptr %in, i64 %139
  %190 = load i8, ptr %arrayidx935.us, align 1, !tbaa !24
  %conv936.us = zext i8 %190 to i16
  %add937.us = add nuw nsw i16 %add930.us, %conv936.us
  %arrayidx943.us = getelementptr inbounds nuw i8, ptr %in, i64 %147
  %191 = load i8, ptr %arrayidx943.us, align 1, !tbaa !24
  %conv944.us = zext i8 %191 to i16
  %add945.us = add nuw nsw i16 %add937.us, %conv944.us
  %arrayidx951.us = getelementptr inbounds nuw i8, ptr %in, i64 %149
  %192 = load i8, ptr %arrayidx951.us, align 1, !tbaa !24
  %conv952.us = zext i8 %192 to i16
  %add953.us = add nuw nsw i16 %add945.us, %conv952.us
  %arrayidx959.us = getelementptr inbounds i8, ptr %in, i64 %155
  %193 = load i8, ptr %arrayidx959.us, align 1, !tbaa !24
  %conv960.us = zext i8 %193 to i16
  %add961.us = add nuw nsw i16 %add953.us, %conv960.us
  %arrayidx967.us = getelementptr inbounds i8, ptr %in, i64 %157
  %194 = load i8, ptr %arrayidx967.us, align 1, !tbaa !24
  %conv968.us = zext i8 %194 to i16
  %add969.us = add nuw nsw i16 %add961.us, %conv968.us
  %arrayidx974.us = getelementptr inbounds nuw i8, ptr %in, i64 %152
  %195 = load i8, ptr %arrayidx974.us, align 1, !tbaa !24
  %conv975.us = zext i8 %195 to i16
  %add976.us = add nuw nsw i16 %add969.us, %conv975.us
  %arrayidx982.us = getelementptr inbounds nuw i8, ptr %in, i64 %160
  %196 = load i8, ptr %arrayidx982.us, align 1, !tbaa !24
  %conv983.us = zext i8 %196 to i16
  %add984.us = add nuw nsw i16 %add976.us, %conv983.us
  %arrayidx990.us = getelementptr inbounds nuw i8, ptr %in, i64 %162
  %197 = load i8, ptr %arrayidx990.us, align 1, !tbaa !24
  %conv991.us = zext i8 %197 to i16
  %add992.us = add nuw nsw i16 %add984.us, %conv991.us
  %div706.us = udiv i16 %add992.us, 25
  %div.zext.us = zext nneg i16 %div706.us to i32
  %I.us = getelementptr inbounds nuw i8, ptr %arrayidx797.us, i64 20
  store i32 %div.zext.us, ptr %I.us, align 4, !tbaa !70
  %198 = load i8, ptr %arrayidx839.us, align 1, !tbaa !24
  %conv1001.us = zext i8 %198 to i32
  %199 = load i8, ptr %arrayidx878.us, align 1, !tbaa !24
  %conv1008.us = zext i8 %199 to i32
  %200 = load i8, ptr %arrayidx912.us, align 1, !tbaa !24
  %conv1015.us = zext i8 %200 to i32
  %201 = load i8, ptr %arrayidx951.us, align 1, !tbaa !24
  %conv1023.us = zext i8 %201 to i32
  %202 = load i8, ptr %arrayidx990.us, align 1, !tbaa !24
  %conv1031.us = zext i8 %202 to i32
  %203 = load i8, ptr %arrayidx809.us, align 1, !tbaa !24
  %conv1039.us = zext i8 %203 to i32
  %204 = load i8, ptr %arrayidx847.us, align 1, !tbaa !24
  %conv1046.us = zext i8 %204 to i32
  %205 = load i8, ptr %arrayidx885.us, align 1, !tbaa !24
  %conv1053.us = zext i8 %205 to i32
  %206 = load i8, ptr %arrayidx920.us, align 1, !tbaa !24
  %conv1061.us = zext i8 %206 to i32
  %207 = load i8, ptr %arrayidx959.us, align 1, !tbaa !24
  %conv1069.us = zext i8 %207 to i32
  %add1047.neg.us = add nuw nsw i32 %conv1008.us, %conv1001.us
  %add1054.neg.us = add nuw nsw i32 %add1047.neg.us, %conv1015.us
  %add1062.neg.us = add nuw nsw i32 %add1054.neg.us, %conv1023.us
  %add1070.neg.us = add nuw nsw i32 %add1062.neg.us, %conv1031.us
  %208 = add nuw nsw i32 %conv1039.us, %conv1046.us
  %209 = add nuw nsw i32 %208, %conv1053.us
  %210 = add nuw nsw i32 %209, %conv1061.us
  %211 = add nuw nsw i32 %210, %conv1069.us
  %sub1071.us = sub nsw i32 %add1070.neg.us, %211
  %212 = load i8, ptr %arrayidx831.us, align 1, !tbaa !24
  %conv1078.us = zext i8 %212 to i32
  %213 = load i8, ptr %arrayidx870.us, align 1, !tbaa !24
  %conv1086.us = zext i8 %213 to i32
  %214 = load i8, ptr %arrayidx905.us, align 1, !tbaa !24
  %conv1093.us = zext i8 %214 to i32
  %215 = load i8, ptr %arrayidx943.us, align 1, !tbaa !24
  %conv1101.us = zext i8 %215 to i32
  %216 = load i8, ptr %arrayidx982.us, align 1, !tbaa !24
  %conv1109.us = zext i8 %216 to i32
  %217 = load i8, ptr %arrayidx816.us, align 1, !tbaa !24
  %conv1117.us = zext i8 %217 to i32
  %218 = load i8, ptr %arrayidx855.us, align 1, !tbaa !24
  %conv1124.us = zext i8 %218 to i32
  %219 = load i8, ptr %arrayidx892.us, align 1, !tbaa !24
  %conv1131.us = zext i8 %219 to i32
  %220 = load i8, ptr %arrayidx928.us, align 1, !tbaa !24
  %conv1139.us = zext i8 %220 to i32
  %221 = load i8, ptr %arrayidx967.us, align 1, !tbaa !24
  %conv1147.us = zext i8 %221 to i32
  %factor.us = shl nsw i32 %sub1071.us, 1
  %add1132.neg.us = add nuw nsw i32 %conv1086.us, %conv1078.us
  %add1140.neg.us = add nsw i32 %add1132.neg.us, %factor.us
  %add1148.neg.us = add nsw i32 %add1140.neg.us, %conv1093.us
  %add1079.us = add nsw i32 %add1148.neg.us, %conv1101.us
  %add1087.us = add nsw i32 %add1079.us, %conv1109.us
  %222 = add nuw nsw i32 %conv1117.us, %conv1124.us
  %223 = add nuw nsw i32 %222, %conv1131.us
  %224 = add nuw nsw i32 %223, %conv1139.us
  %225 = add nuw nsw i32 %224, %conv1147.us
  %add1150.us = sub nsw i32 %add1087.us, %225
  %226 = load i8, ptr %arrayidx974.us, align 1, !tbaa !24
  %conv1171.us = zext i8 %226 to i32
  %227 = load i8, ptr %arrayidx823.us, align 1, !tbaa !24
  %conv1209.us = zext i8 %227 to i32
  %228 = add nuw nsw i32 %conv1001.us, %conv1039.us
  %229 = add nuw nsw i32 %conv1031.us, %conv1069.us
  %230 = add nuw nsw i32 %228, %conv1078.us
  %231 = add nuw nsw i32 %229, %conv1109.us
  %232 = add nuw nsw i32 %230, %conv1117.us
  %add1172.us = sub nsw i32 %231, %232
  %add1180.us = add nsw i32 %add1172.us, %conv1147.us
  %add1188.us = add nsw i32 %add1180.us, %conv1171.us
  %sub1227.us = sub nsw i32 %add1188.us, %conv1209.us
  %233 = load i8, ptr %arrayidx935.us, align 1, !tbaa !24
  %conv1249.us = zext i8 %233 to i32
  %234 = load i8, ptr %arrayidx862.us, align 1, !tbaa !24
  %conv1287.us = zext i8 %234 to i32
  %factor709.us = shl nsw i32 %sub1227.us, 1
  %235 = add nuw nsw i32 %conv1008.us, %conv1046.us
  %236 = add nuw nsw i32 %conv1023.us, %conv1061.us
  %237 = add nuw nsw i32 %235, %conv1086.us
  %238 = add nuw nsw i32 %236, %conv1101.us
  %239 = add nuw nsw i32 %237, %conv1124.us
  %add1250.us = sub nsw i32 %238, %239
  %add1258.us = add nsw i32 %add1250.us, %conv1139.us
  %add1266.us = add nsw i32 %add1258.us, %conv1249.us
  %sub1305.us = sub nsw i32 %add1266.us, %conv1287.us
  %add1306.us = add nsw i32 %sub1305.us, %factor709.us
  %div1307.lhs.trunc.us = trunc nsw i32 %add1150.us to i16
  %div1307707.us = sdiv i16 %div1307.lhs.trunc.us, 15
  %div1307.sext.us = sext i16 %div1307707.us to i32
  %dx.us = getelementptr inbounds nuw i8, ptr %arrayidx797.us, i64 12
  store i32 %div1307.sext.us, ptr %dx.us, align 4, !tbaa !68
  %div1310.lhs.trunc.us = trunc nsw i32 %add1306.us to i16
  %div1310708.us = sdiv i16 %div1310.lhs.trunc.us, 15
  %div1310.sext.us = sext i16 %div1310708.us to i32
  %dy.us = getelementptr inbounds nuw i8, ptr %arrayidx797.us, i64 16
  store i32 %div1310.sext.us, ptr %dy.us, align 4, !tbaa !69
  %inc1313.us = add nsw i32 %n.1718.us, 1
  %cmp1314.us = icmp eq i32 %inc1313.us, 15000
  br i1 %cmp1314.us, label %if.then1316, label %for.inc1320.us

for.inc1320.us:                                   ; preds = %if.then795.us, %land.lhs.true786.us, %land.lhs.true777.us, %land.lhs.true768.us, %land.lhs.true760.us, %land.lhs.true751.us, %land.lhs.true742.us, %land.lhs.true733.us, %land.lhs.true724.us, %land.lhs.true715.us, %land.lhs.true706.us, %land.lhs.true698.us, %land.lhs.true689.us, %land.lhs.true680.us, %land.lhs.true671.us, %land.lhs.true662.us, %land.lhs.true653.us, %land.lhs.true644.us, %land.lhs.true636.us, %land.lhs.true627.us, %land.lhs.true618.us, %land.lhs.true609.us, %land.lhs.true601.us, %land.lhs.true593.us, %land.lhs.true585.us, %land.lhs.true577.us, %land.lhs.true569.us, %land.lhs.true561.us, %land.lhs.true552.us, %land.lhs.true543.us, %land.lhs.true534.us, %land.lhs.true526.us, %land.lhs.true517.us, %land.lhs.true508.us, %land.lhs.true499.us, %land.lhs.true490.us, %land.lhs.true481.us, %land.lhs.true472.us, %land.lhs.true464.us, %land.lhs.true455.us, %land.lhs.true446.us, %land.lhs.true437.us, %land.lhs.true428.us, %land.lhs.true419.us, %land.lhs.true410.us, %land.lhs.true402.us, %land.lhs.true393.us, %land.lhs.true.us, %if.then376.us, %for.body369.us
  %n.2.us = phi i32 [ %inc1313.us, %if.then795.us ], [ %n.1718.us, %land.lhs.true786.us ], [ %n.1718.us, %land.lhs.true777.us ], [ %n.1718.us, %land.lhs.true768.us ], [ %n.1718.us, %land.lhs.true760.us ], [ %n.1718.us, %land.lhs.true751.us ], [ %n.1718.us, %land.lhs.true742.us ], [ %n.1718.us, %land.lhs.true733.us ], [ %n.1718.us, %land.lhs.true724.us ], [ %n.1718.us, %land.lhs.true715.us ], [ %n.1718.us, %land.lhs.true706.us ], [ %n.1718.us, %land.lhs.true698.us ], [ %n.1718.us, %land.lhs.true689.us ], [ %n.1718.us, %land.lhs.true680.us ], [ %n.1718.us, %land.lhs.true671.us ], [ %n.1718.us, %land.lhs.true662.us ], [ %n.1718.us, %land.lhs.true653.us ], [ %n.1718.us, %land.lhs.true644.us ], [ %n.1718.us, %land.lhs.true636.us ], [ %n.1718.us, %land.lhs.true627.us ], [ %n.1718.us, %land.lhs.true618.us ], [ %n.1718.us, %land.lhs.true609.us ], [ %n.1718.us, %land.lhs.true601.us ], [ %n.1718.us, %land.lhs.true593.us ], [ %n.1718.us, %land.lhs.true585.us ], [ %n.1718.us, %land.lhs.true577.us ], [ %n.1718.us, %land.lhs.true569.us ], [ %n.1718.us, %land.lhs.true561.us ], [ %n.1718.us, %land.lhs.true552.us ], [ %n.1718.us, %land.lhs.true543.us ], [ %n.1718.us, %land.lhs.true534.us ], [ %n.1718.us, %land.lhs.true526.us ], [ %n.1718.us, %land.lhs.true517.us ], [ %n.1718.us, %land.lhs.true508.us ], [ %n.1718.us, %land.lhs.true499.us ], [ %n.1718.us, %land.lhs.true490.us ], [ %n.1718.us, %land.lhs.true481.us ], [ %n.1718.us, %land.lhs.true472.us ], [ %n.1718.us, %land.lhs.true464.us ], [ %n.1718.us, %land.lhs.true455.us ], [ %n.1718.us, %land.lhs.true446.us ], [ %n.1718.us, %land.lhs.true437.us ], [ %n.1718.us, %land.lhs.true428.us ], [ %n.1718.us, %land.lhs.true419.us ], [ %n.1718.us, %land.lhs.true410.us ], [ %n.1718.us, %land.lhs.true402.us ], [ %n.1718.us, %land.lhs.true393.us ], [ %n.1718.us, %land.lhs.true.us ], [ %n.1718.us, %if.then376.us ], [ %n.1718.us, %for.body369.us ]
  %indvars.iv.next738 = add nuw nsw i64 %indvars.iv737, 1
  %exitcond768.not = icmp eq i64 %indvars.iv.next738, %wide.trip.count767
  br i1 %exitcond768.not, label %for.cond365.for.inc1323_crit_edge.us, label %for.body369.us, !llvm.loop !75

for.cond365.for.inc1323_crit_edge.us:             ; preds = %for.inc1320.us
  %exitcond785.not = icmp eq i64 %indvars.iv.next770, %wide.trip.count784
  br i1 %exitcond785.not, label %for.end1325.loopexit, label %for.cond365.preheader.us, !llvm.loop !76

if.then1316:                                      ; preds = %if.then795.us
  %240 = load ptr, ptr @stderr, align 8, !tbaa !5
  %241 = tail call i64 @fwrite(ptr nonnull @.str.29, i64 18, i64 1, ptr %240) #23
  tail call void @exit(i32 noundef 1) #27
  unreachable

for.end1325.loopexit:                             ; preds = %for.cond365.for.inc1323_crit_edge.us
  %242 = sext i32 %n.2.us to i64
  br label %for.end1325

for.end1325:                                      ; preds = %for.cond3.preheader.lr.ph, %entry, %for.end1325.loopexit
  %n.0.lcssa = phi i64 [ %242, %for.end1325.loopexit ], [ 0, %entry ], [ 0, %for.cond3.preheader.lr.ph ]
  %info1328 = getelementptr inbounds %struct.anon, ptr %corner_list, i64 %n.0.lcssa, i32 2
  store i32 7, ptr %info1328, align 4, !tbaa !61
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @main1(i32 noundef %argc, ptr noundef readonly captures(none) %argv) local_unnamed_addr #0 {
entry:
  %in = alloca ptr, align 8
  %x_size = alloca i32, align 4
  %y_size = alloca i32, align 4
  %corner_list = alloca [15000 x %struct.anon], align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %in) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x_size) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y_size) #22
  call void @llvm.lifetime.start.p0(i64 360000, ptr nonnull %corner_list) #22
  %cmp = icmp slt i32 %argc, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @usage()
  unreachable

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr inbounds nuw i8, ptr %argv, i64 8
  %0 = load ptr, ptr %arrayidx, align 8, !tbaa !18
  call void @get_image(ptr noundef %0, ptr noundef nonnull %in, ptr noundef nonnull %x_size, ptr noundef nonnull %y_size)
  %cmp1160.not = icmp eq i32 %argc, 3
  br i1 %cmp1160.not, label %while.end, label %while.body

while.body:                                       ; preds = %if.end, %if.end37
  %mode.0169 = phi i32 [ %mode.1, %if.end37 ], [ 0, %if.end ]
  %dt.0168 = phi float [ %dt.1, %if.end37 ], [ 4.000000e+00, %if.end ]
  %susan_quick.0167 = phi i32 [ %susan_quick.1, %if.end37 ], [ 0, %if.end ]
  %drawing_mode.0166 = phi i32 [ %drawing_mode.1, %if.end37 ], [ 0, %if.end ]
  %three_by_three.0165 = phi i32 [ %three_by_three.1, %if.end37 ], [ 0, %if.end ]
  %thin_post_proc.0164 = phi i32 [ %thin_post_proc.1, %if.end37 ], [ 1, %if.end ]
  %principle.0163 = phi i32 [ %principle.1, %if.end37 ], [ 0, %if.end ]
  %bt.0162 = phi i32 [ %bt.1, %if.end37 ], [ 20, %if.end ]
  %argindex.0161 = phi i32 [ %inc38, %if.end37 ], [ 3, %if.end ]
  %idxprom = sext i32 %argindex.0161 to i64
  %arrayidx2 = getelementptr inbounds ptr, ptr %argv, i64 %idxprom
  %1 = load ptr, ptr %arrayidx2, align 8, !tbaa !18
  %2 = load i8, ptr %1, align 1, !tbaa !24
  %cmp3 = icmp eq i8 %2, 45
  br i1 %cmp3, label %if.then5, label %if.else

if.then5:                                         ; preds = %while.body
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %1, i64 1
  %3 = load i8, ptr %incdec.ptr, align 1, !tbaa !24
  switch i8 %3, label %if.end37 [
    i8 115, label %sw.bb
    i8 101, label %sw.bb7
    i8 99, label %sw.bb8
    i8 112, label %sw.bb9
    i8 110, label %sw.bb10
    i8 98, label %sw.bb11
    i8 51, label %sw.bb12
    i8 113, label %sw.bb13
    i8 100, label %sw.bb14
    i8 116, label %sw.bb27
  ]

sw.bb:                                            ; preds = %if.then5
  br label %if.end37

sw.bb7:                                           ; preds = %if.then5
  br label %if.end37

sw.bb8:                                           ; preds = %if.then5
  br label %if.end37

sw.bb9:                                           ; preds = %if.then5
  br label %if.end37

sw.bb10:                                          ; preds = %if.then5
  br label %if.end37

sw.bb11:                                          ; preds = %if.then5
  br label %if.end37

sw.bb12:                                          ; preds = %if.then5
  br label %if.end37

sw.bb13:                                          ; preds = %if.then5
  br label %if.end37

sw.bb14:                                          ; preds = %if.then5
  %inc = add nsw i32 %argindex.0161, 1
  %cmp15.not = icmp slt i32 %inc, %argc
  br i1 %cmp15.not, label %if.end18, label %if.then17

if.then17:                                        ; preds = %sw.bb14
  %puts45 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.16)
  tail call void @exit(i32 noundef 0) #24
  unreachable

if.end18:                                         ; preds = %sw.bb14
  %idxprom19 = sext i32 %inc to i64
  %arrayidx20 = getelementptr inbounds ptr, ptr %argv, i64 %idxprom19
  %4 = load ptr, ptr %arrayidx20, align 8, !tbaa !18
  %call.i = tail call double @strtod(ptr noundef nonnull captures(none) %4, ptr noundef null) #22
  %conv22 = fptrunc double %call.i to float
  %cmp23 = fcmp olt float %conv22, 0.000000e+00
  br i1 %cmp23, label %if.then25, label %if.end37

if.then25:                                        ; preds = %if.end18
  br label %if.end37

sw.bb27:                                          ; preds = %if.then5
  %inc28 = add nsw i32 %argindex.0161, 1
  %cmp29.not = icmp slt i32 %inc28, %argc
  br i1 %cmp29.not, label %if.end33, label %if.then31

if.then31:                                        ; preds = %sw.bb27
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.15)
  tail call void @exit(i32 noundef 0) #24
  unreachable

if.end33:                                         ; preds = %sw.bb27
  %idxprom34 = sext i32 %inc28 to i64
  %arrayidx35 = getelementptr inbounds ptr, ptr %argv, i64 %idxprom34
  %5 = load ptr, ptr %arrayidx35, align 8, !tbaa !18
  %call.i46 = tail call i64 @strtol(ptr noundef nonnull captures(none) %5, ptr noundef null, i32 noundef 10) #22
  %conv.i = trunc i64 %call.i46 to i32
  br label %if.end37

if.else:                                          ; preds = %while.body
  tail call void @usage()
  unreachable

if.end37:                                         ; preds = %if.then5, %sw.bb, %sw.bb7, %sw.bb8, %sw.bb9, %sw.bb10, %sw.bb11, %sw.bb12, %sw.bb13, %if.end33, %if.then25, %if.end18
  %argindex.1 = phi i32 [ %argindex.0161, %if.then5 ], [ %argindex.0161, %sw.bb ], [ %argindex.0161, %sw.bb7 ], [ %argindex.0161, %sw.bb8 ], [ %argindex.0161, %sw.bb9 ], [ %argindex.0161, %sw.bb10 ], [ %argindex.0161, %sw.bb11 ], [ %argindex.0161, %sw.bb12 ], [ %argindex.0161, %sw.bb13 ], [ %inc, %if.then25 ], [ %inc, %if.end18 ], [ %inc28, %if.end33 ]
  %bt.1 = phi i32 [ %bt.0162, %if.then5 ], [ %bt.0162, %sw.bb ], [ %bt.0162, %sw.bb7 ], [ %bt.0162, %sw.bb8 ], [ %bt.0162, %sw.bb9 ], [ %bt.0162, %sw.bb10 ], [ %bt.0162, %sw.bb11 ], [ %bt.0162, %sw.bb12 ], [ %bt.0162, %sw.bb13 ], [ %bt.0162, %if.then25 ], [ %bt.0162, %if.end18 ], [ %conv.i, %if.end33 ]
  %principle.1 = phi i32 [ %principle.0163, %if.then5 ], [ %principle.0163, %sw.bb ], [ %principle.0163, %sw.bb7 ], [ %principle.0163, %sw.bb8 ], [ 1, %sw.bb9 ], [ %principle.0163, %sw.bb10 ], [ %principle.0163, %sw.bb11 ], [ %principle.0163, %sw.bb12 ], [ %principle.0163, %sw.bb13 ], [ %principle.0163, %if.then25 ], [ %principle.0163, %if.end18 ], [ %principle.0163, %if.end33 ]
  %thin_post_proc.1 = phi i32 [ %thin_post_proc.0164, %if.then5 ], [ %thin_post_proc.0164, %sw.bb ], [ %thin_post_proc.0164, %sw.bb7 ], [ %thin_post_proc.0164, %sw.bb8 ], [ %thin_post_proc.0164, %sw.bb9 ], [ 0, %sw.bb10 ], [ %thin_post_proc.0164, %sw.bb11 ], [ %thin_post_proc.0164, %sw.bb12 ], [ %thin_post_proc.0164, %sw.bb13 ], [ %thin_post_proc.0164, %if.then25 ], [ %thin_post_proc.0164, %if.end18 ], [ %thin_post_proc.0164, %if.end33 ]
  %three_by_three.1 = phi i32 [ %three_by_three.0165, %if.then5 ], [ %three_by_three.0165, %sw.bb ], [ %three_by_three.0165, %sw.bb7 ], [ %three_by_three.0165, %sw.bb8 ], [ %three_by_three.0165, %sw.bb9 ], [ %three_by_three.0165, %sw.bb10 ], [ %three_by_three.0165, %sw.bb11 ], [ 1, %sw.bb12 ], [ %three_by_three.0165, %sw.bb13 ], [ 1, %if.then25 ], [ %three_by_three.0165, %if.end18 ], [ %three_by_three.0165, %if.end33 ]
  %drawing_mode.1 = phi i32 [ %drawing_mode.0166, %if.then5 ], [ %drawing_mode.0166, %sw.bb ], [ %drawing_mode.0166, %sw.bb7 ], [ %drawing_mode.0166, %sw.bb8 ], [ %drawing_mode.0166, %sw.bb9 ], [ %drawing_mode.0166, %sw.bb10 ], [ 1, %sw.bb11 ], [ %drawing_mode.0166, %sw.bb12 ], [ %drawing_mode.0166, %sw.bb13 ], [ %drawing_mode.0166, %if.then25 ], [ %drawing_mode.0166, %if.end18 ], [ %drawing_mode.0166, %if.end33 ]
  %susan_quick.1 = phi i32 [ %susan_quick.0167, %if.then5 ], [ %susan_quick.0167, %sw.bb ], [ %susan_quick.0167, %sw.bb7 ], [ %susan_quick.0167, %sw.bb8 ], [ %susan_quick.0167, %sw.bb9 ], [ %susan_quick.0167, %sw.bb10 ], [ %susan_quick.0167, %sw.bb11 ], [ %susan_quick.0167, %sw.bb12 ], [ 1, %sw.bb13 ], [ %susan_quick.0167, %if.then25 ], [ %susan_quick.0167, %if.end18 ], [ %susan_quick.0167, %if.end33 ]
  %dt.1 = phi float [ %dt.0168, %if.then5 ], [ %dt.0168, %sw.bb ], [ %dt.0168, %sw.bb7 ], [ %dt.0168, %sw.bb8 ], [ %dt.0168, %sw.bb9 ], [ %dt.0168, %sw.bb10 ], [ %dt.0168, %sw.bb11 ], [ %dt.0168, %sw.bb12 ], [ %dt.0168, %sw.bb13 ], [ %conv22, %if.then25 ], [ %conv22, %if.end18 ], [ %dt.0168, %if.end33 ]
  %mode.1 = phi i32 [ %mode.0169, %if.then5 ], [ 0, %sw.bb ], [ 1, %sw.bb7 ], [ 2, %sw.bb8 ], [ %mode.0169, %sw.bb9 ], [ %mode.0169, %sw.bb10 ], [ %mode.0169, %sw.bb11 ], [ %mode.0169, %sw.bb12 ], [ %mode.0169, %sw.bb13 ], [ %mode.0169, %if.then25 ], [ %mode.0169, %if.end18 ], [ %mode.0169, %if.end33 ]
  %inc38 = add nsw i32 %argindex.1, 1
  %cmp1 = icmp slt i32 %inc38, %argc
  br i1 %cmp1, label %while.body, label %while.end.loopexit, !llvm.loop !77

while.end.loopexit:                               ; preds = %if.end37
  %6 = sitofp i32 %bt.1 to float
  %7 = icmp eq i32 %susan_quick.1, 0
  %8 = icmp eq i32 %drawing_mode.1, 0
  %9 = icmp eq i32 %thin_post_proc.1, 0
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit, %if.end
  %bt.0.lcssa = phi float [ 2.000000e+01, %if.end ], [ %6, %while.end.loopexit ]
  %principle.0.lcssa = phi i32 [ 0, %if.end ], [ %principle.1, %while.end.loopexit ]
  %thin_post_proc.0.lcssa = phi i1 [ false, %if.end ], [ %9, %while.end.loopexit ]
  %three_by_three.0.lcssa = phi i32 [ 0, %if.end ], [ %three_by_three.1, %while.end.loopexit ]
  %drawing_mode.0.lcssa = phi i1 [ true, %if.end ], [ %8, %while.end.loopexit ]
  %susan_quick.0.lcssa = phi i1 [ true, %if.end ], [ %7, %while.end.loopexit ]
  %dt.0.lcssa = phi float [ 4.000000e+00, %if.end ], [ %dt.1, %while.end.loopexit ]
  %mode.0.lcssa = phi i32 [ 0, %if.end ], [ %mode.1, %while.end.loopexit ]
  %cmp39 = icmp eq i32 %principle.0.lcssa, 1
  %cmp41 = icmp eq i32 %mode.0.lcssa, 0
  %or.cond = select i1 %cmp39, i1 %cmp41, i1 false
  %spec.store.select = select i1 %or.cond, i32 1, i32 %mode.0.lcssa
  switch i32 %spec.store.select, label %default.unreachable179 [
    i32 0, label %sw.bb45
    i32 1, label %sw.bb46
    i32 2, label %sw.bb70
  ]

sw.bb45:                                          ; preds = %while.end
  %call.i47 = tail call noalias dereferenceable_or_null(516) ptr @malloc(i64 noundef 516) #26
  %add.ptr.i = getelementptr inbounds nuw i8, ptr %call.i47, i64 258
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %sw.bb45
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.body.i ], [ -256, %sw.bb45 ]
  %10 = trunc nsw i64 %indvars.iv.i to i32
  %conv.i48 = sitofp i32 %10 to float
  %div.i = fdiv float %conv.i48, %bt.0.lcssa
  %conv2.i = fpext float %div.i to double
  %11 = fneg double %conv2.i
  %fneg.i = fmul double %conv2.i, %11
  %call7.i = tail call double @exp(double noundef %fneg.i) #22, !tbaa !16
  %mul8.i = fmul double %call7.i, 1.000000e+02
  %conv9.i = fptoui double %mul8.i to i8
  %add.ptr10.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 %indvars.iv.i
  store i8 %conv9.i, ptr %add.ptr10.i, align 1, !tbaa !24
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 257
  br i1 %exitcond.not.i, label %setup_brightness_lut.exit, label %for.body.i, !llvm.loop !26

setup_brightness_lut.exit:                        ; preds = %for.body.i
  %12 = load ptr, ptr %in, align 8, !tbaa !18
  %13 = load i32, ptr %x_size, align 4, !tbaa !16
  %14 = load i32, ptr %y_size, align 4, !tbaa !16
  tail call void @susan_smoothing(i32 noundef %three_by_three.0.lcssa, ptr noundef %12, float noundef %dt.0.lcssa, i32 noundef %13, i32 noundef %14, ptr noundef nonnull %add.ptr.i)
  br label %sw.epilog86

sw.bb46:                                          ; preds = %while.end
  %15 = load i32, ptr %x_size, align 4, !tbaa !16
  %16 = load i32, ptr %y_size, align 4, !tbaa !16
  %mul = mul nsw i32 %16, %15
  %conv47 = sext i32 %mul to i64
  %mul48 = shl nsw i64 %conv47, 2
  %call49 = tail call noalias ptr @malloc(i64 noundef %mul48) #26
  %call.i50 = tail call noalias dereferenceable_or_null(516) ptr @malloc(i64 noundef 516) #26
  %add.ptr.i51 = getelementptr inbounds nuw i8, ptr %call.i50, i64 258
  br label %for.body.us.i

for.body.us.i:                                    ; preds = %for.body.us.i, %sw.bb46
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.body.us.i ], [ -256, %sw.bb46 ]
  %17 = trunc nsw i64 %indvars.iv16.i to i32
  %conv.us.i = sitofp i32 %17 to float
  %div.us.i = fdiv float %conv.us.i, %bt.0.lcssa
  %conv2.us.i = fpext float %div.us.i to double
  %mul.us.i = fmul double %conv2.us.i, %conv2.us.i
  %18 = fneg double %mul.us.i
  %19 = fmul double %mul.us.i, %18
  %fneg.us.i = fmul double %mul.us.i, %19
  %call7.us.i = tail call double @exp(double noundef %fneg.us.i) #22, !tbaa !16
  %mul8.us.i = fmul double %call7.us.i, 1.000000e+02
  %conv9.us.i = fptoui double %mul8.us.i to i8
  %add.ptr10.us.i = getelementptr inbounds i8, ptr %add.ptr.i51, i64 %indvars.iv16.i
  store i8 %conv9.us.i, ptr %add.ptr10.us.i, align 1, !tbaa !24
  %indvars.iv.next17.i = add nsw i64 %indvars.iv16.i, 1
  %exitcond19.not.i = icmp eq i64 %indvars.iv.next17.i, 257
  br i1 %exitcond19.not.i, label %setup_brightness_lut.exit53, label %for.body.us.i, !llvm.loop !26

setup_brightness_lut.exit53:                      ; preds = %for.body.us.i
  %tobool.not = icmp eq i32 %principle.0.lcssa, 0
  br i1 %tobool.not, label %if.else56, label %if.then50

if.then50:                                        ; preds = %setup_brightness_lut.exit53
  %tobool51.not = icmp eq i32 %three_by_three.0.lcssa, 0
  %20 = load ptr, ptr %in, align 8, !tbaa !18
  br i1 %tobool51.not, label %if.else53, label %if.then52

if.then52:                                        ; preds = %if.then50
  tail call void @llvm.memset.p0.i64(ptr align 4 %call49, i8 0, i64 %mul48, i1 false)
  %sub.i = add i32 %16, -1
  %cmp47.i = icmp sgt i32 %16, 2
  br i1 %cmp47.i, label %for.cond3.preheader.lr.ph.i, label %if.end54

for.cond3.preheader.lr.ph.i:                      ; preds = %if.then52
  %cmp545.i = icmp sgt i32 %15, 2
  %sub35.i = add nsw i32 %15, -2
  %idx.ext36.i = sext i32 %sub35.i to i64
  br i1 %cmp545.i, label %for.cond3.preheader.us.preheader.i, label %if.end54

for.cond3.preheader.us.preheader.i:               ; preds = %for.cond3.preheader.lr.ph.i
  %sub4.i = add nsw i32 %15, -1
  %21 = zext nneg i32 %15 to i64
  %wide.trip.count58.i = zext nneg i32 %sub.i to i64
  %wide.trip.count.i = zext nneg i32 %sub4.i to i64
  br label %for.cond3.preheader.us.i

for.cond3.preheader.us.i:                         ; preds = %for.cond3.for.inc81_crit_edge.us.i, %for.cond3.preheader.us.preheader.i
  %indvars.iv52.i = phi i64 [ 1, %for.cond3.preheader.us.preheader.i ], [ %indvars.iv.next53.i, %for.cond3.for.inc81_crit_edge.us.i ]
  %22 = add nsw i64 %indvars.iv52.i, -1
  %23 = mul nuw nsw i64 %22, %21
  %add.ptr.us.i = getelementptr inbounds i8, ptr %20, i64 %23
  %24 = trunc i64 %indvars.iv52.i to i32
  %25 = mul i32 %15, %24
  %26 = zext i32 %25 to i64
  br label %for.body7.us.i

for.body7.us.i:                                   ; preds = %for.inc.us.i, %for.cond3.preheader.us.i
  %indvars.iv.i55 = phi i64 [ 1, %for.cond3.preheader.us.i ], [ %indvars.iv.next.i56, %for.inc.us.i ]
  %add.ptr11.us.i = getelementptr inbounds nuw i8, ptr %add.ptr.us.i, i64 %indvars.iv.i55
  %add.ptr12.us.i = getelementptr inbounds i8, ptr %add.ptr11.us.i, i64 -1
  %27 = add nuw nsw i64 %indvars.iv.i55, %26
  %arrayidx.us.i = getelementptr inbounds nuw i8, ptr %20, i64 %27
  %28 = load i8, ptr %arrayidx.us.i, align 1, !tbaa !24
  %idx.ext15.us.i = zext i8 %28 to i64
  %add.ptr16.us.i = getelementptr inbounds nuw i8, ptr %add.ptr.i51, i64 %idx.ext15.us.i
  %29 = load i8, ptr %add.ptr12.us.i, align 1, !tbaa !24
  %idx.ext18.us.i = zext i8 %29 to i64
  %idx.neg.us.i = sub nsw i64 0, %idx.ext18.us.i
  %add.ptr19.us.i = getelementptr inbounds i8, ptr %add.ptr16.us.i, i64 %idx.neg.us.i
  %30 = load i8, ptr %add.ptr19.us.i, align 1, !tbaa !24
  %conv20.us.i = zext i8 %30 to i32
  %add21.us.i = add nuw nsw i32 %conv20.us.i, 100
  %incdec.ptr22.us.i = getelementptr inbounds nuw i8, ptr %add.ptr11.us.i, i64 1
  %31 = load i8, ptr %add.ptr11.us.i, align 1, !tbaa !24
  %idx.ext24.us.i = zext i8 %31 to i64
  %idx.neg25.us.i = sub nsw i64 0, %idx.ext24.us.i
  %add.ptr26.us.i = getelementptr inbounds i8, ptr %add.ptr16.us.i, i64 %idx.neg25.us.i
  %32 = load i8, ptr %add.ptr26.us.i, align 1, !tbaa !24
  %conv27.us.i = zext i8 %32 to i32
  %add28.us.i = add nuw nsw i32 %add21.us.i, %conv27.us.i
  %33 = load i8, ptr %incdec.ptr22.us.i, align 1, !tbaa !24
  %idx.ext30.us.i = zext i8 %33 to i64
  %idx.neg31.us.i = sub nsw i64 0, %idx.ext30.us.i
  %add.ptr32.us.i = getelementptr inbounds i8, ptr %add.ptr16.us.i, i64 %idx.neg31.us.i
  %34 = load i8, ptr %add.ptr32.us.i, align 1, !tbaa !24
  %conv33.us.i = zext i8 %34 to i32
  %add34.us.i = add nuw nsw i32 %add28.us.i, %conv33.us.i
  %add.ptr37.us.i = getelementptr inbounds i8, ptr %incdec.ptr22.us.i, i64 %idx.ext36.i
  %35 = load i8, ptr %add.ptr37.us.i, align 1, !tbaa !24
  %idx.ext39.us.i = zext i8 %35 to i64
  %idx.neg40.us.i = sub nsw i64 0, %idx.ext39.us.i
  %add.ptr41.us.i = getelementptr inbounds i8, ptr %add.ptr16.us.i, i64 %idx.neg40.us.i
  %36 = load i8, ptr %add.ptr41.us.i, align 1, !tbaa !24
  %conv42.us.i = zext i8 %36 to i32
  %add43.us.i = add nuw nsw i32 %add34.us.i, %conv42.us.i
  %add.ptr44.us.i = getelementptr inbounds nuw i8, ptr %add.ptr37.us.i, i64 2
  %37 = load i8, ptr %add.ptr44.us.i, align 1, !tbaa !24
  %idx.ext46.us.i = zext i8 %37 to i64
  %idx.neg47.us.i = sub nsw i64 0, %idx.ext46.us.i
  %add.ptr48.us.i = getelementptr inbounds i8, ptr %add.ptr16.us.i, i64 %idx.neg47.us.i
  %38 = load i8, ptr %add.ptr48.us.i, align 1, !tbaa !24
  %conv49.us.i = zext i8 %38 to i32
  %add50.us.i = add nuw nsw i32 %add43.us.i, %conv49.us.i
  %add.ptr53.us.i = getelementptr inbounds i8, ptr %add.ptr44.us.i, i64 %idx.ext36.i
  %incdec.ptr54.us.i = getelementptr inbounds nuw i8, ptr %add.ptr53.us.i, i64 1
  %39 = load i8, ptr %add.ptr53.us.i, align 1, !tbaa !24
  %idx.ext56.us.i = zext i8 %39 to i64
  %idx.neg57.us.i = sub nsw i64 0, %idx.ext56.us.i
  %add.ptr58.us.i = getelementptr inbounds i8, ptr %add.ptr16.us.i, i64 %idx.neg57.us.i
  %40 = load i8, ptr %add.ptr58.us.i, align 1, !tbaa !24
  %conv59.us.i = zext i8 %40 to i32
  %add60.us.i = add nuw nsw i32 %add50.us.i, %conv59.us.i
  %incdec.ptr61.us.i = getelementptr inbounds nuw i8, ptr %add.ptr53.us.i, i64 2
  %41 = load i8, ptr %incdec.ptr54.us.i, align 1, !tbaa !24
  %idx.ext63.us.i = zext i8 %41 to i64
  %idx.neg64.us.i = sub nsw i64 0, %idx.ext63.us.i
  %add.ptr65.us.i = getelementptr inbounds i8, ptr %add.ptr16.us.i, i64 %idx.neg64.us.i
  %42 = load i8, ptr %add.ptr65.us.i, align 1, !tbaa !24
  %conv66.us.i = zext i8 %42 to i32
  %add67.us.i = add nuw nsw i32 %add60.us.i, %conv66.us.i
  %43 = load i8, ptr %incdec.ptr61.us.i, align 1, !tbaa !24
  %idx.ext69.us.i = zext i8 %43 to i64
  %idx.neg70.us.i = sub nsw i64 0, %idx.ext69.us.i
  %add.ptr71.us.i = getelementptr inbounds i8, ptr %add.ptr16.us.i, i64 %idx.neg70.us.i
  %44 = load i8, ptr %add.ptr71.us.i, align 1, !tbaa !24
  %conv72.us.i = zext i8 %44 to i32
  %add73.us.i = add nuw nsw i32 %add67.us.i, %conv72.us.i
  %cmp74.us.i = icmp samesign ult i32 %add73.us.i, 731
  br i1 %cmp74.us.i, label %if.then.us.i, label %for.inc.us.i

if.then.us.i:                                     ; preds = %for.body7.us.i
  %sub76.us.i = sub nuw nsw i32 730, %add73.us.i
  %arrayidx80.us.i = getelementptr inbounds nuw i32, ptr %call49, i64 %27
  store i32 %sub76.us.i, ptr %arrayidx80.us.i, align 4, !tbaa !16
  br label %for.inc.us.i

for.inc.us.i:                                     ; preds = %if.then.us.i, %for.body7.us.i
  %indvars.iv.next.i56 = add nuw nsw i64 %indvars.iv.i55, 1
  %exitcond.not.i57 = icmp eq i64 %indvars.iv.next.i56, %wide.trip.count.i
  br i1 %exitcond.not.i57, label %for.cond3.for.inc81_crit_edge.us.i, label %for.body7.us.i, !llvm.loop !29

for.cond3.for.inc81_crit_edge.us.i:               ; preds = %for.inc.us.i
  %indvars.iv.next53.i = add nuw nsw i64 %indvars.iv52.i, 1
  %exitcond59.not.i = icmp eq i64 %indvars.iv.next53.i, %wide.trip.count58.i
  br i1 %exitcond59.not.i, label %if.end54, label %for.cond3.preheader.us.i, !llvm.loop !30

if.else53:                                        ; preds = %if.then50
  tail call void @susan_principle(ptr noundef %20, ptr noundef %call49, ptr noundef nonnull %add.ptr.i51, i32 noundef 2650, i32 noundef %15, i32 noundef %16)
  br label %if.end54

if.end54:                                         ; preds = %for.cond3.for.inc81_crit_edge.us.i, %for.cond3.preheader.lr.ph.i, %if.then52, %if.else53
  %cmp22.i = icmp sgt i32 %mul, 0
  br i1 %cmp22.i, label %for.body.preheader.i, label %if.end69

for.body.preheader.i:                             ; preds = %if.end54
  %45 = load i32, ptr %call49, align 4, !tbaa !16
  %wide.trip.count.i58 = zext nneg i32 %mul to i64
  %min.iters.check187 = icmp ult i32 %mul, 4
  br i1 %min.iters.check187, label %for.body.i59.preheader, label %vector.ph188

vector.ph188:                                     ; preds = %for.body.preheader.i
  %n.vec190 = and i64 %wide.trip.count.i58, 2147483644
  %broadcast.splatinsert191 = insertelement <4 x i32> poison, i32 %45, i64 0
  %broadcast.splat192 = shufflevector <4 x i32> %broadcast.splatinsert191, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body193

vector.body193:                                   ; preds = %vector.body193, %vector.ph188
  %index194 = phi i64 [ 0, %vector.ph188 ], [ %index.next198, %vector.body193 ]
  %vec.phi195 = phi <4 x i32> [ %broadcast.splat192, %vector.ph188 ], [ %48, %vector.body193 ]
  %vec.phi196 = phi <4 x i32> [ %broadcast.splat192, %vector.ph188 ], [ %47, %vector.body193 ]
  %46 = getelementptr inbounds nuw i32, ptr %call49, i64 %index194
  %wide.load197 = load <4 x i32>, ptr %46, align 4, !tbaa !16
  %47 = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load197, <4 x i32> %vec.phi196)
  %48 = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.load197, <4 x i32> %vec.phi195)
  %index.next198 = add nuw i64 %index194, 4
  %49 = icmp eq i64 %index.next198, %n.vec190
  br i1 %49, label %middle.block199, label %vector.body193, !llvm.loop !78

middle.block199:                                  ; preds = %vector.body193
  %50 = tail call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %48)
  %51 = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %47)
  %cmp.n200 = icmp eq i64 %n.vec190, %wide.trip.count.i58
  br i1 %cmp.n200, label %for.body15.preheader.i, label %for.body.i59.preheader

for.body.i59.preheader:                           ; preds = %for.body.preheader.i, %middle.block199
  %indvars.iv.i60.ph = phi i64 [ 0, %for.body.preheader.i ], [ %n.vec190, %middle.block199 ]
  %min_r.025.i.ph = phi i32 [ %45, %for.body.preheader.i ], [ %50, %middle.block199 ]
  %max_r.024.i.ph = phi i32 [ %45, %for.body.preheader.i ], [ %51, %middle.block199 ]
  br label %for.body.i59

for.body.i59:                                     ; preds = %for.body.i59.preheader, %for.body.i59
  %indvars.iv.i60 = phi i64 [ %indvars.iv.next.i61, %for.body.i59 ], [ %indvars.iv.i60.ph, %for.body.i59.preheader ]
  %min_r.025.i = phi i32 [ %min_r.1.i, %for.body.i59 ], [ %min_r.025.i.ph, %for.body.i59.preheader ]
  %max_r.024.i = phi i32 [ %spec.select.i, %for.body.i59 ], [ %max_r.024.i.ph, %for.body.i59.preheader ]
  %arrayidx2.i = getelementptr inbounds nuw i32, ptr %call49, i64 %indvars.iv.i60
  %52 = load i32, ptr %arrayidx2.i, align 4, !tbaa !16
  %spec.select.i = tail call i32 @llvm.smax.i32(i32 %52, i32 %max_r.024.i)
  %min_r.1.i = tail call i32 @llvm.smin.i32(i32 %52, i32 %min_r.025.i)
  %indvars.iv.next.i61 = add nuw nsw i64 %indvars.iv.i60, 1
  %exitcond.not.i62 = icmp eq i64 %indvars.iv.next.i61, %wide.trip.count.i58
  br i1 %exitcond.not.i62, label %for.body15.preheader.i, label %for.body.i59, !llvm.loop !79

for.body15.preheader.i:                           ; preds = %for.body.i59, %middle.block199
  %spec.select.i.lcssa = phi i32 [ %51, %middle.block199 ], [ %spec.select.i, %for.body.i59 ]
  %min_r.1.i.lcssa = phi i32 [ %50, %middle.block199 ], [ %min_r.1.i, %for.body.i59 ]
  %sub37.i = sub nsw i32 %spec.select.i.lcssa, %min_r.1.i.lcssa
  br label %for.body15.i

for.body15.i:                                     ; preds = %for.body15.i, %for.body15.preheader.i
  %indvars.iv30.i = phi i64 [ 0, %for.body15.preheader.i ], [ %indvars.iv.next31.i, %for.body15.i ]
  %arrayidx17.i = getelementptr inbounds nuw i32, ptr %call49, i64 %indvars.iv30.i
  %53 = load i32, ptr %arrayidx17.i, align 4, !tbaa !16
  %sub18.i = sub nsw i32 %53, %min_r.1.i.lcssa
  %mul.i63 = mul nsw i32 %sub18.i, 255
  %div.i64 = sdiv i32 %mul.i63, %sub37.i
  %conv.i65 = trunc i32 %div.i64 to i8
  %arrayidx20.i = getelementptr inbounds nuw i8, ptr %20, i64 %indvars.iv30.i
  store i8 %conv.i65, ptr %arrayidx20.i, align 1, !tbaa !24
  %indvars.iv.next31.i = add nuw nsw i64 %indvars.iv30.i, 1
  %exitcond34.not.i = icmp eq i64 %indvars.iv.next31.i, %wide.trip.count.i58
  br i1 %exitcond34.not.i, label %if.end69, label %for.body15.i, !llvm.loop !25

if.else56:                                        ; preds = %setup_brightness_lut.exit53
  %call59 = tail call noalias ptr @malloc(i64 noundef %conv47) #26
  tail call void @llvm.memset.p0.i64(ptr align 1 %call59, i8 100, i64 %conv47, i1 false)
  %tobool62.not = icmp eq i32 %three_by_three.0.lcssa, 0
  %54 = load ptr, ptr %in, align 8, !tbaa !18
  %55 = ptrtoint ptr %54 to i64
  br i1 %tobool62.not, label %if.else64, label %if.then63

if.then63:                                        ; preds = %if.else56
  tail call void @susan_edges_small(ptr noundef %54, ptr noundef %call49, ptr noundef %call59, ptr noundef nonnull %add.ptr.i51, i32 poison, i32 noundef %15, i32 noundef %16)
  br label %if.end65

if.else64:                                        ; preds = %if.else56
  tail call void @susan_edges(ptr noundef %54, ptr noundef %call49, ptr noundef %call59, ptr noundef nonnull %add.ptr.i51, i32 noundef 2650, i32 noundef %15, i32 noundef %16)
  br label %if.end65

if.end65:                                         ; preds = %if.else64, %if.then63
  br i1 %thin_post_proc.0.lcssa, label %if.end68, label %if.then67

if.then67:                                        ; preds = %if.end65
  tail call void @susan_thin(ptr noundef %call49, ptr noundef %call59, i32 noundef %15, i32 noundef %16)
  br label %if.end68

if.end68:                                         ; preds = %if.then67, %if.end65
  br i1 %drawing_mode.0.lcssa, label %for.cond.preheader.i, label %if.end18.i

for.cond.preheader.i:                             ; preds = %if.end68
  %cmp128.i = icmp sgt i32 %mul, 0
  br i1 %cmp128.i, label %for.body.lr.ph.i, label %edge_draw.exit

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %sub.ptr.rhs.cast.i = ptrtoint ptr %call59 to i64
  %idx.ext.i = sext i32 %15 to i64
  %idx.neg.i = sub nsw i64 0, %idx.ext.i
  %invariant.gep.i = getelementptr i8, ptr %54, i64 %idx.neg.i
  %sub.i68 = add nsw i32 %15, -2
  %idx.ext8.i = sext i32 %sub.i68 to i64
  br label %for.body.i69

for.body.i69:                                     ; preds = %if.end.i, %for.body.lr.ph.i
  %midp.030.i = phi ptr [ %call59, %for.body.lr.ph.i ], [ %incdec.ptr17.i, %if.end.i ]
  %i.029.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %if.end.i ]
  %56 = load i8, ptr %midp.030.i, align 1, !tbaa !24
  %cmp2.i = icmp ult i8 %56, 8
  br i1 %cmp2.i, label %if.then4.i, label %if.end.i

if.then4.i:                                       ; preds = %for.body.i69
  %sub.ptr.lhs.cast.i = ptrtoint ptr %midp.030.i to i64
  %sub.ptr.sub.i = sub i64 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %gep.i = getelementptr i8, ptr %invariant.gep.i, i64 %sub.ptr.sub.i
  %add.ptr6.i = getelementptr inbounds i8, ptr %gep.i, i64 -1
  store i8 -1, ptr %add.ptr6.i, align 1, !tbaa !24
  %incdec.ptr7.i = getelementptr inbounds nuw i8, ptr %gep.i, i64 1
  store i8 -1, ptr %gep.i, align 1, !tbaa !24
  store i8 -1, ptr %incdec.ptr7.i, align 1, !tbaa !24
  %add.ptr9.i = getelementptr inbounds i8, ptr %incdec.ptr7.i, i64 %idx.ext8.i
  store i8 -1, ptr %add.ptr9.i, align 1, !tbaa !24
  %incdec.ptr11.i = getelementptr inbounds nuw i8, ptr %add.ptr9.i, i64 2
  store i8 -1, ptr %incdec.ptr11.i, align 1, !tbaa !24
  %add.ptr14.i = getelementptr inbounds i8, ptr %incdec.ptr11.i, i64 %idx.ext8.i
  %incdec.ptr15.i = getelementptr inbounds nuw i8, ptr %add.ptr14.i, i64 1
  store i8 -1, ptr %add.ptr14.i, align 1, !tbaa !24
  %incdec.ptr16.i = getelementptr inbounds nuw i8, ptr %add.ptr14.i, i64 2
  store i8 -1, ptr %incdec.ptr15.i, align 1, !tbaa !24
  store i8 -1, ptr %incdec.ptr16.i, align 1, !tbaa !24
  br label %if.end.i

if.end.i:                                         ; preds = %if.then4.i, %for.body.i69
  %incdec.ptr17.i = getelementptr inbounds nuw i8, ptr %midp.030.i, i64 1
  %inc.i = add nuw nsw i32 %i.029.i, 1
  %exitcond.not.i70 = icmp eq i32 %inc.i, %mul
  br i1 %exitcond.not.i70, label %if.end18.i, label %for.body.i69, !llvm.loop !46

if.end18.i:                                       ; preds = %if.end.i, %if.end68
  %cmp2131.i = icmp sgt i32 %mul, 0
  br i1 %cmp2131.i, label %iter.check, label %edge_draw.exit

iter.check:                                       ; preds = %if.end18.i
  %sub.ptr.rhs.cast29.i = ptrtoint ptr %call59 to i64
  %57 = zext nneg i32 %mul to i64
  %min.iters.check205 = icmp ult i32 %mul, 4
  %58 = sub i64 %55, %sub.ptr.rhs.cast29.i
  %diff.check = icmp ult i64 %58, 16
  %or.cond283 = select i1 %min.iters.check205, i1 true, i1 %diff.check
  br i1 %or.cond283, label %for.body23.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check207 = icmp ult i32 %mul, 16
  br i1 %min.iters.check207, label %vec.epilog.ph, label %vector.ph208

vector.ph208:                                     ; preds = %vector.main.loop.iter.check
  %n.vec210 = and i64 %57, 2147483632
  %invariant.gep = getelementptr i8, ptr %54, i64 1
  %invariant.gep300 = getelementptr i8, ptr %54, i64 2
  %invariant.gep302 = getelementptr i8, ptr %54, i64 3
  %invariant.gep304 = getelementptr i8, ptr %54, i64 4
  %invariant.gep306 = getelementptr i8, ptr %54, i64 5
  %invariant.gep308 = getelementptr i8, ptr %54, i64 6
  %invariant.gep310 = getelementptr i8, ptr %54, i64 7
  %invariant.gep312 = getelementptr i8, ptr %54, i64 8
  %invariant.gep314 = getelementptr i8, ptr %54, i64 9
  %invariant.gep316 = getelementptr i8, ptr %54, i64 10
  %invariant.gep318 = getelementptr i8, ptr %54, i64 11
  %invariant.gep320 = getelementptr i8, ptr %54, i64 12
  %invariant.gep322 = getelementptr i8, ptr %54, i64 13
  %invariant.gep324 = getelementptr i8, ptr %54, i64 14
  %invariant.gep326 = getelementptr i8, ptr %54, i64 15
  br label %vector.body211

vector.body211:                                   ; preds = %pred.store.continue258, %vector.ph208
  %index212 = phi i64 [ 0, %vector.ph208 ], [ %index.next259, %pred.store.continue258 ]
  %next.gep = getelementptr i8, ptr %call59, i64 %index212
  %wide.load228 = load <16 x i8>, ptr %next.gep, align 1, !tbaa !24
  %59 = icmp ult <16 x i8> %wide.load228, splat (i8 8)
  %60 = extractelement <16 x i1> %59, i64 0
  br i1 %60, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body211
  %61 = getelementptr inbounds i8, ptr %54, i64 %index212
  store i8 0, ptr %61, align 1, !tbaa !24
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body211
  %62 = extractelement <16 x i1> %59, i64 1
  br i1 %62, label %pred.store.if229, label %pred.store.continue230

pred.store.if229:                                 ; preds = %pred.store.continue
  %gep = getelementptr i8, ptr %invariant.gep, i64 %index212
  store i8 0, ptr %gep, align 1, !tbaa !24
  br label %pred.store.continue230

pred.store.continue230:                           ; preds = %pred.store.if229, %pred.store.continue
  %63 = extractelement <16 x i1> %59, i64 2
  br i1 %63, label %pred.store.if231, label %pred.store.continue232

pred.store.if231:                                 ; preds = %pred.store.continue230
  %gep301 = getelementptr i8, ptr %invariant.gep300, i64 %index212
  store i8 0, ptr %gep301, align 1, !tbaa !24
  br label %pred.store.continue232

pred.store.continue232:                           ; preds = %pred.store.if231, %pred.store.continue230
  %64 = extractelement <16 x i1> %59, i64 3
  br i1 %64, label %pred.store.if233, label %pred.store.continue234

pred.store.if233:                                 ; preds = %pred.store.continue232
  %gep303 = getelementptr i8, ptr %invariant.gep302, i64 %index212
  store i8 0, ptr %gep303, align 1, !tbaa !24
  br label %pred.store.continue234

pred.store.continue234:                           ; preds = %pred.store.if233, %pred.store.continue232
  %65 = extractelement <16 x i1> %59, i64 4
  br i1 %65, label %pred.store.if235, label %pred.store.continue236

pred.store.if235:                                 ; preds = %pred.store.continue234
  %gep305 = getelementptr i8, ptr %invariant.gep304, i64 %index212
  store i8 0, ptr %gep305, align 1, !tbaa !24
  br label %pred.store.continue236

pred.store.continue236:                           ; preds = %pred.store.if235, %pred.store.continue234
  %66 = extractelement <16 x i1> %59, i64 5
  br i1 %66, label %pred.store.if237, label %pred.store.continue238

pred.store.if237:                                 ; preds = %pred.store.continue236
  %gep307 = getelementptr i8, ptr %invariant.gep306, i64 %index212
  store i8 0, ptr %gep307, align 1, !tbaa !24
  br label %pred.store.continue238

pred.store.continue238:                           ; preds = %pred.store.if237, %pred.store.continue236
  %67 = extractelement <16 x i1> %59, i64 6
  br i1 %67, label %pred.store.if239, label %pred.store.continue240

pred.store.if239:                                 ; preds = %pred.store.continue238
  %gep309 = getelementptr i8, ptr %invariant.gep308, i64 %index212
  store i8 0, ptr %gep309, align 1, !tbaa !24
  br label %pred.store.continue240

pred.store.continue240:                           ; preds = %pred.store.if239, %pred.store.continue238
  %68 = extractelement <16 x i1> %59, i64 7
  br i1 %68, label %pred.store.if241, label %pred.store.continue242

pred.store.if241:                                 ; preds = %pred.store.continue240
  %gep311 = getelementptr i8, ptr %invariant.gep310, i64 %index212
  store i8 0, ptr %gep311, align 1, !tbaa !24
  br label %pred.store.continue242

pred.store.continue242:                           ; preds = %pred.store.if241, %pred.store.continue240
  %69 = extractelement <16 x i1> %59, i64 8
  br i1 %69, label %pred.store.if243, label %pred.store.continue244

pred.store.if243:                                 ; preds = %pred.store.continue242
  %gep313 = getelementptr i8, ptr %invariant.gep312, i64 %index212
  store i8 0, ptr %gep313, align 1, !tbaa !24
  br label %pred.store.continue244

pred.store.continue244:                           ; preds = %pred.store.if243, %pred.store.continue242
  %70 = extractelement <16 x i1> %59, i64 9
  br i1 %70, label %pred.store.if245, label %pred.store.continue246

pred.store.if245:                                 ; preds = %pred.store.continue244
  %gep315 = getelementptr i8, ptr %invariant.gep314, i64 %index212
  store i8 0, ptr %gep315, align 1, !tbaa !24
  br label %pred.store.continue246

pred.store.continue246:                           ; preds = %pred.store.if245, %pred.store.continue244
  %71 = extractelement <16 x i1> %59, i64 10
  br i1 %71, label %pred.store.if247, label %pred.store.continue248

pred.store.if247:                                 ; preds = %pred.store.continue246
  %gep317 = getelementptr i8, ptr %invariant.gep316, i64 %index212
  store i8 0, ptr %gep317, align 1, !tbaa !24
  br label %pred.store.continue248

pred.store.continue248:                           ; preds = %pred.store.if247, %pred.store.continue246
  %72 = extractelement <16 x i1> %59, i64 11
  br i1 %72, label %pred.store.if249, label %pred.store.continue250

pred.store.if249:                                 ; preds = %pred.store.continue248
  %gep319 = getelementptr i8, ptr %invariant.gep318, i64 %index212
  store i8 0, ptr %gep319, align 1, !tbaa !24
  br label %pred.store.continue250

pred.store.continue250:                           ; preds = %pred.store.if249, %pred.store.continue248
  %73 = extractelement <16 x i1> %59, i64 12
  br i1 %73, label %pred.store.if251, label %pred.store.continue252

pred.store.if251:                                 ; preds = %pred.store.continue250
  %gep321 = getelementptr i8, ptr %invariant.gep320, i64 %index212
  store i8 0, ptr %gep321, align 1, !tbaa !24
  br label %pred.store.continue252

pred.store.continue252:                           ; preds = %pred.store.if251, %pred.store.continue250
  %74 = extractelement <16 x i1> %59, i64 13
  br i1 %74, label %pred.store.if253, label %pred.store.continue254

pred.store.if253:                                 ; preds = %pred.store.continue252
  %gep323 = getelementptr i8, ptr %invariant.gep322, i64 %index212
  store i8 0, ptr %gep323, align 1, !tbaa !24
  br label %pred.store.continue254

pred.store.continue254:                           ; preds = %pred.store.if253, %pred.store.continue252
  %75 = extractelement <16 x i1> %59, i64 14
  br i1 %75, label %pred.store.if255, label %pred.store.continue256

pred.store.if255:                                 ; preds = %pred.store.continue254
  %gep325 = getelementptr i8, ptr %invariant.gep324, i64 %index212
  store i8 0, ptr %gep325, align 1, !tbaa !24
  br label %pred.store.continue256

pred.store.continue256:                           ; preds = %pred.store.if255, %pred.store.continue254
  %76 = extractelement <16 x i1> %59, i64 15
  br i1 %76, label %pred.store.if257, label %pred.store.continue258

pred.store.if257:                                 ; preds = %pred.store.continue256
  %gep327 = getelementptr i8, ptr %invariant.gep326, i64 %index212
  store i8 0, ptr %gep327, align 1, !tbaa !24
  br label %pred.store.continue258

pred.store.continue258:                           ; preds = %pred.store.if257, %pred.store.continue256
  %index.next259 = add nuw i64 %index212, 16
  %77 = icmp eq i64 %index.next259, %n.vec210
  br i1 %77, label %middle.block260, label %vector.body211, !llvm.loop !80

middle.block260:                                  ; preds = %pred.store.continue258
  %cmp.n261 = icmp eq i64 %n.vec210, %57
  br i1 %cmp.n261, label %edge_draw.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block260
  %ind.end = getelementptr i8, ptr %call59, i64 %n.vec210
  %ind.end282 = trunc nuw nsw i64 %n.vec210 to i32
  %n.vec.remaining = and i64 %57, 12
  %min.epilog.iters.check = icmp eq i64 %n.vec.remaining, 0
  br i1 %min.epilog.iters.check, label %for.body23.i.preheader, label %vec.epilog.ph

vec.epilog.ph:                                    ; preds = %vec.epilog.iter.check, %vector.main.loop.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec210, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec263 = and i64 %57, 2147483644
  %78 = getelementptr i8, ptr %call59, i64 %n.vec263
  %79 = trunc nuw nsw i64 %n.vec263 to i32
  %invariant.gep328 = getelementptr i8, ptr %54, i64 1
  %invariant.gep330 = getelementptr i8, ptr %54, i64 2
  %invariant.gep332 = getelementptr i8, ptr %54, i64 3
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %pred.store.continue277, %vec.epilog.ph
  %index264 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next278, %pred.store.continue277 ]
  %next.gep265 = getelementptr i8, ptr %call59, i64 %index264
  %wide.load269 = load <4 x i8>, ptr %next.gep265, align 1, !tbaa !24
  %80 = icmp ult <4 x i8> %wide.load269, splat (i8 8)
  %81 = extractelement <4 x i1> %80, i64 0
  br i1 %81, label %pred.store.if270, label %pred.store.continue271

pred.store.if270:                                 ; preds = %vec.epilog.vector.body
  %82 = getelementptr inbounds i8, ptr %54, i64 %index264
  store i8 0, ptr %82, align 1, !tbaa !24
  br label %pred.store.continue271

pred.store.continue271:                           ; preds = %pred.store.if270, %vec.epilog.vector.body
  %83 = extractelement <4 x i1> %80, i64 1
  br i1 %83, label %pred.store.if272, label %pred.store.continue273

pred.store.if272:                                 ; preds = %pred.store.continue271
  %gep329 = getelementptr i8, ptr %invariant.gep328, i64 %index264
  store i8 0, ptr %gep329, align 1, !tbaa !24
  br label %pred.store.continue273

pred.store.continue273:                           ; preds = %pred.store.if272, %pred.store.continue271
  %84 = extractelement <4 x i1> %80, i64 2
  br i1 %84, label %pred.store.if274, label %pred.store.continue275

pred.store.if274:                                 ; preds = %pred.store.continue273
  %gep331 = getelementptr i8, ptr %invariant.gep330, i64 %index264
  store i8 0, ptr %gep331, align 1, !tbaa !24
  br label %pred.store.continue275

pred.store.continue275:                           ; preds = %pred.store.if274, %pred.store.continue273
  %85 = extractelement <4 x i1> %80, i64 3
  br i1 %85, label %pred.store.if276, label %pred.store.continue277

pred.store.if276:                                 ; preds = %pred.store.continue275
  %gep333 = getelementptr i8, ptr %invariant.gep332, i64 %index264
  store i8 0, ptr %gep333, align 1, !tbaa !24
  br label %pred.store.continue277

pred.store.continue277:                           ; preds = %pred.store.if276, %pred.store.continue275
  %index.next278 = add nuw i64 %index264, 4
  %86 = icmp eq i64 %index.next278, %n.vec263
  br i1 %86, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !81

vec.epilog.middle.block:                          ; preds = %pred.store.continue277
  %cmp.n279 = icmp eq i64 %n.vec263, %57
  br i1 %cmp.n279, label %edge_draw.exit, label %for.body23.i.preheader

for.body23.i.preheader:                           ; preds = %vec.epilog.iter.check, %vec.epilog.middle.block, %iter.check
  %midp.133.i.ph = phi ptr [ %call59, %iter.check ], [ %ind.end, %vec.epilog.iter.check ], [ %78, %vec.epilog.middle.block ]
  %i.132.i.ph = phi i32 [ 0, %iter.check ], [ %ind.end282, %vec.epilog.iter.check ], [ %79, %vec.epilog.middle.block ]
  br label %for.body23.i

for.body23.i:                                     ; preds = %for.body23.i.preheader, %if.end32.i
  %midp.133.i = phi ptr [ %incdec.ptr33.i, %if.end32.i ], [ %midp.133.i.ph, %for.body23.i.preheader ]
  %i.132.i = phi i32 [ %inc35.i, %if.end32.i ], [ %i.132.i.ph, %for.body23.i.preheader ]
  %87 = load i8, ptr %midp.133.i, align 1, !tbaa !24
  %cmp25.i = icmp ult i8 %87, 8
  br i1 %cmp25.i, label %if.then27.i, label %if.end32.i

if.then27.i:                                      ; preds = %for.body23.i
  %sub.ptr.lhs.cast28.i = ptrtoint ptr %midp.133.i to i64
  %sub.ptr.sub30.i = sub i64 %sub.ptr.lhs.cast28.i, %sub.ptr.rhs.cast29.i
  %add.ptr31.i = getelementptr inbounds i8, ptr %54, i64 %sub.ptr.sub30.i
  store i8 0, ptr %add.ptr31.i, align 1, !tbaa !24
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.then27.i, %for.body23.i
  %incdec.ptr33.i = getelementptr inbounds nuw i8, ptr %midp.133.i, i64 1
  %inc35.i = add nuw nsw i32 %i.132.i, 1
  %exitcond34.not.i67 = icmp eq i32 %inc35.i, %mul
  br i1 %exitcond34.not.i67, label %edge_draw.exit, label %for.body23.i, !llvm.loop !82

edge_draw.exit:                                   ; preds = %if.end32.i, %middle.block260, %vec.epilog.middle.block, %for.cond.preheader.i, %if.end18.i
  tail call void @free(ptr noundef %call59) #22
  br label %if.end69

if.end69:                                         ; preds = %for.body15.i, %if.end54, %edge_draw.exit
  %88 = phi ptr [ %20, %if.end54 ], [ %54, %edge_draw.exit ], [ %20, %for.body15.i ]
  tail call void @free(ptr noundef nonnull %call.i50) #22
  br label %sw.epilog86

sw.bb70:                                          ; preds = %while.end
  %89 = load i32, ptr %x_size, align 4, !tbaa !16
  %90 = load i32, ptr %y_size, align 4, !tbaa !16
  %mul71 = mul nsw i32 %90, %89
  %conv72 = sext i32 %mul71 to i64
  %mul73 = shl nsw i64 %conv72, 2
  %call74 = tail call noalias ptr @malloc(i64 noundef %mul73) #26
  %call.i72 = tail call noalias dereferenceable_or_null(516) ptr @malloc(i64 noundef 516) #26
  %add.ptr.i73 = getelementptr inbounds nuw i8, ptr %call.i72, i64 258
  br label %for.body.us.i75

for.body.us.i75:                                  ; preds = %for.body.us.i75, %sw.bb70
  %indvars.iv16.i76 = phi i64 [ %indvars.iv.next17.i86, %for.body.us.i75 ], [ -256, %sw.bb70 ]
  %91 = trunc nsw i64 %indvars.iv16.i76 to i32
  %conv.us.i77 = sitofp i32 %91 to float
  %div.us.i78 = fdiv float %conv.us.i77, %bt.0.lcssa
  %conv2.us.i79 = fpext float %div.us.i78 to double
  %mul.us.i80 = fmul double %conv2.us.i79, %conv2.us.i79
  %92 = fneg double %mul.us.i80
  %93 = fmul double %mul.us.i80, %92
  %fneg.us.i81 = fmul double %mul.us.i80, %93
  %call7.us.i82 = tail call double @exp(double noundef %fneg.us.i81) #22, !tbaa !16
  %mul8.us.i83 = fmul double %call7.us.i82, 1.000000e+02
  %conv9.us.i84 = fptoui double %mul8.us.i83 to i8
  %add.ptr10.us.i85 = getelementptr inbounds i8, ptr %add.ptr.i73, i64 %indvars.iv16.i76
  store i8 %conv9.us.i84, ptr %add.ptr10.us.i85, align 1, !tbaa !24
  %indvars.iv.next17.i86 = add nsw i64 %indvars.iv16.i76, 1
  %exitcond19.not.i87 = icmp eq i64 %indvars.iv.next17.i86, 257
  br i1 %exitcond19.not.i87, label %setup_brightness_lut.exit88, label %for.body.us.i75, !llvm.loop !26

setup_brightness_lut.exit88:                      ; preds = %for.body.us.i75
  %tobool75.not = icmp eq i32 %principle.0.lcssa, 0
  %94 = load ptr, ptr %in, align 8, !tbaa !18
  br i1 %tobool75.not, label %if.else78, label %if.then76

if.then76:                                        ; preds = %setup_brightness_lut.exit88
  tail call void @susan_principle(ptr noundef %94, ptr noundef %call74, ptr noundef nonnull %add.ptr.i73, i32 noundef 1850, i32 noundef %89, i32 noundef %90)
  %cmp22.i89 = icmp sgt i32 %mul71, 0
  br i1 %cmp22.i89, label %for.body.preheader.i90, label %if.end85

for.body.preheader.i90:                           ; preds = %if.then76
  %95 = load i32, ptr %call74, align 4, !tbaa !16
  %wide.trip.count.i91 = zext nneg i32 %mul71 to i64
  %min.iters.check = icmp ult i32 %mul71, 4
  br i1 %min.iters.check, label %for.body.i92.preheader, label %vector.ph

vector.ph:                                        ; preds = %for.body.preheader.i90
  %n.vec = and i64 %wide.trip.count.i91, 2147483644
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %95, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %98, %vector.body ]
  %vec.phi184 = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %97, %vector.body ]
  %96 = getelementptr inbounds nuw i32, ptr %call74, i64 %index
  %wide.load = load <4 x i32>, ptr %96, align 4, !tbaa !16
  %97 = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load, <4 x i32> %vec.phi184)
  %98 = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.load, <4 x i32> %vec.phi)
  %index.next = add nuw i64 %index, 4
  %99 = icmp eq i64 %index.next, %n.vec
  br i1 %99, label %middle.block, label %vector.body, !llvm.loop !83

middle.block:                                     ; preds = %vector.body
  %100 = tail call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %98)
  %101 = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %97)
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i91
  br i1 %cmp.n, label %for.body15.preheader.i101, label %for.body.i92.preheader

for.body.i92.preheader:                           ; preds = %for.body.preheader.i90, %middle.block
  %indvars.iv.i93.ph = phi i64 [ 0, %for.body.preheader.i90 ], [ %n.vec, %middle.block ]
  %min_r.025.i94.ph = phi i32 [ %95, %for.body.preheader.i90 ], [ %100, %middle.block ]
  %max_r.024.i95.ph = phi i32 [ %95, %for.body.preheader.i90 ], [ %101, %middle.block ]
  br label %for.body.i92

for.body.i92:                                     ; preds = %for.body.i92.preheader, %for.body.i92
  %indvars.iv.i93 = phi i64 [ %indvars.iv.next.i99, %for.body.i92 ], [ %indvars.iv.i93.ph, %for.body.i92.preheader ]
  %min_r.025.i94 = phi i32 [ %min_r.1.i98, %for.body.i92 ], [ %min_r.025.i94.ph, %for.body.i92.preheader ]
  %max_r.024.i95 = phi i32 [ %spec.select.i97, %for.body.i92 ], [ %max_r.024.i95.ph, %for.body.i92.preheader ]
  %arrayidx2.i96 = getelementptr inbounds nuw i32, ptr %call74, i64 %indvars.iv.i93
  %102 = load i32, ptr %arrayidx2.i96, align 4, !tbaa !16
  %spec.select.i97 = tail call i32 @llvm.smax.i32(i32 %102, i32 %max_r.024.i95)
  %min_r.1.i98 = tail call i32 @llvm.smin.i32(i32 %102, i32 %min_r.025.i94)
  %indvars.iv.next.i99 = add nuw nsw i64 %indvars.iv.i93, 1
  %exitcond.not.i100 = icmp eq i64 %indvars.iv.next.i99, %wide.trip.count.i91
  br i1 %exitcond.not.i100, label %for.body15.preheader.i101, label %for.body.i92, !llvm.loop !84

for.body15.preheader.i101:                        ; preds = %for.body.i92, %middle.block
  %spec.select.i97.lcssa = phi i32 [ %101, %middle.block ], [ %spec.select.i97, %for.body.i92 ]
  %min_r.1.i98.lcssa = phi i32 [ %100, %middle.block ], [ %min_r.1.i98, %for.body.i92 ]
  %sub37.i102 = sub nsw i32 %spec.select.i97.lcssa, %min_r.1.i98.lcssa
  br label %for.body15.i104

for.body15.i104:                                  ; preds = %for.body15.i104, %for.body15.preheader.i101
  %indvars.iv30.i105 = phi i64 [ 0, %for.body15.preheader.i101 ], [ %indvars.iv.next31.i112, %for.body15.i104 ]
  %arrayidx17.i106 = getelementptr inbounds nuw i32, ptr %call74, i64 %indvars.iv30.i105
  %103 = load i32, ptr %arrayidx17.i106, align 4, !tbaa !16
  %sub18.i107 = sub nsw i32 %103, %min_r.1.i98.lcssa
  %mul.i108 = mul nsw i32 %sub18.i107, 255
  %div.i109 = sdiv i32 %mul.i108, %sub37.i102
  %conv.i110 = trunc i32 %div.i109 to i8
  %arrayidx20.i111 = getelementptr inbounds nuw i8, ptr %94, i64 %indvars.iv30.i105
  store i8 %conv.i110, ptr %arrayidx20.i111, align 1, !tbaa !24
  %indvars.iv.next31.i112 = add nuw nsw i64 %indvars.iv30.i105, 1
  %exitcond34.not.i113 = icmp eq i64 %indvars.iv.next31.i112, %wide.trip.count.i91
  br i1 %exitcond34.not.i113, label %if.end85, label %for.body15.i104, !llvm.loop !25

if.else78:                                        ; preds = %setup_brightness_lut.exit88
  br i1 %susan_quick.0.lcssa, label %if.else81, label %if.then80

if.then80:                                        ; preds = %if.else78
  call void @susan_corners_quick(ptr noundef %94, ptr noundef %call74, ptr noundef nonnull %add.ptr.i73, i32 noundef 1850, ptr noundef nonnull %corner_list, i32 noundef %89, i32 noundef %90)
  br label %if.end83

if.else81:                                        ; preds = %if.else78
  call void @susan_corners(ptr noundef %94, ptr noundef %call74, ptr noundef nonnull %add.ptr.i73, i32 noundef 1850, ptr noundef nonnull %corner_list, i32 noundef %89, i32 noundef %90)
  br label %if.end83

if.end83:                                         ; preds = %if.else81, %if.then80
  %info26.i = getelementptr inbounds nuw i8, ptr %corner_list, i64 8
  %104 = load i32, ptr %info26.i, align 8, !tbaa !61
  %cmp.not27.i = icmp eq i32 %104, 7
  br i1 %cmp.not27.i, label %if.end85, label %while.body.lr.ph.i

while.body.lr.ph.i:                               ; preds = %if.end83
  %sub10.i = add nsw i32 %89, -2
  %idx.ext11.i = sext i32 %sub10.i to i64
  br i1 %drawing_mode.0.lcssa, label %while.body.us.i, label %while.body.i

while.body.us.i:                                  ; preds = %while.body.lr.ph.i, %while.body.us.i
  %indvars.iv32.i = phi i64 [ %indvars.iv.next33.i, %while.body.us.i ], [ 0, %while.body.lr.ph.i ]
  %arrayidx29.us.i = getelementptr inbounds nuw %struct.anon, ptr %corner_list, i64 %indvars.iv32.i
  %y.us.i = getelementptr inbounds nuw i8, ptr %arrayidx29.us.i, i64 4
  %105 = load i32, ptr %y.us.i, align 4, !tbaa !63
  %sub.us.i = add nsw i32 %105, -1
  %mul.us.i117 = mul nsw i32 %sub.us.i, %89
  %idx.ext.us.i = sext i32 %mul.us.i117 to i64
  %add.ptr.us.i118 = getelementptr inbounds i8, ptr %94, i64 %idx.ext.us.i
  %106 = load i32, ptr %arrayidx29.us.i, align 8, !tbaa !64
  %idx.ext6.us.i = sext i32 %106 to i64
  %add.ptr7.us.i = getelementptr inbounds i8, ptr %add.ptr.us.i118, i64 %idx.ext6.us.i
  %add.ptr8.us.i = getelementptr inbounds i8, ptr %add.ptr7.us.i, i64 -1
  store i8 -1, ptr %add.ptr8.us.i, align 1, !tbaa !24
  %incdec.ptr9.us.i = getelementptr inbounds nuw i8, ptr %add.ptr7.us.i, i64 1
  store i8 -1, ptr %add.ptr7.us.i, align 1, !tbaa !24
  store i8 -1, ptr %incdec.ptr9.us.i, align 1, !tbaa !24
  %add.ptr12.us.i119 = getelementptr inbounds i8, ptr %incdec.ptr9.us.i, i64 %idx.ext11.i
  %incdec.ptr13.us.i = getelementptr inbounds nuw i8, ptr %add.ptr12.us.i119, i64 1
  store i8 -1, ptr %add.ptr12.us.i119, align 1, !tbaa !24
  %incdec.ptr14.us.i = getelementptr inbounds nuw i8, ptr %add.ptr12.us.i119, i64 2
  store i8 0, ptr %incdec.ptr13.us.i, align 1, !tbaa !24
  store i8 -1, ptr %incdec.ptr14.us.i, align 1, !tbaa !24
  %add.ptr17.us.i = getelementptr inbounds i8, ptr %incdec.ptr14.us.i, i64 %idx.ext11.i
  %incdec.ptr18.us.i = getelementptr inbounds nuw i8, ptr %add.ptr17.us.i, i64 1
  store i8 -1, ptr %add.ptr17.us.i, align 1, !tbaa !24
  %incdec.ptr19.us.i = getelementptr inbounds nuw i8, ptr %add.ptr17.us.i, i64 2
  store i8 -1, ptr %incdec.ptr18.us.i, align 1, !tbaa !24
  store i8 -1, ptr %incdec.ptr19.us.i, align 1, !tbaa !24
  %indvars.iv.next33.i = add nuw nsw i64 %indvars.iv32.i, 1
  %info.us.i = getelementptr inbounds nuw %struct.anon, ptr %corner_list, i64 %indvars.iv.next33.i, i32 2
  %107 = load i32, ptr %info.us.i, align 8, !tbaa !61
  %cmp.not.us.i = icmp eq i32 %107, 7
  br i1 %cmp.not.us.i, label %if.end85, label %while.body.us.i, !llvm.loop !65

while.body.i:                                     ; preds = %while.body.lr.ph.i, %while.body.i
  %indvars.iv.i115 = phi i64 [ %indvars.iv.next.i116, %while.body.i ], [ 0, %while.body.lr.ph.i ]
  %arrayidx29.i = getelementptr inbounds nuw %struct.anon, ptr %corner_list, i64 %indvars.iv.i115
  %y22.i = getelementptr inbounds nuw i8, ptr %arrayidx29.i, i64 4
  %108 = load i32, ptr %y22.i, align 4, !tbaa !63
  %mul23.i = mul nsw i32 %108, %89
  %idx.ext24.i = sext i32 %mul23.i to i64
  %add.ptr25.i = getelementptr inbounds i8, ptr %94, i64 %idx.ext24.i
  %109 = load i32, ptr %arrayidx29.i, align 8, !tbaa !64
  %idx.ext29.i = sext i32 %109 to i64
  %add.ptr30.i = getelementptr inbounds i8, ptr %add.ptr25.i, i64 %idx.ext29.i
  store i8 0, ptr %add.ptr30.i, align 1, !tbaa !24
  %indvars.iv.next.i116 = add nuw nsw i64 %indvars.iv.i115, 1
  %info.i = getelementptr inbounds nuw %struct.anon, ptr %corner_list, i64 %indvars.iv.next.i116, i32 2
  %110 = load i32, ptr %info.i, align 8, !tbaa !61
  %cmp.not.i = icmp eq i32 %110, 7
  br i1 %cmp.not.i, label %if.end85, label %while.body.i, !llvm.loop !65

if.end85:                                         ; preds = %for.body15.i104, %while.body.i, %while.body.us.i, %if.end83, %if.then76
  tail call void @free(ptr noundef nonnull %call.i72) #22
  br label %sw.epilog86

default.unreachable179:                           ; preds = %while.end
  unreachable

sw.epilog86:                                      ; preds = %if.end85, %if.end69, %setup_brightness_lut.exit
  %call74.sink = phi ptr [ %call74, %if.end85 ], [ %call49, %if.end69 ], [ %call.i47, %setup_brightness_lut.exit ]
  %111 = phi i32 [ %90, %if.end85 ], [ %16, %if.end69 ], [ %14, %setup_brightness_lut.exit ]
  %112 = phi i32 [ %89, %if.end85 ], [ %15, %if.end69 ], [ %13, %setup_brightness_lut.exit ]
  %113 = phi ptr [ %94, %if.end85 ], [ %88, %if.end69 ], [ %12, %setup_brightness_lut.exit ]
  tail call void @free(ptr noundef %call74.sink) #22
  %arrayidx87 = getelementptr inbounds nuw i8, ptr %argv, i64 16
  %114 = load ptr, ptr %arrayidx87, align 8, !tbaa !18
  tail call void @put_image(ptr noundef %114, ptr noundef %113, i32 noundef %112, i32 noundef %111)
  tail call void @free(ptr noundef %113) #22
  call void @llvm.lifetime.end.p0(i64 360000, ptr nonnull %corner_list) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y_size) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x_size) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %in) #22
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr noundef captures(none), i32 noundef) local_unnamed_addr #19

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr noundef captures(none)) local_unnamed_addr #19

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smin.v4i32(<4 x i32>, <4 x i32>) #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smin.v4i32(<4 x i32>) #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smax.v4i32(<4 x i32>) #21

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #15 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #18 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree nounwind }
attributes #21 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { nounwind }
attributes #23 = { cold }
attributes #24 = { noreturn nounwind }
attributes #25 = { cold nounwind }
attributes #26 = { nounwind allocsize(0) }
attributes #27 = { cold noreturn nounwind }

!llvm.ident = !{!0, !0}
!llvm.module.flags = !{!1, !2, !3, !4}

!0 = !{!"clang version 21.1.8 (https://github.com/llvm/llvm-project.git 2078da43e25a4623cab2d0d60decddf709aaea28)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!6, !6, i64 0}
!6 = !{!"p1 _ZTS8_IO_FILE", !7, i64 0}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !11, i64 0}
!11 = !{!"long", !8, i64 0}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.unroll.disable"}
!14 = distinct !{!14, !13}
!15 = distinct !{!15, !13}
!16 = !{!17, !17, i64 0}
!17 = !{!"int", !8, i64 0}
!18 = !{!19, !19, i64 0}
!19 = !{!"p1 omnipotent char", !7, i64 0}
!20 = distinct !{!20, !13, !21, !22}
!21 = !{!"llvm.loop.isvectorized", i32 1}
!22 = !{!"llvm.loop.unroll.runtime.disable"}
!23 = distinct !{!23, !13, !21}
!24 = !{!8, !8, i64 0}
!25 = distinct !{!25, !13}
!26 = distinct !{!26, !13}
!27 = distinct !{!27, !13}
!28 = distinct !{!28, !13}
!29 = distinct !{!29, !13}
!30 = distinct !{!30, !13}
!31 = distinct !{!31, !13}
!32 = distinct !{!32, !13}
!33 = distinct !{!33, !13}
!34 = distinct !{!34, !13}
!35 = distinct !{!35, !13}
!36 = distinct !{!36, !13}
!37 = distinct !{!37, !13}
!38 = distinct !{!38, !13}
!39 = distinct !{!39, !13}
!40 = distinct !{!40, !13}
!41 = distinct !{!41, !13}
!42 = distinct !{!42, !13}
!43 = distinct !{!43, !13}
!44 = distinct !{!44, !13, !45}
!45 = !{!"llvm.loop.unswitch.partial.disable"}
!46 = distinct !{!46, !13}
!47 = distinct !{!47, !13, !21, !22}
!48 = distinct !{!48, !13, !21, !22}
!49 = distinct !{!49, !13, !21}
!50 = distinct !{!50, !13}
!51 = distinct !{!51, !13}
!52 = distinct !{!52, !13}
!53 = distinct !{!53, !13}
!54 = distinct !{!54, !13}
!55 = distinct !{!55, !13}
!56 = distinct !{!56, !13}
!57 = distinct !{!57, !13}
!58 = distinct !{!58, !13}
!59 = distinct !{!59, !13}
!60 = distinct !{!60, !13}
!61 = !{!62, !17, i64 8}
!62 = !{!"", !17, i64 0, !17, i64 4, !17, i64 8, !17, i64 12, !17, i64 16, !17, i64 20}
!63 = !{!62, !17, i64 4}
!64 = !{!62, !17, i64 0}
!65 = distinct !{!65, !13}
!66 = distinct !{!66, !13}
!67 = distinct !{!67, !13}
!68 = !{!62, !17, i64 12}
!69 = !{!62, !17, i64 16}
!70 = !{!62, !17, i64 20}
!71 = distinct !{!71, !13}
!72 = distinct !{!72, !13}
!73 = distinct !{!73, !13}
!74 = distinct !{!74, !13}
!75 = distinct !{!75, !13}
!76 = distinct !{!76, !13}
!77 = distinct !{!77, !13}
!78 = distinct !{!78, !13, !21, !22}
!79 = distinct !{!79, !13, !21}
!80 = distinct !{!80, !13, !21, !22}
!81 = distinct !{!81, !13, !21, !22}
!82 = distinct !{!82, !13, !21}
!83 = distinct !{!83, !13, !21, !22}
!84 = distinct !{!84, !13, !21}
