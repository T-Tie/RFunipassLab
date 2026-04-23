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
  br label %for.cond

for.cond:                                         ; preds = %for.body, %if.end
  %loop_wrap1.0 = phi i64 [ 0, %if.end ], [ %inc, %for.body ]
  %2 = load i64, ptr %loop_wrap2, align 8, !tbaa !10
  %cmp4 = icmp slt i64 %loop_wrap1.0, %2
  br i1 %cmp4, label %for.body, label %cleanup

for.body:                                         ; preds = %for.cond
  call void @main1(i32 noundef %argc, ptr noundef %argv)
  %inc = add nuw nsw i64 %loop_wrap1.0, 1
  br label %for.cond, !llvm.loop !12

cleanup:                                          ; preds = %for.cond, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ 0, %for.cond ]
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
  %0 = load i32, ptr %r, align 4, !tbaa !16
  %smax = tail call i32 @llvm.smax.i32(i32 %size, i32 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %max_r.0 = phi i32 [ %spec.select, %for.body ], [ %0, %entry ]
  %min_r.0 = phi i32 [ %min_r.1, %for.body ], [ %0, %entry ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %arrayidx2 = getelementptr inbounds nuw i32, ptr %r, i64 %indvars.iv
  %1 = load i32, ptr %arrayidx2, align 4, !tbaa !16
  %spec.select = tail call i32 @llvm.smax.i32(i32 %1, i32 %max_r.0)
  %min_r.1 = tail call i32 @llvm.smin.i32(i32 %1, i32 %min_r.0)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !20

for.end:                                          ; preds = %for.cond
  %sub = sub nsw i32 %max_r.0, %min_r.0
  br label %for.cond13

for.cond13:                                       ; preds = %for.body15, %for.end
  %indvars.iv23 = phi i64 [ %indvars.iv.next24, %for.body15 ], [ 0, %for.end ]
  %exitcond27.not = icmp eq i64 %indvars.iv23, %wide.trip.count
  br i1 %exitcond27.not, label %for.end23, label %for.body15

for.body15:                                       ; preds = %for.cond13
  %arrayidx17 = getelementptr inbounds nuw i32, ptr %r, i64 %indvars.iv23
  %2 = load i32, ptr %arrayidx17, align 4, !tbaa !16
  %sub18 = sub nsw i32 %2, %min_r.0
  %mul = mul nsw i32 %sub18, 255
  %div = sdiv i32 %mul, %sub
  %conv = trunc i32 %div to i8
  %arrayidx20 = getelementptr inbounds nuw i8, ptr %in, i64 %indvars.iv23
  store i8 %conv, ptr %arrayidx20, align 1, !tbaa !21
  %indvars.iv.next24 = add nuw nsw i64 %indvars.iv23, 1
  br label %for.cond13, !llvm.loop !22

for.end23:                                        ; preds = %for.cond13
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
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ -256, %entry ]
  %exitcond.not = icmp eq i64 %indvars.iv, 257
  br i1 %exitcond.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %0 = trunc nsw i64 %indvars.iv to i32
  %conv = sitofp i32 %0 to float
  %div = fdiv float %conv, %conv1
  %conv2 = fpext float %div to double
  %mul = fmul double %conv2, %conv2
  %mul5 = fmul double %mul, %mul
  %mul6 = fmul double %mul, %mul5
  %temp.0 = select i1 %cmp3, double %mul6, double %mul
  %fneg = fneg double %temp.0
  %call7 = tail call double @exp(double noundef %fneg) #22, !tbaa !16
  %mul8 = fmul double %call7, 1.000000e+02
  %conv9 = fptoui double %mul8 to i8
  %1 = load ptr, ptr %bp, align 8, !tbaa !18
  %add.ptr10 = getelementptr inbounds i8, ptr %1, i64 %indvars.iv
  store i8 %conv9, ptr %add.ptr10, align 1, !tbaa !21
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !23

for.end:                                          ; preds = %for.cond
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
  %sub4 = add i32 %x_size, -3
  %idx.ext36 = sext i32 %sub4 to i64
  %sub72 = add nsw i32 %x_size, -5
  %idx.ext73 = sext i32 %sub72 to i64
  %sub123 = add nsw i32 %x_size, -6
  %idx.ext124 = sext i32 %sub123 to i64
  %smax = tail call i32 @llvm.smax.i32(i32 %sub4, i32 3)
  %0 = sext i32 %x_size to i64
  %1 = tail call i32 @llvm.smax.i32(i32 %y_size, i32 6)
  %smax145 = add nsw i32 %1, -3
  %wide.trip.count146 = zext nneg i32 %smax145 to i64
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond

for.cond:                                         ; preds = %for.inc285, %entry
  %indvars.iv139 = phi i64 [ %indvars.iv.next140, %for.inc285 ], [ 3, %entry ]
  %exitcond147.not = icmp eq i64 %indvars.iv139, %wide.trip.count146
  br i1 %exitcond147.not, label %for.end287, label %for.cond3.preheader

for.cond3.preheader:                              ; preds = %for.cond
  %2 = add nsw i64 %indvars.iv139, -3
  %3 = mul nsw i64 %2, %0
  %add.ptr = getelementptr inbounds i8, ptr %in, i64 %3
  %4 = mul nsw i64 %indvars.iv139, %0
  br label %for.cond3

for.cond3:                                        ; preds = %for.cond3.preheader, %for.inc
  %indvars.iv = phi i64 [ 3, %for.cond3.preheader ], [ %indvars.iv.next, %for.inc ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.inc285, label %for.body7

for.body7:                                        ; preds = %for.cond3
  %add.ptr11 = getelementptr inbounds nuw i8, ptr %add.ptr, i64 %indvars.iv
  %add.ptr12 = getelementptr inbounds i8, ptr %add.ptr11, i64 -1
  %5 = add nsw i64 %indvars.iv, %4
  %arrayidx = getelementptr inbounds i8, ptr %in, i64 %5
  %6 = load i8, ptr %arrayidx, align 1, !tbaa !21
  %idx.ext15 = zext i8 %6 to i64
  %add.ptr16 = getelementptr inbounds nuw i8, ptr %bp, i64 %idx.ext15
  %7 = load i8, ptr %add.ptr12, align 1, !tbaa !21
  %idx.ext18 = zext i8 %7 to i64
  %idx.neg = sub nsw i64 0, %idx.ext18
  %add.ptr19 = getelementptr inbounds i8, ptr %add.ptr16, i64 %idx.neg
  %8 = load i8, ptr %add.ptr19, align 1, !tbaa !21
  %conv20 = zext i8 %8 to i32
  %add21 = add nuw nsw i32 %conv20, 100
  %incdec.ptr22 = getelementptr inbounds nuw i8, ptr %add.ptr11, i64 1
  %9 = load i8, ptr %add.ptr11, align 1, !tbaa !21
  %idx.ext24 = zext i8 %9 to i64
  %idx.neg25 = sub nsw i64 0, %idx.ext24
  %add.ptr26 = getelementptr inbounds i8, ptr %add.ptr16, i64 %idx.neg25
  %10 = load i8, ptr %add.ptr26, align 1, !tbaa !21
  %conv27 = zext i8 %10 to i32
  %add28 = add nuw nsw i32 %add21, %conv27
  %11 = load i8, ptr %incdec.ptr22, align 1, !tbaa !21
  %idx.ext30 = zext i8 %11 to i64
  %idx.neg31 = sub nsw i64 0, %idx.ext30
  %add.ptr32 = getelementptr inbounds i8, ptr %add.ptr16, i64 %idx.neg31
  %12 = load i8, ptr %add.ptr32, align 1, !tbaa !21
  %conv33 = zext i8 %12 to i32
  %add34 = add nuw nsw i32 %add28, %conv33
  %add.ptr37 = getelementptr inbounds i8, ptr %incdec.ptr22, i64 %idx.ext36
  %incdec.ptr38 = getelementptr inbounds nuw i8, ptr %add.ptr37, i64 1
  %13 = load i8, ptr %add.ptr37, align 1, !tbaa !21
  %idx.ext40 = zext i8 %13 to i64
  %idx.neg41 = sub nsw i64 0, %idx.ext40
  %add.ptr42 = getelementptr inbounds i8, ptr %add.ptr16, i64 %idx.neg41
  %14 = load i8, ptr %add.ptr42, align 1, !tbaa !21
  %conv43 = zext i8 %14 to i32
  %add44 = add nuw nsw i32 %add34, %conv43
  %incdec.ptr45 = getelementptr inbounds nuw i8, ptr %add.ptr37, i64 2
  %15 = load i8, ptr %incdec.ptr38, align 1, !tbaa !21
  %idx.ext47 = zext i8 %15 to i64
  %idx.neg48 = sub nsw i64 0, %idx.ext47
  %add.ptr49 = getelementptr inbounds i8, ptr %add.ptr16, i64 %idx.neg48
  %16 = load i8, ptr %add.ptr49, align 1, !tbaa !21
  %conv50 = zext i8 %16 to i32
  %add51 = add nuw nsw i32 %add44, %conv50
  %incdec.ptr52 = getelementptr inbounds nuw i8, ptr %add.ptr37, i64 3
  %17 = load i8, ptr %incdec.ptr45, align 1, !tbaa !21
  %idx.ext54 = zext i8 %17 to i64
  %idx.neg55 = sub nsw i64 0, %idx.ext54
  %add.ptr56 = getelementptr inbounds i8, ptr %add.ptr16, i64 %idx.neg55
  %18 = load i8, ptr %add.ptr56, align 1, !tbaa !21
  %conv57 = zext i8 %18 to i32
  %add58 = add nuw nsw i32 %add51, %conv57
  %incdec.ptr59 = getelementptr inbounds nuw i8, ptr %add.ptr37, i64 4
  %19 = load i8, ptr %incdec.ptr52, align 1, !tbaa !21
  %idx.ext61 = zext i8 %19 to i64
  %idx.neg62 = sub nsw i64 0, %idx.ext61
  %add.ptr63 = getelementptr inbounds i8, ptr %add.ptr16, i64 %idx.neg62
  %20 = load i8, ptr %add.ptr63, align 1, !tbaa !21
  %conv64 = zext i8 %20 to i32
  %add65 = add nuw nsw i32 %add58, %conv64
  %21 = load i8, ptr %incdec.ptr59, align 1, !tbaa !21
  %idx.ext67 = zext i8 %21 to i64
  %idx.neg68 = sub nsw i64 0, %idx.ext67
  %add.ptr69 = getelementptr inbounds i8, ptr %add.ptr16, i64 %idx.neg68
  %22 = load i8, ptr %add.ptr69, align 1, !tbaa !21
  %conv70 = zext i8 %22 to i32
  %add71 = add nuw nsw i32 %add65, %conv70
  %add.ptr74 = getelementptr inbounds i8, ptr %incdec.ptr59, i64 %idx.ext73
  %incdec.ptr75 = getelementptr inbounds nuw i8, ptr %add.ptr74, i64 1
  %23 = load i8, ptr %add.ptr74, align 1, !tbaa !21
  %idx.ext77 = zext i8 %23 to i64
  %idx.neg78 = sub nsw i64 0, %idx.ext77
  %add.ptr79 = getelementptr inbounds i8, ptr %add.ptr16, i64 %idx.neg78
  %24 = load i8, ptr %add.ptr79, align 1, !tbaa !21
  %conv80 = zext i8 %24 to i32
  %add81 = add nuw nsw i32 %add71, %conv80
  %incdec.ptr82 = getelementptr inbounds nuw i8, ptr %add.ptr74, i64 2
  %25 = load i8, ptr %incdec.ptr75, align 1, !tbaa !21
  %idx.ext84 = zext i8 %25 to i64
  %idx.neg85 = sub nsw i64 0, %idx.ext84
  %add.ptr86 = getelementptr inbounds i8, ptr %add.ptr16, i64 %idx.neg85
  %26 = load i8, ptr %add.ptr86, align 1, !tbaa !21
  %conv87 = zext i8 %26 to i32
  %add88 = add nuw nsw i32 %add81, %conv87
  %incdec.ptr89 = getelementptr inbounds nuw i8, ptr %add.ptr74, i64 3
  %27 = load i8, ptr %incdec.ptr82, align 1, !tbaa !21
  %idx.ext91 = zext i8 %27 to i64
  %idx.neg92 = sub nsw i64 0, %idx.ext91
  %add.ptr93 = getelementptr inbounds i8, ptr %add.ptr16, i64 %idx.neg92
  %28 = load i8, ptr %add.ptr93, align 1, !tbaa !21
  %conv94 = zext i8 %28 to i32
  %add95 = add nuw nsw i32 %add88, %conv94
  %incdec.ptr96 = getelementptr inbounds nuw i8, ptr %add.ptr74, i64 4
  %29 = load i8, ptr %incdec.ptr89, align 1, !tbaa !21
  %idx.ext98 = zext i8 %29 to i64
  %idx.neg99 = sub nsw i64 0, %idx.ext98
  %add.ptr100 = getelementptr inbounds i8, ptr %add.ptr16, i64 %idx.neg99
  %30 = load i8, ptr %add.ptr100, align 1, !tbaa !21
  %conv101 = zext i8 %30 to i32
  %add102 = add nuw nsw i32 %add95, %conv101
  %incdec.ptr103 = getelementptr inbounds nuw i8, ptr %add.ptr74, i64 5
  %31 = load i8, ptr %incdec.ptr96, align 1, !tbaa !21
  %idx.ext105 = zext i8 %31 to i64
  %idx.neg106 = sub nsw i64 0, %idx.ext105
  %add.ptr107 = getelementptr inbounds i8, ptr %add.ptr16, i64 %idx.neg106
  %32 = load i8, ptr %add.ptr107, align 1, !tbaa !21
  %conv108 = zext i8 %32 to i32
  %add109 = add nuw nsw i32 %add102, %conv108
  %incdec.ptr110 = getelementptr inbounds nuw i8, ptr %add.ptr74, i64 6
  %33 = load i8, ptr %incdec.ptr103, align 1, !tbaa !21
  %idx.ext112 = zext i8 %33 to i64
  %idx.neg113 = sub nsw i64 0, %idx.ext112
  %add.ptr114 = getelementptr inbounds i8, ptr %add.ptr16, i64 %idx.neg113
  %34 = load i8, ptr %add.ptr114, align 1, !tbaa !21
  %conv115 = zext i8 %34 to i32
  %add116 = add nuw nsw i32 %add109, %conv115
  %35 = load i8, ptr %incdec.ptr110, align 1, !tbaa !21
  %idx.ext118 = zext i8 %35 to i64
  %idx.neg119 = sub nsw i64 0, %idx.ext118
  %add.ptr120 = getelementptr inbounds i8, ptr %add.ptr16, i64 %idx.neg119
  %36 = load i8, ptr %add.ptr120, align 1, !tbaa !21
  %conv121 = zext i8 %36 to i32
  %add122 = add nuw nsw i32 %add116, %conv121
  %add.ptr125 = getelementptr inbounds i8, ptr %incdec.ptr110, i64 %idx.ext124
  %incdec.ptr126 = getelementptr inbounds nuw i8, ptr %add.ptr125, i64 1
  %37 = load i8, ptr %add.ptr125, align 1, !tbaa !21
  %idx.ext128 = zext i8 %37 to i64
  %idx.neg129 = sub nsw i64 0, %idx.ext128
  %add.ptr130 = getelementptr inbounds i8, ptr %add.ptr16, i64 %idx.neg129
  %38 = load i8, ptr %add.ptr130, align 1, !tbaa !21
  %conv131 = zext i8 %38 to i32
  %add132 = add nuw nsw i32 %add122, %conv131
  %incdec.ptr133 = getelementptr inbounds nuw i8, ptr %add.ptr125, i64 2
  %39 = load i8, ptr %incdec.ptr126, align 1, !tbaa !21
  %idx.ext135 = zext i8 %39 to i64
  %idx.neg136 = sub nsw i64 0, %idx.ext135
  %add.ptr137 = getelementptr inbounds i8, ptr %add.ptr16, i64 %idx.neg136
  %40 = load i8, ptr %add.ptr137, align 1, !tbaa !21
  %conv138 = zext i8 %40 to i32
  %add139 = add nuw nsw i32 %add132, %conv138
  %41 = load i8, ptr %incdec.ptr133, align 1, !tbaa !21
  %idx.ext141 = zext i8 %41 to i64
  %idx.neg142 = sub nsw i64 0, %idx.ext141
  %add.ptr143 = getelementptr inbounds i8, ptr %add.ptr16, i64 %idx.neg142
  %42 = load i8, ptr %add.ptr143, align 1, !tbaa !21
  %conv144 = zext i8 %42 to i32
  %add145 = add nuw nsw i32 %add139, %conv144
  %add.ptr146 = getelementptr inbounds nuw i8, ptr %add.ptr125, i64 4
  %incdec.ptr147 = getelementptr inbounds nuw i8, ptr %add.ptr125, i64 5
  %43 = load i8, ptr %add.ptr146, align 1, !tbaa !21
  %idx.ext149 = zext i8 %43 to i64
  %idx.neg150 = sub nsw i64 0, %idx.ext149
  %add.ptr151 = getelementptr inbounds i8, ptr %add.ptr16, i64 %idx.neg150
  %44 = load i8, ptr %add.ptr151, align 1, !tbaa !21
  %conv152 = zext i8 %44 to i32
  %add153 = add nuw nsw i32 %add145, %conv152
  %incdec.ptr154 = getelementptr inbounds nuw i8, ptr %add.ptr125, i64 6
  %45 = load i8, ptr %incdec.ptr147, align 1, !tbaa !21
  %idx.ext156 = zext i8 %45 to i64
  %idx.neg157 = sub nsw i64 0, %idx.ext156
  %add.ptr158 = getelementptr inbounds i8, ptr %add.ptr16, i64 %idx.neg157
  %46 = load i8, ptr %add.ptr158, align 1, !tbaa !21
  %conv159 = zext i8 %46 to i32
  %add160 = add nuw nsw i32 %add153, %conv159
  %47 = load i8, ptr %incdec.ptr154, align 1, !tbaa !21
  %idx.ext162 = zext i8 %47 to i64
  %idx.neg163 = sub nsw i64 0, %idx.ext162
  %add.ptr164 = getelementptr inbounds i8, ptr %add.ptr16, i64 %idx.neg163
  %48 = load i8, ptr %add.ptr164, align 1, !tbaa !21
  %conv165 = zext i8 %48 to i32
  %add166 = add nuw nsw i32 %add160, %conv165
  %add.ptr169 = getelementptr inbounds i8, ptr %incdec.ptr154, i64 %idx.ext124
  %incdec.ptr170 = getelementptr inbounds nuw i8, ptr %add.ptr169, i64 1
  %49 = load i8, ptr %add.ptr169, align 1, !tbaa !21
  %idx.ext172 = zext i8 %49 to i64
  %idx.neg173 = sub nsw i64 0, %idx.ext172
  %add.ptr174 = getelementptr inbounds i8, ptr %add.ptr16, i64 %idx.neg173
  %50 = load i8, ptr %add.ptr174, align 1, !tbaa !21
  %conv175 = zext i8 %50 to i32
  %add176 = add nuw nsw i32 %add166, %conv175
  %incdec.ptr177 = getelementptr inbounds nuw i8, ptr %add.ptr169, i64 2
  %51 = load i8, ptr %incdec.ptr170, align 1, !tbaa !21
  %idx.ext179 = zext i8 %51 to i64
  %idx.neg180 = sub nsw i64 0, %idx.ext179
  %add.ptr181 = getelementptr inbounds i8, ptr %add.ptr16, i64 %idx.neg180
  %52 = load i8, ptr %add.ptr181, align 1, !tbaa !21
  %conv182 = zext i8 %52 to i32
  %add183 = add nuw nsw i32 %add176, %conv182
  %incdec.ptr184 = getelementptr inbounds nuw i8, ptr %add.ptr169, i64 3
  %53 = load i8, ptr %incdec.ptr177, align 1, !tbaa !21
  %idx.ext186 = zext i8 %53 to i64
  %idx.neg187 = sub nsw i64 0, %idx.ext186
  %add.ptr188 = getelementptr inbounds i8, ptr %add.ptr16, i64 %idx.neg187
  %54 = load i8, ptr %add.ptr188, align 1, !tbaa !21
  %conv189 = zext i8 %54 to i32
  %add190 = add nuw nsw i32 %add183, %conv189
  %incdec.ptr191 = getelementptr inbounds nuw i8, ptr %add.ptr169, i64 4
  %55 = load i8, ptr %incdec.ptr184, align 1, !tbaa !21
  %idx.ext193 = zext i8 %55 to i64
  %idx.neg194 = sub nsw i64 0, %idx.ext193
  %add.ptr195 = getelementptr inbounds i8, ptr %add.ptr16, i64 %idx.neg194
  %56 = load i8, ptr %add.ptr195, align 1, !tbaa !21
  %conv196 = zext i8 %56 to i32
  %add197 = add nuw nsw i32 %add190, %conv196
  %incdec.ptr198 = getelementptr inbounds nuw i8, ptr %add.ptr169, i64 5
  %57 = load i8, ptr %incdec.ptr191, align 1, !tbaa !21
  %idx.ext200 = zext i8 %57 to i64
  %idx.neg201 = sub nsw i64 0, %idx.ext200
  %add.ptr202 = getelementptr inbounds i8, ptr %add.ptr16, i64 %idx.neg201
  %58 = load i8, ptr %add.ptr202, align 1, !tbaa !21
  %conv203 = zext i8 %58 to i32
  %add204 = add nuw nsw i32 %add197, %conv203
  %incdec.ptr205 = getelementptr inbounds nuw i8, ptr %add.ptr169, i64 6
  %59 = load i8, ptr %incdec.ptr198, align 1, !tbaa !21
  %idx.ext207 = zext i8 %59 to i64
  %idx.neg208 = sub nsw i64 0, %idx.ext207
  %add.ptr209 = getelementptr inbounds i8, ptr %add.ptr16, i64 %idx.neg208
  %60 = load i8, ptr %add.ptr209, align 1, !tbaa !21
  %conv210 = zext i8 %60 to i32
  %add211 = add nuw nsw i32 %add204, %conv210
  %61 = load i8, ptr %incdec.ptr205, align 1, !tbaa !21
  %idx.ext213 = zext i8 %61 to i64
  %idx.neg214 = sub nsw i64 0, %idx.ext213
  %add.ptr215 = getelementptr inbounds i8, ptr %add.ptr16, i64 %idx.neg214
  %62 = load i8, ptr %add.ptr215, align 1, !tbaa !21
  %conv216 = zext i8 %62 to i32
  %add217 = add nuw nsw i32 %add211, %conv216
  %add.ptr220 = getelementptr inbounds i8, ptr %incdec.ptr205, i64 %idx.ext73
  %incdec.ptr221 = getelementptr inbounds nuw i8, ptr %add.ptr220, i64 1
  %63 = load i8, ptr %add.ptr220, align 1, !tbaa !21
  %idx.ext223 = zext i8 %63 to i64
  %idx.neg224 = sub nsw i64 0, %idx.ext223
  %add.ptr225 = getelementptr inbounds i8, ptr %add.ptr16, i64 %idx.neg224
  %64 = load i8, ptr %add.ptr225, align 1, !tbaa !21
  %conv226 = zext i8 %64 to i32
  %add227 = add nuw nsw i32 %add217, %conv226
  %incdec.ptr228 = getelementptr inbounds nuw i8, ptr %add.ptr220, i64 2
  %65 = load i8, ptr %incdec.ptr221, align 1, !tbaa !21
  %idx.ext230 = zext i8 %65 to i64
  %idx.neg231 = sub nsw i64 0, %idx.ext230
  %add.ptr232 = getelementptr inbounds i8, ptr %add.ptr16, i64 %idx.neg231
  %66 = load i8, ptr %add.ptr232, align 1, !tbaa !21
  %conv233 = zext i8 %66 to i32
  %add234 = add nuw nsw i32 %add227, %conv233
  %incdec.ptr235 = getelementptr inbounds nuw i8, ptr %add.ptr220, i64 3
  %67 = load i8, ptr %incdec.ptr228, align 1, !tbaa !21
  %idx.ext237 = zext i8 %67 to i64
  %idx.neg238 = sub nsw i64 0, %idx.ext237
  %add.ptr239 = getelementptr inbounds i8, ptr %add.ptr16, i64 %idx.neg238
  %68 = load i8, ptr %add.ptr239, align 1, !tbaa !21
  %conv240 = zext i8 %68 to i32
  %add241 = add nuw nsw i32 %add234, %conv240
  %incdec.ptr242 = getelementptr inbounds nuw i8, ptr %add.ptr220, i64 4
  %69 = load i8, ptr %incdec.ptr235, align 1, !tbaa !21
  %idx.ext244 = zext i8 %69 to i64
  %idx.neg245 = sub nsw i64 0, %idx.ext244
  %add.ptr246 = getelementptr inbounds i8, ptr %add.ptr16, i64 %idx.neg245
  %70 = load i8, ptr %add.ptr246, align 1, !tbaa !21
  %conv247 = zext i8 %70 to i32
  %add248 = add nuw nsw i32 %add241, %conv247
  %71 = load i8, ptr %incdec.ptr242, align 1, !tbaa !21
  %idx.ext250 = zext i8 %71 to i64
  %idx.neg251 = sub nsw i64 0, %idx.ext250
  %add.ptr252 = getelementptr inbounds i8, ptr %add.ptr16, i64 %idx.neg251
  %72 = load i8, ptr %add.ptr252, align 1, !tbaa !21
  %conv253 = zext i8 %72 to i32
  %add254 = add nuw nsw i32 %add248, %conv253
  %add.ptr257 = getelementptr inbounds i8, ptr %incdec.ptr242, i64 %idx.ext36
  %incdec.ptr258 = getelementptr inbounds nuw i8, ptr %add.ptr257, i64 1
  %73 = load i8, ptr %add.ptr257, align 1, !tbaa !21
  %idx.ext260 = zext i8 %73 to i64
  %idx.neg261 = sub nsw i64 0, %idx.ext260
  %add.ptr262 = getelementptr inbounds i8, ptr %add.ptr16, i64 %idx.neg261
  %74 = load i8, ptr %add.ptr262, align 1, !tbaa !21
  %conv263 = zext i8 %74 to i32
  %add264 = add nuw nsw i32 %add254, %conv263
  %incdec.ptr265 = getelementptr inbounds nuw i8, ptr %add.ptr257, i64 2
  %75 = load i8, ptr %incdec.ptr258, align 1, !tbaa !21
  %idx.ext267 = zext i8 %75 to i64
  %idx.neg268 = sub nsw i64 0, %idx.ext267
  %add.ptr269 = getelementptr inbounds i8, ptr %add.ptr16, i64 %idx.neg268
  %76 = load i8, ptr %add.ptr269, align 1, !tbaa !21
  %conv270 = zext i8 %76 to i32
  %add271 = add nuw nsw i32 %add264, %conv270
  %77 = load i8, ptr %incdec.ptr265, align 1, !tbaa !21
  %idx.ext273 = zext i8 %77 to i64
  %idx.neg274 = sub nsw i64 0, %idx.ext273
  %add.ptr275 = getelementptr inbounds i8, ptr %add.ptr16, i64 %idx.neg274
  %78 = load i8, ptr %add.ptr275, align 1, !tbaa !21
  %conv276 = zext i8 %78 to i32
  %add277 = add nuw nsw i32 %add271, %conv276
  %cmp278.not = icmp sgt i32 %add277, %max_no
  br i1 %cmp278.not, label %for.inc, label %if.then

if.then:                                          ; preds = %for.body7
  %sub280 = sub nsw i32 %max_no, %add277
  %arrayidx284 = getelementptr inbounds i32, ptr %r, i64 %5
  store i32 %sub280, ptr %arrayidx284, align 4, !tbaa !16
  br label %for.inc

for.inc:                                          ; preds = %for.body7, %if.then
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond3, !llvm.loop !24

for.inc285:                                       ; preds = %for.cond3
  %indvars.iv.next140 = add nuw nsw i64 %indvars.iv139, 1
  br label %for.cond, !llvm.loop !25

for.end287:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #14

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @susan_principle_small(ptr noundef readonly captures(none) %in, ptr noundef writeonly captures(none) %r, ptr noundef readonly captures(none) %bp, i32 %max_no, i32 noundef %x_size, i32 noundef %y_size) local_unnamed_addr #8 {
entry:
  %mul = mul nsw i32 %y_size, %x_size
  %conv = sext i32 %mul to i64
  %mul1 = shl nsw i64 %conv, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %r, i8 0, i64 %mul1, i1 false)
  %sub4 = add i32 %x_size, -1
  %sub35 = add nsw i32 %x_size, -2
  %idx.ext36 = sext i32 %sub35 to i64
  %smax = tail call i32 @llvm.smax.i32(i32 %sub4, i32 1)
  %0 = sext i32 %x_size to i64
  %1 = tail call i32 @llvm.smax.i32(i32 %y_size, i32 2)
  %smax53 = add nsw i32 %1, -1
  %wide.trip.count54 = zext nneg i32 %smax53 to i64
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond

for.cond:                                         ; preds = %for.inc81, %entry
  %indvars.iv47 = phi i64 [ %indvars.iv.next48, %for.inc81 ], [ 1, %entry ]
  %exitcond55.not = icmp eq i64 %indvars.iv47, %wide.trip.count54
  br i1 %exitcond55.not, label %for.end83, label %for.cond3.preheader

for.cond3.preheader:                              ; preds = %for.cond
  %2 = add nsw i64 %indvars.iv47, -1
  %3 = mul nsw i64 %2, %0
  %add.ptr = getelementptr inbounds i8, ptr %in, i64 %3
  %4 = mul nsw i64 %indvars.iv47, %0
  br label %for.cond3

for.cond3:                                        ; preds = %for.cond3.preheader, %for.inc
  %indvars.iv = phi i64 [ 1, %for.cond3.preheader ], [ %indvars.iv.next, %for.inc ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.inc81, label %for.body7

for.body7:                                        ; preds = %for.cond3
  %add.ptr11 = getelementptr inbounds nuw i8, ptr %add.ptr, i64 %indvars.iv
  %add.ptr12 = getelementptr inbounds i8, ptr %add.ptr11, i64 -1
  %5 = add nsw i64 %indvars.iv, %4
  %arrayidx = getelementptr inbounds i8, ptr %in, i64 %5
  %6 = load i8, ptr %arrayidx, align 1, !tbaa !21
  %idx.ext15 = zext i8 %6 to i64
  %add.ptr16 = getelementptr inbounds nuw i8, ptr %bp, i64 %idx.ext15
  %7 = load i8, ptr %add.ptr12, align 1, !tbaa !21
  %idx.ext18 = zext i8 %7 to i64
  %idx.neg = sub nsw i64 0, %idx.ext18
  %add.ptr19 = getelementptr inbounds i8, ptr %add.ptr16, i64 %idx.neg
  %8 = load i8, ptr %add.ptr19, align 1, !tbaa !21
  %conv20 = zext i8 %8 to i32
  %add21 = add nuw nsw i32 %conv20, 100
  %incdec.ptr22 = getelementptr inbounds nuw i8, ptr %add.ptr11, i64 1
  %9 = load i8, ptr %add.ptr11, align 1, !tbaa !21
  %idx.ext24 = zext i8 %9 to i64
  %idx.neg25 = sub nsw i64 0, %idx.ext24
  %add.ptr26 = getelementptr inbounds i8, ptr %add.ptr16, i64 %idx.neg25
  %10 = load i8, ptr %add.ptr26, align 1, !tbaa !21
  %conv27 = zext i8 %10 to i32
  %add28 = add nuw nsw i32 %add21, %conv27
  %11 = load i8, ptr %incdec.ptr22, align 1, !tbaa !21
  %idx.ext30 = zext i8 %11 to i64
  %idx.neg31 = sub nsw i64 0, %idx.ext30
  %add.ptr32 = getelementptr inbounds i8, ptr %add.ptr16, i64 %idx.neg31
  %12 = load i8, ptr %add.ptr32, align 1, !tbaa !21
  %conv33 = zext i8 %12 to i32
  %add34 = add nuw nsw i32 %add28, %conv33
  %add.ptr37 = getelementptr inbounds i8, ptr %incdec.ptr22, i64 %idx.ext36
  %13 = load i8, ptr %add.ptr37, align 1, !tbaa !21
  %idx.ext39 = zext i8 %13 to i64
  %idx.neg40 = sub nsw i64 0, %idx.ext39
  %add.ptr41 = getelementptr inbounds i8, ptr %add.ptr16, i64 %idx.neg40
  %14 = load i8, ptr %add.ptr41, align 1, !tbaa !21
  %conv42 = zext i8 %14 to i32
  %add43 = add nuw nsw i32 %add34, %conv42
  %add.ptr44 = getelementptr inbounds nuw i8, ptr %add.ptr37, i64 2
  %15 = load i8, ptr %add.ptr44, align 1, !tbaa !21
  %idx.ext46 = zext i8 %15 to i64
  %idx.neg47 = sub nsw i64 0, %idx.ext46
  %add.ptr48 = getelementptr inbounds i8, ptr %add.ptr16, i64 %idx.neg47
  %16 = load i8, ptr %add.ptr48, align 1, !tbaa !21
  %conv49 = zext i8 %16 to i32
  %add50 = add nuw nsw i32 %add43, %conv49
  %add.ptr53 = getelementptr inbounds i8, ptr %add.ptr44, i64 %idx.ext36
  %incdec.ptr54 = getelementptr inbounds nuw i8, ptr %add.ptr53, i64 1
  %17 = load i8, ptr %add.ptr53, align 1, !tbaa !21
  %idx.ext56 = zext i8 %17 to i64
  %idx.neg57 = sub nsw i64 0, %idx.ext56
  %add.ptr58 = getelementptr inbounds i8, ptr %add.ptr16, i64 %idx.neg57
  %18 = load i8, ptr %add.ptr58, align 1, !tbaa !21
  %conv59 = zext i8 %18 to i32
  %add60 = add nuw nsw i32 %add50, %conv59
  %incdec.ptr61 = getelementptr inbounds nuw i8, ptr %add.ptr53, i64 2
  %19 = load i8, ptr %incdec.ptr54, align 1, !tbaa !21
  %idx.ext63 = zext i8 %19 to i64
  %idx.neg64 = sub nsw i64 0, %idx.ext63
  %add.ptr65 = getelementptr inbounds i8, ptr %add.ptr16, i64 %idx.neg64
  %20 = load i8, ptr %add.ptr65, align 1, !tbaa !21
  %conv66 = zext i8 %20 to i32
  %add67 = add nuw nsw i32 %add60, %conv66
  %21 = load i8, ptr %incdec.ptr61, align 1, !tbaa !21
  %idx.ext69 = zext i8 %21 to i64
  %idx.neg70 = sub nsw i64 0, %idx.ext69
  %add.ptr71 = getelementptr inbounds i8, ptr %add.ptr16, i64 %idx.neg70
  %22 = load i8, ptr %add.ptr71, align 1, !tbaa !21
  %conv72 = zext i8 %22 to i32
  %add73 = add nuw nsw i32 %add67, %conv72
  %cmp74 = icmp samesign ult i32 %add73, 731
  br i1 %cmp74, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body7
  %sub76 = sub nuw nsw i32 730, %add73
  %arrayidx80 = getelementptr inbounds i32, ptr %r, i64 %5
  store i32 %sub76, ptr %arrayidx80, align 4, !tbaa !16
  br label %for.inc

for.inc:                                          ; preds = %for.body7, %if.then
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond3, !llvm.loop !26

for.inc81:                                        ; preds = %for.cond3
  %indvars.iv.next48 = add nuw nsw i64 %indvars.iv47, 1
  br label %for.cond, !llvm.loop !27

for.end83:                                        ; preds = %for.cond
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
  %2 = load i8, ptr %arrayidx, align 1, !tbaa !21
  %conv = zext i8 %2 to i32
  store i32 %conv, ptr %p, align 16, !tbaa !16
  %3 = load i8, ptr %1, align 1, !tbaa !21
  %conv8 = zext i8 %3 to i32
  %arrayidx9 = getelementptr inbounds nuw i8, ptr %p, i64 4
  store i32 %conv8, ptr %arrayidx9, align 4, !tbaa !16
  %arrayidx15 = getelementptr i8, ptr %1, i64 1
  %4 = load i8, ptr %arrayidx15, align 1, !tbaa !21
  %conv16 = zext i8 %4 to i32
  %arrayidx17 = getelementptr inbounds nuw i8, ptr %p, i64 8
  store i32 %conv16, ptr %arrayidx17, align 8, !tbaa !16
  %mul18 = mul nsw i32 %x_size, %i
  %add19 = add nsw i32 %mul18, %j
  %5 = sext i32 %add19 to i64
  %6 = getelementptr i8, ptr %in, i64 %5
  %arrayidx22 = getelementptr i8, ptr %6, i64 -1
  %7 = load i8, ptr %arrayidx22, align 1, !tbaa !21
  %conv23 = zext i8 %7 to i32
  %arrayidx24 = getelementptr inbounds nuw i8, ptr %p, i64 12
  store i32 %conv23, ptr %arrayidx24, align 4, !tbaa !16
  %arrayidx29 = getelementptr i8, ptr %6, i64 1
  %8 = load i8, ptr %arrayidx29, align 1, !tbaa !21
  %conv30 = zext i8 %8 to i32
  %arrayidx31 = getelementptr inbounds nuw i8, ptr %p, i64 16
  store i32 %conv30, ptr %arrayidx31, align 16, !tbaa !16
  %add32 = add nsw i32 %i, 1
  %mul33 = mul nsw i32 %x_size, %add32
  %add34 = add nsw i32 %mul33, %j
  %9 = sext i32 %add34 to i64
  %10 = getelementptr i8, ptr %in, i64 %9
  %arrayidx37 = getelementptr i8, ptr %10, i64 -1
  %11 = load i8, ptr %arrayidx37, align 1, !tbaa !21
  %conv38 = zext i8 %11 to i32
  %arrayidx39 = getelementptr inbounds nuw i8, ptr %p, i64 20
  store i32 %conv38, ptr %arrayidx39, align 4, !tbaa !16
  %12 = load i8, ptr %10, align 1, !tbaa !21
  %conv45 = zext i8 %12 to i32
  %arrayidx46 = getelementptr inbounds nuw i8, ptr %p, i64 24
  store i32 %conv45, ptr %arrayidx46, align 8, !tbaa !16
  %arrayidx52 = getelementptr i8, ptr %10, i64 1
  %13 = load i8, ptr %arrayidx52, align 1, !tbaa !21
  %conv53 = zext i8 %13 to i32
  %arrayidx54 = getelementptr inbounds nuw i8, ptr %p, i64 28
  store i32 %conv53, ptr %arrayidx54, align 4, !tbaa !16
  br label %for.cond

for.cond:                                         ; preds = %for.inc78, %entry
  %indvars.iv42 = phi i64 [ %indvars.iv.next43, %for.inc78 ], [ 7, %entry ]
  %k.0 = phi i32 [ %inc79, %for.inc78 ], [ 0, %entry ]
  %exitcond45.not = icmp eq i32 %k.0, 7
  br i1 %exitcond45.not, label %for.end80, label %for.cond56

for.cond56:                                       ; preds = %for.cond, %for.cond56.backedge
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond56.backedge ], [ 0, %for.cond ]
  %exitcond.not = icmp eq i64 %indvars.iv, %indvars.iv42
  br i1 %exitcond.not, label %for.inc78, label %for.body60

for.body60:                                       ; preds = %for.cond56
  %arrayidx62 = getelementptr inbounds nuw [8 x i32], ptr %p, i64 0, i64 %indvars.iv
  %14 = load i32, ptr %arrayidx62, align 4, !tbaa !16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %arrayidx65 = getelementptr inbounds nuw [8 x i32], ptr %p, i64 0, i64 %indvars.iv.next
  %15 = load i32, ptr %arrayidx65, align 4, !tbaa !16
  %cmp66 = icmp sgt i32 %14, %15
  br i1 %cmp66, label %if.then, label %for.cond56.backedge

for.cond56.backedge:                              ; preds = %for.body60, %if.then
  br label %for.cond56, !llvm.loop !28

if.then:                                          ; preds = %for.body60
  store i32 %15, ptr %arrayidx62, align 4, !tbaa !16
  store i32 %14, ptr %arrayidx65, align 4, !tbaa !16
  br label %for.cond56.backedge

for.inc78:                                        ; preds = %for.cond56
  %inc79 = add nuw nsw i32 %k.0, 1
  %indvars.iv.next43 = add nsw i64 %indvars.iv42, -1
  br label %for.cond, !llvm.loop !29

for.end80:                                        ; preds = %for.cond
  %16 = load i32, ptr %arrayidx24, align 4, !tbaa !16
  %17 = load i32, ptr %arrayidx31, align 16, !tbaa !16
  %add83 = add nsw i32 %17, %16
  %div = sdiv i32 %add83, 2
  %conv84 = trunc i32 %div to i8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %p) #22
  ret i8 %conv84
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @enlarge(ptr noundef captures(none) %in, ptr noundef %tmp_image, ptr noundef captures(none) %x_size, ptr noundef captures(none) %y_size, i32 noundef %border) local_unnamed_addr #16 {
entry:
  %mul = shl nsw i32 %border, 1
  %idx.ext3 = sext i32 %border to i64
  %invariant.gep = getelementptr i8, ptr %tmp_image, i64 %idx.ext3
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  %0 = load i32, ptr %y_size, align 4, !tbaa !16
  %cmp = icmp slt i32 %i.0, %0
  br i1 %cmp, label %for.body, label %for.cond8.preheader

for.cond8.preheader:                              ; preds = %for.cond
  %smax = tail call i32 @llvm.smax.i32(i32 %border, i32 0)
  br label %for.cond8

for.body:                                         ; preds = %for.cond
  %add = add nsw i32 %i.0, %border
  %1 = load i32, ptr %x_size, align 4, !tbaa !16
  %add1 = add nsw i32 %1, %mul
  %mul2 = mul nsw i32 %add1, %add
  %idx.ext = sext i32 %mul2 to i64
  %gep = getelementptr i8, ptr %invariant.gep, i64 %idx.ext
  %2 = load ptr, ptr %in, align 8, !tbaa !18
  %mul5 = mul nsw i32 %1, %i.0
  %idx.ext6 = sext i32 %mul5 to i64
  %add.ptr7 = getelementptr inbounds i8, ptr %2, i64 %idx.ext6
  %conv = sext i32 %1 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %gep, ptr align 1 %add.ptr7, i64 %conv, i1 false)
  %inc = add nuw nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !30

for.cond8:                                        ; preds = %for.cond8.preheader, %for.body11
  %i.1 = phi i32 [ %inc40, %for.body11 ], [ 0, %for.cond8.preheader ]
  %exitcond.not = icmp eq i32 %i.1, %smax
  br i1 %exitcond.not, label %for.cond42, label %for.body11

for.body11:                                       ; preds = %for.cond8
  %3 = xor i32 %i.1, -1
  %sub12 = add i32 %border, %3
  %4 = load i32, ptr %x_size, align 4, !tbaa !16
  %add14 = add nsw i32 %4, %mul
  %mul15 = mul nsw i32 %add14, %sub12
  %idx.ext16 = sext i32 %mul15 to i64
  %gep72 = getelementptr i8, ptr %invariant.gep, i64 %idx.ext16
  %5 = load ptr, ptr %in, align 8, !tbaa !18
  %mul20 = mul nsw i32 %4, %i.1
  %idx.ext21 = sext i32 %mul20 to i64
  %add.ptr22 = getelementptr inbounds i8, ptr %5, i64 %idx.ext21
  %conv23 = sext i32 %4 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %gep72, ptr align 1 %add.ptr22, i64 %conv23, i1 false)
  %6 = load i32, ptr %y_size, align 4, !tbaa !16
  %add24 = add i32 %i.1, %border
  %add25 = add i32 %add24, %6
  %7 = load i32, ptr %x_size, align 4, !tbaa !16
  %add27 = add nsw i32 %7, %mul
  %mul28 = mul nsw i32 %add25, %add27
  %idx.ext29 = sext i32 %mul28 to i64
  %gep74 = getelementptr i8, ptr %invariant.gep, i64 %idx.ext29
  %8 = load ptr, ptr %in, align 8, !tbaa !18
  %sub34 = add i32 %6, %3
  %mul35 = mul nsw i32 %sub34, %7
  %idx.ext36 = sext i32 %mul35 to i64
  %add.ptr37 = getelementptr inbounds i8, ptr %8, i64 %idx.ext36
  %conv38 = sext i32 %7 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %gep74, ptr align 1 %add.ptr37, i64 %conv38, i1 false)
  %inc40 = add nuw i32 %i.1, 1
  br label %for.cond8, !llvm.loop !31

for.cond42:                                       ; preds = %for.cond8, %for.inc85
  %i.2 = phi i32 [ %inc86, %for.inc85 ], [ 0, %for.cond8 ]
  %exitcond76.not = icmp eq i32 %i.2, %smax
  br i1 %exitcond76.not, label %for.end87, label %for.cond46.preheader

for.cond46.preheader:                             ; preds = %for.cond42
  %invariant.op = add i32 %border, %i.2
  %9 = xor i32 %i.2, -1
  %invariant.op75 = add i32 %border, %9
  br label %for.cond46

for.cond46:                                       ; preds = %for.cond46.preheader, %for.body51
  %j.0 = phi i32 [ %inc83, %for.body51 ], [ 0, %for.cond46.preheader ]
  %10 = load i32, ptr %y_size, align 4, !tbaa !16
  %add48 = add nsw i32 %10, %mul
  %cmp49 = icmp slt i32 %j.0, %add48
  br i1 %cmp49, label %for.body51, label %for.inc85

for.body51:                                       ; preds = %for.cond46
  %11 = load i32, ptr %x_size, align 4, !tbaa !16
  %add53 = add nsw i32 %11, %mul
  %mul54 = mul nsw i32 %add53, %j.0
  %add56.reass = add i32 %mul54, %invariant.op
  %idxprom = sext i32 %add56.reass to i64
  %arrayidx = getelementptr inbounds i8, ptr %tmp_image, i64 %idxprom
  %12 = load i8, ptr %arrayidx, align 1, !tbaa !21
  %sub62.reass = add i32 %mul54, %invariant.op75
  %idxprom63 = sext i32 %sub62.reass to i64
  %arrayidx64 = getelementptr inbounds i8, ptr %tmp_image, i64 %idxprom63
  store i8 %12, ptr %arrayidx64, align 1, !tbaa !21
  %13 = load i32, ptr %x_size, align 4, !tbaa !16
  %add66 = add nsw i32 %13, %mul
  %mul67 = mul nsw i32 %add66, %j.0
  %add68 = add i32 %13, %border
  %add69 = add i32 %add68, %mul67
  %sub71 = add i32 %add69, %9
  %idxprom72 = sext i32 %sub71 to i64
  %arrayidx73 = getelementptr inbounds i8, ptr %tmp_image, i64 %idxprom72
  %14 = load i8, ptr %arrayidx73, align 1, !tbaa !21
  %add79 = add nsw i32 %add69, %i.2
  %idxprom80 = sext i32 %add79 to i64
  %arrayidx81 = getelementptr inbounds i8, ptr %tmp_image, i64 %idxprom80
  store i8 %14, ptr %arrayidx81, align 1, !tbaa !21
  %inc83 = add nuw nsw i32 %j.0, 1
  br label %for.cond46, !llvm.loop !32

for.inc85:                                        ; preds = %for.cond46
  %inc86 = add nuw i32 %i.2, 1
  br label %for.cond42, !llvm.loop !33

for.end87:                                        ; preds = %for.cond42
  %15 = load i32, ptr %x_size, align 4, !tbaa !16
  %add89 = add nsw i32 %15, %mul
  store i32 %add89, ptr %x_size, align 4, !tbaa !16
  %16 = load i32, ptr %y_size, align 4, !tbaa !16
  %add91 = add nsw i32 %16, %mul
  store i32 %add91, ptr %y_size, align 4, !tbaa !16
  store ptr %tmp_image, ptr %in, align 8, !tbaa !18
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #17

; Function Attrs: nounwind uwtable
define dso_local void @susan_smoothing(i32 noundef %three_by_three, ptr noundef %in, float noundef %dt, i32 noundef %x_size, i32 noundef %y_size, ptr noundef readonly captures(none) %bp) local_unnamed_addr #0 {
entry:
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
  br i1 %cmp, label %if.then31, label %for.cond129

if.then31:                                        ; preds = %if.end21
  %0 = load i32, ptr %x_size.addr, align 4, !tbaa !16
  %mul34 = mul nsw i32 %add12, %add12
  %conv35 = zext nneg i32 %mul34 to i64
  %call36 = tail call noalias ptr @malloc(i64 noundef %conv35) #26
  %1 = fneg float %dt
  %fneg = fmul float %dt, %1
  %sub38 = xor i32 %conv1, -1
  br label %for.cond

for.cond:                                         ; preds = %for.inc55, %if.then31
  %i.0 = phi i32 [ %sub38, %if.then31 ], [ %inc56, %for.inc55 ]
  %dpt.0 = phi ptr [ %call36, %if.then31 ], [ %dpt.1, %for.inc55 ]
  %cmp39.not = icmp sgt i32 %i.0, %mask_size.0
  br i1 %cmp39.not, label %for.cond58.preheader, label %for.cond42.preheader

for.cond42.preheader:                             ; preds = %for.cond
  %mul46 = mul nsw i32 %i.0, %i.0
  br label %for.cond42

for.cond58.preheader:                             ; preds = %for.cond
  %sub = sub nsw i32 %0, %add12
  %narrow = sub nsw i32 0, %mask_size.0
  %idx.neg = sext i32 %narrow to i64
  %idx.ext104 = sext i32 %sub to i64
  %2 = sext i32 %mask_size.0 to i64
  br label %for.cond58

for.cond42:                                       ; preds = %for.cond42.preheader, %for.body45
  %j.0 = phi i32 [ %inc, %for.body45 ], [ %sub38, %for.cond42.preheader ]
  %dpt.1 = phi ptr [ %incdec.ptr, %for.body45 ], [ %dpt.0, %for.cond42.preheader ]
  %cmp43.not = icmp sgt i32 %j.0, %mask_size.0
  br i1 %cmp43.not, label %for.inc55, label %for.body45

for.body45:                                       ; preds = %for.cond42
  %mul47 = mul nsw i32 %j.0, %j.0
  %add48 = add nuw nsw i32 %mul47, %mul46
  %conv49 = uitofp nneg i32 %add48 to float
  %div = fdiv float %conv49, %fneg
  %conv50 = fpext float %div to double
  %call51 = tail call double @exp(double noundef %conv50) #22, !tbaa !16
  %mul52 = fmul double %call51, 1.000000e+02
  %conv53 = fptosi double %mul52 to i32
  %conv54 = trunc i32 %conv53 to i8
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %dpt.1, i64 1
  store i8 %conv54, ptr %dpt.1, align 1, !tbaa !21
  %inc = add nsw i32 %j.0, 1
  br label %for.cond42, !llvm.loop !34

for.inc55:                                        ; preds = %for.cond42
  %inc56 = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !35

for.cond58:                                       ; preds = %for.cond58.preheader, %for.inc125
  %i.1 = phi i32 [ %inc126, %for.inc125 ], [ %mask_size.0, %for.cond58.preheader ]
  %out.0 = phi ptr [ %out.1, %for.inc125 ], [ %in, %for.cond58.preheader ]
  %3 = load i32, ptr %y_size.addr, align 4, !tbaa !16
  %sub59 = sub nsw i32 %3, %mask_size.0
  %cmp60 = icmp slt i32 %i.1, %sub59
  br i1 %cmp60, label %for.cond63.preheader, label %for.end127

for.cond63.preheader:                             ; preds = %for.cond58
  %sub68 = sub nsw i32 %i.1, %mask_size.0
  br label %for.cond63

for.cond63:                                       ; preds = %for.cond63.preheader, %for.inc122
  %indvars.iv157 = phi i64 [ %2, %for.cond63.preheader ], [ %indvars.iv.next158, %for.inc122 ]
  %out.1 = phi ptr [ %out.0, %for.cond63.preheader ], [ %out.2, %for.inc122 ]
  %4 = load i32, ptr %x_size.addr, align 4, !tbaa !16
  %sub64 = sub nsw i32 %4, %mask_size.0
  %5 = sext i32 %sub64 to i64
  %cmp65 = icmp slt i64 %indvars.iv157, %5
  br i1 %cmp65, label %for.body67, label %for.inc125

for.body67:                                       ; preds = %for.cond63
  %6 = load ptr, ptr %in.addr, align 8, !tbaa !18
  %mul69 = mul nsw i32 %4, %sub68
  %idx.ext = sext i32 %mul69 to i64
  %add.ptr = getelementptr inbounds i8, ptr %6, i64 %idx.ext
  %add.ptr71 = getelementptr inbounds i8, ptr %add.ptr, i64 %indvars.iv157
  %add.ptr73 = getelementptr inbounds i8, ptr %add.ptr71, i64 %idx.neg
  %mul74 = mul nsw i32 %4, %i.1
  %7 = sext i32 %mul74 to i64
  %8 = getelementptr i8, ptr %6, i64 %indvars.iv157
  %arrayidx = getelementptr i8, ptr %8, i64 %7
  %9 = load i8, ptr %arrayidx, align 1, !tbaa !21
  %idx.ext77 = zext i8 %9 to i64
  %add.ptr78 = getelementptr inbounds nuw i8, ptr %bp, i64 %idx.ext77
  br label %for.cond80

for.cond80:                                       ; preds = %for.end103, %for.body67
  %y.0 = phi i32 [ %sub38, %for.body67 ], [ %inc107, %for.end103 ]
  %area.0 = phi i32 [ 0, %for.body67 ], [ %area.1, %for.end103 ]
  %ip.0 = phi ptr [ %add.ptr73, %for.body67 ], [ %add.ptr105, %for.end103 ]
  %dpt.2 = phi ptr [ %call36, %for.body67 ], [ %dpt.3, %for.end103 ]
  %total.0 = phi i32 [ 0, %for.body67 ], [ %total.1, %for.end103 ]
  %cmp81.not = icmp sgt i32 %y.0, %mask_size.0
  br i1 %cmp81.not, label %for.end108, label %for.cond85

for.cond85:                                       ; preds = %for.cond80, %for.body88
  %x.0 = phi i32 [ %inc102, %for.body88 ], [ %sub38, %for.cond80 ]
  %area.1 = phi i32 [ %add98, %for.body88 ], [ %area.0, %for.cond80 ]
  %ip.1 = phi ptr [ %incdec.ptr89, %for.body88 ], [ %ip.0, %for.cond80 ]
  %dpt.3 = phi ptr [ %incdec.ptr91, %for.body88 ], [ %dpt.2, %for.cond80 ]
  %total.1 = phi i32 [ %add100, %for.body88 ], [ %total.0, %for.cond80 ]
  %cmp86.not = icmp sgt i32 %x.0, %mask_size.0
  br i1 %cmp86.not, label %for.end103, label %for.body88

for.body88:                                       ; preds = %for.cond85
  %incdec.ptr89 = getelementptr inbounds nuw i8, ptr %ip.1, i64 1
  %10 = load i8, ptr %ip.1, align 1, !tbaa !21
  %conv90 = zext i8 %10 to i32
  %incdec.ptr91 = getelementptr inbounds nuw i8, ptr %dpt.3, i64 1
  %11 = load i8, ptr %dpt.3, align 1, !tbaa !21
  %conv92 = zext i8 %11 to i32
  %idx.ext93 = zext i8 %10 to i64
  %idx.neg94 = sub nsw i64 0, %idx.ext93
  %add.ptr95 = getelementptr inbounds i8, ptr %add.ptr78, i64 %idx.neg94
  %12 = load i8, ptr %add.ptr95, align 1, !tbaa !21
  %conv96 = zext i8 %12 to i32
  %mul97 = mul nuw nsw i32 %conv96, %conv92
  %add98 = add nsw i32 %mul97, %area.1
  %mul99 = mul nuw nsw i32 %mul97, %conv90
  %add100 = add nsw i32 %mul99, %total.1
  %inc102 = add nsw i32 %x.0, 1
  br label %for.cond85, !llvm.loop !36

for.end103:                                       ; preds = %for.cond85
  %add.ptr105 = getelementptr inbounds i8, ptr %ip.1, i64 %idx.ext104
  %inc107 = add nsw i32 %y.0, 1
  br label %for.cond80, !llvm.loop !37

for.end108:                                       ; preds = %for.cond80
  %sub109 = add nsw i32 %area.0, -10000
  %cmp110 = icmp eq i32 %sub109, 0
  br i1 %cmp110, label %if.then112, label %if.else115

if.then112:                                       ; preds = %for.end108
  %13 = trunc nsw i64 %indvars.iv157 to i32
  %call113 = tail call zeroext i8 @median(ptr noundef %6, i32 noundef %i.1, i32 noundef %13, i32 noundef %4)
  br label %for.inc122

if.else115:                                       ; preds = %for.end108
  %conv76 = zext i8 %9 to i32
  %mul116.neg = mul nsw i32 %conv76, -10000
  %sub117 = add i32 %total.0, %mul116.neg
  %div118 = sdiv i32 %sub117, %sub109
  %conv119 = trunc i32 %div118 to i8
  br label %for.inc122

for.inc122:                                       ; preds = %if.then112, %if.else115
  %storemerge154 = phi i8 [ %conv119, %if.else115 ], [ %call113, %if.then112 ]
  %out.2 = getelementptr inbounds nuw i8, ptr %out.1, i64 1
  store i8 %storemerge154, ptr %out.1, align 1, !tbaa !21
  %indvars.iv.next158 = add nsw i64 %indvars.iv157, 1
  br label %for.cond63, !llvm.loop !38

for.inc125:                                       ; preds = %for.cond63
  %inc126 = add nsw i32 %i.1, 1
  br label %for.cond58, !llvm.loop !39

for.end127:                                       ; preds = %for.cond58
  tail call void @free(ptr noundef %call36) #22
  br label %if.end256

for.cond129:                                      ; preds = %if.end21, %for.inc253
  %i.2 = phi i32 [ %inc254, %for.inc253 ], [ 1, %if.end21 ]
  %out.3 = phi ptr [ %out.4, %for.inc253 ], [ %in, %if.end21 ]
  %14 = load i32, ptr %y_size.addr, align 4, !tbaa !16
  %sub130 = add nsw i32 %14, -1
  %cmp131 = icmp slt i32 %i.2, %sub130
  br i1 %cmp131, label %for.cond134.preheader, label %if.end256

for.cond134.preheader:                            ; preds = %for.cond129
  %sub139 = add nsw i32 %i.2, -1
  br label %for.cond134

for.cond134:                                      ; preds = %for.cond134.preheader, %for.inc250
  %indvars.iv = phi i64 [ 1, %for.cond134.preheader ], [ %indvars.iv.next, %for.inc250 ]
  %out.4 = phi ptr [ %out.3, %for.cond134.preheader ], [ %out.5, %for.inc250 ]
  %15 = load i32, ptr %x_size.addr, align 4, !tbaa !16
  %sub135 = add nsw i32 %15, -1
  %16 = sext i32 %sub135 to i64
  %cmp136 = icmp slt i64 %indvars.iv, %16
  br i1 %cmp136, label %for.body138, label %for.inc253

for.body138:                                      ; preds = %for.cond134
  %17 = load ptr, ptr %in.addr, align 8, !tbaa !18
  %mul140 = mul nsw i32 %15, %sub139
  %idx.ext141 = sext i32 %mul140 to i64
  %add.ptr142 = getelementptr inbounds i8, ptr %17, i64 %idx.ext141
  %add.ptr144 = getelementptr inbounds nuw i8, ptr %add.ptr142, i64 %indvars.iv
  %add.ptr145 = getelementptr inbounds i8, ptr %add.ptr144, i64 -1
  %mul146 = mul nsw i32 %15, %i.2
  %18 = trunc nuw nsw i64 %indvars.iv to i32
  %add147 = add nsw i32 %mul146, %18
  %idxprom148 = sext i32 %add147 to i64
  %arrayidx149 = getelementptr inbounds i8, ptr %17, i64 %idxprom148
  %19 = load i8, ptr %arrayidx149, align 1, !tbaa !21
  %idx.ext151 = zext i8 %19 to i64
  %add.ptr152 = getelementptr inbounds nuw i8, ptr %bp, i64 %idx.ext151
  %20 = load i8, ptr %add.ptr145, align 1, !tbaa !21
  %idx.ext155 = zext i8 %20 to i64
  %idx.neg156 = sub nsw i64 0, %idx.ext155
  %add.ptr157 = getelementptr inbounds i8, ptr %add.ptr152, i64 %idx.neg156
  %21 = load i8, ptr %add.ptr157, align 1, !tbaa !21
  %conv158 = zext i8 %21 to i32
  %incdec.ptr162 = getelementptr inbounds nuw i8, ptr %add.ptr144, i64 1
  %22 = load i8, ptr %add.ptr144, align 1, !tbaa !21
  %idx.ext164 = zext i8 %22 to i64
  %idx.neg165 = sub nsw i64 0, %idx.ext164
  %add.ptr166 = getelementptr inbounds i8, ptr %add.ptr152, i64 %idx.neg165
  %23 = load i8, ptr %add.ptr166, align 1, !tbaa !21
  %conv167 = zext i8 %23 to i32
  %24 = load i8, ptr %incdec.ptr162, align 1, !tbaa !21
  %idx.ext172 = zext i8 %24 to i64
  %idx.neg173 = sub nsw i64 0, %idx.ext172
  %add.ptr174 = getelementptr inbounds i8, ptr %add.ptr152, i64 %idx.neg173
  %25 = load i8, ptr %add.ptr174, align 1, !tbaa !21
  %conv175 = zext i8 %25 to i32
  %sub179 = add nsw i32 %15, -2
  %idx.ext180 = sext i32 %sub179 to i64
  %add.ptr181 = getelementptr inbounds i8, ptr %incdec.ptr162, i64 %idx.ext180
  %incdec.ptr182 = getelementptr inbounds nuw i8, ptr %add.ptr181, i64 1
  %26 = load i8, ptr %add.ptr181, align 1, !tbaa !21
  %idx.ext184 = zext i8 %26 to i64
  %idx.neg185 = sub nsw i64 0, %idx.ext184
  %add.ptr186 = getelementptr inbounds i8, ptr %add.ptr152, i64 %idx.neg185
  %27 = load i8, ptr %add.ptr186, align 1, !tbaa !21
  %conv187 = zext i8 %27 to i32
  %incdec.ptr191 = getelementptr inbounds nuw i8, ptr %add.ptr181, i64 2
  %28 = load i8, ptr %incdec.ptr182, align 1, !tbaa !21
  %idx.ext193 = zext i8 %28 to i64
  %idx.neg194 = sub nsw i64 0, %idx.ext193
  %add.ptr195 = getelementptr inbounds i8, ptr %add.ptr152, i64 %idx.neg194
  %29 = load i8, ptr %add.ptr195, align 1, !tbaa !21
  %conv196 = zext i8 %29 to i32
  %30 = load i8, ptr %incdec.ptr191, align 1, !tbaa !21
  %idx.ext201 = zext i8 %30 to i64
  %idx.neg202 = sub nsw i64 0, %idx.ext201
  %add.ptr203 = getelementptr inbounds i8, ptr %add.ptr152, i64 %idx.neg202
  %31 = load i8, ptr %add.ptr203, align 1, !tbaa !21
  %conv204 = zext i8 %31 to i32
  %add.ptr210 = getelementptr inbounds i8, ptr %incdec.ptr191, i64 %idx.ext180
  %incdec.ptr211 = getelementptr inbounds nuw i8, ptr %add.ptr210, i64 1
  %32 = load i8, ptr %add.ptr210, align 1, !tbaa !21
  %idx.ext213 = zext i8 %32 to i64
  %idx.neg214 = sub nsw i64 0, %idx.ext213
  %add.ptr215 = getelementptr inbounds i8, ptr %add.ptr152, i64 %idx.neg214
  %33 = load i8, ptr %add.ptr215, align 1, !tbaa !21
  %conv216 = zext i8 %33 to i32
  %incdec.ptr220 = getelementptr inbounds nuw i8, ptr %add.ptr210, i64 2
  %34 = load i8, ptr %incdec.ptr211, align 1, !tbaa !21
  %idx.ext222 = zext i8 %34 to i64
  %idx.neg223 = sub nsw i64 0, %idx.ext222
  %add.ptr224 = getelementptr inbounds i8, ptr %add.ptr152, i64 %idx.neg223
  %35 = load i8, ptr %add.ptr224, align 1, !tbaa !21
  %conv225 = zext i8 %35 to i32
  %36 = load i8, ptr %incdec.ptr220, align 1, !tbaa !21
  %idx.ext230 = zext i8 %36 to i64
  %idx.neg231 = sub nsw i64 0, %idx.ext230
  %add.ptr232 = getelementptr inbounds i8, ptr %add.ptr152, i64 %idx.neg231
  %37 = load i8, ptr %add.ptr232, align 1, !tbaa !21
  %conv233 = zext i8 %37 to i32
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
  %call241 = tail call zeroext i8 @median(ptr noundef nonnull %17, i32 noundef %i.2, i32 noundef %18, i32 noundef %15)
  br label %for.inc250

if.else243:                                       ; preds = %for.body138
  %conv154 = zext i8 %20 to i32
  %mul160 = mul nuw nsw i32 %conv158, %conv154
  %conv163 = zext i8 %22 to i32
  %mul169 = mul nuw nsw i32 %conv167, %conv163
  %conv171 = zext i8 %24 to i32
  %mul177 = mul nuw nsw i32 %conv175, %conv171
  %conv183 = zext i8 %26 to i32
  %mul189 = mul nuw nsw i32 %conv187, %conv183
  %conv192 = zext i8 %28 to i32
  %mul198 = mul nuw nsw i32 %conv196, %conv192
  %conv200 = zext i8 %30 to i32
  %mul206 = mul nuw nsw i32 %conv204, %conv200
  %conv212 = zext i8 %32 to i32
  %mul218 = mul nuw nsw i32 %conv216, %conv212
  %conv221 = zext i8 %34 to i32
  %mul227 = mul nuw nsw i32 %conv225, %conv221
  %conv229 = zext i8 %36 to i32
  %mul235 = mul nuw nsw i32 %conv233, %conv229
  %conv150 = zext i8 %19 to i32
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
  %conv247 = trunc i32 %div246 to i8
  br label %for.inc250

for.inc250:                                       ; preds = %if.then240, %if.else243
  %storemerge = phi i8 [ %conv247, %if.else243 ], [ %call241, %if.then240 ]
  %out.5 = getelementptr inbounds nuw i8, ptr %out.4, i64 1
  store i8 %storemerge, ptr %out.4, align 1, !tbaa !21
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond134, !llvm.loop !40

for.inc253:                                       ; preds = %for.cond134
  %inc254 = add nuw nsw i32 %i.2, 1
  br label %for.cond129, !llvm.loop !41

if.end256:                                        ; preds = %for.cond129, %for.end127
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @edge_draw(ptr noundef writeonly captures(none) %in, ptr noundef %mid, i32 noundef %x_size, i32 noundef %y_size, i32 noundef %drawing_mode) local_unnamed_addr #8 {
entry:
  %cmp = icmp eq i32 %drawing_mode, 0
  %mul = mul nsw i32 %y_size, %x_size
  %sub.ptr.rhs.cast = ptrtoint ptr %mid to i64
  br i1 %cmp, label %for.cond.preheader, label %entry.if.end18_crit_edge

entry.if.end18_crit_edge:                         ; preds = %entry
  %.pre31 = tail call i32 @llvm.smax.i32(i32 %mul, i32 0)
  br label %if.end18

for.cond.preheader:                               ; preds = %entry
  %idx.ext = sext i32 %x_size to i64
  %idx.neg = sub nsw i64 0, %idx.ext
  %invariant.gep = getelementptr i8, ptr %in, i64 %idx.neg
  %sub = add nsw i32 %x_size, -2
  %idx.ext8 = sext i32 %sub to i64
  %smax = tail call i32 @llvm.smax.i32(i32 %mul, i32 0)
  br label %for.cond

for.cond:                                         ; preds = %for.cond.preheader, %if.end
  %i.0 = phi i32 [ %inc, %if.end ], [ 0, %for.cond.preheader ]
  %midp.0 = phi ptr [ %incdec.ptr17, %if.end ], [ %mid, %for.cond.preheader ]
  %exitcond.not = icmp eq i32 %i.0, %smax
  br i1 %exitcond.not, label %if.end18, label %for.body

for.body:                                         ; preds = %for.cond
  %0 = load i8, ptr %midp.0, align 1, !tbaa !21
  %cmp2 = icmp ult i8 %0, 8
  br i1 %cmp2, label %if.then4, label %if.end

if.then4:                                         ; preds = %for.body
  %sub.ptr.lhs.cast = ptrtoint ptr %midp.0 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %gep = getelementptr i8, ptr %invariant.gep, i64 %sub.ptr.sub
  %add.ptr6 = getelementptr inbounds i8, ptr %gep, i64 -1
  store i8 -1, ptr %add.ptr6, align 1, !tbaa !21
  %incdec.ptr7 = getelementptr inbounds nuw i8, ptr %gep, i64 1
  store i8 -1, ptr %gep, align 1, !tbaa !21
  store i8 -1, ptr %incdec.ptr7, align 1, !tbaa !21
  %add.ptr9 = getelementptr inbounds i8, ptr %incdec.ptr7, i64 %idx.ext8
  store i8 -1, ptr %add.ptr9, align 1, !tbaa !21
  %incdec.ptr11 = getelementptr inbounds nuw i8, ptr %add.ptr9, i64 2
  store i8 -1, ptr %incdec.ptr11, align 1, !tbaa !21
  %add.ptr14 = getelementptr inbounds i8, ptr %incdec.ptr11, i64 %idx.ext8
  %incdec.ptr15 = getelementptr inbounds nuw i8, ptr %add.ptr14, i64 1
  store i8 -1, ptr %add.ptr14, align 1, !tbaa !21
  %incdec.ptr16 = getelementptr inbounds nuw i8, ptr %add.ptr14, i64 2
  store i8 -1, ptr %incdec.ptr15, align 1, !tbaa !21
  store i8 -1, ptr %incdec.ptr16, align 1, !tbaa !21
  br label %if.end

if.end:                                           ; preds = %if.then4, %for.body
  %incdec.ptr17 = getelementptr inbounds nuw i8, ptr %midp.0, i64 1
  %inc = add nuw i32 %i.0, 1
  br label %for.cond, !llvm.loop !42

if.end18:                                         ; preds = %for.cond, %entry.if.end18_crit_edge
  %smax28.pre-phi = phi i32 [ %.pre31, %entry.if.end18_crit_edge ], [ %smax, %for.cond ]
  br label %for.cond19

for.cond19:                                       ; preds = %if.end32, %if.end18
  %i.1 = phi i32 [ 0, %if.end18 ], [ %inc35, %if.end32 ]
  %midp.1 = phi ptr [ %mid, %if.end18 ], [ %incdec.ptr33, %if.end32 ]
  %exitcond29.not = icmp eq i32 %i.1, %smax28.pre-phi
  br i1 %exitcond29.not, label %for.end36, label %for.body23

for.body23:                                       ; preds = %for.cond19
  %1 = load i8, ptr %midp.1, align 1, !tbaa !21
  %cmp25 = icmp ult i8 %1, 8
  br i1 %cmp25, label %if.then27, label %if.end32

if.then27:                                        ; preds = %for.body23
  %sub.ptr.lhs.cast28 = ptrtoint ptr %midp.1 to i64
  %sub.ptr.sub30 = sub i64 %sub.ptr.lhs.cast28, %sub.ptr.rhs.cast
  %add.ptr31 = getelementptr inbounds i8, ptr %in, i64 %sub.ptr.sub30
  store i8 0, ptr %add.ptr31, align 1, !tbaa !21
  br label %if.end32

if.end32:                                         ; preds = %if.then27, %for.body23
  %incdec.ptr33 = getelementptr inbounds nuw i8, ptr %midp.1, i64 1
  %inc35 = add nuw i32 %i.1, 1
  br label %for.cond19, !llvm.loop !43

for.end36:                                        ; preds = %for.cond19
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @susan_thin(ptr noundef readonly captures(none) %r, ptr noundef %mid, i32 noundef %x_size, i32 noundef %y_size) local_unnamed_addr #8 {
entry:
  %l = alloca [9 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %l) #22
  %sub = add nsw i32 %y_size, -4
  %sub2 = add nsw i32 %x_size, -4
  %invariant.gep = getelementptr i8, ptr %mid, i64 -1
  %idx.ext29 = sext i32 %x_size to i64
  %arrayidx97 = getelementptr inbounds nuw i8, ptr %l, i64 4
  %arrayidx104 = getelementptr inbounds nuw i8, ptr %l, i64 8
  %arrayidx110 = getelementptr inbounds nuw i8, ptr %l, i64 12
  %arrayidx111 = getelementptr inbounds nuw i8, ptr %l, i64 16
  %arrayidx117 = getelementptr inbounds nuw i8, ptr %l, i64 20
  %arrayidx124 = getelementptr inbounds nuw i8, ptr %l, i64 24
  %arrayidx130 = getelementptr inbounds nuw i8, ptr %l, i64 28
  %arrayidx137 = getelementptr inbounds nuw i8, ptr %l, i64 32
  br label %for.cond

for.cond:                                         ; preds = %for.inc826, %entry
  %a.0 = phi i32 [ 0, %entry ], [ %a.1, %for.inc826 ]
  %b.0 = phi i32 [ 0, %entry ], [ %b.1, %for.inc826 ]
  %i.0 = phi i32 [ 4, %entry ], [ %inc827, %for.inc826 ]
  %cmp = icmp slt i32 %i.0, %sub
  br i1 %cmp, label %for.cond1, label %for.end828

for.cond1:                                        ; preds = %for.cond, %for.inc823
  %a.1 = phi i32 [ %a.6, %for.inc823 ], [ %a.0, %for.cond ]
  %b.1 = phi i32 [ %b.6, %for.inc823 ], [ %b.0, %for.cond ]
  %i.1 = phi i32 [ %i.4, %for.inc823 ], [ %i.0, %for.cond ]
  %j.0 = phi i32 [ %inc824, %for.inc823 ], [ 4, %for.cond ]
  %cmp3 = icmp slt i32 %j.0, %sub2
  br i1 %cmp3, label %for.body4, label %for.inc826

for.body4:                                        ; preds = %for.cond1
  %mul = mul nsw i32 %i.1, %x_size
  %add = add nsw i32 %mul, %j.0
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds i8, ptr %mid, i64 %idxprom
  %0 = load i8, ptr %arrayidx, align 1, !tbaa !21
  %cmp5 = icmp ult i8 %0, 8
  br i1 %cmp5, label %if.then, label %for.inc823

if.then:                                          ; preds = %for.body4
  %arrayidx10 = getelementptr inbounds i32, ptr %r, i64 %idxprom
  %1 = load i32, ptr %arrayidx10, align 4, !tbaa !16
  %sub11 = add i32 %i.1, -1
  %mul12 = mul nsw i32 %sub11, %x_size
  %idx.ext = sext i32 %mul12 to i64
  %add.ptr = getelementptr inbounds i8, ptr %mid, i64 %idx.ext
  %idx.ext13 = sext i32 %j.0 to i64
  %add.ptr14 = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.ext13
  %add.ptr15 = getelementptr inbounds i8, ptr %add.ptr14, i64 -1
  %2 = load i8, ptr %add.ptr15, align 1, !tbaa !21
  %cmp17 = icmp ult i8 %2, 8
  %conv18 = zext i1 %cmp17 to i32
  %3 = load i8, ptr %add.ptr14, align 1, !tbaa !21
  %cmp21 = icmp ult i8 %3, 8
  %conv22 = zext i1 %cmp21 to i32
  %add23 = add nuw nsw i32 %conv22, %conv18
  %add.ptr24 = getelementptr inbounds nuw i8, ptr %add.ptr14, i64 1
  %4 = load i8, ptr %add.ptr24, align 1, !tbaa !21
  %cmp26 = icmp ult i8 %4, 8
  %conv27 = zext i1 %cmp26 to i32
  %add28 = add nuw nsw i32 %add23, %conv27
  %add.ptr30 = getelementptr inbounds i8, ptr %add.ptr15, i64 %idx.ext29
  %5 = load i8, ptr %add.ptr30, align 1, !tbaa !21
  %cmp32 = icmp ult i8 %5, 8
  %conv33 = zext i1 %cmp32 to i32
  %add34 = add nuw nsw i32 %add28, %conv33
  %add.ptr37 = getelementptr inbounds nuw i8, ptr %add.ptr30, i64 2
  %6 = load i8, ptr %add.ptr37, align 1, !tbaa !21
  %cmp39 = icmp ult i8 %6, 8
  %conv40 = zext i1 %cmp39 to i32
  %add41 = add nuw nsw i32 %add34, %conv40
  %add.ptr45 = getelementptr inbounds i8, ptr %add.ptr30, i64 %idx.ext29
  %7 = load i8, ptr %add.ptr45, align 1, !tbaa !21
  %cmp47 = icmp ult i8 %7, 8
  %conv48 = zext i1 %cmp47 to i32
  %add49 = add nuw nsw i32 %add41, %conv48
  %add.ptr54 = getelementptr inbounds nuw i8, ptr %add.ptr45, i64 1
  %8 = load i8, ptr %add.ptr54, align 1, !tbaa !21
  %cmp56 = icmp ult i8 %8, 8
  %conv57 = zext i1 %cmp56 to i32
  %add58 = add nuw nsw i32 %add49, %conv57
  %add.ptr63 = getelementptr inbounds nuw i8, ptr %add.ptr45, i64 2
  %9 = load i8, ptr %add.ptr63, align 1, !tbaa !21
  %cmp65 = icmp ult i8 %9, 8
  %conv66 = zext i1 %cmp65 to i32
  %add67 = add nuw nsw i32 %add58, %conv66
  switch i32 %add67, label %if.end412 [
    i32 0, label %if.then70
    i32 1, label %land.lhs.true
  ]

if.then70:                                        ; preds = %if.then
  store i8 100, ptr %arrayidx, align 1, !tbaa !21
  br label %for.inc823

land.lhs.true:                                    ; preds = %if.then
  %cmp82 = icmp samesign ult i8 %0, 6
  br i1 %cmp82, label %if.then84, label %for.inc823

if.then84:                                        ; preds = %land.lhs.true
  %add87 = add nsw i32 %mul12, %j.0
  %sub88 = add nsw i32 %add87, -1
  %idxprom89 = sext i32 %sub88 to i64
  %arrayidx90 = getelementptr inbounds i32, ptr %r, i64 %idxprom89
  %10 = load i32, ptr %arrayidx90, align 4, !tbaa !16
  store i32 %10, ptr %l, align 16, !tbaa !16
  %idxprom95 = sext i32 %add87 to i64
  %arrayidx96 = getelementptr inbounds i32, ptr %r, i64 %idxprom95
  %11 = load i32, ptr %arrayidx96, align 4, !tbaa !16
  store i32 %11, ptr %arrayidx97, align 4, !tbaa !16
  %add101 = add nsw i32 %add87, 1
  %idxprom102 = sext i32 %add101 to i64
  %arrayidx103 = getelementptr inbounds i32, ptr %r, i64 %idxprom102
  %12 = load i32, ptr %arrayidx103, align 4, !tbaa !16
  store i32 %12, ptr %arrayidx104, align 8, !tbaa !16
  %sub107 = add nsw i32 %add, -1
  %idxprom108 = sext i32 %sub107 to i64
  %arrayidx109 = getelementptr inbounds i32, ptr %r, i64 %idxprom108
  %13 = load i32, ptr %arrayidx109, align 4, !tbaa !16
  store i32 %13, ptr %arrayidx110, align 4, !tbaa !16
  store i32 0, ptr %arrayidx111, align 16, !tbaa !16
  %add114 = add nsw i32 %add, 1
  %idxprom115 = sext i32 %add114 to i64
  %arrayidx116 = getelementptr inbounds i32, ptr %r, i64 %idxprom115
  %14 = load i32, ptr %arrayidx116, align 4, !tbaa !16
  store i32 %14, ptr %arrayidx117, align 4, !tbaa !16
  %add118 = add nsw i32 %i.1, 1
  %mul119 = mul nsw i32 %add118, %x_size
  %add120 = add nsw i32 %mul119, %j.0
  %sub121 = add nsw i32 %add120, -1
  %idxprom122 = sext i32 %sub121 to i64
  %arrayidx123 = getelementptr inbounds i32, ptr %r, i64 %idxprom122
  %15 = load i32, ptr %arrayidx123, align 4, !tbaa !16
  store i32 %15, ptr %arrayidx124, align 8, !tbaa !16
  %idxprom128 = sext i32 %add120 to i64
  %arrayidx129 = getelementptr inbounds i32, ptr %r, i64 %idxprom128
  %16 = load i32, ptr %arrayidx129, align 4, !tbaa !16
  store i32 %16, ptr %arrayidx130, align 4, !tbaa !16
  %add134 = add nsw i32 %add120, 1
  %idxprom135 = sext i32 %add134 to i64
  %arrayidx136 = getelementptr inbounds i32, ptr %r, i64 %idxprom135
  %17 = load i32, ptr %arrayidx136, align 4, !tbaa !16
  store i32 %17, ptr %arrayidx137, align 16, !tbaa !16
  %arrayidx143 = getelementptr inbounds i8, ptr %mid, i64 %idxprom89
  %18 = load i8, ptr %arrayidx143, align 1, !tbaa !21
  %cmp145 = icmp ult i8 %18, 8
  br i1 %cmp145, label %if.then147, label %if.else

if.then147:                                       ; preds = %if.then84
  store i32 0, ptr %l, align 16, !tbaa !16
  store i32 0, ptr %arrayidx97, align 4, !tbaa !16
  store i32 0, ptr %arrayidx110, align 4, !tbaa !16
  %mul152 = shl nsw i32 %12, 1
  store i32 %mul152, ptr %arrayidx104, align 8, !tbaa !16
  %mul154 = shl nsw i32 %15, 1
  store i32 %mul154, ptr %arrayidx124, align 8, !tbaa !16
  %mul156 = mul nsw i32 %14, 3
  store i32 %mul156, ptr %arrayidx117, align 4, !tbaa !16
  %mul158 = mul nsw i32 %16, 3
  store i32 %mul158, ptr %arrayidx130, align 4, !tbaa !16
  %mul160 = shl nsw i32 %17, 2
  store i32 %mul160, ptr %arrayidx137, align 16, !tbaa !16
  br label %for.cond332.preheader

if.else:                                          ; preds = %if.then84
  %arrayidx165 = getelementptr inbounds i8, ptr %mid, i64 %idxprom95
  %19 = load i8, ptr %arrayidx165, align 1, !tbaa !21
  %cmp167 = icmp ult i8 %19, 8
  br i1 %cmp167, label %if.then169, label %if.else183

if.then169:                                       ; preds = %if.else
  store i32 0, ptr %arrayidx97, align 4, !tbaa !16
  store i32 0, ptr %l, align 16, !tbaa !16
  store i32 0, ptr %arrayidx104, align 8, !tbaa !16
  %mul174 = shl nsw i32 %13, 1
  store i32 %mul174, ptr %arrayidx110, align 4, !tbaa !16
  %mul176 = shl nsw i32 %14, 1
  store i32 %mul176, ptr %arrayidx117, align 4, !tbaa !16
  %mul178 = mul nsw i32 %15, 3
  store i32 %mul178, ptr %arrayidx124, align 8, !tbaa !16
  %mul180 = mul nsw i32 %17, 3
  store i32 %mul180, ptr %arrayidx137, align 16, !tbaa !16
  %mul182 = shl nsw i32 %16, 2
  store i32 %mul182, ptr %arrayidx130, align 4, !tbaa !16
  br label %for.cond332.preheader

if.else183:                                       ; preds = %if.else
  %arrayidx189 = getelementptr inbounds i8, ptr %mid, i64 %idxprom102
  %20 = load i8, ptr %arrayidx189, align 1, !tbaa !21
  %cmp191 = icmp ult i8 %20, 8
  br i1 %cmp191, label %if.then193, label %if.else207

if.then193:                                       ; preds = %if.else183
  store i32 0, ptr %arrayidx104, align 8, !tbaa !16
  store i32 0, ptr %arrayidx97, align 4, !tbaa !16
  store i32 0, ptr %arrayidx117, align 4, !tbaa !16
  %mul198 = shl nsw i32 %10, 1
  store i32 %mul198, ptr %l, align 16, !tbaa !16
  %mul200 = shl nsw i32 %17, 1
  store i32 %mul200, ptr %arrayidx137, align 16, !tbaa !16
  %mul202 = mul nsw i32 %13, 3
  store i32 %mul202, ptr %arrayidx110, align 4, !tbaa !16
  %mul204 = mul nsw i32 %16, 3
  store i32 %mul204, ptr %arrayidx130, align 4, !tbaa !16
  %mul206 = shl nsw i32 %15, 2
  store i32 %mul206, ptr %arrayidx124, align 8, !tbaa !16
  br label %for.cond332.preheader

if.else207:                                       ; preds = %if.else183
  %arrayidx212 = getelementptr inbounds i8, ptr %mid, i64 %idxprom108
  %21 = load i8, ptr %arrayidx212, align 1, !tbaa !21
  %cmp214 = icmp ult i8 %21, 8
  br i1 %cmp214, label %if.then216, label %if.else230

if.then216:                                       ; preds = %if.else207
  store i32 0, ptr %arrayidx110, align 4, !tbaa !16
  store i32 0, ptr %l, align 16, !tbaa !16
  store i32 0, ptr %arrayidx124, align 8, !tbaa !16
  %mul221 = shl nsw i32 %11, 1
  store i32 %mul221, ptr %arrayidx97, align 4, !tbaa !16
  %mul223 = shl nsw i32 %16, 1
  store i32 %mul223, ptr %arrayidx130, align 4, !tbaa !16
  %mul225 = mul nsw i32 %12, 3
  store i32 %mul225, ptr %arrayidx104, align 8, !tbaa !16
  %mul227 = mul nsw i32 %17, 3
  store i32 %mul227, ptr %arrayidx137, align 16, !tbaa !16
  %mul229 = shl nsw i32 %14, 2
  store i32 %mul229, ptr %arrayidx117, align 4, !tbaa !16
  br label %for.cond332.preheader

if.else230:                                       ; preds = %if.else207
  %arrayidx235 = getelementptr inbounds i8, ptr %mid, i64 %idxprom115
  %22 = load i8, ptr %arrayidx235, align 1, !tbaa !21
  %cmp237 = icmp ult i8 %22, 8
  br i1 %cmp237, label %if.then239, label %if.else253

if.then239:                                       ; preds = %if.else230
  store i32 0, ptr %arrayidx117, align 4, !tbaa !16
  store i32 0, ptr %arrayidx104, align 8, !tbaa !16
  store i32 0, ptr %arrayidx137, align 16, !tbaa !16
  %mul244 = shl nsw i32 %11, 1
  store i32 %mul244, ptr %arrayidx97, align 4, !tbaa !16
  %mul246 = shl nsw i32 %16, 1
  store i32 %mul246, ptr %arrayidx130, align 4, !tbaa !16
  %mul248 = mul nsw i32 %10, 3
  store i32 %mul248, ptr %l, align 16, !tbaa !16
  %mul250 = mul nsw i32 %15, 3
  store i32 %mul250, ptr %arrayidx124, align 8, !tbaa !16
  %mul252 = shl nsw i32 %13, 2
  store i32 %mul252, ptr %arrayidx110, align 4, !tbaa !16
  br label %for.cond332.preheader

if.else253:                                       ; preds = %if.else230
  %arrayidx259 = getelementptr inbounds i8, ptr %mid, i64 %idxprom122
  %23 = load i8, ptr %arrayidx259, align 1, !tbaa !21
  %cmp261 = icmp ult i8 %23, 8
  br i1 %cmp261, label %if.then263, label %if.else277

if.then263:                                       ; preds = %if.else253
  store i32 0, ptr %arrayidx124, align 8, !tbaa !16
  store i32 0, ptr %arrayidx110, align 4, !tbaa !16
  store i32 0, ptr %arrayidx130, align 4, !tbaa !16
  %mul268 = shl nsw i32 %10, 1
  store i32 %mul268, ptr %l, align 16, !tbaa !16
  %mul270 = shl nsw i32 %17, 1
  store i32 %mul270, ptr %arrayidx137, align 16, !tbaa !16
  %mul272 = mul nsw i32 %11, 3
  store i32 %mul272, ptr %arrayidx97, align 4, !tbaa !16
  %mul274 = mul nsw i32 %14, 3
  store i32 %mul274, ptr %arrayidx117, align 4, !tbaa !16
  %mul276 = shl nsw i32 %12, 2
  store i32 %mul276, ptr %arrayidx104, align 8, !tbaa !16
  br label %for.cond332.preheader

if.else277:                                       ; preds = %if.else253
  %arrayidx282 = getelementptr inbounds i8, ptr %mid, i64 %idxprom128
  %24 = load i8, ptr %arrayidx282, align 1, !tbaa !21
  %cmp284 = icmp ult i8 %24, 8
  br i1 %cmp284, label %if.then286, label %if.else300

if.then286:                                       ; preds = %if.else277
  store i32 0, ptr %arrayidx130, align 4, !tbaa !16
  store i32 0, ptr %arrayidx124, align 8, !tbaa !16
  store i32 0, ptr %arrayidx137, align 16, !tbaa !16
  %mul291 = shl nsw i32 %13, 1
  store i32 %mul291, ptr %arrayidx110, align 4, !tbaa !16
  %mul293 = shl nsw i32 %14, 1
  store i32 %mul293, ptr %arrayidx117, align 4, !tbaa !16
  %mul295 = mul nsw i32 %10, 3
  store i32 %mul295, ptr %l, align 16, !tbaa !16
  %mul297 = mul nsw i32 %12, 3
  store i32 %mul297, ptr %arrayidx104, align 8, !tbaa !16
  %mul299 = shl nsw i32 %11, 2
  store i32 %mul299, ptr %arrayidx97, align 4, !tbaa !16
  br label %for.cond332.preheader

if.else300:                                       ; preds = %if.else277
  %arrayidx306 = getelementptr inbounds i8, ptr %mid, i64 %idxprom135
  %25 = load i8, ptr %arrayidx306, align 1, !tbaa !21
  %cmp308 = icmp ult i8 %25, 8
  br i1 %cmp308, label %if.then310, label %for.cond332.preheader

if.then310:                                       ; preds = %if.else300
  store i32 0, ptr %arrayidx137, align 16, !tbaa !16
  store i32 0, ptr %arrayidx117, align 4, !tbaa !16
  store i32 0, ptr %arrayidx130, align 4, !tbaa !16
  %mul315 = shl nsw i32 %15, 1
  store i32 %mul315, ptr %arrayidx124, align 8, !tbaa !16
  %mul317 = shl nsw i32 %12, 1
  store i32 %mul317, ptr %arrayidx104, align 8, !tbaa !16
  %mul319 = mul nsw i32 %11, 3
  store i32 %mul319, ptr %arrayidx97, align 4, !tbaa !16
  %mul321 = mul nsw i32 %13, 3
  store i32 %mul321, ptr %arrayidx110, align 4, !tbaa !16
  %mul323 = shl nsw i32 %10, 2
  store i32 %mul323, ptr %l, align 16, !tbaa !16
  br label %for.cond332.preheader

for.cond332.preheader:                            ; preds = %if.then169, %if.then216, %if.then263, %if.else300, %if.then310, %if.then286, %if.then239, %if.then193, %if.then147
  br label %for.cond332

for.cond332:                                      ; preds = %for.cond332.preheader, %for.inc354
  %indvars.iv386 = phi i64 [ %indvars.iv.next387, %for.inc354 ], [ 0, %for.cond332.preheader ]
  %m.0 = phi i32 [ %m.1, %for.inc354 ], [ 0, %for.cond332.preheader ]
  %a.3 = phi i32 [ %a.4, %for.inc354 ], [ %a.1, %for.cond332.preheader ]
  %b.3 = phi i32 [ %b.4, %for.inc354 ], [ %b.1, %for.cond332.preheader ]
  %exitcond390.not = icmp eq i64 %indvars.iv386, 3
  br i1 %exitcond390.not, label %for.end356, label %for.cond336.preheader

for.cond336.preheader:                            ; preds = %for.cond332
  %26 = mul nuw nsw i64 %indvars.iv386, 3
  %27 = trunc nuw nsw i64 %indvars.iv386 to i32
  br label %for.cond336

for.cond336:                                      ; preds = %for.cond336.preheader, %for.body339
  %indvars.iv = phi i64 [ 0, %for.cond336.preheader ], [ %indvars.iv.next, %for.body339 ]
  %m.1 = phi i32 [ %m.0, %for.cond336.preheader ], [ %m.2, %for.body339 ]
  %a.4 = phi i32 [ %a.3, %for.cond336.preheader ], [ %a.5, %for.body339 ]
  %b.4 = phi i32 [ %b.3, %for.cond336.preheader ], [ %b.5, %for.body339 ]
  %exitcond.not = icmp eq i64 %indvars.iv, 3
  br i1 %exitcond.not, label %for.inc354, label %for.body339

for.body339:                                      ; preds = %for.cond336
  %28 = add nuw nsw i64 %indvars.iv, %26
  %arrayidx344 = getelementptr inbounds nuw [9 x i32], ptr %l, i64 0, i64 %28
  %29 = load i32, ptr %arrayidx344, align 4, !tbaa !16
  %cmp345 = icmp sgt i32 %29, %m.1
  %m.2 = tail call i32 @llvm.smax.i32(i32 %29, i32 %m.1)
  %a.5 = select i1 %cmp345, i32 %27, i32 %a.4
  %30 = trunc nuw nsw i64 %indvars.iv to i32
  %b.5 = select i1 %cmp345, i32 %30, i32 %b.4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond336, !llvm.loop !44

for.inc354:                                       ; preds = %for.cond336
  %indvars.iv.next387 = add nuw nsw i64 %indvars.iv386, 1
  br label %for.cond332, !llvm.loop !45

for.end356:                                       ; preds = %for.cond332
  %cmp357 = icmp sgt i32 %m.0, 0
  br i1 %cmp357, label %if.then359, label %if.end412

if.then359:                                       ; preds = %for.end356
  %31 = tail call i8 @llvm.umax.i8(i8 %0, i8 3)
  %add382.sink = add nuw nsw i8 %31, 1
  %sub385 = add i32 %sub11, %a.3
  %mul386 = mul nsw i32 %sub385, %x_size
  %add387 = add i32 %b.3, %j.0
  %add388 = add i32 %add387, %mul386
  %32 = sext i32 %add388 to i64
  %gep = getelementptr i8, ptr %invariant.gep, i64 %32
  store i8 %add382.sink, ptr %gep, align 1, !tbaa !21
  %add393 = shl nsw i32 %a.3, 1
  %add394 = add nsw i32 %add393, %b.3
  %cmp395 = icmp slt i32 %add394, 3
  br i1 %cmp395, label %if.then397, label %if.end412

if.then397:                                       ; preds = %if.then359
  %add399 = add i32 %sub11, %a.3
  %sub400 = add i32 %j.0, -2
  %add401 = add i32 %sub400, %b.3
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %add399, i32 4)
  %spec.store.select3 = tail call i32 @llvm.smax.i32(i32 %add401, i32 4)
  br label %if.end412

if.end412:                                        ; preds = %if.then, %if.then397, %for.end356, %if.then359
  %a.2 = phi i32 [ %a.3, %if.then397 ], [ %a.3, %if.then359 ], [ %a.3, %for.end356 ], [ %a.1, %if.then ]
  %b.2 = phi i32 [ %b.3, %if.then397 ], [ %b.3, %if.then359 ], [ %b.3, %for.end356 ], [ %b.1, %if.then ]
  %i.2 = phi i32 [ %spec.store.select, %if.then397 ], [ %i.1, %if.then359 ], [ %i.1, %for.end356 ], [ %i.1, %if.then ]
  %j.1 = phi i32 [ %spec.store.select3, %if.then397 ], [ %j.0, %if.then359 ], [ %j.0, %for.end356 ], [ %j.0, %if.then ]
  %cmp413 = icmp eq i32 %add67, 2
  br i1 %cmp413, label %if.then415, label %if.end709

if.then415:                                       ; preds = %if.end412
  %sub416 = add nsw i32 %i.2, -1
  %mul417 = mul nsw i32 %sub416, %x_size
  %add418 = add nsw i32 %mul417, %j.1
  %33 = sext i32 %add418 to i64
  %34 = getelementptr i8, ptr %mid, i64 %33
  %arrayidx421 = getelementptr i8, ptr %34, i64 -1
  %35 = load i8, ptr %arrayidx421, align 1, !tbaa !21
  %cmp423 = icmp ult i8 %35, 8
  %conv424 = zext i1 %cmp423 to i32
  %arrayidx430 = getelementptr i8, ptr %34, i64 1
  %36 = load i8, ptr %arrayidx430, align 1, !tbaa !21
  %cmp432 = icmp ult i8 %36, 8
  %conv433 = zext i1 %cmp432 to i32
  %add434 = add nsw i32 %i.2, 1
  %mul435 = mul nsw i32 %add434, %x_size
  %add436 = add nsw i32 %mul435, %j.1
  %37 = sext i32 %add436 to i64
  %38 = getelementptr i8, ptr %mid, i64 %37
  %arrayidx439 = getelementptr i8, ptr %38, i64 -1
  %39 = load i8, ptr %arrayidx439, align 1, !tbaa !21
  %cmp441 = icmp ult i8 %39, 8
  %conv442 = zext i1 %cmp441 to i32
  %arrayidx448 = getelementptr i8, ptr %38, i64 1
  %40 = load i8, ptr %arrayidx448, align 1, !tbaa !21
  %cmp450 = icmp ult i8 %40, 8
  %conv451 = zext i1 %cmp450 to i32
  %add452 = add nuw nsw i32 %conv433, %conv424
  %add453 = add nuw nsw i32 %add452, %conv442
  %add454 = add nuw nsw i32 %add453, %conv451
  %cmp455 = icmp eq i32 %add454, 2
  br i1 %cmp455, label %land.lhs.true457, label %if.else565

land.lhs.true457:                                 ; preds = %if.then415
  %or = or i32 %conv451, %conv424
  %or458 = or i32 %conv442, %conv433
  %and = and i32 %or, %or458
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else565, label %if.then459

if.then459:                                       ; preds = %land.lhs.true457
  %not.cmp432380 = xor i1 %cmp432, true
  br i1 %cmp423, label %if.then461, label %if.else466

if.then461:                                       ; preds = %if.then459
  %.358 = sext i1 %not.cmp432380 to i32
  %.360 = sext i1 %cmp432 to i32
  br label %if.end471

if.else466:                                       ; preds = %if.then459
  %.364 = zext i1 %not.cmp432380 to i32
  br label %if.end471

if.end471:                                        ; preds = %if.else466, %if.then461
  %cmp484 = phi i1 [ %cmp432, %if.then461 ], [ %not.cmp432380, %if.else466 ]
  %x.1 = phi i32 [ %.358, %if.then461 ], [ %conv433, %if.else466 ]
  %cmp518 = phi i1 [ %not.cmp432380, %if.then461 ], [ %cmp432, %if.else466 ]
  %y.1 = phi i32 [ %.360, %if.then461 ], [ %.364, %if.else466 ]
  %add472 = add nsw i32 %y.1, %i.2
  %mul473 = mul nsw i32 %add472, %x_size
  %add474 = add i32 %x.1, %j.1
  %add475 = add i32 %add474, %mul473
  %idxprom476 = sext i32 %add475 to i64
  %arrayidx477 = getelementptr inbounds i32, ptr %r, i64 %idxprom476
  %41 = load i32, ptr %arrayidx477, align 4, !tbaa !16
  %conv478 = sitofp i32 %41 to float
  %conv479 = sitofp i32 %1 to float
  %div = fdiv float %conv478, %conv479
  %conv480 = fpext float %div to double
  %cmp481 = fcmp ogt double %conv480, 0x3FE6666666666666
  br i1 %cmp481, label %if.then483, label %for.inc823

if.then483:                                       ; preds = %if.end471
  br i1 %cmp484, label %land.lhs.true486, label %lor.lhs.false

land.lhs.true486:                                 ; preds = %if.then483
  %mul487 = shl nsw i32 %y.1, 1
  %add488 = add nsw i32 %mul487, %i.2
  %mul489 = mul nsw i32 %add488, %x_size
  %add490 = add nsw i32 %mul489, %j.1
  %idxprom491 = sext i32 %add490 to i64
  %arrayidx492 = getelementptr inbounds i8, ptr %mid, i64 %idxprom491
  %42 = load i8, ptr %arrayidx492, align 1, !tbaa !21
  %cmp494 = icmp ugt i8 %42, 7
  br i1 %cmp494, label %land.lhs.true496, label %lor.lhs.false

land.lhs.true496:                                 ; preds = %land.lhs.true486
  %arrayidx503 = getelementptr i8, ptr %arrayidx492, i64 -1
  %43 = load i8, ptr %arrayidx503, align 1, !tbaa !21
  %cmp505 = icmp ugt i8 %43, 7
  br i1 %cmp505, label %land.lhs.true507, label %lor.lhs.false

land.lhs.true507:                                 ; preds = %land.lhs.true496
  %arrayidx514 = getelementptr i8, ptr %arrayidx492, i64 1
  %44 = load i8, ptr %arrayidx514, align 1, !tbaa !21
  %cmp516 = icmp ugt i8 %44, 7
  br i1 %cmp516, label %land.lhs.true507.if.then552_crit_edge, label %lor.lhs.false

land.lhs.true507.if.then552_crit_edge:            ; preds = %land.lhs.true507
  %.pre = mul nsw i32 %i.2, %x_size
  %.pre391 = add nsw i32 %.pre, %j.1
  br label %if.then552

lor.lhs.false:                                    ; preds = %land.lhs.true507, %land.lhs.true496, %land.lhs.true486, %if.then483
  br i1 %cmp518, label %land.lhs.true520, label %for.inc823

land.lhs.true520:                                 ; preds = %lor.lhs.false
  %mul521 = mul nsw i32 %i.2, %x_size
  %add522 = add nsw i32 %mul521, %j.1
  %mul523 = shl nsw i32 %x.1, 1
  %add524 = add nsw i32 %add522, %mul523
  %idxprom525 = sext i32 %add524 to i64
  %arrayidx526 = getelementptr inbounds i8, ptr %mid, i64 %idxprom525
  %45 = load i8, ptr %arrayidx526, align 1, !tbaa !21
  %cmp528 = icmp ugt i8 %45, 7
  br i1 %cmp528, label %land.lhs.true530, label %for.inc823

land.lhs.true530:                                 ; preds = %land.lhs.true520
  %add535 = add nsw i32 %mul523, %add436
  %idxprom536 = sext i32 %add535 to i64
  %arrayidx537 = getelementptr inbounds i8, ptr %mid, i64 %idxprom536
  %46 = load i8, ptr %arrayidx537, align 1, !tbaa !21
  %cmp539 = icmp ugt i8 %46, 7
  br i1 %cmp539, label %land.lhs.true541, label %for.inc823

land.lhs.true541:                                 ; preds = %land.lhs.true530
  %add546 = add nsw i32 %mul523, %add418
  %idxprom547 = sext i32 %add546 to i64
  %arrayidx548 = getelementptr inbounds i8, ptr %mid, i64 %idxprom547
  %47 = load i8, ptr %arrayidx548, align 1, !tbaa !21
  %cmp550 = icmp ugt i8 %47, 7
  br i1 %cmp550, label %if.then552, label %for.inc823

if.then552:                                       ; preds = %land.lhs.true507.if.then552_crit_edge, %land.lhs.true541
  %add554.pre-phi = phi i32 [ %.pre391, %land.lhs.true507.if.then552_crit_edge ], [ %add522, %land.lhs.true541 ]
  %idxprom555 = sext i32 %add554.pre-phi to i64
  %arrayidx556 = getelementptr inbounds i8, ptr %mid, i64 %idxprom555
  store i8 100, ptr %arrayidx556, align 1, !tbaa !21
  %arrayidx562 = getelementptr inbounds i8, ptr %mid, i64 %idxprom476
  store i8 3, ptr %arrayidx562, align 1, !tbaa !21
  br label %for.inc823

if.else565:                                       ; preds = %land.lhs.true457, %if.then415
  %48 = load i8, ptr %34, align 1, !tbaa !21
  %cmp572 = icmp ult i8 %48, 8
  %conv573 = zext i1 %cmp572 to i32
  %mul574 = mul nsw i32 %i.2, %x_size
  %add575 = add nsw i32 %mul574, %j.1
  %49 = sext i32 %add575 to i64
  %50 = getelementptr i8, ptr %mid, i64 %49
  %arrayidx578 = getelementptr i8, ptr %50, i64 1
  %51 = load i8, ptr %arrayidx578, align 1, !tbaa !21
  %cmp580 = icmp ult i8 %51, 8
  %conv581 = zext i1 %cmp580 to i32
  %52 = load i8, ptr %38, align 1, !tbaa !21
  %cmp588 = icmp ult i8 %52, 8
  %conv589 = zext i1 %cmp588 to i32
  %arrayidx594 = getelementptr i8, ptr %50, i64 -1
  %53 = load i8, ptr %arrayidx594, align 1, !tbaa !21
  %cmp596 = icmp ult i8 %53, 8
  %conv597 = zext i1 %cmp596 to i32
  %add598 = add nuw nsw i32 %conv581, %conv573
  %add599 = add nuw nsw i32 %add598, %conv589
  %add600 = add nuw nsw i32 %add599, %conv597
  %cmp601 = icmp eq i32 %add600, 2
  br i1 %cmp601, label %land.lhs.true603, label %for.inc823

land.lhs.true603:                                 ; preds = %if.else565
  %or604 = or i32 %conv597, %conv581
  %or605 = or i32 %conv589, %conv573
  %and606 = and i32 %or604, %or605
  %tobool607.not = icmp eq i32 %and606, 0
  br i1 %tobool607.not, label %for.inc823, label %land.lhs.true608

land.lhs.true608:                                 ; preds = %land.lhs.true603
  %sub609 = add nsw i32 %i.2, -2
  %mul610 = mul nsw i32 %sub609, %x_size
  %add611 = add nsw i32 %mul610, %j.1
  %54 = sext i32 %add611 to i64
  %55 = getelementptr i8, ptr %mid, i64 %54
  %arrayidx614 = getelementptr i8, ptr %55, i64 -1
  %56 = load i8, ptr %arrayidx614, align 1, !tbaa !21
  %cmp616 = icmp ult i8 %56, 8
  %arrayidx623 = getelementptr i8, ptr %55, i64 1
  %57 = load i8, ptr %arrayidx623, align 1, !tbaa !21
  %cmp625 = icmp ult i8 %57, 8
  %or627343 = or i1 %cmp616, %cmp625
  %and628344 = and i1 %cmp572, %or627343
  %arrayidx634 = getelementptr i8, ptr %34, i64 -2
  %58 = load i8, ptr %arrayidx634, align 1, !tbaa !21
  %cmp636 = icmp ult i8 %58, 8
  %arrayidx643 = getelementptr i8, ptr %38, i64 -2
  %59 = load i8, ptr %arrayidx643, align 1, !tbaa !21
  %cmp645 = icmp ult i8 %59, 8
  %or647345 = or i1 %cmp636, %cmp645
  %and648346 = and i1 %cmp596, %or647345
  %or649347 = or i1 %and628344, %and648346
  %arrayidx655 = getelementptr i8, ptr %34, i64 2
  %60 = load i8, ptr %arrayidx655, align 1, !tbaa !21
  %cmp657 = icmp ult i8 %60, 8
  %arrayidx664 = getelementptr i8, ptr %38, i64 2
  %61 = load i8, ptr %arrayidx664, align 1, !tbaa !21
  %cmp666 = icmp ult i8 %61, 8
  %or668348 = or i1 %cmp657, %cmp666
  %and669349 = and i1 %cmp580, %or668348
  %or670350 = or i1 %or649347, %and669349
  %add671 = add nsw i32 %i.2, 2
  %mul672 = mul nsw i32 %add671, %x_size
  %add673 = add nsw i32 %mul672, %j.1
  %62 = sext i32 %add673 to i64
  %63 = getelementptr i8, ptr %mid, i64 %62
  %arrayidx676 = getelementptr i8, ptr %63, i64 -1
  %64 = load i8, ptr %arrayidx676, align 1, !tbaa !21
  %cmp678 = icmp ult i8 %64, 8
  %arrayidx685 = getelementptr i8, ptr %63, i64 1
  %65 = load i8, ptr %arrayidx685, align 1, !tbaa !21
  %cmp687 = icmp ult i8 %65, 8
  %or689351 = or i1 %cmp678, %cmp687
  %and690352 = and i1 %cmp588, %or689351
  %or691353 = or i1 %or670350, %and690352
  br i1 %or691353, label %if.then693, label %for.inc823

if.then693:                                       ; preds = %land.lhs.true608
  store i8 100, ptr %50, align 1, !tbaa !21
  %66 = tail call i32 @llvm.smax.i32(i32 %i.2, i32 5)
  %spec.store.select1 = add nsw i32 %66, -1
  %67 = tail call i32 @llvm.smax.i32(i32 %j.1, i32 6)
  %spec.store.select4 = add nsw i32 %67, -2
  br label %for.inc823

if.end709:                                        ; preds = %if.end412
  %cmp710 = icmp sgt i32 %add67, 2
  br i1 %cmp710, label %if.then712, label %for.inc823

if.then712:                                       ; preds = %if.end709
  %sub713 = add nsw i32 %i.2, -1
  %mul714 = mul nsw i32 %sub713, %x_size
  %add715 = add nsw i32 %mul714, %j.1
  %idxprom716 = sext i32 %add715 to i64
  %arrayidx717 = getelementptr inbounds i8, ptr %mid, i64 %idxprom716
  %68 = load i8, ptr %arrayidx717, align 1, !tbaa !21
  %cmp719 = icmp ult i8 %68, 8
  %conv720 = zext i1 %cmp719 to i32
  %mul721 = mul nsw i32 %i.2, %x_size
  %add722 = add nsw i32 %mul721, %j.1
  %69 = sext i32 %add722 to i64
  %70 = getelementptr i8, ptr %mid, i64 %69
  %arrayidx725 = getelementptr i8, ptr %70, i64 1
  %71 = load i8, ptr %arrayidx725, align 1, !tbaa !21
  %cmp727 = icmp ult i8 %71, 8
  %conv728 = zext i1 %cmp727 to i32
  %add729 = add nsw i32 %i.2, 1
  %mul730 = mul nsw i32 %add729, %x_size
  %add731 = add nsw i32 %mul730, %j.1
  %idxprom732 = sext i32 %add731 to i64
  %arrayidx733 = getelementptr inbounds i8, ptr %mid, i64 %idxprom732
  %72 = load i8, ptr %arrayidx733, align 1, !tbaa !21
  %cmp735 = icmp ult i8 %72, 8
  %conv736 = zext i1 %cmp735 to i32
  %arrayidx741 = getelementptr i8, ptr %70, i64 -1
  %73 = load i8, ptr %arrayidx741, align 1, !tbaa !21
  %cmp743 = icmp ult i8 %73, 8
  %conv744 = zext i1 %cmp743 to i32
  %add745 = add nuw nsw i32 %conv728, %conv720
  %add746 = add nuw nsw i32 %add745, %conv736
  %add747 = add nuw nsw i32 %add746, %conv744
  %cmp748 = icmp samesign ugt i32 %add747, 1
  br i1 %cmp748, label %if.then750, label %for.inc823

if.then750:                                       ; preds = %if.then712
  %arrayidx756 = getelementptr i8, ptr %arrayidx717, i64 -1
  %74 = load i8, ptr %arrayidx756, align 1, !tbaa !21
  %cmp758 = icmp ult i8 %74, 8
  %arrayidx765 = getelementptr i8, ptr %arrayidx717, i64 1
  %75 = load i8, ptr %arrayidx765, align 1, !tbaa !21
  %cmp767 = icmp ult i8 %75, 8
  %arrayidx774 = getelementptr i8, ptr %arrayidx733, i64 -1
  %76 = load i8, ptr %arrayidx774, align 1, !tbaa !21
  %cmp776 = icmp ult i8 %76, 8
  %arrayidx783 = getelementptr i8, ptr %arrayidx733, i64 1
  %77 = load i8, ptr %arrayidx783, align 1, !tbaa !21
  %cmp785 = icmp ult i8 %77, 8
  %or787354 = or i1 %cmp719, %cmp758
  %or787 = zext i1 %or787354 to i32
  %or788355 = or i1 %cmp727, %cmp767
  %or788 = zext i1 %or788355 to i32
  %or789356 = or i1 %cmp735, %cmp785
  %or789 = zext i1 %or789356 to i32
  %or790357 = or i1 %cmp743, %cmp776
  %or790 = zext i1 %or790357 to i32
  %and794 = and i32 %or788, %conv720
  %and795 = and i32 %or789, %conv728
  %and797 = and i32 %or790, %conv736
  %and799 = and i32 %or787, %conv744
  %add796.neg = add nuw nsw i32 %or788, %or787
  %78 = add nuw nsw i32 %add796.neg, %or790
  %79 = add nuw nsw i32 %and799, %and794
  %80 = add nuw nsw i32 %78, %or789
  %81 = add nuw nsw i32 %79, %and797
  %82 = add nuw nsw i32 %81, %and795
  %sub801 = sub nsw i32 %80, %82
  %cmp802 = icmp slt i32 %sub801, 2
  br i1 %cmp802, label %if.then804, label %for.inc823

if.then804:                                       ; preds = %if.then750
  store i8 100, ptr %70, align 1, !tbaa !21
  %83 = tail call i32 @llvm.smax.i32(i32 %i.2, i32 5)
  %spec.store.select2 = add nsw i32 %83, -1
  %84 = tail call i32 @llvm.smax.i32(i32 %j.1, i32 6)
  %spec.store.select5 = add nsw i32 %84, -2
  br label %for.inc823

for.inc823:                                       ; preds = %land.lhs.true, %if.then70, %if.else565, %land.lhs.true603, %land.lhs.true608, %if.end471, %if.then552, %land.lhs.true541, %land.lhs.true530, %land.lhs.true520, %lor.lhs.false, %if.then693, %if.then804, %for.body4, %if.then712, %if.then750, %if.end709
  %a.6 = phi i32 [ %a.2, %if.then804 ], [ %a.2, %if.then750 ], [ %a.2, %if.then712 ], [ %a.2, %if.end709 ], [ %a.1, %for.body4 ], [ %a.2, %if.else565 ], [ %a.2, %land.lhs.true603 ], [ %a.2, %land.lhs.true608 ], [ %a.2, %if.then693 ], [ %a.2, %if.end471 ], [ %a.2, %lor.lhs.false ], [ %a.2, %land.lhs.true520 ], [ %a.2, %land.lhs.true530 ], [ %a.2, %land.lhs.true541 ], [ %a.2, %if.then552 ], [ %a.1, %if.then70 ], [ %a.1, %land.lhs.true ]
  %b.6 = phi i32 [ %b.2, %if.then804 ], [ %b.2, %if.then750 ], [ %b.2, %if.then712 ], [ %b.2, %if.end709 ], [ %b.1, %for.body4 ], [ %b.2, %if.else565 ], [ %b.2, %land.lhs.true603 ], [ %b.2, %land.lhs.true608 ], [ %b.2, %if.then693 ], [ %b.2, %if.end471 ], [ %b.2, %lor.lhs.false ], [ %b.2, %land.lhs.true520 ], [ %b.2, %land.lhs.true530 ], [ %b.2, %land.lhs.true541 ], [ %b.2, %if.then552 ], [ %b.1, %if.then70 ], [ %b.1, %land.lhs.true ]
  %i.4 = phi i32 [ %spec.store.select2, %if.then804 ], [ %i.2, %if.then750 ], [ %i.2, %if.then712 ], [ %i.2, %if.end709 ], [ %i.1, %for.body4 ], [ %i.2, %if.else565 ], [ %i.2, %land.lhs.true603 ], [ %i.2, %land.lhs.true608 ], [ %spec.store.select1, %if.then693 ], [ %i.2, %if.end471 ], [ %i.2, %lor.lhs.false ], [ %i.2, %land.lhs.true520 ], [ %i.2, %land.lhs.true530 ], [ %i.2, %land.lhs.true541 ], [ %i.2, %if.then552 ], [ %i.1, %if.then70 ], [ %i.1, %land.lhs.true ]
  %j.3 = phi i32 [ %spec.store.select5, %if.then804 ], [ %j.1, %if.then750 ], [ %j.1, %if.then712 ], [ %j.1, %if.end709 ], [ %j.0, %for.body4 ], [ %j.1, %if.else565 ], [ %j.1, %land.lhs.true603 ], [ %j.1, %land.lhs.true608 ], [ %spec.store.select4, %if.then693 ], [ %j.1, %if.end471 ], [ %j.1, %lor.lhs.false ], [ %j.1, %land.lhs.true520 ], [ %j.1, %land.lhs.true530 ], [ %j.1, %land.lhs.true541 ], [ %j.1, %if.then552 ], [ %j.0, %if.then70 ], [ %j.0, %land.lhs.true ]
  %inc824 = add nsw i32 %j.3, 1
  br label %for.cond1, !llvm.loop !46

for.inc826:                                       ; preds = %for.cond1
  %inc827 = add nsw i32 %i.1, 1
  br label %for.cond, !llvm.loop !47

for.end828:                                       ; preds = %for.cond
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
  %sub4 = add i32 %x_size, -3
  %idx.ext36 = sext i32 %sub4 to i64
  %sub72 = add nsw i32 %x_size, -5
  %idx.ext73 = sext i32 %sub72 to i64
  %sub123 = add nsw i32 %x_size, -6
  %idx.ext124 = sext i32 %sub123 to i64
  %smax = tail call i32 @llvm.smax.i32(i32 %sub4, i32 3)
  %0 = sext i32 %x_size to i64
  %1 = tail call i32 @llvm.smax.i32(i32 %y_size, i32 6)
  %smax805 = add nsw i32 %1, -3
  %wide.trip.count806 = zext nneg i32 %smax805 to i64
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond

for.cond:                                         ; preds = %for.inc285, %entry
  %indvars.iv799 = phi i64 [ %indvars.iv.next800, %for.inc285 ], [ 3, %entry ]
  %exitcond807.not = icmp eq i64 %indvars.iv799, %wide.trip.count806
  br i1 %exitcond807.not, label %for.cond288.preheader, label %for.cond3.preheader

for.cond3.preheader:                              ; preds = %for.cond
  %2 = add nsw i64 %indvars.iv799, -3
  %3 = mul nsw i64 %2, %0
  %add.ptr = getelementptr inbounds i8, ptr %in, i64 %3
  %4 = mul nsw i64 %indvars.iv799, %0
  br label %for.cond3

for.cond288.preheader:                            ; preds = %for.cond
  %sub294 = add i32 %x_size, -4
  %smax812 = tail call i32 @llvm.smax.i32(i32 %sub294, i32 4)
  %5 = tail call i32 @llvm.smax.i32(i32 %y_size, i32 8)
  %smax823 = add nsw i32 %5, -4
  %wide.trip.count824 = zext nneg i32 %smax823 to i64
  %wide.trip.count813 = zext nneg i32 %smax812 to i64
  br label %for.cond288

for.cond3:                                        ; preds = %for.cond3.preheader, %for.inc
  %indvars.iv = phi i64 [ 3, %for.cond3.preheader ], [ %indvars.iv.next, %for.inc ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.inc285, label %for.body7

for.body7:                                        ; preds = %for.cond3
  %add.ptr11 = getelementptr inbounds nuw i8, ptr %add.ptr, i64 %indvars.iv
  %add.ptr12 = getelementptr inbounds i8, ptr %add.ptr11, i64 -1
  %6 = add nsw i64 %indvars.iv, %4
  %arrayidx = getelementptr inbounds i8, ptr %in, i64 %6
  %7 = load i8, ptr %arrayidx, align 1, !tbaa !21
  %idx.ext15 = zext i8 %7 to i64
  %add.ptr16 = getelementptr inbounds nuw i8, ptr %bp, i64 %idx.ext15
  %8 = load i8, ptr %add.ptr12, align 1, !tbaa !21
  %idx.ext18 = zext i8 %8 to i64
  %idx.neg = sub nsw i64 0, %idx.ext18
  %add.ptr19 = getelementptr inbounds i8, ptr %add.ptr16, i64 %idx.neg
  %9 = load i8, ptr %add.ptr19, align 1, !tbaa !21
  %conv20 = zext i8 %9 to i32
  %add21 = add nuw nsw i32 %conv20, 100
  %incdec.ptr22 = getelementptr inbounds nuw i8, ptr %add.ptr11, i64 1
  %10 = load i8, ptr %add.ptr11, align 1, !tbaa !21
  %idx.ext24 = zext i8 %10 to i64
  %idx.neg25 = sub nsw i64 0, %idx.ext24
  %add.ptr26 = getelementptr inbounds i8, ptr %add.ptr16, i64 %idx.neg25
  %11 = load i8, ptr %add.ptr26, align 1, !tbaa !21
  %conv27 = zext i8 %11 to i32
  %add28 = add nuw nsw i32 %add21, %conv27
  %12 = load i8, ptr %incdec.ptr22, align 1, !tbaa !21
  %idx.ext30 = zext i8 %12 to i64
  %idx.neg31 = sub nsw i64 0, %idx.ext30
  %add.ptr32 = getelementptr inbounds i8, ptr %add.ptr16, i64 %idx.neg31
  %13 = load i8, ptr %add.ptr32, align 1, !tbaa !21
  %conv33 = zext i8 %13 to i32
  %add34 = add nuw nsw i32 %add28, %conv33
  %add.ptr37 = getelementptr inbounds i8, ptr %incdec.ptr22, i64 %idx.ext36
  %incdec.ptr38 = getelementptr inbounds nuw i8, ptr %add.ptr37, i64 1
  %14 = load i8, ptr %add.ptr37, align 1, !tbaa !21
  %idx.ext40 = zext i8 %14 to i64
  %idx.neg41 = sub nsw i64 0, %idx.ext40
  %add.ptr42 = getelementptr inbounds i8, ptr %add.ptr16, i64 %idx.neg41
  %15 = load i8, ptr %add.ptr42, align 1, !tbaa !21
  %conv43 = zext i8 %15 to i32
  %add44 = add nuw nsw i32 %add34, %conv43
  %incdec.ptr45 = getelementptr inbounds nuw i8, ptr %add.ptr37, i64 2
  %16 = load i8, ptr %incdec.ptr38, align 1, !tbaa !21
  %idx.ext47 = zext i8 %16 to i64
  %idx.neg48 = sub nsw i64 0, %idx.ext47
  %add.ptr49 = getelementptr inbounds i8, ptr %add.ptr16, i64 %idx.neg48
  %17 = load i8, ptr %add.ptr49, align 1, !tbaa !21
  %conv50 = zext i8 %17 to i32
  %add51 = add nuw nsw i32 %add44, %conv50
  %incdec.ptr52 = getelementptr inbounds nuw i8, ptr %add.ptr37, i64 3
  %18 = load i8, ptr %incdec.ptr45, align 1, !tbaa !21
  %idx.ext54 = zext i8 %18 to i64
  %idx.neg55 = sub nsw i64 0, %idx.ext54
  %add.ptr56 = getelementptr inbounds i8, ptr %add.ptr16, i64 %idx.neg55
  %19 = load i8, ptr %add.ptr56, align 1, !tbaa !21
  %conv57 = zext i8 %19 to i32
  %add58 = add nuw nsw i32 %add51, %conv57
  %incdec.ptr59 = getelementptr inbounds nuw i8, ptr %add.ptr37, i64 4
  %20 = load i8, ptr %incdec.ptr52, align 1, !tbaa !21
  %idx.ext61 = zext i8 %20 to i64
  %idx.neg62 = sub nsw i64 0, %idx.ext61
  %add.ptr63 = getelementptr inbounds i8, ptr %add.ptr16, i64 %idx.neg62
  %21 = load i8, ptr %add.ptr63, align 1, !tbaa !21
  %conv64 = zext i8 %21 to i32
  %add65 = add nuw nsw i32 %add58, %conv64
  %22 = load i8, ptr %incdec.ptr59, align 1, !tbaa !21
  %idx.ext67 = zext i8 %22 to i64
  %idx.neg68 = sub nsw i64 0, %idx.ext67
  %add.ptr69 = getelementptr inbounds i8, ptr %add.ptr16, i64 %idx.neg68
  %23 = load i8, ptr %add.ptr69, align 1, !tbaa !21
  %conv70 = zext i8 %23 to i32
  %add71 = add nuw nsw i32 %add65, %conv70
  %add.ptr74 = getelementptr inbounds i8, ptr %incdec.ptr59, i64 %idx.ext73
  %incdec.ptr75 = getelementptr inbounds nuw i8, ptr %add.ptr74, i64 1
  %24 = load i8, ptr %add.ptr74, align 1, !tbaa !21
  %idx.ext77 = zext i8 %24 to i64
  %idx.neg78 = sub nsw i64 0, %idx.ext77
  %add.ptr79 = getelementptr inbounds i8, ptr %add.ptr16, i64 %idx.neg78
  %25 = load i8, ptr %add.ptr79, align 1, !tbaa !21
  %conv80 = zext i8 %25 to i32
  %add81 = add nuw nsw i32 %add71, %conv80
  %incdec.ptr82 = getelementptr inbounds nuw i8, ptr %add.ptr74, i64 2
  %26 = load i8, ptr %incdec.ptr75, align 1, !tbaa !21
  %idx.ext84 = zext i8 %26 to i64
  %idx.neg85 = sub nsw i64 0, %idx.ext84
  %add.ptr86 = getelementptr inbounds i8, ptr %add.ptr16, i64 %idx.neg85
  %27 = load i8, ptr %add.ptr86, align 1, !tbaa !21
  %conv87 = zext i8 %27 to i32
  %add88 = add nuw nsw i32 %add81, %conv87
  %incdec.ptr89 = getelementptr inbounds nuw i8, ptr %add.ptr74, i64 3
  %28 = load i8, ptr %incdec.ptr82, align 1, !tbaa !21
  %idx.ext91 = zext i8 %28 to i64
  %idx.neg92 = sub nsw i64 0, %idx.ext91
  %add.ptr93 = getelementptr inbounds i8, ptr %add.ptr16, i64 %idx.neg92
  %29 = load i8, ptr %add.ptr93, align 1, !tbaa !21
  %conv94 = zext i8 %29 to i32
  %add95 = add nuw nsw i32 %add88, %conv94
  %incdec.ptr96 = getelementptr inbounds nuw i8, ptr %add.ptr74, i64 4
  %30 = load i8, ptr %incdec.ptr89, align 1, !tbaa !21
  %idx.ext98 = zext i8 %30 to i64
  %idx.neg99 = sub nsw i64 0, %idx.ext98
  %add.ptr100 = getelementptr inbounds i8, ptr %add.ptr16, i64 %idx.neg99
  %31 = load i8, ptr %add.ptr100, align 1, !tbaa !21
  %conv101 = zext i8 %31 to i32
  %add102 = add nuw nsw i32 %add95, %conv101
  %incdec.ptr103 = getelementptr inbounds nuw i8, ptr %add.ptr74, i64 5
  %32 = load i8, ptr %incdec.ptr96, align 1, !tbaa !21
  %idx.ext105 = zext i8 %32 to i64
  %idx.neg106 = sub nsw i64 0, %idx.ext105
  %add.ptr107 = getelementptr inbounds i8, ptr %add.ptr16, i64 %idx.neg106
  %33 = load i8, ptr %add.ptr107, align 1, !tbaa !21
  %conv108 = zext i8 %33 to i32
  %add109 = add nuw nsw i32 %add102, %conv108
  %incdec.ptr110 = getelementptr inbounds nuw i8, ptr %add.ptr74, i64 6
  %34 = load i8, ptr %incdec.ptr103, align 1, !tbaa !21
  %idx.ext112 = zext i8 %34 to i64
  %idx.neg113 = sub nsw i64 0, %idx.ext112
  %add.ptr114 = getelementptr inbounds i8, ptr %add.ptr16, i64 %idx.neg113
  %35 = load i8, ptr %add.ptr114, align 1, !tbaa !21
  %conv115 = zext i8 %35 to i32
  %add116 = add nuw nsw i32 %add109, %conv115
  %36 = load i8, ptr %incdec.ptr110, align 1, !tbaa !21
  %idx.ext118 = zext i8 %36 to i64
  %idx.neg119 = sub nsw i64 0, %idx.ext118
  %add.ptr120 = getelementptr inbounds i8, ptr %add.ptr16, i64 %idx.neg119
  %37 = load i8, ptr %add.ptr120, align 1, !tbaa !21
  %conv121 = zext i8 %37 to i32
  %add122 = add nuw nsw i32 %add116, %conv121
  %add.ptr125 = getelementptr inbounds i8, ptr %incdec.ptr110, i64 %idx.ext124
  %incdec.ptr126 = getelementptr inbounds nuw i8, ptr %add.ptr125, i64 1
  %38 = load i8, ptr %add.ptr125, align 1, !tbaa !21
  %idx.ext128 = zext i8 %38 to i64
  %idx.neg129 = sub nsw i64 0, %idx.ext128
  %add.ptr130 = getelementptr inbounds i8, ptr %add.ptr16, i64 %idx.neg129
  %39 = load i8, ptr %add.ptr130, align 1, !tbaa !21
  %conv131 = zext i8 %39 to i32
  %add132 = add nuw nsw i32 %add122, %conv131
  %incdec.ptr133 = getelementptr inbounds nuw i8, ptr %add.ptr125, i64 2
  %40 = load i8, ptr %incdec.ptr126, align 1, !tbaa !21
  %idx.ext135 = zext i8 %40 to i64
  %idx.neg136 = sub nsw i64 0, %idx.ext135
  %add.ptr137 = getelementptr inbounds i8, ptr %add.ptr16, i64 %idx.neg136
  %41 = load i8, ptr %add.ptr137, align 1, !tbaa !21
  %conv138 = zext i8 %41 to i32
  %add139 = add nuw nsw i32 %add132, %conv138
  %42 = load i8, ptr %incdec.ptr133, align 1, !tbaa !21
  %idx.ext141 = zext i8 %42 to i64
  %idx.neg142 = sub nsw i64 0, %idx.ext141
  %add.ptr143 = getelementptr inbounds i8, ptr %add.ptr16, i64 %idx.neg142
  %43 = load i8, ptr %add.ptr143, align 1, !tbaa !21
  %conv144 = zext i8 %43 to i32
  %add145 = add nuw nsw i32 %add139, %conv144
  %add.ptr146 = getelementptr inbounds nuw i8, ptr %add.ptr125, i64 4
  %incdec.ptr147 = getelementptr inbounds nuw i8, ptr %add.ptr125, i64 5
  %44 = load i8, ptr %add.ptr146, align 1, !tbaa !21
  %idx.ext149 = zext i8 %44 to i64
  %idx.neg150 = sub nsw i64 0, %idx.ext149
  %add.ptr151 = getelementptr inbounds i8, ptr %add.ptr16, i64 %idx.neg150
  %45 = load i8, ptr %add.ptr151, align 1, !tbaa !21
  %conv152 = zext i8 %45 to i32
  %add153 = add nuw nsw i32 %add145, %conv152
  %incdec.ptr154 = getelementptr inbounds nuw i8, ptr %add.ptr125, i64 6
  %46 = load i8, ptr %incdec.ptr147, align 1, !tbaa !21
  %idx.ext156 = zext i8 %46 to i64
  %idx.neg157 = sub nsw i64 0, %idx.ext156
  %add.ptr158 = getelementptr inbounds i8, ptr %add.ptr16, i64 %idx.neg157
  %47 = load i8, ptr %add.ptr158, align 1, !tbaa !21
  %conv159 = zext i8 %47 to i32
  %add160 = add nuw nsw i32 %add153, %conv159
  %48 = load i8, ptr %incdec.ptr154, align 1, !tbaa !21
  %idx.ext162 = zext i8 %48 to i64
  %idx.neg163 = sub nsw i64 0, %idx.ext162
  %add.ptr164 = getelementptr inbounds i8, ptr %add.ptr16, i64 %idx.neg163
  %49 = load i8, ptr %add.ptr164, align 1, !tbaa !21
  %conv165 = zext i8 %49 to i32
  %add166 = add nuw nsw i32 %add160, %conv165
  %add.ptr169 = getelementptr inbounds i8, ptr %incdec.ptr154, i64 %idx.ext124
  %incdec.ptr170 = getelementptr inbounds nuw i8, ptr %add.ptr169, i64 1
  %50 = load i8, ptr %add.ptr169, align 1, !tbaa !21
  %idx.ext172 = zext i8 %50 to i64
  %idx.neg173 = sub nsw i64 0, %idx.ext172
  %add.ptr174 = getelementptr inbounds i8, ptr %add.ptr16, i64 %idx.neg173
  %51 = load i8, ptr %add.ptr174, align 1, !tbaa !21
  %conv175 = zext i8 %51 to i32
  %add176 = add nuw nsw i32 %add166, %conv175
  %incdec.ptr177 = getelementptr inbounds nuw i8, ptr %add.ptr169, i64 2
  %52 = load i8, ptr %incdec.ptr170, align 1, !tbaa !21
  %idx.ext179 = zext i8 %52 to i64
  %idx.neg180 = sub nsw i64 0, %idx.ext179
  %add.ptr181 = getelementptr inbounds i8, ptr %add.ptr16, i64 %idx.neg180
  %53 = load i8, ptr %add.ptr181, align 1, !tbaa !21
  %conv182 = zext i8 %53 to i32
  %add183 = add nuw nsw i32 %add176, %conv182
  %incdec.ptr184 = getelementptr inbounds nuw i8, ptr %add.ptr169, i64 3
  %54 = load i8, ptr %incdec.ptr177, align 1, !tbaa !21
  %idx.ext186 = zext i8 %54 to i64
  %idx.neg187 = sub nsw i64 0, %idx.ext186
  %add.ptr188 = getelementptr inbounds i8, ptr %add.ptr16, i64 %idx.neg187
  %55 = load i8, ptr %add.ptr188, align 1, !tbaa !21
  %conv189 = zext i8 %55 to i32
  %add190 = add nuw nsw i32 %add183, %conv189
  %incdec.ptr191 = getelementptr inbounds nuw i8, ptr %add.ptr169, i64 4
  %56 = load i8, ptr %incdec.ptr184, align 1, !tbaa !21
  %idx.ext193 = zext i8 %56 to i64
  %idx.neg194 = sub nsw i64 0, %idx.ext193
  %add.ptr195 = getelementptr inbounds i8, ptr %add.ptr16, i64 %idx.neg194
  %57 = load i8, ptr %add.ptr195, align 1, !tbaa !21
  %conv196 = zext i8 %57 to i32
  %add197 = add nuw nsw i32 %add190, %conv196
  %incdec.ptr198 = getelementptr inbounds nuw i8, ptr %add.ptr169, i64 5
  %58 = load i8, ptr %incdec.ptr191, align 1, !tbaa !21
  %idx.ext200 = zext i8 %58 to i64
  %idx.neg201 = sub nsw i64 0, %idx.ext200
  %add.ptr202 = getelementptr inbounds i8, ptr %add.ptr16, i64 %idx.neg201
  %59 = load i8, ptr %add.ptr202, align 1, !tbaa !21
  %conv203 = zext i8 %59 to i32
  %add204 = add nuw nsw i32 %add197, %conv203
  %incdec.ptr205 = getelementptr inbounds nuw i8, ptr %add.ptr169, i64 6
  %60 = load i8, ptr %incdec.ptr198, align 1, !tbaa !21
  %idx.ext207 = zext i8 %60 to i64
  %idx.neg208 = sub nsw i64 0, %idx.ext207
  %add.ptr209 = getelementptr inbounds i8, ptr %add.ptr16, i64 %idx.neg208
  %61 = load i8, ptr %add.ptr209, align 1, !tbaa !21
  %conv210 = zext i8 %61 to i32
  %add211 = add nuw nsw i32 %add204, %conv210
  %62 = load i8, ptr %incdec.ptr205, align 1, !tbaa !21
  %idx.ext213 = zext i8 %62 to i64
  %idx.neg214 = sub nsw i64 0, %idx.ext213
  %add.ptr215 = getelementptr inbounds i8, ptr %add.ptr16, i64 %idx.neg214
  %63 = load i8, ptr %add.ptr215, align 1, !tbaa !21
  %conv216 = zext i8 %63 to i32
  %add217 = add nuw nsw i32 %add211, %conv216
  %add.ptr220 = getelementptr inbounds i8, ptr %incdec.ptr205, i64 %idx.ext73
  %incdec.ptr221 = getelementptr inbounds nuw i8, ptr %add.ptr220, i64 1
  %64 = load i8, ptr %add.ptr220, align 1, !tbaa !21
  %idx.ext223 = zext i8 %64 to i64
  %idx.neg224 = sub nsw i64 0, %idx.ext223
  %add.ptr225 = getelementptr inbounds i8, ptr %add.ptr16, i64 %idx.neg224
  %65 = load i8, ptr %add.ptr225, align 1, !tbaa !21
  %conv226 = zext i8 %65 to i32
  %add227 = add nuw nsw i32 %add217, %conv226
  %incdec.ptr228 = getelementptr inbounds nuw i8, ptr %add.ptr220, i64 2
  %66 = load i8, ptr %incdec.ptr221, align 1, !tbaa !21
  %idx.ext230 = zext i8 %66 to i64
  %idx.neg231 = sub nsw i64 0, %idx.ext230
  %add.ptr232 = getelementptr inbounds i8, ptr %add.ptr16, i64 %idx.neg231
  %67 = load i8, ptr %add.ptr232, align 1, !tbaa !21
  %conv233 = zext i8 %67 to i32
  %add234 = add nuw nsw i32 %add227, %conv233
  %incdec.ptr235 = getelementptr inbounds nuw i8, ptr %add.ptr220, i64 3
  %68 = load i8, ptr %incdec.ptr228, align 1, !tbaa !21
  %idx.ext237 = zext i8 %68 to i64
  %idx.neg238 = sub nsw i64 0, %idx.ext237
  %add.ptr239 = getelementptr inbounds i8, ptr %add.ptr16, i64 %idx.neg238
  %69 = load i8, ptr %add.ptr239, align 1, !tbaa !21
  %conv240 = zext i8 %69 to i32
  %add241 = add nuw nsw i32 %add234, %conv240
  %incdec.ptr242 = getelementptr inbounds nuw i8, ptr %add.ptr220, i64 4
  %70 = load i8, ptr %incdec.ptr235, align 1, !tbaa !21
  %idx.ext244 = zext i8 %70 to i64
  %idx.neg245 = sub nsw i64 0, %idx.ext244
  %add.ptr246 = getelementptr inbounds i8, ptr %add.ptr16, i64 %idx.neg245
  %71 = load i8, ptr %add.ptr246, align 1, !tbaa !21
  %conv247 = zext i8 %71 to i32
  %add248 = add nuw nsw i32 %add241, %conv247
  %72 = load i8, ptr %incdec.ptr242, align 1, !tbaa !21
  %idx.ext250 = zext i8 %72 to i64
  %idx.neg251 = sub nsw i64 0, %idx.ext250
  %add.ptr252 = getelementptr inbounds i8, ptr %add.ptr16, i64 %idx.neg251
  %73 = load i8, ptr %add.ptr252, align 1, !tbaa !21
  %conv253 = zext i8 %73 to i32
  %add254 = add nuw nsw i32 %add248, %conv253
  %add.ptr257 = getelementptr inbounds i8, ptr %incdec.ptr242, i64 %idx.ext36
  %incdec.ptr258 = getelementptr inbounds nuw i8, ptr %add.ptr257, i64 1
  %74 = load i8, ptr %add.ptr257, align 1, !tbaa !21
  %idx.ext260 = zext i8 %74 to i64
  %idx.neg261 = sub nsw i64 0, %idx.ext260
  %add.ptr262 = getelementptr inbounds i8, ptr %add.ptr16, i64 %idx.neg261
  %75 = load i8, ptr %add.ptr262, align 1, !tbaa !21
  %conv263 = zext i8 %75 to i32
  %add264 = add nuw nsw i32 %add254, %conv263
  %incdec.ptr265 = getelementptr inbounds nuw i8, ptr %add.ptr257, i64 2
  %76 = load i8, ptr %incdec.ptr258, align 1, !tbaa !21
  %idx.ext267 = zext i8 %76 to i64
  %idx.neg268 = sub nsw i64 0, %idx.ext267
  %add.ptr269 = getelementptr inbounds i8, ptr %add.ptr16, i64 %idx.neg268
  %77 = load i8, ptr %add.ptr269, align 1, !tbaa !21
  %conv270 = zext i8 %77 to i32
  %add271 = add nuw nsw i32 %add264, %conv270
  %78 = load i8, ptr %incdec.ptr265, align 1, !tbaa !21
  %idx.ext273 = zext i8 %78 to i64
  %idx.neg274 = sub nsw i64 0, %idx.ext273
  %add.ptr275 = getelementptr inbounds i8, ptr %add.ptr16, i64 %idx.neg274
  %79 = load i8, ptr %add.ptr275, align 1, !tbaa !21
  %conv276 = zext i8 %79 to i32
  %add277 = add nuw nsw i32 %add271, %conv276
  %cmp278.not = icmp sgt i32 %add277, %max_no
  br i1 %cmp278.not, label %for.inc, label %if.then

if.then:                                          ; preds = %for.body7
  %sub280 = sub nsw i32 %max_no, %add277
  %arrayidx284 = getelementptr inbounds i32, ptr %r, i64 %6
  store i32 %sub280, ptr %arrayidx284, align 4, !tbaa !16
  br label %for.inc

for.inc:                                          ; preds = %for.body7, %if.then
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond3, !llvm.loop !48

for.inc285:                                       ; preds = %for.cond3
  %indvars.iv.next800 = add nuw nsw i64 %indvars.iv799, 1
  br label %for.cond, !llvm.loop !49

for.cond288:                                      ; preds = %for.cond288.preheader, %for.inc1255
  %indvars.iv815 = phi i64 [ 4, %for.cond288.preheader ], [ %indvars.iv.next816, %for.inc1255 ]
  %exitcond825.not = icmp eq i64 %indvars.iv815, %wide.trip.count824
  br i1 %exitcond825.not, label %for.end1257, label %for.cond293.preheader

for.cond293.preheader:                            ; preds = %for.cond288
  %80 = mul nsw i64 %indvars.iv815, %0
  %81 = add nsw i64 %indvars.iv815, -3
  %82 = mul nsw i64 %81, %0
  %add.ptr323 = getelementptr inbounds i8, ptr %in, i64 %82
  %83 = trunc nuw nsw i64 %indvars.iv815 to i32
  %84 = trunc nuw nsw i64 %indvars.iv815 to i32
  br label %for.cond293

for.cond293:                                      ; preds = %for.cond293.preheader, %for.inc1252
  %indvars.iv808 = phi i64 [ 4, %for.cond293.preheader ], [ %indvars.iv.next809, %for.inc1252 ]
  %exitcond814.not = icmp eq i64 %indvars.iv808, %wide.trip.count813
  br i1 %exitcond814.not, label %for.inc1255, label %for.body297

for.body297:                                      ; preds = %for.cond293
  %85 = add nsw i64 %indvars.iv808, %80
  %arrayidx301 = getelementptr inbounds i32, ptr %r, i64 %85
  %86 = load i32, ptr %arrayidx301, align 4, !tbaa !16
  %cmp302 = icmp sgt i32 %86, 0
  br i1 %cmp302, label %if.then304, label %for.inc1252

if.then304:                                       ; preds = %for.body297
  %sub309 = sub nsw i32 %max_no, %86
  %arrayidx313 = getelementptr inbounds i8, ptr %in, i64 %85
  %87 = load i8, ptr %arrayidx313, align 1, !tbaa !21
  %idx.ext315 = zext i8 %87 to i64
  %add.ptr316 = getelementptr inbounds nuw i8, ptr %bp, i64 %idx.ext315
  %cmp317 = icmp sgt i32 %sub309, 600
  br i1 %cmp317, label %if.then319, label %if.then761

if.then319:                                       ; preds = %if.then304
  %add.ptr325 = getelementptr inbounds nuw i8, ptr %add.ptr323, i64 %indvars.iv808
  %add.ptr326 = getelementptr inbounds i8, ptr %add.ptr325, i64 -1
  %88 = load i8, ptr %add.ptr326, align 1, !tbaa !21
  %idx.ext329 = zext i8 %88 to i64
  %idx.neg330 = sub nsw i64 0, %idx.ext329
  %add.ptr331 = getelementptr inbounds i8, ptr %add.ptr316, i64 %idx.neg330
  %89 = load i8, ptr %add.ptr331, align 1, !tbaa !21
  %conv332 = zext i8 %89 to i32
  %incdec.ptr337 = getelementptr inbounds nuw i8, ptr %add.ptr325, i64 1
  %90 = load i8, ptr %add.ptr325, align 1, !tbaa !21
  %idx.ext339 = zext i8 %90 to i64
  %idx.neg340 = sub nsw i64 0, %idx.ext339
  %add.ptr341 = getelementptr inbounds i8, ptr %add.ptr316, i64 %idx.neg340
  %91 = load i8, ptr %add.ptr341, align 1, !tbaa !21
  %conv342 = zext i8 %91 to i32
  %mul343.neg700 = add nuw nsw i32 %conv342, %conv332
  %92 = load i8, ptr %incdec.ptr337, align 1, !tbaa !21
  %idx.ext346 = zext i8 %92 to i64
  %idx.neg347 = sub nsw i64 0, %idx.ext346
  %add.ptr348 = getelementptr inbounds i8, ptr %add.ptr316, i64 %idx.neg347
  %93 = load i8, ptr %add.ptr348, align 1, !tbaa !21
  %conv349 = zext i8 %93 to i32
  %mul352.neg701 = add nuw nsw i32 %mul343.neg700, %conv349
  %add.ptr356 = getelementptr inbounds i8, ptr %incdec.ptr337, i64 %idx.ext36
  %incdec.ptr357 = getelementptr inbounds nuw i8, ptr %add.ptr356, i64 1
  %94 = load i8, ptr %add.ptr356, align 1, !tbaa !21
  %idx.ext359 = zext i8 %94 to i64
  %idx.neg360 = sub nsw i64 0, %idx.ext359
  %add.ptr361 = getelementptr inbounds i8, ptr %add.ptr316, i64 %idx.neg360
  %95 = load i8, ptr %add.ptr361, align 1, !tbaa !21
  %conv362 = zext i8 %95 to i32
  %incdec.ptr368 = getelementptr inbounds nuw i8, ptr %add.ptr356, i64 2
  %96 = load i8, ptr %incdec.ptr357, align 1, !tbaa !21
  %idx.ext370 = zext i8 %96 to i64
  %idx.neg371 = sub nsw i64 0, %idx.ext370
  %add.ptr372 = getelementptr inbounds i8, ptr %add.ptr316, i64 %idx.neg371
  %97 = load i8, ptr %add.ptr372, align 1, !tbaa !21
  %conv373 = zext i8 %97 to i32
  %mul363702 = add nuw nsw i32 %conv373, %conv362
  %incdec.ptr378 = getelementptr inbounds nuw i8, ptr %add.ptr356, i64 3
  %98 = load i8, ptr %incdec.ptr368, align 1, !tbaa !21
  %idx.ext380 = zext i8 %98 to i64
  %idx.neg381 = sub nsw i64 0, %idx.ext380
  %add.ptr382 = getelementptr inbounds i8, ptr %add.ptr316, i64 %idx.neg381
  %99 = load i8, ptr %add.ptr382, align 1, !tbaa !21
  %conv383 = zext i8 %99 to i32
  %100 = add nuw nsw i32 %mul363702, %conv383
  %incdec.ptr386 = getelementptr inbounds nuw i8, ptr %add.ptr356, i64 4
  %101 = load i8, ptr %incdec.ptr378, align 1, !tbaa !21
  %idx.ext388 = zext i8 %101 to i64
  %idx.neg389 = sub nsw i64 0, %idx.ext388
  %add.ptr390 = getelementptr inbounds i8, ptr %add.ptr316, i64 %idx.neg389
  %102 = load i8, ptr %add.ptr390, align 1, !tbaa !21
  %conv391 = zext i8 %102 to i32
  %103 = add nuw nsw i32 %100, %conv391
  %104 = load i8, ptr %incdec.ptr386, align 1, !tbaa !21
  %idx.ext397 = zext i8 %104 to i64
  %idx.neg398 = sub nsw i64 0, %idx.ext397
  %add.ptr399 = getelementptr inbounds i8, ptr %add.ptr316, i64 %idx.neg398
  %105 = load i8, ptr %add.ptr399, align 1, !tbaa !21
  %conv400 = zext i8 %105 to i32
  %106 = add nuw nsw i32 %103, %conv400
  %add.ptr408 = getelementptr inbounds i8, ptr %incdec.ptr386, i64 %idx.ext73
  %incdec.ptr409 = getelementptr inbounds nuw i8, ptr %add.ptr408, i64 1
  %107 = load i8, ptr %add.ptr408, align 1, !tbaa !21
  %idx.ext411 = zext i8 %107 to i64
  %idx.neg412 = sub nsw i64 0, %idx.ext411
  %add.ptr413 = getelementptr inbounds i8, ptr %add.ptr316, i64 %idx.neg412
  %108 = load i8, ptr %add.ptr413, align 1, !tbaa !21
  %conv414 = zext i8 %108 to i32
  %incdec.ptr419 = getelementptr inbounds nuw i8, ptr %add.ptr408, i64 2
  %109 = load i8, ptr %incdec.ptr409, align 1, !tbaa !21
  %idx.ext421 = zext i8 %109 to i64
  %idx.neg422 = sub nsw i64 0, %idx.ext421
  %add.ptr423 = getelementptr inbounds i8, ptr %add.ptr316, i64 %idx.neg422
  %110 = load i8, ptr %add.ptr423, align 1, !tbaa !21
  %conv424 = zext i8 %110 to i32
  %incdec.ptr429 = getelementptr inbounds nuw i8, ptr %add.ptr408, i64 3
  %111 = load i8, ptr %incdec.ptr419, align 1, !tbaa !21
  %idx.ext431 = zext i8 %111 to i64
  %idx.neg432 = sub nsw i64 0, %idx.ext431
  %add.ptr433 = getelementptr inbounds i8, ptr %add.ptr316, i64 %idx.neg432
  %112 = load i8, ptr %add.ptr433, align 1, !tbaa !21
  %conv434 = zext i8 %112 to i32
  %incdec.ptr438 = getelementptr inbounds nuw i8, ptr %add.ptr408, i64 4
  %113 = load i8, ptr %incdec.ptr429, align 1, !tbaa !21
  %idx.ext440 = zext i8 %113 to i64
  %idx.neg441 = sub nsw i64 0, %idx.ext440
  %add.ptr442 = getelementptr inbounds i8, ptr %add.ptr316, i64 %idx.neg441
  %114 = load i8, ptr %add.ptr442, align 1, !tbaa !21
  %conv443 = zext i8 %114 to i32
  %incdec.ptr445 = getelementptr inbounds nuw i8, ptr %add.ptr408, i64 5
  %115 = load i8, ptr %incdec.ptr438, align 1, !tbaa !21
  %idx.ext447 = zext i8 %115 to i64
  %idx.neg448 = sub nsw i64 0, %idx.ext447
  %add.ptr449 = getelementptr inbounds i8, ptr %add.ptr316, i64 %idx.neg448
  %116 = load i8, ptr %add.ptr449, align 1, !tbaa !21
  %conv450 = zext i8 %116 to i32
  %incdec.ptr454 = getelementptr inbounds nuw i8, ptr %add.ptr408, i64 6
  %117 = load i8, ptr %incdec.ptr445, align 1, !tbaa !21
  %idx.ext456 = zext i8 %117 to i64
  %idx.neg457 = sub nsw i64 0, %idx.ext456
  %add.ptr458 = getelementptr inbounds i8, ptr %add.ptr316, i64 %idx.neg457
  %118 = load i8, ptr %add.ptr458, align 1, !tbaa !21
  %conv459 = zext i8 %118 to i32
  %119 = load i8, ptr %incdec.ptr454, align 1, !tbaa !21
  %idx.ext465 = zext i8 %119 to i64
  %idx.neg466 = sub nsw i64 0, %idx.ext465
  %add.ptr467 = getelementptr inbounds i8, ptr %add.ptr316, i64 %idx.neg466
  %120 = load i8, ptr %add.ptr467, align 1, !tbaa !21
  %conv468 = zext i8 %120 to i32
  %add.ptr475 = getelementptr inbounds i8, ptr %incdec.ptr454, i64 %idx.ext124
  %incdec.ptr476 = getelementptr inbounds nuw i8, ptr %add.ptr475, i64 1
  %121 = load i8, ptr %add.ptr475, align 1, !tbaa !21
  %idx.ext478 = zext i8 %121 to i64
  %idx.neg479 = sub nsw i64 0, %idx.ext478
  %add.ptr480 = getelementptr inbounds i8, ptr %add.ptr316, i64 %idx.neg479
  %122 = load i8, ptr %add.ptr480, align 1, !tbaa !21
  %conv481 = zext i8 %122 to i32
  %incdec.ptr484 = getelementptr inbounds nuw i8, ptr %add.ptr475, i64 2
  %123 = load i8, ptr %incdec.ptr476, align 1, !tbaa !21
  %idx.ext486 = zext i8 %123 to i64
  %idx.neg487 = sub nsw i64 0, %idx.ext486
  %add.ptr488 = getelementptr inbounds i8, ptr %add.ptr316, i64 %idx.neg487
  %124 = load i8, ptr %add.ptr488, align 1, !tbaa !21
  %conv489 = zext i8 %124 to i32
  %125 = load i8, ptr %incdec.ptr484, align 1, !tbaa !21
  %idx.ext493 = zext i8 %125 to i64
  %idx.neg494 = sub nsw i64 0, %idx.ext493
  %add.ptr495 = getelementptr inbounds i8, ptr %add.ptr316, i64 %idx.neg494
  %126 = load i8, ptr %add.ptr495, align 1, !tbaa !21
  %conv496 = zext i8 %126 to i32
  %add.ptr498 = getelementptr inbounds nuw i8, ptr %add.ptr475, i64 4
  %incdec.ptr499 = getelementptr inbounds nuw i8, ptr %add.ptr475, i64 5
  %127 = load i8, ptr %add.ptr498, align 1, !tbaa !21
  %idx.ext501 = zext i8 %127 to i64
  %idx.neg502 = sub nsw i64 0, %idx.ext501
  %add.ptr503 = getelementptr inbounds i8, ptr %add.ptr316, i64 %idx.neg502
  %128 = load i8, ptr %add.ptr503, align 1, !tbaa !21
  %conv504 = zext i8 %128 to i32
  %incdec.ptr506 = getelementptr inbounds nuw i8, ptr %add.ptr475, i64 6
  %129 = load i8, ptr %incdec.ptr499, align 1, !tbaa !21
  %idx.ext508 = zext i8 %129 to i64
  %idx.neg509 = sub nsw i64 0, %idx.ext508
  %add.ptr510 = getelementptr inbounds i8, ptr %add.ptr316, i64 %idx.neg509
  %130 = load i8, ptr %add.ptr510, align 1, !tbaa !21
  %conv511 = zext i8 %130 to i32
  %131 = load i8, ptr %incdec.ptr506, align 1, !tbaa !21
  %idx.ext515 = zext i8 %131 to i64
  %idx.neg516 = sub nsw i64 0, %idx.ext515
  %add.ptr517 = getelementptr inbounds i8, ptr %add.ptr316, i64 %idx.neg516
  %132 = load i8, ptr %add.ptr517, align 1, !tbaa !21
  %conv518 = zext i8 %132 to i32
  %add.ptr523 = getelementptr inbounds i8, ptr %incdec.ptr506, i64 %idx.ext124
  %incdec.ptr524 = getelementptr inbounds nuw i8, ptr %add.ptr523, i64 1
  %133 = load i8, ptr %add.ptr523, align 1, !tbaa !21
  %idx.ext526 = zext i8 %133 to i64
  %idx.neg527 = sub nsw i64 0, %idx.ext526
  %add.ptr528 = getelementptr inbounds i8, ptr %add.ptr316, i64 %idx.neg527
  %134 = load i8, ptr %add.ptr528, align 1, !tbaa !21
  %conv529 = zext i8 %134 to i32
  %incdec.ptr534 = getelementptr inbounds nuw i8, ptr %add.ptr523, i64 2
  %135 = load i8, ptr %incdec.ptr524, align 1, !tbaa !21
  %idx.ext536 = zext i8 %135 to i64
  %idx.neg537 = sub nsw i64 0, %idx.ext536
  %add.ptr538 = getelementptr inbounds i8, ptr %add.ptr316, i64 %idx.neg537
  %136 = load i8, ptr %add.ptr538, align 1, !tbaa !21
  %conv539 = zext i8 %136 to i32
  %incdec.ptr544 = getelementptr inbounds nuw i8, ptr %add.ptr523, i64 3
  %137 = load i8, ptr %incdec.ptr534, align 1, !tbaa !21
  %idx.ext546 = zext i8 %137 to i64
  %idx.neg547 = sub nsw i64 0, %idx.ext546
  %add.ptr548 = getelementptr inbounds i8, ptr %add.ptr316, i64 %idx.neg547
  %138 = load i8, ptr %add.ptr548, align 1, !tbaa !21
  %conv549 = zext i8 %138 to i32
  %incdec.ptr553 = getelementptr inbounds nuw i8, ptr %add.ptr523, i64 4
  %139 = load i8, ptr %incdec.ptr544, align 1, !tbaa !21
  %idx.ext555 = zext i8 %139 to i64
  %idx.neg556 = sub nsw i64 0, %idx.ext555
  %add.ptr557 = getelementptr inbounds i8, ptr %add.ptr316, i64 %idx.neg556
  %140 = load i8, ptr %add.ptr557, align 1, !tbaa !21
  %conv558 = zext i8 %140 to i32
  %incdec.ptr560 = getelementptr inbounds nuw i8, ptr %add.ptr523, i64 5
  %141 = load i8, ptr %incdec.ptr553, align 1, !tbaa !21
  %idx.ext562 = zext i8 %141 to i64
  %idx.neg563 = sub nsw i64 0, %idx.ext562
  %add.ptr564 = getelementptr inbounds i8, ptr %add.ptr316, i64 %idx.neg563
  %142 = load i8, ptr %add.ptr564, align 1, !tbaa !21
  %conv565 = zext i8 %142 to i32
  %incdec.ptr569 = getelementptr inbounds nuw i8, ptr %add.ptr523, i64 6
  %143 = load i8, ptr %incdec.ptr560, align 1, !tbaa !21
  %idx.ext571 = zext i8 %143 to i64
  %idx.neg572 = sub nsw i64 0, %idx.ext571
  %add.ptr573 = getelementptr inbounds i8, ptr %add.ptr316, i64 %idx.neg572
  %144 = load i8, ptr %add.ptr573, align 1, !tbaa !21
  %conv574 = zext i8 %144 to i32
  %145 = load i8, ptr %incdec.ptr569, align 1, !tbaa !21
  %idx.ext580 = zext i8 %145 to i64
  %idx.neg581 = sub nsw i64 0, %idx.ext580
  %add.ptr582 = getelementptr inbounds i8, ptr %add.ptr316, i64 %idx.neg581
  %146 = load i8, ptr %add.ptr582, align 1, !tbaa !21
  %conv583 = zext i8 %146 to i32
  %add.ptr590 = getelementptr inbounds i8, ptr %incdec.ptr569, i64 %idx.ext73
  %incdec.ptr591 = getelementptr inbounds nuw i8, ptr %add.ptr590, i64 1
  %147 = load i8, ptr %add.ptr590, align 1, !tbaa !21
  %idx.ext593 = zext i8 %147 to i64
  %idx.neg594 = sub nsw i64 0, %idx.ext593
  %add.ptr595 = getelementptr inbounds i8, ptr %add.ptr316, i64 %idx.neg594
  %148 = load i8, ptr %add.ptr595, align 1, !tbaa !21
  %conv596 = zext i8 %148 to i32
  %mul597 = shl nuw nsw i32 %conv596, 1
  %incdec.ptr602 = getelementptr inbounds nuw i8, ptr %add.ptr590, i64 2
  %149 = load i8, ptr %incdec.ptr591, align 1, !tbaa !21
  %idx.ext604 = zext i8 %149 to i64
  %idx.neg605 = sub nsw i64 0, %idx.ext604
  %add.ptr606 = getelementptr inbounds i8, ptr %add.ptr316, i64 %idx.neg605
  %150 = load i8, ptr %add.ptr606, align 1, !tbaa !21
  %conv607 = zext i8 %150 to i32
  %incdec.ptr612 = getelementptr inbounds nuw i8, ptr %add.ptr590, i64 3
  %151 = load i8, ptr %incdec.ptr602, align 1, !tbaa !21
  %idx.ext614 = zext i8 %151 to i64
  %idx.neg615 = sub nsw i64 0, %idx.ext614
  %add.ptr616 = getelementptr inbounds i8, ptr %add.ptr316, i64 %idx.neg615
  %152 = load i8, ptr %add.ptr616, align 1, !tbaa !21
  %conv617 = zext i8 %152 to i32
  %incdec.ptr620 = getelementptr inbounds nuw i8, ptr %add.ptr590, i64 4
  %153 = load i8, ptr %incdec.ptr612, align 1, !tbaa !21
  %idx.ext622 = zext i8 %153 to i64
  %idx.neg623 = sub nsw i64 0, %idx.ext622
  %add.ptr624 = getelementptr inbounds i8, ptr %add.ptr316, i64 %idx.neg623
  %154 = load i8, ptr %add.ptr624, align 1, !tbaa !21
  %conv625 = zext i8 %154 to i32
  %155 = load i8, ptr %incdec.ptr620, align 1, !tbaa !21
  %idx.ext631 = zext i8 %155 to i64
  %idx.neg632 = sub nsw i64 0, %idx.ext631
  %add.ptr633 = getelementptr inbounds i8, ptr %add.ptr316, i64 %idx.neg632
  %156 = load i8, ptr %add.ptr633, align 1, !tbaa !21
  %conv634 = zext i8 %156 to i32
  %mul635 = shl nuw nsw i32 %conv634, 1
  %add.ptr642 = getelementptr inbounds i8, ptr %incdec.ptr620, i64 %idx.ext36
  %incdec.ptr643 = getelementptr inbounds nuw i8, ptr %add.ptr642, i64 1
  %157 = load i8, ptr %add.ptr642, align 1, !tbaa !21
  %idx.ext645 = zext i8 %157 to i64
  %idx.neg646 = sub nsw i64 0, %idx.ext645
  %add.ptr647 = getelementptr inbounds i8, ptr %add.ptr316, i64 %idx.neg646
  %158 = load i8, ptr %add.ptr647, align 1, !tbaa !21
  %conv648 = zext i8 %158 to i32
  %incdec.ptr653 = getelementptr inbounds nuw i8, ptr %add.ptr642, i64 2
  %159 = load i8, ptr %incdec.ptr643, align 1, !tbaa !21
  %idx.ext655 = zext i8 %159 to i64
  %idx.neg656 = sub nsw i64 0, %idx.ext655
  %add.ptr657 = getelementptr inbounds i8, ptr %add.ptr316, i64 %idx.neg656
  %160 = load i8, ptr %add.ptr657, align 1, !tbaa !21
  %conv658 = zext i8 %160 to i32
  %161 = load i8, ptr %incdec.ptr653, align 1, !tbaa !21
  %idx.ext662 = zext i8 %161 to i64
  %idx.neg663 = sub nsw i64 0, %idx.ext662
  %add.ptr664 = getelementptr inbounds i8, ptr %add.ptr316, i64 %idx.neg663
  %162 = load i8, ptr %add.ptr664, align 1, !tbaa !21
  %conv665 = zext i8 %162 to i32
  %163 = add nuw nsw i32 %conv414, %conv481
  %164 = add nuw nsw i32 %conv468, %conv518
  %165 = add nuw nsw i32 %163, %conv529
  %reass.add728 = sub nsw i32 %164, %165
  %reass.add729 = add nsw i32 %reass.add728, %conv583
  %reass.mul = mul nsw i32 %reass.add729, 3
  %166 = add nuw nsw i32 %conv362, %conv424
  %167 = add nuw nsw i32 %conv400, %conv459
  %168 = add nuw nsw i32 %166, %conv489
  %169 = add nuw nsw i32 %167, %conv511
  %170 = add nuw nsw i32 %168, %conv539
  %reass.add745 = sub nsw i32 %169, %170
  %reass.add746 = add nsw i32 %reass.add745, %conv574
  %reass.mul747 = shl nsw i32 %reass.add746, 1
  %171 = add nuw nsw i32 %conv332, %conv373
  %172 = add nuw nsw i32 %conv349, %conv391
  %173 = add nuw nsw i32 %171, %conv434
  %174 = add nuw nsw i32 %172, %conv450
  %175 = add nuw nsw i32 %173, %conv496
  %176 = add nuw nsw i32 %174, %conv504
  %177 = add nuw nsw i32 %175, %conv549
  %178 = add nuw nsw i32 %176, %conv565
  %179 = add nuw nsw i32 %177, %mul597
  %180 = add nuw nsw i32 %179, %conv607
  %add576 = sub nsw i32 %178, %180
  %add585 = add nsw i32 %add576, %reass.mul
  %sub608 = add nsw i32 %add585, %reass.mul747
  %add626 = add nsw i32 %sub608, %conv625
  %add636 = add nsw i32 %add626, %mul635
  %sub649 = sub nsw i32 %add636, %conv648
  %add666 = add nsw i32 %sub649, %conv665
  %reass.add735 = sub nsw i32 %conv648, %mul352.neg701
  %reass.add736 = add nsw i32 %reass.add735, %conv658
  %reass.add737 = add nsw i32 %reass.add736, %conv665
  %reass.mul738 = mul nsw i32 %reass.add737, 3
  %181 = sub nsw i32 %conv607, %106
  %182 = add nsw i32 %181, %conv617
  %reass.add749 = add nsw i32 %182, %conv625
  %reass.mul750 = shl nsw i32 %reass.add749, 1
  %183 = add nuw nsw i32 %conv424, %conv414
  %184 = add nuw nsw i32 %183, %conv434
  %185 = add nuw nsw i32 %184, %conv443
  %186 = add nuw nsw i32 %185, %conv450
  %187 = add nuw nsw i32 %186, %conv459
  %188 = add nuw nsw i32 %187, %conv468
  %add552 = sub nsw i32 %conv529, %188
  %add559 = add nsw i32 %add552, %conv539
  %add568 = add nsw i32 %add559, %conv549
  %add578 = add nsw i32 %add568, %conv558
  %add587 = add nsw i32 %add578, %conv565
  %add601 = add nsw i32 %add587, %conv574
  %add629 = add nsw i32 %add601, %conv583
  %add639 = add nsw i32 %add629, %mul597
  %add652 = add nsw i32 %add639, %mul635
  %add660 = add nsw i32 %add652, %reass.mul750
  %add669 = add nsw i32 %add660, %reass.mul738
  %mul670 = mul nsw i32 %add666, %add666
  %mul671 = mul nsw i32 %add669, %add669
  %add672 = add nuw nsw i32 %mul671, %mul670
  %conv673 = uitofp nneg i32 %add672 to float
  %sqrt = tail call float @llvm.sqrt.f32(float %conv673)
  %conv676 = fpext float %sqrt to double
  %conv677 = uitofp nneg i32 %sub309 to float
  %conv678 = fpext float %conv677 to double
  %mul679 = fmul double %conv678, 9.000000e-01
  %cmp680 = fcmp olt double %mul679, %conv676
  br i1 %cmp680, label %if.then682, label %if.then761

if.then682:                                       ; preds = %if.then319
  %cmp683 = icmp eq i32 %add666, 0
  %conv686 = sitofp i32 %add669 to float
  %conv687 = sitofp i32 %add666 to float
  %div = fdiv float %conv686, %conv687
  %z.0 = select i1 %cmp683, float 1.000000e+06, float %div
  %cmp689 = fcmp uge float %z.0, 0.000000e+00
  %fneg = fneg float %z.0
  %z.1 = select i1 %cmp689, float %z.0, float %fneg
  %cmp695 = fcmp olt float %z.1, 5.000000e-01
  br i1 %cmp695, label %if.end710, label %if.else698

if.else698:                                       ; preds = %if.then682
  %cmp700 = fcmp ogt float %z.1, 2.000000e+00
  br i1 %cmp700, label %if.end710, label %if.else703

if.else703:                                       ; preds = %if.else698
  %. = select i1 %cmp689, i32 1, i32 -1
  br label %if.end710

if.end710:                                        ; preds = %if.else703, %if.else698, %if.then682
  %a.0 = phi i32 [ 0, %if.then682 ], [ 1, %if.else698 ], [ %., %if.else703 ]
  %b.0 = phi i32 [ 1, %if.then682 ], [ 0, %if.else698 ], [ 1, %if.else703 ]
  %add711 = add nsw i32 %a.0, %84
  %mul712 = mul nsw i32 %add711, %x_size
  %189 = trunc nuw nsw i64 %indvars.iv808 to i32
  %add713 = add nuw i32 %b.0, %189
  %add714 = add i32 %add713, %mul712
  %idxprom715 = sext i32 %add714 to i64
  %arrayidx716 = getelementptr inbounds i32, ptr %r, i64 %idxprom715
  %190 = load i32, ptr %arrayidx716, align 4, !tbaa !16
  %cmp717 = icmp sgt i32 %86, %190
  br i1 %cmp717, label %land.lhs.true, label %for.inc1252

land.lhs.true:                                    ; preds = %if.end710
  %sub719 = sub nsw i32 %84, %a.0
  %mul720 = mul nsw i32 %sub719, %x_size
  %add721 = sub nsw i32 %189, %b.0
  %sub722 = add i32 %add721, %mul720
  %idxprom723 = sext i32 %sub722 to i64
  %arrayidx724 = getelementptr inbounds i32, ptr %r, i64 %idxprom723
  %191 = load i32, ptr %arrayidx724, align 4, !tbaa !16
  %cmp725.not = icmp slt i32 %86, %191
  br i1 %cmp725.not, label %for.inc1252, label %land.lhs.true727

land.lhs.true727:                                 ; preds = %land.lhs.true
  %mul728 = shl nsw i32 %a.0, 1
  %add729 = add nsw i32 %mul728, %84
  %mul730 = mul nsw i32 %add729, %x_size
  %mul732 = shl nuw nsw i32 %b.0, 1
  %add731 = add nuw i32 %mul732, %189
  %add733 = add i32 %add731, %mul730
  %idxprom734 = sext i32 %add733 to i64
  %arrayidx735 = getelementptr inbounds i32, ptr %r, i64 %idxprom734
  %192 = load i32, ptr %arrayidx735, align 4, !tbaa !16
  %cmp736 = icmp sgt i32 %86, %192
  br i1 %cmp736, label %land.lhs.true738, label %for.inc1252

land.lhs.true738:                                 ; preds = %land.lhs.true727
  %sub740 = sub nsw i32 %84, %mul728
  %mul741 = mul nsw i32 %sub740, %x_size
  %add742 = sub nsw i32 %189, %mul732
  %sub744 = add i32 %add742, %mul741
  %idxprom745 = sext i32 %sub744 to i64
  %arrayidx746 = getelementptr inbounds i32, ptr %r, i64 %idxprom745
  %193 = load i32, ptr %arrayidx746, align 4, !tbaa !16
  %cmp747.not = icmp slt i32 %86, %193
  br i1 %cmp747.not, label %for.inc1252, label %for.inc1252.sink.split

if.then761:                                       ; preds = %if.then319, %if.then304
  %add.ptr767 = getelementptr inbounds nuw i8, ptr %add.ptr323, i64 %indvars.iv808
  %add.ptr768 = getelementptr inbounds i8, ptr %add.ptr767, i64 -1
  %194 = load i8, ptr %add.ptr768, align 1, !tbaa !21
  %idx.ext771 = zext i8 %194 to i64
  %idx.neg772 = sub nsw i64 0, %idx.ext771
  %add.ptr773 = getelementptr inbounds i8, ptr %add.ptr316, i64 %idx.neg772
  %195 = load i8, ptr %add.ptr773, align 1, !tbaa !21
  %conv774 = zext i8 %195 to i32
  %incdec.ptr782 = getelementptr inbounds nuw i8, ptr %add.ptr767, i64 1
  %196 = load i8, ptr %add.ptr767, align 1, !tbaa !21
  %idx.ext784 = zext i8 %196 to i64
  %idx.neg785 = sub nsw i64 0, %idx.ext784
  %add.ptr786 = getelementptr inbounds i8, ptr %add.ptr316, i64 %idx.neg785
  %197 = load i8, ptr %add.ptr786, align 1, !tbaa !21
  %conv787 = zext i8 %197 to i32
  %198 = load i8, ptr %incdec.ptr782, align 1, !tbaa !21
  %idx.ext791 = zext i8 %198 to i64
  %idx.neg792 = sub nsw i64 0, %idx.ext791
  %add.ptr793 = getelementptr inbounds i8, ptr %add.ptr316, i64 %idx.neg792
  %199 = load i8, ptr %add.ptr793, align 1, !tbaa !21
  %conv794 = zext i8 %199 to i32
  %add.ptr804 = getelementptr inbounds i8, ptr %incdec.ptr782, i64 %idx.ext36
  %incdec.ptr805 = getelementptr inbounds nuw i8, ptr %add.ptr804, i64 1
  %200 = load i8, ptr %add.ptr804, align 1, !tbaa !21
  %idx.ext807 = zext i8 %200 to i64
  %idx.neg808 = sub nsw i64 0, %idx.ext807
  %add.ptr809 = getelementptr inbounds i8, ptr %add.ptr316, i64 %idx.neg808
  %201 = load i8, ptr %add.ptr809, align 1, !tbaa !21
  %conv810 = zext i8 %201 to i32
  %mul811 = shl nuw nsw i32 %conv810, 2
  %incdec.ptr819 = getelementptr inbounds nuw i8, ptr %add.ptr804, i64 2
  %202 = load i8, ptr %incdec.ptr805, align 1, !tbaa !21
  %idx.ext821 = zext i8 %202 to i64
  %idx.neg822 = sub nsw i64 0, %idx.ext821
  %add.ptr823 = getelementptr inbounds i8, ptr %add.ptr316, i64 %idx.neg822
  %203 = load i8, ptr %add.ptr823, align 1, !tbaa !21
  %conv824 = zext i8 %203 to i32
  %incdec.ptr832 = getelementptr inbounds nuw i8, ptr %add.ptr804, i64 3
  %204 = load i8, ptr %incdec.ptr819, align 1, !tbaa !21
  %idx.ext834 = zext i8 %204 to i64
  %idx.neg835 = sub nsw i64 0, %idx.ext834
  %add.ptr836 = getelementptr inbounds i8, ptr %add.ptr316, i64 %idx.neg835
  %205 = load i8, ptr %add.ptr836, align 1, !tbaa !21
  %conv837 = zext i8 %205 to i32
  %incdec.ptr840 = getelementptr inbounds nuw i8, ptr %add.ptr804, i64 4
  %206 = load i8, ptr %incdec.ptr832, align 1, !tbaa !21
  %idx.ext842 = zext i8 %206 to i64
  %idx.neg843 = sub nsw i64 0, %idx.ext842
  %add.ptr844 = getelementptr inbounds i8, ptr %add.ptr316, i64 %idx.neg843
  %207 = load i8, ptr %add.ptr844, align 1, !tbaa !21
  %conv845 = zext i8 %207 to i32
  %208 = load i8, ptr %incdec.ptr840, align 1, !tbaa !21
  %idx.ext854 = zext i8 %208 to i64
  %idx.neg855 = sub nsw i64 0, %idx.ext854
  %add.ptr856 = getelementptr inbounds i8, ptr %add.ptr316, i64 %idx.neg855
  %209 = load i8, ptr %add.ptr856, align 1, !tbaa !21
  %conv857 = zext i8 %209 to i32
  %mul858 = shl nuw nsw i32 %conv857, 2
  %add.ptr868 = getelementptr inbounds i8, ptr %incdec.ptr840, i64 %idx.ext73
  %incdec.ptr869 = getelementptr inbounds nuw i8, ptr %add.ptr868, i64 1
  %210 = load i8, ptr %add.ptr868, align 1, !tbaa !21
  %idx.ext871 = zext i8 %210 to i64
  %idx.neg872 = sub nsw i64 0, %idx.ext871
  %add.ptr873 = getelementptr inbounds i8, ptr %add.ptr316, i64 %idx.neg872
  %211 = load i8, ptr %add.ptr873, align 1, !tbaa !21
  %conv874 = zext i8 %211 to i32
  %incdec.ptr882 = getelementptr inbounds nuw i8, ptr %add.ptr868, i64 2
  %212 = load i8, ptr %incdec.ptr869, align 1, !tbaa !21
  %idx.ext884 = zext i8 %212 to i64
  %idx.neg885 = sub nsw i64 0, %idx.ext884
  %add.ptr886 = getelementptr inbounds i8, ptr %add.ptr316, i64 %idx.neg885
  %213 = load i8, ptr %add.ptr886, align 1, !tbaa !21
  %conv887 = zext i8 %213 to i32
  %incdec.ptr895 = getelementptr inbounds nuw i8, ptr %add.ptr868, i64 3
  %214 = load i8, ptr %incdec.ptr882, align 1, !tbaa !21
  %idx.ext897 = zext i8 %214 to i64
  %idx.neg898 = sub nsw i64 0, %idx.ext897
  %add.ptr899 = getelementptr inbounds i8, ptr %add.ptr316, i64 %idx.neg898
  %215 = load i8, ptr %add.ptr899, align 1, !tbaa !21
  %conv900 = zext i8 %215 to i32
  %incdec.ptr906 = getelementptr inbounds nuw i8, ptr %add.ptr868, i64 4
  %216 = load i8, ptr %incdec.ptr895, align 1, !tbaa !21
  %idx.ext908 = zext i8 %216 to i64
  %idx.neg909 = sub nsw i64 0, %idx.ext908
  %add.ptr910 = getelementptr inbounds i8, ptr %add.ptr316, i64 %idx.neg909
  %217 = load i8, ptr %add.ptr910, align 1, !tbaa !21
  %conv911 = zext i8 %217 to i32
  %incdec.ptr913 = getelementptr inbounds nuw i8, ptr %add.ptr868, i64 5
  %218 = load i8, ptr %incdec.ptr906, align 1, !tbaa !21
  %idx.ext915 = zext i8 %218 to i64
  %idx.neg916 = sub nsw i64 0, %idx.ext915
  %add.ptr917 = getelementptr inbounds i8, ptr %add.ptr316, i64 %idx.neg916
  %219 = load i8, ptr %add.ptr917, align 1, !tbaa !21
  %conv918 = zext i8 %219 to i32
  %incdec.ptr924 = getelementptr inbounds nuw i8, ptr %add.ptr868, i64 6
  %220 = load i8, ptr %incdec.ptr913, align 1, !tbaa !21
  %idx.ext926 = zext i8 %220 to i64
  %idx.neg927 = sub nsw i64 0, %idx.ext926
  %add.ptr928 = getelementptr inbounds i8, ptr %add.ptr316, i64 %idx.neg927
  %221 = load i8, ptr %add.ptr928, align 1, !tbaa !21
  %conv929 = zext i8 %221 to i32
  %222 = load i8, ptr %incdec.ptr924, align 1, !tbaa !21
  %idx.ext938 = zext i8 %222 to i64
  %idx.neg939 = sub nsw i64 0, %idx.ext938
  %add.ptr940 = getelementptr inbounds i8, ptr %add.ptr316, i64 %idx.neg939
  %223 = load i8, ptr %add.ptr940, align 1, !tbaa !21
  %conv941 = zext i8 %223 to i32
  %add.ptr951 = getelementptr inbounds i8, ptr %incdec.ptr924, i64 %idx.ext124
  %incdec.ptr982 = getelementptr inbounds nuw i8, ptr %add.ptr951, i64 6
  %add.ptr999 = getelementptr inbounds i8, ptr %incdec.ptr982, i64 %idx.ext124
  %incdec.ptr1000 = getelementptr inbounds nuw i8, ptr %add.ptr999, i64 1
  %224 = load i8, ptr %add.ptr999, align 1, !tbaa !21
  %idx.ext1002 = zext i8 %224 to i64
  %idx.neg1003 = sub nsw i64 0, %idx.ext1002
  %add.ptr1004 = getelementptr inbounds i8, ptr %add.ptr316, i64 %idx.neg1003
  %225 = load i8, ptr %add.ptr1004, align 1, !tbaa !21
  %conv1005 = zext i8 %225 to i32
  %incdec.ptr1013 = getelementptr inbounds nuw i8, ptr %add.ptr999, i64 2
  %226 = load i8, ptr %incdec.ptr1000, align 1, !tbaa !21
  %idx.ext1015 = zext i8 %226 to i64
  %idx.neg1016 = sub nsw i64 0, %idx.ext1015
  %add.ptr1017 = getelementptr inbounds i8, ptr %add.ptr316, i64 %idx.neg1016
  %227 = load i8, ptr %add.ptr1017, align 1, !tbaa !21
  %conv1018 = zext i8 %227 to i32
  %incdec.ptr1026 = getelementptr inbounds nuw i8, ptr %add.ptr999, i64 3
  %228 = load i8, ptr %incdec.ptr1013, align 1, !tbaa !21
  %idx.ext1028 = zext i8 %228 to i64
  %idx.neg1029 = sub nsw i64 0, %idx.ext1028
  %add.ptr1030 = getelementptr inbounds i8, ptr %add.ptr316, i64 %idx.neg1029
  %229 = load i8, ptr %add.ptr1030, align 1, !tbaa !21
  %conv1031 = zext i8 %229 to i32
  %incdec.ptr1037 = getelementptr inbounds nuw i8, ptr %add.ptr999, i64 4
  %230 = load i8, ptr %incdec.ptr1026, align 1, !tbaa !21
  %idx.ext1039 = zext i8 %230 to i64
  %idx.neg1040 = sub nsw i64 0, %idx.ext1039
  %add.ptr1041 = getelementptr inbounds i8, ptr %add.ptr316, i64 %idx.neg1040
  %231 = load i8, ptr %add.ptr1041, align 1, !tbaa !21
  %conv1042 = zext i8 %231 to i32
  %incdec.ptr1044 = getelementptr inbounds nuw i8, ptr %add.ptr999, i64 5
  %232 = load i8, ptr %incdec.ptr1037, align 1, !tbaa !21
  %idx.ext1046 = zext i8 %232 to i64
  %idx.neg1047 = sub nsw i64 0, %idx.ext1046
  %add.ptr1048 = getelementptr inbounds i8, ptr %add.ptr316, i64 %idx.neg1047
  %233 = load i8, ptr %add.ptr1048, align 1, !tbaa !21
  %conv1049 = zext i8 %233 to i32
  %incdec.ptr1055 = getelementptr inbounds nuw i8, ptr %add.ptr999, i64 6
  %234 = load i8, ptr %incdec.ptr1044, align 1, !tbaa !21
  %idx.ext1057 = zext i8 %234 to i64
  %idx.neg1058 = sub nsw i64 0, %idx.ext1057
  %add.ptr1059 = getelementptr inbounds i8, ptr %add.ptr316, i64 %idx.neg1058
  %235 = load i8, ptr %add.ptr1059, align 1, !tbaa !21
  %conv1060 = zext i8 %235 to i32
  %236 = load i8, ptr %incdec.ptr1055, align 1, !tbaa !21
  %idx.ext1069 = zext i8 %236 to i64
  %idx.neg1070 = sub nsw i64 0, %idx.ext1069
  %add.ptr1071 = getelementptr inbounds i8, ptr %add.ptr316, i64 %idx.neg1070
  %237 = load i8, ptr %add.ptr1071, align 1, !tbaa !21
  %conv1072 = zext i8 %237 to i32
  %add.ptr1082 = getelementptr inbounds i8, ptr %incdec.ptr1055, i64 %idx.ext73
  %incdec.ptr1083 = getelementptr inbounds nuw i8, ptr %add.ptr1082, i64 1
  %238 = load i8, ptr %add.ptr1082, align 1, !tbaa !21
  %idx.ext1085 = zext i8 %238 to i64
  %idx.neg1086 = sub nsw i64 0, %idx.ext1085
  %add.ptr1087 = getelementptr inbounds i8, ptr %add.ptr316, i64 %idx.neg1086
  %239 = load i8, ptr %add.ptr1087, align 1, !tbaa !21
  %conv1088 = zext i8 %239 to i32
  %mul1089 = shl nuw nsw i32 %conv1088, 2
  %incdec.ptr1097 = getelementptr inbounds nuw i8, ptr %add.ptr1082, i64 2
  %240 = load i8, ptr %incdec.ptr1083, align 1, !tbaa !21
  %idx.ext1099 = zext i8 %240 to i64
  %idx.neg1100 = sub nsw i64 0, %idx.ext1099
  %add.ptr1101 = getelementptr inbounds i8, ptr %add.ptr316, i64 %idx.neg1100
  %241 = load i8, ptr %add.ptr1101, align 1, !tbaa !21
  %conv1102 = zext i8 %241 to i32
  %incdec.ptr1110 = getelementptr inbounds nuw i8, ptr %add.ptr1082, i64 3
  %242 = load i8, ptr %incdec.ptr1097, align 1, !tbaa !21
  %idx.ext1112 = zext i8 %242 to i64
  %idx.neg1113 = sub nsw i64 0, %idx.ext1112
  %add.ptr1114 = getelementptr inbounds i8, ptr %add.ptr316, i64 %idx.neg1113
  %243 = load i8, ptr %add.ptr1114, align 1, !tbaa !21
  %conv1115 = zext i8 %243 to i32
  %incdec.ptr1118 = getelementptr inbounds nuw i8, ptr %add.ptr1082, i64 4
  %244 = load i8, ptr %incdec.ptr1110, align 1, !tbaa !21
  %idx.ext1120 = zext i8 %244 to i64
  %idx.neg1121 = sub nsw i64 0, %idx.ext1120
  %add.ptr1122 = getelementptr inbounds i8, ptr %add.ptr316, i64 %idx.neg1121
  %245 = load i8, ptr %add.ptr1122, align 1, !tbaa !21
  %conv1123 = zext i8 %245 to i32
  %246 = load i8, ptr %incdec.ptr1118, align 1, !tbaa !21
  %idx.ext1132 = zext i8 %246 to i64
  %idx.neg1133 = sub nsw i64 0, %idx.ext1132
  %add.ptr1134 = getelementptr inbounds i8, ptr %add.ptr316, i64 %idx.neg1133
  %247 = load i8, ptr %add.ptr1134, align 1, !tbaa !21
  %conv1135 = zext i8 %247 to i32
  %mul1136 = shl nuw nsw i32 %conv1135, 2
  %add.ptr1146 = getelementptr inbounds i8, ptr %incdec.ptr1118, i64 %idx.ext36
  %incdec.ptr1147 = getelementptr inbounds nuw i8, ptr %add.ptr1146, i64 1
  %248 = load i8, ptr %add.ptr1146, align 1, !tbaa !21
  %idx.ext1149 = zext i8 %248 to i64
  %idx.neg1150 = sub nsw i64 0, %idx.ext1149
  %add.ptr1151 = getelementptr inbounds i8, ptr %add.ptr316, i64 %idx.neg1150
  %249 = load i8, ptr %add.ptr1151, align 1, !tbaa !21
  %conv1152 = zext i8 %249 to i32
  %incdec.ptr1160 = getelementptr inbounds nuw i8, ptr %add.ptr1146, i64 2
  %250 = load i8, ptr %incdec.ptr1147, align 1, !tbaa !21
  %idx.ext1162 = zext i8 %250 to i64
  %idx.neg1163 = sub nsw i64 0, %idx.ext1162
  %add.ptr1164 = getelementptr inbounds i8, ptr %add.ptr316, i64 %idx.neg1163
  %251 = load i8, ptr %add.ptr1164, align 1, !tbaa !21
  %conv1165 = zext i8 %251 to i32
  %252 = load i8, ptr %incdec.ptr1160, align 1, !tbaa !21
  %idx.ext1169 = zext i8 %252 to i64
  %idx.neg1170 = sub nsw i64 0, %idx.ext1169
  %add.ptr1171 = getelementptr inbounds i8, ptr %add.ptr316, i64 %idx.neg1170
  %253 = load i8, ptr %add.ptr1171, align 1, !tbaa !21
  %conv1172 = zext i8 %253 to i32
  %reass.add754 = add nuw nsw i32 %conv787, %conv774
  %reass.add755 = add nuw nsw i32 %reass.add754, %conv794
  %mul777703 = add nuw nsw i32 %reass.add755, %conv1152
  %add789704 = add nuw nsw i32 %mul777703, %conv1165
  %reass.add756 = add nuw nsw i32 %add789704, %conv1172
  %reass.mul757 = mul nuw nsw i32 %reass.add756, 9
  %254 = add nuw nsw i32 %conv837, %conv824
  %255 = add nuw nsw i32 %254, %conv845
  %256 = add nuw nsw i32 %255, %conv1102
  %257 = add nuw nsw i32 %256, %conv1115
  %reass.add758 = add nuw nsw i32 %257, %conv1123
  %reass.mul759 = shl nuw nsw i32 %reass.add758, 2
  %add891 = add nuw nsw i32 %mul858, %mul811
  %add903 = add nuw nsw i32 %add891, %conv874
  %add912 = add nuw nsw i32 %add903, %conv887
  %add921 = add nuw nsw i32 %add912, %conv900
  %add933 = add nuw nsw i32 %add921, %conv911
  %add945 = add nuw nsw i32 %add933, %conv918
  %add1009 = add nuw nsw i32 %add945, %conv929
  %add1022 = add nuw nsw i32 %add1009, %conv941
  %add1034 = add nuw nsw i32 %add1022, %conv1005
  %add1043 = add nuw nsw i32 %add1034, %conv1018
  %add1052 = add nuw nsw i32 %add1043, %conv1031
  %add1064 = add nuw nsw i32 %add1052, %conv1042
  %add1076 = add nuw nsw i32 %add1064, %conv1049
  %add1093 = add nuw nsw i32 %add1076, %conv1060
  %add1127 = add nuw nsw i32 %add1093, %conv1072
  %add1140 = add nuw nsw i32 %add1127, %mul1089
  %add1156 = add nuw nsw i32 %add1140, %mul1136
  %add1167 = add nuw nsw i32 %add1156, %reass.mul759
  %add1176 = add nuw nsw i32 %add1167, %reass.mul757
  %258 = add nuw nsw i32 %conv774, %conv874
  %259 = add nuw nsw i32 %conv794, %conv941
  %260 = add nuw nsw i32 %259, %conv1005
  %261 = add nuw nsw i32 %258, %conv1072
  %262 = add nuw nsw i32 %260, %conv1152
  %reass.add769 = sub nsw i32 %261, %262
  %reass.add770 = add nsw i32 %reass.add769, %conv1172
  %reass.mul771 = mul nsw i32 %reass.add770, 3
  %263 = add nuw nsw i32 %conv824, %conv887
  %264 = add nuw nsw i32 %conv845, %conv929
  %265 = add nuw nsw i32 %264, %conv1018
  %266 = add nuw nsw i32 %263, %conv1060
  %267 = add nuw nsw i32 %265, %conv1102
  %reass.add782 = sub nsw i32 %266, %267
  %reass.add783 = add nsw i32 %reass.add782, %conv1123
  %reass.mul784 = shl nsw i32 %reass.add783, 1
  %268 = add nuw nsw i32 %mul811, %conv900
  %269 = add nuw nsw i32 %mul858, %conv918
  %270 = add nuw nsw i32 %269, %conv1031
  %271 = add nuw nsw i32 %268, %conv1049
  %272 = add nuw nsw i32 %270, %mul1089
  %add1130 = sub nsw i32 %271, %272
  %add1143 = add nsw i32 %add1130, %mul1136
  %sub1159 = add nsw i32 %add1143, %reass.mul784
  %add1179 = add nsw i32 %sub1159, %reass.mul771
  %cmp1180 = icmp eq i32 %add1176, 0
  br i1 %cmp1180, label %if.end1204, label %if.end1187

if.end1187:                                       ; preds = %if.then761
  %273 = load i8, ptr %add.ptr951, align 1, !tbaa !21
  %idx.ext954 = zext i8 %273 to i64
  %idx.neg955 = sub nsw i64 0, %idx.ext954
  %add.ptr956 = getelementptr inbounds i8, ptr %add.ptr316, i64 %idx.neg955
  %274 = load i8, ptr %add.ptr956, align 1, !tbaa !21
  %conv957 = zext i8 %274 to i32
  %incdec.ptr952 = getelementptr inbounds nuw i8, ptr %add.ptr951, i64 1
  %275 = load i8, ptr %incdec.ptr952, align 1, !tbaa !21
  %idx.ext962 = zext i8 %275 to i64
  %idx.neg963 = sub nsw i64 0, %idx.ext962
  %add.ptr964 = getelementptr inbounds i8, ptr %add.ptr316, i64 %idx.neg963
  %276 = load i8, ptr %add.ptr964, align 1, !tbaa !21
  %conv965 = zext i8 %276 to i32
  %incdec.ptr960 = getelementptr inbounds nuw i8, ptr %add.ptr951, i64 2
  %277 = load i8, ptr %incdec.ptr960, align 1, !tbaa !21
  %idx.ext969 = zext i8 %277 to i64
  %idx.neg970 = sub nsw i64 0, %idx.ext969
  %add.ptr971 = getelementptr inbounds i8, ptr %add.ptr316, i64 %idx.neg970
  %278 = load i8, ptr %add.ptr971, align 1, !tbaa !21
  %conv972 = zext i8 %278 to i32
  %add.ptr974 = getelementptr inbounds nuw i8, ptr %add.ptr951, i64 4
  %279 = load i8, ptr %add.ptr974, align 1, !tbaa !21
  %idx.ext977 = zext i8 %279 to i64
  %idx.neg978 = sub nsw i64 0, %idx.ext977
  %add.ptr979 = getelementptr inbounds i8, ptr %add.ptr316, i64 %idx.neg978
  %280 = load i8, ptr %add.ptr979, align 1, !tbaa !21
  %conv980 = zext i8 %280 to i32
  %incdec.ptr975 = getelementptr inbounds nuw i8, ptr %add.ptr951, i64 5
  %281 = load i8, ptr %incdec.ptr975, align 1, !tbaa !21
  %idx.ext984 = zext i8 %281 to i64
  %idx.neg985 = sub nsw i64 0, %idx.ext984
  %add.ptr986 = getelementptr inbounds i8, ptr %add.ptr316, i64 %idx.neg985
  %282 = load i8, ptr %add.ptr986, align 1, !tbaa !21
  %conv987 = zext i8 %282 to i32
  %283 = load i8, ptr %incdec.ptr982, align 1, !tbaa !21
  %idx.ext991 = zext i8 %283 to i64
  %idx.neg992 = sub nsw i64 0, %idx.ext991
  %add.ptr993 = getelementptr inbounds i8, ptr %add.ptr316, i64 %idx.neg992
  %284 = load i8, ptr %add.ptr993, align 1, !tbaa !21
  %conv994 = zext i8 %284 to i32
  %reass.add785 = add nuw nsw i32 %conv929, %conv887
  %reass.add786 = add nuw nsw i32 %reass.add785, %conv1018
  %reass.add787 = add nuw nsw i32 %reass.add786, %conv1060
  %reass.add788 = add nuw nsw i32 %reass.add787, %conv965
  %reass.add789 = add nuw nsw i32 %reass.add788, %conv987
  %reass.mul790 = shl nuw nsw i32 %reass.add789, 2
  %reass.add791 = add nuw nsw i32 %conv941, %conv874
  %reass.add792 = add nuw nsw i32 %reass.add791, %conv1005
  %reass.add793 = add nuw nsw i32 %reass.add792, %conv1072
  %reass.add794 = add nuw nsw i32 %reass.add793, %conv957
  %reass.add795 = add nuw nsw i32 %reass.add794, %conv994
  %reass.mul796 = mul nuw nsw i32 %reass.add795, 9
  %add943 = add nuw nsw i32 %conv794, %conv774
  %add959 = add nuw nsw i32 %add943, %mul811
  %add967 = add nuw nsw i32 %add959, %conv824
  %add973 = add nuw nsw i32 %add967, %conv845
  %add981 = add nuw nsw i32 %add973, %mul858
  %add989 = add nuw nsw i32 %add981, %conv900
  %add996 = add nuw nsw i32 %add989, %conv918
  %add1007 = add nuw nsw i32 %add996, %conv1031
  %add1020 = add nuw nsw i32 %add1007, %conv1049
  %add1032 = add nuw nsw i32 %add1020, %mul1089
  %add1050 = add nuw nsw i32 %add1032, %conv1102
  %add1062 = add nuw nsw i32 %add1050, %conv1123
  %add1074 = add nuw nsw i32 %add1062, %mul1136
  %add1090 = add nuw nsw i32 %add1074, %conv1152
  %add1103 = add nuw nsw i32 %add1090, %conv1172
  %add1124 = add nuw nsw i32 %add1103, %conv972
  %add1137 = add nuw nsw i32 %add1124, %conv980
  %add1153 = add nuw nsw i32 %add1137, %reass.mul790
  %add1173 = add nuw nsw i32 %add1153, %reass.mul796
  %conv1184 = uitofp nneg i32 %add1173 to float
  %conv1185 = uitofp nneg i32 %add1176 to float
  %div1186 = fdiv float %conv1184, %conv1185
  %cmp1189 = fcmp olt float %div1186, 5.000000e-01
  br i1 %cmp1189, label %if.end1204, label %if.else1192

if.else1192:                                      ; preds = %if.end1187
  %cmp1194 = fcmp ogt float %div1186, 2.000000e+00
  br i1 %cmp1194, label %if.end1204, label %if.else1197

if.else1197:                                      ; preds = %if.else1192
  %cmp1198.inv = icmp slt i32 %add1179, 1
  %.705 = select i1 %cmp1198.inv, i32 1, i32 -1
  br label %if.end1204

if.end1204:                                       ; preds = %if.then761, %if.else1197, %if.else1192, %if.end1187
  %a.1 = phi i32 [ 0, %if.end1187 ], [ 1, %if.else1192 ], [ %.705, %if.else1197 ], [ 1, %if.then761 ]
  %b.1 = phi i32 [ 1, %if.end1187 ], [ 0, %if.else1192 ], [ 1, %if.else1197 ], [ 0, %if.then761 ]
  %add1205 = add nsw i32 %a.1, %83
  %mul1206 = mul nsw i32 %add1205, %x_size
  %285 = trunc nuw nsw i64 %indvars.iv808 to i32
  %add1207 = add nuw i32 %b.1, %285
  %add1208 = add i32 %add1207, %mul1206
  %idxprom1209 = sext i32 %add1208 to i64
  %arrayidx1210 = getelementptr inbounds i32, ptr %r, i64 %idxprom1209
  %286 = load i32, ptr %arrayidx1210, align 4, !tbaa !16
  %cmp1211 = icmp sgt i32 %86, %286
  br i1 %cmp1211, label %land.lhs.true1213, label %for.inc1252

land.lhs.true1213:                                ; preds = %if.end1204
  %sub1214 = sub nsw i32 %83, %a.1
  %mul1215 = mul nsw i32 %sub1214, %x_size
  %add1216 = sub nsw i32 %285, %b.1
  %sub1217 = add i32 %add1216, %mul1215
  %idxprom1218 = sext i32 %sub1217 to i64
  %arrayidx1219 = getelementptr inbounds i32, ptr %r, i64 %idxprom1218
  %287 = load i32, ptr %arrayidx1219, align 4, !tbaa !16
  %cmp1220.not = icmp slt i32 %86, %287
  br i1 %cmp1220.not, label %for.inc1252, label %land.lhs.true1222

land.lhs.true1222:                                ; preds = %land.lhs.true1213
  %mul1223 = shl nsw i32 %a.1, 1
  %add1224 = add nsw i32 %mul1223, %83
  %mul1225 = mul nsw i32 %add1224, %x_size
  %mul1227 = shl nuw nsw i32 %b.1, 1
  %add1226 = add nuw i32 %mul1227, %285
  %add1228 = add i32 %add1226, %mul1225
  %idxprom1229 = sext i32 %add1228 to i64
  %arrayidx1230 = getelementptr inbounds i32, ptr %r, i64 %idxprom1229
  %288 = load i32, ptr %arrayidx1230, align 4, !tbaa !16
  %cmp1231 = icmp sgt i32 %86, %288
  br i1 %cmp1231, label %land.lhs.true1233, label %for.inc1252

land.lhs.true1233:                                ; preds = %land.lhs.true1222
  %sub1235 = sub nsw i32 %83, %mul1223
  %mul1236 = mul nsw i32 %sub1235, %x_size
  %add1237 = sub nsw i32 %285, %mul1227
  %sub1239 = add i32 %add1237, %mul1236
  %idxprom1240 = sext i32 %sub1239 to i64
  %arrayidx1241 = getelementptr inbounds i32, ptr %r, i64 %idxprom1240
  %289 = load i32, ptr %arrayidx1241, align 4, !tbaa !16
  %cmp1242.not = icmp slt i32 %86, %289
  br i1 %cmp1242.not, label %for.inc1252, label %for.inc1252.sink.split

for.inc1252.sink.split:                           ; preds = %land.lhs.true1233, %land.lhs.true738
  %.sink = phi i8 [ 1, %land.lhs.true738 ], [ 2, %land.lhs.true1233 ]
  %arrayidx753 = getelementptr inbounds i8, ptr %mid, i64 %85
  store i8 %.sink, ptr %arrayidx753, align 1, !tbaa !21
  br label %for.inc1252

for.inc1252:                                      ; preds = %for.inc1252.sink.split, %land.lhs.true738, %land.lhs.true727, %land.lhs.true, %if.end710, %for.body297, %if.end1204, %land.lhs.true1213, %land.lhs.true1222, %land.lhs.true1233
  %indvars.iv.next809 = add nuw nsw i64 %indvars.iv808, 1
  br label %for.cond293, !llvm.loop !50

for.inc1255:                                      ; preds = %for.cond293
  %indvars.iv.next816 = add nuw nsw i64 %indvars.iv815, 1
  br label %for.cond288, !llvm.loop !51

for.end1257:                                      ; preds = %for.cond288
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @susan_edges_small(ptr noundef readonly captures(none) %in, ptr noundef captures(none) %r, ptr noundef writeonly captures(none) %mid, ptr noundef readonly captures(none) %bp, i32 %max_no, i32 noundef %x_size, i32 noundef %y_size) local_unnamed_addr #8 {
entry:
  %mul = mul nsw i32 %y_size, %x_size
  %conv = sext i32 %mul to i64
  %mul1 = shl nsw i64 %conv, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %r, i8 0, i64 %mul1, i1 false)
  %sub4 = add i32 %x_size, -1
  %sub35 = add i32 %x_size, -2
  %idx.ext36 = sext i32 %sub35 to i64
  %smax = tail call i32 @llvm.smax.i32(i32 %sub4, i32 1)
  %0 = sext i32 %x_size to i64
  %1 = tail call i32 @llvm.smax.i32(i32 %y_size, i32 2)
  %smax238 = add nsw i32 %1, -1
  %wide.trip.count239 = zext nneg i32 %smax238 to i64
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond

for.cond:                                         ; preds = %for.inc81, %entry
  %indvars.iv232 = phi i64 [ %indvars.iv.next233, %for.inc81 ], [ 1, %entry ]
  %exitcond240.not = icmp eq i64 %indvars.iv232, %wide.trip.count239
  br i1 %exitcond240.not, label %for.cond84.preheader, label %for.cond3.preheader

for.cond3.preheader:                              ; preds = %for.cond
  %2 = add nsw i64 %indvars.iv232, -1
  %3 = mul nsw i64 %2, %0
  %add.ptr = getelementptr inbounds i8, ptr %in, i64 %3
  %4 = mul nsw i64 %indvars.iv232, %0
  br label %for.cond3

for.cond84.preheader:                             ; preds = %for.cond
  %smax245 = tail call i32 @llvm.smax.i32(i32 %sub35, i32 2)
  %5 = tail call i32 @llvm.smax.i32(i32 %y_size, i32 4)
  %smax256 = add nsw i32 %5, -2
  %wide.trip.count257 = zext nneg i32 %smax256 to i64
  %wide.trip.count246 = zext nneg i32 %smax245 to i64
  br label %for.cond84

for.cond3:                                        ; preds = %for.cond3.preheader, %for.inc
  %indvars.iv = phi i64 [ 1, %for.cond3.preheader ], [ %indvars.iv.next, %for.inc ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.inc81, label %for.body7

for.body7:                                        ; preds = %for.cond3
  %add.ptr11 = getelementptr inbounds nuw i8, ptr %add.ptr, i64 %indvars.iv
  %add.ptr12 = getelementptr inbounds i8, ptr %add.ptr11, i64 -1
  %6 = add nsw i64 %indvars.iv, %4
  %arrayidx = getelementptr inbounds i8, ptr %in, i64 %6
  %7 = load i8, ptr %arrayidx, align 1, !tbaa !21
  %idx.ext15 = zext i8 %7 to i64
  %add.ptr16 = getelementptr inbounds nuw i8, ptr %bp, i64 %idx.ext15
  %8 = load i8, ptr %add.ptr12, align 1, !tbaa !21
  %idx.ext18 = zext i8 %8 to i64
  %idx.neg = sub nsw i64 0, %idx.ext18
  %add.ptr19 = getelementptr inbounds i8, ptr %add.ptr16, i64 %idx.neg
  %9 = load i8, ptr %add.ptr19, align 1, !tbaa !21
  %conv20 = zext i8 %9 to i32
  %add21 = add nuw nsw i32 %conv20, 100
  %incdec.ptr22 = getelementptr inbounds nuw i8, ptr %add.ptr11, i64 1
  %10 = load i8, ptr %add.ptr11, align 1, !tbaa !21
  %idx.ext24 = zext i8 %10 to i64
  %idx.neg25 = sub nsw i64 0, %idx.ext24
  %add.ptr26 = getelementptr inbounds i8, ptr %add.ptr16, i64 %idx.neg25
  %11 = load i8, ptr %add.ptr26, align 1, !tbaa !21
  %conv27 = zext i8 %11 to i32
  %add28 = add nuw nsw i32 %add21, %conv27
  %12 = load i8, ptr %incdec.ptr22, align 1, !tbaa !21
  %idx.ext30 = zext i8 %12 to i64
  %idx.neg31 = sub nsw i64 0, %idx.ext30
  %add.ptr32 = getelementptr inbounds i8, ptr %add.ptr16, i64 %idx.neg31
  %13 = load i8, ptr %add.ptr32, align 1, !tbaa !21
  %conv33 = zext i8 %13 to i32
  %add34 = add nuw nsw i32 %add28, %conv33
  %add.ptr37 = getelementptr inbounds i8, ptr %incdec.ptr22, i64 %idx.ext36
  %14 = load i8, ptr %add.ptr37, align 1, !tbaa !21
  %idx.ext39 = zext i8 %14 to i64
  %idx.neg40 = sub nsw i64 0, %idx.ext39
  %add.ptr41 = getelementptr inbounds i8, ptr %add.ptr16, i64 %idx.neg40
  %15 = load i8, ptr %add.ptr41, align 1, !tbaa !21
  %conv42 = zext i8 %15 to i32
  %add43 = add nuw nsw i32 %add34, %conv42
  %add.ptr44 = getelementptr inbounds nuw i8, ptr %add.ptr37, i64 2
  %16 = load i8, ptr %add.ptr44, align 1, !tbaa !21
  %idx.ext46 = zext i8 %16 to i64
  %idx.neg47 = sub nsw i64 0, %idx.ext46
  %add.ptr48 = getelementptr inbounds i8, ptr %add.ptr16, i64 %idx.neg47
  %17 = load i8, ptr %add.ptr48, align 1, !tbaa !21
  %conv49 = zext i8 %17 to i32
  %add50 = add nuw nsw i32 %add43, %conv49
  %add.ptr53 = getelementptr inbounds i8, ptr %add.ptr44, i64 %idx.ext36
  %incdec.ptr54 = getelementptr inbounds nuw i8, ptr %add.ptr53, i64 1
  %18 = load i8, ptr %add.ptr53, align 1, !tbaa !21
  %idx.ext56 = zext i8 %18 to i64
  %idx.neg57 = sub nsw i64 0, %idx.ext56
  %add.ptr58 = getelementptr inbounds i8, ptr %add.ptr16, i64 %idx.neg57
  %19 = load i8, ptr %add.ptr58, align 1, !tbaa !21
  %conv59 = zext i8 %19 to i32
  %add60 = add nuw nsw i32 %add50, %conv59
  %incdec.ptr61 = getelementptr inbounds nuw i8, ptr %add.ptr53, i64 2
  %20 = load i8, ptr %incdec.ptr54, align 1, !tbaa !21
  %idx.ext63 = zext i8 %20 to i64
  %idx.neg64 = sub nsw i64 0, %idx.ext63
  %add.ptr65 = getelementptr inbounds i8, ptr %add.ptr16, i64 %idx.neg64
  %21 = load i8, ptr %add.ptr65, align 1, !tbaa !21
  %conv66 = zext i8 %21 to i32
  %add67 = add nuw nsw i32 %add60, %conv66
  %22 = load i8, ptr %incdec.ptr61, align 1, !tbaa !21
  %idx.ext69 = zext i8 %22 to i64
  %idx.neg70 = sub nsw i64 0, %idx.ext69
  %add.ptr71 = getelementptr inbounds i8, ptr %add.ptr16, i64 %idx.neg70
  %23 = load i8, ptr %add.ptr71, align 1, !tbaa !21
  %conv72 = zext i8 %23 to i32
  %add73 = add nuw nsw i32 %add67, %conv72
  %cmp74 = icmp samesign ult i32 %add73, 731
  br i1 %cmp74, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body7
  %sub76 = sub nuw nsw i32 730, %add73
  %arrayidx80 = getelementptr inbounds i32, ptr %r, i64 %6
  store i32 %sub76, ptr %arrayidx80, align 4, !tbaa !16
  br label %for.inc

for.inc:                                          ; preds = %for.body7, %if.then
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond3, !llvm.loop !52

for.inc81:                                        ; preds = %for.cond3
  %indvars.iv.next233 = add nuw nsw i64 %indvars.iv232, 1
  br label %for.cond, !llvm.loop !53

for.cond84:                                       ; preds = %for.cond84.preheader, %for.inc395
  %indvars.iv248 = phi i64 [ 2, %for.cond84.preheader ], [ %indvars.iv.next249, %for.inc395 ]
  %exitcond258.not = icmp eq i64 %indvars.iv248, %wide.trip.count257
  br i1 %exitcond258.not, label %for.end397, label %for.cond89.preheader

for.cond89.preheader:                             ; preds = %for.cond84
  %24 = mul nsw i64 %indvars.iv248, %0
  %25 = add nsw i64 %indvars.iv248, -1
  %26 = mul nsw i64 %25, %0
  %add.ptr119 = getelementptr inbounds i8, ptr %in, i64 %26
  %invariant.gep = getelementptr inbounds nuw i8, ptr %add.ptr119, i64 1
  %invariant.gep290 = getelementptr i8, ptr %invariant.gep, i64 %idx.ext36
  %27 = trunc nuw nsw i64 %indvars.iv248 to i32
  %28 = trunc nuw nsw i64 %indvars.iv248 to i32
  br label %for.cond89

for.cond89:                                       ; preds = %for.cond89.preheader, %for.inc392
  %indvars.iv241 = phi i64 [ 2, %for.cond89.preheader ], [ %indvars.iv.next242, %for.inc392 ]
  %exitcond247.not = icmp eq i64 %indvars.iv241, %wide.trip.count246
  br i1 %exitcond247.not, label %for.inc395, label %for.body93

for.body93:                                       ; preds = %for.cond89
  %29 = add nsw i64 %indvars.iv241, %24
  %arrayidx97 = getelementptr inbounds i32, ptr %r, i64 %29
  %30 = load i32, ptr %arrayidx97, align 4, !tbaa !16
  %cmp98 = icmp sgt i32 %30, 0
  br i1 %cmp98, label %if.then100, label %for.inc392

if.then100:                                       ; preds = %for.body93
  %arrayidx109 = getelementptr inbounds i8, ptr %in, i64 %29
  %31 = load i8, ptr %arrayidx109, align 1, !tbaa !21
  %idx.ext111 = zext i8 %31 to i64
  %add.ptr112 = getelementptr inbounds nuw i8, ptr %bp, i64 %idx.ext111
  %cmp113 = icmp samesign ult i32 %30, 480
  br i1 %cmp113, label %if.then115, label %if.then100.if.then259_crit_edge

if.then100.if.then259_crit_edge:                  ; preds = %if.then100
  %add.ptr265.phi.trans.insert = getelementptr inbounds nuw i8, ptr %add.ptr119, i64 %indvars.iv241
  %add.ptr266.phi.trans.insert = getelementptr inbounds i8, ptr %add.ptr265.phi.trans.insert, i64 -1
  %.pre = load i8, ptr %add.ptr266.phi.trans.insert, align 1, !tbaa !21
  %.pre260 = load i8, ptr %add.ptr265.phi.trans.insert, align 1, !tbaa !21
  %incdec.ptr278.phi.trans.insert = getelementptr inbounds nuw i8, ptr %add.ptr265.phi.trans.insert, i64 1
  %.pre262 = load i8, ptr %incdec.ptr278.phi.trans.insert, align 1, !tbaa !21
  %add.ptr297.phi.trans.insert = getelementptr inbounds i8, ptr %incdec.ptr278.phi.trans.insert, i64 %idx.ext36
  %add.ptr304.phi.trans.insert = getelementptr inbounds nuw i8, ptr %add.ptr297.phi.trans.insert, i64 2
  %add.ptr313.phi.trans.insert = getelementptr inbounds i8, ptr %add.ptr304.phi.trans.insert, i64 %idx.ext36
  %.pre265 = load i8, ptr %add.ptr313.phi.trans.insert, align 1, !tbaa !21
  %incdec.ptr314.phi.trans.insert = getelementptr inbounds nuw i8, ptr %add.ptr313.phi.trans.insert, i64 1
  %.pre271 = load i8, ptr %incdec.ptr314.phi.trans.insert, align 1, !tbaa !21
  %incdec.ptr325.phi.trans.insert = getelementptr inbounds nuw i8, ptr %add.ptr313.phi.trans.insert, i64 2
  %.pre277 = load i8, ptr %incdec.ptr325.phi.trans.insert, align 1, !tbaa !21
  %.pre278 = zext i8 %.pre to i64
  %.pre279 = sub nsw i64 0, %.pre278
  %.pre280 = zext i8 %.pre260 to i64
  %.pre281 = sub nsw i64 0, %.pre280
  %.pre282 = zext i8 %.pre262 to i64
  %.pre283 = sub nsw i64 0, %.pre282
  %.pre284 = zext i8 %.pre265 to i64
  %.pre285 = sub nsw i64 0, %.pre284
  %.pre286 = zext i8 %.pre271 to i64
  %.pre287 = sub nsw i64 0, %.pre286
  %.pre288 = zext i8 %.pre277 to i64
  %.pre289 = sub nsw i64 0, %.pre288
  br label %if.then259

if.then115:                                       ; preds = %if.then100
  %sub105 = sub nuw nsw i32 730, %30
  %add.ptr121 = getelementptr inbounds nuw i8, ptr %add.ptr119, i64 %indvars.iv241
  %add.ptr122 = getelementptr inbounds i8, ptr %add.ptr121, i64 -1
  %32 = load i8, ptr %add.ptr122, align 1, !tbaa !21
  %idx.ext125 = zext i8 %32 to i64
  %idx.neg126 = sub nsw i64 0, %idx.ext125
  %add.ptr127 = getelementptr inbounds i8, ptr %add.ptr112, i64 %idx.neg126
  %33 = load i8, ptr %add.ptr127, align 1, !tbaa !21
  %conv128 = zext i8 %33 to i32
  %incdec.ptr132 = getelementptr inbounds nuw i8, ptr %add.ptr121, i64 1
  %34 = load i8, ptr %add.ptr121, align 1, !tbaa !21
  %idx.ext134 = zext i8 %34 to i64
  %idx.neg135 = sub nsw i64 0, %idx.ext134
  %add.ptr136 = getelementptr inbounds i8, ptr %add.ptr112, i64 %idx.neg135
  %35 = load i8, ptr %add.ptr136, align 1, !tbaa !21
  %conv137 = zext i8 %35 to i32
  %36 = load i8, ptr %incdec.ptr132, align 1, !tbaa !21
  %idx.ext140 = zext i8 %36 to i64
  %idx.neg141 = sub nsw i64 0, %idx.ext140
  %add.ptr142 = getelementptr inbounds i8, ptr %add.ptr112, i64 %idx.neg141
  %37 = load i8, ptr %add.ptr142, align 1, !tbaa !21
  %conv143 = zext i8 %37 to i32
  %add.ptr149 = getelementptr inbounds i8, ptr %incdec.ptr132, i64 %idx.ext36
  %38 = load i8, ptr %add.ptr149, align 1, !tbaa !21
  %idx.ext151 = zext i8 %38 to i64
  %idx.neg152 = sub nsw i64 0, %idx.ext151
  %add.ptr153 = getelementptr inbounds i8, ptr %add.ptr112, i64 %idx.neg152
  %39 = load i8, ptr %add.ptr153, align 1, !tbaa !21
  %conv154 = zext i8 %39 to i32
  %add.ptr156 = getelementptr inbounds nuw i8, ptr %add.ptr149, i64 2
  %40 = load i8, ptr %add.ptr156, align 1, !tbaa !21
  %idx.ext158 = zext i8 %40 to i64
  %idx.neg159 = sub nsw i64 0, %idx.ext158
  %add.ptr160 = getelementptr inbounds i8, ptr %add.ptr112, i64 %idx.neg159
  %41 = load i8, ptr %add.ptr160, align 1, !tbaa !21
  %conv161 = zext i8 %41 to i32
  %add.ptr165 = getelementptr inbounds i8, ptr %add.ptr156, i64 %idx.ext36
  %incdec.ptr166 = getelementptr inbounds nuw i8, ptr %add.ptr165, i64 1
  %42 = load i8, ptr %add.ptr165, align 1, !tbaa !21
  %idx.ext168 = zext i8 %42 to i64
  %idx.neg169 = sub nsw i64 0, %idx.ext168
  %add.ptr170 = getelementptr inbounds i8, ptr %add.ptr112, i64 %idx.neg169
  %43 = load i8, ptr %add.ptr170, align 1, !tbaa !21
  %conv171 = zext i8 %43 to i32
  %44 = add nuw nsw i32 %conv137, %conv128
  %45 = add nuw nsw i32 %44, %conv143
  %add174 = sub nsw i32 %conv171, %45
  %incdec.ptr175 = getelementptr inbounds nuw i8, ptr %add.ptr165, i64 2
  %46 = load i8, ptr %incdec.ptr166, align 1, !tbaa !21
  %idx.ext177 = zext i8 %46 to i64
  %idx.neg178 = sub nsw i64 0, %idx.ext177
  %add.ptr179 = getelementptr inbounds i8, ptr %add.ptr112, i64 %idx.neg178
  %47 = load i8, ptr %add.ptr179, align 1, !tbaa !21
  %conv180 = zext i8 %47 to i32
  %add181 = add nsw i32 %add174, %conv180
  %48 = load i8, ptr %incdec.ptr175, align 1, !tbaa !21
  %idx.ext183 = zext i8 %48 to i64
  %idx.neg184 = sub nsw i64 0, %idx.ext183
  %add.ptr185 = getelementptr inbounds i8, ptr %add.ptr112, i64 %idx.neg184
  %49 = load i8, ptr %add.ptr185, align 1, !tbaa !21
  %conv186 = zext i8 %49 to i32
  %50 = add nuw nsw i32 %conv128, %conv154
  %51 = add nuw nsw i32 %conv143, %conv161
  %52 = add nuw nsw i32 %50, %conv171
  %sub172 = sub nsw i32 %51, %52
  %add187 = add nsw i32 %sub172, %conv186
  %add189 = add nsw i32 %add181, %conv186
  %mul190 = mul nsw i32 %add187, %add187
  %mul191 = mul nsw i32 %add189, %add189
  %add192 = add nuw nsw i32 %mul190, %mul191
  %conv193 = uitofp nneg i32 %add192 to float
  %sqrt = tail call float @llvm.sqrt.f32(float %conv193)
  %conv196 = fpext float %sqrt to double
  %conv198 = uitofp nneg i32 %sub105 to double
  %mul199 = fmul double %conv198, 4.000000e-01
  %cmp200 = fcmp olt double %mul199, %conv196
  br i1 %cmp200, label %if.then202, label %if.then259

if.then202:                                       ; preds = %if.then115
  %cmp203 = icmp eq i32 %add187, 0
  %conv206 = sitofp i32 %add189 to float
  %conv207 = sitofp i32 %add187 to float
  %div = fdiv float %conv206, %conv207
  %z.0 = select i1 %cmp203, float 1.000000e+06, float %div
  %cmp209 = fcmp uge float %z.0, 0.000000e+00
  %fneg = fneg float %z.0
  %z.1 = select i1 %cmp209, float %z.0, float %fneg
  %cmp215 = fcmp olt float %z.1, 5.000000e-01
  br i1 %cmp215, label %if.end230, label %if.else218

if.else218:                                       ; preds = %if.then202
  %cmp220 = fcmp ogt float %z.1, 2.000000e+00
  br i1 %cmp220, label %if.end230, label %if.else223

if.else223:                                       ; preds = %if.else218
  %. = select i1 %cmp209, i32 1, i32 -1
  br label %if.end230

if.end230:                                        ; preds = %if.else223, %if.else218, %if.then202
  %a.0 = phi i32 [ 0, %if.then202 ], [ 1, %if.else218 ], [ %., %if.else223 ]
  %b.0 = phi i32 [ 1, %if.then202 ], [ 0, %if.else218 ], [ 1, %if.else223 ]
  %add231 = add nsw i32 %a.0, %28
  %mul232 = mul nsw i32 %add231, %x_size
  %53 = trunc nuw nsw i64 %indvars.iv241 to i32
  %add233 = add nuw i32 %b.0, %53
  %add234 = add i32 %add233, %mul232
  %idxprom235 = sext i32 %add234 to i64
  %arrayidx236 = getelementptr inbounds i32, ptr %r, i64 %idxprom235
  %54 = load i32, ptr %arrayidx236, align 4, !tbaa !16
  %cmp237 = icmp sgt i32 %30, %54
  br i1 %cmp237, label %land.lhs.true, label %for.inc392

land.lhs.true:                                    ; preds = %if.end230
  %sub239 = sub nsw i32 %28, %a.0
  %mul240 = mul nsw i32 %sub239, %x_size
  %add241 = sub nsw i32 %53, %b.0
  %sub242 = add i32 %add241, %mul240
  %idxprom243 = sext i32 %sub242 to i64
  %arrayidx244 = getelementptr inbounds i32, ptr %r, i64 %idxprom243
  %55 = load i32, ptr %arrayidx244, align 4, !tbaa !16
  %cmp245.not = icmp slt i32 %30, %55
  br i1 %cmp245.not, label %for.inc392, label %for.inc392.sink.split

if.then259:                                       ; preds = %if.then100.if.then259_crit_edge, %if.then115
  %idx.neg334.pre-phi = phi i64 [ %.pre289, %if.then100.if.then259_crit_edge ], [ %idx.neg184, %if.then115 ]
  %idx.neg328.pre-phi = phi i64 [ %.pre287, %if.then100.if.then259_crit_edge ], [ %idx.neg178, %if.then115 ]
  %idx.neg317.pre-phi = phi i64 [ %.pre285, %if.then100.if.then259_crit_edge ], [ %idx.neg169, %if.then115 ]
  %idx.neg287.pre-phi = phi i64 [ %.pre283, %if.then100.if.then259_crit_edge ], [ %idx.neg141, %if.then115 ]
  %idx.neg281.pre-phi = phi i64 [ %.pre281, %if.then100.if.then259_crit_edge ], [ %idx.neg135, %if.then115 ]
  %idx.neg270.pre-phi = phi i64 [ %.pre279, %if.then100.if.then259_crit_edge ], [ %idx.neg126, %if.then115 ]
  %add.ptr271 = getelementptr inbounds i8, ptr %add.ptr112, i64 %idx.neg270.pre-phi
  %56 = load i8, ptr %add.ptr271, align 1, !tbaa !21
  %conv272 = zext i8 %56 to i32
  %add.ptr282 = getelementptr inbounds i8, ptr %add.ptr112, i64 %idx.neg281.pre-phi
  %57 = load i8, ptr %add.ptr282, align 1, !tbaa !21
  %conv283 = zext i8 %57 to i32
  %add.ptr288 = getelementptr inbounds i8, ptr %add.ptr112, i64 %idx.neg287.pre-phi
  %58 = load i8, ptr %add.ptr288, align 1, !tbaa !21
  %conv289 = zext i8 %58 to i32
  %add.ptr318 = getelementptr inbounds i8, ptr %add.ptr112, i64 %idx.neg317.pre-phi
  %59 = load i8, ptr %add.ptr318, align 1, !tbaa !21
  %conv319 = zext i8 %59 to i32
  %add.ptr329 = getelementptr inbounds i8, ptr %add.ptr112, i64 %idx.neg328.pre-phi
  %60 = load i8, ptr %add.ptr329, align 1, !tbaa !21
  %conv330 = zext i8 %60 to i32
  %add.ptr335 = getelementptr inbounds i8, ptr %add.ptr112, i64 %idx.neg334.pre-phi
  %61 = load i8, ptr %add.ptr335, align 1, !tbaa !21
  %conv336 = zext i8 %61 to i32
  %add284 = add nuw nsw i32 %conv319, %conv289
  %add292 = add nuw nsw i32 %add284, %conv272
  %add322 = add nuw nsw i32 %add292, %conv283
  %add331 = add nuw nsw i32 %add322, %conv330
  %add339 = add nuw nsw i32 %add331, %conv336
  %.neg229 = add nuw nsw i32 %conv336, %conv272
  %cmp342 = icmp eq i32 %add339, 0
  br i1 %cmp342, label %if.end366, label %if.end349

if.end349:                                        ; preds = %if.then259
  %gep291 = getelementptr i8, ptr %invariant.gep290, i64 %indvars.iv241
  %add.ptr304 = getelementptr inbounds nuw i8, ptr %gep291, i64 2
  %62 = load i8, ptr %gep291, align 1, !tbaa !21
  %idx.ext299 = zext i8 %62 to i64
  %idx.neg300 = sub nsw i64 0, %idx.ext299
  %add.ptr301 = getelementptr inbounds i8, ptr %add.ptr112, i64 %idx.neg300
  %63 = load i8, ptr %add.ptr301, align 1, !tbaa !21
  %conv302 = zext i8 %63 to i32
  %64 = load i8, ptr %add.ptr304, align 1, !tbaa !21
  %idx.ext306 = zext i8 %64 to i64
  %idx.neg307 = sub nsw i64 0, %idx.ext306
  %add.ptr308 = getelementptr inbounds i8, ptr %add.ptr112, i64 %idx.neg307
  %65 = load i8, ptr %add.ptr308, align 1, !tbaa !21
  %conv309 = zext i8 %65 to i32
  %add310 = add nuw nsw i32 %add292, %conv336
  %add320 = add nuw nsw i32 %add310, %conv302
  %add337 = add nuw nsw i32 %add320, %conv309
  %conv346 = uitofp nneg i32 %add337 to float
  %conv347 = uitofp nneg i32 %add339 to float
  %div348 = fdiv float %conv346, %conv347
  %cmp351 = fcmp olt float %div348, 5.000000e-01
  br i1 %cmp351, label %if.end366, label %if.else354

if.else354:                                       ; preds = %if.end349
  %cmp356 = fcmp ogt float %div348, 2.000000e+00
  br i1 %cmp356, label %if.end366, label %if.else359

if.else359:                                       ; preds = %if.else354
  %cmp360.inv.not = icmp samesign ugt i32 %.neg229, %add284
  %.220 = select i1 %cmp360.inv.not, i32 -1, i32 1
  br label %if.end366

if.end366:                                        ; preds = %if.then259, %if.else359, %if.else354, %if.end349
  %a.1 = phi i32 [ 0, %if.end349 ], [ 1, %if.else354 ], [ %.220, %if.else359 ], [ 1, %if.then259 ]
  %b.1 = phi i32 [ 1, %if.end349 ], [ 0, %if.else354 ], [ 1, %if.else359 ], [ 0, %if.then259 ]
  %add367 = add nsw i32 %a.1, %27
  %mul368 = mul nsw i32 %add367, %x_size
  %66 = trunc nuw nsw i64 %indvars.iv241 to i32
  %add369 = add nuw i32 %b.1, %66
  %add370 = add i32 %add369, %mul368
  %idxprom371 = sext i32 %add370 to i64
  %arrayidx372 = getelementptr inbounds i32, ptr %r, i64 %idxprom371
  %67 = load i32, ptr %arrayidx372, align 4, !tbaa !16
  %cmp373 = icmp sgt i32 %30, %67
  br i1 %cmp373, label %land.lhs.true375, label %for.inc392

land.lhs.true375:                                 ; preds = %if.end366
  %sub376 = sub nsw i32 %27, %a.1
  %mul377 = mul nsw i32 %sub376, %x_size
  %add378 = sub nsw i32 %66, %b.1
  %sub379 = add i32 %add378, %mul377
  %idxprom380 = sext i32 %sub379 to i64
  %arrayidx381 = getelementptr inbounds i32, ptr %r, i64 %idxprom380
  %68 = load i32, ptr %arrayidx381, align 4, !tbaa !16
  %cmp382.not = icmp slt i32 %30, %68
  br i1 %cmp382.not, label %for.inc392, label %for.inc392.sink.split

for.inc392.sink.split:                            ; preds = %land.lhs.true375, %land.lhs.true
  %.sink = phi i8 [ 1, %land.lhs.true ], [ 2, %land.lhs.true375 ]
  %arrayidx251 = getelementptr inbounds i8, ptr %mid, i64 %29
  store i8 %.sink, ptr %arrayidx251, align 1, !tbaa !21
  br label %for.inc392

for.inc392:                                       ; preds = %for.inc392.sink.split, %land.lhs.true, %if.end230, %for.body93, %if.end366, %land.lhs.true375
  %indvars.iv.next242 = add nuw nsw i64 %indvars.iv241, 1
  br label %for.cond89, !llvm.loop !54

for.inc395:                                       ; preds = %for.cond89
  %indvars.iv.next249 = add nuw nsw i64 %indvars.iv248, 1
  br label %for.cond84, !llvm.loop !55

for.end397:                                       ; preds = %for.cond84
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @corner_draw(ptr noundef writeonly captures(none) %in, ptr noundef readonly captures(none) %corner_list, i32 noundef %x_size, i32 noundef %drawing_mode) local_unnamed_addr #8 {
entry:
  %cmp1 = icmp eq i32 %drawing_mode, 0
  %sub10 = add nsw i32 %x_size, -2
  %idx.ext11 = sext i32 %sub10 to i64
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds nuw %struct.anon, ptr %corner_list, i64 %indvars.iv
  %info = getelementptr inbounds nuw i8, ptr %arrayidx, i64 8
  %0 = load i32, ptr %info, align 4, !tbaa !56
  %cmp.not = icmp eq i32 %0, 7
  br i1 %cmp.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %y = getelementptr inbounds nuw i8, ptr %arrayidx, i64 4
  %1 = load i32, ptr %y, align 4, !tbaa !58
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %sub = add nsw i32 %1, -1
  %mul = mul nsw i32 %sub, %x_size
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8, ptr %in, i64 %idx.ext
  %2 = load i32, ptr %arrayidx, align 4, !tbaa !59
  %idx.ext6 = sext i32 %2 to i64
  %add.ptr7 = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.ext6
  %add.ptr8 = getelementptr inbounds i8, ptr %add.ptr7, i64 -1
  store i8 -1, ptr %add.ptr8, align 1, !tbaa !21
  %incdec.ptr9 = getelementptr inbounds nuw i8, ptr %add.ptr7, i64 1
  store i8 -1, ptr %add.ptr7, align 1, !tbaa !21
  store i8 -1, ptr %incdec.ptr9, align 1, !tbaa !21
  %add.ptr12 = getelementptr inbounds i8, ptr %incdec.ptr9, i64 %idx.ext11
  %incdec.ptr13 = getelementptr inbounds nuw i8, ptr %add.ptr12, i64 1
  store i8 -1, ptr %add.ptr12, align 1, !tbaa !21
  %incdec.ptr14 = getelementptr inbounds nuw i8, ptr %add.ptr12, i64 2
  store i8 0, ptr %incdec.ptr13, align 1, !tbaa !21
  store i8 -1, ptr %incdec.ptr14, align 1, !tbaa !21
  %add.ptr17 = getelementptr inbounds i8, ptr %incdec.ptr14, i64 %idx.ext11
  %incdec.ptr18 = getelementptr inbounds nuw i8, ptr %add.ptr17, i64 1
  store i8 -1, ptr %add.ptr17, align 1, !tbaa !21
  %incdec.ptr19 = getelementptr inbounds nuw i8, ptr %add.ptr17, i64 2
  store i8 -1, ptr %incdec.ptr18, align 1, !tbaa !21
  store i8 -1, ptr %incdec.ptr19, align 1, !tbaa !21
  br label %if.end

if.else:                                          ; preds = %while.body
  %mul23 = mul nsw i32 %1, %x_size
  %idx.ext24 = sext i32 %mul23 to i64
  %add.ptr25 = getelementptr inbounds i8, ptr %in, i64 %idx.ext24
  %3 = load i32, ptr %arrayidx, align 4, !tbaa !59
  %idx.ext29 = sext i32 %3 to i64
  %add.ptr30 = getelementptr inbounds i8, ptr %add.ptr25, i64 %idx.ext29
  store i8 0, ptr %add.ptr30, align 1, !tbaa !21
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %while.cond, !llvm.loop !60

while.end:                                        ; preds = %while.cond
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
  %sub11 = add i32 %x_size, -5
  %sub42 = add nsw i32 %x_size, -3
  %idx.ext43 = sext i32 %sub42 to i64
  %idx.ext80 = sext i32 %sub11 to i64
  %sub130 = add nsw i32 %x_size, -6
  %idx.ext131 = sext i32 %sub130 to i64
  %smax = tail call i32 @llvm.smax.i32(i32 %sub11, i32 5)
  %0 = sext i32 %x_size to i64
  %1 = tail call i32 @llvm.smax.i32(i32 %y_size, i32 10)
  %smax803 = add nsw i32 %1, -5
  %wide.trip.count804 = zext nneg i32 %smax803 to i64
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond

for.cond:                                         ; preds = %for.inc904, %entry
  %indvars.iv797 = phi i64 [ %indvars.iv.next798, %for.inc904 ], [ 5, %entry ]
  %exitcond805.not = icmp eq i64 %indvars.iv797, %wide.trip.count804
  br i1 %exitcond805.not, label %for.cond907.preheader, label %for.cond10.preheader

for.cond10.preheader:                             ; preds = %for.cond
  %2 = add nsw i64 %indvars.iv797, -3
  %3 = mul nsw i64 %2, %0
  %add.ptr = getelementptr inbounds i8, ptr %in, i64 %3
  %4 = mul nsw i64 %indvars.iv797, %0
  %5 = trunc nuw nsw i64 %indvars.iv797 to i32
  %6 = trunc nuw nsw i64 %indvars.iv797 to i32
  br label %for.cond10

for.cond907.preheader:                            ; preds = %for.cond
  %wide.trip.count816 = zext nneg i32 %smax to i64
  br label %for.cond907

for.cond10:                                       ; preds = %for.cond10.preheader, %for.inc
  %indvars.iv = phi i64 [ 5, %for.cond10.preheader ], [ %indvars.iv.next, %for.inc ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.inc904, label %for.body14

for.body14:                                       ; preds = %for.cond10
  %add.ptr18 = getelementptr inbounds nuw i8, ptr %add.ptr, i64 %indvars.iv
  %add.ptr19 = getelementptr inbounds i8, ptr %add.ptr18, i64 -1
  %7 = add nsw i64 %indvars.iv, %4
  %arrayidx = getelementptr inbounds i8, ptr %in, i64 %7
  %8 = load i8, ptr %arrayidx, align 1, !tbaa !21
  %idx.ext22 = zext i8 %8 to i64
  %add.ptr23 = getelementptr inbounds nuw i8, ptr %bp, i64 %idx.ext22
  %9 = load i8, ptr %add.ptr19, align 1, !tbaa !21
  %idx.ext25 = zext i8 %9 to i64
  %idx.neg = sub nsw i64 0, %idx.ext25
  %add.ptr26 = getelementptr inbounds i8, ptr %add.ptr23, i64 %idx.neg
  %10 = load i8, ptr %add.ptr26, align 1, !tbaa !21
  %conv27 = zext i8 %10 to i32
  %add28 = add nuw nsw i32 %conv27, 100
  %incdec.ptr29 = getelementptr inbounds nuw i8, ptr %add.ptr18, i64 1
  %11 = load i8, ptr %add.ptr18, align 1, !tbaa !21
  %idx.ext31 = zext i8 %11 to i64
  %idx.neg32 = sub nsw i64 0, %idx.ext31
  %add.ptr33 = getelementptr inbounds i8, ptr %add.ptr23, i64 %idx.neg32
  %12 = load i8, ptr %add.ptr33, align 1, !tbaa !21
  %conv34 = zext i8 %12 to i32
  %add35 = add nuw nsw i32 %add28, %conv34
  %13 = load i8, ptr %incdec.ptr29, align 1, !tbaa !21
  %idx.ext37 = zext i8 %13 to i64
  %idx.neg38 = sub nsw i64 0, %idx.ext37
  %add.ptr39 = getelementptr inbounds i8, ptr %add.ptr23, i64 %idx.neg38
  %14 = load i8, ptr %add.ptr39, align 1, !tbaa !21
  %conv40 = zext i8 %14 to i32
  %add41 = add nuw nsw i32 %add35, %conv40
  %add.ptr44 = getelementptr inbounds i8, ptr %incdec.ptr29, i64 %idx.ext43
  %incdec.ptr45 = getelementptr inbounds nuw i8, ptr %add.ptr44, i64 1
  %15 = load i8, ptr %add.ptr44, align 1, !tbaa !21
  %idx.ext47 = zext i8 %15 to i64
  %idx.neg48 = sub nsw i64 0, %idx.ext47
  %add.ptr49 = getelementptr inbounds i8, ptr %add.ptr23, i64 %idx.neg48
  %16 = load i8, ptr %add.ptr49, align 1, !tbaa !21
  %conv50 = zext i8 %16 to i32
  %add51 = add nuw nsw i32 %add41, %conv50
  %incdec.ptr52 = getelementptr inbounds nuw i8, ptr %add.ptr44, i64 2
  %17 = load i8, ptr %incdec.ptr45, align 1, !tbaa !21
  %idx.ext54 = zext i8 %17 to i64
  %idx.neg55 = sub nsw i64 0, %idx.ext54
  %add.ptr56 = getelementptr inbounds i8, ptr %add.ptr23, i64 %idx.neg55
  %18 = load i8, ptr %add.ptr56, align 1, !tbaa !21
  %conv57 = zext i8 %18 to i32
  %add58 = add nuw nsw i32 %add51, %conv57
  %incdec.ptr59 = getelementptr inbounds nuw i8, ptr %add.ptr44, i64 3
  %19 = load i8, ptr %incdec.ptr52, align 1, !tbaa !21
  %idx.ext61 = zext i8 %19 to i64
  %idx.neg62 = sub nsw i64 0, %idx.ext61
  %add.ptr63 = getelementptr inbounds i8, ptr %add.ptr23, i64 %idx.neg62
  %20 = load i8, ptr %add.ptr63, align 1, !tbaa !21
  %conv64 = zext i8 %20 to i32
  %add65 = add nuw nsw i32 %add58, %conv64
  %incdec.ptr66 = getelementptr inbounds nuw i8, ptr %add.ptr44, i64 4
  %21 = load i8, ptr %incdec.ptr59, align 1, !tbaa !21
  %idx.ext68 = zext i8 %21 to i64
  %idx.neg69 = sub nsw i64 0, %idx.ext68
  %add.ptr70 = getelementptr inbounds i8, ptr %add.ptr23, i64 %idx.neg69
  %22 = load i8, ptr %add.ptr70, align 1, !tbaa !21
  %conv71 = zext i8 %22 to i32
  %add72 = add nuw nsw i32 %add65, %conv71
  %23 = load i8, ptr %incdec.ptr66, align 1, !tbaa !21
  %idx.ext74 = zext i8 %23 to i64
  %idx.neg75 = sub nsw i64 0, %idx.ext74
  %add.ptr76 = getelementptr inbounds i8, ptr %add.ptr23, i64 %idx.neg75
  %24 = load i8, ptr %add.ptr76, align 1, !tbaa !21
  %conv77 = zext i8 %24 to i32
  %add78 = add nuw nsw i32 %add72, %conv77
  %add.ptr81 = getelementptr inbounds i8, ptr %incdec.ptr66, i64 %idx.ext80
  %incdec.ptr82 = getelementptr inbounds nuw i8, ptr %add.ptr81, i64 1
  %25 = load i8, ptr %add.ptr81, align 1, !tbaa !21
  %idx.ext84 = zext i8 %25 to i64
  %idx.neg85 = sub nsw i64 0, %idx.ext84
  %add.ptr86 = getelementptr inbounds i8, ptr %add.ptr23, i64 %idx.neg85
  %26 = load i8, ptr %add.ptr86, align 1, !tbaa !21
  %conv87 = zext i8 %26 to i32
  %add88 = add nuw nsw i32 %add78, %conv87
  %incdec.ptr89 = getelementptr inbounds nuw i8, ptr %add.ptr81, i64 2
  %27 = load i8, ptr %incdec.ptr82, align 1, !tbaa !21
  %idx.ext91 = zext i8 %27 to i64
  %idx.neg92 = sub nsw i64 0, %idx.ext91
  %add.ptr93 = getelementptr inbounds i8, ptr %add.ptr23, i64 %idx.neg92
  %28 = load i8, ptr %add.ptr93, align 1, !tbaa !21
  %conv94 = zext i8 %28 to i32
  %add95 = add nuw nsw i32 %add88, %conv94
  %incdec.ptr96 = getelementptr inbounds nuw i8, ptr %add.ptr81, i64 3
  %29 = load i8, ptr %incdec.ptr89, align 1, !tbaa !21
  %idx.ext98 = zext i8 %29 to i64
  %idx.neg99 = sub nsw i64 0, %idx.ext98
  %add.ptr100 = getelementptr inbounds i8, ptr %add.ptr23, i64 %idx.neg99
  %30 = load i8, ptr %add.ptr100, align 1, !tbaa !21
  %conv101 = zext i8 %30 to i32
  %add102 = add nuw nsw i32 %add95, %conv101
  %incdec.ptr103 = getelementptr inbounds nuw i8, ptr %add.ptr81, i64 4
  %31 = load i8, ptr %incdec.ptr96, align 1, !tbaa !21
  %idx.ext105 = zext i8 %31 to i64
  %idx.neg106 = sub nsw i64 0, %idx.ext105
  %add.ptr107 = getelementptr inbounds i8, ptr %add.ptr23, i64 %idx.neg106
  %32 = load i8, ptr %add.ptr107, align 1, !tbaa !21
  %conv108 = zext i8 %32 to i32
  %add109 = add nuw nsw i32 %add102, %conv108
  %incdec.ptr110 = getelementptr inbounds nuw i8, ptr %add.ptr81, i64 5
  %33 = load i8, ptr %incdec.ptr103, align 1, !tbaa !21
  %idx.ext112 = zext i8 %33 to i64
  %idx.neg113 = sub nsw i64 0, %idx.ext112
  %add.ptr114 = getelementptr inbounds i8, ptr %add.ptr23, i64 %idx.neg113
  %34 = load i8, ptr %add.ptr114, align 1, !tbaa !21
  %conv115 = zext i8 %34 to i32
  %add116 = add nuw nsw i32 %add109, %conv115
  %incdec.ptr117 = getelementptr inbounds nuw i8, ptr %add.ptr81, i64 6
  %35 = load i8, ptr %incdec.ptr110, align 1, !tbaa !21
  %idx.ext119 = zext i8 %35 to i64
  %idx.neg120 = sub nsw i64 0, %idx.ext119
  %add.ptr121 = getelementptr inbounds i8, ptr %add.ptr23, i64 %idx.neg120
  %36 = load i8, ptr %add.ptr121, align 1, !tbaa !21
  %conv122 = zext i8 %36 to i32
  %add123 = add nuw nsw i32 %add116, %conv122
  %37 = load i8, ptr %incdec.ptr117, align 1, !tbaa !21
  %idx.ext125 = zext i8 %37 to i64
  %idx.neg126 = sub nsw i64 0, %idx.ext125
  %add.ptr127 = getelementptr inbounds i8, ptr %add.ptr23, i64 %idx.neg126
  %38 = load i8, ptr %add.ptr127, align 1, !tbaa !21
  %conv128 = zext i8 %38 to i32
  %add129 = add nuw nsw i32 %add123, %conv128
  %add.ptr132 = getelementptr inbounds i8, ptr %incdec.ptr117, i64 %idx.ext131
  %incdec.ptr133 = getelementptr inbounds nuw i8, ptr %add.ptr132, i64 1
  %39 = load i8, ptr %add.ptr132, align 1, !tbaa !21
  %idx.ext135 = zext i8 %39 to i64
  %idx.neg136 = sub nsw i64 0, %idx.ext135
  %add.ptr137 = getelementptr inbounds i8, ptr %add.ptr23, i64 %idx.neg136
  %40 = load i8, ptr %add.ptr137, align 1, !tbaa !21
  %conv138 = zext i8 %40 to i32
  %add139 = add nuw nsw i32 %add129, %conv138
  %incdec.ptr140 = getelementptr inbounds nuw i8, ptr %add.ptr132, i64 2
  %41 = load i8, ptr %incdec.ptr133, align 1, !tbaa !21
  %idx.ext142 = zext i8 %41 to i64
  %idx.neg143 = sub nsw i64 0, %idx.ext142
  %add.ptr144 = getelementptr inbounds i8, ptr %add.ptr23, i64 %idx.neg143
  %42 = load i8, ptr %add.ptr144, align 1, !tbaa !21
  %conv145 = zext i8 %42 to i32
  %add146 = add nuw nsw i32 %add139, %conv145
  %43 = load i8, ptr %incdec.ptr140, align 1, !tbaa !21
  %idx.ext148 = zext i8 %43 to i64
  %idx.neg149 = sub nsw i64 0, %idx.ext148
  %add.ptr150 = getelementptr inbounds i8, ptr %add.ptr23, i64 %idx.neg149
  %44 = load i8, ptr %add.ptr150, align 1, !tbaa !21
  %conv151 = zext i8 %44 to i32
  %add152 = add nuw nsw i32 %add146, %conv151
  %cmp153 = icmp slt i32 %add152, %max_no
  br i1 %cmp153, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body14
  %add.ptr155 = getelementptr inbounds nuw i8, ptr %add.ptr132, i64 4
  %45 = load i8, ptr %add.ptr155, align 1, !tbaa !21
  %idx.ext158 = zext i8 %45 to i64
  %idx.neg159 = sub nsw i64 0, %idx.ext158
  %add.ptr160 = getelementptr inbounds i8, ptr %add.ptr23, i64 %idx.neg159
  %46 = load i8, ptr %add.ptr160, align 1, !tbaa !21
  %conv161 = zext i8 %46 to i32
  %add162 = add nuw nsw i32 %add152, %conv161
  %cmp163 = icmp samesign ult i32 %add162, %max_no
  br i1 %cmp163, label %if.then165, label %for.inc

if.then165:                                       ; preds = %if.then
  %incdec.ptr156 = getelementptr inbounds nuw i8, ptr %add.ptr132, i64 5
  %incdec.ptr166 = getelementptr inbounds nuw i8, ptr %add.ptr132, i64 6
  %47 = load i8, ptr %incdec.ptr156, align 1, !tbaa !21
  %idx.ext168 = zext i8 %47 to i64
  %idx.neg169 = sub nsw i64 0, %idx.ext168
  %add.ptr170 = getelementptr inbounds i8, ptr %add.ptr23, i64 %idx.neg169
  %48 = load i8, ptr %add.ptr170, align 1, !tbaa !21
  %conv171 = zext i8 %48 to i32
  %add172 = add nuw nsw i32 %add162, %conv171
  %cmp173 = icmp samesign ult i32 %add172, %max_no
  br i1 %cmp173, label %if.then175, label %for.inc

if.then175:                                       ; preds = %if.then165
  %49 = load i8, ptr %incdec.ptr166, align 1, !tbaa !21
  %idx.ext177 = zext i8 %49 to i64
  %idx.neg178 = sub nsw i64 0, %idx.ext177
  %add.ptr179 = getelementptr inbounds i8, ptr %add.ptr23, i64 %idx.neg178
  %50 = load i8, ptr %add.ptr179, align 1, !tbaa !21
  %conv180 = zext i8 %50 to i32
  %add181 = add nuw nsw i32 %add172, %conv180
  %cmp182 = icmp samesign ult i32 %add181, %max_no
  br i1 %cmp182, label %if.then184, label %for.inc

if.then184:                                       ; preds = %if.then175
  %add.ptr187 = getelementptr inbounds i8, ptr %incdec.ptr166, i64 %idx.ext131
  %51 = load i8, ptr %add.ptr187, align 1, !tbaa !21
  %idx.ext190 = zext i8 %51 to i64
  %idx.neg191 = sub nsw i64 0, %idx.ext190
  %add.ptr192 = getelementptr inbounds i8, ptr %add.ptr23, i64 %idx.neg191
  %52 = load i8, ptr %add.ptr192, align 1, !tbaa !21
  %conv193 = zext i8 %52 to i32
  %add194 = add nuw nsw i32 %add181, %conv193
  %cmp195 = icmp samesign ult i32 %add194, %max_no
  br i1 %cmp195, label %if.then197, label %for.inc

if.then197:                                       ; preds = %if.then184
  %incdec.ptr188 = getelementptr inbounds nuw i8, ptr %add.ptr187, i64 1
  %53 = load i8, ptr %incdec.ptr188, align 1, !tbaa !21
  %idx.ext200 = zext i8 %53 to i64
  %idx.neg201 = sub nsw i64 0, %idx.ext200
  %add.ptr202 = getelementptr inbounds i8, ptr %add.ptr23, i64 %idx.neg201
  %54 = load i8, ptr %add.ptr202, align 1, !tbaa !21
  %conv203 = zext i8 %54 to i32
  %add204 = add nuw nsw i32 %add194, %conv203
  %cmp205 = icmp samesign ult i32 %add204, %max_no
  br i1 %cmp205, label %if.then207, label %for.inc

if.then207:                                       ; preds = %if.then197
  %incdec.ptr198 = getelementptr inbounds nuw i8, ptr %add.ptr187, i64 2
  %55 = load i8, ptr %incdec.ptr198, align 1, !tbaa !21
  %idx.ext210 = zext i8 %55 to i64
  %idx.neg211 = sub nsw i64 0, %idx.ext210
  %add.ptr212 = getelementptr inbounds i8, ptr %add.ptr23, i64 %idx.neg211
  %56 = load i8, ptr %add.ptr212, align 1, !tbaa !21
  %conv213 = zext i8 %56 to i32
  %add214 = add nuw nsw i32 %add204, %conv213
  %cmp215 = icmp samesign ult i32 %add214, %max_no
  br i1 %cmp215, label %if.then217, label %for.inc

if.then217:                                       ; preds = %if.then207
  %incdec.ptr208 = getelementptr inbounds nuw i8, ptr %add.ptr187, i64 3
  %57 = load i8, ptr %incdec.ptr208, align 1, !tbaa !21
  %idx.ext220 = zext i8 %57 to i64
  %idx.neg221 = sub nsw i64 0, %idx.ext220
  %add.ptr222 = getelementptr inbounds i8, ptr %add.ptr23, i64 %idx.neg221
  %58 = load i8, ptr %add.ptr222, align 1, !tbaa !21
  %conv223 = zext i8 %58 to i32
  %add224 = add nuw nsw i32 %add214, %conv223
  %cmp225 = icmp samesign ult i32 %add224, %max_no
  br i1 %cmp225, label %if.then227, label %for.inc

if.then227:                                       ; preds = %if.then217
  %incdec.ptr218 = getelementptr inbounds nuw i8, ptr %add.ptr187, i64 4
  %59 = load i8, ptr %incdec.ptr218, align 1, !tbaa !21
  %idx.ext230 = zext i8 %59 to i64
  %idx.neg231 = sub nsw i64 0, %idx.ext230
  %add.ptr232 = getelementptr inbounds i8, ptr %add.ptr23, i64 %idx.neg231
  %60 = load i8, ptr %add.ptr232, align 1, !tbaa !21
  %conv233 = zext i8 %60 to i32
  %add234 = add nuw nsw i32 %add224, %conv233
  %cmp235 = icmp samesign ult i32 %add234, %max_no
  br i1 %cmp235, label %if.then237, label %for.inc

if.then237:                                       ; preds = %if.then227
  %incdec.ptr228 = getelementptr inbounds nuw i8, ptr %add.ptr187, i64 5
  %incdec.ptr238 = getelementptr inbounds nuw i8, ptr %add.ptr187, i64 6
  %61 = load i8, ptr %incdec.ptr228, align 1, !tbaa !21
  %idx.ext240 = zext i8 %61 to i64
  %idx.neg241 = sub nsw i64 0, %idx.ext240
  %add.ptr242 = getelementptr inbounds i8, ptr %add.ptr23, i64 %idx.neg241
  %62 = load i8, ptr %add.ptr242, align 1, !tbaa !21
  %conv243 = zext i8 %62 to i32
  %add244 = add nuw nsw i32 %add234, %conv243
  %cmp245 = icmp samesign ult i32 %add244, %max_no
  br i1 %cmp245, label %if.then247, label %for.inc

if.then247:                                       ; preds = %if.then237
  %63 = load i8, ptr %incdec.ptr238, align 1, !tbaa !21
  %idx.ext249 = zext i8 %63 to i64
  %idx.neg250 = sub nsw i64 0, %idx.ext249
  %add.ptr251 = getelementptr inbounds i8, ptr %add.ptr23, i64 %idx.neg250
  %64 = load i8, ptr %add.ptr251, align 1, !tbaa !21
  %conv252 = zext i8 %64 to i32
  %add253 = add nuw nsw i32 %add244, %conv252
  %cmp254 = icmp samesign ult i32 %add253, %max_no
  br i1 %cmp254, label %if.then256, label %for.inc

if.then256:                                       ; preds = %if.then247
  %add.ptr259 = getelementptr inbounds i8, ptr %incdec.ptr238, i64 %idx.ext80
  %65 = load i8, ptr %add.ptr259, align 1, !tbaa !21
  %idx.ext262 = zext i8 %65 to i64
  %idx.neg263 = sub nsw i64 0, %idx.ext262
  %add.ptr264 = getelementptr inbounds i8, ptr %add.ptr23, i64 %idx.neg263
  %66 = load i8, ptr %add.ptr264, align 1, !tbaa !21
  %conv265 = zext i8 %66 to i32
  %add266 = add nuw nsw i32 %add253, %conv265
  %cmp267 = icmp samesign ult i32 %add266, %max_no
  br i1 %cmp267, label %if.then269, label %for.inc

if.then269:                                       ; preds = %if.then256
  %incdec.ptr260 = getelementptr inbounds nuw i8, ptr %add.ptr259, i64 1
  %67 = load i8, ptr %incdec.ptr260, align 1, !tbaa !21
  %idx.ext272 = zext i8 %67 to i64
  %idx.neg273 = sub nsw i64 0, %idx.ext272
  %add.ptr274 = getelementptr inbounds i8, ptr %add.ptr23, i64 %idx.neg273
  %68 = load i8, ptr %add.ptr274, align 1, !tbaa !21
  %conv275 = zext i8 %68 to i32
  %add276 = add nuw nsw i32 %add266, %conv275
  %cmp277 = icmp samesign ult i32 %add276, %max_no
  br i1 %cmp277, label %if.then279, label %for.inc

if.then279:                                       ; preds = %if.then269
  %incdec.ptr270 = getelementptr inbounds nuw i8, ptr %add.ptr259, i64 2
  %69 = load i8, ptr %incdec.ptr270, align 1, !tbaa !21
  %idx.ext282 = zext i8 %69 to i64
  %idx.neg283 = sub nsw i64 0, %idx.ext282
  %add.ptr284 = getelementptr inbounds i8, ptr %add.ptr23, i64 %idx.neg283
  %70 = load i8, ptr %add.ptr284, align 1, !tbaa !21
  %conv285 = zext i8 %70 to i32
  %add286 = add nuw nsw i32 %add276, %conv285
  %cmp287 = icmp samesign ult i32 %add286, %max_no
  br i1 %cmp287, label %if.then289, label %for.inc

if.then289:                                       ; preds = %if.then279
  %incdec.ptr280 = getelementptr inbounds nuw i8, ptr %add.ptr259, i64 3
  %incdec.ptr290 = getelementptr inbounds nuw i8, ptr %add.ptr259, i64 4
  %71 = load i8, ptr %incdec.ptr280, align 1, !tbaa !21
  %idx.ext292 = zext i8 %71 to i64
  %idx.neg293 = sub nsw i64 0, %idx.ext292
  %add.ptr294 = getelementptr inbounds i8, ptr %add.ptr23, i64 %idx.neg293
  %72 = load i8, ptr %add.ptr294, align 1, !tbaa !21
  %conv295 = zext i8 %72 to i32
  %add296 = add nuw nsw i32 %add286, %conv295
  %cmp297 = icmp samesign ult i32 %add296, %max_no
  br i1 %cmp297, label %if.then299, label %for.inc

if.then299:                                       ; preds = %if.then289
  %73 = load i8, ptr %incdec.ptr290, align 1, !tbaa !21
  %idx.ext301 = zext i8 %73 to i64
  %idx.neg302 = sub nsw i64 0, %idx.ext301
  %add.ptr303 = getelementptr inbounds i8, ptr %add.ptr23, i64 %idx.neg302
  %74 = load i8, ptr %add.ptr303, align 1, !tbaa !21
  %conv304 = zext i8 %74 to i32
  %add305 = add nuw nsw i32 %add296, %conv304
  %cmp306 = icmp samesign ult i32 %add305, %max_no
  br i1 %cmp306, label %if.then308, label %for.inc

if.then308:                                       ; preds = %if.then299
  %add.ptr311 = getelementptr inbounds i8, ptr %incdec.ptr290, i64 %idx.ext43
  %75 = load i8, ptr %add.ptr311, align 1, !tbaa !21
  %idx.ext314 = zext i8 %75 to i64
  %idx.neg315 = sub nsw i64 0, %idx.ext314
  %add.ptr316 = getelementptr inbounds i8, ptr %add.ptr23, i64 %idx.neg315
  %76 = load i8, ptr %add.ptr316, align 1, !tbaa !21
  %conv317 = zext i8 %76 to i32
  %add318 = add nuw nsw i32 %add305, %conv317
  %cmp319 = icmp samesign ult i32 %add318, %max_no
  br i1 %cmp319, label %if.then321, label %for.inc

if.then321:                                       ; preds = %if.then308
  %incdec.ptr312 = getelementptr inbounds nuw i8, ptr %add.ptr311, i64 1
  %77 = load i8, ptr %incdec.ptr312, align 1, !tbaa !21
  %idx.ext324 = zext i8 %77 to i64
  %idx.neg325 = sub nsw i64 0, %idx.ext324
  %add.ptr326 = getelementptr inbounds i8, ptr %add.ptr23, i64 %idx.neg325
  %78 = load i8, ptr %add.ptr326, align 1, !tbaa !21
  %conv327 = zext i8 %78 to i32
  %add328 = add nuw nsw i32 %add318, %conv327
  %cmp329 = icmp samesign ult i32 %add328, %max_no
  br i1 %cmp329, label %if.then331, label %for.inc

if.then331:                                       ; preds = %if.then321
  %incdec.ptr322 = getelementptr inbounds nuw i8, ptr %add.ptr311, i64 2
  %79 = load i8, ptr %incdec.ptr322, align 1, !tbaa !21
  %idx.ext333 = zext i8 %79 to i64
  %idx.neg334 = sub nsw i64 0, %idx.ext333
  %add.ptr335 = getelementptr inbounds i8, ptr %add.ptr23, i64 %idx.neg334
  %80 = load i8, ptr %add.ptr335, align 1, !tbaa !21
  %conv336 = zext i8 %80 to i32
  %add337 = add nuw nsw i32 %add328, %conv336
  %cmp338 = icmp samesign ult i32 %add337, %max_no
  br i1 %cmp338, label %if.then340, label %for.inc

if.then340:                                       ; preds = %if.then331
  %mul364.neg745 = add nuw nsw i32 %conv34, %conv27
  %mul373.neg746 = add nuw nsw i32 %mul364.neg745, %conv40
  %mul384747 = add nuw nsw i32 %conv57, %conv50
  %81 = add nuw nsw i32 %mul384747, %conv64
  %82 = add nuw nsw i32 %81, %conv71
  %83 = add nuw nsw i32 %82, %conv77
  %mul618 = shl nuw nsw i32 %conv265, 1
  %mul656 = shl nuw nsw i32 %conv304, 1
  %84 = add nuw nsw i32 %conv87, %conv138
  %85 = add nuw nsw i32 %conv128, %conv180
  %86 = add nuw nsw i32 %84, %conv193
  %reass.add768 = sub nsw i32 %85, %86
  %reass.add769 = add nsw i32 %reass.add768, %conv252
  %reass.mul = mul nsw i32 %reass.add769, 3
  %87 = add nuw nsw i32 %conv50, %conv94
  %88 = add nuw nsw i32 %conv77, %conv122
  %89 = add nuw nsw i32 %87, %conv145
  %90 = add nuw nsw i32 %88, %conv171
  %91 = add nuw nsw i32 %89, %conv203
  %reass.add785 = sub nsw i32 %90, %91
  %reass.add786 = add nsw i32 %reass.add785, %conv243
  %reass.mul787 = shl nsw i32 %reass.add786, 1
  %92 = add nuw nsw i32 %conv27, %conv57
  %93 = add nuw nsw i32 %conv40, %conv71
  %94 = add nuw nsw i32 %92, %conv101
  %95 = add nuw nsw i32 %93, %conv115
  %96 = add nuw nsw i32 %94, %conv151
  %97 = add nuw nsw i32 %95, %conv161
  %98 = add nuw nsw i32 %96, %conv213
  %sub552 = sub nsw i32 %97, %98
  %sub571 = add nsw i32 %sub552, %conv233
  %add587 = add nsw i32 %sub571, %reass.mul787
  %add597 = add nsw i32 %add587, %reass.mul
  %99 = add nuw nsw i32 %mul618, %conv275
  %sub629 = sub nsw i32 %add597, %99
  %add647 = add nsw i32 %sub629, %conv295
  %add657 = add nsw i32 %add647, %mul656
  %sub670 = sub nsw i32 %add657, %conv317
  %add687 = add nsw i32 %sub670, %conv336
  %reass.add775 = sub nsw i32 %conv317, %mul373.neg746
  %reass.add776 = add nsw i32 %reass.add775, %conv327
  %reass.add777 = add nsw i32 %reass.add776, %conv336
  %reass.mul778 = mul nsw i32 %reass.add777, 3
  %100 = sub nsw i32 %conv275, %83
  %101 = add nsw i32 %100, %conv285
  %reass.add789 = add nsw i32 %101, %conv295
  %reass.mul790 = shl nsw i32 %reass.add789, 1
  %102 = add nuw nsw i32 %conv94, %conv87
  %103 = add nuw nsw i32 %102, %conv101
  %104 = add nuw nsw i32 %103, %conv108
  %105 = add nuw nsw i32 %104, %conv115
  %106 = add nuw nsw i32 %105, %conv122
  %107 = add nuw nsw i32 %106, %conv128
  %add573 = sub nsw i32 %conv193, %107
  %add580 = add nsw i32 %add573, %conv203
  %add589 = add nsw i32 %add580, %conv213
  %add599 = add nsw i32 %add589, %conv223
  %add608 = add nsw i32 %add599, %conv233
  %add622 = add nsw i32 %add608, %conv243
  %add650 = add nsw i32 %add622, %conv252
  %add660 = add nsw i32 %add650, %mul618
  %add673 = add nsw i32 %add660, %reass.mul790
  %add681 = add nsw i32 %add673, %mul656
  %add690 = add nsw i32 %add681, %reass.mul778
  %mul691 = mul nsw i32 %add687, %add687
  %mul692 = mul nsw i32 %add690, %add690
  %add693 = add nuw nsw i32 %mul692, %mul691
  %mul694 = mul nuw nsw i32 %add337, %add337
  %div748 = lshr i32 %mul694, 1
  %cmp695 = icmp samesign ugt i32 %add693, %div748
  br i1 %cmp695, label %if.then697, label %for.inc

if.then697:                                       ; preds = %if.then340
  %cmp698 = icmp samesign ult i32 %mul692, %mul691
  %108 = trunc nuw nsw i64 %indvars.iv to i32
  br i1 %cmp698, label %if.then700, label %if.else

if.then700:                                       ; preds = %if.then697
  %conv701 = sitofp i32 %add690 to float
  %109 = tail call i32 @llvm.abs.i32(i32 %add687, i1 true)
  %conv702 = uitofp nneg i32 %109 to float
  %div703 = fdiv float %conv701, %conv702
  %div704.lhs.trunc = trunc nuw nsw i32 %109 to i16
  %div704.rhs.trunc = trunc nsw i32 %add687 to i16
  %div704749 = sdiv i16 %div704.lhs.trunc, %div704.rhs.trunc
  %div704.sext = sext i16 %div704749 to i32
  %cmp705 = fcmp olt float %div703, 0.000000e+00
  %conv707 = fpext float %div703 to double
  %cond.in.v = select i1 %cmp705, double -5.000000e-01, double 5.000000e-01
  %cond.in = fadd double %cond.in.v, %conv707
  %cond = fptosi double %cond.in to i32
  %add713 = add nsw i32 %6, %cond
  %mul714 = mul nsw i32 %add713, %x_size
  %add715 = add nsw i32 %mul714, %108
  %add716 = add nsw i32 %add715, %div704.sext
  %idxprom717 = sext i32 %add716 to i64
  %arrayidx718 = getelementptr inbounds i8, ptr %in, i64 %idxprom717
  %110 = load i8, ptr %arrayidx718, align 1, !tbaa !21
  %idx.ext720 = zext i8 %110 to i64
  %idx.neg721 = sub nsw i64 0, %idx.ext720
  %add.ptr722 = getelementptr inbounds i8, ptr %add.ptr23, i64 %idx.neg721
  %111 = load i8, ptr %add.ptr722, align 1, !tbaa !21
  %conv723 = zext i8 %111 to i32
  %mul724 = fmul float %div703, 2.000000e+00
  %cmp725 = fcmp olt float %mul724, 0.000000e+00
  %conv729 = fpext float %mul724 to double
  %cond738.in.v = select i1 %cmp725, double -5.000000e-01, double 5.000000e-01
  %cond738.in = fadd double %cond738.in.v, %conv729
  %cond738 = fptosi double %cond738.in to i32
  %add739 = add nsw i32 %6, %cond738
  %mul740 = mul nsw i32 %add739, %x_size
  %add741 = add nsw i32 %mul740, %108
  %mul742 = shl nsw i32 %div704.sext, 1
  %add743 = add nsw i32 %add741, %mul742
  %idxprom744 = sext i32 %add743 to i64
  %arrayidx745 = getelementptr inbounds i8, ptr %in, i64 %idxprom744
  %112 = load i8, ptr %arrayidx745, align 1, !tbaa !21
  %idx.ext747 = zext i8 %112 to i64
  %idx.neg748 = sub nsw i64 0, %idx.ext747
  %add.ptr749 = getelementptr inbounds i8, ptr %add.ptr23, i64 %idx.neg748
  %113 = load i8, ptr %add.ptr749, align 1, !tbaa !21
  %conv750 = zext i8 %113 to i32
  %add751 = add nuw nsw i32 %conv750, %conv723
  %mul752 = fmul float %div703, 3.000000e+00
  %cmp753 = fcmp olt float %mul752, 0.000000e+00
  %conv757 = fpext float %mul752 to double
  %cond766.in.v = select i1 %cmp753, double -5.000000e-01, double 5.000000e-01
  %cond766.in = fadd double %cond766.in.v, %conv757
  %cond766 = fptosi double %cond766.in to i32
  %add767 = add nsw i32 %6, %cond766
  %mul768 = mul nsw i32 %add767, %x_size
  %add769 = add nsw i32 %mul768, %108
  %mul770 = mul nsw i32 %div704.sext, 3
  %add771 = add nsw i32 %add769, %mul770
  br label %if.end

if.else:                                          ; preds = %if.then697
  %conv780 = sitofp i32 %add687 to float
  %114 = tail call i32 @llvm.abs.i32(i32 %add690, i1 true)
  %conv781 = uitofp nneg i32 %114 to float
  %div782 = fdiv float %conv780, %conv781
  %div783.lhs.trunc = trunc nuw nsw i32 %114 to i16
  %div783.rhs.trunc = trunc nsw i32 %add690 to i16
  %div783750 = sdiv i16 %div783.lhs.trunc, %div783.rhs.trunc
  %div783.sext = sext i16 %div783750 to i32
  %add784 = add nsw i32 %5, %div783.sext
  %mul785 = mul nsw i32 %add784, %x_size
  %cmp787 = fcmp olt float %div782, 0.000000e+00
  %conv790 = fpext float %div782 to double
  %cond798.in.v = select i1 %cmp787, double -5.000000e-01, double 5.000000e-01
  %cond798.in = fadd double %cond798.in.v, %conv790
  %cond798 = fptosi double %cond798.in to i32
  %add786 = add i32 %108, %cond798
  %add799 = add i32 %add786, %mul785
  %idxprom800 = sext i32 %add799 to i64
  %arrayidx801 = getelementptr inbounds i8, ptr %in, i64 %idxprom800
  %115 = load i8, ptr %arrayidx801, align 1, !tbaa !21
  %idx.ext803 = zext i8 %115 to i64
  %idx.neg804 = sub nsw i64 0, %idx.ext803
  %add.ptr805 = getelementptr inbounds i8, ptr %add.ptr23, i64 %idx.neg804
  %116 = load i8, ptr %add.ptr805, align 1, !tbaa !21
  %conv806 = zext i8 %116 to i32
  %mul807 = shl nsw i32 %div783.sext, 1
  %add808 = add nsw i32 %mul807, %5
  %mul809 = mul nsw i32 %add808, %x_size
  %mul811 = fmul float %div782, 2.000000e+00
  %cmp812 = fcmp olt float %mul811, 0.000000e+00
  %conv816 = fpext float %mul811 to double
  %cond825.in.v = select i1 %cmp812, double -5.000000e-01, double 5.000000e-01
  %cond825.in = fadd double %cond825.in.v, %conv816
  %cond825 = fptosi double %cond825.in to i32
  %add810 = add i32 %108, %cond825
  %add826 = add i32 %add810, %mul809
  %idxprom827 = sext i32 %add826 to i64
  %arrayidx828 = getelementptr inbounds i8, ptr %in, i64 %idxprom827
  %117 = load i8, ptr %arrayidx828, align 1, !tbaa !21
  %idx.ext830 = zext i8 %117 to i64
  %idx.neg831 = sub nsw i64 0, %idx.ext830
  %add.ptr832 = getelementptr inbounds i8, ptr %add.ptr23, i64 %idx.neg831
  %118 = load i8, ptr %add.ptr832, align 1, !tbaa !21
  %conv833 = zext i8 %118 to i32
  %add834 = add nuw nsw i32 %conv833, %conv806
  %mul835 = mul nsw i32 %div783.sext, 3
  %add836 = add nsw i32 %mul835, %5
  %mul837 = mul nsw i32 %add836, %x_size
  %mul839 = fmul float %div782, 3.000000e+00
  %cmp840 = fcmp olt float %mul839, 0.000000e+00
  %conv844 = fpext float %mul839 to double
  %cond853.in.v = select i1 %cmp840, double -5.000000e-01, double 5.000000e-01
  %cond853.in = fadd double %cond853.in.v, %conv844
  %cond853 = fptosi double %cond853.in to i32
  %add838 = add i32 %108, %cond853
  %add854 = add i32 %add838, %mul837
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then700
  %add854.sink = phi i32 [ %add854, %if.else ], [ %add771, %if.then700 ]
  %add834.sink = phi i32 [ %add834, %if.else ], [ %add751, %if.then700 ]
  %idxprom855 = sext i32 %add854.sink to i64
  %arrayidx856 = getelementptr inbounds i8, ptr %in, i64 %idxprom855
  %119 = load i8, ptr %arrayidx856, align 1, !tbaa !21
  %idx.ext858 = zext i8 %119 to i64
  %idx.neg859 = sub nsw i64 0, %idx.ext858
  %add.ptr860 = getelementptr inbounds i8, ptr %add.ptr23, i64 %idx.neg859
  %120 = load i8, ptr %add.ptr860, align 1, !tbaa !21
  %conv861 = zext i8 %120 to i32
  %add862 = add nuw nsw i32 %add834.sink, %conv861
  %cmp863 = icmp samesign ugt i32 %add862, 290
  br i1 %cmp863, label %if.then865, label %for.inc

if.then865:                                       ; preds = %if.end
  %sub866 = sub nsw i32 %max_no, %add337
  %arrayidx870 = getelementptr inbounds i32, ptr %r, i64 %7
  store i32 %sub866, ptr %arrayidx870, align 4, !tbaa !16
  %mul871 = mul nsw i32 %add687, 51
  %div872 = sdiv i32 %mul871, %add337
  %arrayidx876 = getelementptr inbounds i32, ptr %call, i64 %7
  store i32 %div872, ptr %arrayidx876, align 4, !tbaa !16
  %mul877 = mul nsw i32 %add690, 51
  %div878 = sdiv i32 %mul877, %add337
  %arrayidx882 = getelementptr inbounds i32, ptr %call8, i64 %7
  store i32 %div878, ptr %arrayidx882, align 4, !tbaa !16
  br label %for.inc

for.inc:                                          ; preds = %for.body14, %if.then165, %if.then184, %if.then207, %if.then227, %if.then247, %if.then269, %if.then289, %if.then308, %if.then331, %if.end, %if.then865, %if.then340, %if.then321, %if.then299, %if.then279, %if.then256, %if.then237, %if.then217, %if.then197, %if.then175, %if.then
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond10, !llvm.loop !61

for.inc904:                                       ; preds = %for.cond10
  %indvars.iv.next798 = add nuw nsw i64 %indvars.iv797, 1
  br label %for.cond, !llvm.loop !62

for.cond907:                                      ; preds = %for.cond912, %for.cond907.preheader
  %indvars.iv818 = phi i64 [ 5, %for.cond907.preheader ], [ %indvars.iv.next819, %for.cond912 ]
  %n.0 = phi i32 [ 0, %for.cond907.preheader ], [ %n.1, %for.cond912 ]
  %exitcond834.not = icmp eq i64 %indvars.iv818, %wide.trip.count804
  br i1 %exitcond834.not, label %for.end1383, label %for.cond912.preheader

for.cond912.preheader:                            ; preds = %for.cond907
  %121 = mul nsw i64 %indvars.iv818, %0
  %122 = add nsw i64 %indvars.iv818, -3
  %123 = mul nsw i64 %122, %0
  %124 = add nsw i64 %indvars.iv818, -2
  %125 = mul nsw i64 %124, %0
  %126 = add nsw i64 %indvars.iv818, -1
  %127 = mul nsw i64 %126, %0
  %indvars.iv.next819 = add nuw nsw i64 %indvars.iv818, 1
  %128 = mul nsw i64 %indvars.iv.next819, %0
  %129 = add nuw nsw i64 %indvars.iv818, 2
  %130 = mul nsw i64 %129, %0
  %131 = add nuw nsw i64 %indvars.iv818, 3
  %132 = mul nsw i64 %131, %0
  %invariant.gep = getelementptr i32, ptr %r, i64 %123
  %invariant.gep837 = getelementptr i32, ptr %r, i64 %125
  %invariant.gep839 = getelementptr i32, ptr %r, i64 %127
  %invariant.gep841 = getelementptr i32, ptr %r, i64 %128
  %invariant.gep843 = getelementptr i32, ptr %r, i64 %130
  %invariant.gep845 = getelementptr i32, ptr %r, i64 %132
  %133 = trunc nuw nsw i64 %indvars.iv818 to i32
  br label %for.cond912

for.cond912:                                      ; preds = %for.cond912.preheader, %for.inc1378
  %indvars.iv806 = phi i64 [ 5, %for.cond912.preheader ], [ %indvars.iv.next807, %for.inc1378 ]
  %n.1 = phi i32 [ %n.0, %for.cond912.preheader ], [ %n.2, %for.inc1378 ]
  %exitcond817.not = icmp eq i64 %indvars.iv806, %wide.trip.count816
  br i1 %exitcond817.not, label %for.cond907, label %for.body916, !llvm.loop !63

for.body916:                                      ; preds = %for.cond912
  %134 = add nsw i64 %indvars.iv806, %121
  %arrayidx920 = getelementptr inbounds i32, ptr %r, i64 %134
  %135 = load i32, ptr %arrayidx920, align 4, !tbaa !16
  %cmp921 = icmp sgt i32 %135, 0
  br i1 %cmp921, label %if.then923, label %for.inc1378

if.then923:                                       ; preds = %for.body916
  %gep = getelementptr i32, ptr %invariant.gep, i64 %indvars.iv806
  %arrayidx929 = getelementptr i8, ptr %gep, i64 -12
  %136 = load i32, ptr %arrayidx929, align 4, !tbaa !16
  %cmp930 = icmp sgt i32 %135, %136
  br i1 %cmp930, label %land.lhs.true, label %for.inc1378

land.lhs.true:                                    ; preds = %if.then923
  %arrayidx937 = getelementptr i8, ptr %gep, i64 -8
  %137 = load i32, ptr %arrayidx937, align 4, !tbaa !16
  %cmp938 = icmp sgt i32 %135, %137
  br i1 %cmp938, label %land.lhs.true940, label %for.inc1378

land.lhs.true940:                                 ; preds = %land.lhs.true
  %arrayidx946 = getelementptr i8, ptr %gep, i64 -4
  %138 = load i32, ptr %arrayidx946, align 4, !tbaa !16
  %cmp947 = icmp sgt i32 %135, %138
  br i1 %cmp947, label %land.lhs.true949, label %for.inc1378

land.lhs.true949:                                 ; preds = %land.lhs.true940
  %139 = load i32, ptr %gep, align 4, !tbaa !16
  %cmp955 = icmp sgt i32 %135, %139
  br i1 %cmp955, label %land.lhs.true957, label %for.inc1378

land.lhs.true957:                                 ; preds = %land.lhs.true949
  %arrayidx963 = getelementptr i8, ptr %gep, i64 4
  %140 = load i32, ptr %arrayidx963, align 4, !tbaa !16
  %cmp964 = icmp sgt i32 %135, %140
  br i1 %cmp964, label %land.lhs.true966, label %for.inc1378

land.lhs.true966:                                 ; preds = %land.lhs.true957
  %arrayidx972 = getelementptr i8, ptr %gep, i64 8
  %141 = load i32, ptr %arrayidx972, align 4, !tbaa !16
  %cmp973 = icmp sgt i32 %135, %141
  br i1 %cmp973, label %land.lhs.true975, label %for.inc1378

land.lhs.true975:                                 ; preds = %land.lhs.true966
  %arrayidx981 = getelementptr i8, ptr %gep, i64 12
  %142 = load i32, ptr %arrayidx981, align 4, !tbaa !16
  %cmp982 = icmp sgt i32 %135, %142
  br i1 %cmp982, label %land.lhs.true984, label %for.inc1378

land.lhs.true984:                                 ; preds = %land.lhs.true975
  %gep838 = getelementptr i32, ptr %invariant.gep837, i64 %indvars.iv806
  %arrayidx990 = getelementptr i8, ptr %gep838, i64 -12
  %143 = load i32, ptr %arrayidx990, align 4, !tbaa !16
  %cmp991 = icmp sgt i32 %135, %143
  br i1 %cmp991, label %land.lhs.true993, label %for.inc1378

land.lhs.true993:                                 ; preds = %land.lhs.true984
  %arrayidx999 = getelementptr i8, ptr %gep838, i64 -8
  %144 = load i32, ptr %arrayidx999, align 4, !tbaa !16
  %cmp1000 = icmp sgt i32 %135, %144
  br i1 %cmp1000, label %land.lhs.true1002, label %for.inc1378

land.lhs.true1002:                                ; preds = %land.lhs.true993
  %arrayidx1008 = getelementptr i8, ptr %gep838, i64 -4
  %145 = load i32, ptr %arrayidx1008, align 4, !tbaa !16
  %cmp1009 = icmp sgt i32 %135, %145
  br i1 %cmp1009, label %land.lhs.true1011, label %for.inc1378

land.lhs.true1011:                                ; preds = %land.lhs.true1002
  %146 = load i32, ptr %gep838, align 4, !tbaa !16
  %cmp1017 = icmp sgt i32 %135, %146
  br i1 %cmp1017, label %land.lhs.true1019, label %for.inc1378

land.lhs.true1019:                                ; preds = %land.lhs.true1011
  %arrayidx1025 = getelementptr i8, ptr %gep838, i64 4
  %147 = load i32, ptr %arrayidx1025, align 4, !tbaa !16
  %cmp1026 = icmp sgt i32 %135, %147
  br i1 %cmp1026, label %land.lhs.true1028, label %for.inc1378

land.lhs.true1028:                                ; preds = %land.lhs.true1019
  %arrayidx1034 = getelementptr i8, ptr %gep838, i64 8
  %148 = load i32, ptr %arrayidx1034, align 4, !tbaa !16
  %cmp1035 = icmp sgt i32 %135, %148
  br i1 %cmp1035, label %land.lhs.true1037, label %for.inc1378

land.lhs.true1037:                                ; preds = %land.lhs.true1028
  %arrayidx1043 = getelementptr i8, ptr %gep838, i64 12
  %149 = load i32, ptr %arrayidx1043, align 4, !tbaa !16
  %cmp1044 = icmp sgt i32 %135, %149
  br i1 %cmp1044, label %land.lhs.true1046, label %for.inc1378

land.lhs.true1046:                                ; preds = %land.lhs.true1037
  %gep840 = getelementptr i32, ptr %invariant.gep839, i64 %indvars.iv806
  %arrayidx1052 = getelementptr i8, ptr %gep840, i64 -12
  %150 = load i32, ptr %arrayidx1052, align 4, !tbaa !16
  %cmp1053 = icmp sgt i32 %135, %150
  br i1 %cmp1053, label %land.lhs.true1055, label %for.inc1378

land.lhs.true1055:                                ; preds = %land.lhs.true1046
  %arrayidx1061 = getelementptr i8, ptr %gep840, i64 -8
  %151 = load i32, ptr %arrayidx1061, align 4, !tbaa !16
  %cmp1062 = icmp sgt i32 %135, %151
  br i1 %cmp1062, label %land.lhs.true1064, label %for.inc1378

land.lhs.true1064:                                ; preds = %land.lhs.true1055
  %arrayidx1070 = getelementptr i8, ptr %gep840, i64 -4
  %152 = load i32, ptr %arrayidx1070, align 4, !tbaa !16
  %cmp1071 = icmp sgt i32 %135, %152
  br i1 %cmp1071, label %land.lhs.true1073, label %for.inc1378

land.lhs.true1073:                                ; preds = %land.lhs.true1064
  %153 = load i32, ptr %gep840, align 4, !tbaa !16
  %cmp1079 = icmp sgt i32 %135, %153
  br i1 %cmp1079, label %land.lhs.true1081, label %for.inc1378

land.lhs.true1081:                                ; preds = %land.lhs.true1073
  %arrayidx1087 = getelementptr i8, ptr %gep840, i64 4
  %154 = load i32, ptr %arrayidx1087, align 4, !tbaa !16
  %cmp1088 = icmp sgt i32 %135, %154
  br i1 %cmp1088, label %land.lhs.true1090, label %for.inc1378

land.lhs.true1090:                                ; preds = %land.lhs.true1081
  %arrayidx1096 = getelementptr i8, ptr %gep840, i64 8
  %155 = load i32, ptr %arrayidx1096, align 4, !tbaa !16
  %cmp1097 = icmp sgt i32 %135, %155
  br i1 %cmp1097, label %land.lhs.true1099, label %for.inc1378

land.lhs.true1099:                                ; preds = %land.lhs.true1090
  %arrayidx1105 = getelementptr i8, ptr %gep840, i64 12
  %156 = load i32, ptr %arrayidx1105, align 4, !tbaa !16
  %cmp1106 = icmp sgt i32 %135, %156
  br i1 %cmp1106, label %land.lhs.true1108, label %for.inc1378

land.lhs.true1108:                                ; preds = %land.lhs.true1099
  %arrayidx1113 = getelementptr i8, ptr %arrayidx920, i64 -12
  %157 = load i32, ptr %arrayidx1113, align 4, !tbaa !16
  %cmp1114 = icmp sgt i32 %135, %157
  br i1 %cmp1114, label %land.lhs.true1116, label %for.inc1378

land.lhs.true1116:                                ; preds = %land.lhs.true1108
  %arrayidx1121 = getelementptr i8, ptr %arrayidx920, i64 -8
  %158 = load i32, ptr %arrayidx1121, align 4, !tbaa !16
  %cmp1122 = icmp sgt i32 %135, %158
  br i1 %cmp1122, label %land.lhs.true1124, label %for.inc1378

land.lhs.true1124:                                ; preds = %land.lhs.true1116
  %arrayidx1129 = getelementptr i8, ptr %arrayidx920, i64 -4
  %159 = load i32, ptr %arrayidx1129, align 4, !tbaa !16
  %cmp1130 = icmp sgt i32 %135, %159
  br i1 %cmp1130, label %land.lhs.true1132, label %for.inc1378

land.lhs.true1132:                                ; preds = %land.lhs.true1124
  %arrayidx1137 = getelementptr i8, ptr %arrayidx920, i64 4
  %160 = load i32, ptr %arrayidx1137, align 4, !tbaa !16
  %cmp1138.not = icmp slt i32 %135, %160
  br i1 %cmp1138.not, label %for.inc1378, label %land.lhs.true1140

land.lhs.true1140:                                ; preds = %land.lhs.true1132
  %arrayidx1145 = getelementptr i8, ptr %arrayidx920, i64 8
  %161 = load i32, ptr %arrayidx1145, align 4, !tbaa !16
  %cmp1146.not = icmp slt i32 %135, %161
  br i1 %cmp1146.not, label %for.inc1378, label %land.lhs.true1148

land.lhs.true1148:                                ; preds = %land.lhs.true1140
  %arrayidx1153 = getelementptr i8, ptr %arrayidx920, i64 12
  %162 = load i32, ptr %arrayidx1153, align 4, !tbaa !16
  %cmp1154.not = icmp slt i32 %135, %162
  br i1 %cmp1154.not, label %for.inc1378, label %land.lhs.true1156

land.lhs.true1156:                                ; preds = %land.lhs.true1148
  %gep842 = getelementptr i32, ptr %invariant.gep841, i64 %indvars.iv806
  %arrayidx1162 = getelementptr i8, ptr %gep842, i64 -12
  %163 = load i32, ptr %arrayidx1162, align 4, !tbaa !16
  %cmp1163.not = icmp slt i32 %135, %163
  br i1 %cmp1163.not, label %for.inc1378, label %land.lhs.true1165

land.lhs.true1165:                                ; preds = %land.lhs.true1156
  %arrayidx1171 = getelementptr i8, ptr %gep842, i64 -8
  %164 = load i32, ptr %arrayidx1171, align 4, !tbaa !16
  %cmp1172.not = icmp slt i32 %135, %164
  br i1 %cmp1172.not, label %for.inc1378, label %land.lhs.true1174

land.lhs.true1174:                                ; preds = %land.lhs.true1165
  %arrayidx1180 = getelementptr i8, ptr %gep842, i64 -4
  %165 = load i32, ptr %arrayidx1180, align 4, !tbaa !16
  %cmp1181.not = icmp slt i32 %135, %165
  br i1 %cmp1181.not, label %for.inc1378, label %land.lhs.true1183

land.lhs.true1183:                                ; preds = %land.lhs.true1174
  %166 = load i32, ptr %gep842, align 4, !tbaa !16
  %cmp1189.not = icmp slt i32 %135, %166
  br i1 %cmp1189.not, label %for.inc1378, label %land.lhs.true1191

land.lhs.true1191:                                ; preds = %land.lhs.true1183
  %arrayidx1197 = getelementptr i8, ptr %gep842, i64 4
  %167 = load i32, ptr %arrayidx1197, align 4, !tbaa !16
  %cmp1198.not = icmp slt i32 %135, %167
  br i1 %cmp1198.not, label %for.inc1378, label %land.lhs.true1200

land.lhs.true1200:                                ; preds = %land.lhs.true1191
  %arrayidx1206 = getelementptr i8, ptr %gep842, i64 8
  %168 = load i32, ptr %arrayidx1206, align 4, !tbaa !16
  %cmp1207.not = icmp slt i32 %135, %168
  br i1 %cmp1207.not, label %for.inc1378, label %land.lhs.true1209

land.lhs.true1209:                                ; preds = %land.lhs.true1200
  %arrayidx1215 = getelementptr i8, ptr %gep842, i64 12
  %169 = load i32, ptr %arrayidx1215, align 4, !tbaa !16
  %cmp1216.not = icmp slt i32 %135, %169
  br i1 %cmp1216.not, label %for.inc1378, label %land.lhs.true1218

land.lhs.true1218:                                ; preds = %land.lhs.true1209
  %gep844 = getelementptr i32, ptr %invariant.gep843, i64 %indvars.iv806
  %arrayidx1224 = getelementptr i8, ptr %gep844, i64 -12
  %170 = load i32, ptr %arrayidx1224, align 4, !tbaa !16
  %cmp1225.not = icmp slt i32 %135, %170
  br i1 %cmp1225.not, label %for.inc1378, label %land.lhs.true1227

land.lhs.true1227:                                ; preds = %land.lhs.true1218
  %arrayidx1233 = getelementptr i8, ptr %gep844, i64 -8
  %171 = load i32, ptr %arrayidx1233, align 4, !tbaa !16
  %cmp1234.not = icmp slt i32 %135, %171
  br i1 %cmp1234.not, label %for.inc1378, label %land.lhs.true1236

land.lhs.true1236:                                ; preds = %land.lhs.true1227
  %arrayidx1242 = getelementptr i8, ptr %gep844, i64 -4
  %172 = load i32, ptr %arrayidx1242, align 4, !tbaa !16
  %cmp1243.not = icmp slt i32 %135, %172
  br i1 %cmp1243.not, label %for.inc1378, label %land.lhs.true1245

land.lhs.true1245:                                ; preds = %land.lhs.true1236
  %173 = load i32, ptr %gep844, align 4, !tbaa !16
  %cmp1251.not = icmp slt i32 %135, %173
  br i1 %cmp1251.not, label %for.inc1378, label %land.lhs.true1253

land.lhs.true1253:                                ; preds = %land.lhs.true1245
  %arrayidx1259 = getelementptr i8, ptr %gep844, i64 4
  %174 = load i32, ptr %arrayidx1259, align 4, !tbaa !16
  %cmp1260.not = icmp slt i32 %135, %174
  br i1 %cmp1260.not, label %for.inc1378, label %land.lhs.true1262

land.lhs.true1262:                                ; preds = %land.lhs.true1253
  %arrayidx1268 = getelementptr i8, ptr %gep844, i64 8
  %175 = load i32, ptr %arrayidx1268, align 4, !tbaa !16
  %cmp1269.not = icmp slt i32 %135, %175
  br i1 %cmp1269.not, label %for.inc1378, label %land.lhs.true1271

land.lhs.true1271:                                ; preds = %land.lhs.true1262
  %arrayidx1277 = getelementptr i8, ptr %gep844, i64 12
  %176 = load i32, ptr %arrayidx1277, align 4, !tbaa !16
  %cmp1278.not = icmp slt i32 %135, %176
  br i1 %cmp1278.not, label %for.inc1378, label %land.lhs.true1280

land.lhs.true1280:                                ; preds = %land.lhs.true1271
  %gep846 = getelementptr i32, ptr %invariant.gep845, i64 %indvars.iv806
  %arrayidx1286 = getelementptr i8, ptr %gep846, i64 -12
  %177 = load i32, ptr %arrayidx1286, align 4, !tbaa !16
  %cmp1287.not = icmp slt i32 %135, %177
  br i1 %cmp1287.not, label %for.inc1378, label %land.lhs.true1289

land.lhs.true1289:                                ; preds = %land.lhs.true1280
  %arrayidx1295 = getelementptr i8, ptr %gep846, i64 -8
  %178 = load i32, ptr %arrayidx1295, align 4, !tbaa !16
  %cmp1296.not = icmp slt i32 %135, %178
  br i1 %cmp1296.not, label %for.inc1378, label %land.lhs.true1298

land.lhs.true1298:                                ; preds = %land.lhs.true1289
  %arrayidx1304 = getelementptr i8, ptr %gep846, i64 -4
  %179 = load i32, ptr %arrayidx1304, align 4, !tbaa !16
  %cmp1305.not = icmp slt i32 %135, %179
  br i1 %cmp1305.not, label %for.inc1378, label %land.lhs.true1307

land.lhs.true1307:                                ; preds = %land.lhs.true1298
  %180 = load i32, ptr %gep846, align 4, !tbaa !16
  %cmp1313.not = icmp slt i32 %135, %180
  br i1 %cmp1313.not, label %for.inc1378, label %land.lhs.true1315

land.lhs.true1315:                                ; preds = %land.lhs.true1307
  %arrayidx1321 = getelementptr i8, ptr %gep846, i64 4
  %181 = load i32, ptr %arrayidx1321, align 4, !tbaa !16
  %cmp1322.not = icmp slt i32 %135, %181
  br i1 %cmp1322.not, label %for.inc1378, label %land.lhs.true1324

land.lhs.true1324:                                ; preds = %land.lhs.true1315
  %arrayidx1330 = getelementptr i8, ptr %gep846, i64 8
  %182 = load i32, ptr %arrayidx1330, align 4, !tbaa !16
  %cmp1331.not = icmp slt i32 %135, %182
  br i1 %cmp1331.not, label %for.inc1378, label %land.lhs.true1333

land.lhs.true1333:                                ; preds = %land.lhs.true1324
  %arrayidx1339 = getelementptr i8, ptr %gep846, i64 12
  %183 = load i32, ptr %arrayidx1339, align 4, !tbaa !16
  %cmp1340.not = icmp slt i32 %135, %183
  br i1 %cmp1340.not, label %for.inc1378, label %if.then1342

if.then1342:                                      ; preds = %land.lhs.true1333
  %idxprom1343 = sext i32 %n.1 to i64
  %arrayidx1344 = getelementptr inbounds %struct.anon, ptr %corner_list, i64 %idxprom1343
  %info = getelementptr inbounds nuw i8, ptr %arrayidx1344, i64 8
  store i32 0, ptr %info, align 4, !tbaa !56
  %184 = trunc nuw nsw i64 %indvars.iv806 to i32
  store i32 %184, ptr %arrayidx1344, align 4, !tbaa !59
  %y1350 = getelementptr inbounds nuw i8, ptr %arrayidx1344, i64 4
  store i32 %133, ptr %y1350, align 4, !tbaa !58
  %arrayidx1354 = getelementptr inbounds i32, ptr %call, i64 %134
  %185 = load i32, ptr %arrayidx1354, align 4, !tbaa !16
  %dx = getelementptr inbounds nuw i8, ptr %arrayidx1344, i64 12
  store i32 %185, ptr %dx, align 4, !tbaa !64
  %arrayidx1360 = getelementptr inbounds i32, ptr %call8, i64 %134
  %186 = load i32, ptr %arrayidx1360, align 4, !tbaa !16
  %dy = getelementptr inbounds nuw i8, ptr %arrayidx1344, i64 16
  store i32 %186, ptr %dy, align 4, !tbaa !65
  %arrayidx1366 = getelementptr inbounds i8, ptr %in, i64 %134
  %187 = load i8, ptr %arrayidx1366, align 1, !tbaa !21
  %conv1367 = zext i8 %187 to i32
  %I = getelementptr inbounds nuw i8, ptr %arrayidx1344, i64 20
  store i32 %conv1367, ptr %I, align 4, !tbaa !66
  %inc1370 = add nsw i32 %n.1, 1
  %cmp1371 = icmp eq i32 %inc1370, 15000
  br i1 %cmp1371, label %if.then1373, label %for.inc1378

if.then1373:                                      ; preds = %if.then1342
  %188 = load ptr, ptr @stderr, align 8, !tbaa !5
  %189 = tail call i64 @fwrite(ptr nonnull @.str.29, i64 18, i64 1, ptr %188) #23
  tail call void @exit(i32 noundef 1) #27
  unreachable

for.inc1378:                                      ; preds = %for.body916, %if.then1342, %land.lhs.true1333, %land.lhs.true1324, %land.lhs.true1315, %land.lhs.true1307, %land.lhs.true1298, %land.lhs.true1289, %land.lhs.true1280, %land.lhs.true1271, %land.lhs.true1262, %land.lhs.true1253, %land.lhs.true1245, %land.lhs.true1236, %land.lhs.true1227, %land.lhs.true1218, %land.lhs.true1209, %land.lhs.true1200, %land.lhs.true1191, %land.lhs.true1183, %land.lhs.true1174, %land.lhs.true1165, %land.lhs.true1156, %land.lhs.true1148, %land.lhs.true1140, %land.lhs.true1132, %land.lhs.true1124, %land.lhs.true1116, %land.lhs.true1108, %land.lhs.true1099, %land.lhs.true1090, %land.lhs.true1081, %land.lhs.true1073, %land.lhs.true1064, %land.lhs.true1055, %land.lhs.true1046, %land.lhs.true1037, %land.lhs.true1028, %land.lhs.true1019, %land.lhs.true1011, %land.lhs.true1002, %land.lhs.true993, %land.lhs.true984, %land.lhs.true975, %land.lhs.true966, %land.lhs.true957, %land.lhs.true949, %land.lhs.true940, %land.lhs.true, %if.then923
  %n.2 = phi i32 [ %inc1370, %if.then1342 ], [ %n.1, %land.lhs.true1333 ], [ %n.1, %land.lhs.true1324 ], [ %n.1, %land.lhs.true1315 ], [ %n.1, %land.lhs.true1307 ], [ %n.1, %land.lhs.true1298 ], [ %n.1, %land.lhs.true1289 ], [ %n.1, %land.lhs.true1280 ], [ %n.1, %land.lhs.true1271 ], [ %n.1, %land.lhs.true1262 ], [ %n.1, %land.lhs.true1253 ], [ %n.1, %land.lhs.true1245 ], [ %n.1, %land.lhs.true1236 ], [ %n.1, %land.lhs.true1227 ], [ %n.1, %land.lhs.true1218 ], [ %n.1, %land.lhs.true1209 ], [ %n.1, %land.lhs.true1200 ], [ %n.1, %land.lhs.true1191 ], [ %n.1, %land.lhs.true1183 ], [ %n.1, %land.lhs.true1174 ], [ %n.1, %land.lhs.true1165 ], [ %n.1, %land.lhs.true1156 ], [ %n.1, %land.lhs.true1148 ], [ %n.1, %land.lhs.true1140 ], [ %n.1, %land.lhs.true1132 ], [ %n.1, %land.lhs.true1124 ], [ %n.1, %land.lhs.true1116 ], [ %n.1, %land.lhs.true1108 ], [ %n.1, %land.lhs.true1099 ], [ %n.1, %land.lhs.true1090 ], [ %n.1, %land.lhs.true1081 ], [ %n.1, %land.lhs.true1073 ], [ %n.1, %land.lhs.true1064 ], [ %n.1, %land.lhs.true1055 ], [ %n.1, %land.lhs.true1046 ], [ %n.1, %land.lhs.true1037 ], [ %n.1, %land.lhs.true1028 ], [ %n.1, %land.lhs.true1019 ], [ %n.1, %land.lhs.true1011 ], [ %n.1, %land.lhs.true1002 ], [ %n.1, %land.lhs.true993 ], [ %n.1, %land.lhs.true984 ], [ %n.1, %land.lhs.true975 ], [ %n.1, %land.lhs.true966 ], [ %n.1, %land.lhs.true957 ], [ %n.1, %land.lhs.true949 ], [ %n.1, %land.lhs.true940 ], [ %n.1, %land.lhs.true ], [ %n.1, %if.then923 ], [ %n.1, %for.body916 ]
  %indvars.iv.next807 = add nuw nsw i64 %indvars.iv806, 1
  br label %for.cond912, !llvm.loop !67

for.end1383:                                      ; preds = %for.cond907
  %idxprom1384 = sext i32 %n.0 to i64
  %info1386 = getelementptr inbounds %struct.anon, ptr %corner_list, i64 %idxprom1384, i32 2
  store i32 7, ptr %info1386, align 4, !tbaa !56
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
  %sub4 = add i32 %x_size, -7
  %sub35 = add nsw i32 %x_size, -3
  %idx.ext36 = sext i32 %sub35 to i64
  %sub72 = add nsw i32 %x_size, -5
  %idx.ext73 = sext i32 %sub72 to i64
  %sub123 = add nsw i32 %x_size, -6
  %idx.ext124 = sext i32 %sub123 to i64
  %smax = tail call i32 @llvm.smax.i32(i32 %sub4, i32 7)
  %0 = sext i32 %x_size to i64
  %1 = tail call i32 @llvm.smax.i32(i32 %y_size, i32 14)
  %smax722 = add nsw i32 %1, -7
  %wide.trip.count723 = zext nneg i32 %smax722 to i64
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond

for.cond:                                         ; preds = %for.inc357, %entry
  %indvars.iv716 = phi i64 [ %indvars.iv.next717, %for.inc357 ], [ 7, %entry ]
  %exitcond724.not = icmp eq i64 %indvars.iv716, %wide.trip.count723
  br i1 %exitcond724.not, label %for.cond360.preheader, label %for.cond3.preheader

for.cond3.preheader:                              ; preds = %for.cond
  %2 = add nsw i64 %indvars.iv716, -3
  %3 = mul nsw i64 %2, %0
  %add.ptr = getelementptr inbounds i8, ptr %in, i64 %3
  %4 = mul nsw i64 %indvars.iv716, %0
  br label %for.cond3

for.cond360.preheader:                            ; preds = %for.cond
  %wide.trip.count755 = zext nneg i32 %smax to i64
  br label %for.cond360

for.cond3:                                        ; preds = %for.cond3.preheader, %for.inc
  %indvars.iv = phi i64 [ 7, %for.cond3.preheader ], [ %indvars.iv.next, %for.inc ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.inc357, label %for.body7

for.body7:                                        ; preds = %for.cond3
  %add.ptr11 = getelementptr inbounds nuw i8, ptr %add.ptr, i64 %indvars.iv
  %add.ptr12 = getelementptr inbounds i8, ptr %add.ptr11, i64 -1
  %5 = add nsw i64 %indvars.iv, %4
  %arrayidx = getelementptr inbounds i8, ptr %in, i64 %5
  %6 = load i8, ptr %arrayidx, align 1, !tbaa !21
  %idx.ext15 = zext i8 %6 to i64
  %add.ptr16 = getelementptr inbounds nuw i8, ptr %bp, i64 %idx.ext15
  %7 = load i8, ptr %add.ptr12, align 1, !tbaa !21
  %idx.ext18 = zext i8 %7 to i64
  %idx.neg = sub nsw i64 0, %idx.ext18
  %add.ptr19 = getelementptr inbounds i8, ptr %add.ptr16, i64 %idx.neg
  %8 = load i8, ptr %add.ptr19, align 1, !tbaa !21
  %conv20 = zext i8 %8 to i32
  %add21 = add nuw nsw i32 %conv20, 100
  %incdec.ptr22 = getelementptr inbounds nuw i8, ptr %add.ptr11, i64 1
  %9 = load i8, ptr %add.ptr11, align 1, !tbaa !21
  %idx.ext24 = zext i8 %9 to i64
  %idx.neg25 = sub nsw i64 0, %idx.ext24
  %add.ptr26 = getelementptr inbounds i8, ptr %add.ptr16, i64 %idx.neg25
  %10 = load i8, ptr %add.ptr26, align 1, !tbaa !21
  %conv27 = zext i8 %10 to i32
  %add28 = add nuw nsw i32 %add21, %conv27
  %11 = load i8, ptr %incdec.ptr22, align 1, !tbaa !21
  %idx.ext30 = zext i8 %11 to i64
  %idx.neg31 = sub nsw i64 0, %idx.ext30
  %add.ptr32 = getelementptr inbounds i8, ptr %add.ptr16, i64 %idx.neg31
  %12 = load i8, ptr %add.ptr32, align 1, !tbaa !21
  %conv33 = zext i8 %12 to i32
  %add34 = add nuw nsw i32 %add28, %conv33
  %add.ptr37 = getelementptr inbounds i8, ptr %incdec.ptr22, i64 %idx.ext36
  %incdec.ptr38 = getelementptr inbounds nuw i8, ptr %add.ptr37, i64 1
  %13 = load i8, ptr %add.ptr37, align 1, !tbaa !21
  %idx.ext40 = zext i8 %13 to i64
  %idx.neg41 = sub nsw i64 0, %idx.ext40
  %add.ptr42 = getelementptr inbounds i8, ptr %add.ptr16, i64 %idx.neg41
  %14 = load i8, ptr %add.ptr42, align 1, !tbaa !21
  %conv43 = zext i8 %14 to i32
  %add44 = add nuw nsw i32 %add34, %conv43
  %incdec.ptr45 = getelementptr inbounds nuw i8, ptr %add.ptr37, i64 2
  %15 = load i8, ptr %incdec.ptr38, align 1, !tbaa !21
  %idx.ext47 = zext i8 %15 to i64
  %idx.neg48 = sub nsw i64 0, %idx.ext47
  %add.ptr49 = getelementptr inbounds i8, ptr %add.ptr16, i64 %idx.neg48
  %16 = load i8, ptr %add.ptr49, align 1, !tbaa !21
  %conv50 = zext i8 %16 to i32
  %add51 = add nuw nsw i32 %add44, %conv50
  %incdec.ptr52 = getelementptr inbounds nuw i8, ptr %add.ptr37, i64 3
  %17 = load i8, ptr %incdec.ptr45, align 1, !tbaa !21
  %idx.ext54 = zext i8 %17 to i64
  %idx.neg55 = sub nsw i64 0, %idx.ext54
  %add.ptr56 = getelementptr inbounds i8, ptr %add.ptr16, i64 %idx.neg55
  %18 = load i8, ptr %add.ptr56, align 1, !tbaa !21
  %conv57 = zext i8 %18 to i32
  %add58 = add nuw nsw i32 %add51, %conv57
  %incdec.ptr59 = getelementptr inbounds nuw i8, ptr %add.ptr37, i64 4
  %19 = load i8, ptr %incdec.ptr52, align 1, !tbaa !21
  %idx.ext61 = zext i8 %19 to i64
  %idx.neg62 = sub nsw i64 0, %idx.ext61
  %add.ptr63 = getelementptr inbounds i8, ptr %add.ptr16, i64 %idx.neg62
  %20 = load i8, ptr %add.ptr63, align 1, !tbaa !21
  %conv64 = zext i8 %20 to i32
  %add65 = add nuw nsw i32 %add58, %conv64
  %21 = load i8, ptr %incdec.ptr59, align 1, !tbaa !21
  %idx.ext67 = zext i8 %21 to i64
  %idx.neg68 = sub nsw i64 0, %idx.ext67
  %add.ptr69 = getelementptr inbounds i8, ptr %add.ptr16, i64 %idx.neg68
  %22 = load i8, ptr %add.ptr69, align 1, !tbaa !21
  %conv70 = zext i8 %22 to i32
  %add71 = add nuw nsw i32 %add65, %conv70
  %add.ptr74 = getelementptr inbounds i8, ptr %incdec.ptr59, i64 %idx.ext73
  %incdec.ptr75 = getelementptr inbounds nuw i8, ptr %add.ptr74, i64 1
  %23 = load i8, ptr %add.ptr74, align 1, !tbaa !21
  %idx.ext77 = zext i8 %23 to i64
  %idx.neg78 = sub nsw i64 0, %idx.ext77
  %add.ptr79 = getelementptr inbounds i8, ptr %add.ptr16, i64 %idx.neg78
  %24 = load i8, ptr %add.ptr79, align 1, !tbaa !21
  %conv80 = zext i8 %24 to i32
  %add81 = add nuw nsw i32 %add71, %conv80
  %incdec.ptr82 = getelementptr inbounds nuw i8, ptr %add.ptr74, i64 2
  %25 = load i8, ptr %incdec.ptr75, align 1, !tbaa !21
  %idx.ext84 = zext i8 %25 to i64
  %idx.neg85 = sub nsw i64 0, %idx.ext84
  %add.ptr86 = getelementptr inbounds i8, ptr %add.ptr16, i64 %idx.neg85
  %26 = load i8, ptr %add.ptr86, align 1, !tbaa !21
  %conv87 = zext i8 %26 to i32
  %add88 = add nuw nsw i32 %add81, %conv87
  %incdec.ptr89 = getelementptr inbounds nuw i8, ptr %add.ptr74, i64 3
  %27 = load i8, ptr %incdec.ptr82, align 1, !tbaa !21
  %idx.ext91 = zext i8 %27 to i64
  %idx.neg92 = sub nsw i64 0, %idx.ext91
  %add.ptr93 = getelementptr inbounds i8, ptr %add.ptr16, i64 %idx.neg92
  %28 = load i8, ptr %add.ptr93, align 1, !tbaa !21
  %conv94 = zext i8 %28 to i32
  %add95 = add nuw nsw i32 %add88, %conv94
  %incdec.ptr96 = getelementptr inbounds nuw i8, ptr %add.ptr74, i64 4
  %29 = load i8, ptr %incdec.ptr89, align 1, !tbaa !21
  %idx.ext98 = zext i8 %29 to i64
  %idx.neg99 = sub nsw i64 0, %idx.ext98
  %add.ptr100 = getelementptr inbounds i8, ptr %add.ptr16, i64 %idx.neg99
  %30 = load i8, ptr %add.ptr100, align 1, !tbaa !21
  %conv101 = zext i8 %30 to i32
  %add102 = add nuw nsw i32 %add95, %conv101
  %incdec.ptr103 = getelementptr inbounds nuw i8, ptr %add.ptr74, i64 5
  %31 = load i8, ptr %incdec.ptr96, align 1, !tbaa !21
  %idx.ext105 = zext i8 %31 to i64
  %idx.neg106 = sub nsw i64 0, %idx.ext105
  %add.ptr107 = getelementptr inbounds i8, ptr %add.ptr16, i64 %idx.neg106
  %32 = load i8, ptr %add.ptr107, align 1, !tbaa !21
  %conv108 = zext i8 %32 to i32
  %add109 = add nuw nsw i32 %add102, %conv108
  %incdec.ptr110 = getelementptr inbounds nuw i8, ptr %add.ptr74, i64 6
  %33 = load i8, ptr %incdec.ptr103, align 1, !tbaa !21
  %idx.ext112 = zext i8 %33 to i64
  %idx.neg113 = sub nsw i64 0, %idx.ext112
  %add.ptr114 = getelementptr inbounds i8, ptr %add.ptr16, i64 %idx.neg113
  %34 = load i8, ptr %add.ptr114, align 1, !tbaa !21
  %conv115 = zext i8 %34 to i32
  %add116 = add nuw nsw i32 %add109, %conv115
  %35 = load i8, ptr %incdec.ptr110, align 1, !tbaa !21
  %idx.ext118 = zext i8 %35 to i64
  %idx.neg119 = sub nsw i64 0, %idx.ext118
  %add.ptr120 = getelementptr inbounds i8, ptr %add.ptr16, i64 %idx.neg119
  %36 = load i8, ptr %add.ptr120, align 1, !tbaa !21
  %conv121 = zext i8 %36 to i32
  %add122 = add nuw nsw i32 %add116, %conv121
  %add.ptr125 = getelementptr inbounds i8, ptr %incdec.ptr110, i64 %idx.ext124
  %incdec.ptr126 = getelementptr inbounds nuw i8, ptr %add.ptr125, i64 1
  %37 = load i8, ptr %add.ptr125, align 1, !tbaa !21
  %idx.ext128 = zext i8 %37 to i64
  %idx.neg129 = sub nsw i64 0, %idx.ext128
  %add.ptr130 = getelementptr inbounds i8, ptr %add.ptr16, i64 %idx.neg129
  %38 = load i8, ptr %add.ptr130, align 1, !tbaa !21
  %conv131 = zext i8 %38 to i32
  %add132 = add nuw nsw i32 %add122, %conv131
  %incdec.ptr133 = getelementptr inbounds nuw i8, ptr %add.ptr125, i64 2
  %39 = load i8, ptr %incdec.ptr126, align 1, !tbaa !21
  %idx.ext135 = zext i8 %39 to i64
  %idx.neg136 = sub nsw i64 0, %idx.ext135
  %add.ptr137 = getelementptr inbounds i8, ptr %add.ptr16, i64 %idx.neg136
  %40 = load i8, ptr %add.ptr137, align 1, !tbaa !21
  %conv138 = zext i8 %40 to i32
  %add139 = add nuw nsw i32 %add132, %conv138
  %41 = load i8, ptr %incdec.ptr133, align 1, !tbaa !21
  %idx.ext141 = zext i8 %41 to i64
  %idx.neg142 = sub nsw i64 0, %idx.ext141
  %add.ptr143 = getelementptr inbounds i8, ptr %add.ptr16, i64 %idx.neg142
  %42 = load i8, ptr %add.ptr143, align 1, !tbaa !21
  %conv144 = zext i8 %42 to i32
  %add145 = add nuw nsw i32 %add139, %conv144
  %cmp146 = icmp slt i32 %add145, %max_no
  br i1 %cmp146, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body7
  %add.ptr148 = getelementptr inbounds nuw i8, ptr %add.ptr125, i64 4
  %43 = load i8, ptr %add.ptr148, align 1, !tbaa !21
  %idx.ext151 = zext i8 %43 to i64
  %idx.neg152 = sub nsw i64 0, %idx.ext151
  %add.ptr153 = getelementptr inbounds i8, ptr %add.ptr16, i64 %idx.neg152
  %44 = load i8, ptr %add.ptr153, align 1, !tbaa !21
  %conv154 = zext i8 %44 to i32
  %add155 = add nuw nsw i32 %add145, %conv154
  %cmp156 = icmp samesign ult i32 %add155, %max_no
  br i1 %cmp156, label %if.then158, label %for.inc

if.then158:                                       ; preds = %if.then
  %incdec.ptr149 = getelementptr inbounds nuw i8, ptr %add.ptr125, i64 5
  %incdec.ptr159 = getelementptr inbounds nuw i8, ptr %add.ptr125, i64 6
  %45 = load i8, ptr %incdec.ptr149, align 1, !tbaa !21
  %idx.ext161 = zext i8 %45 to i64
  %idx.neg162 = sub nsw i64 0, %idx.ext161
  %add.ptr163 = getelementptr inbounds i8, ptr %add.ptr16, i64 %idx.neg162
  %46 = load i8, ptr %add.ptr163, align 1, !tbaa !21
  %conv164 = zext i8 %46 to i32
  %add165 = add nuw nsw i32 %add155, %conv164
  %cmp166 = icmp samesign ult i32 %add165, %max_no
  br i1 %cmp166, label %if.then168, label %for.inc

if.then168:                                       ; preds = %if.then158
  %47 = load i8, ptr %incdec.ptr159, align 1, !tbaa !21
  %idx.ext170 = zext i8 %47 to i64
  %idx.neg171 = sub nsw i64 0, %idx.ext170
  %add.ptr172 = getelementptr inbounds i8, ptr %add.ptr16, i64 %idx.neg171
  %48 = load i8, ptr %add.ptr172, align 1, !tbaa !21
  %conv173 = zext i8 %48 to i32
  %add174 = add nuw nsw i32 %add165, %conv173
  %cmp175 = icmp samesign ult i32 %add174, %max_no
  br i1 %cmp175, label %if.then177, label %for.inc

if.then177:                                       ; preds = %if.then168
  %add.ptr180 = getelementptr inbounds i8, ptr %incdec.ptr159, i64 %idx.ext124
  %49 = load i8, ptr %add.ptr180, align 1, !tbaa !21
  %idx.ext183 = zext i8 %49 to i64
  %idx.neg184 = sub nsw i64 0, %idx.ext183
  %add.ptr185 = getelementptr inbounds i8, ptr %add.ptr16, i64 %idx.neg184
  %50 = load i8, ptr %add.ptr185, align 1, !tbaa !21
  %conv186 = zext i8 %50 to i32
  %add187 = add nuw nsw i32 %add174, %conv186
  %cmp188 = icmp samesign ult i32 %add187, %max_no
  br i1 %cmp188, label %if.then190, label %for.inc

if.then190:                                       ; preds = %if.then177
  %incdec.ptr181 = getelementptr inbounds nuw i8, ptr %add.ptr180, i64 1
  %51 = load i8, ptr %incdec.ptr181, align 1, !tbaa !21
  %idx.ext193 = zext i8 %51 to i64
  %idx.neg194 = sub nsw i64 0, %idx.ext193
  %add.ptr195 = getelementptr inbounds i8, ptr %add.ptr16, i64 %idx.neg194
  %52 = load i8, ptr %add.ptr195, align 1, !tbaa !21
  %conv196 = zext i8 %52 to i32
  %add197 = add nuw nsw i32 %add187, %conv196
  %cmp198 = icmp samesign ult i32 %add197, %max_no
  br i1 %cmp198, label %if.then200, label %for.inc

if.then200:                                       ; preds = %if.then190
  %incdec.ptr191 = getelementptr inbounds nuw i8, ptr %add.ptr180, i64 2
  %53 = load i8, ptr %incdec.ptr191, align 1, !tbaa !21
  %idx.ext203 = zext i8 %53 to i64
  %idx.neg204 = sub nsw i64 0, %idx.ext203
  %add.ptr205 = getelementptr inbounds i8, ptr %add.ptr16, i64 %idx.neg204
  %54 = load i8, ptr %add.ptr205, align 1, !tbaa !21
  %conv206 = zext i8 %54 to i32
  %add207 = add nuw nsw i32 %add197, %conv206
  %cmp208 = icmp samesign ult i32 %add207, %max_no
  br i1 %cmp208, label %if.then210, label %for.inc

if.then210:                                       ; preds = %if.then200
  %incdec.ptr201 = getelementptr inbounds nuw i8, ptr %add.ptr180, i64 3
  %55 = load i8, ptr %incdec.ptr201, align 1, !tbaa !21
  %idx.ext213 = zext i8 %55 to i64
  %idx.neg214 = sub nsw i64 0, %idx.ext213
  %add.ptr215 = getelementptr inbounds i8, ptr %add.ptr16, i64 %idx.neg214
  %56 = load i8, ptr %add.ptr215, align 1, !tbaa !21
  %conv216 = zext i8 %56 to i32
  %add217 = add nuw nsw i32 %add207, %conv216
  %cmp218 = icmp samesign ult i32 %add217, %max_no
  br i1 %cmp218, label %if.then220, label %for.inc

if.then220:                                       ; preds = %if.then210
  %incdec.ptr211 = getelementptr inbounds nuw i8, ptr %add.ptr180, i64 4
  %57 = load i8, ptr %incdec.ptr211, align 1, !tbaa !21
  %idx.ext223 = zext i8 %57 to i64
  %idx.neg224 = sub nsw i64 0, %idx.ext223
  %add.ptr225 = getelementptr inbounds i8, ptr %add.ptr16, i64 %idx.neg224
  %58 = load i8, ptr %add.ptr225, align 1, !tbaa !21
  %conv226 = zext i8 %58 to i32
  %add227 = add nuw nsw i32 %add217, %conv226
  %cmp228 = icmp samesign ult i32 %add227, %max_no
  br i1 %cmp228, label %if.then230, label %for.inc

if.then230:                                       ; preds = %if.then220
  %incdec.ptr221 = getelementptr inbounds nuw i8, ptr %add.ptr180, i64 5
  %incdec.ptr231 = getelementptr inbounds nuw i8, ptr %add.ptr180, i64 6
  %59 = load i8, ptr %incdec.ptr221, align 1, !tbaa !21
  %idx.ext233 = zext i8 %59 to i64
  %idx.neg234 = sub nsw i64 0, %idx.ext233
  %add.ptr235 = getelementptr inbounds i8, ptr %add.ptr16, i64 %idx.neg234
  %60 = load i8, ptr %add.ptr235, align 1, !tbaa !21
  %conv236 = zext i8 %60 to i32
  %add237 = add nuw nsw i32 %add227, %conv236
  %cmp238 = icmp samesign ult i32 %add237, %max_no
  br i1 %cmp238, label %if.then240, label %for.inc

if.then240:                                       ; preds = %if.then230
  %61 = load i8, ptr %incdec.ptr231, align 1, !tbaa !21
  %idx.ext242 = zext i8 %61 to i64
  %idx.neg243 = sub nsw i64 0, %idx.ext242
  %add.ptr244 = getelementptr inbounds i8, ptr %add.ptr16, i64 %idx.neg243
  %62 = load i8, ptr %add.ptr244, align 1, !tbaa !21
  %conv245 = zext i8 %62 to i32
  %add246 = add nuw nsw i32 %add237, %conv245
  %cmp247 = icmp samesign ult i32 %add246, %max_no
  br i1 %cmp247, label %if.then249, label %for.inc

if.then249:                                       ; preds = %if.then240
  %add.ptr252 = getelementptr inbounds i8, ptr %incdec.ptr231, i64 %idx.ext73
  %63 = load i8, ptr %add.ptr252, align 1, !tbaa !21
  %idx.ext255 = zext i8 %63 to i64
  %idx.neg256 = sub nsw i64 0, %idx.ext255
  %add.ptr257 = getelementptr inbounds i8, ptr %add.ptr16, i64 %idx.neg256
  %64 = load i8, ptr %add.ptr257, align 1, !tbaa !21
  %conv258 = zext i8 %64 to i32
  %add259 = add nuw nsw i32 %add246, %conv258
  %cmp260 = icmp samesign ult i32 %add259, %max_no
  br i1 %cmp260, label %if.then262, label %for.inc

if.then262:                                       ; preds = %if.then249
  %incdec.ptr253 = getelementptr inbounds nuw i8, ptr %add.ptr252, i64 1
  %65 = load i8, ptr %incdec.ptr253, align 1, !tbaa !21
  %idx.ext265 = zext i8 %65 to i64
  %idx.neg266 = sub nsw i64 0, %idx.ext265
  %add.ptr267 = getelementptr inbounds i8, ptr %add.ptr16, i64 %idx.neg266
  %66 = load i8, ptr %add.ptr267, align 1, !tbaa !21
  %conv268 = zext i8 %66 to i32
  %add269 = add nuw nsw i32 %add259, %conv268
  %cmp270 = icmp samesign ult i32 %add269, %max_no
  br i1 %cmp270, label %if.then272, label %for.inc

if.then272:                                       ; preds = %if.then262
  %incdec.ptr263 = getelementptr inbounds nuw i8, ptr %add.ptr252, i64 2
  %67 = load i8, ptr %incdec.ptr263, align 1, !tbaa !21
  %idx.ext275 = zext i8 %67 to i64
  %idx.neg276 = sub nsw i64 0, %idx.ext275
  %add.ptr277 = getelementptr inbounds i8, ptr %add.ptr16, i64 %idx.neg276
  %68 = load i8, ptr %add.ptr277, align 1, !tbaa !21
  %conv278 = zext i8 %68 to i32
  %add279 = add nuw nsw i32 %add269, %conv278
  %cmp280 = icmp samesign ult i32 %add279, %max_no
  br i1 %cmp280, label %if.then282, label %for.inc

if.then282:                                       ; preds = %if.then272
  %incdec.ptr273 = getelementptr inbounds nuw i8, ptr %add.ptr252, i64 3
  %incdec.ptr283 = getelementptr inbounds nuw i8, ptr %add.ptr252, i64 4
  %69 = load i8, ptr %incdec.ptr273, align 1, !tbaa !21
  %idx.ext285 = zext i8 %69 to i64
  %idx.neg286 = sub nsw i64 0, %idx.ext285
  %add.ptr287 = getelementptr inbounds i8, ptr %add.ptr16, i64 %idx.neg286
  %70 = load i8, ptr %add.ptr287, align 1, !tbaa !21
  %conv288 = zext i8 %70 to i32
  %add289 = add nuw nsw i32 %add279, %conv288
  %cmp290 = icmp samesign ult i32 %add289, %max_no
  br i1 %cmp290, label %if.then292, label %for.inc

if.then292:                                       ; preds = %if.then282
  %71 = load i8, ptr %incdec.ptr283, align 1, !tbaa !21
  %idx.ext294 = zext i8 %71 to i64
  %idx.neg295 = sub nsw i64 0, %idx.ext294
  %add.ptr296 = getelementptr inbounds i8, ptr %add.ptr16, i64 %idx.neg295
  %72 = load i8, ptr %add.ptr296, align 1, !tbaa !21
  %conv297 = zext i8 %72 to i32
  %add298 = add nuw nsw i32 %add289, %conv297
  %cmp299 = icmp samesign ult i32 %add298, %max_no
  br i1 %cmp299, label %if.then301, label %for.inc

if.then301:                                       ; preds = %if.then292
  %add.ptr304 = getelementptr inbounds i8, ptr %incdec.ptr283, i64 %idx.ext36
  %73 = load i8, ptr %add.ptr304, align 1, !tbaa !21
  %idx.ext307 = zext i8 %73 to i64
  %idx.neg308 = sub nsw i64 0, %idx.ext307
  %add.ptr309 = getelementptr inbounds i8, ptr %add.ptr16, i64 %idx.neg308
  %74 = load i8, ptr %add.ptr309, align 1, !tbaa !21
  %conv310 = zext i8 %74 to i32
  %add311 = add nuw nsw i32 %add298, %conv310
  %cmp312 = icmp samesign ult i32 %add311, %max_no
  br i1 %cmp312, label %if.then314, label %for.inc

if.then314:                                       ; preds = %if.then301
  %incdec.ptr305 = getelementptr inbounds nuw i8, ptr %add.ptr304, i64 1
  %75 = load i8, ptr %incdec.ptr305, align 1, !tbaa !21
  %idx.ext317 = zext i8 %75 to i64
  %idx.neg318 = sub nsw i64 0, %idx.ext317
  %add.ptr319 = getelementptr inbounds i8, ptr %add.ptr16, i64 %idx.neg318
  %76 = load i8, ptr %add.ptr319, align 1, !tbaa !21
  %conv320 = zext i8 %76 to i32
  %add321 = add nuw nsw i32 %add311, %conv320
  %cmp322 = icmp samesign ult i32 %add321, %max_no
  br i1 %cmp322, label %if.then324, label %for.inc

if.then324:                                       ; preds = %if.then314
  %incdec.ptr315 = getelementptr inbounds nuw i8, ptr %add.ptr304, i64 2
  %77 = load i8, ptr %incdec.ptr315, align 1, !tbaa !21
  %idx.ext326 = zext i8 %77 to i64
  %idx.neg327 = sub nsw i64 0, %idx.ext326
  %add.ptr328 = getelementptr inbounds i8, ptr %add.ptr16, i64 %idx.neg327
  %78 = load i8, ptr %add.ptr328, align 1, !tbaa !21
  %conv329 = zext i8 %78 to i32
  %add330 = add nuw nsw i32 %add321, %conv329
  %cmp331 = icmp samesign ult i32 %add330, %max_no
  br i1 %cmp331, label %if.then333, label %for.inc

if.then333:                                       ; preds = %if.then324
  %sub334 = sub nuw nsw i32 %max_no, %add330
  %arrayidx338 = getelementptr inbounds i32, ptr %r, i64 %5
  store i32 %sub334, ptr %arrayidx338, align 4, !tbaa !16
  br label %for.inc

for.inc:                                          ; preds = %for.body7, %if.then158, %if.then177, %if.then200, %if.then220, %if.then240, %if.then262, %if.then282, %if.then301, %if.then324, %if.then333, %if.then314, %if.then292, %if.then272, %if.then249, %if.then230, %if.then210, %if.then190, %if.then168, %if.then
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond3, !llvm.loop !68

for.inc357:                                       ; preds = %for.cond3
  %indvars.iv.next717 = add nuw nsw i64 %indvars.iv716, 1
  br label %for.cond, !llvm.loop !69

for.cond360:                                      ; preds = %for.cond365, %for.cond360.preheader
  %indvars.iv757 = phi i64 [ 7, %for.cond360.preheader ], [ %indvars.iv.next758, %for.cond365 ]
  %n.0 = phi i32 [ 0, %for.cond360.preheader ], [ %n.1, %for.cond365 ]
  %exitcond773.not = icmp eq i64 %indvars.iv757, %wide.trip.count723
  br i1 %exitcond773.not, label %for.end1325, label %for.cond365.preheader

for.cond365.preheader:                            ; preds = %for.cond360
  %79 = mul nsw i64 %indvars.iv757, %0
  %80 = add nsw i64 %indvars.iv757, -3
  %81 = mul nsw i64 %80, %0
  %82 = add nsw i64 %indvars.iv757, -2
  %83 = mul nsw i64 %82, %0
  %84 = add nsw i64 %indvars.iv757, -1
  %85 = mul nsw i64 %84, %0
  %indvars.iv.next758 = add nuw nsw i64 %indvars.iv757, 1
  %86 = mul nsw i64 %indvars.iv.next758, %0
  %87 = add nuw nsw i64 %indvars.iv757, 2
  %88 = mul nsw i64 %87, %0
  %89 = add nuw nsw i64 %indvars.iv757, 3
  %90 = mul nsw i64 %89, %0
  %invariant.gep = getelementptr i32, ptr %r, i64 %81
  %invariant.gep776 = getelementptr i32, ptr %r, i64 %90
  %91 = trunc nuw nsw i64 %indvars.iv757 to i32
  br label %for.cond365

for.cond365:                                      ; preds = %for.cond365.preheader, %for.inc1320
  %indvars.iv725 = phi i64 [ 7, %for.cond365.preheader ], [ %indvars.iv.next726, %for.inc1320 ]
  %n.1 = phi i32 [ %n.0, %for.cond365.preheader ], [ %n.2, %for.inc1320 ]
  %exitcond756.not = icmp eq i64 %indvars.iv725, %wide.trip.count755
  br i1 %exitcond756.not, label %for.cond360, label %for.body369, !llvm.loop !70

for.body369:                                      ; preds = %for.cond365
  %92 = add nsw i64 %indvars.iv725, %79
  %arrayidx373 = getelementptr inbounds i32, ptr %r, i64 %92
  %93 = load i32, ptr %arrayidx373, align 4, !tbaa !16
  %cmp374 = icmp sgt i32 %93, 0
  br i1 %cmp374, label %if.then376, label %for.inc1320

if.then376:                                       ; preds = %for.body369
  %gep = getelementptr i32, ptr %invariant.gep, i64 %indvars.iv725
  %arrayidx382 = getelementptr i8, ptr %gep, i64 -12
  %94 = load i32, ptr %arrayidx382, align 4, !tbaa !16
  %cmp383 = icmp sgt i32 %93, %94
  br i1 %cmp383, label %land.lhs.true, label %for.inc1320

land.lhs.true:                                    ; preds = %if.then376
  %arrayidx390 = getelementptr i8, ptr %gep, i64 -8
  %95 = load i32, ptr %arrayidx390, align 4, !tbaa !16
  %cmp391 = icmp sgt i32 %93, %95
  br i1 %cmp391, label %land.lhs.true393, label %for.inc1320

land.lhs.true393:                                 ; preds = %land.lhs.true
  %arrayidx399 = getelementptr i8, ptr %gep, i64 -4
  %96 = load i32, ptr %arrayidx399, align 4, !tbaa !16
  %cmp400 = icmp sgt i32 %93, %96
  br i1 %cmp400, label %land.lhs.true402, label %for.inc1320

land.lhs.true402:                                 ; preds = %land.lhs.true393
  %97 = load i32, ptr %gep, align 4, !tbaa !16
  %cmp408 = icmp sgt i32 %93, %97
  br i1 %cmp408, label %land.lhs.true410, label %for.inc1320

land.lhs.true410:                                 ; preds = %land.lhs.true402
  %arrayidx416 = getelementptr i8, ptr %gep, i64 4
  %98 = load i32, ptr %arrayidx416, align 4, !tbaa !16
  %cmp417 = icmp sgt i32 %93, %98
  br i1 %cmp417, label %land.lhs.true419, label %for.inc1320

land.lhs.true419:                                 ; preds = %land.lhs.true410
  %arrayidx425 = getelementptr i8, ptr %gep, i64 8
  %99 = load i32, ptr %arrayidx425, align 4, !tbaa !16
  %cmp426 = icmp sgt i32 %93, %99
  br i1 %cmp426, label %land.lhs.true428, label %for.inc1320

land.lhs.true428:                                 ; preds = %land.lhs.true419
  %arrayidx434 = getelementptr i8, ptr %gep, i64 12
  %100 = load i32, ptr %arrayidx434, align 4, !tbaa !16
  %cmp435 = icmp sgt i32 %93, %100
  br i1 %cmp435, label %land.lhs.true437, label %for.inc1320

land.lhs.true437:                                 ; preds = %land.lhs.true428
  %101 = add nsw i64 %indvars.iv725, %83
  %102 = getelementptr i32, ptr %r, i64 %101
  %arrayidx443 = getelementptr i8, ptr %102, i64 -12
  %103 = load i32, ptr %arrayidx443, align 4, !tbaa !16
  %cmp444 = icmp sgt i32 %93, %103
  br i1 %cmp444, label %land.lhs.true446, label %for.inc1320

land.lhs.true446:                                 ; preds = %land.lhs.true437
  %104 = add nsw i64 %101, -2
  %arrayidx452 = getelementptr inbounds i32, ptr %r, i64 %104
  %105 = load i32, ptr %arrayidx452, align 4, !tbaa !16
  %cmp453 = icmp sgt i32 %93, %105
  br i1 %cmp453, label %land.lhs.true455, label %for.inc1320

land.lhs.true455:                                 ; preds = %land.lhs.true446
  %106 = add nsw i64 %101, -1
  %arrayidx461 = getelementptr inbounds i32, ptr %r, i64 %106
  %107 = load i32, ptr %arrayidx461, align 4, !tbaa !16
  %cmp462 = icmp sgt i32 %93, %107
  br i1 %cmp462, label %land.lhs.true464, label %for.inc1320

land.lhs.true464:                                 ; preds = %land.lhs.true455
  %108 = load i32, ptr %102, align 4, !tbaa !16
  %cmp470 = icmp sgt i32 %93, %108
  br i1 %cmp470, label %land.lhs.true472, label %for.inc1320

land.lhs.true472:                                 ; preds = %land.lhs.true464
  %109 = add nsw i64 %101, 1
  %arrayidx478 = getelementptr inbounds i32, ptr %r, i64 %109
  %110 = load i32, ptr %arrayidx478, align 4, !tbaa !16
  %cmp479 = icmp sgt i32 %93, %110
  br i1 %cmp479, label %land.lhs.true481, label %for.inc1320

land.lhs.true481:                                 ; preds = %land.lhs.true472
  %111 = add nsw i64 %101, 2
  %arrayidx487 = getelementptr inbounds i32, ptr %r, i64 %111
  %112 = load i32, ptr %arrayidx487, align 4, !tbaa !16
  %cmp488 = icmp sgt i32 %93, %112
  br i1 %cmp488, label %land.lhs.true490, label %for.inc1320

land.lhs.true490:                                 ; preds = %land.lhs.true481
  %arrayidx496 = getelementptr i8, ptr %102, i64 12
  %113 = load i32, ptr %arrayidx496, align 4, !tbaa !16
  %cmp497 = icmp sgt i32 %93, %113
  br i1 %cmp497, label %land.lhs.true499, label %for.inc1320

land.lhs.true499:                                 ; preds = %land.lhs.true490
  %114 = add nsw i64 %indvars.iv725, %85
  %115 = getelementptr i32, ptr %r, i64 %114
  %arrayidx505 = getelementptr i8, ptr %115, i64 -12
  %116 = load i32, ptr %arrayidx505, align 4, !tbaa !16
  %cmp506 = icmp sgt i32 %93, %116
  br i1 %cmp506, label %land.lhs.true508, label %for.inc1320

land.lhs.true508:                                 ; preds = %land.lhs.true499
  %117 = add nsw i64 %114, -2
  %arrayidx514 = getelementptr inbounds i32, ptr %r, i64 %117
  %118 = load i32, ptr %arrayidx514, align 4, !tbaa !16
  %cmp515 = icmp sgt i32 %93, %118
  br i1 %cmp515, label %land.lhs.true517, label %for.inc1320

land.lhs.true517:                                 ; preds = %land.lhs.true508
  %119 = add nsw i64 %114, -1
  %arrayidx523 = getelementptr inbounds i32, ptr %r, i64 %119
  %120 = load i32, ptr %arrayidx523, align 4, !tbaa !16
  %cmp524 = icmp sgt i32 %93, %120
  br i1 %cmp524, label %land.lhs.true526, label %for.inc1320

land.lhs.true526:                                 ; preds = %land.lhs.true517
  %121 = load i32, ptr %115, align 4, !tbaa !16
  %cmp532 = icmp sgt i32 %93, %121
  br i1 %cmp532, label %land.lhs.true534, label %for.inc1320

land.lhs.true534:                                 ; preds = %land.lhs.true526
  %122 = add nsw i64 %114, 1
  %arrayidx540 = getelementptr inbounds i32, ptr %r, i64 %122
  %123 = load i32, ptr %arrayidx540, align 4, !tbaa !16
  %cmp541 = icmp sgt i32 %93, %123
  br i1 %cmp541, label %land.lhs.true543, label %for.inc1320

land.lhs.true543:                                 ; preds = %land.lhs.true534
  %124 = add nsw i64 %114, 2
  %arrayidx549 = getelementptr inbounds i32, ptr %r, i64 %124
  %125 = load i32, ptr %arrayidx549, align 4, !tbaa !16
  %cmp550 = icmp sgt i32 %93, %125
  br i1 %cmp550, label %land.lhs.true552, label %for.inc1320

land.lhs.true552:                                 ; preds = %land.lhs.true543
  %arrayidx558 = getelementptr i8, ptr %115, i64 12
  %126 = load i32, ptr %arrayidx558, align 4, !tbaa !16
  %cmp559 = icmp sgt i32 %93, %126
  br i1 %cmp559, label %land.lhs.true561, label %for.inc1320

land.lhs.true561:                                 ; preds = %land.lhs.true552
  %arrayidx566 = getelementptr i8, ptr %arrayidx373, i64 -12
  %127 = load i32, ptr %arrayidx566, align 4, !tbaa !16
  %cmp567 = icmp sgt i32 %93, %127
  br i1 %cmp567, label %land.lhs.true569, label %for.inc1320

land.lhs.true569:                                 ; preds = %land.lhs.true561
  %128 = add nsw i64 %92, -2
  %arrayidx574 = getelementptr inbounds i32, ptr %r, i64 %128
  %129 = load i32, ptr %arrayidx574, align 4, !tbaa !16
  %cmp575 = icmp sgt i32 %93, %129
  br i1 %cmp575, label %land.lhs.true577, label %for.inc1320

land.lhs.true577:                                 ; preds = %land.lhs.true569
  %130 = add nsw i64 %92, -1
  %arrayidx582 = getelementptr inbounds i32, ptr %r, i64 %130
  %131 = load i32, ptr %arrayidx582, align 4, !tbaa !16
  %cmp583 = icmp sgt i32 %93, %131
  br i1 %cmp583, label %land.lhs.true585, label %for.inc1320

land.lhs.true585:                                 ; preds = %land.lhs.true577
  %132 = add nsw i64 %92, 1
  %arrayidx590 = getelementptr inbounds i32, ptr %r, i64 %132
  %133 = load i32, ptr %arrayidx590, align 4, !tbaa !16
  %cmp591.not = icmp slt i32 %93, %133
  br i1 %cmp591.not, label %for.inc1320, label %land.lhs.true593

land.lhs.true593:                                 ; preds = %land.lhs.true585
  %134 = add nsw i64 %92, 2
  %arrayidx598 = getelementptr inbounds i32, ptr %r, i64 %134
  %135 = load i32, ptr %arrayidx598, align 4, !tbaa !16
  %cmp599.not = icmp slt i32 %93, %135
  br i1 %cmp599.not, label %for.inc1320, label %land.lhs.true601

land.lhs.true601:                                 ; preds = %land.lhs.true593
  %arrayidx606 = getelementptr i8, ptr %arrayidx373, i64 12
  %136 = load i32, ptr %arrayidx606, align 4, !tbaa !16
  %cmp607.not = icmp slt i32 %93, %136
  br i1 %cmp607.not, label %for.inc1320, label %land.lhs.true609

land.lhs.true609:                                 ; preds = %land.lhs.true601
  %137 = add nsw i64 %indvars.iv725, %86
  %138 = getelementptr i32, ptr %r, i64 %137
  %arrayidx615 = getelementptr i8, ptr %138, i64 -12
  %139 = load i32, ptr %arrayidx615, align 4, !tbaa !16
  %cmp616.not = icmp slt i32 %93, %139
  br i1 %cmp616.not, label %for.inc1320, label %land.lhs.true618

land.lhs.true618:                                 ; preds = %land.lhs.true609
  %140 = add nsw i64 %137, -2
  %arrayidx624 = getelementptr inbounds i32, ptr %r, i64 %140
  %141 = load i32, ptr %arrayidx624, align 4, !tbaa !16
  %cmp625.not = icmp slt i32 %93, %141
  br i1 %cmp625.not, label %for.inc1320, label %land.lhs.true627

land.lhs.true627:                                 ; preds = %land.lhs.true618
  %142 = add nsw i64 %137, -1
  %arrayidx633 = getelementptr inbounds i32, ptr %r, i64 %142
  %143 = load i32, ptr %arrayidx633, align 4, !tbaa !16
  %cmp634.not = icmp slt i32 %93, %143
  br i1 %cmp634.not, label %for.inc1320, label %land.lhs.true636

land.lhs.true636:                                 ; preds = %land.lhs.true627
  %144 = load i32, ptr %138, align 4, !tbaa !16
  %cmp642.not = icmp slt i32 %93, %144
  br i1 %cmp642.not, label %for.inc1320, label %land.lhs.true644

land.lhs.true644:                                 ; preds = %land.lhs.true636
  %145 = add nsw i64 %137, 1
  %arrayidx650 = getelementptr inbounds i32, ptr %r, i64 %145
  %146 = load i32, ptr %arrayidx650, align 4, !tbaa !16
  %cmp651.not = icmp slt i32 %93, %146
  br i1 %cmp651.not, label %for.inc1320, label %land.lhs.true653

land.lhs.true653:                                 ; preds = %land.lhs.true644
  %147 = add nsw i64 %137, 2
  %arrayidx659 = getelementptr inbounds i32, ptr %r, i64 %147
  %148 = load i32, ptr %arrayidx659, align 4, !tbaa !16
  %cmp660.not = icmp slt i32 %93, %148
  br i1 %cmp660.not, label %for.inc1320, label %land.lhs.true662

land.lhs.true662:                                 ; preds = %land.lhs.true653
  %arrayidx668 = getelementptr i8, ptr %138, i64 12
  %149 = load i32, ptr %arrayidx668, align 4, !tbaa !16
  %cmp669.not = icmp slt i32 %93, %149
  br i1 %cmp669.not, label %for.inc1320, label %land.lhs.true671

land.lhs.true671:                                 ; preds = %land.lhs.true662
  %150 = add nsw i64 %indvars.iv725, %88
  %151 = getelementptr i32, ptr %r, i64 %150
  %arrayidx677 = getelementptr i8, ptr %151, i64 -12
  %152 = load i32, ptr %arrayidx677, align 4, !tbaa !16
  %cmp678.not = icmp slt i32 %93, %152
  br i1 %cmp678.not, label %for.inc1320, label %land.lhs.true680

land.lhs.true680:                                 ; preds = %land.lhs.true671
  %153 = add nsw i64 %150, -2
  %arrayidx686 = getelementptr inbounds i32, ptr %r, i64 %153
  %154 = load i32, ptr %arrayidx686, align 4, !tbaa !16
  %cmp687.not = icmp slt i32 %93, %154
  br i1 %cmp687.not, label %for.inc1320, label %land.lhs.true689

land.lhs.true689:                                 ; preds = %land.lhs.true680
  %155 = add nsw i64 %150, -1
  %arrayidx695 = getelementptr inbounds i32, ptr %r, i64 %155
  %156 = load i32, ptr %arrayidx695, align 4, !tbaa !16
  %cmp696.not = icmp slt i32 %93, %156
  br i1 %cmp696.not, label %for.inc1320, label %land.lhs.true698

land.lhs.true698:                                 ; preds = %land.lhs.true689
  %157 = load i32, ptr %151, align 4, !tbaa !16
  %cmp704.not = icmp slt i32 %93, %157
  br i1 %cmp704.not, label %for.inc1320, label %land.lhs.true706

land.lhs.true706:                                 ; preds = %land.lhs.true698
  %158 = add nsw i64 %150, 1
  %arrayidx712 = getelementptr inbounds i32, ptr %r, i64 %158
  %159 = load i32, ptr %arrayidx712, align 4, !tbaa !16
  %cmp713.not = icmp slt i32 %93, %159
  br i1 %cmp713.not, label %for.inc1320, label %land.lhs.true715

land.lhs.true715:                                 ; preds = %land.lhs.true706
  %160 = add nsw i64 %150, 2
  %arrayidx721 = getelementptr inbounds i32, ptr %r, i64 %160
  %161 = load i32, ptr %arrayidx721, align 4, !tbaa !16
  %cmp722.not = icmp slt i32 %93, %161
  br i1 %cmp722.not, label %for.inc1320, label %land.lhs.true724

land.lhs.true724:                                 ; preds = %land.lhs.true715
  %arrayidx730 = getelementptr i8, ptr %151, i64 12
  %162 = load i32, ptr %arrayidx730, align 4, !tbaa !16
  %cmp731.not = icmp slt i32 %93, %162
  br i1 %cmp731.not, label %for.inc1320, label %land.lhs.true733

land.lhs.true733:                                 ; preds = %land.lhs.true724
  %gep777 = getelementptr i32, ptr %invariant.gep776, i64 %indvars.iv725
  %arrayidx739 = getelementptr i8, ptr %gep777, i64 -12
  %163 = load i32, ptr %arrayidx739, align 4, !tbaa !16
  %cmp740.not = icmp slt i32 %93, %163
  br i1 %cmp740.not, label %for.inc1320, label %land.lhs.true742

land.lhs.true742:                                 ; preds = %land.lhs.true733
  %arrayidx748 = getelementptr i8, ptr %gep777, i64 -8
  %164 = load i32, ptr %arrayidx748, align 4, !tbaa !16
  %cmp749.not = icmp slt i32 %93, %164
  br i1 %cmp749.not, label %for.inc1320, label %land.lhs.true751

land.lhs.true751:                                 ; preds = %land.lhs.true742
  %arrayidx757 = getelementptr i8, ptr %gep777, i64 -4
  %165 = load i32, ptr %arrayidx757, align 4, !tbaa !16
  %cmp758.not = icmp slt i32 %93, %165
  br i1 %cmp758.not, label %for.inc1320, label %land.lhs.true760

land.lhs.true760:                                 ; preds = %land.lhs.true751
  %166 = load i32, ptr %gep777, align 4, !tbaa !16
  %cmp766.not = icmp slt i32 %93, %166
  br i1 %cmp766.not, label %for.inc1320, label %land.lhs.true768

land.lhs.true768:                                 ; preds = %land.lhs.true760
  %arrayidx774 = getelementptr i8, ptr %gep777, i64 4
  %167 = load i32, ptr %arrayidx774, align 4, !tbaa !16
  %cmp775.not = icmp slt i32 %93, %167
  br i1 %cmp775.not, label %for.inc1320, label %land.lhs.true777

land.lhs.true777:                                 ; preds = %land.lhs.true768
  %arrayidx783 = getelementptr i8, ptr %gep777, i64 8
  %168 = load i32, ptr %arrayidx783, align 4, !tbaa !16
  %cmp784.not = icmp slt i32 %93, %168
  br i1 %cmp784.not, label %for.inc1320, label %land.lhs.true786

land.lhs.true786:                                 ; preds = %land.lhs.true777
  %arrayidx792 = getelementptr i8, ptr %gep777, i64 12
  %169 = load i32, ptr %arrayidx792, align 4, !tbaa !16
  %cmp793.not = icmp slt i32 %93, %169
  br i1 %cmp793.not, label %for.inc1320, label %if.then795

if.then795:                                       ; preds = %land.lhs.true786
  %idxprom796 = sext i32 %n.1 to i64
  %arrayidx797 = getelementptr inbounds %struct.anon, ptr %corner_list, i64 %idxprom796
  %info = getelementptr inbounds nuw i8, ptr %arrayidx797, i64 8
  store i32 0, ptr %info, align 4, !tbaa !56
  %170 = trunc nuw nsw i64 %indvars.iv725 to i32
  store i32 %170, ptr %arrayidx797, align 4, !tbaa !59
  %y803 = getelementptr inbounds nuw i8, ptr %arrayidx797, i64 4
  store i32 %91, ptr %y803, align 4, !tbaa !58
  %arrayidx809 = getelementptr inbounds i8, ptr %in, i64 %104
  %171 = load i8, ptr %arrayidx809, align 1, !tbaa !21
  %conv810 = zext i8 %171 to i16
  %arrayidx816 = getelementptr inbounds i8, ptr %in, i64 %106
  %172 = load i8, ptr %arrayidx816, align 1, !tbaa !21
  %conv817 = zext i8 %172 to i16
  %add818 = add nuw nsw i16 %conv817, %conv810
  %arrayidx823 = getelementptr inbounds i8, ptr %in, i64 %101
  %173 = load i8, ptr %arrayidx823, align 1, !tbaa !21
  %conv824 = zext i8 %173 to i16
  %add825 = add nuw nsw i16 %add818, %conv824
  %arrayidx831 = getelementptr inbounds i8, ptr %in, i64 %109
  %174 = load i8, ptr %arrayidx831, align 1, !tbaa !21
  %conv832 = zext i8 %174 to i16
  %add833 = add nuw nsw i16 %add825, %conv832
  %arrayidx839 = getelementptr inbounds i8, ptr %in, i64 %111
  %175 = load i8, ptr %arrayidx839, align 1, !tbaa !21
  %conv840 = zext i8 %175 to i16
  %add841 = add nuw nsw i16 %add833, %conv840
  %arrayidx847 = getelementptr inbounds i8, ptr %in, i64 %117
  %176 = load i8, ptr %arrayidx847, align 1, !tbaa !21
  %conv848 = zext i8 %176 to i16
  %add849 = add nuw nsw i16 %add841, %conv848
  %arrayidx855 = getelementptr inbounds i8, ptr %in, i64 %119
  %177 = load i8, ptr %arrayidx855, align 1, !tbaa !21
  %conv856 = zext i8 %177 to i16
  %add857 = add nuw nsw i16 %add849, %conv856
  %arrayidx862 = getelementptr inbounds i8, ptr %in, i64 %114
  %178 = load i8, ptr %arrayidx862, align 1, !tbaa !21
  %conv863 = zext i8 %178 to i16
  %add864 = add nuw nsw i16 %add857, %conv863
  %arrayidx870 = getelementptr inbounds i8, ptr %in, i64 %122
  %179 = load i8, ptr %arrayidx870, align 1, !tbaa !21
  %conv871 = zext i8 %179 to i16
  %add872 = add nuw nsw i16 %add864, %conv871
  %arrayidx878 = getelementptr inbounds i8, ptr %in, i64 %124
  %180 = load i8, ptr %arrayidx878, align 1, !tbaa !21
  %conv879 = zext i8 %180 to i16
  %add880 = add nuw nsw i16 %add872, %conv879
  %arrayidx885 = getelementptr inbounds i8, ptr %in, i64 %128
  %181 = load i8, ptr %arrayidx885, align 1, !tbaa !21
  %conv886 = zext i8 %181 to i16
  %add887 = add nuw nsw i16 %add880, %conv886
  %arrayidx892 = getelementptr inbounds i8, ptr %in, i64 %130
  %182 = load i8, ptr %arrayidx892, align 1, !tbaa !21
  %conv893 = zext i8 %182 to i16
  %add894 = add nuw nsw i16 %add887, %conv893
  %arrayidx898 = getelementptr inbounds i8, ptr %in, i64 %92
  %183 = load i8, ptr %arrayidx898, align 1, !tbaa !21
  %conv899 = zext i8 %183 to i16
  %add900 = add nuw nsw i16 %add894, %conv899
  %arrayidx905 = getelementptr inbounds i8, ptr %in, i64 %132
  %184 = load i8, ptr %arrayidx905, align 1, !tbaa !21
  %conv906 = zext i8 %184 to i16
  %add907 = add nuw nsw i16 %add900, %conv906
  %arrayidx912 = getelementptr inbounds i8, ptr %in, i64 %134
  %185 = load i8, ptr %arrayidx912, align 1, !tbaa !21
  %conv913 = zext i8 %185 to i16
  %add914 = add nuw nsw i16 %add907, %conv913
  %arrayidx920 = getelementptr inbounds i8, ptr %in, i64 %140
  %186 = load i8, ptr %arrayidx920, align 1, !tbaa !21
  %conv921 = zext i8 %186 to i16
  %add922 = add nuw nsw i16 %add914, %conv921
  %arrayidx928 = getelementptr inbounds i8, ptr %in, i64 %142
  %187 = load i8, ptr %arrayidx928, align 1, !tbaa !21
  %conv929 = zext i8 %187 to i16
  %add930 = add nuw nsw i16 %add922, %conv929
  %arrayidx935 = getelementptr inbounds i8, ptr %in, i64 %137
  %188 = load i8, ptr %arrayidx935, align 1, !tbaa !21
  %conv936 = zext i8 %188 to i16
  %add937 = add nuw nsw i16 %add930, %conv936
  %arrayidx943 = getelementptr inbounds i8, ptr %in, i64 %145
  %189 = load i8, ptr %arrayidx943, align 1, !tbaa !21
  %conv944 = zext i8 %189 to i16
  %add945 = add nuw nsw i16 %add937, %conv944
  %arrayidx951 = getelementptr inbounds i8, ptr %in, i64 %147
  %190 = load i8, ptr %arrayidx951, align 1, !tbaa !21
  %conv952 = zext i8 %190 to i16
  %add953 = add nuw nsw i16 %add945, %conv952
  %arrayidx959 = getelementptr inbounds i8, ptr %in, i64 %153
  %191 = load i8, ptr %arrayidx959, align 1, !tbaa !21
  %conv960 = zext i8 %191 to i16
  %add961 = add nuw nsw i16 %add953, %conv960
  %arrayidx967 = getelementptr inbounds i8, ptr %in, i64 %155
  %192 = load i8, ptr %arrayidx967, align 1, !tbaa !21
  %conv968 = zext i8 %192 to i16
  %add969 = add nuw nsw i16 %add961, %conv968
  %arrayidx974 = getelementptr inbounds i8, ptr %in, i64 %150
  %193 = load i8, ptr %arrayidx974, align 1, !tbaa !21
  %conv975 = zext i8 %193 to i16
  %add976 = add nuw nsw i16 %add969, %conv975
  %arrayidx982 = getelementptr inbounds i8, ptr %in, i64 %158
  %194 = load i8, ptr %arrayidx982, align 1, !tbaa !21
  %conv983 = zext i8 %194 to i16
  %add984 = add nuw nsw i16 %add976, %conv983
  %arrayidx990 = getelementptr inbounds i8, ptr %in, i64 %160
  %195 = load i8, ptr %arrayidx990, align 1, !tbaa !21
  %conv991 = zext i8 %195 to i16
  %add992 = add nuw nsw i16 %add984, %conv991
  %div706 = udiv i16 %add992, 25
  %div.zext = zext nneg i16 %div706 to i32
  %I = getelementptr inbounds nuw i8, ptr %arrayidx797, i64 20
  store i32 %div.zext, ptr %I, align 4, !tbaa !66
  %196 = load i8, ptr %arrayidx839, align 1, !tbaa !21
  %conv1001 = zext i8 %196 to i32
  %197 = load i8, ptr %arrayidx878, align 1, !tbaa !21
  %conv1008 = zext i8 %197 to i32
  %198 = load i8, ptr %arrayidx912, align 1, !tbaa !21
  %conv1015 = zext i8 %198 to i32
  %199 = load i8, ptr %arrayidx951, align 1, !tbaa !21
  %conv1023 = zext i8 %199 to i32
  %200 = load i8, ptr %arrayidx990, align 1, !tbaa !21
  %conv1031 = zext i8 %200 to i32
  %201 = load i8, ptr %arrayidx809, align 1, !tbaa !21
  %conv1039 = zext i8 %201 to i32
  %202 = load i8, ptr %arrayidx847, align 1, !tbaa !21
  %conv1046 = zext i8 %202 to i32
  %203 = load i8, ptr %arrayidx885, align 1, !tbaa !21
  %conv1053 = zext i8 %203 to i32
  %204 = load i8, ptr %arrayidx920, align 1, !tbaa !21
  %conv1061 = zext i8 %204 to i32
  %205 = load i8, ptr %arrayidx959, align 1, !tbaa !21
  %conv1069 = zext i8 %205 to i32
  %add1047.neg = add nuw nsw i32 %conv1008, %conv1001
  %add1054.neg = add nuw nsw i32 %add1047.neg, %conv1015
  %add1062.neg = add nuw nsw i32 %add1054.neg, %conv1023
  %add1070.neg = add nuw nsw i32 %add1062.neg, %conv1031
  %206 = add nuw nsw i32 %conv1039, %conv1046
  %207 = add nuw nsw i32 %206, %conv1053
  %208 = add nuw nsw i32 %207, %conv1061
  %209 = add nuw nsw i32 %208, %conv1069
  %sub1071 = sub nsw i32 %add1070.neg, %209
  %210 = load i8, ptr %arrayidx831, align 1, !tbaa !21
  %conv1078 = zext i8 %210 to i32
  %211 = load i8, ptr %arrayidx870, align 1, !tbaa !21
  %conv1086 = zext i8 %211 to i32
  %212 = load i8, ptr %arrayidx905, align 1, !tbaa !21
  %conv1093 = zext i8 %212 to i32
  %213 = load i8, ptr %arrayidx943, align 1, !tbaa !21
  %conv1101 = zext i8 %213 to i32
  %214 = load i8, ptr %arrayidx982, align 1, !tbaa !21
  %conv1109 = zext i8 %214 to i32
  %215 = load i8, ptr %arrayidx816, align 1, !tbaa !21
  %conv1117 = zext i8 %215 to i32
  %216 = load i8, ptr %arrayidx855, align 1, !tbaa !21
  %conv1124 = zext i8 %216 to i32
  %217 = load i8, ptr %arrayidx892, align 1, !tbaa !21
  %conv1131 = zext i8 %217 to i32
  %218 = load i8, ptr %arrayidx928, align 1, !tbaa !21
  %conv1139 = zext i8 %218 to i32
  %219 = load i8, ptr %arrayidx967, align 1, !tbaa !21
  %conv1147 = zext i8 %219 to i32
  %factor = shl nsw i32 %sub1071, 1
  %add1132.neg = add nuw nsw i32 %conv1086, %conv1078
  %add1140.neg = add nsw i32 %add1132.neg, %factor
  %add1148.neg = add nsw i32 %add1140.neg, %conv1093
  %add1079 = add nsw i32 %add1148.neg, %conv1101
  %add1087 = add nsw i32 %add1079, %conv1109
  %220 = add nuw nsw i32 %conv1117, %conv1124
  %221 = add nuw nsw i32 %220, %conv1131
  %222 = add nuw nsw i32 %221, %conv1139
  %223 = add nuw nsw i32 %222, %conv1147
  %add1150 = sub nsw i32 %add1087, %223
  %224 = load i8, ptr %arrayidx974, align 1, !tbaa !21
  %conv1171 = zext i8 %224 to i32
  %225 = load i8, ptr %arrayidx823, align 1, !tbaa !21
  %conv1209 = zext i8 %225 to i32
  %226 = add nuw nsw i32 %conv1001, %conv1039
  %227 = add nuw nsw i32 %conv1031, %conv1069
  %228 = add nuw nsw i32 %226, %conv1078
  %229 = add nuw nsw i32 %227, %conv1109
  %230 = add nuw nsw i32 %228, %conv1117
  %add1172 = sub nsw i32 %229, %230
  %add1180 = add nsw i32 %add1172, %conv1147
  %add1188 = add nsw i32 %add1180, %conv1171
  %sub1227 = sub nsw i32 %add1188, %conv1209
  %231 = load i8, ptr %arrayidx935, align 1, !tbaa !21
  %conv1249 = zext i8 %231 to i32
  %232 = load i8, ptr %arrayidx862, align 1, !tbaa !21
  %conv1287 = zext i8 %232 to i32
  %factor709 = shl nsw i32 %sub1227, 1
  %233 = add nuw nsw i32 %conv1008, %conv1046
  %234 = add nuw nsw i32 %conv1023, %conv1061
  %235 = add nuw nsw i32 %233, %conv1086
  %236 = add nuw nsw i32 %234, %conv1101
  %237 = add nuw nsw i32 %235, %conv1124
  %add1250 = sub nsw i32 %236, %237
  %add1258 = add nsw i32 %add1250, %conv1139
  %add1266 = add nsw i32 %add1258, %conv1249
  %sub1305 = sub nsw i32 %add1266, %conv1287
  %add1306 = add nsw i32 %sub1305, %factor709
  %div1307.lhs.trunc = trunc nsw i32 %add1150 to i16
  %div1307707 = sdiv i16 %div1307.lhs.trunc, 15
  %div1307.sext = sext i16 %div1307707 to i32
  %dx = getelementptr inbounds nuw i8, ptr %arrayidx797, i64 12
  store i32 %div1307.sext, ptr %dx, align 4, !tbaa !64
  %div1310.lhs.trunc = trunc nsw i32 %add1306 to i16
  %div1310708 = sdiv i16 %div1310.lhs.trunc, 15
  %div1310.sext = sext i16 %div1310708 to i32
  %dy = getelementptr inbounds nuw i8, ptr %arrayidx797, i64 16
  store i32 %div1310.sext, ptr %dy, align 4, !tbaa !65
  %inc1313 = add nsw i32 %n.1, 1
  %cmp1314 = icmp eq i32 %inc1313, 15000
  br i1 %cmp1314, label %if.then1316, label %for.inc1320

if.then1316:                                      ; preds = %if.then795
  %238 = load ptr, ptr @stderr, align 8, !tbaa !5
  %239 = tail call i64 @fwrite(ptr nonnull @.str.29, i64 18, i64 1, ptr %238) #23
  tail call void @exit(i32 noundef 1) #27
  unreachable

for.inc1320:                                      ; preds = %for.body369, %if.then795, %land.lhs.true786, %land.lhs.true777, %land.lhs.true768, %land.lhs.true760, %land.lhs.true751, %land.lhs.true742, %land.lhs.true733, %land.lhs.true724, %land.lhs.true715, %land.lhs.true706, %land.lhs.true698, %land.lhs.true689, %land.lhs.true680, %land.lhs.true671, %land.lhs.true662, %land.lhs.true653, %land.lhs.true644, %land.lhs.true636, %land.lhs.true627, %land.lhs.true618, %land.lhs.true609, %land.lhs.true601, %land.lhs.true593, %land.lhs.true585, %land.lhs.true577, %land.lhs.true569, %land.lhs.true561, %land.lhs.true552, %land.lhs.true543, %land.lhs.true534, %land.lhs.true526, %land.lhs.true517, %land.lhs.true508, %land.lhs.true499, %land.lhs.true490, %land.lhs.true481, %land.lhs.true472, %land.lhs.true464, %land.lhs.true455, %land.lhs.true446, %land.lhs.true437, %land.lhs.true428, %land.lhs.true419, %land.lhs.true410, %land.lhs.true402, %land.lhs.true393, %land.lhs.true, %if.then376
  %n.2 = phi i32 [ %inc1313, %if.then795 ], [ %n.1, %land.lhs.true786 ], [ %n.1, %land.lhs.true777 ], [ %n.1, %land.lhs.true768 ], [ %n.1, %land.lhs.true760 ], [ %n.1, %land.lhs.true751 ], [ %n.1, %land.lhs.true742 ], [ %n.1, %land.lhs.true733 ], [ %n.1, %land.lhs.true724 ], [ %n.1, %land.lhs.true715 ], [ %n.1, %land.lhs.true706 ], [ %n.1, %land.lhs.true698 ], [ %n.1, %land.lhs.true689 ], [ %n.1, %land.lhs.true680 ], [ %n.1, %land.lhs.true671 ], [ %n.1, %land.lhs.true662 ], [ %n.1, %land.lhs.true653 ], [ %n.1, %land.lhs.true644 ], [ %n.1, %land.lhs.true636 ], [ %n.1, %land.lhs.true627 ], [ %n.1, %land.lhs.true618 ], [ %n.1, %land.lhs.true609 ], [ %n.1, %land.lhs.true601 ], [ %n.1, %land.lhs.true593 ], [ %n.1, %land.lhs.true585 ], [ %n.1, %land.lhs.true577 ], [ %n.1, %land.lhs.true569 ], [ %n.1, %land.lhs.true561 ], [ %n.1, %land.lhs.true552 ], [ %n.1, %land.lhs.true543 ], [ %n.1, %land.lhs.true534 ], [ %n.1, %land.lhs.true526 ], [ %n.1, %land.lhs.true517 ], [ %n.1, %land.lhs.true508 ], [ %n.1, %land.lhs.true499 ], [ %n.1, %land.lhs.true490 ], [ %n.1, %land.lhs.true481 ], [ %n.1, %land.lhs.true472 ], [ %n.1, %land.lhs.true464 ], [ %n.1, %land.lhs.true455 ], [ %n.1, %land.lhs.true446 ], [ %n.1, %land.lhs.true437 ], [ %n.1, %land.lhs.true428 ], [ %n.1, %land.lhs.true419 ], [ %n.1, %land.lhs.true410 ], [ %n.1, %land.lhs.true402 ], [ %n.1, %land.lhs.true393 ], [ %n.1, %land.lhs.true ], [ %n.1, %if.then376 ], [ %n.1, %for.body369 ]
  %indvars.iv.next726 = add nuw nsw i64 %indvars.iv725, 1
  br label %for.cond365, !llvm.loop !71

for.end1325:                                      ; preds = %for.cond360
  %idxprom1326 = sext i32 %n.0 to i64
  %info1328 = getelementptr inbounds %struct.anon, ptr %corner_list, i64 %idxprom1326, i32 2
  store i32 7, ptr %info1328, align 4, !tbaa !56
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @main1(i32 noundef %argc, ptr noundef readonly captures(none) %argv) local_unnamed_addr #0 {
entry:
  %in = alloca ptr, align 8
  %bp = alloca ptr, align 8
  %x_size = alloca i32, align 4
  %y_size = alloca i32, align 4
  %corner_list = alloca [15000 x %struct.anon], align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %in) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %bp) #22
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
  br label %while.cond

while.cond:                                       ; preds = %if.end37, %if.end
  %argindex.0 = phi i32 [ 3, %if.end ], [ %inc38, %if.end37 ]
  %bt.0 = phi i32 [ 20, %if.end ], [ %bt.1, %if.end37 ]
  %principle.0 = phi i32 [ 0, %if.end ], [ %principle.1, %if.end37 ]
  %thin_post_proc.0 = phi i32 [ 1, %if.end ], [ %thin_post_proc.1, %if.end37 ]
  %three_by_three.0 = phi i32 [ 0, %if.end ], [ %three_by_three.1, %if.end37 ]
  %drawing_mode.0 = phi i32 [ 0, %if.end ], [ %drawing_mode.1, %if.end37 ]
  %susan_quick.0 = phi i32 [ 0, %if.end ], [ %susan_quick.1, %if.end37 ]
  %dt.0 = phi float [ 4.000000e+00, %if.end ], [ %dt.1, %if.end37 ]
  %mode.0 = phi i32 [ 0, %if.end ], [ %mode.1, %if.end37 ]
  %cmp1 = icmp slt i32 %argindex.0, %argc
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %idxprom = sext i32 %argindex.0 to i64
  %arrayidx2 = getelementptr inbounds ptr, ptr %argv, i64 %idxprom
  %1 = load ptr, ptr %arrayidx2, align 8, !tbaa !18
  %2 = load i8, ptr %1, align 1, !tbaa !21
  %cmp3 = icmp eq i8 %2, 45
  br i1 %cmp3, label %if.then5, label %if.else

if.then5:                                         ; preds = %while.body
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %1, i64 1
  %3 = load i8, ptr %incdec.ptr, align 1, !tbaa !21
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
  %inc = add nsw i32 %argindex.0, 1
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
  %inc28 = add nsw i32 %argindex.0, 1
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
  %argindex.1 = phi i32 [ %argindex.0, %if.then5 ], [ %argindex.0, %sw.bb ], [ %argindex.0, %sw.bb7 ], [ %argindex.0, %sw.bb8 ], [ %argindex.0, %sw.bb9 ], [ %argindex.0, %sw.bb10 ], [ %argindex.0, %sw.bb11 ], [ %argindex.0, %sw.bb12 ], [ %argindex.0, %sw.bb13 ], [ %inc, %if.then25 ], [ %inc, %if.end18 ], [ %inc28, %if.end33 ]
  %bt.1 = phi i32 [ %bt.0, %if.then5 ], [ %bt.0, %sw.bb ], [ %bt.0, %sw.bb7 ], [ %bt.0, %sw.bb8 ], [ %bt.0, %sw.bb9 ], [ %bt.0, %sw.bb10 ], [ %bt.0, %sw.bb11 ], [ %bt.0, %sw.bb12 ], [ %bt.0, %sw.bb13 ], [ %bt.0, %if.then25 ], [ %bt.0, %if.end18 ], [ %conv.i, %if.end33 ]
  %principle.1 = phi i32 [ %principle.0, %if.then5 ], [ %principle.0, %sw.bb ], [ %principle.0, %sw.bb7 ], [ %principle.0, %sw.bb8 ], [ 1, %sw.bb9 ], [ %principle.0, %sw.bb10 ], [ %principle.0, %sw.bb11 ], [ %principle.0, %sw.bb12 ], [ %principle.0, %sw.bb13 ], [ %principle.0, %if.then25 ], [ %principle.0, %if.end18 ], [ %principle.0, %if.end33 ]
  %thin_post_proc.1 = phi i32 [ %thin_post_proc.0, %if.then5 ], [ %thin_post_proc.0, %sw.bb ], [ %thin_post_proc.0, %sw.bb7 ], [ %thin_post_proc.0, %sw.bb8 ], [ %thin_post_proc.0, %sw.bb9 ], [ 0, %sw.bb10 ], [ %thin_post_proc.0, %sw.bb11 ], [ %thin_post_proc.0, %sw.bb12 ], [ %thin_post_proc.0, %sw.bb13 ], [ %thin_post_proc.0, %if.then25 ], [ %thin_post_proc.0, %if.end18 ], [ %thin_post_proc.0, %if.end33 ]
  %three_by_three.1 = phi i32 [ %three_by_three.0, %if.then5 ], [ %three_by_three.0, %sw.bb ], [ %three_by_three.0, %sw.bb7 ], [ %three_by_three.0, %sw.bb8 ], [ %three_by_three.0, %sw.bb9 ], [ %three_by_three.0, %sw.bb10 ], [ %three_by_three.0, %sw.bb11 ], [ 1, %sw.bb12 ], [ %three_by_three.0, %sw.bb13 ], [ 1, %if.then25 ], [ %three_by_three.0, %if.end18 ], [ %three_by_three.0, %if.end33 ]
  %drawing_mode.1 = phi i32 [ %drawing_mode.0, %if.then5 ], [ %drawing_mode.0, %sw.bb ], [ %drawing_mode.0, %sw.bb7 ], [ %drawing_mode.0, %sw.bb8 ], [ %drawing_mode.0, %sw.bb9 ], [ %drawing_mode.0, %sw.bb10 ], [ 1, %sw.bb11 ], [ %drawing_mode.0, %sw.bb12 ], [ %drawing_mode.0, %sw.bb13 ], [ %drawing_mode.0, %if.then25 ], [ %drawing_mode.0, %if.end18 ], [ %drawing_mode.0, %if.end33 ]
  %susan_quick.1 = phi i32 [ %susan_quick.0, %if.then5 ], [ %susan_quick.0, %sw.bb ], [ %susan_quick.0, %sw.bb7 ], [ %susan_quick.0, %sw.bb8 ], [ %susan_quick.0, %sw.bb9 ], [ %susan_quick.0, %sw.bb10 ], [ %susan_quick.0, %sw.bb11 ], [ %susan_quick.0, %sw.bb12 ], [ 1, %sw.bb13 ], [ %susan_quick.0, %if.then25 ], [ %susan_quick.0, %if.end18 ], [ %susan_quick.0, %if.end33 ]
  %dt.1 = phi float [ %dt.0, %if.then5 ], [ %dt.0, %sw.bb ], [ %dt.0, %sw.bb7 ], [ %dt.0, %sw.bb8 ], [ %dt.0, %sw.bb9 ], [ %dt.0, %sw.bb10 ], [ %dt.0, %sw.bb11 ], [ %dt.0, %sw.bb12 ], [ %dt.0, %sw.bb13 ], [ %conv22, %if.then25 ], [ %conv22, %if.end18 ], [ %dt.0, %if.end33 ]
  %mode.1 = phi i32 [ %mode.0, %if.then5 ], [ 0, %sw.bb ], [ 1, %sw.bb7 ], [ 2, %sw.bb8 ], [ %mode.0, %sw.bb9 ], [ %mode.0, %sw.bb10 ], [ %mode.0, %sw.bb11 ], [ %mode.0, %sw.bb12 ], [ %mode.0, %sw.bb13 ], [ %mode.0, %if.then25 ], [ %mode.0, %if.end18 ], [ %mode.0, %if.end33 ]
  %inc38 = add nsw i32 %argindex.1, 1
  br label %while.cond, !llvm.loop !72

while.end:                                        ; preds = %while.cond
  %cmp39 = icmp eq i32 %principle.0, 1
  %cmp41 = icmp eq i32 %mode.0, 0
  %or.cond = select i1 %cmp39, i1 %cmp41, i1 false
  %spec.store.select = select i1 %or.cond, i32 1, i32 %mode.0
  switch i32 %spec.store.select, label %default.unreachable97 [
    i32 0, label %sw.bb45
    i32 1, label %sw.bb46
    i32 2, label %sw.bb70
  ]

sw.bb45:                                          ; preds = %while.end
  call void @setup_brightness_lut(ptr noundef nonnull %bp, i32 noundef %bt.0, i32 noundef 2)
  %6 = load ptr, ptr %in, align 8, !tbaa !18
  %7 = load i32, ptr %x_size, align 4, !tbaa !16
  %8 = load i32, ptr %y_size, align 4, !tbaa !16
  %9 = load ptr, ptr %bp, align 8, !tbaa !18
  tail call void @susan_smoothing(i32 noundef %three_by_three.0, ptr noundef %6, float noundef %dt.0, i32 noundef %7, i32 noundef %8, ptr noundef %9)
  %add.ptr.i = getelementptr inbounds i8, ptr %9, i64 -258
  br label %sw.epilog86

sw.bb46:                                          ; preds = %while.end
  %10 = load i32, ptr %x_size, align 4, !tbaa !16
  %11 = load i32, ptr %y_size, align 4, !tbaa !16
  %mul = mul nsw i32 %11, %10
  %conv47 = sext i32 %mul to i64
  %mul48 = shl nsw i64 %conv47, 2
  %call49 = tail call noalias ptr @malloc(i64 noundef %mul48) #26
  call void @setup_brightness_lut(ptr noundef nonnull %bp, i32 noundef %bt.0, i32 noundef 6)
  %tobool.not = icmp eq i32 %principle.0, 0
  br i1 %tobool.not, label %if.else56, label %if.then50

if.then50:                                        ; preds = %sw.bb46
  %tobool51.not = icmp eq i32 %three_by_three.0, 0
  %12 = load ptr, ptr %in, align 8, !tbaa !18
  %13 = load ptr, ptr %bp, align 8, !tbaa !18
  br i1 %tobool51.not, label %if.else53, label %if.then52

if.then52:                                        ; preds = %if.then50
  tail call void @susan_principle_small(ptr noundef %12, ptr noundef %call49, ptr noundef %13, i32 poison, i32 noundef %10, i32 noundef %11)
  br label %if.end54

if.else53:                                        ; preds = %if.then50
  tail call void @susan_principle(ptr noundef %12, ptr noundef %call49, ptr noundef %13, i32 noundef 2650, i32 noundef %10, i32 noundef %11)
  br label %if.end54

if.end54:                                         ; preds = %if.else53, %if.then52
  tail call void @int_to_uchar(ptr noundef %call49, ptr noundef %12, i32 noundef %mul)
  br label %if.end69

if.else56:                                        ; preds = %sw.bb46
  %call59 = tail call noalias ptr @malloc(i64 noundef %conv47) #26
  tail call void @llvm.memset.p0.i64(ptr align 1 %call59, i8 100, i64 %conv47, i1 false)
  %tobool62.not = icmp eq i32 %three_by_three.0, 0
  %14 = load ptr, ptr %in, align 8, !tbaa !18
  %15 = load ptr, ptr %bp, align 8, !tbaa !18
  br i1 %tobool62.not, label %if.else64, label %if.then63

if.then63:                                        ; preds = %if.else56
  tail call void @susan_edges_small(ptr noundef %14, ptr noundef %call49, ptr noundef %call59, ptr noundef %15, i32 poison, i32 noundef %10, i32 noundef %11)
  br label %if.end65

if.else64:                                        ; preds = %if.else56
  tail call void @susan_edges(ptr noundef %14, ptr noundef %call49, ptr noundef %call59, ptr noundef %15, i32 noundef 2650, i32 noundef %10, i32 noundef %11)
  br label %if.end65

if.end65:                                         ; preds = %if.else64, %if.then63
  %tobool66.not = icmp eq i32 %thin_post_proc.0, 0
  br i1 %tobool66.not, label %if.end68, label %if.then67

if.then67:                                        ; preds = %if.end65
  tail call void @susan_thin(ptr noundef %call49, ptr noundef %call59, i32 noundef %10, i32 noundef %11)
  br label %if.end68

if.end68:                                         ; preds = %if.then67, %if.end65
  tail call void @edge_draw(ptr noundef %14, ptr noundef %call59, i32 noundef %10, i32 noundef %11, i32 noundef %drawing_mode.0)
  tail call void @free(ptr noundef %call59) #22
  br label %if.end69

if.end69:                                         ; preds = %if.end68, %if.end54
  %16 = phi ptr [ %14, %if.end68 ], [ %12, %if.end54 ]
  %17 = phi ptr [ %15, %if.end68 ], [ %13, %if.end54 ]
  %add.ptr.i47 = getelementptr inbounds i8, ptr %17, i64 -258
  tail call void @free(ptr noundef nonnull %add.ptr.i47) #22
  br label %sw.epilog86

sw.bb70:                                          ; preds = %while.end
  %18 = load i32, ptr %x_size, align 4, !tbaa !16
  %19 = load i32, ptr %y_size, align 4, !tbaa !16
  %mul71 = mul nsw i32 %19, %18
  %conv72 = sext i32 %mul71 to i64
  %mul73 = shl nsw i64 %conv72, 2
  %call74 = tail call noalias ptr @malloc(i64 noundef %mul73) #26
  call void @setup_brightness_lut(ptr noundef nonnull %bp, i32 noundef %bt.0, i32 noundef 6)
  %tobool75.not = icmp eq i32 %principle.0, 0
  br i1 %tobool75.not, label %if.else78, label %if.then76

if.then76:                                        ; preds = %sw.bb70
  %20 = load ptr, ptr %in, align 8, !tbaa !18
  %21 = load ptr, ptr %bp, align 8, !tbaa !18
  tail call void @susan_principle(ptr noundef %20, ptr noundef %call74, ptr noundef %21, i32 noundef 1850, i32 noundef %18, i32 noundef %19)
  tail call void @int_to_uchar(ptr noundef %call74, ptr noundef %20, i32 noundef %mul71)
  br label %if.end85

if.else78:                                        ; preds = %sw.bb70
  %tobool79.not = icmp eq i32 %susan_quick.0, 0
  %22 = load ptr, ptr %in, align 8, !tbaa !18
  %23 = load ptr, ptr %bp, align 8, !tbaa !18
  br i1 %tobool79.not, label %if.else81, label %if.then80

if.then80:                                        ; preds = %if.else78
  call void @susan_corners_quick(ptr noundef %22, ptr noundef %call74, ptr noundef %23, i32 noundef 1850, ptr noundef nonnull %corner_list, i32 noundef %18, i32 noundef %19)
  br label %if.end83

if.else81:                                        ; preds = %if.else78
  call void @susan_corners(ptr noundef %22, ptr noundef %call74, ptr noundef %23, i32 noundef 1850, ptr noundef nonnull %corner_list, i32 noundef %18, i32 noundef %19)
  br label %if.end83

if.end83:                                         ; preds = %if.else81, %if.then80
  call void @corner_draw(ptr noundef %22, ptr noundef nonnull %corner_list, i32 noundef %18, i32 noundef %drawing_mode.0)
  br label %if.end85

if.end85:                                         ; preds = %if.end83, %if.then76
  %24 = phi ptr [ %22, %if.end83 ], [ %20, %if.then76 ]
  %25 = phi ptr [ %23, %if.end83 ], [ %21, %if.then76 ]
  %add.ptr.i48 = getelementptr inbounds i8, ptr %25, i64 -258
  tail call void @free(ptr noundef nonnull %add.ptr.i48) #22
  br label %sw.epilog86

default.unreachable97:                            ; preds = %while.end
  unreachable

sw.epilog86:                                      ; preds = %if.end85, %if.end69, %sw.bb45
  %call74.sink = phi ptr [ %call74, %if.end85 ], [ %call49, %if.end69 ], [ %add.ptr.i, %sw.bb45 ]
  %26 = phi i32 [ %19, %if.end85 ], [ %11, %if.end69 ], [ %8, %sw.bb45 ]
  %27 = phi i32 [ %18, %if.end85 ], [ %10, %if.end69 ], [ %7, %sw.bb45 ]
  %28 = phi ptr [ %24, %if.end85 ], [ %16, %if.end69 ], [ %6, %sw.bb45 ]
  tail call void @free(ptr noundef %call74.sink) #22
  %arrayidx87 = getelementptr inbounds nuw i8, ptr %argv, i64 16
  %29 = load ptr, ptr %arrayidx87, align 8, !tbaa !18
  tail call void @put_image(ptr noundef %29, ptr noundef %28, i32 noundef %27, i32 noundef %26)
  tail call void @free(ptr noundef %28) #22
  call void @llvm.lifetime.end.p0(i64 360000, ptr nonnull %corner_list) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y_size) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x_size) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %bp) #22
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
!20 = distinct !{!20, !13}
!21 = !{!8, !8, i64 0}
!22 = distinct !{!22, !13}
!23 = distinct !{!23, !13}
!24 = distinct !{!24, !13}
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
!44 = distinct !{!44, !13}
!45 = distinct !{!45, !13}
!46 = distinct !{!46, !13}
!47 = distinct !{!47, !13}
!48 = distinct !{!48, !13}
!49 = distinct !{!49, !13}
!50 = distinct !{!50, !13}
!51 = distinct !{!51, !13}
!52 = distinct !{!52, !13}
!53 = distinct !{!53, !13}
!54 = distinct !{!54, !13}
!55 = distinct !{!55, !13}
!56 = !{!57, !17, i64 8}
!57 = !{!"", !17, i64 0, !17, i64 4, !17, i64 8, !17, i64 12, !17, i64 16, !17, i64 20}
!58 = !{!57, !17, i64 4}
!59 = !{!57, !17, i64 0}
!60 = distinct !{!60, !13}
!61 = distinct !{!61, !13}
!62 = distinct !{!62, !13}
!63 = distinct !{!63, !13}
!64 = !{!57, !17, i64 12}
!65 = !{!57, !17, i64 16}
!66 = !{!57, !17, i64 20}
!67 = distinct !{!67, !13}
!68 = distinct !{!68, !13}
!69 = distinct !{!69, !13}
!70 = distinct !{!70, !13}
!71 = distinct !{!71, !13}
!72 = distinct !{!72, !13}
