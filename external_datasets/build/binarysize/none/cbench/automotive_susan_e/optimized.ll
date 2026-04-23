; ModuleID = '/root/exp/RFunipassLab/external_datasets/build/ir_build/cbench/automotive_susan_e/automotive_susan_e.linked.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"_finfo_dataset\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"rt\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"\0AError: Can't find dataset!\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"Usage: susan <in.pgm> <out.pgm> [options]\0A\0A\00", align 1
@.str.1.5 = private unnamed_addr constant [31 x i8] c"-s : Smoothing mode (default)\0A\00", align 1
@.str.2.6 = private unnamed_addr constant [17 x i8] c"-e : Edges mode\0A\00", align 1
@.str.3.7 = private unnamed_addr constant [20 x i8] c"-c : Corners mode\0A\0A\00", align 1
@.str.4.8 = private unnamed_addr constant [67 x i8] c"See source code for more information about setting the thresholds\0A\00", align 1
@.str.5 = private unnamed_addr constant [60 x i8] c"-t <thresh> : Brightness threshold, all modes (default=20)\0A\00", align 1
@.str.6 = private unnamed_addr constant [107 x i8] c"-d <thresh> : Distance threshold, smoothing mode, (default=4) (use next option instead for flat 3x3 mask)\0A\00", align 1
@.str.7 = private unnamed_addr constant [49 x i8] c"-3 : Use flat 3x3 mask, edges or smoothing mode\0A\00", align 1
@.str.8 = private unnamed_addr constant [79 x i8] c"-n : No post-processing on the binary edge map (runs much faster); edges mode\0A\00", align 1
@.str.9 = private unnamed_addr constant [111 x i8] c"-q : Use faster (and usually stabler) corner mode; edge-like corner suppression not carried out; corners mode\0A\00", align 1
@.str.10 = private unnamed_addr constant [108 x i8] c"-b : Mark corners/edges with single black points instead of black with white border; corners or edges mode\0A\00", align 1
@.str.11 = private unnamed_addr constant [91 x i8] c"-p : Output initial enhancement image only; corners or edges mode (default is edges mode)\0A\00", align 1
@.str.12 = private unnamed_addr constant [77 x i8] c"\0ASUSAN Version 2l (C) 1995-1997 Stephen Smith, DRA UK. steve@fmrib.ox.ac.uk\0A\00", align 1
@stderr = external global ptr, align 8
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
@.str.26 = private unnamed_addr constant [61 x i8] c"Either reduce it to <=15 or recompile with variable \22total\22\0A\00", align 1
@.str.27 = private unnamed_addr constant [40 x i8] c"as a float: see top \22defines\22 section.\0A\00", align 1
@.str.28 = private unnamed_addr constant [65 x i8] c"Mask size (1.5*distance_thresh+1=%d) too big for image (%dx%d).\0A\00", align 1
@.str.29 = private unnamed_addr constant [19 x i8] c"Too many corners.\0A\00", align 1
@.str.30 = private unnamed_addr constant [26 x i8] c"No argument following -d\0A\00", align 1
@.str.31 = private unnamed_addr constant [26 x i8] c"No argument following -t\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %loop_wrap = alloca ptr, align 8
  %loop_wrap1 = alloca i64, align 8
  %loop_wrap2 = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4, !tbaa !5
  store ptr %argv, ptr %argv.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %loop_wrap) #10
  store ptr null, ptr %loop_wrap, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 8, ptr %loop_wrap1) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %loop_wrap2) #10
  %call = call noalias ptr @fopen(ptr noundef @.str, ptr noundef @.str.1)
  store ptr %call, ptr %loop_wrap, align 8, !tbaa !13
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr @stderr, align 8, !tbaa !13
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef @.str.2) #10
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %loop_wrap, align 8, !tbaa !13
  %call2 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %1, ptr noundef @.str.3, ptr noundef %loop_wrap2)
  %2 = load ptr, ptr %loop_wrap, align 8, !tbaa !13
  %call3 = call i32 @fclose(ptr noundef %2)
  store i64 0, ptr %loop_wrap1, align 8, !tbaa !15
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i64, ptr %loop_wrap1, align 8, !tbaa !15
  %4 = load i64, ptr %loop_wrap2, align 8, !tbaa !15
  %cmp4 = icmp slt i64 %3, %4
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, ptr %argc.addr, align 4, !tbaa !5
  %6 = load ptr, ptr %argv.addr, align 8, !tbaa !9
  call void @main1(i32 noundef %5, ptr noundef %6)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i64, ptr %loop_wrap1, align 8, !tbaa !15
  %inc = add nsw i64 %7, 1
  store i64 %inc, ptr %loop_wrap1, align 8, !tbaa !15
  br label %for.cond, !llvm.loop !17

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %loop_wrap2) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %loop_wrap1) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %loop_wrap) #10
  %8 = load i32, ptr %retval, align 4
  ret i32 %8
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noalias ptr @fopen(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind
declare i32 @fprintf(ptr noundef, ptr noundef, ...) #3

declare i32 @__isoc99_fscanf(ptr noundef, ptr noundef, ...) #2

declare i32 @fclose(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local void @usage() #0 {
entry:
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.1.5)
  %call2 = call i32 (ptr, ...) @printf(ptr noundef @.str.2.6)
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str.3.7)
  %call4 = call i32 (ptr, ...) @printf(ptr noundef @.str.4.8)
  %call5 = call i32 (ptr, ...) @printf(ptr noundef @.str.5)
  %call6 = call i32 (ptr, ...) @printf(ptr noundef @.str.6)
  %call7 = call i32 (ptr, ...) @printf(ptr noundef @.str.7)
  %call8 = call i32 (ptr, ...) @printf(ptr noundef @.str.8)
  %call9 = call i32 (ptr, ...) @printf(ptr noundef @.str.9)
  %call10 = call i32 (ptr, ...) @printf(ptr noundef @.str.10)
  %call11 = call i32 (ptr, ...) @printf(ptr noundef @.str.11)
  %call12 = call i32 (ptr, ...) @printf(ptr noundef @.str.12)
  call void @exit(i32 noundef 0) #11
  unreachable
}

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) #4

; Function Attrs: nounwind uwtable
define dso_local i32 @getint(ptr noundef %fd) #0 {
entry:
  %retval = alloca i32, align 4
  %fd.addr = alloca ptr, align 8
  %c = alloca i32, align 4
  %i = alloca i32, align 4
  %dummy = alloca [10000 x i8], align 16
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %fd, ptr %fd.addr, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 4, ptr %c) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #10
  call void @llvm.lifetime.start.p0(i64 10000, ptr %dummy) #10
  %0 = load ptr, ptr %fd.addr, align 8, !tbaa !13
  %call = call i32 @getc(ptr noundef %0)
  store i32 %call, ptr %c, align 4, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %if.end9, %entry
  br label %while.body

while.body:                                       ; preds = %while.cond
  %1 = load i32, ptr %c, align 4, !tbaa !5
  %cmp = icmp eq i32 %1, 35
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %arraydecay = getelementptr inbounds [10000 x i8], ptr %dummy, i64 0, i64 0
  %2 = load ptr, ptr %fd.addr, align 8, !tbaa !13
  %call1 = call ptr @fgets(ptr noundef %arraydecay, i32 noundef 9000, ptr noundef %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %3 = load i32, ptr %c, align 4, !tbaa !5
  %cmp2 = icmp eq i32 %3, -1
  br i1 %cmp2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %4 = load ptr, ptr @stderr, align 8, !tbaa !13
  %call4 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef @.str.13, ptr noundef @.str.14) #10
  call void @exit(i32 noundef 0) #11
  unreachable

if.end5:                                          ; preds = %if.end
  %5 = load i32, ptr %c, align 4, !tbaa !5
  %cmp6 = icmp sge i32 %5, 48
  br i1 %cmp6, label %land.lhs.true, label %if.end9

land.lhs.true:                                    ; preds = %if.end5
  %6 = load i32, ptr %c, align 4, !tbaa !5
  %cmp7 = icmp sle i32 %6, 57
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %land.lhs.true
  br label %while.end

if.end9:                                          ; preds = %land.lhs.true, %if.end5
  %7 = load ptr, ptr %fd.addr, align 8, !tbaa !13
  %call10 = call i32 @getc(ptr noundef %7)
  store i32 %call10, ptr %c, align 4, !tbaa !5
  br label %while.cond, !llvm.loop !19

while.end:                                        ; preds = %if.then8
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %while.cond11

while.cond11:                                     ; preds = %if.end20, %while.end
  br label %while.body12

while.body12:                                     ; preds = %while.cond11
  %8 = load i32, ptr %i, align 4, !tbaa !5
  %mul = mul nsw i32 %8, 10
  %9 = load i32, ptr %c, align 4, !tbaa !5
  %sub = sub nsw i32 %9, 48
  %add = add nsw i32 %mul, %sub
  store i32 %add, ptr %i, align 4, !tbaa !5
  %10 = load ptr, ptr %fd.addr, align 8, !tbaa !13
  %call13 = call i32 @getc(ptr noundef %10)
  store i32 %call13, ptr %c, align 4, !tbaa !5
  %11 = load i32, ptr %c, align 4, !tbaa !5
  %cmp14 = icmp eq i32 %11, -1
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %while.body12
  %12 = load i32, ptr %i, align 4, !tbaa !5
  store i32 %12, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end16:                                         ; preds = %while.body12
  %13 = load i32, ptr %c, align 4, !tbaa !5
  %cmp17 = icmp slt i32 %13, 48
  br i1 %cmp17, label %if.then19, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end16
  %14 = load i32, ptr %c, align 4, !tbaa !5
  %cmp18 = icmp sgt i32 %14, 57
  br i1 %cmp18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %lor.lhs.false, %if.end16
  br label %while.end21

if.end20:                                         ; preds = %lor.lhs.false
  br label %while.cond11, !llvm.loop !20

while.end21:                                      ; preds = %if.then19
  %15 = load i32, ptr %i, align 4, !tbaa !5
  store i32 %15, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %while.end21, %if.then15
  call void @llvm.lifetime.end.p0(i64 10000, ptr %dummy) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %c) #10
  %16 = load i32, ptr %retval, align 4
  ret i32 %16
}

declare i32 @getc(ptr noundef) #2

declare ptr @fgets(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define dso_local void @get_image(ptr noundef %filename, ptr noundef %in, ptr noundef %x_size, ptr noundef %y_size) #0 {
entry:
  %filename.addr = alloca ptr, align 8
  %in.addr = alloca ptr, align 8
  %x_size.addr = alloca ptr, align 8
  %y_size.addr = alloca ptr, align 8
  %fd = alloca ptr, align 8
  %header = alloca [100 x i8], align 16
  %tmp = alloca i32, align 4
  store ptr %filename, ptr %filename.addr, align 8, !tbaa !21
  store ptr %in, ptr %in.addr, align 8, !tbaa !9
  store ptr %x_size, ptr %x_size.addr, align 8, !tbaa !23
  store ptr %y_size, ptr %y_size.addr, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(i64 8, ptr %fd) #10
  call void @llvm.lifetime.start.p0(i64 100, ptr %header) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %tmp) #10
  %0 = load ptr, ptr %filename.addr, align 8, !tbaa !21
  %call = call noalias ptr @fopen(ptr noundef %0, ptr noundef @.str.15)
  store ptr %call, ptr %fd, align 8, !tbaa !13
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @stderr, align 8, !tbaa !13
  %2 = load ptr, ptr %filename.addr, align 8, !tbaa !21
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str.16, ptr noundef %2) #10
  call void @exit(i32 noundef 0) #11
  unreachable

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %fd, align 8, !tbaa !13
  %call2 = call i32 @fgetc(ptr noundef %3)
  %conv = trunc i32 %call2 to i8
  %arrayidx = getelementptr inbounds [100 x i8], ptr %header, i64 0, i64 0
  store i8 %conv, ptr %arrayidx, align 16, !tbaa !25
  %4 = load ptr, ptr %fd, align 8, !tbaa !13
  %call3 = call i32 @fgetc(ptr noundef %4)
  %conv4 = trunc i32 %call3 to i8
  %arrayidx5 = getelementptr inbounds [100 x i8], ptr %header, i64 0, i64 1
  store i8 %conv4, ptr %arrayidx5, align 1, !tbaa !25
  %arrayidx6 = getelementptr inbounds [100 x i8], ptr %header, i64 0, i64 0
  %5 = load i8, ptr %arrayidx6, align 16, !tbaa !25
  %conv7 = sext i8 %5 to i32
  %cmp8 = icmp eq i32 %conv7, 80
  br i1 %cmp8, label %land.lhs.true, label %if.then14

land.lhs.true:                                    ; preds = %if.end
  %arrayidx10 = getelementptr inbounds [100 x i8], ptr %header, i64 0, i64 1
  %6 = load i8, ptr %arrayidx10, align 1, !tbaa !25
  %conv11 = sext i8 %6 to i32
  %cmp12 = icmp eq i32 %conv11, 53
  br i1 %cmp12, label %if.end16, label %if.then14

if.then14:                                        ; preds = %land.lhs.true, %if.end
  %7 = load ptr, ptr @stderr, align 8, !tbaa !13
  %8 = load ptr, ptr %filename.addr, align 8, !tbaa !21
  %call15 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef @.str.17, ptr noundef %8) #10
  call void @exit(i32 noundef 0) #11
  unreachable

if.end16:                                         ; preds = %land.lhs.true
  %9 = load ptr, ptr %fd, align 8, !tbaa !13
  %call17 = call i32 @getint(ptr noundef %9)
  %10 = load ptr, ptr %x_size.addr, align 8, !tbaa !23
  store i32 %call17, ptr %10, align 4, !tbaa !5
  %11 = load ptr, ptr %fd, align 8, !tbaa !13
  %call18 = call i32 @getint(ptr noundef %11)
  %12 = load ptr, ptr %y_size.addr, align 8, !tbaa !23
  store i32 %call18, ptr %12, align 4, !tbaa !5
  %13 = load ptr, ptr %fd, align 8, !tbaa !13
  %call19 = call i32 @getint(ptr noundef %13)
  store i32 %call19, ptr %tmp, align 4, !tbaa !5
  %14 = load ptr, ptr %x_size.addr, align 8, !tbaa !23
  %15 = load i32, ptr %14, align 4, !tbaa !5
  %16 = load ptr, ptr %y_size.addr, align 8, !tbaa !23
  %17 = load i32, ptr %16, align 4, !tbaa !5
  %mul = mul nsw i32 %15, %17
  %conv20 = sext i32 %mul to i64
  %call21 = call noalias ptr @malloc(i64 noundef %conv20) #12
  %18 = load ptr, ptr %in.addr, align 8, !tbaa !9
  store ptr %call21, ptr %18, align 8, !tbaa !21
  %19 = load ptr, ptr %in.addr, align 8, !tbaa !9
  %20 = load ptr, ptr %19, align 8, !tbaa !21
  %21 = load ptr, ptr %x_size.addr, align 8, !tbaa !23
  %22 = load i32, ptr %21, align 4, !tbaa !5
  %23 = load ptr, ptr %y_size.addr, align 8, !tbaa !23
  %24 = load i32, ptr %23, align 4, !tbaa !5
  %mul22 = mul nsw i32 %22, %24
  %conv23 = sext i32 %mul22 to i64
  %25 = load ptr, ptr %fd, align 8, !tbaa !13
  %call24 = call i64 @fread(ptr noundef %20, i64 noundef 1, i64 noundef %conv23, ptr noundef %25)
  %cmp25 = icmp eq i64 %call24, 0
  br i1 %cmp25, label %if.then27, label %if.end29

if.then27:                                        ; preds = %if.end16
  %26 = load ptr, ptr @stderr, align 8, !tbaa !13
  %27 = load ptr, ptr %filename.addr, align 8, !tbaa !21
  %call28 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %26, ptr noundef @.str.18, ptr noundef %27) #10
  call void @exit(i32 noundef 0) #11
  unreachable

if.end29:                                         ; preds = %if.end16
  %28 = load ptr, ptr %fd, align 8, !tbaa !13
  %call30 = call i32 @fclose(ptr noundef %28)
  call void @llvm.lifetime.end.p0(i64 4, ptr %tmp) #10
  call void @llvm.lifetime.end.p0(i64 100, ptr %header) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %fd) #10
  ret void
}

declare i32 @fgetc(ptr noundef) #2

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #5

declare i64 @fread(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define dso_local void @put_image(ptr noundef %filename, ptr noundef %in, i32 noundef %x_size, i32 noundef %y_size) #0 {
entry:
  %filename.addr = alloca ptr, align 8
  %in.addr = alloca ptr, align 8
  %x_size.addr = alloca i32, align 4
  %y_size.addr = alloca i32, align 4
  %fd = alloca ptr, align 8
  store ptr %filename, ptr %filename.addr, align 8, !tbaa !21
  store ptr %in, ptr %in.addr, align 8, !tbaa !21
  store i32 %x_size, ptr %x_size.addr, align 4, !tbaa !5
  store i32 %y_size, ptr %y_size.addr, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %fd) #10
  %0 = load ptr, ptr %filename.addr, align 8, !tbaa !21
  %call = call noalias ptr @fopen(ptr noundef %0, ptr noundef @.str.19)
  store ptr %call, ptr %fd, align 8, !tbaa !13
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @stderr, align 8, !tbaa !13
  %2 = load ptr, ptr %filename.addr, align 8, !tbaa !21
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str.20, ptr noundef %2) #10
  call void @exit(i32 noundef 0) #11
  unreachable

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %fd, align 8, !tbaa !13
  %call2 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef @.str.21) #10
  %4 = load ptr, ptr %fd, align 8, !tbaa !13
  %5 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %6 = load i32, ptr %y_size.addr, align 4, !tbaa !5
  %call3 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef @.str.22, i32 noundef %5, i32 noundef %6) #10
  %7 = load ptr, ptr %fd, align 8, !tbaa !13
  %call4 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef @.str.23) #10
  %8 = load ptr, ptr %in.addr, align 8, !tbaa !21
  %9 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %10 = load i32, ptr %y_size.addr, align 4, !tbaa !5
  %mul = mul nsw i32 %9, %10
  %conv = sext i32 %mul to i64
  %11 = load ptr, ptr %fd, align 8, !tbaa !13
  %call5 = call i64 @fwrite(ptr noundef %8, i64 noundef %conv, i64 noundef 1, ptr noundef %11)
  %cmp6 = icmp ne i64 %call5, 1
  br i1 %cmp6, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end
  %12 = load ptr, ptr @stderr, align 8, !tbaa !13
  %13 = load ptr, ptr %filename.addr, align 8, !tbaa !21
  %call9 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %12, ptr noundef @.str.24, ptr noundef %13) #10
  call void @exit(i32 noundef 0) #11
  unreachable

if.end10:                                         ; preds = %if.end
  %14 = load ptr, ptr %fd, align 8, !tbaa !13
  %call11 = call i32 @fclose(ptr noundef %14)
  call void @llvm.lifetime.end.p0(i64 8, ptr %fd) #10
  ret void
}

declare i64 @fwrite(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define dso_local void @int_to_uchar(ptr noundef %r, ptr noundef %in, i32 noundef %size) #0 {
entry:
  %r.addr = alloca ptr, align 8
  %in.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %max_r = alloca i32, align 4
  %min_r = alloca i32, align 4
  store ptr %r, ptr %r.addr, align 8, !tbaa !23
  store ptr %in, ptr %in.addr, align 8, !tbaa !21
  store i32 %size, ptr %size.addr, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %max_r) #10
  %0 = load ptr, ptr %r.addr, align 8, !tbaa !23
  %arrayidx = getelementptr inbounds i32, ptr %0, i64 0
  %1 = load i32, ptr %arrayidx, align 4, !tbaa !5
  store i32 %1, ptr %max_r, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %min_r) #10
  %2 = load ptr, ptr %r.addr, align 8, !tbaa !23
  %arrayidx1 = getelementptr inbounds i32, ptr %2, i64 0
  %3 = load i32, ptr %arrayidx1, align 4, !tbaa !5
  store i32 %3, ptr %min_r, align 4, !tbaa !5
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, ptr %i, align 4, !tbaa !5
  %5 = load i32, ptr %size.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %r.addr, align 8, !tbaa !23
  %7 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %7 to i64
  %arrayidx2 = getelementptr inbounds i32, ptr %6, i64 %idxprom
  %8 = load i32, ptr %arrayidx2, align 4, !tbaa !5
  %9 = load i32, ptr %max_r, align 4, !tbaa !5
  %cmp3 = icmp sgt i32 %8, %9
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %10 = load ptr, ptr %r.addr, align 8, !tbaa !23
  %11 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom4 = sext i32 %11 to i64
  %arrayidx5 = getelementptr inbounds i32, ptr %10, i64 %idxprom4
  %12 = load i32, ptr %arrayidx5, align 4, !tbaa !5
  store i32 %12, ptr %max_r, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %13 = load ptr, ptr %r.addr, align 8, !tbaa !23
  %14 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom6 = sext i32 %14 to i64
  %arrayidx7 = getelementptr inbounds i32, ptr %13, i64 %idxprom6
  %15 = load i32, ptr %arrayidx7, align 4, !tbaa !5
  %16 = load i32, ptr %min_r, align 4, !tbaa !5
  %cmp8 = icmp slt i32 %15, %16
  br i1 %cmp8, label %if.then9, label %if.end12

if.then9:                                         ; preds = %if.end
  %17 = load ptr, ptr %r.addr, align 8, !tbaa !23
  %18 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom10 = sext i32 %18 to i64
  %arrayidx11 = getelementptr inbounds i32, ptr %17, i64 %idxprom10
  %19 = load i32, ptr %arrayidx11, align 4, !tbaa !5
  store i32 %19, ptr %min_r, align 4, !tbaa !5
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end12
  %20 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %20, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !26

for.end:                                          ; preds = %for.cond
  %21 = load i32, ptr %min_r, align 4, !tbaa !5
  %22 = load i32, ptr %max_r, align 4, !tbaa !5
  %sub = sub nsw i32 %22, %21
  store i32 %sub, ptr %max_r, align 4, !tbaa !5
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc21, %for.end
  %23 = load i32, ptr %i, align 4, !tbaa !5
  %24 = load i32, ptr %size.addr, align 4, !tbaa !5
  %cmp14 = icmp slt i32 %23, %24
  br i1 %cmp14, label %for.body15, label %for.end23

for.body15:                                       ; preds = %for.cond13
  %25 = load ptr, ptr %r.addr, align 8, !tbaa !23
  %26 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom16 = sext i32 %26 to i64
  %arrayidx17 = getelementptr inbounds i32, ptr %25, i64 %idxprom16
  %27 = load i32, ptr %arrayidx17, align 4, !tbaa !5
  %28 = load i32, ptr %min_r, align 4, !tbaa !5
  %sub18 = sub nsw i32 %27, %28
  %mul = mul nsw i32 %sub18, 255
  %29 = load i32, ptr %max_r, align 4, !tbaa !5
  %div = sdiv i32 %mul, %29
  %conv = trunc i32 %div to i8
  %30 = load ptr, ptr %in.addr, align 8, !tbaa !21
  %31 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom19 = sext i32 %31 to i64
  %arrayidx20 = getelementptr inbounds i8, ptr %30, i64 %idxprom19
  store i8 %conv, ptr %arrayidx20, align 1, !tbaa !25
  br label %for.inc21

for.inc21:                                        ; preds = %for.body15
  %32 = load i32, ptr %i, align 4, !tbaa !5
  %inc22 = add nsw i32 %32, 1
  store i32 %inc22, ptr %i, align 4, !tbaa !5
  br label %for.cond13, !llvm.loop !27

for.end23:                                        ; preds = %for.cond13
  call void @llvm.lifetime.end.p0(i64 4, ptr %min_r) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %max_r) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #10
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @setup_brightness_lut(ptr noundef %bp, i32 noundef %thresh, i32 noundef %form) #0 {
entry:
  %bp.addr = alloca ptr, align 8
  %thresh.addr = alloca i32, align 4
  %form.addr = alloca i32, align 4
  %k = alloca i32, align 4
  %temp = alloca double, align 8
  store ptr %bp, ptr %bp.addr, align 8, !tbaa !9
  store i32 %thresh, ptr %thresh.addr, align 4, !tbaa !5
  store i32 %form, ptr %form.addr, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %temp) #10
  %call = call noalias ptr @malloc(i64 noundef 516) #12
  %0 = load ptr, ptr %bp.addr, align 8, !tbaa !9
  store ptr %call, ptr %0, align 8, !tbaa !21
  %1 = load ptr, ptr %bp.addr, align 8, !tbaa !9
  %2 = load ptr, ptr %1, align 8, !tbaa !21
  %add.ptr = getelementptr inbounds i8, ptr %2, i64 258
  %3 = load ptr, ptr %bp.addr, align 8, !tbaa !9
  store ptr %add.ptr, ptr %3, align 8, !tbaa !21
  store i32 -256, ptr %k, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, ptr %k, align 4, !tbaa !5
  %cmp = icmp slt i32 %4, 257
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, ptr %k, align 4, !tbaa !5
  %conv = sitofp i32 %5 to float
  %6 = load i32, ptr %thresh.addr, align 4, !tbaa !5
  %conv1 = sitofp i32 %6 to float
  %div = fdiv float %conv, %conv1
  %conv2 = fpext float %div to double
  store double %conv2, ptr %temp, align 8, !tbaa !28
  %7 = load double, ptr %temp, align 8, !tbaa !28
  %8 = load double, ptr %temp, align 8, !tbaa !28
  %mul = fmul double %7, %8
  store double %mul, ptr %temp, align 8, !tbaa !28
  %9 = load i32, ptr %form.addr, align 4, !tbaa !5
  %cmp3 = icmp eq i32 %9, 6
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %10 = load double, ptr %temp, align 8, !tbaa !28
  %11 = load double, ptr %temp, align 8, !tbaa !28
  %mul5 = fmul double %10, %11
  %12 = load double, ptr %temp, align 8, !tbaa !28
  %mul6 = fmul double %mul5, %12
  store double %mul6, ptr %temp, align 8, !tbaa !28
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %13 = load double, ptr %temp, align 8, !tbaa !28
  %fneg = fneg double %13
  %call7 = call double @exp(double noundef %fneg) #10, !tbaa !5
  %mul8 = fmul double 1.000000e+02, %call7
  store double %mul8, ptr %temp, align 8, !tbaa !28
  %14 = load double, ptr %temp, align 8, !tbaa !28
  %conv9 = fptoui double %14 to i8
  %15 = load ptr, ptr %bp.addr, align 8, !tbaa !9
  %16 = load ptr, ptr %15, align 8, !tbaa !21
  %17 = load i32, ptr %k, align 4, !tbaa !5
  %idx.ext = sext i32 %17 to i64
  %add.ptr10 = getelementptr inbounds i8, ptr %16, i64 %idx.ext
  store i8 %conv9, ptr %add.ptr10, align 1, !tbaa !25
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %18 = load i32, ptr %k, align 4, !tbaa !5
  %inc = add nsw i32 %18, 1
  store i32 %inc, ptr %k, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !30

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %temp) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #10
  ret void
}

; Function Attrs: nounwind
declare double @exp(double noundef) #3

; Function Attrs: nounwind uwtable
define dso_local void @free_brightness_lut(ptr noundef %bp) #0 {
entry:
  %bp.addr = alloca ptr, align 8
  store ptr %bp, ptr %bp.addr, align 8, !tbaa !21
  %0 = load ptr, ptr %bp.addr, align 8, !tbaa !21
  %add.ptr = getelementptr inbounds i8, ptr %0, i64 -258
  call void @free(ptr noundef %add.ptr) #10
  ret void
}

; Function Attrs: nounwind
declare void @free(ptr noundef) #3

; Function Attrs: nounwind uwtable
define dso_local void @susan_principle(ptr noundef %in, ptr noundef %r, ptr noundef %bp, i32 noundef %max_no, i32 noundef %x_size, i32 noundef %y_size) #0 {
entry:
  %in.addr = alloca ptr, align 8
  %r.addr = alloca ptr, align 8
  %bp.addr = alloca ptr, align 8
  %max_no.addr = alloca i32, align 4
  %x_size.addr = alloca i32, align 4
  %y_size.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %n = alloca i32, align 4
  %p = alloca ptr, align 8
  %cp = alloca ptr, align 8
  store ptr %in, ptr %in.addr, align 8, !tbaa !21
  store ptr %r, ptr %r.addr, align 8, !tbaa !23
  store ptr %bp, ptr %bp.addr, align 8, !tbaa !21
  store i32 %max_no, ptr %max_no.addr, align 4, !tbaa !5
  store i32 %x_size, ptr %x_size.addr, align 4, !tbaa !5
  store i32 %y_size, ptr %y_size.addr, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %cp) #10
  %0 = load ptr, ptr %r.addr, align 8, !tbaa !23
  %1 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %2 = load i32, ptr %y_size.addr, align 4, !tbaa !5
  %mul = mul nsw i32 %1, %2
  %conv = sext i32 %mul to i64
  %mul1 = mul i64 %conv, 4
  call void @llvm.memset.p0.i64(ptr align 4 %0, i8 0, i64 %mul1, i1 false)
  store i32 3, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc285, %entry
  %3 = load i32, ptr %i, align 4, !tbaa !5
  %4 = load i32, ptr %y_size.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %4, 3
  %cmp = icmp slt i32 %3, %sub
  br i1 %cmp, label %for.body, label %for.end287

for.body:                                         ; preds = %for.cond
  store i32 3, ptr %j, align 4, !tbaa !5
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %5 = load i32, ptr %j, align 4, !tbaa !5
  %6 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %sub4 = sub nsw i32 %6, 3
  %cmp5 = icmp slt i32 %5, %sub4
  br i1 %cmp5, label %for.body7, label %for.end

for.body7:                                        ; preds = %for.cond3
  store i32 100, ptr %n, align 4, !tbaa !5
  %7 = load ptr, ptr %in.addr, align 8, !tbaa !21
  %8 = load i32, ptr %i, align 4, !tbaa !5
  %sub8 = sub nsw i32 %8, 3
  %9 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul9 = mul nsw i32 %sub8, %9
  %idx.ext = sext i32 %mul9 to i64
  %add.ptr = getelementptr inbounds i8, ptr %7, i64 %idx.ext
  %10 = load i32, ptr %j, align 4, !tbaa !5
  %idx.ext10 = sext i32 %10 to i64
  %add.ptr11 = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.ext10
  %add.ptr12 = getelementptr inbounds i8, ptr %add.ptr11, i64 -1
  store ptr %add.ptr12, ptr %p, align 8, !tbaa !21
  %11 = load ptr, ptr %bp.addr, align 8, !tbaa !21
  %12 = load ptr, ptr %in.addr, align 8, !tbaa !21
  %13 = load i32, ptr %i, align 4, !tbaa !5
  %14 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul13 = mul nsw i32 %13, %14
  %15 = load i32, ptr %j, align 4, !tbaa !5
  %add = add nsw i32 %mul13, %15
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds i8, ptr %12, i64 %idxprom
  %16 = load i8, ptr %arrayidx, align 1, !tbaa !25
  %conv14 = zext i8 %16 to i32
  %idx.ext15 = sext i32 %conv14 to i64
  %add.ptr16 = getelementptr inbounds i8, ptr %11, i64 %idx.ext15
  store ptr %add.ptr16, ptr %cp, align 8, !tbaa !21
  %17 = load ptr, ptr %cp, align 8, !tbaa !21
  %18 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %18, i32 1
  store ptr %incdec.ptr, ptr %p, align 8, !tbaa !21
  %19 = load i8, ptr %18, align 1, !tbaa !25
  %conv17 = zext i8 %19 to i32
  %idx.ext18 = sext i32 %conv17 to i64
  %idx.neg = sub i64 0, %idx.ext18
  %add.ptr19 = getelementptr inbounds i8, ptr %17, i64 %idx.neg
  %20 = load i8, ptr %add.ptr19, align 1, !tbaa !25
  %conv20 = zext i8 %20 to i32
  %21 = load i32, ptr %n, align 4, !tbaa !5
  %add21 = add nsw i32 %21, %conv20
  store i32 %add21, ptr %n, align 4, !tbaa !5
  %22 = load ptr, ptr %cp, align 8, !tbaa !21
  %23 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr22 = getelementptr inbounds nuw i8, ptr %23, i32 1
  store ptr %incdec.ptr22, ptr %p, align 8, !tbaa !21
  %24 = load i8, ptr %23, align 1, !tbaa !25
  %conv23 = zext i8 %24 to i32
  %idx.ext24 = sext i32 %conv23 to i64
  %idx.neg25 = sub i64 0, %idx.ext24
  %add.ptr26 = getelementptr inbounds i8, ptr %22, i64 %idx.neg25
  %25 = load i8, ptr %add.ptr26, align 1, !tbaa !25
  %conv27 = zext i8 %25 to i32
  %26 = load i32, ptr %n, align 4, !tbaa !5
  %add28 = add nsw i32 %26, %conv27
  store i32 %add28, ptr %n, align 4, !tbaa !5
  %27 = load ptr, ptr %cp, align 8, !tbaa !21
  %28 = load ptr, ptr %p, align 8, !tbaa !21
  %29 = load i8, ptr %28, align 1, !tbaa !25
  %conv29 = zext i8 %29 to i32
  %idx.ext30 = sext i32 %conv29 to i64
  %idx.neg31 = sub i64 0, %idx.ext30
  %add.ptr32 = getelementptr inbounds i8, ptr %27, i64 %idx.neg31
  %30 = load i8, ptr %add.ptr32, align 1, !tbaa !25
  %conv33 = zext i8 %30 to i32
  %31 = load i32, ptr %n, align 4, !tbaa !5
  %add34 = add nsw i32 %31, %conv33
  store i32 %add34, ptr %n, align 4, !tbaa !5
  %32 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %sub35 = sub nsw i32 %32, 3
  %33 = load ptr, ptr %p, align 8, !tbaa !21
  %idx.ext36 = sext i32 %sub35 to i64
  %add.ptr37 = getelementptr inbounds i8, ptr %33, i64 %idx.ext36
  store ptr %add.ptr37, ptr %p, align 8, !tbaa !21
  %34 = load ptr, ptr %cp, align 8, !tbaa !21
  %35 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr38 = getelementptr inbounds nuw i8, ptr %35, i32 1
  store ptr %incdec.ptr38, ptr %p, align 8, !tbaa !21
  %36 = load i8, ptr %35, align 1, !tbaa !25
  %conv39 = zext i8 %36 to i32
  %idx.ext40 = sext i32 %conv39 to i64
  %idx.neg41 = sub i64 0, %idx.ext40
  %add.ptr42 = getelementptr inbounds i8, ptr %34, i64 %idx.neg41
  %37 = load i8, ptr %add.ptr42, align 1, !tbaa !25
  %conv43 = zext i8 %37 to i32
  %38 = load i32, ptr %n, align 4, !tbaa !5
  %add44 = add nsw i32 %38, %conv43
  store i32 %add44, ptr %n, align 4, !tbaa !5
  %39 = load ptr, ptr %cp, align 8, !tbaa !21
  %40 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr45 = getelementptr inbounds nuw i8, ptr %40, i32 1
  store ptr %incdec.ptr45, ptr %p, align 8, !tbaa !21
  %41 = load i8, ptr %40, align 1, !tbaa !25
  %conv46 = zext i8 %41 to i32
  %idx.ext47 = sext i32 %conv46 to i64
  %idx.neg48 = sub i64 0, %idx.ext47
  %add.ptr49 = getelementptr inbounds i8, ptr %39, i64 %idx.neg48
  %42 = load i8, ptr %add.ptr49, align 1, !tbaa !25
  %conv50 = zext i8 %42 to i32
  %43 = load i32, ptr %n, align 4, !tbaa !5
  %add51 = add nsw i32 %43, %conv50
  store i32 %add51, ptr %n, align 4, !tbaa !5
  %44 = load ptr, ptr %cp, align 8, !tbaa !21
  %45 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr52 = getelementptr inbounds nuw i8, ptr %45, i32 1
  store ptr %incdec.ptr52, ptr %p, align 8, !tbaa !21
  %46 = load i8, ptr %45, align 1, !tbaa !25
  %conv53 = zext i8 %46 to i32
  %idx.ext54 = sext i32 %conv53 to i64
  %idx.neg55 = sub i64 0, %idx.ext54
  %add.ptr56 = getelementptr inbounds i8, ptr %44, i64 %idx.neg55
  %47 = load i8, ptr %add.ptr56, align 1, !tbaa !25
  %conv57 = zext i8 %47 to i32
  %48 = load i32, ptr %n, align 4, !tbaa !5
  %add58 = add nsw i32 %48, %conv57
  store i32 %add58, ptr %n, align 4, !tbaa !5
  %49 = load ptr, ptr %cp, align 8, !tbaa !21
  %50 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr59 = getelementptr inbounds nuw i8, ptr %50, i32 1
  store ptr %incdec.ptr59, ptr %p, align 8, !tbaa !21
  %51 = load i8, ptr %50, align 1, !tbaa !25
  %conv60 = zext i8 %51 to i32
  %idx.ext61 = sext i32 %conv60 to i64
  %idx.neg62 = sub i64 0, %idx.ext61
  %add.ptr63 = getelementptr inbounds i8, ptr %49, i64 %idx.neg62
  %52 = load i8, ptr %add.ptr63, align 1, !tbaa !25
  %conv64 = zext i8 %52 to i32
  %53 = load i32, ptr %n, align 4, !tbaa !5
  %add65 = add nsw i32 %53, %conv64
  store i32 %add65, ptr %n, align 4, !tbaa !5
  %54 = load ptr, ptr %cp, align 8, !tbaa !21
  %55 = load ptr, ptr %p, align 8, !tbaa !21
  %56 = load i8, ptr %55, align 1, !tbaa !25
  %conv66 = zext i8 %56 to i32
  %idx.ext67 = sext i32 %conv66 to i64
  %idx.neg68 = sub i64 0, %idx.ext67
  %add.ptr69 = getelementptr inbounds i8, ptr %54, i64 %idx.neg68
  %57 = load i8, ptr %add.ptr69, align 1, !tbaa !25
  %conv70 = zext i8 %57 to i32
  %58 = load i32, ptr %n, align 4, !tbaa !5
  %add71 = add nsw i32 %58, %conv70
  store i32 %add71, ptr %n, align 4, !tbaa !5
  %59 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %sub72 = sub nsw i32 %59, 5
  %60 = load ptr, ptr %p, align 8, !tbaa !21
  %idx.ext73 = sext i32 %sub72 to i64
  %add.ptr74 = getelementptr inbounds i8, ptr %60, i64 %idx.ext73
  store ptr %add.ptr74, ptr %p, align 8, !tbaa !21
  %61 = load ptr, ptr %cp, align 8, !tbaa !21
  %62 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr75 = getelementptr inbounds nuw i8, ptr %62, i32 1
  store ptr %incdec.ptr75, ptr %p, align 8, !tbaa !21
  %63 = load i8, ptr %62, align 1, !tbaa !25
  %conv76 = zext i8 %63 to i32
  %idx.ext77 = sext i32 %conv76 to i64
  %idx.neg78 = sub i64 0, %idx.ext77
  %add.ptr79 = getelementptr inbounds i8, ptr %61, i64 %idx.neg78
  %64 = load i8, ptr %add.ptr79, align 1, !tbaa !25
  %conv80 = zext i8 %64 to i32
  %65 = load i32, ptr %n, align 4, !tbaa !5
  %add81 = add nsw i32 %65, %conv80
  store i32 %add81, ptr %n, align 4, !tbaa !5
  %66 = load ptr, ptr %cp, align 8, !tbaa !21
  %67 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr82 = getelementptr inbounds nuw i8, ptr %67, i32 1
  store ptr %incdec.ptr82, ptr %p, align 8, !tbaa !21
  %68 = load i8, ptr %67, align 1, !tbaa !25
  %conv83 = zext i8 %68 to i32
  %idx.ext84 = sext i32 %conv83 to i64
  %idx.neg85 = sub i64 0, %idx.ext84
  %add.ptr86 = getelementptr inbounds i8, ptr %66, i64 %idx.neg85
  %69 = load i8, ptr %add.ptr86, align 1, !tbaa !25
  %conv87 = zext i8 %69 to i32
  %70 = load i32, ptr %n, align 4, !tbaa !5
  %add88 = add nsw i32 %70, %conv87
  store i32 %add88, ptr %n, align 4, !tbaa !5
  %71 = load ptr, ptr %cp, align 8, !tbaa !21
  %72 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr89 = getelementptr inbounds nuw i8, ptr %72, i32 1
  store ptr %incdec.ptr89, ptr %p, align 8, !tbaa !21
  %73 = load i8, ptr %72, align 1, !tbaa !25
  %conv90 = zext i8 %73 to i32
  %idx.ext91 = sext i32 %conv90 to i64
  %idx.neg92 = sub i64 0, %idx.ext91
  %add.ptr93 = getelementptr inbounds i8, ptr %71, i64 %idx.neg92
  %74 = load i8, ptr %add.ptr93, align 1, !tbaa !25
  %conv94 = zext i8 %74 to i32
  %75 = load i32, ptr %n, align 4, !tbaa !5
  %add95 = add nsw i32 %75, %conv94
  store i32 %add95, ptr %n, align 4, !tbaa !5
  %76 = load ptr, ptr %cp, align 8, !tbaa !21
  %77 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr96 = getelementptr inbounds nuw i8, ptr %77, i32 1
  store ptr %incdec.ptr96, ptr %p, align 8, !tbaa !21
  %78 = load i8, ptr %77, align 1, !tbaa !25
  %conv97 = zext i8 %78 to i32
  %idx.ext98 = sext i32 %conv97 to i64
  %idx.neg99 = sub i64 0, %idx.ext98
  %add.ptr100 = getelementptr inbounds i8, ptr %76, i64 %idx.neg99
  %79 = load i8, ptr %add.ptr100, align 1, !tbaa !25
  %conv101 = zext i8 %79 to i32
  %80 = load i32, ptr %n, align 4, !tbaa !5
  %add102 = add nsw i32 %80, %conv101
  store i32 %add102, ptr %n, align 4, !tbaa !5
  %81 = load ptr, ptr %cp, align 8, !tbaa !21
  %82 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr103 = getelementptr inbounds nuw i8, ptr %82, i32 1
  store ptr %incdec.ptr103, ptr %p, align 8, !tbaa !21
  %83 = load i8, ptr %82, align 1, !tbaa !25
  %conv104 = zext i8 %83 to i32
  %idx.ext105 = sext i32 %conv104 to i64
  %idx.neg106 = sub i64 0, %idx.ext105
  %add.ptr107 = getelementptr inbounds i8, ptr %81, i64 %idx.neg106
  %84 = load i8, ptr %add.ptr107, align 1, !tbaa !25
  %conv108 = zext i8 %84 to i32
  %85 = load i32, ptr %n, align 4, !tbaa !5
  %add109 = add nsw i32 %85, %conv108
  store i32 %add109, ptr %n, align 4, !tbaa !5
  %86 = load ptr, ptr %cp, align 8, !tbaa !21
  %87 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr110 = getelementptr inbounds nuw i8, ptr %87, i32 1
  store ptr %incdec.ptr110, ptr %p, align 8, !tbaa !21
  %88 = load i8, ptr %87, align 1, !tbaa !25
  %conv111 = zext i8 %88 to i32
  %idx.ext112 = sext i32 %conv111 to i64
  %idx.neg113 = sub i64 0, %idx.ext112
  %add.ptr114 = getelementptr inbounds i8, ptr %86, i64 %idx.neg113
  %89 = load i8, ptr %add.ptr114, align 1, !tbaa !25
  %conv115 = zext i8 %89 to i32
  %90 = load i32, ptr %n, align 4, !tbaa !5
  %add116 = add nsw i32 %90, %conv115
  store i32 %add116, ptr %n, align 4, !tbaa !5
  %91 = load ptr, ptr %cp, align 8, !tbaa !21
  %92 = load ptr, ptr %p, align 8, !tbaa !21
  %93 = load i8, ptr %92, align 1, !tbaa !25
  %conv117 = zext i8 %93 to i32
  %idx.ext118 = sext i32 %conv117 to i64
  %idx.neg119 = sub i64 0, %idx.ext118
  %add.ptr120 = getelementptr inbounds i8, ptr %91, i64 %idx.neg119
  %94 = load i8, ptr %add.ptr120, align 1, !tbaa !25
  %conv121 = zext i8 %94 to i32
  %95 = load i32, ptr %n, align 4, !tbaa !5
  %add122 = add nsw i32 %95, %conv121
  store i32 %add122, ptr %n, align 4, !tbaa !5
  %96 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %sub123 = sub nsw i32 %96, 6
  %97 = load ptr, ptr %p, align 8, !tbaa !21
  %idx.ext124 = sext i32 %sub123 to i64
  %add.ptr125 = getelementptr inbounds i8, ptr %97, i64 %idx.ext124
  store ptr %add.ptr125, ptr %p, align 8, !tbaa !21
  %98 = load ptr, ptr %cp, align 8, !tbaa !21
  %99 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr126 = getelementptr inbounds nuw i8, ptr %99, i32 1
  store ptr %incdec.ptr126, ptr %p, align 8, !tbaa !21
  %100 = load i8, ptr %99, align 1, !tbaa !25
  %conv127 = zext i8 %100 to i32
  %idx.ext128 = sext i32 %conv127 to i64
  %idx.neg129 = sub i64 0, %idx.ext128
  %add.ptr130 = getelementptr inbounds i8, ptr %98, i64 %idx.neg129
  %101 = load i8, ptr %add.ptr130, align 1, !tbaa !25
  %conv131 = zext i8 %101 to i32
  %102 = load i32, ptr %n, align 4, !tbaa !5
  %add132 = add nsw i32 %102, %conv131
  store i32 %add132, ptr %n, align 4, !tbaa !5
  %103 = load ptr, ptr %cp, align 8, !tbaa !21
  %104 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr133 = getelementptr inbounds nuw i8, ptr %104, i32 1
  store ptr %incdec.ptr133, ptr %p, align 8, !tbaa !21
  %105 = load i8, ptr %104, align 1, !tbaa !25
  %conv134 = zext i8 %105 to i32
  %idx.ext135 = sext i32 %conv134 to i64
  %idx.neg136 = sub i64 0, %idx.ext135
  %add.ptr137 = getelementptr inbounds i8, ptr %103, i64 %idx.neg136
  %106 = load i8, ptr %add.ptr137, align 1, !tbaa !25
  %conv138 = zext i8 %106 to i32
  %107 = load i32, ptr %n, align 4, !tbaa !5
  %add139 = add nsw i32 %107, %conv138
  store i32 %add139, ptr %n, align 4, !tbaa !5
  %108 = load ptr, ptr %cp, align 8, !tbaa !21
  %109 = load ptr, ptr %p, align 8, !tbaa !21
  %110 = load i8, ptr %109, align 1, !tbaa !25
  %conv140 = zext i8 %110 to i32
  %idx.ext141 = sext i32 %conv140 to i64
  %idx.neg142 = sub i64 0, %idx.ext141
  %add.ptr143 = getelementptr inbounds i8, ptr %108, i64 %idx.neg142
  %111 = load i8, ptr %add.ptr143, align 1, !tbaa !25
  %conv144 = zext i8 %111 to i32
  %112 = load i32, ptr %n, align 4, !tbaa !5
  %add145 = add nsw i32 %112, %conv144
  store i32 %add145, ptr %n, align 4, !tbaa !5
  %113 = load ptr, ptr %p, align 8, !tbaa !21
  %add.ptr146 = getelementptr inbounds i8, ptr %113, i64 2
  store ptr %add.ptr146, ptr %p, align 8, !tbaa !21
  %114 = load ptr, ptr %cp, align 8, !tbaa !21
  %115 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr147 = getelementptr inbounds nuw i8, ptr %115, i32 1
  store ptr %incdec.ptr147, ptr %p, align 8, !tbaa !21
  %116 = load i8, ptr %115, align 1, !tbaa !25
  %conv148 = zext i8 %116 to i32
  %idx.ext149 = sext i32 %conv148 to i64
  %idx.neg150 = sub i64 0, %idx.ext149
  %add.ptr151 = getelementptr inbounds i8, ptr %114, i64 %idx.neg150
  %117 = load i8, ptr %add.ptr151, align 1, !tbaa !25
  %conv152 = zext i8 %117 to i32
  %118 = load i32, ptr %n, align 4, !tbaa !5
  %add153 = add nsw i32 %118, %conv152
  store i32 %add153, ptr %n, align 4, !tbaa !5
  %119 = load ptr, ptr %cp, align 8, !tbaa !21
  %120 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr154 = getelementptr inbounds nuw i8, ptr %120, i32 1
  store ptr %incdec.ptr154, ptr %p, align 8, !tbaa !21
  %121 = load i8, ptr %120, align 1, !tbaa !25
  %conv155 = zext i8 %121 to i32
  %idx.ext156 = sext i32 %conv155 to i64
  %idx.neg157 = sub i64 0, %idx.ext156
  %add.ptr158 = getelementptr inbounds i8, ptr %119, i64 %idx.neg157
  %122 = load i8, ptr %add.ptr158, align 1, !tbaa !25
  %conv159 = zext i8 %122 to i32
  %123 = load i32, ptr %n, align 4, !tbaa !5
  %add160 = add nsw i32 %123, %conv159
  store i32 %add160, ptr %n, align 4, !tbaa !5
  %124 = load ptr, ptr %cp, align 8, !tbaa !21
  %125 = load ptr, ptr %p, align 8, !tbaa !21
  %126 = load i8, ptr %125, align 1, !tbaa !25
  %conv161 = zext i8 %126 to i32
  %idx.ext162 = sext i32 %conv161 to i64
  %idx.neg163 = sub i64 0, %idx.ext162
  %add.ptr164 = getelementptr inbounds i8, ptr %124, i64 %idx.neg163
  %127 = load i8, ptr %add.ptr164, align 1, !tbaa !25
  %conv165 = zext i8 %127 to i32
  %128 = load i32, ptr %n, align 4, !tbaa !5
  %add166 = add nsw i32 %128, %conv165
  store i32 %add166, ptr %n, align 4, !tbaa !5
  %129 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %sub167 = sub nsw i32 %129, 6
  %130 = load ptr, ptr %p, align 8, !tbaa !21
  %idx.ext168 = sext i32 %sub167 to i64
  %add.ptr169 = getelementptr inbounds i8, ptr %130, i64 %idx.ext168
  store ptr %add.ptr169, ptr %p, align 8, !tbaa !21
  %131 = load ptr, ptr %cp, align 8, !tbaa !21
  %132 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr170 = getelementptr inbounds nuw i8, ptr %132, i32 1
  store ptr %incdec.ptr170, ptr %p, align 8, !tbaa !21
  %133 = load i8, ptr %132, align 1, !tbaa !25
  %conv171 = zext i8 %133 to i32
  %idx.ext172 = sext i32 %conv171 to i64
  %idx.neg173 = sub i64 0, %idx.ext172
  %add.ptr174 = getelementptr inbounds i8, ptr %131, i64 %idx.neg173
  %134 = load i8, ptr %add.ptr174, align 1, !tbaa !25
  %conv175 = zext i8 %134 to i32
  %135 = load i32, ptr %n, align 4, !tbaa !5
  %add176 = add nsw i32 %135, %conv175
  store i32 %add176, ptr %n, align 4, !tbaa !5
  %136 = load ptr, ptr %cp, align 8, !tbaa !21
  %137 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr177 = getelementptr inbounds nuw i8, ptr %137, i32 1
  store ptr %incdec.ptr177, ptr %p, align 8, !tbaa !21
  %138 = load i8, ptr %137, align 1, !tbaa !25
  %conv178 = zext i8 %138 to i32
  %idx.ext179 = sext i32 %conv178 to i64
  %idx.neg180 = sub i64 0, %idx.ext179
  %add.ptr181 = getelementptr inbounds i8, ptr %136, i64 %idx.neg180
  %139 = load i8, ptr %add.ptr181, align 1, !tbaa !25
  %conv182 = zext i8 %139 to i32
  %140 = load i32, ptr %n, align 4, !tbaa !5
  %add183 = add nsw i32 %140, %conv182
  store i32 %add183, ptr %n, align 4, !tbaa !5
  %141 = load ptr, ptr %cp, align 8, !tbaa !21
  %142 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr184 = getelementptr inbounds nuw i8, ptr %142, i32 1
  store ptr %incdec.ptr184, ptr %p, align 8, !tbaa !21
  %143 = load i8, ptr %142, align 1, !tbaa !25
  %conv185 = zext i8 %143 to i32
  %idx.ext186 = sext i32 %conv185 to i64
  %idx.neg187 = sub i64 0, %idx.ext186
  %add.ptr188 = getelementptr inbounds i8, ptr %141, i64 %idx.neg187
  %144 = load i8, ptr %add.ptr188, align 1, !tbaa !25
  %conv189 = zext i8 %144 to i32
  %145 = load i32, ptr %n, align 4, !tbaa !5
  %add190 = add nsw i32 %145, %conv189
  store i32 %add190, ptr %n, align 4, !tbaa !5
  %146 = load ptr, ptr %cp, align 8, !tbaa !21
  %147 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr191 = getelementptr inbounds nuw i8, ptr %147, i32 1
  store ptr %incdec.ptr191, ptr %p, align 8, !tbaa !21
  %148 = load i8, ptr %147, align 1, !tbaa !25
  %conv192 = zext i8 %148 to i32
  %idx.ext193 = sext i32 %conv192 to i64
  %idx.neg194 = sub i64 0, %idx.ext193
  %add.ptr195 = getelementptr inbounds i8, ptr %146, i64 %idx.neg194
  %149 = load i8, ptr %add.ptr195, align 1, !tbaa !25
  %conv196 = zext i8 %149 to i32
  %150 = load i32, ptr %n, align 4, !tbaa !5
  %add197 = add nsw i32 %150, %conv196
  store i32 %add197, ptr %n, align 4, !tbaa !5
  %151 = load ptr, ptr %cp, align 8, !tbaa !21
  %152 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr198 = getelementptr inbounds nuw i8, ptr %152, i32 1
  store ptr %incdec.ptr198, ptr %p, align 8, !tbaa !21
  %153 = load i8, ptr %152, align 1, !tbaa !25
  %conv199 = zext i8 %153 to i32
  %idx.ext200 = sext i32 %conv199 to i64
  %idx.neg201 = sub i64 0, %idx.ext200
  %add.ptr202 = getelementptr inbounds i8, ptr %151, i64 %idx.neg201
  %154 = load i8, ptr %add.ptr202, align 1, !tbaa !25
  %conv203 = zext i8 %154 to i32
  %155 = load i32, ptr %n, align 4, !tbaa !5
  %add204 = add nsw i32 %155, %conv203
  store i32 %add204, ptr %n, align 4, !tbaa !5
  %156 = load ptr, ptr %cp, align 8, !tbaa !21
  %157 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr205 = getelementptr inbounds nuw i8, ptr %157, i32 1
  store ptr %incdec.ptr205, ptr %p, align 8, !tbaa !21
  %158 = load i8, ptr %157, align 1, !tbaa !25
  %conv206 = zext i8 %158 to i32
  %idx.ext207 = sext i32 %conv206 to i64
  %idx.neg208 = sub i64 0, %idx.ext207
  %add.ptr209 = getelementptr inbounds i8, ptr %156, i64 %idx.neg208
  %159 = load i8, ptr %add.ptr209, align 1, !tbaa !25
  %conv210 = zext i8 %159 to i32
  %160 = load i32, ptr %n, align 4, !tbaa !5
  %add211 = add nsw i32 %160, %conv210
  store i32 %add211, ptr %n, align 4, !tbaa !5
  %161 = load ptr, ptr %cp, align 8, !tbaa !21
  %162 = load ptr, ptr %p, align 8, !tbaa !21
  %163 = load i8, ptr %162, align 1, !tbaa !25
  %conv212 = zext i8 %163 to i32
  %idx.ext213 = sext i32 %conv212 to i64
  %idx.neg214 = sub i64 0, %idx.ext213
  %add.ptr215 = getelementptr inbounds i8, ptr %161, i64 %idx.neg214
  %164 = load i8, ptr %add.ptr215, align 1, !tbaa !25
  %conv216 = zext i8 %164 to i32
  %165 = load i32, ptr %n, align 4, !tbaa !5
  %add217 = add nsw i32 %165, %conv216
  store i32 %add217, ptr %n, align 4, !tbaa !5
  %166 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %sub218 = sub nsw i32 %166, 5
  %167 = load ptr, ptr %p, align 8, !tbaa !21
  %idx.ext219 = sext i32 %sub218 to i64
  %add.ptr220 = getelementptr inbounds i8, ptr %167, i64 %idx.ext219
  store ptr %add.ptr220, ptr %p, align 8, !tbaa !21
  %168 = load ptr, ptr %cp, align 8, !tbaa !21
  %169 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr221 = getelementptr inbounds nuw i8, ptr %169, i32 1
  store ptr %incdec.ptr221, ptr %p, align 8, !tbaa !21
  %170 = load i8, ptr %169, align 1, !tbaa !25
  %conv222 = zext i8 %170 to i32
  %idx.ext223 = sext i32 %conv222 to i64
  %idx.neg224 = sub i64 0, %idx.ext223
  %add.ptr225 = getelementptr inbounds i8, ptr %168, i64 %idx.neg224
  %171 = load i8, ptr %add.ptr225, align 1, !tbaa !25
  %conv226 = zext i8 %171 to i32
  %172 = load i32, ptr %n, align 4, !tbaa !5
  %add227 = add nsw i32 %172, %conv226
  store i32 %add227, ptr %n, align 4, !tbaa !5
  %173 = load ptr, ptr %cp, align 8, !tbaa !21
  %174 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr228 = getelementptr inbounds nuw i8, ptr %174, i32 1
  store ptr %incdec.ptr228, ptr %p, align 8, !tbaa !21
  %175 = load i8, ptr %174, align 1, !tbaa !25
  %conv229 = zext i8 %175 to i32
  %idx.ext230 = sext i32 %conv229 to i64
  %idx.neg231 = sub i64 0, %idx.ext230
  %add.ptr232 = getelementptr inbounds i8, ptr %173, i64 %idx.neg231
  %176 = load i8, ptr %add.ptr232, align 1, !tbaa !25
  %conv233 = zext i8 %176 to i32
  %177 = load i32, ptr %n, align 4, !tbaa !5
  %add234 = add nsw i32 %177, %conv233
  store i32 %add234, ptr %n, align 4, !tbaa !5
  %178 = load ptr, ptr %cp, align 8, !tbaa !21
  %179 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr235 = getelementptr inbounds nuw i8, ptr %179, i32 1
  store ptr %incdec.ptr235, ptr %p, align 8, !tbaa !21
  %180 = load i8, ptr %179, align 1, !tbaa !25
  %conv236 = zext i8 %180 to i32
  %idx.ext237 = sext i32 %conv236 to i64
  %idx.neg238 = sub i64 0, %idx.ext237
  %add.ptr239 = getelementptr inbounds i8, ptr %178, i64 %idx.neg238
  %181 = load i8, ptr %add.ptr239, align 1, !tbaa !25
  %conv240 = zext i8 %181 to i32
  %182 = load i32, ptr %n, align 4, !tbaa !5
  %add241 = add nsw i32 %182, %conv240
  store i32 %add241, ptr %n, align 4, !tbaa !5
  %183 = load ptr, ptr %cp, align 8, !tbaa !21
  %184 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr242 = getelementptr inbounds nuw i8, ptr %184, i32 1
  store ptr %incdec.ptr242, ptr %p, align 8, !tbaa !21
  %185 = load i8, ptr %184, align 1, !tbaa !25
  %conv243 = zext i8 %185 to i32
  %idx.ext244 = sext i32 %conv243 to i64
  %idx.neg245 = sub i64 0, %idx.ext244
  %add.ptr246 = getelementptr inbounds i8, ptr %183, i64 %idx.neg245
  %186 = load i8, ptr %add.ptr246, align 1, !tbaa !25
  %conv247 = zext i8 %186 to i32
  %187 = load i32, ptr %n, align 4, !tbaa !5
  %add248 = add nsw i32 %187, %conv247
  store i32 %add248, ptr %n, align 4, !tbaa !5
  %188 = load ptr, ptr %cp, align 8, !tbaa !21
  %189 = load ptr, ptr %p, align 8, !tbaa !21
  %190 = load i8, ptr %189, align 1, !tbaa !25
  %conv249 = zext i8 %190 to i32
  %idx.ext250 = sext i32 %conv249 to i64
  %idx.neg251 = sub i64 0, %idx.ext250
  %add.ptr252 = getelementptr inbounds i8, ptr %188, i64 %idx.neg251
  %191 = load i8, ptr %add.ptr252, align 1, !tbaa !25
  %conv253 = zext i8 %191 to i32
  %192 = load i32, ptr %n, align 4, !tbaa !5
  %add254 = add nsw i32 %192, %conv253
  store i32 %add254, ptr %n, align 4, !tbaa !5
  %193 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %sub255 = sub nsw i32 %193, 3
  %194 = load ptr, ptr %p, align 8, !tbaa !21
  %idx.ext256 = sext i32 %sub255 to i64
  %add.ptr257 = getelementptr inbounds i8, ptr %194, i64 %idx.ext256
  store ptr %add.ptr257, ptr %p, align 8, !tbaa !21
  %195 = load ptr, ptr %cp, align 8, !tbaa !21
  %196 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr258 = getelementptr inbounds nuw i8, ptr %196, i32 1
  store ptr %incdec.ptr258, ptr %p, align 8, !tbaa !21
  %197 = load i8, ptr %196, align 1, !tbaa !25
  %conv259 = zext i8 %197 to i32
  %idx.ext260 = sext i32 %conv259 to i64
  %idx.neg261 = sub i64 0, %idx.ext260
  %add.ptr262 = getelementptr inbounds i8, ptr %195, i64 %idx.neg261
  %198 = load i8, ptr %add.ptr262, align 1, !tbaa !25
  %conv263 = zext i8 %198 to i32
  %199 = load i32, ptr %n, align 4, !tbaa !5
  %add264 = add nsw i32 %199, %conv263
  store i32 %add264, ptr %n, align 4, !tbaa !5
  %200 = load ptr, ptr %cp, align 8, !tbaa !21
  %201 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr265 = getelementptr inbounds nuw i8, ptr %201, i32 1
  store ptr %incdec.ptr265, ptr %p, align 8, !tbaa !21
  %202 = load i8, ptr %201, align 1, !tbaa !25
  %conv266 = zext i8 %202 to i32
  %idx.ext267 = sext i32 %conv266 to i64
  %idx.neg268 = sub i64 0, %idx.ext267
  %add.ptr269 = getelementptr inbounds i8, ptr %200, i64 %idx.neg268
  %203 = load i8, ptr %add.ptr269, align 1, !tbaa !25
  %conv270 = zext i8 %203 to i32
  %204 = load i32, ptr %n, align 4, !tbaa !5
  %add271 = add nsw i32 %204, %conv270
  store i32 %add271, ptr %n, align 4, !tbaa !5
  %205 = load ptr, ptr %cp, align 8, !tbaa !21
  %206 = load ptr, ptr %p, align 8, !tbaa !21
  %207 = load i8, ptr %206, align 1, !tbaa !25
  %conv272 = zext i8 %207 to i32
  %idx.ext273 = sext i32 %conv272 to i64
  %idx.neg274 = sub i64 0, %idx.ext273
  %add.ptr275 = getelementptr inbounds i8, ptr %205, i64 %idx.neg274
  %208 = load i8, ptr %add.ptr275, align 1, !tbaa !25
  %conv276 = zext i8 %208 to i32
  %209 = load i32, ptr %n, align 4, !tbaa !5
  %add277 = add nsw i32 %209, %conv276
  store i32 %add277, ptr %n, align 4, !tbaa !5
  %210 = load i32, ptr %n, align 4, !tbaa !5
  %211 = load i32, ptr %max_no.addr, align 4, !tbaa !5
  %cmp278 = icmp sle i32 %210, %211
  br i1 %cmp278, label %if.then, label %if.end

if.then:                                          ; preds = %for.body7
  %212 = load i32, ptr %max_no.addr, align 4, !tbaa !5
  %213 = load i32, ptr %n, align 4, !tbaa !5
  %sub280 = sub nsw i32 %212, %213
  %214 = load ptr, ptr %r.addr, align 8, !tbaa !23
  %215 = load i32, ptr %i, align 4, !tbaa !5
  %216 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul281 = mul nsw i32 %215, %216
  %217 = load i32, ptr %j, align 4, !tbaa !5
  %add282 = add nsw i32 %mul281, %217
  %idxprom283 = sext i32 %add282 to i64
  %arrayidx284 = getelementptr inbounds i32, ptr %214, i64 %idxprom283
  store i32 %sub280, ptr %arrayidx284, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body7
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %218 = load i32, ptr %j, align 4, !tbaa !5
  %inc = add nsw i32 %218, 1
  store i32 %inc, ptr %j, align 4, !tbaa !5
  br label %for.cond3, !llvm.loop !31

for.end:                                          ; preds = %for.cond3
  br label %for.inc285

for.inc285:                                       ; preds = %for.end
  %219 = load i32, ptr %i, align 4, !tbaa !5
  %inc286 = add nsw i32 %219, 1
  store i32 %inc286, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !32

for.end287:                                       ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %cp) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #10
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: nounwind uwtable
define dso_local void @susan_principle_small(ptr noundef %in, ptr noundef %r, ptr noundef %bp, i32 noundef %max_no, i32 noundef %x_size, i32 noundef %y_size) #0 {
entry:
  %in.addr = alloca ptr, align 8
  %r.addr = alloca ptr, align 8
  %bp.addr = alloca ptr, align 8
  %max_no.addr = alloca i32, align 4
  %x_size.addr = alloca i32, align 4
  %y_size.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %n = alloca i32, align 4
  %p = alloca ptr, align 8
  %cp = alloca ptr, align 8
  store ptr %in, ptr %in.addr, align 8, !tbaa !21
  store ptr %r, ptr %r.addr, align 8, !tbaa !23
  store ptr %bp, ptr %bp.addr, align 8, !tbaa !21
  store i32 %max_no, ptr %max_no.addr, align 4, !tbaa !5
  store i32 %x_size, ptr %x_size.addr, align 4, !tbaa !5
  store i32 %y_size, ptr %y_size.addr, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %cp) #10
  %0 = load ptr, ptr %r.addr, align 8, !tbaa !23
  %1 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %2 = load i32, ptr %y_size.addr, align 4, !tbaa !5
  %mul = mul nsw i32 %1, %2
  %conv = sext i32 %mul to i64
  %mul1 = mul i64 %conv, 4
  call void @llvm.memset.p0.i64(ptr align 4 %0, i8 0, i64 %mul1, i1 false)
  store i32 730, ptr %max_no.addr, align 4, !tbaa !5
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc81, %entry
  %3 = load i32, ptr %i, align 4, !tbaa !5
  %4 = load i32, ptr %y_size.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %4, 1
  %cmp = icmp slt i32 %3, %sub
  br i1 %cmp, label %for.body, label %for.end83

for.body:                                         ; preds = %for.cond
  store i32 1, ptr %j, align 4, !tbaa !5
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %5 = load i32, ptr %j, align 4, !tbaa !5
  %6 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %sub4 = sub nsw i32 %6, 1
  %cmp5 = icmp slt i32 %5, %sub4
  br i1 %cmp5, label %for.body7, label %for.end

for.body7:                                        ; preds = %for.cond3
  store i32 100, ptr %n, align 4, !tbaa !5
  %7 = load ptr, ptr %in.addr, align 8, !tbaa !21
  %8 = load i32, ptr %i, align 4, !tbaa !5
  %sub8 = sub nsw i32 %8, 1
  %9 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul9 = mul nsw i32 %sub8, %9
  %idx.ext = sext i32 %mul9 to i64
  %add.ptr = getelementptr inbounds i8, ptr %7, i64 %idx.ext
  %10 = load i32, ptr %j, align 4, !tbaa !5
  %idx.ext10 = sext i32 %10 to i64
  %add.ptr11 = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.ext10
  %add.ptr12 = getelementptr inbounds i8, ptr %add.ptr11, i64 -1
  store ptr %add.ptr12, ptr %p, align 8, !tbaa !21
  %11 = load ptr, ptr %bp.addr, align 8, !tbaa !21
  %12 = load ptr, ptr %in.addr, align 8, !tbaa !21
  %13 = load i32, ptr %i, align 4, !tbaa !5
  %14 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul13 = mul nsw i32 %13, %14
  %15 = load i32, ptr %j, align 4, !tbaa !5
  %add = add nsw i32 %mul13, %15
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds i8, ptr %12, i64 %idxprom
  %16 = load i8, ptr %arrayidx, align 1, !tbaa !25
  %conv14 = zext i8 %16 to i32
  %idx.ext15 = sext i32 %conv14 to i64
  %add.ptr16 = getelementptr inbounds i8, ptr %11, i64 %idx.ext15
  store ptr %add.ptr16, ptr %cp, align 8, !tbaa !21
  %17 = load ptr, ptr %cp, align 8, !tbaa !21
  %18 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %18, i32 1
  store ptr %incdec.ptr, ptr %p, align 8, !tbaa !21
  %19 = load i8, ptr %18, align 1, !tbaa !25
  %conv17 = zext i8 %19 to i32
  %idx.ext18 = sext i32 %conv17 to i64
  %idx.neg = sub i64 0, %idx.ext18
  %add.ptr19 = getelementptr inbounds i8, ptr %17, i64 %idx.neg
  %20 = load i8, ptr %add.ptr19, align 1, !tbaa !25
  %conv20 = zext i8 %20 to i32
  %21 = load i32, ptr %n, align 4, !tbaa !5
  %add21 = add nsw i32 %21, %conv20
  store i32 %add21, ptr %n, align 4, !tbaa !5
  %22 = load ptr, ptr %cp, align 8, !tbaa !21
  %23 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr22 = getelementptr inbounds nuw i8, ptr %23, i32 1
  store ptr %incdec.ptr22, ptr %p, align 8, !tbaa !21
  %24 = load i8, ptr %23, align 1, !tbaa !25
  %conv23 = zext i8 %24 to i32
  %idx.ext24 = sext i32 %conv23 to i64
  %idx.neg25 = sub i64 0, %idx.ext24
  %add.ptr26 = getelementptr inbounds i8, ptr %22, i64 %idx.neg25
  %25 = load i8, ptr %add.ptr26, align 1, !tbaa !25
  %conv27 = zext i8 %25 to i32
  %26 = load i32, ptr %n, align 4, !tbaa !5
  %add28 = add nsw i32 %26, %conv27
  store i32 %add28, ptr %n, align 4, !tbaa !5
  %27 = load ptr, ptr %cp, align 8, !tbaa !21
  %28 = load ptr, ptr %p, align 8, !tbaa !21
  %29 = load i8, ptr %28, align 1, !tbaa !25
  %conv29 = zext i8 %29 to i32
  %idx.ext30 = sext i32 %conv29 to i64
  %idx.neg31 = sub i64 0, %idx.ext30
  %add.ptr32 = getelementptr inbounds i8, ptr %27, i64 %idx.neg31
  %30 = load i8, ptr %add.ptr32, align 1, !tbaa !25
  %conv33 = zext i8 %30 to i32
  %31 = load i32, ptr %n, align 4, !tbaa !5
  %add34 = add nsw i32 %31, %conv33
  store i32 %add34, ptr %n, align 4, !tbaa !5
  %32 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %sub35 = sub nsw i32 %32, 2
  %33 = load ptr, ptr %p, align 8, !tbaa !21
  %idx.ext36 = sext i32 %sub35 to i64
  %add.ptr37 = getelementptr inbounds i8, ptr %33, i64 %idx.ext36
  store ptr %add.ptr37, ptr %p, align 8, !tbaa !21
  %34 = load ptr, ptr %cp, align 8, !tbaa !21
  %35 = load ptr, ptr %p, align 8, !tbaa !21
  %36 = load i8, ptr %35, align 1, !tbaa !25
  %conv38 = zext i8 %36 to i32
  %idx.ext39 = sext i32 %conv38 to i64
  %idx.neg40 = sub i64 0, %idx.ext39
  %add.ptr41 = getelementptr inbounds i8, ptr %34, i64 %idx.neg40
  %37 = load i8, ptr %add.ptr41, align 1, !tbaa !25
  %conv42 = zext i8 %37 to i32
  %38 = load i32, ptr %n, align 4, !tbaa !5
  %add43 = add nsw i32 %38, %conv42
  store i32 %add43, ptr %n, align 4, !tbaa !5
  %39 = load ptr, ptr %p, align 8, !tbaa !21
  %add.ptr44 = getelementptr inbounds i8, ptr %39, i64 2
  store ptr %add.ptr44, ptr %p, align 8, !tbaa !21
  %40 = load ptr, ptr %cp, align 8, !tbaa !21
  %41 = load ptr, ptr %p, align 8, !tbaa !21
  %42 = load i8, ptr %41, align 1, !tbaa !25
  %conv45 = zext i8 %42 to i32
  %idx.ext46 = sext i32 %conv45 to i64
  %idx.neg47 = sub i64 0, %idx.ext46
  %add.ptr48 = getelementptr inbounds i8, ptr %40, i64 %idx.neg47
  %43 = load i8, ptr %add.ptr48, align 1, !tbaa !25
  %conv49 = zext i8 %43 to i32
  %44 = load i32, ptr %n, align 4, !tbaa !5
  %add50 = add nsw i32 %44, %conv49
  store i32 %add50, ptr %n, align 4, !tbaa !5
  %45 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %sub51 = sub nsw i32 %45, 2
  %46 = load ptr, ptr %p, align 8, !tbaa !21
  %idx.ext52 = sext i32 %sub51 to i64
  %add.ptr53 = getelementptr inbounds i8, ptr %46, i64 %idx.ext52
  store ptr %add.ptr53, ptr %p, align 8, !tbaa !21
  %47 = load ptr, ptr %cp, align 8, !tbaa !21
  %48 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr54 = getelementptr inbounds nuw i8, ptr %48, i32 1
  store ptr %incdec.ptr54, ptr %p, align 8, !tbaa !21
  %49 = load i8, ptr %48, align 1, !tbaa !25
  %conv55 = zext i8 %49 to i32
  %idx.ext56 = sext i32 %conv55 to i64
  %idx.neg57 = sub i64 0, %idx.ext56
  %add.ptr58 = getelementptr inbounds i8, ptr %47, i64 %idx.neg57
  %50 = load i8, ptr %add.ptr58, align 1, !tbaa !25
  %conv59 = zext i8 %50 to i32
  %51 = load i32, ptr %n, align 4, !tbaa !5
  %add60 = add nsw i32 %51, %conv59
  store i32 %add60, ptr %n, align 4, !tbaa !5
  %52 = load ptr, ptr %cp, align 8, !tbaa !21
  %53 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr61 = getelementptr inbounds nuw i8, ptr %53, i32 1
  store ptr %incdec.ptr61, ptr %p, align 8, !tbaa !21
  %54 = load i8, ptr %53, align 1, !tbaa !25
  %conv62 = zext i8 %54 to i32
  %idx.ext63 = sext i32 %conv62 to i64
  %idx.neg64 = sub i64 0, %idx.ext63
  %add.ptr65 = getelementptr inbounds i8, ptr %52, i64 %idx.neg64
  %55 = load i8, ptr %add.ptr65, align 1, !tbaa !25
  %conv66 = zext i8 %55 to i32
  %56 = load i32, ptr %n, align 4, !tbaa !5
  %add67 = add nsw i32 %56, %conv66
  store i32 %add67, ptr %n, align 4, !tbaa !5
  %57 = load ptr, ptr %cp, align 8, !tbaa !21
  %58 = load ptr, ptr %p, align 8, !tbaa !21
  %59 = load i8, ptr %58, align 1, !tbaa !25
  %conv68 = zext i8 %59 to i32
  %idx.ext69 = sext i32 %conv68 to i64
  %idx.neg70 = sub i64 0, %idx.ext69
  %add.ptr71 = getelementptr inbounds i8, ptr %57, i64 %idx.neg70
  %60 = load i8, ptr %add.ptr71, align 1, !tbaa !25
  %conv72 = zext i8 %60 to i32
  %61 = load i32, ptr %n, align 4, !tbaa !5
  %add73 = add nsw i32 %61, %conv72
  store i32 %add73, ptr %n, align 4, !tbaa !5
  %62 = load i32, ptr %n, align 4, !tbaa !5
  %63 = load i32, ptr %max_no.addr, align 4, !tbaa !5
  %cmp74 = icmp sle i32 %62, %63
  br i1 %cmp74, label %if.then, label %if.end

if.then:                                          ; preds = %for.body7
  %64 = load i32, ptr %max_no.addr, align 4, !tbaa !5
  %65 = load i32, ptr %n, align 4, !tbaa !5
  %sub76 = sub nsw i32 %64, %65
  %66 = load ptr, ptr %r.addr, align 8, !tbaa !23
  %67 = load i32, ptr %i, align 4, !tbaa !5
  %68 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul77 = mul nsw i32 %67, %68
  %69 = load i32, ptr %j, align 4, !tbaa !5
  %add78 = add nsw i32 %mul77, %69
  %idxprom79 = sext i32 %add78 to i64
  %arrayidx80 = getelementptr inbounds i32, ptr %66, i64 %idxprom79
  store i32 %sub76, ptr %arrayidx80, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body7
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %70 = load i32, ptr %j, align 4, !tbaa !5
  %inc = add nsw i32 %70, 1
  store i32 %inc, ptr %j, align 4, !tbaa !5
  br label %for.cond3, !llvm.loop !33

for.end:                                          ; preds = %for.cond3
  br label %for.inc81

for.inc81:                                        ; preds = %for.end
  %71 = load i32, ptr %i, align 4, !tbaa !5
  %inc82 = add nsw i32 %71, 1
  store i32 %inc82, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !34

for.end83:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %cp) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #10
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @median(ptr noundef %in, i32 noundef %i, i32 noundef %j, i32 noundef %x_size) #0 {
entry:
  %in.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  %j.addr = alloca i32, align 4
  %x_size.addr = alloca i32, align 4
  %p = alloca [8 x i32], align 16
  %k = alloca i32, align 4
  %l = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %in, ptr %in.addr, align 8, !tbaa !21
  store i32 %i, ptr %i.addr, align 4, !tbaa !5
  store i32 %j, ptr %j.addr, align 4, !tbaa !5
  store i32 %x_size, ptr %x_size.addr, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 32, ptr %p) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %l) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %tmp) #10
  %0 = load ptr, ptr %in.addr, align 8, !tbaa !21
  %1 = load i32, ptr %i.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %1, 1
  %2 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul = mul nsw i32 %sub, %2
  %3 = load i32, ptr %j.addr, align 4, !tbaa !5
  %add = add nsw i32 %mul, %3
  %sub1 = sub nsw i32 %add, 1
  %idxprom = sext i32 %sub1 to i64
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 %idxprom
  %4 = load i8, ptr %arrayidx, align 1, !tbaa !25
  %conv = zext i8 %4 to i32
  %arrayidx2 = getelementptr inbounds [8 x i32], ptr %p, i64 0, i64 0
  store i32 %conv, ptr %arrayidx2, align 16, !tbaa !5
  %5 = load ptr, ptr %in.addr, align 8, !tbaa !21
  %6 = load i32, ptr %i.addr, align 4, !tbaa !5
  %sub3 = sub nsw i32 %6, 1
  %7 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul4 = mul nsw i32 %sub3, %7
  %8 = load i32, ptr %j.addr, align 4, !tbaa !5
  %add5 = add nsw i32 %mul4, %8
  %idxprom6 = sext i32 %add5 to i64
  %arrayidx7 = getelementptr inbounds i8, ptr %5, i64 %idxprom6
  %9 = load i8, ptr %arrayidx7, align 1, !tbaa !25
  %conv8 = zext i8 %9 to i32
  %arrayidx9 = getelementptr inbounds [8 x i32], ptr %p, i64 0, i64 1
  store i32 %conv8, ptr %arrayidx9, align 4, !tbaa !5
  %10 = load ptr, ptr %in.addr, align 8, !tbaa !21
  %11 = load i32, ptr %i.addr, align 4, !tbaa !5
  %sub10 = sub nsw i32 %11, 1
  %12 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul11 = mul nsw i32 %sub10, %12
  %13 = load i32, ptr %j.addr, align 4, !tbaa !5
  %add12 = add nsw i32 %mul11, %13
  %add13 = add nsw i32 %add12, 1
  %idxprom14 = sext i32 %add13 to i64
  %arrayidx15 = getelementptr inbounds i8, ptr %10, i64 %idxprom14
  %14 = load i8, ptr %arrayidx15, align 1, !tbaa !25
  %conv16 = zext i8 %14 to i32
  %arrayidx17 = getelementptr inbounds [8 x i32], ptr %p, i64 0, i64 2
  store i32 %conv16, ptr %arrayidx17, align 8, !tbaa !5
  %15 = load ptr, ptr %in.addr, align 8, !tbaa !21
  %16 = load i32, ptr %i.addr, align 4, !tbaa !5
  %17 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul18 = mul nsw i32 %16, %17
  %18 = load i32, ptr %j.addr, align 4, !tbaa !5
  %add19 = add nsw i32 %mul18, %18
  %sub20 = sub nsw i32 %add19, 1
  %idxprom21 = sext i32 %sub20 to i64
  %arrayidx22 = getelementptr inbounds i8, ptr %15, i64 %idxprom21
  %19 = load i8, ptr %arrayidx22, align 1, !tbaa !25
  %conv23 = zext i8 %19 to i32
  %arrayidx24 = getelementptr inbounds [8 x i32], ptr %p, i64 0, i64 3
  store i32 %conv23, ptr %arrayidx24, align 4, !tbaa !5
  %20 = load ptr, ptr %in.addr, align 8, !tbaa !21
  %21 = load i32, ptr %i.addr, align 4, !tbaa !5
  %22 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul25 = mul nsw i32 %21, %22
  %23 = load i32, ptr %j.addr, align 4, !tbaa !5
  %add26 = add nsw i32 %mul25, %23
  %add27 = add nsw i32 %add26, 1
  %idxprom28 = sext i32 %add27 to i64
  %arrayidx29 = getelementptr inbounds i8, ptr %20, i64 %idxprom28
  %24 = load i8, ptr %arrayidx29, align 1, !tbaa !25
  %conv30 = zext i8 %24 to i32
  %arrayidx31 = getelementptr inbounds [8 x i32], ptr %p, i64 0, i64 4
  store i32 %conv30, ptr %arrayidx31, align 16, !tbaa !5
  %25 = load ptr, ptr %in.addr, align 8, !tbaa !21
  %26 = load i32, ptr %i.addr, align 4, !tbaa !5
  %add32 = add nsw i32 %26, 1
  %27 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul33 = mul nsw i32 %add32, %27
  %28 = load i32, ptr %j.addr, align 4, !tbaa !5
  %add34 = add nsw i32 %mul33, %28
  %sub35 = sub nsw i32 %add34, 1
  %idxprom36 = sext i32 %sub35 to i64
  %arrayidx37 = getelementptr inbounds i8, ptr %25, i64 %idxprom36
  %29 = load i8, ptr %arrayidx37, align 1, !tbaa !25
  %conv38 = zext i8 %29 to i32
  %arrayidx39 = getelementptr inbounds [8 x i32], ptr %p, i64 0, i64 5
  store i32 %conv38, ptr %arrayidx39, align 4, !tbaa !5
  %30 = load ptr, ptr %in.addr, align 8, !tbaa !21
  %31 = load i32, ptr %i.addr, align 4, !tbaa !5
  %add40 = add nsw i32 %31, 1
  %32 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul41 = mul nsw i32 %add40, %32
  %33 = load i32, ptr %j.addr, align 4, !tbaa !5
  %add42 = add nsw i32 %mul41, %33
  %idxprom43 = sext i32 %add42 to i64
  %arrayidx44 = getelementptr inbounds i8, ptr %30, i64 %idxprom43
  %34 = load i8, ptr %arrayidx44, align 1, !tbaa !25
  %conv45 = zext i8 %34 to i32
  %arrayidx46 = getelementptr inbounds [8 x i32], ptr %p, i64 0, i64 6
  store i32 %conv45, ptr %arrayidx46, align 8, !tbaa !5
  %35 = load ptr, ptr %in.addr, align 8, !tbaa !21
  %36 = load i32, ptr %i.addr, align 4, !tbaa !5
  %add47 = add nsw i32 %36, 1
  %37 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul48 = mul nsw i32 %add47, %37
  %38 = load i32, ptr %j.addr, align 4, !tbaa !5
  %add49 = add nsw i32 %mul48, %38
  %add50 = add nsw i32 %add49, 1
  %idxprom51 = sext i32 %add50 to i64
  %arrayidx52 = getelementptr inbounds i8, ptr %35, i64 %idxprom51
  %39 = load i8, ptr %arrayidx52, align 1, !tbaa !25
  %conv53 = zext i8 %39 to i32
  %arrayidx54 = getelementptr inbounds [8 x i32], ptr %p, i64 0, i64 7
  store i32 %conv53, ptr %arrayidx54, align 4, !tbaa !5
  store i32 0, ptr %k, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc78, %entry
  %40 = load i32, ptr %k, align 4, !tbaa !5
  %cmp = icmp slt i32 %40, 7
  br i1 %cmp, label %for.body, label %for.end80

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %l, align 4, !tbaa !5
  br label %for.cond56

for.cond56:                                       ; preds = %for.inc, %for.body
  %41 = load i32, ptr %l, align 4, !tbaa !5
  %42 = load i32, ptr %k, align 4, !tbaa !5
  %sub57 = sub nsw i32 7, %42
  %cmp58 = icmp slt i32 %41, %sub57
  br i1 %cmp58, label %for.body60, label %for.end

for.body60:                                       ; preds = %for.cond56
  %43 = load i32, ptr %l, align 4, !tbaa !5
  %idxprom61 = sext i32 %43 to i64
  %arrayidx62 = getelementptr inbounds [8 x i32], ptr %p, i64 0, i64 %idxprom61
  %44 = load i32, ptr %arrayidx62, align 4, !tbaa !5
  %45 = load i32, ptr %l, align 4, !tbaa !5
  %add63 = add nsw i32 %45, 1
  %idxprom64 = sext i32 %add63 to i64
  %arrayidx65 = getelementptr inbounds [8 x i32], ptr %p, i64 0, i64 %idxprom64
  %46 = load i32, ptr %arrayidx65, align 4, !tbaa !5
  %cmp66 = icmp sgt i32 %44, %46
  br i1 %cmp66, label %if.then, label %if.end

if.then:                                          ; preds = %for.body60
  %47 = load i32, ptr %l, align 4, !tbaa !5
  %idxprom68 = sext i32 %47 to i64
  %arrayidx69 = getelementptr inbounds [8 x i32], ptr %p, i64 0, i64 %idxprom68
  %48 = load i32, ptr %arrayidx69, align 4, !tbaa !5
  store i32 %48, ptr %tmp, align 4, !tbaa !5
  %49 = load i32, ptr %l, align 4, !tbaa !5
  %add70 = add nsw i32 %49, 1
  %idxprom71 = sext i32 %add70 to i64
  %arrayidx72 = getelementptr inbounds [8 x i32], ptr %p, i64 0, i64 %idxprom71
  %50 = load i32, ptr %arrayidx72, align 4, !tbaa !5
  %51 = load i32, ptr %l, align 4, !tbaa !5
  %idxprom73 = sext i32 %51 to i64
  %arrayidx74 = getelementptr inbounds [8 x i32], ptr %p, i64 0, i64 %idxprom73
  store i32 %50, ptr %arrayidx74, align 4, !tbaa !5
  %52 = load i32, ptr %tmp, align 4, !tbaa !5
  %53 = load i32, ptr %l, align 4, !tbaa !5
  %add75 = add nsw i32 %53, 1
  %idxprom76 = sext i32 %add75 to i64
  %arrayidx77 = getelementptr inbounds [8 x i32], ptr %p, i64 0, i64 %idxprom76
  store i32 %52, ptr %arrayidx77, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body60
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %54 = load i32, ptr %l, align 4, !tbaa !5
  %inc = add nsw i32 %54, 1
  store i32 %inc, ptr %l, align 4, !tbaa !5
  br label %for.cond56, !llvm.loop !35

for.end:                                          ; preds = %for.cond56
  br label %for.inc78

for.inc78:                                        ; preds = %for.end
  %55 = load i32, ptr %k, align 4, !tbaa !5
  %inc79 = add nsw i32 %55, 1
  store i32 %inc79, ptr %k, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !36

for.end80:                                        ; preds = %for.cond
  %arrayidx81 = getelementptr inbounds [8 x i32], ptr %p, i64 0, i64 3
  %56 = load i32, ptr %arrayidx81, align 4, !tbaa !5
  %arrayidx82 = getelementptr inbounds [8 x i32], ptr %p, i64 0, i64 4
  %57 = load i32, ptr %arrayidx82, align 16, !tbaa !5
  %add83 = add nsw i32 %56, %57
  %div = sdiv i32 %add83, 2
  %conv84 = trunc i32 %div to i8
  call void @llvm.lifetime.end.p0(i64 4, ptr %tmp) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %l) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr %p) #10
  ret i8 %conv84
}

; Function Attrs: nounwind uwtable
define dso_local void @enlarge(ptr noundef %in, ptr noundef %tmp_image, ptr noundef %x_size, ptr noundef %y_size, i32 noundef %border) #0 {
entry:
  %in.addr = alloca ptr, align 8
  %tmp_image.addr = alloca ptr, align 8
  %x_size.addr = alloca ptr, align 8
  %y_size.addr = alloca ptr, align 8
  %border.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store ptr %in, ptr %in.addr, align 8, !tbaa !9
  store ptr %tmp_image, ptr %tmp_image.addr, align 8, !tbaa !21
  store ptr %x_size, ptr %x_size.addr, align 8, !tbaa !23
  store ptr %y_size, ptr %y_size.addr, align 8, !tbaa !23
  store i32 %border, ptr %border.addr, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #10
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load ptr, ptr %y_size.addr, align 8, !tbaa !23
  %2 = load i32, ptr %1, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %tmp_image.addr, align 8, !tbaa !21
  %4 = load i32, ptr %i, align 4, !tbaa !5
  %5 = load i32, ptr %border.addr, align 4, !tbaa !5
  %add = add nsw i32 %4, %5
  %6 = load ptr, ptr %x_size.addr, align 8, !tbaa !23
  %7 = load i32, ptr %6, align 4, !tbaa !5
  %8 = load i32, ptr %border.addr, align 4, !tbaa !5
  %mul = mul nsw i32 2, %8
  %add1 = add nsw i32 %7, %mul
  %mul2 = mul nsw i32 %add, %add1
  %idx.ext = sext i32 %mul2 to i64
  %add.ptr = getelementptr inbounds i8, ptr %3, i64 %idx.ext
  %9 = load i32, ptr %border.addr, align 4, !tbaa !5
  %idx.ext3 = sext i32 %9 to i64
  %add.ptr4 = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.ext3
  %10 = load ptr, ptr %in.addr, align 8, !tbaa !9
  %11 = load ptr, ptr %10, align 8, !tbaa !21
  %12 = load i32, ptr %i, align 4, !tbaa !5
  %13 = load ptr, ptr %x_size.addr, align 8, !tbaa !23
  %14 = load i32, ptr %13, align 4, !tbaa !5
  %mul5 = mul nsw i32 %12, %14
  %idx.ext6 = sext i32 %mul5 to i64
  %add.ptr7 = getelementptr inbounds i8, ptr %11, i64 %idx.ext6
  %15 = load ptr, ptr %x_size.addr, align 8, !tbaa !23
  %16 = load i32, ptr %15, align 4, !tbaa !5
  %conv = sext i32 %16 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr4, ptr align 1 %add.ptr7, i64 %conv, i1 false)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %17, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !37

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc39, %for.end
  %18 = load i32, ptr %i, align 4, !tbaa !5
  %19 = load i32, ptr %border.addr, align 4, !tbaa !5
  %cmp9 = icmp slt i32 %18, %19
  br i1 %cmp9, label %for.body11, label %for.end41

for.body11:                                       ; preds = %for.cond8
  %20 = load ptr, ptr %tmp_image.addr, align 8, !tbaa !21
  %21 = load i32, ptr %border.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %21, 1
  %22 = load i32, ptr %i, align 4, !tbaa !5
  %sub12 = sub nsw i32 %sub, %22
  %23 = load ptr, ptr %x_size.addr, align 8, !tbaa !23
  %24 = load i32, ptr %23, align 4, !tbaa !5
  %25 = load i32, ptr %border.addr, align 4, !tbaa !5
  %mul13 = mul nsw i32 2, %25
  %add14 = add nsw i32 %24, %mul13
  %mul15 = mul nsw i32 %sub12, %add14
  %idx.ext16 = sext i32 %mul15 to i64
  %add.ptr17 = getelementptr inbounds i8, ptr %20, i64 %idx.ext16
  %26 = load i32, ptr %border.addr, align 4, !tbaa !5
  %idx.ext18 = sext i32 %26 to i64
  %add.ptr19 = getelementptr inbounds i8, ptr %add.ptr17, i64 %idx.ext18
  %27 = load ptr, ptr %in.addr, align 8, !tbaa !9
  %28 = load ptr, ptr %27, align 8, !tbaa !21
  %29 = load i32, ptr %i, align 4, !tbaa !5
  %30 = load ptr, ptr %x_size.addr, align 8, !tbaa !23
  %31 = load i32, ptr %30, align 4, !tbaa !5
  %mul20 = mul nsw i32 %29, %31
  %idx.ext21 = sext i32 %mul20 to i64
  %add.ptr22 = getelementptr inbounds i8, ptr %28, i64 %idx.ext21
  %32 = load ptr, ptr %x_size.addr, align 8, !tbaa !23
  %33 = load i32, ptr %32, align 4, !tbaa !5
  %conv23 = sext i32 %33 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr19, ptr align 1 %add.ptr22, i64 %conv23, i1 false)
  %34 = load ptr, ptr %tmp_image.addr, align 8, !tbaa !21
  %35 = load ptr, ptr %y_size.addr, align 8, !tbaa !23
  %36 = load i32, ptr %35, align 4, !tbaa !5
  %37 = load i32, ptr %border.addr, align 4, !tbaa !5
  %add24 = add nsw i32 %36, %37
  %38 = load i32, ptr %i, align 4, !tbaa !5
  %add25 = add nsw i32 %add24, %38
  %39 = load ptr, ptr %x_size.addr, align 8, !tbaa !23
  %40 = load i32, ptr %39, align 4, !tbaa !5
  %41 = load i32, ptr %border.addr, align 4, !tbaa !5
  %mul26 = mul nsw i32 2, %41
  %add27 = add nsw i32 %40, %mul26
  %mul28 = mul nsw i32 %add25, %add27
  %idx.ext29 = sext i32 %mul28 to i64
  %add.ptr30 = getelementptr inbounds i8, ptr %34, i64 %idx.ext29
  %42 = load i32, ptr %border.addr, align 4, !tbaa !5
  %idx.ext31 = sext i32 %42 to i64
  %add.ptr32 = getelementptr inbounds i8, ptr %add.ptr30, i64 %idx.ext31
  %43 = load ptr, ptr %in.addr, align 8, !tbaa !9
  %44 = load ptr, ptr %43, align 8, !tbaa !21
  %45 = load ptr, ptr %y_size.addr, align 8, !tbaa !23
  %46 = load i32, ptr %45, align 4, !tbaa !5
  %47 = load i32, ptr %i, align 4, !tbaa !5
  %sub33 = sub nsw i32 %46, %47
  %sub34 = sub nsw i32 %sub33, 1
  %48 = load ptr, ptr %x_size.addr, align 8, !tbaa !23
  %49 = load i32, ptr %48, align 4, !tbaa !5
  %mul35 = mul nsw i32 %sub34, %49
  %idx.ext36 = sext i32 %mul35 to i64
  %add.ptr37 = getelementptr inbounds i8, ptr %44, i64 %idx.ext36
  %50 = load ptr, ptr %x_size.addr, align 8, !tbaa !23
  %51 = load i32, ptr %50, align 4, !tbaa !5
  %conv38 = sext i32 %51 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr32, ptr align 1 %add.ptr37, i64 %conv38, i1 false)
  br label %for.inc39

for.inc39:                                        ; preds = %for.body11
  %52 = load i32, ptr %i, align 4, !tbaa !5
  %inc40 = add nsw i32 %52, 1
  store i32 %inc40, ptr %i, align 4, !tbaa !5
  br label %for.cond8, !llvm.loop !38

for.end41:                                        ; preds = %for.cond8
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond42

for.cond42:                                       ; preds = %for.inc85, %for.end41
  %53 = load i32, ptr %i, align 4, !tbaa !5
  %54 = load i32, ptr %border.addr, align 4, !tbaa !5
  %cmp43 = icmp slt i32 %53, %54
  br i1 %cmp43, label %for.body45, label %for.end87

for.body45:                                       ; preds = %for.cond42
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond46

for.cond46:                                       ; preds = %for.inc82, %for.body45
  %55 = load i32, ptr %j, align 4, !tbaa !5
  %56 = load ptr, ptr %y_size.addr, align 8, !tbaa !23
  %57 = load i32, ptr %56, align 4, !tbaa !5
  %58 = load i32, ptr %border.addr, align 4, !tbaa !5
  %mul47 = mul nsw i32 2, %58
  %add48 = add nsw i32 %57, %mul47
  %cmp49 = icmp slt i32 %55, %add48
  br i1 %cmp49, label %for.body51, label %for.end84

for.body51:                                       ; preds = %for.cond46
  %59 = load ptr, ptr %tmp_image.addr, align 8, !tbaa !21
  %60 = load i32, ptr %j, align 4, !tbaa !5
  %61 = load ptr, ptr %x_size.addr, align 8, !tbaa !23
  %62 = load i32, ptr %61, align 4, !tbaa !5
  %63 = load i32, ptr %border.addr, align 4, !tbaa !5
  %mul52 = mul nsw i32 2, %63
  %add53 = add nsw i32 %62, %mul52
  %mul54 = mul nsw i32 %60, %add53
  %64 = load i32, ptr %border.addr, align 4, !tbaa !5
  %add55 = add nsw i32 %mul54, %64
  %65 = load i32, ptr %i, align 4, !tbaa !5
  %add56 = add nsw i32 %add55, %65
  %idxprom = sext i32 %add56 to i64
  %arrayidx = getelementptr inbounds i8, ptr %59, i64 %idxprom
  %66 = load i8, ptr %arrayidx, align 1, !tbaa !25
  %67 = load ptr, ptr %tmp_image.addr, align 8, !tbaa !21
  %68 = load i32, ptr %j, align 4, !tbaa !5
  %69 = load ptr, ptr %x_size.addr, align 8, !tbaa !23
  %70 = load i32, ptr %69, align 4, !tbaa !5
  %71 = load i32, ptr %border.addr, align 4, !tbaa !5
  %mul57 = mul nsw i32 2, %71
  %add58 = add nsw i32 %70, %mul57
  %mul59 = mul nsw i32 %68, %add58
  %72 = load i32, ptr %border.addr, align 4, !tbaa !5
  %add60 = add nsw i32 %mul59, %72
  %sub61 = sub nsw i32 %add60, 1
  %73 = load i32, ptr %i, align 4, !tbaa !5
  %sub62 = sub nsw i32 %sub61, %73
  %idxprom63 = sext i32 %sub62 to i64
  %arrayidx64 = getelementptr inbounds i8, ptr %67, i64 %idxprom63
  store i8 %66, ptr %arrayidx64, align 1, !tbaa !25
  %74 = load ptr, ptr %tmp_image.addr, align 8, !tbaa !21
  %75 = load i32, ptr %j, align 4, !tbaa !5
  %76 = load ptr, ptr %x_size.addr, align 8, !tbaa !23
  %77 = load i32, ptr %76, align 4, !tbaa !5
  %78 = load i32, ptr %border.addr, align 4, !tbaa !5
  %mul65 = mul nsw i32 2, %78
  %add66 = add nsw i32 %77, %mul65
  %mul67 = mul nsw i32 %75, %add66
  %79 = load ptr, ptr %x_size.addr, align 8, !tbaa !23
  %80 = load i32, ptr %79, align 4, !tbaa !5
  %add68 = add nsw i32 %mul67, %80
  %81 = load i32, ptr %border.addr, align 4, !tbaa !5
  %add69 = add nsw i32 %add68, %81
  %sub70 = sub nsw i32 %add69, 1
  %82 = load i32, ptr %i, align 4, !tbaa !5
  %sub71 = sub nsw i32 %sub70, %82
  %idxprom72 = sext i32 %sub71 to i64
  %arrayidx73 = getelementptr inbounds i8, ptr %74, i64 %idxprom72
  %83 = load i8, ptr %arrayidx73, align 1, !tbaa !25
  %84 = load ptr, ptr %tmp_image.addr, align 8, !tbaa !21
  %85 = load i32, ptr %j, align 4, !tbaa !5
  %86 = load ptr, ptr %x_size.addr, align 8, !tbaa !23
  %87 = load i32, ptr %86, align 4, !tbaa !5
  %88 = load i32, ptr %border.addr, align 4, !tbaa !5
  %mul74 = mul nsw i32 2, %88
  %add75 = add nsw i32 %87, %mul74
  %mul76 = mul nsw i32 %85, %add75
  %89 = load ptr, ptr %x_size.addr, align 8, !tbaa !23
  %90 = load i32, ptr %89, align 4, !tbaa !5
  %add77 = add nsw i32 %mul76, %90
  %91 = load i32, ptr %border.addr, align 4, !tbaa !5
  %add78 = add nsw i32 %add77, %91
  %92 = load i32, ptr %i, align 4, !tbaa !5
  %add79 = add nsw i32 %add78, %92
  %idxprom80 = sext i32 %add79 to i64
  %arrayidx81 = getelementptr inbounds i8, ptr %84, i64 %idxprom80
  store i8 %83, ptr %arrayidx81, align 1, !tbaa !25
  br label %for.inc82

for.inc82:                                        ; preds = %for.body51
  %93 = load i32, ptr %j, align 4, !tbaa !5
  %inc83 = add nsw i32 %93, 1
  store i32 %inc83, ptr %j, align 4, !tbaa !5
  br label %for.cond46, !llvm.loop !39

for.end84:                                        ; preds = %for.cond46
  br label %for.inc85

for.inc85:                                        ; preds = %for.end84
  %94 = load i32, ptr %i, align 4, !tbaa !5
  %inc86 = add nsw i32 %94, 1
  store i32 %inc86, ptr %i, align 4, !tbaa !5
  br label %for.cond42, !llvm.loop !40

for.end87:                                        ; preds = %for.cond42
  %95 = load i32, ptr %border.addr, align 4, !tbaa !5
  %mul88 = mul nsw i32 2, %95
  %96 = load ptr, ptr %x_size.addr, align 8, !tbaa !23
  %97 = load i32, ptr %96, align 4, !tbaa !5
  %add89 = add nsw i32 %97, %mul88
  store i32 %add89, ptr %96, align 4, !tbaa !5
  %98 = load i32, ptr %border.addr, align 4, !tbaa !5
  %mul90 = mul nsw i32 2, %98
  %99 = load ptr, ptr %y_size.addr, align 8, !tbaa !23
  %100 = load i32, ptr %99, align 4, !tbaa !5
  %add91 = add nsw i32 %100, %mul90
  store i32 %add91, ptr %99, align 4, !tbaa !5
  %101 = load ptr, ptr %tmp_image.addr, align 8, !tbaa !21
  %102 = load ptr, ptr %in.addr, align 8, !tbaa !9
  store ptr %101, ptr %102, align 8, !tbaa !21
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #10
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #7

; Function Attrs: nounwind uwtable
define dso_local void @susan_smoothing(i32 noundef %three_by_three, ptr noundef %in, float noundef %dt, i32 noundef %x_size, i32 noundef %y_size, ptr noundef %bp) #0 {
entry:
  %three_by_three.addr = alloca i32, align 4
  %in.addr = alloca ptr, align 8
  %dt.addr = alloca float, align 4
  %x_size.addr = alloca i32, align 4
  %y_size.addr = alloca i32, align 4
  %bp.addr = alloca ptr, align 8
  %temp = alloca float, align 4
  %n_max = alloca i32, align 4
  %increment = alloca i32, align 4
  %mask_size = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %area = alloca i32, align 4
  %brightness = alloca i32, align 4
  %tmp = alloca i32, align 4
  %centre = alloca i32, align 4
  %ip = alloca ptr, align 8
  %dp = alloca ptr, align 8
  %dpt = alloca ptr, align 8
  %cp = alloca ptr, align 8
  %out = alloca ptr, align 8
  %tmp_image = alloca ptr, align 8
  %total = alloca i32, align 4
  store i32 %three_by_three, ptr %three_by_three.addr, align 4, !tbaa !5
  store ptr %in, ptr %in.addr, align 8, !tbaa !21
  store float %dt, ptr %dt.addr, align 4, !tbaa !41
  store i32 %x_size, ptr %x_size.addr, align 4, !tbaa !5
  store i32 %y_size, ptr %y_size.addr, align 4, !tbaa !5
  store ptr %bp, ptr %bp.addr, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 4, ptr %temp) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %n_max) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %increment) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %mask_size) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %x) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %y) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %area) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %brightness) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %tmp) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %centre) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %ip) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %dp) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %dpt) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %cp) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %out) #10
  %0 = load ptr, ptr %in.addr, align 8, !tbaa !21
  store ptr %0, ptr %out, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp_image) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %total) #10
  %1 = load i32, ptr %three_by_three.addr, align 4, !tbaa !5
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load float, ptr %dt.addr, align 4, !tbaa !41
  %conv = fpext float %2 to double
  %mul = fmul double 1.500000e+00, %conv
  %conv1 = fptosi double %mul to i32
  %add = add nsw i32 %conv1, 1
  store i32 %add, ptr %mask_size, align 4, !tbaa !5
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 1, ptr %mask_size, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  store i32 0, ptr %total, align 4, !tbaa !5
  %3 = load float, ptr %dt.addr, align 4, !tbaa !41
  %cmp2 = fcmp ogt float %3, 1.500000e+01
  br i1 %cmp2, label %land.lhs.true, label %if.end10

land.lhs.true:                                    ; preds = %if.end
  %4 = load i32, ptr %total, align 4, !tbaa !5
  %cmp4 = icmp eq i32 %4, 0
  br i1 %cmp4, label %if.then6, label %if.end10

if.then6:                                         ; preds = %land.lhs.true
  %5 = load float, ptr %dt.addr, align 4, !tbaa !41
  %conv7 = fpext float %5 to double
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.25, double noundef %conv7)
  %call8 = call i32 (ptr, ...) @printf(ptr noundef @.str.26)
  %call9 = call i32 (ptr, ...) @printf(ptr noundef @.str.27)
  call void @exit(i32 noundef 0) #11
  unreachable

if.end10:                                         ; preds = %land.lhs.true, %if.end
  %6 = load i32, ptr %mask_size, align 4, !tbaa !5
  %mul11 = mul nsw i32 2, %6
  %add12 = add nsw i32 %mul11, 1
  %7 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %cmp13 = icmp sgt i32 %add12, %7
  br i1 %cmp13, label %if.then19, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end10
  %8 = load i32, ptr %mask_size, align 4, !tbaa !5
  %mul15 = mul nsw i32 2, %8
  %add16 = add nsw i32 %mul15, 1
  %9 = load i32, ptr %y_size.addr, align 4, !tbaa !5
  %cmp17 = icmp sgt i32 %add16, %9
  br i1 %cmp17, label %if.then19, label %if.end21

if.then19:                                        ; preds = %lor.lhs.false, %if.end10
  %10 = load i32, ptr %mask_size, align 4, !tbaa !5
  %11 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %12 = load i32, ptr %y_size.addr, align 4, !tbaa !5
  %call20 = call i32 (ptr, ...) @printf(ptr noundef @.str.28, i32 noundef %10, i32 noundef %11, i32 noundef %12)
  call void @exit(i32 noundef 0) #11
  unreachable

if.end21:                                         ; preds = %lor.lhs.false
  %13 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %14 = load i32, ptr %mask_size, align 4, !tbaa !5
  %mul22 = mul nsw i32 %14, 2
  %add23 = add nsw i32 %13, %mul22
  %15 = load i32, ptr %y_size.addr, align 4, !tbaa !5
  %16 = load i32, ptr %mask_size, align 4, !tbaa !5
  %mul24 = mul nsw i32 %16, 2
  %add25 = add nsw i32 %15, %mul24
  %mul26 = mul nsw i32 %add23, %add25
  %conv27 = sext i32 %mul26 to i64
  %call28 = call noalias ptr @malloc(i64 noundef %conv27) #12
  store ptr %call28, ptr %tmp_image, align 8, !tbaa !21
  %17 = load ptr, ptr %tmp_image, align 8, !tbaa !21
  %18 = load i32, ptr %mask_size, align 4, !tbaa !5
  call void @enlarge(ptr noundef %in.addr, ptr noundef %17, ptr noundef %x_size.addr, ptr noundef %y_size.addr, i32 noundef %18)
  %19 = load i32, ptr %three_by_three.addr, align 4, !tbaa !5
  %cmp29 = icmp eq i32 %19, 0
  br i1 %cmp29, label %if.then31, label %if.else128

if.then31:                                        ; preds = %if.end21
  %20 = load i32, ptr %mask_size, align 4, !tbaa !5
  %mul32 = mul nsw i32 %20, 2
  %add33 = add nsw i32 %mul32, 1
  store i32 %add33, ptr %n_max, align 4, !tbaa !5
  %21 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %22 = load i32, ptr %n_max, align 4, !tbaa !5
  %sub = sub nsw i32 %21, %22
  store i32 %sub, ptr %increment, align 4, !tbaa !5
  %23 = load i32, ptr %n_max, align 4, !tbaa !5
  %24 = load i32, ptr %n_max, align 4, !tbaa !5
  %mul34 = mul nsw i32 %23, %24
  %conv35 = sext i32 %mul34 to i64
  %call36 = call noalias ptr @malloc(i64 noundef %conv35) #12
  store ptr %call36, ptr %dp, align 8, !tbaa !21
  %25 = load ptr, ptr %dp, align 8, !tbaa !21
  store ptr %25, ptr %dpt, align 8, !tbaa !21
  %26 = load float, ptr %dt.addr, align 4, !tbaa !41
  %27 = load float, ptr %dt.addr, align 4, !tbaa !41
  %mul37 = fmul float %26, %27
  %fneg = fneg float %mul37
  store float %fneg, ptr %temp, align 4, !tbaa !41
  %28 = load i32, ptr %mask_size, align 4, !tbaa !5
  %sub38 = sub nsw i32 0, %28
  store i32 %sub38, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc55, %if.then31
  %29 = load i32, ptr %i, align 4, !tbaa !5
  %30 = load i32, ptr %mask_size, align 4, !tbaa !5
  %cmp39 = icmp sle i32 %29, %30
  br i1 %cmp39, label %for.body, label %for.end57

for.body:                                         ; preds = %for.cond
  %31 = load i32, ptr %mask_size, align 4, !tbaa !5
  %sub41 = sub nsw i32 0, %31
  store i32 %sub41, ptr %j, align 4, !tbaa !5
  br label %for.cond42

for.cond42:                                       ; preds = %for.inc, %for.body
  %32 = load i32, ptr %j, align 4, !tbaa !5
  %33 = load i32, ptr %mask_size, align 4, !tbaa !5
  %cmp43 = icmp sle i32 %32, %33
  br i1 %cmp43, label %for.body45, label %for.end

for.body45:                                       ; preds = %for.cond42
  %34 = load i32, ptr %i, align 4, !tbaa !5
  %35 = load i32, ptr %i, align 4, !tbaa !5
  %mul46 = mul nsw i32 %34, %35
  %36 = load i32, ptr %j, align 4, !tbaa !5
  %37 = load i32, ptr %j, align 4, !tbaa !5
  %mul47 = mul nsw i32 %36, %37
  %add48 = add nsw i32 %mul46, %mul47
  %conv49 = sitofp i32 %add48 to float
  %38 = load float, ptr %temp, align 4, !tbaa !41
  %div = fdiv float %conv49, %38
  %conv50 = fpext float %div to double
  %call51 = call double @exp(double noundef %conv50) #10, !tbaa !5
  %mul52 = fmul double 1.000000e+02, %call51
  %conv53 = fptosi double %mul52 to i32
  store i32 %conv53, ptr %x, align 4, !tbaa !5
  %39 = load i32, ptr %x, align 4, !tbaa !5
  %conv54 = trunc i32 %39 to i8
  %40 = load ptr, ptr %dpt, align 8, !tbaa !21
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %40, i32 1
  store ptr %incdec.ptr, ptr %dpt, align 8, !tbaa !21
  store i8 %conv54, ptr %40, align 1, !tbaa !25
  br label %for.inc

for.inc:                                          ; preds = %for.body45
  %41 = load i32, ptr %j, align 4, !tbaa !5
  %inc = add nsw i32 %41, 1
  store i32 %inc, ptr %j, align 4, !tbaa !5
  br label %for.cond42, !llvm.loop !43

for.end:                                          ; preds = %for.cond42
  br label %for.inc55

for.inc55:                                        ; preds = %for.end
  %42 = load i32, ptr %i, align 4, !tbaa !5
  %inc56 = add nsw i32 %42, 1
  store i32 %inc56, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !44

for.end57:                                        ; preds = %for.cond
  %43 = load i32, ptr %mask_size, align 4, !tbaa !5
  store i32 %43, ptr %i, align 4, !tbaa !5
  br label %for.cond58

for.cond58:                                       ; preds = %for.inc125, %for.end57
  %44 = load i32, ptr %i, align 4, !tbaa !5
  %45 = load i32, ptr %y_size.addr, align 4, !tbaa !5
  %46 = load i32, ptr %mask_size, align 4, !tbaa !5
  %sub59 = sub nsw i32 %45, %46
  %cmp60 = icmp slt i32 %44, %sub59
  br i1 %cmp60, label %for.body62, label %for.end127

for.body62:                                       ; preds = %for.cond58
  %47 = load i32, ptr %mask_size, align 4, !tbaa !5
  store i32 %47, ptr %j, align 4, !tbaa !5
  br label %for.cond63

for.cond63:                                       ; preds = %for.inc122, %for.body62
  %48 = load i32, ptr %j, align 4, !tbaa !5
  %49 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %50 = load i32, ptr %mask_size, align 4, !tbaa !5
  %sub64 = sub nsw i32 %49, %50
  %cmp65 = icmp slt i32 %48, %sub64
  br i1 %cmp65, label %for.body67, label %for.end124

for.body67:                                       ; preds = %for.cond63
  store i32 0, ptr %area, align 4, !tbaa !5
  store i32 0, ptr %total, align 4, !tbaa !5
  %51 = load ptr, ptr %dp, align 8, !tbaa !21
  store ptr %51, ptr %dpt, align 8, !tbaa !21
  %52 = load ptr, ptr %in.addr, align 8, !tbaa !21
  %53 = load i32, ptr %i, align 4, !tbaa !5
  %54 = load i32, ptr %mask_size, align 4, !tbaa !5
  %sub68 = sub nsw i32 %53, %54
  %55 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul69 = mul nsw i32 %sub68, %55
  %idx.ext = sext i32 %mul69 to i64
  %add.ptr = getelementptr inbounds i8, ptr %52, i64 %idx.ext
  %56 = load i32, ptr %j, align 4, !tbaa !5
  %idx.ext70 = sext i32 %56 to i64
  %add.ptr71 = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.ext70
  %57 = load i32, ptr %mask_size, align 4, !tbaa !5
  %idx.ext72 = sext i32 %57 to i64
  %idx.neg = sub i64 0, %idx.ext72
  %add.ptr73 = getelementptr inbounds i8, ptr %add.ptr71, i64 %idx.neg
  store ptr %add.ptr73, ptr %ip, align 8, !tbaa !21
  %58 = load ptr, ptr %in.addr, align 8, !tbaa !21
  %59 = load i32, ptr %i, align 4, !tbaa !5
  %60 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul74 = mul nsw i32 %59, %60
  %61 = load i32, ptr %j, align 4, !tbaa !5
  %add75 = add nsw i32 %mul74, %61
  %idxprom = sext i32 %add75 to i64
  %arrayidx = getelementptr inbounds i8, ptr %58, i64 %idxprom
  %62 = load i8, ptr %arrayidx, align 1, !tbaa !25
  %conv76 = zext i8 %62 to i32
  store i32 %conv76, ptr %centre, align 4, !tbaa !5
  %63 = load ptr, ptr %bp.addr, align 8, !tbaa !21
  %64 = load i32, ptr %centre, align 4, !tbaa !5
  %idx.ext77 = sext i32 %64 to i64
  %add.ptr78 = getelementptr inbounds i8, ptr %63, i64 %idx.ext77
  store ptr %add.ptr78, ptr %cp, align 8, !tbaa !21
  %65 = load i32, ptr %mask_size, align 4, !tbaa !5
  %sub79 = sub nsw i32 0, %65
  store i32 %sub79, ptr %y, align 4, !tbaa !5
  br label %for.cond80

for.cond80:                                       ; preds = %for.inc106, %for.body67
  %66 = load i32, ptr %y, align 4, !tbaa !5
  %67 = load i32, ptr %mask_size, align 4, !tbaa !5
  %cmp81 = icmp sle i32 %66, %67
  br i1 %cmp81, label %for.body83, label %for.end108

for.body83:                                       ; preds = %for.cond80
  %68 = load i32, ptr %mask_size, align 4, !tbaa !5
  %sub84 = sub nsw i32 0, %68
  store i32 %sub84, ptr %x, align 4, !tbaa !5
  br label %for.cond85

for.cond85:                                       ; preds = %for.inc101, %for.body83
  %69 = load i32, ptr %x, align 4, !tbaa !5
  %70 = load i32, ptr %mask_size, align 4, !tbaa !5
  %cmp86 = icmp sle i32 %69, %70
  br i1 %cmp86, label %for.body88, label %for.end103

for.body88:                                       ; preds = %for.cond85
  %71 = load ptr, ptr %ip, align 8, !tbaa !21
  %incdec.ptr89 = getelementptr inbounds nuw i8, ptr %71, i32 1
  store ptr %incdec.ptr89, ptr %ip, align 8, !tbaa !21
  %72 = load i8, ptr %71, align 1, !tbaa !25
  %conv90 = zext i8 %72 to i32
  store i32 %conv90, ptr %brightness, align 4, !tbaa !5
  %73 = load ptr, ptr %dpt, align 8, !tbaa !21
  %incdec.ptr91 = getelementptr inbounds nuw i8, ptr %73, i32 1
  store ptr %incdec.ptr91, ptr %dpt, align 8, !tbaa !21
  %74 = load i8, ptr %73, align 1, !tbaa !25
  %conv92 = zext i8 %74 to i32
  %75 = load ptr, ptr %cp, align 8, !tbaa !21
  %76 = load i32, ptr %brightness, align 4, !tbaa !5
  %idx.ext93 = sext i32 %76 to i64
  %idx.neg94 = sub i64 0, %idx.ext93
  %add.ptr95 = getelementptr inbounds i8, ptr %75, i64 %idx.neg94
  %77 = load i8, ptr %add.ptr95, align 1, !tbaa !25
  %conv96 = zext i8 %77 to i32
  %mul97 = mul nsw i32 %conv92, %conv96
  store i32 %mul97, ptr %tmp, align 4, !tbaa !5
  %78 = load i32, ptr %tmp, align 4, !tbaa !5
  %79 = load i32, ptr %area, align 4, !tbaa !5
  %add98 = add nsw i32 %79, %78
  store i32 %add98, ptr %area, align 4, !tbaa !5
  %80 = load i32, ptr %tmp, align 4, !tbaa !5
  %81 = load i32, ptr %brightness, align 4, !tbaa !5
  %mul99 = mul nsw i32 %80, %81
  %82 = load i32, ptr %total, align 4, !tbaa !5
  %add100 = add nsw i32 %82, %mul99
  store i32 %add100, ptr %total, align 4, !tbaa !5
  br label %for.inc101

for.inc101:                                       ; preds = %for.body88
  %83 = load i32, ptr %x, align 4, !tbaa !5
  %inc102 = add nsw i32 %83, 1
  store i32 %inc102, ptr %x, align 4, !tbaa !5
  br label %for.cond85, !llvm.loop !45

for.end103:                                       ; preds = %for.cond85
  %84 = load i32, ptr %increment, align 4, !tbaa !5
  %85 = load ptr, ptr %ip, align 8, !tbaa !21
  %idx.ext104 = sext i32 %84 to i64
  %add.ptr105 = getelementptr inbounds i8, ptr %85, i64 %idx.ext104
  store ptr %add.ptr105, ptr %ip, align 8, !tbaa !21
  br label %for.inc106

for.inc106:                                       ; preds = %for.end103
  %86 = load i32, ptr %y, align 4, !tbaa !5
  %inc107 = add nsw i32 %86, 1
  store i32 %inc107, ptr %y, align 4, !tbaa !5
  br label %for.cond80, !llvm.loop !46

for.end108:                                       ; preds = %for.cond80
  %87 = load i32, ptr %area, align 4, !tbaa !5
  %sub109 = sub nsw i32 %87, 10000
  store i32 %sub109, ptr %tmp, align 4, !tbaa !5
  %88 = load i32, ptr %tmp, align 4, !tbaa !5
  %cmp110 = icmp eq i32 %88, 0
  br i1 %cmp110, label %if.then112, label %if.else115

if.then112:                                       ; preds = %for.end108
  %89 = load ptr, ptr %in.addr, align 8, !tbaa !21
  %90 = load i32, ptr %i, align 4, !tbaa !5
  %91 = load i32, ptr %j, align 4, !tbaa !5
  %92 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %call113 = call zeroext i8 @median(ptr noundef %89, i32 noundef %90, i32 noundef %91, i32 noundef %92)
  %93 = load ptr, ptr %out, align 8, !tbaa !21
  %incdec.ptr114 = getelementptr inbounds nuw i8, ptr %93, i32 1
  store ptr %incdec.ptr114, ptr %out, align 8, !tbaa !21
  store i8 %call113, ptr %93, align 1, !tbaa !25
  br label %if.end121

if.else115:                                       ; preds = %for.end108
  %94 = load i32, ptr %total, align 4, !tbaa !5
  %95 = load i32, ptr %centre, align 4, !tbaa !5
  %mul116 = mul nsw i32 %95, 10000
  %sub117 = sub nsw i32 %94, %mul116
  %96 = load i32, ptr %tmp, align 4, !tbaa !5
  %div118 = sdiv i32 %sub117, %96
  %conv119 = trunc i32 %div118 to i8
  %97 = load ptr, ptr %out, align 8, !tbaa !21
  %incdec.ptr120 = getelementptr inbounds nuw i8, ptr %97, i32 1
  store ptr %incdec.ptr120, ptr %out, align 8, !tbaa !21
  store i8 %conv119, ptr %97, align 1, !tbaa !25
  br label %if.end121

if.end121:                                        ; preds = %if.else115, %if.then112
  br label %for.inc122

for.inc122:                                       ; preds = %if.end121
  %98 = load i32, ptr %j, align 4, !tbaa !5
  %inc123 = add nsw i32 %98, 1
  store i32 %inc123, ptr %j, align 4, !tbaa !5
  br label %for.cond63, !llvm.loop !47

for.end124:                                       ; preds = %for.cond63
  br label %for.inc125

for.inc125:                                       ; preds = %for.end124
  %99 = load i32, ptr %i, align 4, !tbaa !5
  %inc126 = add nsw i32 %99, 1
  store i32 %inc126, ptr %i, align 4, !tbaa !5
  br label %for.cond58, !llvm.loop !48

for.end127:                                       ; preds = %for.cond58
  %100 = load ptr, ptr %dp, align 8, !tbaa !21
  call void @free(ptr noundef %100) #10
  br label %if.end256

if.else128:                                       ; preds = %if.end21
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond129

for.cond129:                                      ; preds = %for.inc253, %if.else128
  %101 = load i32, ptr %i, align 4, !tbaa !5
  %102 = load i32, ptr %y_size.addr, align 4, !tbaa !5
  %sub130 = sub nsw i32 %102, 1
  %cmp131 = icmp slt i32 %101, %sub130
  br i1 %cmp131, label %for.body133, label %for.end255

for.body133:                                      ; preds = %for.cond129
  store i32 1, ptr %j, align 4, !tbaa !5
  br label %for.cond134

for.cond134:                                      ; preds = %for.inc250, %for.body133
  %103 = load i32, ptr %j, align 4, !tbaa !5
  %104 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %sub135 = sub nsw i32 %104, 1
  %cmp136 = icmp slt i32 %103, %sub135
  br i1 %cmp136, label %for.body138, label %for.end252

for.body138:                                      ; preds = %for.cond134
  store i32 0, ptr %area, align 4, !tbaa !5
  store i32 0, ptr %total, align 4, !tbaa !5
  %105 = load ptr, ptr %in.addr, align 8, !tbaa !21
  %106 = load i32, ptr %i, align 4, !tbaa !5
  %sub139 = sub nsw i32 %106, 1
  %107 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul140 = mul nsw i32 %sub139, %107
  %idx.ext141 = sext i32 %mul140 to i64
  %add.ptr142 = getelementptr inbounds i8, ptr %105, i64 %idx.ext141
  %108 = load i32, ptr %j, align 4, !tbaa !5
  %idx.ext143 = sext i32 %108 to i64
  %add.ptr144 = getelementptr inbounds i8, ptr %add.ptr142, i64 %idx.ext143
  %add.ptr145 = getelementptr inbounds i8, ptr %add.ptr144, i64 -1
  store ptr %add.ptr145, ptr %ip, align 8, !tbaa !21
  %109 = load ptr, ptr %in.addr, align 8, !tbaa !21
  %110 = load i32, ptr %i, align 4, !tbaa !5
  %111 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul146 = mul nsw i32 %110, %111
  %112 = load i32, ptr %j, align 4, !tbaa !5
  %add147 = add nsw i32 %mul146, %112
  %idxprom148 = sext i32 %add147 to i64
  %arrayidx149 = getelementptr inbounds i8, ptr %109, i64 %idxprom148
  %113 = load i8, ptr %arrayidx149, align 1, !tbaa !25
  %conv150 = zext i8 %113 to i32
  store i32 %conv150, ptr %centre, align 4, !tbaa !5
  %114 = load ptr, ptr %bp.addr, align 8, !tbaa !21
  %115 = load i32, ptr %centre, align 4, !tbaa !5
  %idx.ext151 = sext i32 %115 to i64
  %add.ptr152 = getelementptr inbounds i8, ptr %114, i64 %idx.ext151
  store ptr %add.ptr152, ptr %cp, align 8, !tbaa !21
  %116 = load ptr, ptr %ip, align 8, !tbaa !21
  %incdec.ptr153 = getelementptr inbounds nuw i8, ptr %116, i32 1
  store ptr %incdec.ptr153, ptr %ip, align 8, !tbaa !21
  %117 = load i8, ptr %116, align 1, !tbaa !25
  %conv154 = zext i8 %117 to i32
  store i32 %conv154, ptr %brightness, align 4, !tbaa !5
  %118 = load ptr, ptr %cp, align 8, !tbaa !21
  %119 = load i32, ptr %brightness, align 4, !tbaa !5
  %idx.ext155 = sext i32 %119 to i64
  %idx.neg156 = sub i64 0, %idx.ext155
  %add.ptr157 = getelementptr inbounds i8, ptr %118, i64 %idx.neg156
  %120 = load i8, ptr %add.ptr157, align 1, !tbaa !25
  %conv158 = zext i8 %120 to i32
  store i32 %conv158, ptr %tmp, align 4, !tbaa !5
  %121 = load i32, ptr %tmp, align 4, !tbaa !5
  %122 = load i32, ptr %area, align 4, !tbaa !5
  %add159 = add nsw i32 %122, %121
  store i32 %add159, ptr %area, align 4, !tbaa !5
  %123 = load i32, ptr %tmp, align 4, !tbaa !5
  %124 = load i32, ptr %brightness, align 4, !tbaa !5
  %mul160 = mul nsw i32 %123, %124
  %125 = load i32, ptr %total, align 4, !tbaa !5
  %add161 = add nsw i32 %125, %mul160
  store i32 %add161, ptr %total, align 4, !tbaa !5
  %126 = load ptr, ptr %ip, align 8, !tbaa !21
  %incdec.ptr162 = getelementptr inbounds nuw i8, ptr %126, i32 1
  store ptr %incdec.ptr162, ptr %ip, align 8, !tbaa !21
  %127 = load i8, ptr %126, align 1, !tbaa !25
  %conv163 = zext i8 %127 to i32
  store i32 %conv163, ptr %brightness, align 4, !tbaa !5
  %128 = load ptr, ptr %cp, align 8, !tbaa !21
  %129 = load i32, ptr %brightness, align 4, !tbaa !5
  %idx.ext164 = sext i32 %129 to i64
  %idx.neg165 = sub i64 0, %idx.ext164
  %add.ptr166 = getelementptr inbounds i8, ptr %128, i64 %idx.neg165
  %130 = load i8, ptr %add.ptr166, align 1, !tbaa !25
  %conv167 = zext i8 %130 to i32
  store i32 %conv167, ptr %tmp, align 4, !tbaa !5
  %131 = load i32, ptr %tmp, align 4, !tbaa !5
  %132 = load i32, ptr %area, align 4, !tbaa !5
  %add168 = add nsw i32 %132, %131
  store i32 %add168, ptr %area, align 4, !tbaa !5
  %133 = load i32, ptr %tmp, align 4, !tbaa !5
  %134 = load i32, ptr %brightness, align 4, !tbaa !5
  %mul169 = mul nsw i32 %133, %134
  %135 = load i32, ptr %total, align 4, !tbaa !5
  %add170 = add nsw i32 %135, %mul169
  store i32 %add170, ptr %total, align 4, !tbaa !5
  %136 = load ptr, ptr %ip, align 8, !tbaa !21
  %137 = load i8, ptr %136, align 1, !tbaa !25
  %conv171 = zext i8 %137 to i32
  store i32 %conv171, ptr %brightness, align 4, !tbaa !5
  %138 = load ptr, ptr %cp, align 8, !tbaa !21
  %139 = load i32, ptr %brightness, align 4, !tbaa !5
  %idx.ext172 = sext i32 %139 to i64
  %idx.neg173 = sub i64 0, %idx.ext172
  %add.ptr174 = getelementptr inbounds i8, ptr %138, i64 %idx.neg173
  %140 = load i8, ptr %add.ptr174, align 1, !tbaa !25
  %conv175 = zext i8 %140 to i32
  store i32 %conv175, ptr %tmp, align 4, !tbaa !5
  %141 = load i32, ptr %tmp, align 4, !tbaa !5
  %142 = load i32, ptr %area, align 4, !tbaa !5
  %add176 = add nsw i32 %142, %141
  store i32 %add176, ptr %area, align 4, !tbaa !5
  %143 = load i32, ptr %tmp, align 4, !tbaa !5
  %144 = load i32, ptr %brightness, align 4, !tbaa !5
  %mul177 = mul nsw i32 %143, %144
  %145 = load i32, ptr %total, align 4, !tbaa !5
  %add178 = add nsw i32 %145, %mul177
  store i32 %add178, ptr %total, align 4, !tbaa !5
  %146 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %sub179 = sub nsw i32 %146, 2
  %147 = load ptr, ptr %ip, align 8, !tbaa !21
  %idx.ext180 = sext i32 %sub179 to i64
  %add.ptr181 = getelementptr inbounds i8, ptr %147, i64 %idx.ext180
  store ptr %add.ptr181, ptr %ip, align 8, !tbaa !21
  %148 = load ptr, ptr %ip, align 8, !tbaa !21
  %incdec.ptr182 = getelementptr inbounds nuw i8, ptr %148, i32 1
  store ptr %incdec.ptr182, ptr %ip, align 8, !tbaa !21
  %149 = load i8, ptr %148, align 1, !tbaa !25
  %conv183 = zext i8 %149 to i32
  store i32 %conv183, ptr %brightness, align 4, !tbaa !5
  %150 = load ptr, ptr %cp, align 8, !tbaa !21
  %151 = load i32, ptr %brightness, align 4, !tbaa !5
  %idx.ext184 = sext i32 %151 to i64
  %idx.neg185 = sub i64 0, %idx.ext184
  %add.ptr186 = getelementptr inbounds i8, ptr %150, i64 %idx.neg185
  %152 = load i8, ptr %add.ptr186, align 1, !tbaa !25
  %conv187 = zext i8 %152 to i32
  store i32 %conv187, ptr %tmp, align 4, !tbaa !5
  %153 = load i32, ptr %tmp, align 4, !tbaa !5
  %154 = load i32, ptr %area, align 4, !tbaa !5
  %add188 = add nsw i32 %154, %153
  store i32 %add188, ptr %area, align 4, !tbaa !5
  %155 = load i32, ptr %tmp, align 4, !tbaa !5
  %156 = load i32, ptr %brightness, align 4, !tbaa !5
  %mul189 = mul nsw i32 %155, %156
  %157 = load i32, ptr %total, align 4, !tbaa !5
  %add190 = add nsw i32 %157, %mul189
  store i32 %add190, ptr %total, align 4, !tbaa !5
  %158 = load ptr, ptr %ip, align 8, !tbaa !21
  %incdec.ptr191 = getelementptr inbounds nuw i8, ptr %158, i32 1
  store ptr %incdec.ptr191, ptr %ip, align 8, !tbaa !21
  %159 = load i8, ptr %158, align 1, !tbaa !25
  %conv192 = zext i8 %159 to i32
  store i32 %conv192, ptr %brightness, align 4, !tbaa !5
  %160 = load ptr, ptr %cp, align 8, !tbaa !21
  %161 = load i32, ptr %brightness, align 4, !tbaa !5
  %idx.ext193 = sext i32 %161 to i64
  %idx.neg194 = sub i64 0, %idx.ext193
  %add.ptr195 = getelementptr inbounds i8, ptr %160, i64 %idx.neg194
  %162 = load i8, ptr %add.ptr195, align 1, !tbaa !25
  %conv196 = zext i8 %162 to i32
  store i32 %conv196, ptr %tmp, align 4, !tbaa !5
  %163 = load i32, ptr %tmp, align 4, !tbaa !5
  %164 = load i32, ptr %area, align 4, !tbaa !5
  %add197 = add nsw i32 %164, %163
  store i32 %add197, ptr %area, align 4, !tbaa !5
  %165 = load i32, ptr %tmp, align 4, !tbaa !5
  %166 = load i32, ptr %brightness, align 4, !tbaa !5
  %mul198 = mul nsw i32 %165, %166
  %167 = load i32, ptr %total, align 4, !tbaa !5
  %add199 = add nsw i32 %167, %mul198
  store i32 %add199, ptr %total, align 4, !tbaa !5
  %168 = load ptr, ptr %ip, align 8, !tbaa !21
  %169 = load i8, ptr %168, align 1, !tbaa !25
  %conv200 = zext i8 %169 to i32
  store i32 %conv200, ptr %brightness, align 4, !tbaa !5
  %170 = load ptr, ptr %cp, align 8, !tbaa !21
  %171 = load i32, ptr %brightness, align 4, !tbaa !5
  %idx.ext201 = sext i32 %171 to i64
  %idx.neg202 = sub i64 0, %idx.ext201
  %add.ptr203 = getelementptr inbounds i8, ptr %170, i64 %idx.neg202
  %172 = load i8, ptr %add.ptr203, align 1, !tbaa !25
  %conv204 = zext i8 %172 to i32
  store i32 %conv204, ptr %tmp, align 4, !tbaa !5
  %173 = load i32, ptr %tmp, align 4, !tbaa !5
  %174 = load i32, ptr %area, align 4, !tbaa !5
  %add205 = add nsw i32 %174, %173
  store i32 %add205, ptr %area, align 4, !tbaa !5
  %175 = load i32, ptr %tmp, align 4, !tbaa !5
  %176 = load i32, ptr %brightness, align 4, !tbaa !5
  %mul206 = mul nsw i32 %175, %176
  %177 = load i32, ptr %total, align 4, !tbaa !5
  %add207 = add nsw i32 %177, %mul206
  store i32 %add207, ptr %total, align 4, !tbaa !5
  %178 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %sub208 = sub nsw i32 %178, 2
  %179 = load ptr, ptr %ip, align 8, !tbaa !21
  %idx.ext209 = sext i32 %sub208 to i64
  %add.ptr210 = getelementptr inbounds i8, ptr %179, i64 %idx.ext209
  store ptr %add.ptr210, ptr %ip, align 8, !tbaa !21
  %180 = load ptr, ptr %ip, align 8, !tbaa !21
  %incdec.ptr211 = getelementptr inbounds nuw i8, ptr %180, i32 1
  store ptr %incdec.ptr211, ptr %ip, align 8, !tbaa !21
  %181 = load i8, ptr %180, align 1, !tbaa !25
  %conv212 = zext i8 %181 to i32
  store i32 %conv212, ptr %brightness, align 4, !tbaa !5
  %182 = load ptr, ptr %cp, align 8, !tbaa !21
  %183 = load i32, ptr %brightness, align 4, !tbaa !5
  %idx.ext213 = sext i32 %183 to i64
  %idx.neg214 = sub i64 0, %idx.ext213
  %add.ptr215 = getelementptr inbounds i8, ptr %182, i64 %idx.neg214
  %184 = load i8, ptr %add.ptr215, align 1, !tbaa !25
  %conv216 = zext i8 %184 to i32
  store i32 %conv216, ptr %tmp, align 4, !tbaa !5
  %185 = load i32, ptr %tmp, align 4, !tbaa !5
  %186 = load i32, ptr %area, align 4, !tbaa !5
  %add217 = add nsw i32 %186, %185
  store i32 %add217, ptr %area, align 4, !tbaa !5
  %187 = load i32, ptr %tmp, align 4, !tbaa !5
  %188 = load i32, ptr %brightness, align 4, !tbaa !5
  %mul218 = mul nsw i32 %187, %188
  %189 = load i32, ptr %total, align 4, !tbaa !5
  %add219 = add nsw i32 %189, %mul218
  store i32 %add219, ptr %total, align 4, !tbaa !5
  %190 = load ptr, ptr %ip, align 8, !tbaa !21
  %incdec.ptr220 = getelementptr inbounds nuw i8, ptr %190, i32 1
  store ptr %incdec.ptr220, ptr %ip, align 8, !tbaa !21
  %191 = load i8, ptr %190, align 1, !tbaa !25
  %conv221 = zext i8 %191 to i32
  store i32 %conv221, ptr %brightness, align 4, !tbaa !5
  %192 = load ptr, ptr %cp, align 8, !tbaa !21
  %193 = load i32, ptr %brightness, align 4, !tbaa !5
  %idx.ext222 = sext i32 %193 to i64
  %idx.neg223 = sub i64 0, %idx.ext222
  %add.ptr224 = getelementptr inbounds i8, ptr %192, i64 %idx.neg223
  %194 = load i8, ptr %add.ptr224, align 1, !tbaa !25
  %conv225 = zext i8 %194 to i32
  store i32 %conv225, ptr %tmp, align 4, !tbaa !5
  %195 = load i32, ptr %tmp, align 4, !tbaa !5
  %196 = load i32, ptr %area, align 4, !tbaa !5
  %add226 = add nsw i32 %196, %195
  store i32 %add226, ptr %area, align 4, !tbaa !5
  %197 = load i32, ptr %tmp, align 4, !tbaa !5
  %198 = load i32, ptr %brightness, align 4, !tbaa !5
  %mul227 = mul nsw i32 %197, %198
  %199 = load i32, ptr %total, align 4, !tbaa !5
  %add228 = add nsw i32 %199, %mul227
  store i32 %add228, ptr %total, align 4, !tbaa !5
  %200 = load ptr, ptr %ip, align 8, !tbaa !21
  %201 = load i8, ptr %200, align 1, !tbaa !25
  %conv229 = zext i8 %201 to i32
  store i32 %conv229, ptr %brightness, align 4, !tbaa !5
  %202 = load ptr, ptr %cp, align 8, !tbaa !21
  %203 = load i32, ptr %brightness, align 4, !tbaa !5
  %idx.ext230 = sext i32 %203 to i64
  %idx.neg231 = sub i64 0, %idx.ext230
  %add.ptr232 = getelementptr inbounds i8, ptr %202, i64 %idx.neg231
  %204 = load i8, ptr %add.ptr232, align 1, !tbaa !25
  %conv233 = zext i8 %204 to i32
  store i32 %conv233, ptr %tmp, align 4, !tbaa !5
  %205 = load i32, ptr %tmp, align 4, !tbaa !5
  %206 = load i32, ptr %area, align 4, !tbaa !5
  %add234 = add nsw i32 %206, %205
  store i32 %add234, ptr %area, align 4, !tbaa !5
  %207 = load i32, ptr %tmp, align 4, !tbaa !5
  %208 = load i32, ptr %brightness, align 4, !tbaa !5
  %mul235 = mul nsw i32 %207, %208
  %209 = load i32, ptr %total, align 4, !tbaa !5
  %add236 = add nsw i32 %209, %mul235
  store i32 %add236, ptr %total, align 4, !tbaa !5
  %210 = load i32, ptr %area, align 4, !tbaa !5
  %sub237 = sub nsw i32 %210, 100
  store i32 %sub237, ptr %tmp, align 4, !tbaa !5
  %211 = load i32, ptr %tmp, align 4, !tbaa !5
  %cmp238 = icmp eq i32 %211, 0
  br i1 %cmp238, label %if.then240, label %if.else243

if.then240:                                       ; preds = %for.body138
  %212 = load ptr, ptr %in.addr, align 8, !tbaa !21
  %213 = load i32, ptr %i, align 4, !tbaa !5
  %214 = load i32, ptr %j, align 4, !tbaa !5
  %215 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %call241 = call zeroext i8 @median(ptr noundef %212, i32 noundef %213, i32 noundef %214, i32 noundef %215)
  %216 = load ptr, ptr %out, align 8, !tbaa !21
  %incdec.ptr242 = getelementptr inbounds nuw i8, ptr %216, i32 1
  store ptr %incdec.ptr242, ptr %out, align 8, !tbaa !21
  store i8 %call241, ptr %216, align 1, !tbaa !25
  br label %if.end249

if.else243:                                       ; preds = %for.body138
  %217 = load i32, ptr %total, align 4, !tbaa !5
  %218 = load i32, ptr %centre, align 4, !tbaa !5
  %mul244 = mul nsw i32 %218, 100
  %sub245 = sub nsw i32 %217, %mul244
  %219 = load i32, ptr %tmp, align 4, !tbaa !5
  %div246 = sdiv i32 %sub245, %219
  %conv247 = trunc i32 %div246 to i8
  %220 = load ptr, ptr %out, align 8, !tbaa !21
  %incdec.ptr248 = getelementptr inbounds nuw i8, ptr %220, i32 1
  store ptr %incdec.ptr248, ptr %out, align 8, !tbaa !21
  store i8 %conv247, ptr %220, align 1, !tbaa !25
  br label %if.end249

if.end249:                                        ; preds = %if.else243, %if.then240
  br label %for.inc250

for.inc250:                                       ; preds = %if.end249
  %221 = load i32, ptr %j, align 4, !tbaa !5
  %inc251 = add nsw i32 %221, 1
  store i32 %inc251, ptr %j, align 4, !tbaa !5
  br label %for.cond134, !llvm.loop !49

for.end252:                                       ; preds = %for.cond134
  br label %for.inc253

for.inc253:                                       ; preds = %for.end252
  %222 = load i32, ptr %i, align 4, !tbaa !5
  %inc254 = add nsw i32 %222, 1
  store i32 %inc254, ptr %i, align 4, !tbaa !5
  br label %for.cond129, !llvm.loop !50

for.end255:                                       ; preds = %for.cond129
  br label %if.end256

if.end256:                                        ; preds = %for.end255, %for.end127
  call void @llvm.lifetime.end.p0(i64 4, ptr %total) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp_image) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %out) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %cp) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %dpt) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %dp) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %ip) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %centre) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %tmp) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %brightness) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %area) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %y) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %x) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %mask_size) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %increment) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %n_max) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %temp) #10
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @edge_draw(ptr noundef %in, ptr noundef %mid, i32 noundef %x_size, i32 noundef %y_size, i32 noundef %drawing_mode) #0 {
entry:
  %in.addr = alloca ptr, align 8
  %mid.addr = alloca ptr, align 8
  %x_size.addr = alloca i32, align 4
  %y_size.addr = alloca i32, align 4
  %drawing_mode.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %inp = alloca ptr, align 8
  %midp = alloca ptr, align 8
  store ptr %in, ptr %in.addr, align 8, !tbaa !21
  store ptr %mid, ptr %mid.addr, align 8, !tbaa !21
  store i32 %x_size, ptr %x_size.addr, align 4, !tbaa !5
  store i32 %y_size, ptr %y_size.addr, align 4, !tbaa !5
  store i32 %drawing_mode, ptr %drawing_mode.addr, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %inp) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %midp) #10
  %0 = load i32, ptr %drawing_mode.addr, align 4, !tbaa !5
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end18

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %mid.addr, align 8, !tbaa !21
  store ptr %1, ptr %midp, align 8, !tbaa !21
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %2 = load i32, ptr %i, align 4, !tbaa !5
  %3 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %4 = load i32, ptr %y_size.addr, align 4, !tbaa !5
  %mul = mul nsw i32 %3, %4
  %cmp1 = icmp slt i32 %2, %mul
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %midp, align 8, !tbaa !21
  %6 = load i8, ptr %5, align 1, !tbaa !25
  %conv = zext i8 %6 to i32
  %cmp2 = icmp slt i32 %conv, 8
  br i1 %cmp2, label %if.then4, label %if.end

if.then4:                                         ; preds = %for.body
  %7 = load ptr, ptr %in.addr, align 8, !tbaa !21
  %8 = load ptr, ptr %midp, align 8, !tbaa !21
  %9 = load ptr, ptr %mid.addr, align 8, !tbaa !21
  %sub.ptr.lhs.cast = ptrtoint ptr %8 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %9 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %add.ptr = getelementptr inbounds i8, ptr %7, i64 %sub.ptr.sub
  %10 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %idx.ext = sext i32 %10 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr5 = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.neg
  %add.ptr6 = getelementptr inbounds i8, ptr %add.ptr5, i64 -1
  store ptr %add.ptr6, ptr %inp, align 8, !tbaa !21
  %11 = load ptr, ptr %inp, align 8, !tbaa !21
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %11, i32 1
  store ptr %incdec.ptr, ptr %inp, align 8, !tbaa !21
  store i8 -1, ptr %11, align 1, !tbaa !25
  %12 = load ptr, ptr %inp, align 8, !tbaa !21
  %incdec.ptr7 = getelementptr inbounds nuw i8, ptr %12, i32 1
  store ptr %incdec.ptr7, ptr %inp, align 8, !tbaa !21
  store i8 -1, ptr %12, align 1, !tbaa !25
  %13 = load ptr, ptr %inp, align 8, !tbaa !21
  store i8 -1, ptr %13, align 1, !tbaa !25
  %14 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %14, 2
  %15 = load ptr, ptr %inp, align 8, !tbaa !21
  %idx.ext8 = sext i32 %sub to i64
  %add.ptr9 = getelementptr inbounds i8, ptr %15, i64 %idx.ext8
  store ptr %add.ptr9, ptr %inp, align 8, !tbaa !21
  %16 = load ptr, ptr %inp, align 8, !tbaa !21
  %incdec.ptr10 = getelementptr inbounds nuw i8, ptr %16, i32 1
  store ptr %incdec.ptr10, ptr %inp, align 8, !tbaa !21
  store i8 -1, ptr %16, align 1, !tbaa !25
  %17 = load ptr, ptr %inp, align 8, !tbaa !21
  %incdec.ptr11 = getelementptr inbounds nuw i8, ptr %17, i32 1
  store ptr %incdec.ptr11, ptr %inp, align 8, !tbaa !21
  %18 = load ptr, ptr %inp, align 8, !tbaa !21
  store i8 -1, ptr %18, align 1, !tbaa !25
  %19 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %sub12 = sub nsw i32 %19, 2
  %20 = load ptr, ptr %inp, align 8, !tbaa !21
  %idx.ext13 = sext i32 %sub12 to i64
  %add.ptr14 = getelementptr inbounds i8, ptr %20, i64 %idx.ext13
  store ptr %add.ptr14, ptr %inp, align 8, !tbaa !21
  %21 = load ptr, ptr %inp, align 8, !tbaa !21
  %incdec.ptr15 = getelementptr inbounds nuw i8, ptr %21, i32 1
  store ptr %incdec.ptr15, ptr %inp, align 8, !tbaa !21
  store i8 -1, ptr %21, align 1, !tbaa !25
  %22 = load ptr, ptr %inp, align 8, !tbaa !21
  %incdec.ptr16 = getelementptr inbounds nuw i8, ptr %22, i32 1
  store ptr %incdec.ptr16, ptr %inp, align 8, !tbaa !21
  store i8 -1, ptr %22, align 1, !tbaa !25
  %23 = load ptr, ptr %inp, align 8, !tbaa !21
  store i8 -1, ptr %23, align 1, !tbaa !25
  br label %if.end

if.end:                                           ; preds = %if.then4, %for.body
  %24 = load ptr, ptr %midp, align 8, !tbaa !21
  %incdec.ptr17 = getelementptr inbounds nuw i8, ptr %24, i32 1
  store ptr %incdec.ptr17, ptr %midp, align 8, !tbaa !21
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %25 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %25, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !51

for.end:                                          ; preds = %for.cond
  br label %if.end18

if.end18:                                         ; preds = %for.end, %entry
  %26 = load ptr, ptr %mid.addr, align 8, !tbaa !21
  store ptr %26, ptr %midp, align 8, !tbaa !21
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond19

for.cond19:                                       ; preds = %for.inc34, %if.end18
  %27 = load i32, ptr %i, align 4, !tbaa !5
  %28 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %29 = load i32, ptr %y_size.addr, align 4, !tbaa !5
  %mul20 = mul nsw i32 %28, %29
  %cmp21 = icmp slt i32 %27, %mul20
  br i1 %cmp21, label %for.body23, label %for.end36

for.body23:                                       ; preds = %for.cond19
  %30 = load ptr, ptr %midp, align 8, !tbaa !21
  %31 = load i8, ptr %30, align 1, !tbaa !25
  %conv24 = zext i8 %31 to i32
  %cmp25 = icmp slt i32 %conv24, 8
  br i1 %cmp25, label %if.then27, label %if.end32

if.then27:                                        ; preds = %for.body23
  %32 = load ptr, ptr %in.addr, align 8, !tbaa !21
  %33 = load ptr, ptr %midp, align 8, !tbaa !21
  %34 = load ptr, ptr %mid.addr, align 8, !tbaa !21
  %sub.ptr.lhs.cast28 = ptrtoint ptr %33 to i64
  %sub.ptr.rhs.cast29 = ptrtoint ptr %34 to i64
  %sub.ptr.sub30 = sub i64 %sub.ptr.lhs.cast28, %sub.ptr.rhs.cast29
  %add.ptr31 = getelementptr inbounds i8, ptr %32, i64 %sub.ptr.sub30
  store i8 0, ptr %add.ptr31, align 1, !tbaa !25
  br label %if.end32

if.end32:                                         ; preds = %if.then27, %for.body23
  %35 = load ptr, ptr %midp, align 8, !tbaa !21
  %incdec.ptr33 = getelementptr inbounds nuw i8, ptr %35, i32 1
  store ptr %incdec.ptr33, ptr %midp, align 8, !tbaa !21
  br label %for.inc34

for.inc34:                                        ; preds = %if.end32
  %36 = load i32, ptr %i, align 4, !tbaa !5
  %inc35 = add nsw i32 %36, 1
  store i32 %inc35, ptr %i, align 4, !tbaa !5
  br label %for.cond19, !llvm.loop !52

for.end36:                                        ; preds = %for.cond19
  call void @llvm.lifetime.end.p0(i64 8, ptr %midp) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %inp) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #10
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @susan_thin(ptr noundef %r, ptr noundef %mid, i32 noundef %x_size, i32 noundef %y_size) #0 {
entry:
  %r.addr = alloca ptr, align 8
  %mid.addr = alloca ptr, align 8
  %x_size.addr = alloca i32, align 4
  %y_size.addr = alloca i32, align 4
  %l = alloca [9 x i32], align 16
  %centre = alloca i32, align 4
  %b01 = alloca i32, align 4
  %b12 = alloca i32, align 4
  %b21 = alloca i32, align 4
  %b10 = alloca i32, align 4
  %p1 = alloca i32, align 4
  %p2 = alloca i32, align 4
  %p3 = alloca i32, align 4
  %p4 = alloca i32, align 4
  %b00 = alloca i32, align 4
  %b02 = alloca i32, align 4
  %b20 = alloca i32, align 4
  %b22 = alloca i32, align 4
  %m = alloca i32, align 4
  %n = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %mp = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8, !tbaa !23
  store ptr %mid, ptr %mid.addr, align 8, !tbaa !21
  store i32 %x_size, ptr %x_size.addr, align 4, !tbaa !5
  store i32 %y_size, ptr %y_size.addr, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 36, ptr %l) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %centre) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %b01) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %b12) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %b21) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %b10) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %p1) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %p2) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %p3) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %p4) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %b00) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %b02) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %b20) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %b22) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %m) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %a) #10
  store i32 0, ptr %a, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %b) #10
  store i32 0, ptr %b, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %x) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %y) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %mp) #10
  store i32 4, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc826, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %y_size.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %1, 4
  %cmp = icmp slt i32 %0, %sub
  br i1 %cmp, label %for.body, label %for.end828

for.body:                                         ; preds = %for.cond
  store i32 4, ptr %j, align 4, !tbaa !5
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc823, %for.body
  %2 = load i32, ptr %j, align 4, !tbaa !5
  %3 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %sub2 = sub nsw i32 %3, 4
  %cmp3 = icmp slt i32 %2, %sub2
  br i1 %cmp3, label %for.body4, label %for.end825

for.body4:                                        ; preds = %for.cond1
  %4 = load ptr, ptr %mid.addr, align 8, !tbaa !21
  %5 = load i32, ptr %i, align 4, !tbaa !5
  %6 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul = mul nsw i32 %5, %6
  %7 = load i32, ptr %j, align 4, !tbaa !5
  %add = add nsw i32 %mul, %7
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds i8, ptr %4, i64 %idxprom
  %8 = load i8, ptr %arrayidx, align 1, !tbaa !25
  %conv = zext i8 %8 to i32
  %cmp5 = icmp slt i32 %conv, 8
  br i1 %cmp5, label %if.then, label %if.end822

if.then:                                          ; preds = %for.body4
  %9 = load ptr, ptr %r.addr, align 8, !tbaa !23
  %10 = load i32, ptr %i, align 4, !tbaa !5
  %11 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul7 = mul nsw i32 %10, %11
  %12 = load i32, ptr %j, align 4, !tbaa !5
  %add8 = add nsw i32 %mul7, %12
  %idxprom9 = sext i32 %add8 to i64
  %arrayidx10 = getelementptr inbounds i32, ptr %9, i64 %idxprom9
  %13 = load i32, ptr %arrayidx10, align 4, !tbaa !5
  store i32 %13, ptr %centre, align 4, !tbaa !5
  %14 = load ptr, ptr %mid.addr, align 8, !tbaa !21
  %15 = load i32, ptr %i, align 4, !tbaa !5
  %sub11 = sub nsw i32 %15, 1
  %16 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul12 = mul nsw i32 %sub11, %16
  %idx.ext = sext i32 %mul12 to i64
  %add.ptr = getelementptr inbounds i8, ptr %14, i64 %idx.ext
  %17 = load i32, ptr %j, align 4, !tbaa !5
  %idx.ext13 = sext i32 %17 to i64
  %add.ptr14 = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.ext13
  %add.ptr15 = getelementptr inbounds i8, ptr %add.ptr14, i64 -1
  store ptr %add.ptr15, ptr %mp, align 8, !tbaa !21
  %18 = load ptr, ptr %mp, align 8, !tbaa !21
  %19 = load i8, ptr %18, align 1, !tbaa !25
  %conv16 = zext i8 %19 to i32
  %cmp17 = icmp slt i32 %conv16, 8
  %conv18 = zext i1 %cmp17 to i32
  %20 = load ptr, ptr %mp, align 8, !tbaa !21
  %add.ptr19 = getelementptr inbounds i8, ptr %20, i64 1
  %21 = load i8, ptr %add.ptr19, align 1, !tbaa !25
  %conv20 = zext i8 %21 to i32
  %cmp21 = icmp slt i32 %conv20, 8
  %conv22 = zext i1 %cmp21 to i32
  %add23 = add nsw i32 %conv18, %conv22
  %22 = load ptr, ptr %mp, align 8, !tbaa !21
  %add.ptr24 = getelementptr inbounds i8, ptr %22, i64 2
  %23 = load i8, ptr %add.ptr24, align 1, !tbaa !25
  %conv25 = zext i8 %23 to i32
  %cmp26 = icmp slt i32 %conv25, 8
  %conv27 = zext i1 %cmp26 to i32
  %add28 = add nsw i32 %add23, %conv27
  %24 = load ptr, ptr %mp, align 8, !tbaa !21
  %25 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %idx.ext29 = sext i32 %25 to i64
  %add.ptr30 = getelementptr inbounds i8, ptr %24, i64 %idx.ext29
  %26 = load i8, ptr %add.ptr30, align 1, !tbaa !25
  %conv31 = zext i8 %26 to i32
  %cmp32 = icmp slt i32 %conv31, 8
  %conv33 = zext i1 %cmp32 to i32
  %add34 = add nsw i32 %add28, %conv33
  %27 = load ptr, ptr %mp, align 8, !tbaa !21
  %28 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %idx.ext35 = sext i32 %28 to i64
  %add.ptr36 = getelementptr inbounds i8, ptr %27, i64 %idx.ext35
  %add.ptr37 = getelementptr inbounds i8, ptr %add.ptr36, i64 2
  %29 = load i8, ptr %add.ptr37, align 1, !tbaa !25
  %conv38 = zext i8 %29 to i32
  %cmp39 = icmp slt i32 %conv38, 8
  %conv40 = zext i1 %cmp39 to i32
  %add41 = add nsw i32 %add34, %conv40
  %30 = load ptr, ptr %mp, align 8, !tbaa !21
  %31 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %idx.ext42 = sext i32 %31 to i64
  %add.ptr43 = getelementptr inbounds i8, ptr %30, i64 %idx.ext42
  %32 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %idx.ext44 = sext i32 %32 to i64
  %add.ptr45 = getelementptr inbounds i8, ptr %add.ptr43, i64 %idx.ext44
  %33 = load i8, ptr %add.ptr45, align 1, !tbaa !25
  %conv46 = zext i8 %33 to i32
  %cmp47 = icmp slt i32 %conv46, 8
  %conv48 = zext i1 %cmp47 to i32
  %add49 = add nsw i32 %add41, %conv48
  %34 = load ptr, ptr %mp, align 8, !tbaa !21
  %35 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %idx.ext50 = sext i32 %35 to i64
  %add.ptr51 = getelementptr inbounds i8, ptr %34, i64 %idx.ext50
  %36 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %idx.ext52 = sext i32 %36 to i64
  %add.ptr53 = getelementptr inbounds i8, ptr %add.ptr51, i64 %idx.ext52
  %add.ptr54 = getelementptr inbounds i8, ptr %add.ptr53, i64 1
  %37 = load i8, ptr %add.ptr54, align 1, !tbaa !25
  %conv55 = zext i8 %37 to i32
  %cmp56 = icmp slt i32 %conv55, 8
  %conv57 = zext i1 %cmp56 to i32
  %add58 = add nsw i32 %add49, %conv57
  %38 = load ptr, ptr %mp, align 8, !tbaa !21
  %39 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %idx.ext59 = sext i32 %39 to i64
  %add.ptr60 = getelementptr inbounds i8, ptr %38, i64 %idx.ext59
  %40 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %idx.ext61 = sext i32 %40 to i64
  %add.ptr62 = getelementptr inbounds i8, ptr %add.ptr60, i64 %idx.ext61
  %add.ptr63 = getelementptr inbounds i8, ptr %add.ptr62, i64 2
  %41 = load i8, ptr %add.ptr63, align 1, !tbaa !25
  %conv64 = zext i8 %41 to i32
  %cmp65 = icmp slt i32 %conv64, 8
  %conv66 = zext i1 %cmp65 to i32
  %add67 = add nsw i32 %add58, %conv66
  store i32 %add67, ptr %n, align 4, !tbaa !5
  %42 = load i32, ptr %n, align 4, !tbaa !5
  %cmp68 = icmp eq i32 %42, 0
  br i1 %cmp68, label %if.then70, label %if.end

if.then70:                                        ; preds = %if.then
  %43 = load ptr, ptr %mid.addr, align 8, !tbaa !21
  %44 = load i32, ptr %i, align 4, !tbaa !5
  %45 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul71 = mul nsw i32 %44, %45
  %46 = load i32, ptr %j, align 4, !tbaa !5
  %add72 = add nsw i32 %mul71, %46
  %idxprom73 = sext i32 %add72 to i64
  %arrayidx74 = getelementptr inbounds i8, ptr %43, i64 %idxprom73
  store i8 100, ptr %arrayidx74, align 1, !tbaa !25
  br label %if.end

if.end:                                           ; preds = %if.then70, %if.then
  %47 = load i32, ptr %n, align 4, !tbaa !5
  %cmp75 = icmp eq i32 %47, 1
  br i1 %cmp75, label %land.lhs.true, label %if.end412

land.lhs.true:                                    ; preds = %if.end
  %48 = load ptr, ptr %mid.addr, align 8, !tbaa !21
  %49 = load i32, ptr %i, align 4, !tbaa !5
  %50 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul77 = mul nsw i32 %49, %50
  %51 = load i32, ptr %j, align 4, !tbaa !5
  %add78 = add nsw i32 %mul77, %51
  %idxprom79 = sext i32 %add78 to i64
  %arrayidx80 = getelementptr inbounds i8, ptr %48, i64 %idxprom79
  %52 = load i8, ptr %arrayidx80, align 1, !tbaa !25
  %conv81 = zext i8 %52 to i32
  %cmp82 = icmp slt i32 %conv81, 6
  br i1 %cmp82, label %if.then84, label %if.end412

if.then84:                                        ; preds = %land.lhs.true
  %53 = load ptr, ptr %r.addr, align 8, !tbaa !23
  %54 = load i32, ptr %i, align 4, !tbaa !5
  %sub85 = sub nsw i32 %54, 1
  %55 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul86 = mul nsw i32 %sub85, %55
  %56 = load i32, ptr %j, align 4, !tbaa !5
  %add87 = add nsw i32 %mul86, %56
  %sub88 = sub nsw i32 %add87, 1
  %idxprom89 = sext i32 %sub88 to i64
  %arrayidx90 = getelementptr inbounds i32, ptr %53, i64 %idxprom89
  %57 = load i32, ptr %arrayidx90, align 4, !tbaa !5
  %arrayidx91 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 0
  store i32 %57, ptr %arrayidx91, align 16, !tbaa !5
  %58 = load ptr, ptr %r.addr, align 8, !tbaa !23
  %59 = load i32, ptr %i, align 4, !tbaa !5
  %sub92 = sub nsw i32 %59, 1
  %60 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul93 = mul nsw i32 %sub92, %60
  %61 = load i32, ptr %j, align 4, !tbaa !5
  %add94 = add nsw i32 %mul93, %61
  %idxprom95 = sext i32 %add94 to i64
  %arrayidx96 = getelementptr inbounds i32, ptr %58, i64 %idxprom95
  %62 = load i32, ptr %arrayidx96, align 4, !tbaa !5
  %arrayidx97 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 1
  store i32 %62, ptr %arrayidx97, align 4, !tbaa !5
  %63 = load ptr, ptr %r.addr, align 8, !tbaa !23
  %64 = load i32, ptr %i, align 4, !tbaa !5
  %sub98 = sub nsw i32 %64, 1
  %65 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul99 = mul nsw i32 %sub98, %65
  %66 = load i32, ptr %j, align 4, !tbaa !5
  %add100 = add nsw i32 %mul99, %66
  %add101 = add nsw i32 %add100, 1
  %idxprom102 = sext i32 %add101 to i64
  %arrayidx103 = getelementptr inbounds i32, ptr %63, i64 %idxprom102
  %67 = load i32, ptr %arrayidx103, align 4, !tbaa !5
  %arrayidx104 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 2
  store i32 %67, ptr %arrayidx104, align 8, !tbaa !5
  %68 = load ptr, ptr %r.addr, align 8, !tbaa !23
  %69 = load i32, ptr %i, align 4, !tbaa !5
  %70 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul105 = mul nsw i32 %69, %70
  %71 = load i32, ptr %j, align 4, !tbaa !5
  %add106 = add nsw i32 %mul105, %71
  %sub107 = sub nsw i32 %add106, 1
  %idxprom108 = sext i32 %sub107 to i64
  %arrayidx109 = getelementptr inbounds i32, ptr %68, i64 %idxprom108
  %72 = load i32, ptr %arrayidx109, align 4, !tbaa !5
  %arrayidx110 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 3
  store i32 %72, ptr %arrayidx110, align 4, !tbaa !5
  %arrayidx111 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 4
  store i32 0, ptr %arrayidx111, align 16, !tbaa !5
  %73 = load ptr, ptr %r.addr, align 8, !tbaa !23
  %74 = load i32, ptr %i, align 4, !tbaa !5
  %75 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul112 = mul nsw i32 %74, %75
  %76 = load i32, ptr %j, align 4, !tbaa !5
  %add113 = add nsw i32 %mul112, %76
  %add114 = add nsw i32 %add113, 1
  %idxprom115 = sext i32 %add114 to i64
  %arrayidx116 = getelementptr inbounds i32, ptr %73, i64 %idxprom115
  %77 = load i32, ptr %arrayidx116, align 4, !tbaa !5
  %arrayidx117 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 5
  store i32 %77, ptr %arrayidx117, align 4, !tbaa !5
  %78 = load ptr, ptr %r.addr, align 8, !tbaa !23
  %79 = load i32, ptr %i, align 4, !tbaa !5
  %add118 = add nsw i32 %79, 1
  %80 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul119 = mul nsw i32 %add118, %80
  %81 = load i32, ptr %j, align 4, !tbaa !5
  %add120 = add nsw i32 %mul119, %81
  %sub121 = sub nsw i32 %add120, 1
  %idxprom122 = sext i32 %sub121 to i64
  %arrayidx123 = getelementptr inbounds i32, ptr %78, i64 %idxprom122
  %82 = load i32, ptr %arrayidx123, align 4, !tbaa !5
  %arrayidx124 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 6
  store i32 %82, ptr %arrayidx124, align 8, !tbaa !5
  %83 = load ptr, ptr %r.addr, align 8, !tbaa !23
  %84 = load i32, ptr %i, align 4, !tbaa !5
  %add125 = add nsw i32 %84, 1
  %85 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul126 = mul nsw i32 %add125, %85
  %86 = load i32, ptr %j, align 4, !tbaa !5
  %add127 = add nsw i32 %mul126, %86
  %idxprom128 = sext i32 %add127 to i64
  %arrayidx129 = getelementptr inbounds i32, ptr %83, i64 %idxprom128
  %87 = load i32, ptr %arrayidx129, align 4, !tbaa !5
  %arrayidx130 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 7
  store i32 %87, ptr %arrayidx130, align 4, !tbaa !5
  %88 = load ptr, ptr %r.addr, align 8, !tbaa !23
  %89 = load i32, ptr %i, align 4, !tbaa !5
  %add131 = add nsw i32 %89, 1
  %90 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul132 = mul nsw i32 %add131, %90
  %91 = load i32, ptr %j, align 4, !tbaa !5
  %add133 = add nsw i32 %mul132, %91
  %add134 = add nsw i32 %add133, 1
  %idxprom135 = sext i32 %add134 to i64
  %arrayidx136 = getelementptr inbounds i32, ptr %88, i64 %idxprom135
  %92 = load i32, ptr %arrayidx136, align 4, !tbaa !5
  %arrayidx137 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 8
  store i32 %92, ptr %arrayidx137, align 16, !tbaa !5
  %93 = load ptr, ptr %mid.addr, align 8, !tbaa !21
  %94 = load i32, ptr %i, align 4, !tbaa !5
  %sub138 = sub nsw i32 %94, 1
  %95 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul139 = mul nsw i32 %sub138, %95
  %96 = load i32, ptr %j, align 4, !tbaa !5
  %add140 = add nsw i32 %mul139, %96
  %sub141 = sub nsw i32 %add140, 1
  %idxprom142 = sext i32 %sub141 to i64
  %arrayidx143 = getelementptr inbounds i8, ptr %93, i64 %idxprom142
  %97 = load i8, ptr %arrayidx143, align 1, !tbaa !25
  %conv144 = zext i8 %97 to i32
  %cmp145 = icmp slt i32 %conv144, 8
  br i1 %cmp145, label %if.then147, label %if.else

if.then147:                                       ; preds = %if.then84
  %arrayidx148 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 0
  store i32 0, ptr %arrayidx148, align 16, !tbaa !5
  %arrayidx149 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 1
  store i32 0, ptr %arrayidx149, align 4, !tbaa !5
  %arrayidx150 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 3
  store i32 0, ptr %arrayidx150, align 4, !tbaa !5
  %arrayidx151 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 2
  %98 = load i32, ptr %arrayidx151, align 8, !tbaa !5
  %mul152 = mul nsw i32 %98, 2
  store i32 %mul152, ptr %arrayidx151, align 8, !tbaa !5
  %arrayidx153 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 6
  %99 = load i32, ptr %arrayidx153, align 8, !tbaa !5
  %mul154 = mul nsw i32 %99, 2
  store i32 %mul154, ptr %arrayidx153, align 8, !tbaa !5
  %arrayidx155 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 5
  %100 = load i32, ptr %arrayidx155, align 4, !tbaa !5
  %mul156 = mul nsw i32 %100, 3
  store i32 %mul156, ptr %arrayidx155, align 4, !tbaa !5
  %arrayidx157 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 7
  %101 = load i32, ptr %arrayidx157, align 4, !tbaa !5
  %mul158 = mul nsw i32 %101, 3
  store i32 %mul158, ptr %arrayidx157, align 4, !tbaa !5
  %arrayidx159 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 8
  %102 = load i32, ptr %arrayidx159, align 16, !tbaa !5
  %mul160 = mul nsw i32 %102, 4
  store i32 %mul160, ptr %arrayidx159, align 16, !tbaa !5
  br label %if.end331

if.else:                                          ; preds = %if.then84
  %103 = load ptr, ptr %mid.addr, align 8, !tbaa !21
  %104 = load i32, ptr %i, align 4, !tbaa !5
  %sub161 = sub nsw i32 %104, 1
  %105 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul162 = mul nsw i32 %sub161, %105
  %106 = load i32, ptr %j, align 4, !tbaa !5
  %add163 = add nsw i32 %mul162, %106
  %idxprom164 = sext i32 %add163 to i64
  %arrayidx165 = getelementptr inbounds i8, ptr %103, i64 %idxprom164
  %107 = load i8, ptr %arrayidx165, align 1, !tbaa !25
  %conv166 = zext i8 %107 to i32
  %cmp167 = icmp slt i32 %conv166, 8
  br i1 %cmp167, label %if.then169, label %if.else183

if.then169:                                       ; preds = %if.else
  %arrayidx170 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 1
  store i32 0, ptr %arrayidx170, align 4, !tbaa !5
  %arrayidx171 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 0
  store i32 0, ptr %arrayidx171, align 16, !tbaa !5
  %arrayidx172 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 2
  store i32 0, ptr %arrayidx172, align 8, !tbaa !5
  %arrayidx173 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 3
  %108 = load i32, ptr %arrayidx173, align 4, !tbaa !5
  %mul174 = mul nsw i32 %108, 2
  store i32 %mul174, ptr %arrayidx173, align 4, !tbaa !5
  %arrayidx175 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 5
  %109 = load i32, ptr %arrayidx175, align 4, !tbaa !5
  %mul176 = mul nsw i32 %109, 2
  store i32 %mul176, ptr %arrayidx175, align 4, !tbaa !5
  %arrayidx177 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 6
  %110 = load i32, ptr %arrayidx177, align 8, !tbaa !5
  %mul178 = mul nsw i32 %110, 3
  store i32 %mul178, ptr %arrayidx177, align 8, !tbaa !5
  %arrayidx179 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 8
  %111 = load i32, ptr %arrayidx179, align 16, !tbaa !5
  %mul180 = mul nsw i32 %111, 3
  store i32 %mul180, ptr %arrayidx179, align 16, !tbaa !5
  %arrayidx181 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 7
  %112 = load i32, ptr %arrayidx181, align 4, !tbaa !5
  %mul182 = mul nsw i32 %112, 4
  store i32 %mul182, ptr %arrayidx181, align 4, !tbaa !5
  br label %if.end330

if.else183:                                       ; preds = %if.else
  %113 = load ptr, ptr %mid.addr, align 8, !tbaa !21
  %114 = load i32, ptr %i, align 4, !tbaa !5
  %sub184 = sub nsw i32 %114, 1
  %115 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul185 = mul nsw i32 %sub184, %115
  %116 = load i32, ptr %j, align 4, !tbaa !5
  %add186 = add nsw i32 %mul185, %116
  %add187 = add nsw i32 %add186, 1
  %idxprom188 = sext i32 %add187 to i64
  %arrayidx189 = getelementptr inbounds i8, ptr %113, i64 %idxprom188
  %117 = load i8, ptr %arrayidx189, align 1, !tbaa !25
  %conv190 = zext i8 %117 to i32
  %cmp191 = icmp slt i32 %conv190, 8
  br i1 %cmp191, label %if.then193, label %if.else207

if.then193:                                       ; preds = %if.else183
  %arrayidx194 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 2
  store i32 0, ptr %arrayidx194, align 8, !tbaa !5
  %arrayidx195 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 1
  store i32 0, ptr %arrayidx195, align 4, !tbaa !5
  %arrayidx196 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 5
  store i32 0, ptr %arrayidx196, align 4, !tbaa !5
  %arrayidx197 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 0
  %118 = load i32, ptr %arrayidx197, align 16, !tbaa !5
  %mul198 = mul nsw i32 %118, 2
  store i32 %mul198, ptr %arrayidx197, align 16, !tbaa !5
  %arrayidx199 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 8
  %119 = load i32, ptr %arrayidx199, align 16, !tbaa !5
  %mul200 = mul nsw i32 %119, 2
  store i32 %mul200, ptr %arrayidx199, align 16, !tbaa !5
  %arrayidx201 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 3
  %120 = load i32, ptr %arrayidx201, align 4, !tbaa !5
  %mul202 = mul nsw i32 %120, 3
  store i32 %mul202, ptr %arrayidx201, align 4, !tbaa !5
  %arrayidx203 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 7
  %121 = load i32, ptr %arrayidx203, align 4, !tbaa !5
  %mul204 = mul nsw i32 %121, 3
  store i32 %mul204, ptr %arrayidx203, align 4, !tbaa !5
  %arrayidx205 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 6
  %122 = load i32, ptr %arrayidx205, align 8, !tbaa !5
  %mul206 = mul nsw i32 %122, 4
  store i32 %mul206, ptr %arrayidx205, align 8, !tbaa !5
  br label %if.end329

if.else207:                                       ; preds = %if.else183
  %123 = load ptr, ptr %mid.addr, align 8, !tbaa !21
  %124 = load i32, ptr %i, align 4, !tbaa !5
  %125 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul208 = mul nsw i32 %124, %125
  %126 = load i32, ptr %j, align 4, !tbaa !5
  %add209 = add nsw i32 %mul208, %126
  %sub210 = sub nsw i32 %add209, 1
  %idxprom211 = sext i32 %sub210 to i64
  %arrayidx212 = getelementptr inbounds i8, ptr %123, i64 %idxprom211
  %127 = load i8, ptr %arrayidx212, align 1, !tbaa !25
  %conv213 = zext i8 %127 to i32
  %cmp214 = icmp slt i32 %conv213, 8
  br i1 %cmp214, label %if.then216, label %if.else230

if.then216:                                       ; preds = %if.else207
  %arrayidx217 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 3
  store i32 0, ptr %arrayidx217, align 4, !tbaa !5
  %arrayidx218 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 0
  store i32 0, ptr %arrayidx218, align 16, !tbaa !5
  %arrayidx219 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 6
  store i32 0, ptr %arrayidx219, align 8, !tbaa !5
  %arrayidx220 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 1
  %128 = load i32, ptr %arrayidx220, align 4, !tbaa !5
  %mul221 = mul nsw i32 %128, 2
  store i32 %mul221, ptr %arrayidx220, align 4, !tbaa !5
  %arrayidx222 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 7
  %129 = load i32, ptr %arrayidx222, align 4, !tbaa !5
  %mul223 = mul nsw i32 %129, 2
  store i32 %mul223, ptr %arrayidx222, align 4, !tbaa !5
  %arrayidx224 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 2
  %130 = load i32, ptr %arrayidx224, align 8, !tbaa !5
  %mul225 = mul nsw i32 %130, 3
  store i32 %mul225, ptr %arrayidx224, align 8, !tbaa !5
  %arrayidx226 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 8
  %131 = load i32, ptr %arrayidx226, align 16, !tbaa !5
  %mul227 = mul nsw i32 %131, 3
  store i32 %mul227, ptr %arrayidx226, align 16, !tbaa !5
  %arrayidx228 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 5
  %132 = load i32, ptr %arrayidx228, align 4, !tbaa !5
  %mul229 = mul nsw i32 %132, 4
  store i32 %mul229, ptr %arrayidx228, align 4, !tbaa !5
  br label %if.end328

if.else230:                                       ; preds = %if.else207
  %133 = load ptr, ptr %mid.addr, align 8, !tbaa !21
  %134 = load i32, ptr %i, align 4, !tbaa !5
  %135 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul231 = mul nsw i32 %134, %135
  %136 = load i32, ptr %j, align 4, !tbaa !5
  %add232 = add nsw i32 %mul231, %136
  %add233 = add nsw i32 %add232, 1
  %idxprom234 = sext i32 %add233 to i64
  %arrayidx235 = getelementptr inbounds i8, ptr %133, i64 %idxprom234
  %137 = load i8, ptr %arrayidx235, align 1, !tbaa !25
  %conv236 = zext i8 %137 to i32
  %cmp237 = icmp slt i32 %conv236, 8
  br i1 %cmp237, label %if.then239, label %if.else253

if.then239:                                       ; preds = %if.else230
  %arrayidx240 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 5
  store i32 0, ptr %arrayidx240, align 4, !tbaa !5
  %arrayidx241 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 2
  store i32 0, ptr %arrayidx241, align 8, !tbaa !5
  %arrayidx242 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 8
  store i32 0, ptr %arrayidx242, align 16, !tbaa !5
  %arrayidx243 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 1
  %138 = load i32, ptr %arrayidx243, align 4, !tbaa !5
  %mul244 = mul nsw i32 %138, 2
  store i32 %mul244, ptr %arrayidx243, align 4, !tbaa !5
  %arrayidx245 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 7
  %139 = load i32, ptr %arrayidx245, align 4, !tbaa !5
  %mul246 = mul nsw i32 %139, 2
  store i32 %mul246, ptr %arrayidx245, align 4, !tbaa !5
  %arrayidx247 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 0
  %140 = load i32, ptr %arrayidx247, align 16, !tbaa !5
  %mul248 = mul nsw i32 %140, 3
  store i32 %mul248, ptr %arrayidx247, align 16, !tbaa !5
  %arrayidx249 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 6
  %141 = load i32, ptr %arrayidx249, align 8, !tbaa !5
  %mul250 = mul nsw i32 %141, 3
  store i32 %mul250, ptr %arrayidx249, align 8, !tbaa !5
  %arrayidx251 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 3
  %142 = load i32, ptr %arrayidx251, align 4, !tbaa !5
  %mul252 = mul nsw i32 %142, 4
  store i32 %mul252, ptr %arrayidx251, align 4, !tbaa !5
  br label %if.end327

if.else253:                                       ; preds = %if.else230
  %143 = load ptr, ptr %mid.addr, align 8, !tbaa !21
  %144 = load i32, ptr %i, align 4, !tbaa !5
  %add254 = add nsw i32 %144, 1
  %145 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul255 = mul nsw i32 %add254, %145
  %146 = load i32, ptr %j, align 4, !tbaa !5
  %add256 = add nsw i32 %mul255, %146
  %sub257 = sub nsw i32 %add256, 1
  %idxprom258 = sext i32 %sub257 to i64
  %arrayidx259 = getelementptr inbounds i8, ptr %143, i64 %idxprom258
  %147 = load i8, ptr %arrayidx259, align 1, !tbaa !25
  %conv260 = zext i8 %147 to i32
  %cmp261 = icmp slt i32 %conv260, 8
  br i1 %cmp261, label %if.then263, label %if.else277

if.then263:                                       ; preds = %if.else253
  %arrayidx264 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 6
  store i32 0, ptr %arrayidx264, align 8, !tbaa !5
  %arrayidx265 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 3
  store i32 0, ptr %arrayidx265, align 4, !tbaa !5
  %arrayidx266 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 7
  store i32 0, ptr %arrayidx266, align 4, !tbaa !5
  %arrayidx267 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 0
  %148 = load i32, ptr %arrayidx267, align 16, !tbaa !5
  %mul268 = mul nsw i32 %148, 2
  store i32 %mul268, ptr %arrayidx267, align 16, !tbaa !5
  %arrayidx269 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 8
  %149 = load i32, ptr %arrayidx269, align 16, !tbaa !5
  %mul270 = mul nsw i32 %149, 2
  store i32 %mul270, ptr %arrayidx269, align 16, !tbaa !5
  %arrayidx271 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 1
  %150 = load i32, ptr %arrayidx271, align 4, !tbaa !5
  %mul272 = mul nsw i32 %150, 3
  store i32 %mul272, ptr %arrayidx271, align 4, !tbaa !5
  %arrayidx273 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 5
  %151 = load i32, ptr %arrayidx273, align 4, !tbaa !5
  %mul274 = mul nsw i32 %151, 3
  store i32 %mul274, ptr %arrayidx273, align 4, !tbaa !5
  %arrayidx275 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 2
  %152 = load i32, ptr %arrayidx275, align 8, !tbaa !5
  %mul276 = mul nsw i32 %152, 4
  store i32 %mul276, ptr %arrayidx275, align 8, !tbaa !5
  br label %if.end326

if.else277:                                       ; preds = %if.else253
  %153 = load ptr, ptr %mid.addr, align 8, !tbaa !21
  %154 = load i32, ptr %i, align 4, !tbaa !5
  %add278 = add nsw i32 %154, 1
  %155 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul279 = mul nsw i32 %add278, %155
  %156 = load i32, ptr %j, align 4, !tbaa !5
  %add280 = add nsw i32 %mul279, %156
  %idxprom281 = sext i32 %add280 to i64
  %arrayidx282 = getelementptr inbounds i8, ptr %153, i64 %idxprom281
  %157 = load i8, ptr %arrayidx282, align 1, !tbaa !25
  %conv283 = zext i8 %157 to i32
  %cmp284 = icmp slt i32 %conv283, 8
  br i1 %cmp284, label %if.then286, label %if.else300

if.then286:                                       ; preds = %if.else277
  %arrayidx287 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 7
  store i32 0, ptr %arrayidx287, align 4, !tbaa !5
  %arrayidx288 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 6
  store i32 0, ptr %arrayidx288, align 8, !tbaa !5
  %arrayidx289 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 8
  store i32 0, ptr %arrayidx289, align 16, !tbaa !5
  %arrayidx290 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 3
  %158 = load i32, ptr %arrayidx290, align 4, !tbaa !5
  %mul291 = mul nsw i32 %158, 2
  store i32 %mul291, ptr %arrayidx290, align 4, !tbaa !5
  %arrayidx292 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 5
  %159 = load i32, ptr %arrayidx292, align 4, !tbaa !5
  %mul293 = mul nsw i32 %159, 2
  store i32 %mul293, ptr %arrayidx292, align 4, !tbaa !5
  %arrayidx294 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 0
  %160 = load i32, ptr %arrayidx294, align 16, !tbaa !5
  %mul295 = mul nsw i32 %160, 3
  store i32 %mul295, ptr %arrayidx294, align 16, !tbaa !5
  %arrayidx296 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 2
  %161 = load i32, ptr %arrayidx296, align 8, !tbaa !5
  %mul297 = mul nsw i32 %161, 3
  store i32 %mul297, ptr %arrayidx296, align 8, !tbaa !5
  %arrayidx298 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 1
  %162 = load i32, ptr %arrayidx298, align 4, !tbaa !5
  %mul299 = mul nsw i32 %162, 4
  store i32 %mul299, ptr %arrayidx298, align 4, !tbaa !5
  br label %if.end325

if.else300:                                       ; preds = %if.else277
  %163 = load ptr, ptr %mid.addr, align 8, !tbaa !21
  %164 = load i32, ptr %i, align 4, !tbaa !5
  %add301 = add nsw i32 %164, 1
  %165 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul302 = mul nsw i32 %add301, %165
  %166 = load i32, ptr %j, align 4, !tbaa !5
  %add303 = add nsw i32 %mul302, %166
  %add304 = add nsw i32 %add303, 1
  %idxprom305 = sext i32 %add304 to i64
  %arrayidx306 = getelementptr inbounds i8, ptr %163, i64 %idxprom305
  %167 = load i8, ptr %arrayidx306, align 1, !tbaa !25
  %conv307 = zext i8 %167 to i32
  %cmp308 = icmp slt i32 %conv307, 8
  br i1 %cmp308, label %if.then310, label %if.end324

if.then310:                                       ; preds = %if.else300
  %arrayidx311 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 8
  store i32 0, ptr %arrayidx311, align 16, !tbaa !5
  %arrayidx312 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 5
  store i32 0, ptr %arrayidx312, align 4, !tbaa !5
  %arrayidx313 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 7
  store i32 0, ptr %arrayidx313, align 4, !tbaa !5
  %arrayidx314 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 6
  %168 = load i32, ptr %arrayidx314, align 8, !tbaa !5
  %mul315 = mul nsw i32 %168, 2
  store i32 %mul315, ptr %arrayidx314, align 8, !tbaa !5
  %arrayidx316 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 2
  %169 = load i32, ptr %arrayidx316, align 8, !tbaa !5
  %mul317 = mul nsw i32 %169, 2
  store i32 %mul317, ptr %arrayidx316, align 8, !tbaa !5
  %arrayidx318 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 1
  %170 = load i32, ptr %arrayidx318, align 4, !tbaa !5
  %mul319 = mul nsw i32 %170, 3
  store i32 %mul319, ptr %arrayidx318, align 4, !tbaa !5
  %arrayidx320 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 3
  %171 = load i32, ptr %arrayidx320, align 4, !tbaa !5
  %mul321 = mul nsw i32 %171, 3
  store i32 %mul321, ptr %arrayidx320, align 4, !tbaa !5
  %arrayidx322 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 0
  %172 = load i32, ptr %arrayidx322, align 16, !tbaa !5
  %mul323 = mul nsw i32 %172, 4
  store i32 %mul323, ptr %arrayidx322, align 16, !tbaa !5
  br label %if.end324

if.end324:                                        ; preds = %if.then310, %if.else300
  br label %if.end325

if.end325:                                        ; preds = %if.end324, %if.then286
  br label %if.end326

if.end326:                                        ; preds = %if.end325, %if.then263
  br label %if.end327

if.end327:                                        ; preds = %if.end326, %if.then239
  br label %if.end328

if.end328:                                        ; preds = %if.end327, %if.then216
  br label %if.end329

if.end329:                                        ; preds = %if.end328, %if.then193
  br label %if.end330

if.end330:                                        ; preds = %if.end329, %if.then169
  br label %if.end331

if.end331:                                        ; preds = %if.end330, %if.then147
  store i32 0, ptr %m, align 4, !tbaa !5
  store i32 0, ptr %y, align 4, !tbaa !5
  br label %for.cond332

for.cond332:                                      ; preds = %for.inc354, %if.end331
  %173 = load i32, ptr %y, align 4, !tbaa !5
  %cmp333 = icmp slt i32 %173, 3
  br i1 %cmp333, label %for.body335, label %for.end356

for.body335:                                      ; preds = %for.cond332
  store i32 0, ptr %x, align 4, !tbaa !5
  br label %for.cond336

for.cond336:                                      ; preds = %for.inc, %for.body335
  %174 = load i32, ptr %x, align 4, !tbaa !5
  %cmp337 = icmp slt i32 %174, 3
  br i1 %cmp337, label %for.body339, label %for.end

for.body339:                                      ; preds = %for.cond336
  %175 = load i32, ptr %y, align 4, !tbaa !5
  %176 = load i32, ptr %y, align 4, !tbaa !5
  %add340 = add nsw i32 %175, %176
  %177 = load i32, ptr %y, align 4, !tbaa !5
  %add341 = add nsw i32 %add340, %177
  %178 = load i32, ptr %x, align 4, !tbaa !5
  %add342 = add nsw i32 %add341, %178
  %idxprom343 = sext i32 %add342 to i64
  %arrayidx344 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 %idxprom343
  %179 = load i32, ptr %arrayidx344, align 4, !tbaa !5
  %180 = load i32, ptr %m, align 4, !tbaa !5
  %cmp345 = icmp sgt i32 %179, %180
  br i1 %cmp345, label %if.then347, label %if.end353

if.then347:                                       ; preds = %for.body339
  %181 = load i32, ptr %y, align 4, !tbaa !5
  %182 = load i32, ptr %y, align 4, !tbaa !5
  %add348 = add nsw i32 %181, %182
  %183 = load i32, ptr %y, align 4, !tbaa !5
  %add349 = add nsw i32 %add348, %183
  %184 = load i32, ptr %x, align 4, !tbaa !5
  %add350 = add nsw i32 %add349, %184
  %idxprom351 = sext i32 %add350 to i64
  %arrayidx352 = getelementptr inbounds [9 x i32], ptr %l, i64 0, i64 %idxprom351
  %185 = load i32, ptr %arrayidx352, align 4, !tbaa !5
  store i32 %185, ptr %m, align 4, !tbaa !5
  %186 = load i32, ptr %y, align 4, !tbaa !5
  store i32 %186, ptr %a, align 4, !tbaa !5
  %187 = load i32, ptr %x, align 4, !tbaa !5
  store i32 %187, ptr %b, align 4, !tbaa !5
  br label %if.end353

if.end353:                                        ; preds = %if.then347, %for.body339
  br label %for.inc

for.inc:                                          ; preds = %if.end353
  %188 = load i32, ptr %x, align 4, !tbaa !5
  %inc = add nsw i32 %188, 1
  store i32 %inc, ptr %x, align 4, !tbaa !5
  br label %for.cond336, !llvm.loop !53

for.end:                                          ; preds = %for.cond336
  br label %for.inc354

for.inc354:                                       ; preds = %for.end
  %189 = load i32, ptr %y, align 4, !tbaa !5
  %inc355 = add nsw i32 %189, 1
  store i32 %inc355, ptr %y, align 4, !tbaa !5
  br label %for.cond332, !llvm.loop !54

for.end356:                                       ; preds = %for.cond332
  %190 = load i32, ptr %m, align 4, !tbaa !5
  %cmp357 = icmp sgt i32 %190, 0
  br i1 %cmp357, label %if.then359, label %if.end411

if.then359:                                       ; preds = %for.end356
  %191 = load ptr, ptr %mid.addr, align 8, !tbaa !21
  %192 = load i32, ptr %i, align 4, !tbaa !5
  %193 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul360 = mul nsw i32 %192, %193
  %194 = load i32, ptr %j, align 4, !tbaa !5
  %add361 = add nsw i32 %mul360, %194
  %idxprom362 = sext i32 %add361 to i64
  %arrayidx363 = getelementptr inbounds i8, ptr %191, i64 %idxprom362
  %195 = load i8, ptr %arrayidx363, align 1, !tbaa !25
  %conv364 = zext i8 %195 to i32
  %cmp365 = icmp slt i32 %conv364, 4
  br i1 %cmp365, label %if.then367, label %if.else376

if.then367:                                       ; preds = %if.then359
  %196 = load ptr, ptr %mid.addr, align 8, !tbaa !21
  %197 = load i32, ptr %i, align 4, !tbaa !5
  %198 = load i32, ptr %a, align 4, !tbaa !5
  %add368 = add nsw i32 %197, %198
  %sub369 = sub nsw i32 %add368, 1
  %199 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul370 = mul nsw i32 %sub369, %199
  %200 = load i32, ptr %j, align 4, !tbaa !5
  %add371 = add nsw i32 %mul370, %200
  %201 = load i32, ptr %b, align 4, !tbaa !5
  %add372 = add nsw i32 %add371, %201
  %sub373 = sub nsw i32 %add372, 1
  %idxprom374 = sext i32 %sub373 to i64
  %arrayidx375 = getelementptr inbounds i8, ptr %196, i64 %idxprom374
  store i8 4, ptr %arrayidx375, align 1, !tbaa !25
  br label %if.end392

if.else376:                                       ; preds = %if.then359
  %202 = load ptr, ptr %mid.addr, align 8, !tbaa !21
  %203 = load i32, ptr %i, align 4, !tbaa !5
  %204 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul377 = mul nsw i32 %203, %204
  %205 = load i32, ptr %j, align 4, !tbaa !5
  %add378 = add nsw i32 %mul377, %205
  %idxprom379 = sext i32 %add378 to i64
  %arrayidx380 = getelementptr inbounds i8, ptr %202, i64 %idxprom379
  %206 = load i8, ptr %arrayidx380, align 1, !tbaa !25
  %conv381 = zext i8 %206 to i32
  %add382 = add nsw i32 %conv381, 1
  %conv383 = trunc i32 %add382 to i8
  %207 = load ptr, ptr %mid.addr, align 8, !tbaa !21
  %208 = load i32, ptr %i, align 4, !tbaa !5
  %209 = load i32, ptr %a, align 4, !tbaa !5
  %add384 = add nsw i32 %208, %209
  %sub385 = sub nsw i32 %add384, 1
  %210 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul386 = mul nsw i32 %sub385, %210
  %211 = load i32, ptr %j, align 4, !tbaa !5
  %add387 = add nsw i32 %mul386, %211
  %212 = load i32, ptr %b, align 4, !tbaa !5
  %add388 = add nsw i32 %add387, %212
  %sub389 = sub nsw i32 %add388, 1
  %idxprom390 = sext i32 %sub389 to i64
  %arrayidx391 = getelementptr inbounds i8, ptr %207, i64 %idxprom390
  store i8 %conv383, ptr %arrayidx391, align 1, !tbaa !25
  br label %if.end392

if.end392:                                        ; preds = %if.else376, %if.then367
  %213 = load i32, ptr %a, align 4, !tbaa !5
  %214 = load i32, ptr %a, align 4, !tbaa !5
  %add393 = add nsw i32 %213, %214
  %215 = load i32, ptr %b, align 4, !tbaa !5
  %add394 = add nsw i32 %add393, %215
  %cmp395 = icmp slt i32 %add394, 3
  br i1 %cmp395, label %if.then397, label %if.end410

if.then397:                                       ; preds = %if.end392
  %216 = load i32, ptr %a, align 4, !tbaa !5
  %sub398 = sub nsw i32 %216, 1
  %217 = load i32, ptr %i, align 4, !tbaa !5
  %add399 = add nsw i32 %217, %sub398
  store i32 %add399, ptr %i, align 4, !tbaa !5
  %218 = load i32, ptr %b, align 4, !tbaa !5
  %sub400 = sub nsw i32 %218, 2
  %219 = load i32, ptr %j, align 4, !tbaa !5
  %add401 = add nsw i32 %219, %sub400
  store i32 %add401, ptr %j, align 4, !tbaa !5
  %220 = load i32, ptr %i, align 4, !tbaa !5
  %cmp402 = icmp slt i32 %220, 4
  br i1 %cmp402, label %if.then404, label %if.end405

if.then404:                                       ; preds = %if.then397
  store i32 4, ptr %i, align 4, !tbaa !5
  br label %if.end405

if.end405:                                        ; preds = %if.then404, %if.then397
  %221 = load i32, ptr %j, align 4, !tbaa !5
  %cmp406 = icmp slt i32 %221, 4
  br i1 %cmp406, label %if.then408, label %if.end409

if.then408:                                       ; preds = %if.end405
  store i32 4, ptr %j, align 4, !tbaa !5
  br label %if.end409

if.end409:                                        ; preds = %if.then408, %if.end405
  br label %if.end410

if.end410:                                        ; preds = %if.end409, %if.end392
  br label %if.end411

if.end411:                                        ; preds = %if.end410, %for.end356
  br label %if.end412

if.end412:                                        ; preds = %if.end411, %land.lhs.true, %if.end
  %222 = load i32, ptr %n, align 4, !tbaa !5
  %cmp413 = icmp eq i32 %222, 2
  br i1 %cmp413, label %if.then415, label %if.end709

if.then415:                                       ; preds = %if.end412
  %223 = load ptr, ptr %mid.addr, align 8, !tbaa !21
  %224 = load i32, ptr %i, align 4, !tbaa !5
  %sub416 = sub nsw i32 %224, 1
  %225 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul417 = mul nsw i32 %sub416, %225
  %226 = load i32, ptr %j, align 4, !tbaa !5
  %add418 = add nsw i32 %mul417, %226
  %sub419 = sub nsw i32 %add418, 1
  %idxprom420 = sext i32 %sub419 to i64
  %arrayidx421 = getelementptr inbounds i8, ptr %223, i64 %idxprom420
  %227 = load i8, ptr %arrayidx421, align 1, !tbaa !25
  %conv422 = zext i8 %227 to i32
  %cmp423 = icmp slt i32 %conv422, 8
  %conv424 = zext i1 %cmp423 to i32
  store i32 %conv424, ptr %b00, align 4, !tbaa !5
  %228 = load ptr, ptr %mid.addr, align 8, !tbaa !21
  %229 = load i32, ptr %i, align 4, !tbaa !5
  %sub425 = sub nsw i32 %229, 1
  %230 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul426 = mul nsw i32 %sub425, %230
  %231 = load i32, ptr %j, align 4, !tbaa !5
  %add427 = add nsw i32 %mul426, %231
  %add428 = add nsw i32 %add427, 1
  %idxprom429 = sext i32 %add428 to i64
  %arrayidx430 = getelementptr inbounds i8, ptr %228, i64 %idxprom429
  %232 = load i8, ptr %arrayidx430, align 1, !tbaa !25
  %conv431 = zext i8 %232 to i32
  %cmp432 = icmp slt i32 %conv431, 8
  %conv433 = zext i1 %cmp432 to i32
  store i32 %conv433, ptr %b02, align 4, !tbaa !5
  %233 = load ptr, ptr %mid.addr, align 8, !tbaa !21
  %234 = load i32, ptr %i, align 4, !tbaa !5
  %add434 = add nsw i32 %234, 1
  %235 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul435 = mul nsw i32 %add434, %235
  %236 = load i32, ptr %j, align 4, !tbaa !5
  %add436 = add nsw i32 %mul435, %236
  %sub437 = sub nsw i32 %add436, 1
  %idxprom438 = sext i32 %sub437 to i64
  %arrayidx439 = getelementptr inbounds i8, ptr %233, i64 %idxprom438
  %237 = load i8, ptr %arrayidx439, align 1, !tbaa !25
  %conv440 = zext i8 %237 to i32
  %cmp441 = icmp slt i32 %conv440, 8
  %conv442 = zext i1 %cmp441 to i32
  store i32 %conv442, ptr %b20, align 4, !tbaa !5
  %238 = load ptr, ptr %mid.addr, align 8, !tbaa !21
  %239 = load i32, ptr %i, align 4, !tbaa !5
  %add443 = add nsw i32 %239, 1
  %240 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul444 = mul nsw i32 %add443, %240
  %241 = load i32, ptr %j, align 4, !tbaa !5
  %add445 = add nsw i32 %mul444, %241
  %add446 = add nsw i32 %add445, 1
  %idxprom447 = sext i32 %add446 to i64
  %arrayidx448 = getelementptr inbounds i8, ptr %238, i64 %idxprom447
  %242 = load i8, ptr %arrayidx448, align 1, !tbaa !25
  %conv449 = zext i8 %242 to i32
  %cmp450 = icmp slt i32 %conv449, 8
  %conv451 = zext i1 %cmp450 to i32
  store i32 %conv451, ptr %b22, align 4, !tbaa !5
  %243 = load i32, ptr %b00, align 4, !tbaa !5
  %244 = load i32, ptr %b02, align 4, !tbaa !5
  %add452 = add nsw i32 %243, %244
  %245 = load i32, ptr %b20, align 4, !tbaa !5
  %add453 = add nsw i32 %add452, %245
  %246 = load i32, ptr %b22, align 4, !tbaa !5
  %add454 = add nsw i32 %add453, %246
  %cmp455 = icmp eq i32 %add454, 2
  br i1 %cmp455, label %land.lhs.true457, label %if.else565

land.lhs.true457:                                 ; preds = %if.then415
  %247 = load i32, ptr %b00, align 4, !tbaa !5
  %248 = load i32, ptr %b22, align 4, !tbaa !5
  %or = or i32 %247, %248
  %249 = load i32, ptr %b02, align 4, !tbaa !5
  %250 = load i32, ptr %b20, align 4, !tbaa !5
  %or458 = or i32 %249, %250
  %and = and i32 %or, %or458
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then459, label %if.else565

if.then459:                                       ; preds = %land.lhs.true457
  %251 = load i32, ptr %b00, align 4, !tbaa !5
  %tobool460 = icmp ne i32 %251, 0
  br i1 %tobool460, label %if.then461, label %if.else466

if.then461:                                       ; preds = %if.then459
  %252 = load i32, ptr %b02, align 4, !tbaa !5
  %tobool462 = icmp ne i32 %252, 0
  br i1 %tobool462, label %if.then463, label %if.else464

if.then463:                                       ; preds = %if.then461
  store i32 0, ptr %x, align 4, !tbaa !5
  store i32 -1, ptr %y, align 4, !tbaa !5
  br label %if.end465

if.else464:                                       ; preds = %if.then461
  store i32 -1, ptr %x, align 4, !tbaa !5
  store i32 0, ptr %y, align 4, !tbaa !5
  br label %if.end465

if.end465:                                        ; preds = %if.else464, %if.then463
  br label %if.end471

if.else466:                                       ; preds = %if.then459
  %253 = load i32, ptr %b02, align 4, !tbaa !5
  %tobool467 = icmp ne i32 %253, 0
  br i1 %tobool467, label %if.then468, label %if.else469

if.then468:                                       ; preds = %if.else466
  store i32 1, ptr %x, align 4, !tbaa !5
  store i32 0, ptr %y, align 4, !tbaa !5
  br label %if.end470

if.else469:                                       ; preds = %if.else466
  store i32 0, ptr %x, align 4, !tbaa !5
  store i32 1, ptr %y, align 4, !tbaa !5
  br label %if.end470

if.end470:                                        ; preds = %if.else469, %if.then468
  br label %if.end471

if.end471:                                        ; preds = %if.end470, %if.end465
  %254 = load ptr, ptr %r.addr, align 8, !tbaa !23
  %255 = load i32, ptr %i, align 4, !tbaa !5
  %256 = load i32, ptr %y, align 4, !tbaa !5
  %add472 = add nsw i32 %255, %256
  %257 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul473 = mul nsw i32 %add472, %257
  %258 = load i32, ptr %j, align 4, !tbaa !5
  %add474 = add nsw i32 %mul473, %258
  %259 = load i32, ptr %x, align 4, !tbaa !5
  %add475 = add nsw i32 %add474, %259
  %idxprom476 = sext i32 %add475 to i64
  %arrayidx477 = getelementptr inbounds i32, ptr %254, i64 %idxprom476
  %260 = load i32, ptr %arrayidx477, align 4, !tbaa !5
  %conv478 = sitofp i32 %260 to float
  %261 = load i32, ptr %centre, align 4, !tbaa !5
  %conv479 = sitofp i32 %261 to float
  %div = fdiv float %conv478, %conv479
  %conv480 = fpext float %div to double
  %cmp481 = fcmp ogt double %conv480, 0x3FE6666666666666
  br i1 %cmp481, label %if.then483, label %if.end564

if.then483:                                       ; preds = %if.end471
  %262 = load i32, ptr %x, align 4, !tbaa !5
  %cmp484 = icmp eq i32 %262, 0
  br i1 %cmp484, label %land.lhs.true486, label %lor.lhs.false

land.lhs.true486:                                 ; preds = %if.then483
  %263 = load ptr, ptr %mid.addr, align 8, !tbaa !21
  %264 = load i32, ptr %i, align 4, !tbaa !5
  %265 = load i32, ptr %y, align 4, !tbaa !5
  %mul487 = mul nsw i32 2, %265
  %add488 = add nsw i32 %264, %mul487
  %266 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul489 = mul nsw i32 %add488, %266
  %267 = load i32, ptr %j, align 4, !tbaa !5
  %add490 = add nsw i32 %mul489, %267
  %idxprom491 = sext i32 %add490 to i64
  %arrayidx492 = getelementptr inbounds i8, ptr %263, i64 %idxprom491
  %268 = load i8, ptr %arrayidx492, align 1, !tbaa !25
  %conv493 = zext i8 %268 to i32
  %cmp494 = icmp sgt i32 %conv493, 7
  br i1 %cmp494, label %land.lhs.true496, label %lor.lhs.false

land.lhs.true496:                                 ; preds = %land.lhs.true486
  %269 = load ptr, ptr %mid.addr, align 8, !tbaa !21
  %270 = load i32, ptr %i, align 4, !tbaa !5
  %271 = load i32, ptr %y, align 4, !tbaa !5
  %mul497 = mul nsw i32 2, %271
  %add498 = add nsw i32 %270, %mul497
  %272 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul499 = mul nsw i32 %add498, %272
  %273 = load i32, ptr %j, align 4, !tbaa !5
  %add500 = add nsw i32 %mul499, %273
  %sub501 = sub nsw i32 %add500, 1
  %idxprom502 = sext i32 %sub501 to i64
  %arrayidx503 = getelementptr inbounds i8, ptr %269, i64 %idxprom502
  %274 = load i8, ptr %arrayidx503, align 1, !tbaa !25
  %conv504 = zext i8 %274 to i32
  %cmp505 = icmp sgt i32 %conv504, 7
  br i1 %cmp505, label %land.lhs.true507, label %lor.lhs.false

land.lhs.true507:                                 ; preds = %land.lhs.true496
  %275 = load ptr, ptr %mid.addr, align 8, !tbaa !21
  %276 = load i32, ptr %i, align 4, !tbaa !5
  %277 = load i32, ptr %y, align 4, !tbaa !5
  %mul508 = mul nsw i32 2, %277
  %add509 = add nsw i32 %276, %mul508
  %278 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul510 = mul nsw i32 %add509, %278
  %279 = load i32, ptr %j, align 4, !tbaa !5
  %add511 = add nsw i32 %mul510, %279
  %add512 = add nsw i32 %add511, 1
  %idxprom513 = sext i32 %add512 to i64
  %arrayidx514 = getelementptr inbounds i8, ptr %275, i64 %idxprom513
  %280 = load i8, ptr %arrayidx514, align 1, !tbaa !25
  %conv515 = zext i8 %280 to i32
  %cmp516 = icmp sgt i32 %conv515, 7
  br i1 %cmp516, label %if.then552, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true507, %land.lhs.true496, %land.lhs.true486, %if.then483
  %281 = load i32, ptr %y, align 4, !tbaa !5
  %cmp518 = icmp eq i32 %281, 0
  br i1 %cmp518, label %land.lhs.true520, label %if.end563

land.lhs.true520:                                 ; preds = %lor.lhs.false
  %282 = load ptr, ptr %mid.addr, align 8, !tbaa !21
  %283 = load i32, ptr %i, align 4, !tbaa !5
  %284 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul521 = mul nsw i32 %283, %284
  %285 = load i32, ptr %j, align 4, !tbaa !5
  %add522 = add nsw i32 %mul521, %285
  %286 = load i32, ptr %x, align 4, !tbaa !5
  %mul523 = mul nsw i32 2, %286
  %add524 = add nsw i32 %add522, %mul523
  %idxprom525 = sext i32 %add524 to i64
  %arrayidx526 = getelementptr inbounds i8, ptr %282, i64 %idxprom525
  %287 = load i8, ptr %arrayidx526, align 1, !tbaa !25
  %conv527 = zext i8 %287 to i32
  %cmp528 = icmp sgt i32 %conv527, 7
  br i1 %cmp528, label %land.lhs.true530, label %if.end563

land.lhs.true530:                                 ; preds = %land.lhs.true520
  %288 = load ptr, ptr %mid.addr, align 8, !tbaa !21
  %289 = load i32, ptr %i, align 4, !tbaa !5
  %add531 = add nsw i32 %289, 1
  %290 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul532 = mul nsw i32 %add531, %290
  %291 = load i32, ptr %j, align 4, !tbaa !5
  %add533 = add nsw i32 %mul532, %291
  %292 = load i32, ptr %x, align 4, !tbaa !5
  %mul534 = mul nsw i32 2, %292
  %add535 = add nsw i32 %add533, %mul534
  %idxprom536 = sext i32 %add535 to i64
  %arrayidx537 = getelementptr inbounds i8, ptr %288, i64 %idxprom536
  %293 = load i8, ptr %arrayidx537, align 1, !tbaa !25
  %conv538 = zext i8 %293 to i32
  %cmp539 = icmp sgt i32 %conv538, 7
  br i1 %cmp539, label %land.lhs.true541, label %if.end563

land.lhs.true541:                                 ; preds = %land.lhs.true530
  %294 = load ptr, ptr %mid.addr, align 8, !tbaa !21
  %295 = load i32, ptr %i, align 4, !tbaa !5
  %sub542 = sub nsw i32 %295, 1
  %296 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul543 = mul nsw i32 %sub542, %296
  %297 = load i32, ptr %j, align 4, !tbaa !5
  %add544 = add nsw i32 %mul543, %297
  %298 = load i32, ptr %x, align 4, !tbaa !5
  %mul545 = mul nsw i32 2, %298
  %add546 = add nsw i32 %add544, %mul545
  %idxprom547 = sext i32 %add546 to i64
  %arrayidx548 = getelementptr inbounds i8, ptr %294, i64 %idxprom547
  %299 = load i8, ptr %arrayidx548, align 1, !tbaa !25
  %conv549 = zext i8 %299 to i32
  %cmp550 = icmp sgt i32 %conv549, 7
  br i1 %cmp550, label %if.then552, label %if.end563

if.then552:                                       ; preds = %land.lhs.true541, %land.lhs.true507
  %300 = load ptr, ptr %mid.addr, align 8, !tbaa !21
  %301 = load i32, ptr %i, align 4, !tbaa !5
  %302 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul553 = mul nsw i32 %301, %302
  %303 = load i32, ptr %j, align 4, !tbaa !5
  %add554 = add nsw i32 %mul553, %303
  %idxprom555 = sext i32 %add554 to i64
  %arrayidx556 = getelementptr inbounds i8, ptr %300, i64 %idxprom555
  store i8 100, ptr %arrayidx556, align 1, !tbaa !25
  %304 = load ptr, ptr %mid.addr, align 8, !tbaa !21
  %305 = load i32, ptr %i, align 4, !tbaa !5
  %306 = load i32, ptr %y, align 4, !tbaa !5
  %add557 = add nsw i32 %305, %306
  %307 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul558 = mul nsw i32 %add557, %307
  %308 = load i32, ptr %j, align 4, !tbaa !5
  %add559 = add nsw i32 %mul558, %308
  %309 = load i32, ptr %x, align 4, !tbaa !5
  %add560 = add nsw i32 %add559, %309
  %idxprom561 = sext i32 %add560 to i64
  %arrayidx562 = getelementptr inbounds i8, ptr %304, i64 %idxprom561
  store i8 3, ptr %arrayidx562, align 1, !tbaa !25
  br label %if.end563

if.end563:                                        ; preds = %if.then552, %land.lhs.true541, %land.lhs.true530, %land.lhs.true520, %lor.lhs.false
  br label %if.end564

if.end564:                                        ; preds = %if.end563, %if.end471
  br label %if.end708

if.else565:                                       ; preds = %land.lhs.true457, %if.then415
  %310 = load ptr, ptr %mid.addr, align 8, !tbaa !21
  %311 = load i32, ptr %i, align 4, !tbaa !5
  %sub566 = sub nsw i32 %311, 1
  %312 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul567 = mul nsw i32 %sub566, %312
  %313 = load i32, ptr %j, align 4, !tbaa !5
  %add568 = add nsw i32 %mul567, %313
  %idxprom569 = sext i32 %add568 to i64
  %arrayidx570 = getelementptr inbounds i8, ptr %310, i64 %idxprom569
  %314 = load i8, ptr %arrayidx570, align 1, !tbaa !25
  %conv571 = zext i8 %314 to i32
  %cmp572 = icmp slt i32 %conv571, 8
  %conv573 = zext i1 %cmp572 to i32
  store i32 %conv573, ptr %b01, align 4, !tbaa !5
  %315 = load ptr, ptr %mid.addr, align 8, !tbaa !21
  %316 = load i32, ptr %i, align 4, !tbaa !5
  %317 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul574 = mul nsw i32 %316, %317
  %318 = load i32, ptr %j, align 4, !tbaa !5
  %add575 = add nsw i32 %mul574, %318
  %add576 = add nsw i32 %add575, 1
  %idxprom577 = sext i32 %add576 to i64
  %arrayidx578 = getelementptr inbounds i8, ptr %315, i64 %idxprom577
  %319 = load i8, ptr %arrayidx578, align 1, !tbaa !25
  %conv579 = zext i8 %319 to i32
  %cmp580 = icmp slt i32 %conv579, 8
  %conv581 = zext i1 %cmp580 to i32
  store i32 %conv581, ptr %b12, align 4, !tbaa !5
  %320 = load ptr, ptr %mid.addr, align 8, !tbaa !21
  %321 = load i32, ptr %i, align 4, !tbaa !5
  %add582 = add nsw i32 %321, 1
  %322 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul583 = mul nsw i32 %add582, %322
  %323 = load i32, ptr %j, align 4, !tbaa !5
  %add584 = add nsw i32 %mul583, %323
  %idxprom585 = sext i32 %add584 to i64
  %arrayidx586 = getelementptr inbounds i8, ptr %320, i64 %idxprom585
  %324 = load i8, ptr %arrayidx586, align 1, !tbaa !25
  %conv587 = zext i8 %324 to i32
  %cmp588 = icmp slt i32 %conv587, 8
  %conv589 = zext i1 %cmp588 to i32
  store i32 %conv589, ptr %b21, align 4, !tbaa !5
  %325 = load ptr, ptr %mid.addr, align 8, !tbaa !21
  %326 = load i32, ptr %i, align 4, !tbaa !5
  %327 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul590 = mul nsw i32 %326, %327
  %328 = load i32, ptr %j, align 4, !tbaa !5
  %add591 = add nsw i32 %mul590, %328
  %sub592 = sub nsw i32 %add591, 1
  %idxprom593 = sext i32 %sub592 to i64
  %arrayidx594 = getelementptr inbounds i8, ptr %325, i64 %idxprom593
  %329 = load i8, ptr %arrayidx594, align 1, !tbaa !25
  %conv595 = zext i8 %329 to i32
  %cmp596 = icmp slt i32 %conv595, 8
  %conv597 = zext i1 %cmp596 to i32
  store i32 %conv597, ptr %b10, align 4, !tbaa !5
  %330 = load i32, ptr %b01, align 4, !tbaa !5
  %331 = load i32, ptr %b12, align 4, !tbaa !5
  %add598 = add nsw i32 %330, %331
  %332 = load i32, ptr %b21, align 4, !tbaa !5
  %add599 = add nsw i32 %add598, %332
  %333 = load i32, ptr %b10, align 4, !tbaa !5
  %add600 = add nsw i32 %add599, %333
  %cmp601 = icmp eq i32 %add600, 2
  br i1 %cmp601, label %land.lhs.true603, label %if.end707

land.lhs.true603:                                 ; preds = %if.else565
  %334 = load i32, ptr %b10, align 4, !tbaa !5
  %335 = load i32, ptr %b12, align 4, !tbaa !5
  %or604 = or i32 %334, %335
  %336 = load i32, ptr %b01, align 4, !tbaa !5
  %337 = load i32, ptr %b21, align 4, !tbaa !5
  %or605 = or i32 %336, %337
  %and606 = and i32 %or604, %or605
  %tobool607 = icmp ne i32 %and606, 0
  br i1 %tobool607, label %land.lhs.true608, label %if.end707

land.lhs.true608:                                 ; preds = %land.lhs.true603
  %338 = load i32, ptr %b01, align 4, !tbaa !5
  %339 = load ptr, ptr %mid.addr, align 8, !tbaa !21
  %340 = load i32, ptr %i, align 4, !tbaa !5
  %sub609 = sub nsw i32 %340, 2
  %341 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul610 = mul nsw i32 %sub609, %341
  %342 = load i32, ptr %j, align 4, !tbaa !5
  %add611 = add nsw i32 %mul610, %342
  %sub612 = sub nsw i32 %add611, 1
  %idxprom613 = sext i32 %sub612 to i64
  %arrayidx614 = getelementptr inbounds i8, ptr %339, i64 %idxprom613
  %343 = load i8, ptr %arrayidx614, align 1, !tbaa !25
  %conv615 = zext i8 %343 to i32
  %cmp616 = icmp slt i32 %conv615, 8
  %conv617 = zext i1 %cmp616 to i32
  %344 = load ptr, ptr %mid.addr, align 8, !tbaa !21
  %345 = load i32, ptr %i, align 4, !tbaa !5
  %sub618 = sub nsw i32 %345, 2
  %346 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul619 = mul nsw i32 %sub618, %346
  %347 = load i32, ptr %j, align 4, !tbaa !5
  %add620 = add nsw i32 %mul619, %347
  %add621 = add nsw i32 %add620, 1
  %idxprom622 = sext i32 %add621 to i64
  %arrayidx623 = getelementptr inbounds i8, ptr %344, i64 %idxprom622
  %348 = load i8, ptr %arrayidx623, align 1, !tbaa !25
  %conv624 = zext i8 %348 to i32
  %cmp625 = icmp slt i32 %conv624, 8
  %conv626 = zext i1 %cmp625 to i32
  %or627 = or i32 %conv617, %conv626
  %and628 = and i32 %338, %or627
  %349 = load i32, ptr %b10, align 4, !tbaa !5
  %350 = load ptr, ptr %mid.addr, align 8, !tbaa !21
  %351 = load i32, ptr %i, align 4, !tbaa !5
  %sub629 = sub nsw i32 %351, 1
  %352 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul630 = mul nsw i32 %sub629, %352
  %353 = load i32, ptr %j, align 4, !tbaa !5
  %add631 = add nsw i32 %mul630, %353
  %sub632 = sub nsw i32 %add631, 2
  %idxprom633 = sext i32 %sub632 to i64
  %arrayidx634 = getelementptr inbounds i8, ptr %350, i64 %idxprom633
  %354 = load i8, ptr %arrayidx634, align 1, !tbaa !25
  %conv635 = zext i8 %354 to i32
  %cmp636 = icmp slt i32 %conv635, 8
  %conv637 = zext i1 %cmp636 to i32
  %355 = load ptr, ptr %mid.addr, align 8, !tbaa !21
  %356 = load i32, ptr %i, align 4, !tbaa !5
  %add638 = add nsw i32 %356, 1
  %357 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul639 = mul nsw i32 %add638, %357
  %358 = load i32, ptr %j, align 4, !tbaa !5
  %add640 = add nsw i32 %mul639, %358
  %sub641 = sub nsw i32 %add640, 2
  %idxprom642 = sext i32 %sub641 to i64
  %arrayidx643 = getelementptr inbounds i8, ptr %355, i64 %idxprom642
  %359 = load i8, ptr %arrayidx643, align 1, !tbaa !25
  %conv644 = zext i8 %359 to i32
  %cmp645 = icmp slt i32 %conv644, 8
  %conv646 = zext i1 %cmp645 to i32
  %or647 = or i32 %conv637, %conv646
  %and648 = and i32 %349, %or647
  %or649 = or i32 %and628, %and648
  %360 = load i32, ptr %b12, align 4, !tbaa !5
  %361 = load ptr, ptr %mid.addr, align 8, !tbaa !21
  %362 = load i32, ptr %i, align 4, !tbaa !5
  %sub650 = sub nsw i32 %362, 1
  %363 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul651 = mul nsw i32 %sub650, %363
  %364 = load i32, ptr %j, align 4, !tbaa !5
  %add652 = add nsw i32 %mul651, %364
  %add653 = add nsw i32 %add652, 2
  %idxprom654 = sext i32 %add653 to i64
  %arrayidx655 = getelementptr inbounds i8, ptr %361, i64 %idxprom654
  %365 = load i8, ptr %arrayidx655, align 1, !tbaa !25
  %conv656 = zext i8 %365 to i32
  %cmp657 = icmp slt i32 %conv656, 8
  %conv658 = zext i1 %cmp657 to i32
  %366 = load ptr, ptr %mid.addr, align 8, !tbaa !21
  %367 = load i32, ptr %i, align 4, !tbaa !5
  %add659 = add nsw i32 %367, 1
  %368 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul660 = mul nsw i32 %add659, %368
  %369 = load i32, ptr %j, align 4, !tbaa !5
  %add661 = add nsw i32 %mul660, %369
  %add662 = add nsw i32 %add661, 2
  %idxprom663 = sext i32 %add662 to i64
  %arrayidx664 = getelementptr inbounds i8, ptr %366, i64 %idxprom663
  %370 = load i8, ptr %arrayidx664, align 1, !tbaa !25
  %conv665 = zext i8 %370 to i32
  %cmp666 = icmp slt i32 %conv665, 8
  %conv667 = zext i1 %cmp666 to i32
  %or668 = or i32 %conv658, %conv667
  %and669 = and i32 %360, %or668
  %or670 = or i32 %or649, %and669
  %371 = load i32, ptr %b21, align 4, !tbaa !5
  %372 = load ptr, ptr %mid.addr, align 8, !tbaa !21
  %373 = load i32, ptr %i, align 4, !tbaa !5
  %add671 = add nsw i32 %373, 2
  %374 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul672 = mul nsw i32 %add671, %374
  %375 = load i32, ptr %j, align 4, !tbaa !5
  %add673 = add nsw i32 %mul672, %375
  %sub674 = sub nsw i32 %add673, 1
  %idxprom675 = sext i32 %sub674 to i64
  %arrayidx676 = getelementptr inbounds i8, ptr %372, i64 %idxprom675
  %376 = load i8, ptr %arrayidx676, align 1, !tbaa !25
  %conv677 = zext i8 %376 to i32
  %cmp678 = icmp slt i32 %conv677, 8
  %conv679 = zext i1 %cmp678 to i32
  %377 = load ptr, ptr %mid.addr, align 8, !tbaa !21
  %378 = load i32, ptr %i, align 4, !tbaa !5
  %add680 = add nsw i32 %378, 2
  %379 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul681 = mul nsw i32 %add680, %379
  %380 = load i32, ptr %j, align 4, !tbaa !5
  %add682 = add nsw i32 %mul681, %380
  %add683 = add nsw i32 %add682, 1
  %idxprom684 = sext i32 %add683 to i64
  %arrayidx685 = getelementptr inbounds i8, ptr %377, i64 %idxprom684
  %381 = load i8, ptr %arrayidx685, align 1, !tbaa !25
  %conv686 = zext i8 %381 to i32
  %cmp687 = icmp slt i32 %conv686, 8
  %conv688 = zext i1 %cmp687 to i32
  %or689 = or i32 %conv679, %conv688
  %and690 = and i32 %371, %or689
  %or691 = or i32 %or670, %and690
  %tobool692 = icmp ne i32 %or691, 0
  br i1 %tobool692, label %if.then693, label %if.end707

if.then693:                                       ; preds = %land.lhs.true608
  %382 = load ptr, ptr %mid.addr, align 8, !tbaa !21
  %383 = load i32, ptr %i, align 4, !tbaa !5
  %384 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul694 = mul nsw i32 %383, %384
  %385 = load i32, ptr %j, align 4, !tbaa !5
  %add695 = add nsw i32 %mul694, %385
  %idxprom696 = sext i32 %add695 to i64
  %arrayidx697 = getelementptr inbounds i8, ptr %382, i64 %idxprom696
  store i8 100, ptr %arrayidx697, align 1, !tbaa !25
  %386 = load i32, ptr %i, align 4, !tbaa !5
  %dec = add nsw i32 %386, -1
  store i32 %dec, ptr %i, align 4, !tbaa !5
  %387 = load i32, ptr %j, align 4, !tbaa !5
  %sub698 = sub nsw i32 %387, 2
  store i32 %sub698, ptr %j, align 4, !tbaa !5
  %388 = load i32, ptr %i, align 4, !tbaa !5
  %cmp699 = icmp slt i32 %388, 4
  br i1 %cmp699, label %if.then701, label %if.end702

if.then701:                                       ; preds = %if.then693
  store i32 4, ptr %i, align 4, !tbaa !5
  br label %if.end702

if.end702:                                        ; preds = %if.then701, %if.then693
  %389 = load i32, ptr %j, align 4, !tbaa !5
  %cmp703 = icmp slt i32 %389, 4
  br i1 %cmp703, label %if.then705, label %if.end706

if.then705:                                       ; preds = %if.end702
  store i32 4, ptr %j, align 4, !tbaa !5
  br label %if.end706

if.end706:                                        ; preds = %if.then705, %if.end702
  br label %if.end707

if.end707:                                        ; preds = %if.end706, %land.lhs.true608, %land.lhs.true603, %if.else565
  br label %if.end708

if.end708:                                        ; preds = %if.end707, %if.end564
  br label %if.end709

if.end709:                                        ; preds = %if.end708, %if.end412
  %390 = load i32, ptr %n, align 4, !tbaa !5
  %cmp710 = icmp sgt i32 %390, 2
  br i1 %cmp710, label %if.then712, label %if.end821

if.then712:                                       ; preds = %if.end709
  %391 = load ptr, ptr %mid.addr, align 8, !tbaa !21
  %392 = load i32, ptr %i, align 4, !tbaa !5
  %sub713 = sub nsw i32 %392, 1
  %393 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul714 = mul nsw i32 %sub713, %393
  %394 = load i32, ptr %j, align 4, !tbaa !5
  %add715 = add nsw i32 %mul714, %394
  %idxprom716 = sext i32 %add715 to i64
  %arrayidx717 = getelementptr inbounds i8, ptr %391, i64 %idxprom716
  %395 = load i8, ptr %arrayidx717, align 1, !tbaa !25
  %conv718 = zext i8 %395 to i32
  %cmp719 = icmp slt i32 %conv718, 8
  %conv720 = zext i1 %cmp719 to i32
  store i32 %conv720, ptr %b01, align 4, !tbaa !5
  %396 = load ptr, ptr %mid.addr, align 8, !tbaa !21
  %397 = load i32, ptr %i, align 4, !tbaa !5
  %398 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul721 = mul nsw i32 %397, %398
  %399 = load i32, ptr %j, align 4, !tbaa !5
  %add722 = add nsw i32 %mul721, %399
  %add723 = add nsw i32 %add722, 1
  %idxprom724 = sext i32 %add723 to i64
  %arrayidx725 = getelementptr inbounds i8, ptr %396, i64 %idxprom724
  %400 = load i8, ptr %arrayidx725, align 1, !tbaa !25
  %conv726 = zext i8 %400 to i32
  %cmp727 = icmp slt i32 %conv726, 8
  %conv728 = zext i1 %cmp727 to i32
  store i32 %conv728, ptr %b12, align 4, !tbaa !5
  %401 = load ptr, ptr %mid.addr, align 8, !tbaa !21
  %402 = load i32, ptr %i, align 4, !tbaa !5
  %add729 = add nsw i32 %402, 1
  %403 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul730 = mul nsw i32 %add729, %403
  %404 = load i32, ptr %j, align 4, !tbaa !5
  %add731 = add nsw i32 %mul730, %404
  %idxprom732 = sext i32 %add731 to i64
  %arrayidx733 = getelementptr inbounds i8, ptr %401, i64 %idxprom732
  %405 = load i8, ptr %arrayidx733, align 1, !tbaa !25
  %conv734 = zext i8 %405 to i32
  %cmp735 = icmp slt i32 %conv734, 8
  %conv736 = zext i1 %cmp735 to i32
  store i32 %conv736, ptr %b21, align 4, !tbaa !5
  %406 = load ptr, ptr %mid.addr, align 8, !tbaa !21
  %407 = load i32, ptr %i, align 4, !tbaa !5
  %408 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul737 = mul nsw i32 %407, %408
  %409 = load i32, ptr %j, align 4, !tbaa !5
  %add738 = add nsw i32 %mul737, %409
  %sub739 = sub nsw i32 %add738, 1
  %idxprom740 = sext i32 %sub739 to i64
  %arrayidx741 = getelementptr inbounds i8, ptr %406, i64 %idxprom740
  %410 = load i8, ptr %arrayidx741, align 1, !tbaa !25
  %conv742 = zext i8 %410 to i32
  %cmp743 = icmp slt i32 %conv742, 8
  %conv744 = zext i1 %cmp743 to i32
  store i32 %conv744, ptr %b10, align 4, !tbaa !5
  %411 = load i32, ptr %b01, align 4, !tbaa !5
  %412 = load i32, ptr %b12, align 4, !tbaa !5
  %add745 = add nsw i32 %411, %412
  %413 = load i32, ptr %b21, align 4, !tbaa !5
  %add746 = add nsw i32 %add745, %413
  %414 = load i32, ptr %b10, align 4, !tbaa !5
  %add747 = add nsw i32 %add746, %414
  %cmp748 = icmp sgt i32 %add747, 1
  br i1 %cmp748, label %if.then750, label %if.end820

if.then750:                                       ; preds = %if.then712
  %415 = load ptr, ptr %mid.addr, align 8, !tbaa !21
  %416 = load i32, ptr %i, align 4, !tbaa !5
  %sub751 = sub nsw i32 %416, 1
  %417 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul752 = mul nsw i32 %sub751, %417
  %418 = load i32, ptr %j, align 4, !tbaa !5
  %add753 = add nsw i32 %mul752, %418
  %sub754 = sub nsw i32 %add753, 1
  %idxprom755 = sext i32 %sub754 to i64
  %arrayidx756 = getelementptr inbounds i8, ptr %415, i64 %idxprom755
  %419 = load i8, ptr %arrayidx756, align 1, !tbaa !25
  %conv757 = zext i8 %419 to i32
  %cmp758 = icmp slt i32 %conv757, 8
  %conv759 = zext i1 %cmp758 to i32
  store i32 %conv759, ptr %b00, align 4, !tbaa !5
  %420 = load ptr, ptr %mid.addr, align 8, !tbaa !21
  %421 = load i32, ptr %i, align 4, !tbaa !5
  %sub760 = sub nsw i32 %421, 1
  %422 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul761 = mul nsw i32 %sub760, %422
  %423 = load i32, ptr %j, align 4, !tbaa !5
  %add762 = add nsw i32 %mul761, %423
  %add763 = add nsw i32 %add762, 1
  %idxprom764 = sext i32 %add763 to i64
  %arrayidx765 = getelementptr inbounds i8, ptr %420, i64 %idxprom764
  %424 = load i8, ptr %arrayidx765, align 1, !tbaa !25
  %conv766 = zext i8 %424 to i32
  %cmp767 = icmp slt i32 %conv766, 8
  %conv768 = zext i1 %cmp767 to i32
  store i32 %conv768, ptr %b02, align 4, !tbaa !5
  %425 = load ptr, ptr %mid.addr, align 8, !tbaa !21
  %426 = load i32, ptr %i, align 4, !tbaa !5
  %add769 = add nsw i32 %426, 1
  %427 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul770 = mul nsw i32 %add769, %427
  %428 = load i32, ptr %j, align 4, !tbaa !5
  %add771 = add nsw i32 %mul770, %428
  %sub772 = sub nsw i32 %add771, 1
  %idxprom773 = sext i32 %sub772 to i64
  %arrayidx774 = getelementptr inbounds i8, ptr %425, i64 %idxprom773
  %429 = load i8, ptr %arrayidx774, align 1, !tbaa !25
  %conv775 = zext i8 %429 to i32
  %cmp776 = icmp slt i32 %conv775, 8
  %conv777 = zext i1 %cmp776 to i32
  store i32 %conv777, ptr %b20, align 4, !tbaa !5
  %430 = load ptr, ptr %mid.addr, align 8, !tbaa !21
  %431 = load i32, ptr %i, align 4, !tbaa !5
  %add778 = add nsw i32 %431, 1
  %432 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul779 = mul nsw i32 %add778, %432
  %433 = load i32, ptr %j, align 4, !tbaa !5
  %add780 = add nsw i32 %mul779, %433
  %add781 = add nsw i32 %add780, 1
  %idxprom782 = sext i32 %add781 to i64
  %arrayidx783 = getelementptr inbounds i8, ptr %430, i64 %idxprom782
  %434 = load i8, ptr %arrayidx783, align 1, !tbaa !25
  %conv784 = zext i8 %434 to i32
  %cmp785 = icmp slt i32 %conv784, 8
  %conv786 = zext i1 %cmp785 to i32
  store i32 %conv786, ptr %b22, align 4, !tbaa !5
  %435 = load i32, ptr %b00, align 4, !tbaa !5
  %436 = load i32, ptr %b01, align 4, !tbaa !5
  %or787 = or i32 %435, %436
  store i32 %or787, ptr %p1, align 4, !tbaa !5
  %437 = load i32, ptr %b02, align 4, !tbaa !5
  %438 = load i32, ptr %b12, align 4, !tbaa !5
  %or788 = or i32 %437, %438
  store i32 %or788, ptr %p2, align 4, !tbaa !5
  %439 = load i32, ptr %b22, align 4, !tbaa !5
  %440 = load i32, ptr %b21, align 4, !tbaa !5
  %or789 = or i32 %439, %440
  store i32 %or789, ptr %p3, align 4, !tbaa !5
  %441 = load i32, ptr %b20, align 4, !tbaa !5
  %442 = load i32, ptr %b10, align 4, !tbaa !5
  %or790 = or i32 %441, %442
  store i32 %or790, ptr %p4, align 4, !tbaa !5
  %443 = load i32, ptr %p1, align 4, !tbaa !5
  %444 = load i32, ptr %p2, align 4, !tbaa !5
  %add791 = add nsw i32 %443, %444
  %445 = load i32, ptr %p3, align 4, !tbaa !5
  %add792 = add nsw i32 %add791, %445
  %446 = load i32, ptr %p4, align 4, !tbaa !5
  %add793 = add nsw i32 %add792, %446
  %447 = load i32, ptr %b01, align 4, !tbaa !5
  %448 = load i32, ptr %p2, align 4, !tbaa !5
  %and794 = and i32 %447, %448
  %449 = load i32, ptr %b12, align 4, !tbaa !5
  %450 = load i32, ptr %p3, align 4, !tbaa !5
  %and795 = and i32 %449, %450
  %add796 = add nsw i32 %and794, %and795
  %451 = load i32, ptr %b21, align 4, !tbaa !5
  %452 = load i32, ptr %p4, align 4, !tbaa !5
  %and797 = and i32 %451, %452
  %add798 = add nsw i32 %add796, %and797
  %453 = load i32, ptr %b10, align 4, !tbaa !5
  %454 = load i32, ptr %p1, align 4, !tbaa !5
  %and799 = and i32 %453, %454
  %add800 = add nsw i32 %add798, %and799
  %sub801 = sub nsw i32 %add793, %add800
  %cmp802 = icmp slt i32 %sub801, 2
  br i1 %cmp802, label %if.then804, label %if.end819

if.then804:                                       ; preds = %if.then750
  %455 = load ptr, ptr %mid.addr, align 8, !tbaa !21
  %456 = load i32, ptr %i, align 4, !tbaa !5
  %457 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul805 = mul nsw i32 %456, %457
  %458 = load i32, ptr %j, align 4, !tbaa !5
  %add806 = add nsw i32 %mul805, %458
  %idxprom807 = sext i32 %add806 to i64
  %arrayidx808 = getelementptr inbounds i8, ptr %455, i64 %idxprom807
  store i8 100, ptr %arrayidx808, align 1, !tbaa !25
  %459 = load i32, ptr %i, align 4, !tbaa !5
  %dec809 = add nsw i32 %459, -1
  store i32 %dec809, ptr %i, align 4, !tbaa !5
  %460 = load i32, ptr %j, align 4, !tbaa !5
  %sub810 = sub nsw i32 %460, 2
  store i32 %sub810, ptr %j, align 4, !tbaa !5
  %461 = load i32, ptr %i, align 4, !tbaa !5
  %cmp811 = icmp slt i32 %461, 4
  br i1 %cmp811, label %if.then813, label %if.end814

if.then813:                                       ; preds = %if.then804
  store i32 4, ptr %i, align 4, !tbaa !5
  br label %if.end814

if.end814:                                        ; preds = %if.then813, %if.then804
  %462 = load i32, ptr %j, align 4, !tbaa !5
  %cmp815 = icmp slt i32 %462, 4
  br i1 %cmp815, label %if.then817, label %if.end818

if.then817:                                       ; preds = %if.end814
  store i32 4, ptr %j, align 4, !tbaa !5
  br label %if.end818

if.end818:                                        ; preds = %if.then817, %if.end814
  br label %if.end819

if.end819:                                        ; preds = %if.end818, %if.then750
  br label %if.end820

if.end820:                                        ; preds = %if.end819, %if.then712
  br label %if.end821

if.end821:                                        ; preds = %if.end820, %if.end709
  br label %if.end822

if.end822:                                        ; preds = %if.end821, %for.body4
  br label %for.inc823

for.inc823:                                       ; preds = %if.end822
  %463 = load i32, ptr %j, align 4, !tbaa !5
  %inc824 = add nsw i32 %463, 1
  store i32 %inc824, ptr %j, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !55

for.end825:                                       ; preds = %for.cond1
  br label %for.inc826

for.inc826:                                       ; preds = %for.end825
  %464 = load i32, ptr %i, align 4, !tbaa !5
  %inc827 = add nsw i32 %464, 1
  store i32 %inc827, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !56

for.end828:                                       ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %mp) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %y) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %x) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %b) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %a) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %m) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %b22) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %b20) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %b02) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %b00) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %p4) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %p3) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %p2) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %p1) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %b10) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %b21) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %b12) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %b01) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %centre) #10
  call void @llvm.lifetime.end.p0(i64 36, ptr %l) #10
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @susan_edges(ptr noundef %in, ptr noundef %r, ptr noundef %mid, ptr noundef %bp, i32 noundef %max_no, i32 noundef %x_size, i32 noundef %y_size) #0 {
entry:
  %in.addr = alloca ptr, align 8
  %r.addr = alloca ptr, align 8
  %mid.addr = alloca ptr, align 8
  %bp.addr = alloca ptr, align 8
  %max_no.addr = alloca i32, align 4
  %x_size.addr = alloca i32, align 4
  %y_size.addr = alloca i32, align 4
  %z = alloca float, align 4
  %do_symmetry = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %m = alloca i32, align 4
  %n = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %w = alloca i32, align 4
  %c = alloca i8, align 1
  %p = alloca ptr, align 8
  %cp = alloca ptr, align 8
  store ptr %in, ptr %in.addr, align 8, !tbaa !21
  store ptr %r, ptr %r.addr, align 8, !tbaa !23
  store ptr %mid, ptr %mid.addr, align 8, !tbaa !21
  store ptr %bp, ptr %bp.addr, align 8, !tbaa !21
  store i32 %max_no, ptr %max_no.addr, align 4, !tbaa !5
  store i32 %x_size, ptr %x_size.addr, align 4, !tbaa !5
  store i32 %y_size, ptr %y_size.addr, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %z) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %do_symmetry) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %m) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %a) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %b) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %x) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %y) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %w) #10
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %cp) #10
  %0 = load ptr, ptr %r.addr, align 8, !tbaa !23
  %1 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %2 = load i32, ptr %y_size.addr, align 4, !tbaa !5
  %mul = mul nsw i32 %1, %2
  %conv = sext i32 %mul to i64
  %mul1 = mul i64 %conv, 4
  call void @llvm.memset.p0.i64(ptr align 4 %0, i8 0, i64 %mul1, i1 false)
  store i32 3, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc285, %entry
  %3 = load i32, ptr %i, align 4, !tbaa !5
  %4 = load i32, ptr %y_size.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %4, 3
  %cmp = icmp slt i32 %3, %sub
  br i1 %cmp, label %for.body, label %for.end287

for.body:                                         ; preds = %for.cond
  store i32 3, ptr %j, align 4, !tbaa !5
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %5 = load i32, ptr %j, align 4, !tbaa !5
  %6 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %sub4 = sub nsw i32 %6, 3
  %cmp5 = icmp slt i32 %5, %sub4
  br i1 %cmp5, label %for.body7, label %for.end

for.body7:                                        ; preds = %for.cond3
  store i32 100, ptr %n, align 4, !tbaa !5
  %7 = load ptr, ptr %in.addr, align 8, !tbaa !21
  %8 = load i32, ptr %i, align 4, !tbaa !5
  %sub8 = sub nsw i32 %8, 3
  %9 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul9 = mul nsw i32 %sub8, %9
  %idx.ext = sext i32 %mul9 to i64
  %add.ptr = getelementptr inbounds i8, ptr %7, i64 %idx.ext
  %10 = load i32, ptr %j, align 4, !tbaa !5
  %idx.ext10 = sext i32 %10 to i64
  %add.ptr11 = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.ext10
  %add.ptr12 = getelementptr inbounds i8, ptr %add.ptr11, i64 -1
  store ptr %add.ptr12, ptr %p, align 8, !tbaa !21
  %11 = load ptr, ptr %bp.addr, align 8, !tbaa !21
  %12 = load ptr, ptr %in.addr, align 8, !tbaa !21
  %13 = load i32, ptr %i, align 4, !tbaa !5
  %14 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul13 = mul nsw i32 %13, %14
  %15 = load i32, ptr %j, align 4, !tbaa !5
  %add = add nsw i32 %mul13, %15
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds i8, ptr %12, i64 %idxprom
  %16 = load i8, ptr %arrayidx, align 1, !tbaa !25
  %conv14 = zext i8 %16 to i32
  %idx.ext15 = sext i32 %conv14 to i64
  %add.ptr16 = getelementptr inbounds i8, ptr %11, i64 %idx.ext15
  store ptr %add.ptr16, ptr %cp, align 8, !tbaa !21
  %17 = load ptr, ptr %cp, align 8, !tbaa !21
  %18 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %18, i32 1
  store ptr %incdec.ptr, ptr %p, align 8, !tbaa !21
  %19 = load i8, ptr %18, align 1, !tbaa !25
  %conv17 = zext i8 %19 to i32
  %idx.ext18 = sext i32 %conv17 to i64
  %idx.neg = sub i64 0, %idx.ext18
  %add.ptr19 = getelementptr inbounds i8, ptr %17, i64 %idx.neg
  %20 = load i8, ptr %add.ptr19, align 1, !tbaa !25
  %conv20 = zext i8 %20 to i32
  %21 = load i32, ptr %n, align 4, !tbaa !5
  %add21 = add nsw i32 %21, %conv20
  store i32 %add21, ptr %n, align 4, !tbaa !5
  %22 = load ptr, ptr %cp, align 8, !tbaa !21
  %23 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr22 = getelementptr inbounds nuw i8, ptr %23, i32 1
  store ptr %incdec.ptr22, ptr %p, align 8, !tbaa !21
  %24 = load i8, ptr %23, align 1, !tbaa !25
  %conv23 = zext i8 %24 to i32
  %idx.ext24 = sext i32 %conv23 to i64
  %idx.neg25 = sub i64 0, %idx.ext24
  %add.ptr26 = getelementptr inbounds i8, ptr %22, i64 %idx.neg25
  %25 = load i8, ptr %add.ptr26, align 1, !tbaa !25
  %conv27 = zext i8 %25 to i32
  %26 = load i32, ptr %n, align 4, !tbaa !5
  %add28 = add nsw i32 %26, %conv27
  store i32 %add28, ptr %n, align 4, !tbaa !5
  %27 = load ptr, ptr %cp, align 8, !tbaa !21
  %28 = load ptr, ptr %p, align 8, !tbaa !21
  %29 = load i8, ptr %28, align 1, !tbaa !25
  %conv29 = zext i8 %29 to i32
  %idx.ext30 = sext i32 %conv29 to i64
  %idx.neg31 = sub i64 0, %idx.ext30
  %add.ptr32 = getelementptr inbounds i8, ptr %27, i64 %idx.neg31
  %30 = load i8, ptr %add.ptr32, align 1, !tbaa !25
  %conv33 = zext i8 %30 to i32
  %31 = load i32, ptr %n, align 4, !tbaa !5
  %add34 = add nsw i32 %31, %conv33
  store i32 %add34, ptr %n, align 4, !tbaa !5
  %32 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %sub35 = sub nsw i32 %32, 3
  %33 = load ptr, ptr %p, align 8, !tbaa !21
  %idx.ext36 = sext i32 %sub35 to i64
  %add.ptr37 = getelementptr inbounds i8, ptr %33, i64 %idx.ext36
  store ptr %add.ptr37, ptr %p, align 8, !tbaa !21
  %34 = load ptr, ptr %cp, align 8, !tbaa !21
  %35 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr38 = getelementptr inbounds nuw i8, ptr %35, i32 1
  store ptr %incdec.ptr38, ptr %p, align 8, !tbaa !21
  %36 = load i8, ptr %35, align 1, !tbaa !25
  %conv39 = zext i8 %36 to i32
  %idx.ext40 = sext i32 %conv39 to i64
  %idx.neg41 = sub i64 0, %idx.ext40
  %add.ptr42 = getelementptr inbounds i8, ptr %34, i64 %idx.neg41
  %37 = load i8, ptr %add.ptr42, align 1, !tbaa !25
  %conv43 = zext i8 %37 to i32
  %38 = load i32, ptr %n, align 4, !tbaa !5
  %add44 = add nsw i32 %38, %conv43
  store i32 %add44, ptr %n, align 4, !tbaa !5
  %39 = load ptr, ptr %cp, align 8, !tbaa !21
  %40 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr45 = getelementptr inbounds nuw i8, ptr %40, i32 1
  store ptr %incdec.ptr45, ptr %p, align 8, !tbaa !21
  %41 = load i8, ptr %40, align 1, !tbaa !25
  %conv46 = zext i8 %41 to i32
  %idx.ext47 = sext i32 %conv46 to i64
  %idx.neg48 = sub i64 0, %idx.ext47
  %add.ptr49 = getelementptr inbounds i8, ptr %39, i64 %idx.neg48
  %42 = load i8, ptr %add.ptr49, align 1, !tbaa !25
  %conv50 = zext i8 %42 to i32
  %43 = load i32, ptr %n, align 4, !tbaa !5
  %add51 = add nsw i32 %43, %conv50
  store i32 %add51, ptr %n, align 4, !tbaa !5
  %44 = load ptr, ptr %cp, align 8, !tbaa !21
  %45 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr52 = getelementptr inbounds nuw i8, ptr %45, i32 1
  store ptr %incdec.ptr52, ptr %p, align 8, !tbaa !21
  %46 = load i8, ptr %45, align 1, !tbaa !25
  %conv53 = zext i8 %46 to i32
  %idx.ext54 = sext i32 %conv53 to i64
  %idx.neg55 = sub i64 0, %idx.ext54
  %add.ptr56 = getelementptr inbounds i8, ptr %44, i64 %idx.neg55
  %47 = load i8, ptr %add.ptr56, align 1, !tbaa !25
  %conv57 = zext i8 %47 to i32
  %48 = load i32, ptr %n, align 4, !tbaa !5
  %add58 = add nsw i32 %48, %conv57
  store i32 %add58, ptr %n, align 4, !tbaa !5
  %49 = load ptr, ptr %cp, align 8, !tbaa !21
  %50 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr59 = getelementptr inbounds nuw i8, ptr %50, i32 1
  store ptr %incdec.ptr59, ptr %p, align 8, !tbaa !21
  %51 = load i8, ptr %50, align 1, !tbaa !25
  %conv60 = zext i8 %51 to i32
  %idx.ext61 = sext i32 %conv60 to i64
  %idx.neg62 = sub i64 0, %idx.ext61
  %add.ptr63 = getelementptr inbounds i8, ptr %49, i64 %idx.neg62
  %52 = load i8, ptr %add.ptr63, align 1, !tbaa !25
  %conv64 = zext i8 %52 to i32
  %53 = load i32, ptr %n, align 4, !tbaa !5
  %add65 = add nsw i32 %53, %conv64
  store i32 %add65, ptr %n, align 4, !tbaa !5
  %54 = load ptr, ptr %cp, align 8, !tbaa !21
  %55 = load ptr, ptr %p, align 8, !tbaa !21
  %56 = load i8, ptr %55, align 1, !tbaa !25
  %conv66 = zext i8 %56 to i32
  %idx.ext67 = sext i32 %conv66 to i64
  %idx.neg68 = sub i64 0, %idx.ext67
  %add.ptr69 = getelementptr inbounds i8, ptr %54, i64 %idx.neg68
  %57 = load i8, ptr %add.ptr69, align 1, !tbaa !25
  %conv70 = zext i8 %57 to i32
  %58 = load i32, ptr %n, align 4, !tbaa !5
  %add71 = add nsw i32 %58, %conv70
  store i32 %add71, ptr %n, align 4, !tbaa !5
  %59 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %sub72 = sub nsw i32 %59, 5
  %60 = load ptr, ptr %p, align 8, !tbaa !21
  %idx.ext73 = sext i32 %sub72 to i64
  %add.ptr74 = getelementptr inbounds i8, ptr %60, i64 %idx.ext73
  store ptr %add.ptr74, ptr %p, align 8, !tbaa !21
  %61 = load ptr, ptr %cp, align 8, !tbaa !21
  %62 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr75 = getelementptr inbounds nuw i8, ptr %62, i32 1
  store ptr %incdec.ptr75, ptr %p, align 8, !tbaa !21
  %63 = load i8, ptr %62, align 1, !tbaa !25
  %conv76 = zext i8 %63 to i32
  %idx.ext77 = sext i32 %conv76 to i64
  %idx.neg78 = sub i64 0, %idx.ext77
  %add.ptr79 = getelementptr inbounds i8, ptr %61, i64 %idx.neg78
  %64 = load i8, ptr %add.ptr79, align 1, !tbaa !25
  %conv80 = zext i8 %64 to i32
  %65 = load i32, ptr %n, align 4, !tbaa !5
  %add81 = add nsw i32 %65, %conv80
  store i32 %add81, ptr %n, align 4, !tbaa !5
  %66 = load ptr, ptr %cp, align 8, !tbaa !21
  %67 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr82 = getelementptr inbounds nuw i8, ptr %67, i32 1
  store ptr %incdec.ptr82, ptr %p, align 8, !tbaa !21
  %68 = load i8, ptr %67, align 1, !tbaa !25
  %conv83 = zext i8 %68 to i32
  %idx.ext84 = sext i32 %conv83 to i64
  %idx.neg85 = sub i64 0, %idx.ext84
  %add.ptr86 = getelementptr inbounds i8, ptr %66, i64 %idx.neg85
  %69 = load i8, ptr %add.ptr86, align 1, !tbaa !25
  %conv87 = zext i8 %69 to i32
  %70 = load i32, ptr %n, align 4, !tbaa !5
  %add88 = add nsw i32 %70, %conv87
  store i32 %add88, ptr %n, align 4, !tbaa !5
  %71 = load ptr, ptr %cp, align 8, !tbaa !21
  %72 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr89 = getelementptr inbounds nuw i8, ptr %72, i32 1
  store ptr %incdec.ptr89, ptr %p, align 8, !tbaa !21
  %73 = load i8, ptr %72, align 1, !tbaa !25
  %conv90 = zext i8 %73 to i32
  %idx.ext91 = sext i32 %conv90 to i64
  %idx.neg92 = sub i64 0, %idx.ext91
  %add.ptr93 = getelementptr inbounds i8, ptr %71, i64 %idx.neg92
  %74 = load i8, ptr %add.ptr93, align 1, !tbaa !25
  %conv94 = zext i8 %74 to i32
  %75 = load i32, ptr %n, align 4, !tbaa !5
  %add95 = add nsw i32 %75, %conv94
  store i32 %add95, ptr %n, align 4, !tbaa !5
  %76 = load ptr, ptr %cp, align 8, !tbaa !21
  %77 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr96 = getelementptr inbounds nuw i8, ptr %77, i32 1
  store ptr %incdec.ptr96, ptr %p, align 8, !tbaa !21
  %78 = load i8, ptr %77, align 1, !tbaa !25
  %conv97 = zext i8 %78 to i32
  %idx.ext98 = sext i32 %conv97 to i64
  %idx.neg99 = sub i64 0, %idx.ext98
  %add.ptr100 = getelementptr inbounds i8, ptr %76, i64 %idx.neg99
  %79 = load i8, ptr %add.ptr100, align 1, !tbaa !25
  %conv101 = zext i8 %79 to i32
  %80 = load i32, ptr %n, align 4, !tbaa !5
  %add102 = add nsw i32 %80, %conv101
  store i32 %add102, ptr %n, align 4, !tbaa !5
  %81 = load ptr, ptr %cp, align 8, !tbaa !21
  %82 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr103 = getelementptr inbounds nuw i8, ptr %82, i32 1
  store ptr %incdec.ptr103, ptr %p, align 8, !tbaa !21
  %83 = load i8, ptr %82, align 1, !tbaa !25
  %conv104 = zext i8 %83 to i32
  %idx.ext105 = sext i32 %conv104 to i64
  %idx.neg106 = sub i64 0, %idx.ext105
  %add.ptr107 = getelementptr inbounds i8, ptr %81, i64 %idx.neg106
  %84 = load i8, ptr %add.ptr107, align 1, !tbaa !25
  %conv108 = zext i8 %84 to i32
  %85 = load i32, ptr %n, align 4, !tbaa !5
  %add109 = add nsw i32 %85, %conv108
  store i32 %add109, ptr %n, align 4, !tbaa !5
  %86 = load ptr, ptr %cp, align 8, !tbaa !21
  %87 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr110 = getelementptr inbounds nuw i8, ptr %87, i32 1
  store ptr %incdec.ptr110, ptr %p, align 8, !tbaa !21
  %88 = load i8, ptr %87, align 1, !tbaa !25
  %conv111 = zext i8 %88 to i32
  %idx.ext112 = sext i32 %conv111 to i64
  %idx.neg113 = sub i64 0, %idx.ext112
  %add.ptr114 = getelementptr inbounds i8, ptr %86, i64 %idx.neg113
  %89 = load i8, ptr %add.ptr114, align 1, !tbaa !25
  %conv115 = zext i8 %89 to i32
  %90 = load i32, ptr %n, align 4, !tbaa !5
  %add116 = add nsw i32 %90, %conv115
  store i32 %add116, ptr %n, align 4, !tbaa !5
  %91 = load ptr, ptr %cp, align 8, !tbaa !21
  %92 = load ptr, ptr %p, align 8, !tbaa !21
  %93 = load i8, ptr %92, align 1, !tbaa !25
  %conv117 = zext i8 %93 to i32
  %idx.ext118 = sext i32 %conv117 to i64
  %idx.neg119 = sub i64 0, %idx.ext118
  %add.ptr120 = getelementptr inbounds i8, ptr %91, i64 %idx.neg119
  %94 = load i8, ptr %add.ptr120, align 1, !tbaa !25
  %conv121 = zext i8 %94 to i32
  %95 = load i32, ptr %n, align 4, !tbaa !5
  %add122 = add nsw i32 %95, %conv121
  store i32 %add122, ptr %n, align 4, !tbaa !5
  %96 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %sub123 = sub nsw i32 %96, 6
  %97 = load ptr, ptr %p, align 8, !tbaa !21
  %idx.ext124 = sext i32 %sub123 to i64
  %add.ptr125 = getelementptr inbounds i8, ptr %97, i64 %idx.ext124
  store ptr %add.ptr125, ptr %p, align 8, !tbaa !21
  %98 = load ptr, ptr %cp, align 8, !tbaa !21
  %99 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr126 = getelementptr inbounds nuw i8, ptr %99, i32 1
  store ptr %incdec.ptr126, ptr %p, align 8, !tbaa !21
  %100 = load i8, ptr %99, align 1, !tbaa !25
  %conv127 = zext i8 %100 to i32
  %idx.ext128 = sext i32 %conv127 to i64
  %idx.neg129 = sub i64 0, %idx.ext128
  %add.ptr130 = getelementptr inbounds i8, ptr %98, i64 %idx.neg129
  %101 = load i8, ptr %add.ptr130, align 1, !tbaa !25
  %conv131 = zext i8 %101 to i32
  %102 = load i32, ptr %n, align 4, !tbaa !5
  %add132 = add nsw i32 %102, %conv131
  store i32 %add132, ptr %n, align 4, !tbaa !5
  %103 = load ptr, ptr %cp, align 8, !tbaa !21
  %104 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr133 = getelementptr inbounds nuw i8, ptr %104, i32 1
  store ptr %incdec.ptr133, ptr %p, align 8, !tbaa !21
  %105 = load i8, ptr %104, align 1, !tbaa !25
  %conv134 = zext i8 %105 to i32
  %idx.ext135 = sext i32 %conv134 to i64
  %idx.neg136 = sub i64 0, %idx.ext135
  %add.ptr137 = getelementptr inbounds i8, ptr %103, i64 %idx.neg136
  %106 = load i8, ptr %add.ptr137, align 1, !tbaa !25
  %conv138 = zext i8 %106 to i32
  %107 = load i32, ptr %n, align 4, !tbaa !5
  %add139 = add nsw i32 %107, %conv138
  store i32 %add139, ptr %n, align 4, !tbaa !5
  %108 = load ptr, ptr %cp, align 8, !tbaa !21
  %109 = load ptr, ptr %p, align 8, !tbaa !21
  %110 = load i8, ptr %109, align 1, !tbaa !25
  %conv140 = zext i8 %110 to i32
  %idx.ext141 = sext i32 %conv140 to i64
  %idx.neg142 = sub i64 0, %idx.ext141
  %add.ptr143 = getelementptr inbounds i8, ptr %108, i64 %idx.neg142
  %111 = load i8, ptr %add.ptr143, align 1, !tbaa !25
  %conv144 = zext i8 %111 to i32
  %112 = load i32, ptr %n, align 4, !tbaa !5
  %add145 = add nsw i32 %112, %conv144
  store i32 %add145, ptr %n, align 4, !tbaa !5
  %113 = load ptr, ptr %p, align 8, !tbaa !21
  %add.ptr146 = getelementptr inbounds i8, ptr %113, i64 2
  store ptr %add.ptr146, ptr %p, align 8, !tbaa !21
  %114 = load ptr, ptr %cp, align 8, !tbaa !21
  %115 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr147 = getelementptr inbounds nuw i8, ptr %115, i32 1
  store ptr %incdec.ptr147, ptr %p, align 8, !tbaa !21
  %116 = load i8, ptr %115, align 1, !tbaa !25
  %conv148 = zext i8 %116 to i32
  %idx.ext149 = sext i32 %conv148 to i64
  %idx.neg150 = sub i64 0, %idx.ext149
  %add.ptr151 = getelementptr inbounds i8, ptr %114, i64 %idx.neg150
  %117 = load i8, ptr %add.ptr151, align 1, !tbaa !25
  %conv152 = zext i8 %117 to i32
  %118 = load i32, ptr %n, align 4, !tbaa !5
  %add153 = add nsw i32 %118, %conv152
  store i32 %add153, ptr %n, align 4, !tbaa !5
  %119 = load ptr, ptr %cp, align 8, !tbaa !21
  %120 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr154 = getelementptr inbounds nuw i8, ptr %120, i32 1
  store ptr %incdec.ptr154, ptr %p, align 8, !tbaa !21
  %121 = load i8, ptr %120, align 1, !tbaa !25
  %conv155 = zext i8 %121 to i32
  %idx.ext156 = sext i32 %conv155 to i64
  %idx.neg157 = sub i64 0, %idx.ext156
  %add.ptr158 = getelementptr inbounds i8, ptr %119, i64 %idx.neg157
  %122 = load i8, ptr %add.ptr158, align 1, !tbaa !25
  %conv159 = zext i8 %122 to i32
  %123 = load i32, ptr %n, align 4, !tbaa !5
  %add160 = add nsw i32 %123, %conv159
  store i32 %add160, ptr %n, align 4, !tbaa !5
  %124 = load ptr, ptr %cp, align 8, !tbaa !21
  %125 = load ptr, ptr %p, align 8, !tbaa !21
  %126 = load i8, ptr %125, align 1, !tbaa !25
  %conv161 = zext i8 %126 to i32
  %idx.ext162 = sext i32 %conv161 to i64
  %idx.neg163 = sub i64 0, %idx.ext162
  %add.ptr164 = getelementptr inbounds i8, ptr %124, i64 %idx.neg163
  %127 = load i8, ptr %add.ptr164, align 1, !tbaa !25
  %conv165 = zext i8 %127 to i32
  %128 = load i32, ptr %n, align 4, !tbaa !5
  %add166 = add nsw i32 %128, %conv165
  store i32 %add166, ptr %n, align 4, !tbaa !5
  %129 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %sub167 = sub nsw i32 %129, 6
  %130 = load ptr, ptr %p, align 8, !tbaa !21
  %idx.ext168 = sext i32 %sub167 to i64
  %add.ptr169 = getelementptr inbounds i8, ptr %130, i64 %idx.ext168
  store ptr %add.ptr169, ptr %p, align 8, !tbaa !21
  %131 = load ptr, ptr %cp, align 8, !tbaa !21
  %132 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr170 = getelementptr inbounds nuw i8, ptr %132, i32 1
  store ptr %incdec.ptr170, ptr %p, align 8, !tbaa !21
  %133 = load i8, ptr %132, align 1, !tbaa !25
  %conv171 = zext i8 %133 to i32
  %idx.ext172 = sext i32 %conv171 to i64
  %idx.neg173 = sub i64 0, %idx.ext172
  %add.ptr174 = getelementptr inbounds i8, ptr %131, i64 %idx.neg173
  %134 = load i8, ptr %add.ptr174, align 1, !tbaa !25
  %conv175 = zext i8 %134 to i32
  %135 = load i32, ptr %n, align 4, !tbaa !5
  %add176 = add nsw i32 %135, %conv175
  store i32 %add176, ptr %n, align 4, !tbaa !5
  %136 = load ptr, ptr %cp, align 8, !tbaa !21
  %137 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr177 = getelementptr inbounds nuw i8, ptr %137, i32 1
  store ptr %incdec.ptr177, ptr %p, align 8, !tbaa !21
  %138 = load i8, ptr %137, align 1, !tbaa !25
  %conv178 = zext i8 %138 to i32
  %idx.ext179 = sext i32 %conv178 to i64
  %idx.neg180 = sub i64 0, %idx.ext179
  %add.ptr181 = getelementptr inbounds i8, ptr %136, i64 %idx.neg180
  %139 = load i8, ptr %add.ptr181, align 1, !tbaa !25
  %conv182 = zext i8 %139 to i32
  %140 = load i32, ptr %n, align 4, !tbaa !5
  %add183 = add nsw i32 %140, %conv182
  store i32 %add183, ptr %n, align 4, !tbaa !5
  %141 = load ptr, ptr %cp, align 8, !tbaa !21
  %142 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr184 = getelementptr inbounds nuw i8, ptr %142, i32 1
  store ptr %incdec.ptr184, ptr %p, align 8, !tbaa !21
  %143 = load i8, ptr %142, align 1, !tbaa !25
  %conv185 = zext i8 %143 to i32
  %idx.ext186 = sext i32 %conv185 to i64
  %idx.neg187 = sub i64 0, %idx.ext186
  %add.ptr188 = getelementptr inbounds i8, ptr %141, i64 %idx.neg187
  %144 = load i8, ptr %add.ptr188, align 1, !tbaa !25
  %conv189 = zext i8 %144 to i32
  %145 = load i32, ptr %n, align 4, !tbaa !5
  %add190 = add nsw i32 %145, %conv189
  store i32 %add190, ptr %n, align 4, !tbaa !5
  %146 = load ptr, ptr %cp, align 8, !tbaa !21
  %147 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr191 = getelementptr inbounds nuw i8, ptr %147, i32 1
  store ptr %incdec.ptr191, ptr %p, align 8, !tbaa !21
  %148 = load i8, ptr %147, align 1, !tbaa !25
  %conv192 = zext i8 %148 to i32
  %idx.ext193 = sext i32 %conv192 to i64
  %idx.neg194 = sub i64 0, %idx.ext193
  %add.ptr195 = getelementptr inbounds i8, ptr %146, i64 %idx.neg194
  %149 = load i8, ptr %add.ptr195, align 1, !tbaa !25
  %conv196 = zext i8 %149 to i32
  %150 = load i32, ptr %n, align 4, !tbaa !5
  %add197 = add nsw i32 %150, %conv196
  store i32 %add197, ptr %n, align 4, !tbaa !5
  %151 = load ptr, ptr %cp, align 8, !tbaa !21
  %152 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr198 = getelementptr inbounds nuw i8, ptr %152, i32 1
  store ptr %incdec.ptr198, ptr %p, align 8, !tbaa !21
  %153 = load i8, ptr %152, align 1, !tbaa !25
  %conv199 = zext i8 %153 to i32
  %idx.ext200 = sext i32 %conv199 to i64
  %idx.neg201 = sub i64 0, %idx.ext200
  %add.ptr202 = getelementptr inbounds i8, ptr %151, i64 %idx.neg201
  %154 = load i8, ptr %add.ptr202, align 1, !tbaa !25
  %conv203 = zext i8 %154 to i32
  %155 = load i32, ptr %n, align 4, !tbaa !5
  %add204 = add nsw i32 %155, %conv203
  store i32 %add204, ptr %n, align 4, !tbaa !5
  %156 = load ptr, ptr %cp, align 8, !tbaa !21
  %157 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr205 = getelementptr inbounds nuw i8, ptr %157, i32 1
  store ptr %incdec.ptr205, ptr %p, align 8, !tbaa !21
  %158 = load i8, ptr %157, align 1, !tbaa !25
  %conv206 = zext i8 %158 to i32
  %idx.ext207 = sext i32 %conv206 to i64
  %idx.neg208 = sub i64 0, %idx.ext207
  %add.ptr209 = getelementptr inbounds i8, ptr %156, i64 %idx.neg208
  %159 = load i8, ptr %add.ptr209, align 1, !tbaa !25
  %conv210 = zext i8 %159 to i32
  %160 = load i32, ptr %n, align 4, !tbaa !5
  %add211 = add nsw i32 %160, %conv210
  store i32 %add211, ptr %n, align 4, !tbaa !5
  %161 = load ptr, ptr %cp, align 8, !tbaa !21
  %162 = load ptr, ptr %p, align 8, !tbaa !21
  %163 = load i8, ptr %162, align 1, !tbaa !25
  %conv212 = zext i8 %163 to i32
  %idx.ext213 = sext i32 %conv212 to i64
  %idx.neg214 = sub i64 0, %idx.ext213
  %add.ptr215 = getelementptr inbounds i8, ptr %161, i64 %idx.neg214
  %164 = load i8, ptr %add.ptr215, align 1, !tbaa !25
  %conv216 = zext i8 %164 to i32
  %165 = load i32, ptr %n, align 4, !tbaa !5
  %add217 = add nsw i32 %165, %conv216
  store i32 %add217, ptr %n, align 4, !tbaa !5
  %166 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %sub218 = sub nsw i32 %166, 5
  %167 = load ptr, ptr %p, align 8, !tbaa !21
  %idx.ext219 = sext i32 %sub218 to i64
  %add.ptr220 = getelementptr inbounds i8, ptr %167, i64 %idx.ext219
  store ptr %add.ptr220, ptr %p, align 8, !tbaa !21
  %168 = load ptr, ptr %cp, align 8, !tbaa !21
  %169 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr221 = getelementptr inbounds nuw i8, ptr %169, i32 1
  store ptr %incdec.ptr221, ptr %p, align 8, !tbaa !21
  %170 = load i8, ptr %169, align 1, !tbaa !25
  %conv222 = zext i8 %170 to i32
  %idx.ext223 = sext i32 %conv222 to i64
  %idx.neg224 = sub i64 0, %idx.ext223
  %add.ptr225 = getelementptr inbounds i8, ptr %168, i64 %idx.neg224
  %171 = load i8, ptr %add.ptr225, align 1, !tbaa !25
  %conv226 = zext i8 %171 to i32
  %172 = load i32, ptr %n, align 4, !tbaa !5
  %add227 = add nsw i32 %172, %conv226
  store i32 %add227, ptr %n, align 4, !tbaa !5
  %173 = load ptr, ptr %cp, align 8, !tbaa !21
  %174 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr228 = getelementptr inbounds nuw i8, ptr %174, i32 1
  store ptr %incdec.ptr228, ptr %p, align 8, !tbaa !21
  %175 = load i8, ptr %174, align 1, !tbaa !25
  %conv229 = zext i8 %175 to i32
  %idx.ext230 = sext i32 %conv229 to i64
  %idx.neg231 = sub i64 0, %idx.ext230
  %add.ptr232 = getelementptr inbounds i8, ptr %173, i64 %idx.neg231
  %176 = load i8, ptr %add.ptr232, align 1, !tbaa !25
  %conv233 = zext i8 %176 to i32
  %177 = load i32, ptr %n, align 4, !tbaa !5
  %add234 = add nsw i32 %177, %conv233
  store i32 %add234, ptr %n, align 4, !tbaa !5
  %178 = load ptr, ptr %cp, align 8, !tbaa !21
  %179 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr235 = getelementptr inbounds nuw i8, ptr %179, i32 1
  store ptr %incdec.ptr235, ptr %p, align 8, !tbaa !21
  %180 = load i8, ptr %179, align 1, !tbaa !25
  %conv236 = zext i8 %180 to i32
  %idx.ext237 = sext i32 %conv236 to i64
  %idx.neg238 = sub i64 0, %idx.ext237
  %add.ptr239 = getelementptr inbounds i8, ptr %178, i64 %idx.neg238
  %181 = load i8, ptr %add.ptr239, align 1, !tbaa !25
  %conv240 = zext i8 %181 to i32
  %182 = load i32, ptr %n, align 4, !tbaa !5
  %add241 = add nsw i32 %182, %conv240
  store i32 %add241, ptr %n, align 4, !tbaa !5
  %183 = load ptr, ptr %cp, align 8, !tbaa !21
  %184 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr242 = getelementptr inbounds nuw i8, ptr %184, i32 1
  store ptr %incdec.ptr242, ptr %p, align 8, !tbaa !21
  %185 = load i8, ptr %184, align 1, !tbaa !25
  %conv243 = zext i8 %185 to i32
  %idx.ext244 = sext i32 %conv243 to i64
  %idx.neg245 = sub i64 0, %idx.ext244
  %add.ptr246 = getelementptr inbounds i8, ptr %183, i64 %idx.neg245
  %186 = load i8, ptr %add.ptr246, align 1, !tbaa !25
  %conv247 = zext i8 %186 to i32
  %187 = load i32, ptr %n, align 4, !tbaa !5
  %add248 = add nsw i32 %187, %conv247
  store i32 %add248, ptr %n, align 4, !tbaa !5
  %188 = load ptr, ptr %cp, align 8, !tbaa !21
  %189 = load ptr, ptr %p, align 8, !tbaa !21
  %190 = load i8, ptr %189, align 1, !tbaa !25
  %conv249 = zext i8 %190 to i32
  %idx.ext250 = sext i32 %conv249 to i64
  %idx.neg251 = sub i64 0, %idx.ext250
  %add.ptr252 = getelementptr inbounds i8, ptr %188, i64 %idx.neg251
  %191 = load i8, ptr %add.ptr252, align 1, !tbaa !25
  %conv253 = zext i8 %191 to i32
  %192 = load i32, ptr %n, align 4, !tbaa !5
  %add254 = add nsw i32 %192, %conv253
  store i32 %add254, ptr %n, align 4, !tbaa !5
  %193 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %sub255 = sub nsw i32 %193, 3
  %194 = load ptr, ptr %p, align 8, !tbaa !21
  %idx.ext256 = sext i32 %sub255 to i64
  %add.ptr257 = getelementptr inbounds i8, ptr %194, i64 %idx.ext256
  store ptr %add.ptr257, ptr %p, align 8, !tbaa !21
  %195 = load ptr, ptr %cp, align 8, !tbaa !21
  %196 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr258 = getelementptr inbounds nuw i8, ptr %196, i32 1
  store ptr %incdec.ptr258, ptr %p, align 8, !tbaa !21
  %197 = load i8, ptr %196, align 1, !tbaa !25
  %conv259 = zext i8 %197 to i32
  %idx.ext260 = sext i32 %conv259 to i64
  %idx.neg261 = sub i64 0, %idx.ext260
  %add.ptr262 = getelementptr inbounds i8, ptr %195, i64 %idx.neg261
  %198 = load i8, ptr %add.ptr262, align 1, !tbaa !25
  %conv263 = zext i8 %198 to i32
  %199 = load i32, ptr %n, align 4, !tbaa !5
  %add264 = add nsw i32 %199, %conv263
  store i32 %add264, ptr %n, align 4, !tbaa !5
  %200 = load ptr, ptr %cp, align 8, !tbaa !21
  %201 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr265 = getelementptr inbounds nuw i8, ptr %201, i32 1
  store ptr %incdec.ptr265, ptr %p, align 8, !tbaa !21
  %202 = load i8, ptr %201, align 1, !tbaa !25
  %conv266 = zext i8 %202 to i32
  %idx.ext267 = sext i32 %conv266 to i64
  %idx.neg268 = sub i64 0, %idx.ext267
  %add.ptr269 = getelementptr inbounds i8, ptr %200, i64 %idx.neg268
  %203 = load i8, ptr %add.ptr269, align 1, !tbaa !25
  %conv270 = zext i8 %203 to i32
  %204 = load i32, ptr %n, align 4, !tbaa !5
  %add271 = add nsw i32 %204, %conv270
  store i32 %add271, ptr %n, align 4, !tbaa !5
  %205 = load ptr, ptr %cp, align 8, !tbaa !21
  %206 = load ptr, ptr %p, align 8, !tbaa !21
  %207 = load i8, ptr %206, align 1, !tbaa !25
  %conv272 = zext i8 %207 to i32
  %idx.ext273 = sext i32 %conv272 to i64
  %idx.neg274 = sub i64 0, %idx.ext273
  %add.ptr275 = getelementptr inbounds i8, ptr %205, i64 %idx.neg274
  %208 = load i8, ptr %add.ptr275, align 1, !tbaa !25
  %conv276 = zext i8 %208 to i32
  %209 = load i32, ptr %n, align 4, !tbaa !5
  %add277 = add nsw i32 %209, %conv276
  store i32 %add277, ptr %n, align 4, !tbaa !5
  %210 = load i32, ptr %n, align 4, !tbaa !5
  %211 = load i32, ptr %max_no.addr, align 4, !tbaa !5
  %cmp278 = icmp sle i32 %210, %211
  br i1 %cmp278, label %if.then, label %if.end

if.then:                                          ; preds = %for.body7
  %212 = load i32, ptr %max_no.addr, align 4, !tbaa !5
  %213 = load i32, ptr %n, align 4, !tbaa !5
  %sub280 = sub nsw i32 %212, %213
  %214 = load ptr, ptr %r.addr, align 8, !tbaa !23
  %215 = load i32, ptr %i, align 4, !tbaa !5
  %216 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul281 = mul nsw i32 %215, %216
  %217 = load i32, ptr %j, align 4, !tbaa !5
  %add282 = add nsw i32 %mul281, %217
  %idxprom283 = sext i32 %add282 to i64
  %arrayidx284 = getelementptr inbounds i32, ptr %214, i64 %idxprom283
  store i32 %sub280, ptr %arrayidx284, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body7
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %218 = load i32, ptr %j, align 4, !tbaa !5
  %inc = add nsw i32 %218, 1
  store i32 %inc, ptr %j, align 4, !tbaa !5
  br label %for.cond3, !llvm.loop !57

for.end:                                          ; preds = %for.cond3
  br label %for.inc285

for.inc285:                                       ; preds = %for.end
  %219 = load i32, ptr %i, align 4, !tbaa !5
  %inc286 = add nsw i32 %219, 1
  store i32 %inc286, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !58

for.end287:                                       ; preds = %for.cond
  store i32 4, ptr %i, align 4, !tbaa !5
  br label %for.cond288

for.cond288:                                      ; preds = %for.inc1255, %for.end287
  %220 = load i32, ptr %i, align 4, !tbaa !5
  %221 = load i32, ptr %y_size.addr, align 4, !tbaa !5
  %sub289 = sub nsw i32 %221, 4
  %cmp290 = icmp slt i32 %220, %sub289
  br i1 %cmp290, label %for.body292, label %for.end1257

for.body292:                                      ; preds = %for.cond288
  store i32 4, ptr %j, align 4, !tbaa !5
  br label %for.cond293

for.cond293:                                      ; preds = %for.inc1252, %for.body292
  %222 = load i32, ptr %j, align 4, !tbaa !5
  %223 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %sub294 = sub nsw i32 %223, 4
  %cmp295 = icmp slt i32 %222, %sub294
  br i1 %cmp295, label %for.body297, label %for.end1254

for.body297:                                      ; preds = %for.cond293
  %224 = load ptr, ptr %r.addr, align 8, !tbaa !23
  %225 = load i32, ptr %i, align 4, !tbaa !5
  %226 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul298 = mul nsw i32 %225, %226
  %227 = load i32, ptr %j, align 4, !tbaa !5
  %add299 = add nsw i32 %mul298, %227
  %idxprom300 = sext i32 %add299 to i64
  %arrayidx301 = getelementptr inbounds i32, ptr %224, i64 %idxprom300
  %228 = load i32, ptr %arrayidx301, align 4, !tbaa !5
  %cmp302 = icmp sgt i32 %228, 0
  br i1 %cmp302, label %if.then304, label %if.end1251

if.then304:                                       ; preds = %for.body297
  %229 = load ptr, ptr %r.addr, align 8, !tbaa !23
  %230 = load i32, ptr %i, align 4, !tbaa !5
  %231 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul305 = mul nsw i32 %230, %231
  %232 = load i32, ptr %j, align 4, !tbaa !5
  %add306 = add nsw i32 %mul305, %232
  %idxprom307 = sext i32 %add306 to i64
  %arrayidx308 = getelementptr inbounds i32, ptr %229, i64 %idxprom307
  %233 = load i32, ptr %arrayidx308, align 4, !tbaa !5
  store i32 %233, ptr %m, align 4, !tbaa !5
  %234 = load i32, ptr %max_no.addr, align 4, !tbaa !5
  %235 = load i32, ptr %m, align 4, !tbaa !5
  %sub309 = sub nsw i32 %234, %235
  store i32 %sub309, ptr %n, align 4, !tbaa !5
  %236 = load ptr, ptr %bp.addr, align 8, !tbaa !21
  %237 = load ptr, ptr %in.addr, align 8, !tbaa !21
  %238 = load i32, ptr %i, align 4, !tbaa !5
  %239 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul310 = mul nsw i32 %238, %239
  %240 = load i32, ptr %j, align 4, !tbaa !5
  %add311 = add nsw i32 %mul310, %240
  %idxprom312 = sext i32 %add311 to i64
  %arrayidx313 = getelementptr inbounds i8, ptr %237, i64 %idxprom312
  %241 = load i8, ptr %arrayidx313, align 1, !tbaa !25
  %conv314 = zext i8 %241 to i32
  %idx.ext315 = sext i32 %conv314 to i64
  %add.ptr316 = getelementptr inbounds i8, ptr %236, i64 %idx.ext315
  store ptr %add.ptr316, ptr %cp, align 8, !tbaa !21
  %242 = load i32, ptr %n, align 4, !tbaa !5
  %cmp317 = icmp sgt i32 %242, 600
  br i1 %cmp317, label %if.then319, label %if.else757

if.then319:                                       ; preds = %if.then304
  %243 = load ptr, ptr %in.addr, align 8, !tbaa !21
  %244 = load i32, ptr %i, align 4, !tbaa !5
  %sub320 = sub nsw i32 %244, 3
  %245 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul321 = mul nsw i32 %sub320, %245
  %idx.ext322 = sext i32 %mul321 to i64
  %add.ptr323 = getelementptr inbounds i8, ptr %243, i64 %idx.ext322
  %246 = load i32, ptr %j, align 4, !tbaa !5
  %idx.ext324 = sext i32 %246 to i64
  %add.ptr325 = getelementptr inbounds i8, ptr %add.ptr323, i64 %idx.ext324
  %add.ptr326 = getelementptr inbounds i8, ptr %add.ptr325, i64 -1
  store ptr %add.ptr326, ptr %p, align 8, !tbaa !21
  store i32 0, ptr %x, align 4, !tbaa !5
  store i32 0, ptr %y, align 4, !tbaa !5
  %247 = load ptr, ptr %cp, align 8, !tbaa !21
  %248 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr327 = getelementptr inbounds nuw i8, ptr %248, i32 1
  store ptr %incdec.ptr327, ptr %p, align 8, !tbaa !21
  %249 = load i8, ptr %248, align 1, !tbaa !25
  %conv328 = zext i8 %249 to i32
  %idx.ext329 = sext i32 %conv328 to i64
  %idx.neg330 = sub i64 0, %idx.ext329
  %add.ptr331 = getelementptr inbounds i8, ptr %247, i64 %idx.neg330
  %250 = load i8, ptr %add.ptr331, align 1, !tbaa !25
  store i8 %250, ptr %c, align 1, !tbaa !25
  %251 = load i8, ptr %c, align 1, !tbaa !25
  %conv332 = zext i8 %251 to i32
  %252 = load i32, ptr %x, align 4, !tbaa !5
  %sub333 = sub nsw i32 %252, %conv332
  store i32 %sub333, ptr %x, align 4, !tbaa !5
  %253 = load i8, ptr %c, align 1, !tbaa !25
  %conv334 = zext i8 %253 to i32
  %mul335 = mul nsw i32 3, %conv334
  %254 = load i32, ptr %y, align 4, !tbaa !5
  %sub336 = sub nsw i32 %254, %mul335
  store i32 %sub336, ptr %y, align 4, !tbaa !5
  %255 = load ptr, ptr %cp, align 8, !tbaa !21
  %256 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr337 = getelementptr inbounds nuw i8, ptr %256, i32 1
  store ptr %incdec.ptr337, ptr %p, align 8, !tbaa !21
  %257 = load i8, ptr %256, align 1, !tbaa !25
  %conv338 = zext i8 %257 to i32
  %idx.ext339 = sext i32 %conv338 to i64
  %idx.neg340 = sub i64 0, %idx.ext339
  %add.ptr341 = getelementptr inbounds i8, ptr %255, i64 %idx.neg340
  %258 = load i8, ptr %add.ptr341, align 1, !tbaa !25
  store i8 %258, ptr %c, align 1, !tbaa !25
  %259 = load i8, ptr %c, align 1, !tbaa !25
  %conv342 = zext i8 %259 to i32
  %mul343 = mul nsw i32 3, %conv342
  %260 = load i32, ptr %y, align 4, !tbaa !5
  %sub344 = sub nsw i32 %260, %mul343
  store i32 %sub344, ptr %y, align 4, !tbaa !5
  %261 = load ptr, ptr %cp, align 8, !tbaa !21
  %262 = load ptr, ptr %p, align 8, !tbaa !21
  %263 = load i8, ptr %262, align 1, !tbaa !25
  %conv345 = zext i8 %263 to i32
  %idx.ext346 = sext i32 %conv345 to i64
  %idx.neg347 = sub i64 0, %idx.ext346
  %add.ptr348 = getelementptr inbounds i8, ptr %261, i64 %idx.neg347
  %264 = load i8, ptr %add.ptr348, align 1, !tbaa !25
  store i8 %264, ptr %c, align 1, !tbaa !25
  %265 = load i8, ptr %c, align 1, !tbaa !25
  %conv349 = zext i8 %265 to i32
  %266 = load i32, ptr %x, align 4, !tbaa !5
  %add350 = add nsw i32 %266, %conv349
  store i32 %add350, ptr %x, align 4, !tbaa !5
  %267 = load i8, ptr %c, align 1, !tbaa !25
  %conv351 = zext i8 %267 to i32
  %mul352 = mul nsw i32 3, %conv351
  %268 = load i32, ptr %y, align 4, !tbaa !5
  %sub353 = sub nsw i32 %268, %mul352
  store i32 %sub353, ptr %y, align 4, !tbaa !5
  %269 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %sub354 = sub nsw i32 %269, 3
  %270 = load ptr, ptr %p, align 8, !tbaa !21
  %idx.ext355 = sext i32 %sub354 to i64
  %add.ptr356 = getelementptr inbounds i8, ptr %270, i64 %idx.ext355
  store ptr %add.ptr356, ptr %p, align 8, !tbaa !21
  %271 = load ptr, ptr %cp, align 8, !tbaa !21
  %272 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr357 = getelementptr inbounds nuw i8, ptr %272, i32 1
  store ptr %incdec.ptr357, ptr %p, align 8, !tbaa !21
  %273 = load i8, ptr %272, align 1, !tbaa !25
  %conv358 = zext i8 %273 to i32
  %idx.ext359 = sext i32 %conv358 to i64
  %idx.neg360 = sub i64 0, %idx.ext359
  %add.ptr361 = getelementptr inbounds i8, ptr %271, i64 %idx.neg360
  %274 = load i8, ptr %add.ptr361, align 1, !tbaa !25
  store i8 %274, ptr %c, align 1, !tbaa !25
  %275 = load i8, ptr %c, align 1, !tbaa !25
  %conv362 = zext i8 %275 to i32
  %mul363 = mul nsw i32 2, %conv362
  %276 = load i32, ptr %x, align 4, !tbaa !5
  %sub364 = sub nsw i32 %276, %mul363
  store i32 %sub364, ptr %x, align 4, !tbaa !5
  %277 = load i8, ptr %c, align 1, !tbaa !25
  %conv365 = zext i8 %277 to i32
  %mul366 = mul nsw i32 2, %conv365
  %278 = load i32, ptr %y, align 4, !tbaa !5
  %sub367 = sub nsw i32 %278, %mul366
  store i32 %sub367, ptr %y, align 4, !tbaa !5
  %279 = load ptr, ptr %cp, align 8, !tbaa !21
  %280 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr368 = getelementptr inbounds nuw i8, ptr %280, i32 1
  store ptr %incdec.ptr368, ptr %p, align 8, !tbaa !21
  %281 = load i8, ptr %280, align 1, !tbaa !25
  %conv369 = zext i8 %281 to i32
  %idx.ext370 = sext i32 %conv369 to i64
  %idx.neg371 = sub i64 0, %idx.ext370
  %add.ptr372 = getelementptr inbounds i8, ptr %279, i64 %idx.neg371
  %282 = load i8, ptr %add.ptr372, align 1, !tbaa !25
  store i8 %282, ptr %c, align 1, !tbaa !25
  %283 = load i8, ptr %c, align 1, !tbaa !25
  %conv373 = zext i8 %283 to i32
  %284 = load i32, ptr %x, align 4, !tbaa !5
  %sub374 = sub nsw i32 %284, %conv373
  store i32 %sub374, ptr %x, align 4, !tbaa !5
  %285 = load i8, ptr %c, align 1, !tbaa !25
  %conv375 = zext i8 %285 to i32
  %mul376 = mul nsw i32 2, %conv375
  %286 = load i32, ptr %y, align 4, !tbaa !5
  %sub377 = sub nsw i32 %286, %mul376
  store i32 %sub377, ptr %y, align 4, !tbaa !5
  %287 = load ptr, ptr %cp, align 8, !tbaa !21
  %288 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr378 = getelementptr inbounds nuw i8, ptr %288, i32 1
  store ptr %incdec.ptr378, ptr %p, align 8, !tbaa !21
  %289 = load i8, ptr %288, align 1, !tbaa !25
  %conv379 = zext i8 %289 to i32
  %idx.ext380 = sext i32 %conv379 to i64
  %idx.neg381 = sub i64 0, %idx.ext380
  %add.ptr382 = getelementptr inbounds i8, ptr %287, i64 %idx.neg381
  %290 = load i8, ptr %add.ptr382, align 1, !tbaa !25
  store i8 %290, ptr %c, align 1, !tbaa !25
  %291 = load i8, ptr %c, align 1, !tbaa !25
  %conv383 = zext i8 %291 to i32
  %mul384 = mul nsw i32 2, %conv383
  %292 = load i32, ptr %y, align 4, !tbaa !5
  %sub385 = sub nsw i32 %292, %mul384
  store i32 %sub385, ptr %y, align 4, !tbaa !5
  %293 = load ptr, ptr %cp, align 8, !tbaa !21
  %294 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr386 = getelementptr inbounds nuw i8, ptr %294, i32 1
  store ptr %incdec.ptr386, ptr %p, align 8, !tbaa !21
  %295 = load i8, ptr %294, align 1, !tbaa !25
  %conv387 = zext i8 %295 to i32
  %idx.ext388 = sext i32 %conv387 to i64
  %idx.neg389 = sub i64 0, %idx.ext388
  %add.ptr390 = getelementptr inbounds i8, ptr %293, i64 %idx.neg389
  %296 = load i8, ptr %add.ptr390, align 1, !tbaa !25
  store i8 %296, ptr %c, align 1, !tbaa !25
  %297 = load i8, ptr %c, align 1, !tbaa !25
  %conv391 = zext i8 %297 to i32
  %298 = load i32, ptr %x, align 4, !tbaa !5
  %add392 = add nsw i32 %298, %conv391
  store i32 %add392, ptr %x, align 4, !tbaa !5
  %299 = load i8, ptr %c, align 1, !tbaa !25
  %conv393 = zext i8 %299 to i32
  %mul394 = mul nsw i32 2, %conv393
  %300 = load i32, ptr %y, align 4, !tbaa !5
  %sub395 = sub nsw i32 %300, %mul394
  store i32 %sub395, ptr %y, align 4, !tbaa !5
  %301 = load ptr, ptr %cp, align 8, !tbaa !21
  %302 = load ptr, ptr %p, align 8, !tbaa !21
  %303 = load i8, ptr %302, align 1, !tbaa !25
  %conv396 = zext i8 %303 to i32
  %idx.ext397 = sext i32 %conv396 to i64
  %idx.neg398 = sub i64 0, %idx.ext397
  %add.ptr399 = getelementptr inbounds i8, ptr %301, i64 %idx.neg398
  %304 = load i8, ptr %add.ptr399, align 1, !tbaa !25
  store i8 %304, ptr %c, align 1, !tbaa !25
  %305 = load i8, ptr %c, align 1, !tbaa !25
  %conv400 = zext i8 %305 to i32
  %mul401 = mul nsw i32 2, %conv400
  %306 = load i32, ptr %x, align 4, !tbaa !5
  %add402 = add nsw i32 %306, %mul401
  store i32 %add402, ptr %x, align 4, !tbaa !5
  %307 = load i8, ptr %c, align 1, !tbaa !25
  %conv403 = zext i8 %307 to i32
  %mul404 = mul nsw i32 2, %conv403
  %308 = load i32, ptr %y, align 4, !tbaa !5
  %sub405 = sub nsw i32 %308, %mul404
  store i32 %sub405, ptr %y, align 4, !tbaa !5
  %309 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %sub406 = sub nsw i32 %309, 5
  %310 = load ptr, ptr %p, align 8, !tbaa !21
  %idx.ext407 = sext i32 %sub406 to i64
  %add.ptr408 = getelementptr inbounds i8, ptr %310, i64 %idx.ext407
  store ptr %add.ptr408, ptr %p, align 8, !tbaa !21
  %311 = load ptr, ptr %cp, align 8, !tbaa !21
  %312 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr409 = getelementptr inbounds nuw i8, ptr %312, i32 1
  store ptr %incdec.ptr409, ptr %p, align 8, !tbaa !21
  %313 = load i8, ptr %312, align 1, !tbaa !25
  %conv410 = zext i8 %313 to i32
  %idx.ext411 = sext i32 %conv410 to i64
  %idx.neg412 = sub i64 0, %idx.ext411
  %add.ptr413 = getelementptr inbounds i8, ptr %311, i64 %idx.neg412
  %314 = load i8, ptr %add.ptr413, align 1, !tbaa !25
  store i8 %314, ptr %c, align 1, !tbaa !25
  %315 = load i8, ptr %c, align 1, !tbaa !25
  %conv414 = zext i8 %315 to i32
  %mul415 = mul nsw i32 3, %conv414
  %316 = load i32, ptr %x, align 4, !tbaa !5
  %sub416 = sub nsw i32 %316, %mul415
  store i32 %sub416, ptr %x, align 4, !tbaa !5
  %317 = load i8, ptr %c, align 1, !tbaa !25
  %conv417 = zext i8 %317 to i32
  %318 = load i32, ptr %y, align 4, !tbaa !5
  %sub418 = sub nsw i32 %318, %conv417
  store i32 %sub418, ptr %y, align 4, !tbaa !5
  %319 = load ptr, ptr %cp, align 8, !tbaa !21
  %320 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr419 = getelementptr inbounds nuw i8, ptr %320, i32 1
  store ptr %incdec.ptr419, ptr %p, align 8, !tbaa !21
  %321 = load i8, ptr %320, align 1, !tbaa !25
  %conv420 = zext i8 %321 to i32
  %idx.ext421 = sext i32 %conv420 to i64
  %idx.neg422 = sub i64 0, %idx.ext421
  %add.ptr423 = getelementptr inbounds i8, ptr %319, i64 %idx.neg422
  %322 = load i8, ptr %add.ptr423, align 1, !tbaa !25
  store i8 %322, ptr %c, align 1, !tbaa !25
  %323 = load i8, ptr %c, align 1, !tbaa !25
  %conv424 = zext i8 %323 to i32
  %mul425 = mul nsw i32 2, %conv424
  %324 = load i32, ptr %x, align 4, !tbaa !5
  %sub426 = sub nsw i32 %324, %mul425
  store i32 %sub426, ptr %x, align 4, !tbaa !5
  %325 = load i8, ptr %c, align 1, !tbaa !25
  %conv427 = zext i8 %325 to i32
  %326 = load i32, ptr %y, align 4, !tbaa !5
  %sub428 = sub nsw i32 %326, %conv427
  store i32 %sub428, ptr %y, align 4, !tbaa !5
  %327 = load ptr, ptr %cp, align 8, !tbaa !21
  %328 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr429 = getelementptr inbounds nuw i8, ptr %328, i32 1
  store ptr %incdec.ptr429, ptr %p, align 8, !tbaa !21
  %329 = load i8, ptr %328, align 1, !tbaa !25
  %conv430 = zext i8 %329 to i32
  %idx.ext431 = sext i32 %conv430 to i64
  %idx.neg432 = sub i64 0, %idx.ext431
  %add.ptr433 = getelementptr inbounds i8, ptr %327, i64 %idx.neg432
  %330 = load i8, ptr %add.ptr433, align 1, !tbaa !25
  store i8 %330, ptr %c, align 1, !tbaa !25
  %331 = load i8, ptr %c, align 1, !tbaa !25
  %conv434 = zext i8 %331 to i32
  %332 = load i32, ptr %x, align 4, !tbaa !5
  %sub435 = sub nsw i32 %332, %conv434
  store i32 %sub435, ptr %x, align 4, !tbaa !5
  %333 = load i8, ptr %c, align 1, !tbaa !25
  %conv436 = zext i8 %333 to i32
  %334 = load i32, ptr %y, align 4, !tbaa !5
  %sub437 = sub nsw i32 %334, %conv436
  store i32 %sub437, ptr %y, align 4, !tbaa !5
  %335 = load ptr, ptr %cp, align 8, !tbaa !21
  %336 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr438 = getelementptr inbounds nuw i8, ptr %336, i32 1
  store ptr %incdec.ptr438, ptr %p, align 8, !tbaa !21
  %337 = load i8, ptr %336, align 1, !tbaa !25
  %conv439 = zext i8 %337 to i32
  %idx.ext440 = sext i32 %conv439 to i64
  %idx.neg441 = sub i64 0, %idx.ext440
  %add.ptr442 = getelementptr inbounds i8, ptr %335, i64 %idx.neg441
  %338 = load i8, ptr %add.ptr442, align 1, !tbaa !25
  store i8 %338, ptr %c, align 1, !tbaa !25
  %339 = load i8, ptr %c, align 1, !tbaa !25
  %conv443 = zext i8 %339 to i32
  %340 = load i32, ptr %y, align 4, !tbaa !5
  %sub444 = sub nsw i32 %340, %conv443
  store i32 %sub444, ptr %y, align 4, !tbaa !5
  %341 = load ptr, ptr %cp, align 8, !tbaa !21
  %342 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr445 = getelementptr inbounds nuw i8, ptr %342, i32 1
  store ptr %incdec.ptr445, ptr %p, align 8, !tbaa !21
  %343 = load i8, ptr %342, align 1, !tbaa !25
  %conv446 = zext i8 %343 to i32
  %idx.ext447 = sext i32 %conv446 to i64
  %idx.neg448 = sub i64 0, %idx.ext447
  %add.ptr449 = getelementptr inbounds i8, ptr %341, i64 %idx.neg448
  %344 = load i8, ptr %add.ptr449, align 1, !tbaa !25
  store i8 %344, ptr %c, align 1, !tbaa !25
  %345 = load i8, ptr %c, align 1, !tbaa !25
  %conv450 = zext i8 %345 to i32
  %346 = load i32, ptr %x, align 4, !tbaa !5
  %add451 = add nsw i32 %346, %conv450
  store i32 %add451, ptr %x, align 4, !tbaa !5
  %347 = load i8, ptr %c, align 1, !tbaa !25
  %conv452 = zext i8 %347 to i32
  %348 = load i32, ptr %y, align 4, !tbaa !5
  %sub453 = sub nsw i32 %348, %conv452
  store i32 %sub453, ptr %y, align 4, !tbaa !5
  %349 = load ptr, ptr %cp, align 8, !tbaa !21
  %350 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr454 = getelementptr inbounds nuw i8, ptr %350, i32 1
  store ptr %incdec.ptr454, ptr %p, align 8, !tbaa !21
  %351 = load i8, ptr %350, align 1, !tbaa !25
  %conv455 = zext i8 %351 to i32
  %idx.ext456 = sext i32 %conv455 to i64
  %idx.neg457 = sub i64 0, %idx.ext456
  %add.ptr458 = getelementptr inbounds i8, ptr %349, i64 %idx.neg457
  %352 = load i8, ptr %add.ptr458, align 1, !tbaa !25
  store i8 %352, ptr %c, align 1, !tbaa !25
  %353 = load i8, ptr %c, align 1, !tbaa !25
  %conv459 = zext i8 %353 to i32
  %mul460 = mul nsw i32 2, %conv459
  %354 = load i32, ptr %x, align 4, !tbaa !5
  %add461 = add nsw i32 %354, %mul460
  store i32 %add461, ptr %x, align 4, !tbaa !5
  %355 = load i8, ptr %c, align 1, !tbaa !25
  %conv462 = zext i8 %355 to i32
  %356 = load i32, ptr %y, align 4, !tbaa !5
  %sub463 = sub nsw i32 %356, %conv462
  store i32 %sub463, ptr %y, align 4, !tbaa !5
  %357 = load ptr, ptr %cp, align 8, !tbaa !21
  %358 = load ptr, ptr %p, align 8, !tbaa !21
  %359 = load i8, ptr %358, align 1, !tbaa !25
  %conv464 = zext i8 %359 to i32
  %idx.ext465 = sext i32 %conv464 to i64
  %idx.neg466 = sub i64 0, %idx.ext465
  %add.ptr467 = getelementptr inbounds i8, ptr %357, i64 %idx.neg466
  %360 = load i8, ptr %add.ptr467, align 1, !tbaa !25
  store i8 %360, ptr %c, align 1, !tbaa !25
  %361 = load i8, ptr %c, align 1, !tbaa !25
  %conv468 = zext i8 %361 to i32
  %mul469 = mul nsw i32 3, %conv468
  %362 = load i32, ptr %x, align 4, !tbaa !5
  %add470 = add nsw i32 %362, %mul469
  store i32 %add470, ptr %x, align 4, !tbaa !5
  %363 = load i8, ptr %c, align 1, !tbaa !25
  %conv471 = zext i8 %363 to i32
  %364 = load i32, ptr %y, align 4, !tbaa !5
  %sub472 = sub nsw i32 %364, %conv471
  store i32 %sub472, ptr %y, align 4, !tbaa !5
  %365 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %sub473 = sub nsw i32 %365, 6
  %366 = load ptr, ptr %p, align 8, !tbaa !21
  %idx.ext474 = sext i32 %sub473 to i64
  %add.ptr475 = getelementptr inbounds i8, ptr %366, i64 %idx.ext474
  store ptr %add.ptr475, ptr %p, align 8, !tbaa !21
  %367 = load ptr, ptr %cp, align 8, !tbaa !21
  %368 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr476 = getelementptr inbounds nuw i8, ptr %368, i32 1
  store ptr %incdec.ptr476, ptr %p, align 8, !tbaa !21
  %369 = load i8, ptr %368, align 1, !tbaa !25
  %conv477 = zext i8 %369 to i32
  %idx.ext478 = sext i32 %conv477 to i64
  %idx.neg479 = sub i64 0, %idx.ext478
  %add.ptr480 = getelementptr inbounds i8, ptr %367, i64 %idx.neg479
  %370 = load i8, ptr %add.ptr480, align 1, !tbaa !25
  store i8 %370, ptr %c, align 1, !tbaa !25
  %371 = load i8, ptr %c, align 1, !tbaa !25
  %conv481 = zext i8 %371 to i32
  %mul482 = mul nsw i32 3, %conv481
  %372 = load i32, ptr %x, align 4, !tbaa !5
  %sub483 = sub nsw i32 %372, %mul482
  store i32 %sub483, ptr %x, align 4, !tbaa !5
  %373 = load ptr, ptr %cp, align 8, !tbaa !21
  %374 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr484 = getelementptr inbounds nuw i8, ptr %374, i32 1
  store ptr %incdec.ptr484, ptr %p, align 8, !tbaa !21
  %375 = load i8, ptr %374, align 1, !tbaa !25
  %conv485 = zext i8 %375 to i32
  %idx.ext486 = sext i32 %conv485 to i64
  %idx.neg487 = sub i64 0, %idx.ext486
  %add.ptr488 = getelementptr inbounds i8, ptr %373, i64 %idx.neg487
  %376 = load i8, ptr %add.ptr488, align 1, !tbaa !25
  store i8 %376, ptr %c, align 1, !tbaa !25
  %377 = load i8, ptr %c, align 1, !tbaa !25
  %conv489 = zext i8 %377 to i32
  %mul490 = mul nsw i32 2, %conv489
  %378 = load i32, ptr %x, align 4, !tbaa !5
  %sub491 = sub nsw i32 %378, %mul490
  store i32 %sub491, ptr %x, align 4, !tbaa !5
  %379 = load ptr, ptr %cp, align 8, !tbaa !21
  %380 = load ptr, ptr %p, align 8, !tbaa !21
  %381 = load i8, ptr %380, align 1, !tbaa !25
  %conv492 = zext i8 %381 to i32
  %idx.ext493 = sext i32 %conv492 to i64
  %idx.neg494 = sub i64 0, %idx.ext493
  %add.ptr495 = getelementptr inbounds i8, ptr %379, i64 %idx.neg494
  %382 = load i8, ptr %add.ptr495, align 1, !tbaa !25
  store i8 %382, ptr %c, align 1, !tbaa !25
  %383 = load i8, ptr %c, align 1, !tbaa !25
  %conv496 = zext i8 %383 to i32
  %384 = load i32, ptr %x, align 4, !tbaa !5
  %sub497 = sub nsw i32 %384, %conv496
  store i32 %sub497, ptr %x, align 4, !tbaa !5
  %385 = load ptr, ptr %p, align 8, !tbaa !21
  %add.ptr498 = getelementptr inbounds i8, ptr %385, i64 2
  store ptr %add.ptr498, ptr %p, align 8, !tbaa !21
  %386 = load ptr, ptr %cp, align 8, !tbaa !21
  %387 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr499 = getelementptr inbounds nuw i8, ptr %387, i32 1
  store ptr %incdec.ptr499, ptr %p, align 8, !tbaa !21
  %388 = load i8, ptr %387, align 1, !tbaa !25
  %conv500 = zext i8 %388 to i32
  %idx.ext501 = sext i32 %conv500 to i64
  %idx.neg502 = sub i64 0, %idx.ext501
  %add.ptr503 = getelementptr inbounds i8, ptr %386, i64 %idx.neg502
  %389 = load i8, ptr %add.ptr503, align 1, !tbaa !25
  store i8 %389, ptr %c, align 1, !tbaa !25
  %390 = load i8, ptr %c, align 1, !tbaa !25
  %conv504 = zext i8 %390 to i32
  %391 = load i32, ptr %x, align 4, !tbaa !5
  %add505 = add nsw i32 %391, %conv504
  store i32 %add505, ptr %x, align 4, !tbaa !5
  %392 = load ptr, ptr %cp, align 8, !tbaa !21
  %393 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr506 = getelementptr inbounds nuw i8, ptr %393, i32 1
  store ptr %incdec.ptr506, ptr %p, align 8, !tbaa !21
  %394 = load i8, ptr %393, align 1, !tbaa !25
  %conv507 = zext i8 %394 to i32
  %idx.ext508 = sext i32 %conv507 to i64
  %idx.neg509 = sub i64 0, %idx.ext508
  %add.ptr510 = getelementptr inbounds i8, ptr %392, i64 %idx.neg509
  %395 = load i8, ptr %add.ptr510, align 1, !tbaa !25
  store i8 %395, ptr %c, align 1, !tbaa !25
  %396 = load i8, ptr %c, align 1, !tbaa !25
  %conv511 = zext i8 %396 to i32
  %mul512 = mul nsw i32 2, %conv511
  %397 = load i32, ptr %x, align 4, !tbaa !5
  %add513 = add nsw i32 %397, %mul512
  store i32 %add513, ptr %x, align 4, !tbaa !5
  %398 = load ptr, ptr %cp, align 8, !tbaa !21
  %399 = load ptr, ptr %p, align 8, !tbaa !21
  %400 = load i8, ptr %399, align 1, !tbaa !25
  %conv514 = zext i8 %400 to i32
  %idx.ext515 = sext i32 %conv514 to i64
  %idx.neg516 = sub i64 0, %idx.ext515
  %add.ptr517 = getelementptr inbounds i8, ptr %398, i64 %idx.neg516
  %401 = load i8, ptr %add.ptr517, align 1, !tbaa !25
  store i8 %401, ptr %c, align 1, !tbaa !25
  %402 = load i8, ptr %c, align 1, !tbaa !25
  %conv518 = zext i8 %402 to i32
  %mul519 = mul nsw i32 3, %conv518
  %403 = load i32, ptr %x, align 4, !tbaa !5
  %add520 = add nsw i32 %403, %mul519
  store i32 %add520, ptr %x, align 4, !tbaa !5
  %404 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %sub521 = sub nsw i32 %404, 6
  %405 = load ptr, ptr %p, align 8, !tbaa !21
  %idx.ext522 = sext i32 %sub521 to i64
  %add.ptr523 = getelementptr inbounds i8, ptr %405, i64 %idx.ext522
  store ptr %add.ptr523, ptr %p, align 8, !tbaa !21
  %406 = load ptr, ptr %cp, align 8, !tbaa !21
  %407 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr524 = getelementptr inbounds nuw i8, ptr %407, i32 1
  store ptr %incdec.ptr524, ptr %p, align 8, !tbaa !21
  %408 = load i8, ptr %407, align 1, !tbaa !25
  %conv525 = zext i8 %408 to i32
  %idx.ext526 = sext i32 %conv525 to i64
  %idx.neg527 = sub i64 0, %idx.ext526
  %add.ptr528 = getelementptr inbounds i8, ptr %406, i64 %idx.neg527
  %409 = load i8, ptr %add.ptr528, align 1, !tbaa !25
  store i8 %409, ptr %c, align 1, !tbaa !25
  %410 = load i8, ptr %c, align 1, !tbaa !25
  %conv529 = zext i8 %410 to i32
  %mul530 = mul nsw i32 3, %conv529
  %411 = load i32, ptr %x, align 4, !tbaa !5
  %sub531 = sub nsw i32 %411, %mul530
  store i32 %sub531, ptr %x, align 4, !tbaa !5
  %412 = load i8, ptr %c, align 1, !tbaa !25
  %conv532 = zext i8 %412 to i32
  %413 = load i32, ptr %y, align 4, !tbaa !5
  %add533 = add nsw i32 %413, %conv532
  store i32 %add533, ptr %y, align 4, !tbaa !5
  %414 = load ptr, ptr %cp, align 8, !tbaa !21
  %415 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr534 = getelementptr inbounds nuw i8, ptr %415, i32 1
  store ptr %incdec.ptr534, ptr %p, align 8, !tbaa !21
  %416 = load i8, ptr %415, align 1, !tbaa !25
  %conv535 = zext i8 %416 to i32
  %idx.ext536 = sext i32 %conv535 to i64
  %idx.neg537 = sub i64 0, %idx.ext536
  %add.ptr538 = getelementptr inbounds i8, ptr %414, i64 %idx.neg537
  %417 = load i8, ptr %add.ptr538, align 1, !tbaa !25
  store i8 %417, ptr %c, align 1, !tbaa !25
  %418 = load i8, ptr %c, align 1, !tbaa !25
  %conv539 = zext i8 %418 to i32
  %mul540 = mul nsw i32 2, %conv539
  %419 = load i32, ptr %x, align 4, !tbaa !5
  %sub541 = sub nsw i32 %419, %mul540
  store i32 %sub541, ptr %x, align 4, !tbaa !5
  %420 = load i8, ptr %c, align 1, !tbaa !25
  %conv542 = zext i8 %420 to i32
  %421 = load i32, ptr %y, align 4, !tbaa !5
  %add543 = add nsw i32 %421, %conv542
  store i32 %add543, ptr %y, align 4, !tbaa !5
  %422 = load ptr, ptr %cp, align 8, !tbaa !21
  %423 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr544 = getelementptr inbounds nuw i8, ptr %423, i32 1
  store ptr %incdec.ptr544, ptr %p, align 8, !tbaa !21
  %424 = load i8, ptr %423, align 1, !tbaa !25
  %conv545 = zext i8 %424 to i32
  %idx.ext546 = sext i32 %conv545 to i64
  %idx.neg547 = sub i64 0, %idx.ext546
  %add.ptr548 = getelementptr inbounds i8, ptr %422, i64 %idx.neg547
  %425 = load i8, ptr %add.ptr548, align 1, !tbaa !25
  store i8 %425, ptr %c, align 1, !tbaa !25
  %426 = load i8, ptr %c, align 1, !tbaa !25
  %conv549 = zext i8 %426 to i32
  %427 = load i32, ptr %x, align 4, !tbaa !5
  %sub550 = sub nsw i32 %427, %conv549
  store i32 %sub550, ptr %x, align 4, !tbaa !5
  %428 = load i8, ptr %c, align 1, !tbaa !25
  %conv551 = zext i8 %428 to i32
  %429 = load i32, ptr %y, align 4, !tbaa !5
  %add552 = add nsw i32 %429, %conv551
  store i32 %add552, ptr %y, align 4, !tbaa !5
  %430 = load ptr, ptr %cp, align 8, !tbaa !21
  %431 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr553 = getelementptr inbounds nuw i8, ptr %431, i32 1
  store ptr %incdec.ptr553, ptr %p, align 8, !tbaa !21
  %432 = load i8, ptr %431, align 1, !tbaa !25
  %conv554 = zext i8 %432 to i32
  %idx.ext555 = sext i32 %conv554 to i64
  %idx.neg556 = sub i64 0, %idx.ext555
  %add.ptr557 = getelementptr inbounds i8, ptr %430, i64 %idx.neg556
  %433 = load i8, ptr %add.ptr557, align 1, !tbaa !25
  store i8 %433, ptr %c, align 1, !tbaa !25
  %434 = load i8, ptr %c, align 1, !tbaa !25
  %conv558 = zext i8 %434 to i32
  %435 = load i32, ptr %y, align 4, !tbaa !5
  %add559 = add nsw i32 %435, %conv558
  store i32 %add559, ptr %y, align 4, !tbaa !5
  %436 = load ptr, ptr %cp, align 8, !tbaa !21
  %437 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr560 = getelementptr inbounds nuw i8, ptr %437, i32 1
  store ptr %incdec.ptr560, ptr %p, align 8, !tbaa !21
  %438 = load i8, ptr %437, align 1, !tbaa !25
  %conv561 = zext i8 %438 to i32
  %idx.ext562 = sext i32 %conv561 to i64
  %idx.neg563 = sub i64 0, %idx.ext562
  %add.ptr564 = getelementptr inbounds i8, ptr %436, i64 %idx.neg563
  %439 = load i8, ptr %add.ptr564, align 1, !tbaa !25
  store i8 %439, ptr %c, align 1, !tbaa !25
  %440 = load i8, ptr %c, align 1, !tbaa !25
  %conv565 = zext i8 %440 to i32
  %441 = load i32, ptr %x, align 4, !tbaa !5
  %add566 = add nsw i32 %441, %conv565
  store i32 %add566, ptr %x, align 4, !tbaa !5
  %442 = load i8, ptr %c, align 1, !tbaa !25
  %conv567 = zext i8 %442 to i32
  %443 = load i32, ptr %y, align 4, !tbaa !5
  %add568 = add nsw i32 %443, %conv567
  store i32 %add568, ptr %y, align 4, !tbaa !5
  %444 = load ptr, ptr %cp, align 8, !tbaa !21
  %445 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr569 = getelementptr inbounds nuw i8, ptr %445, i32 1
  store ptr %incdec.ptr569, ptr %p, align 8, !tbaa !21
  %446 = load i8, ptr %445, align 1, !tbaa !25
  %conv570 = zext i8 %446 to i32
  %idx.ext571 = sext i32 %conv570 to i64
  %idx.neg572 = sub i64 0, %idx.ext571
  %add.ptr573 = getelementptr inbounds i8, ptr %444, i64 %idx.neg572
  %447 = load i8, ptr %add.ptr573, align 1, !tbaa !25
  store i8 %447, ptr %c, align 1, !tbaa !25
  %448 = load i8, ptr %c, align 1, !tbaa !25
  %conv574 = zext i8 %448 to i32
  %mul575 = mul nsw i32 2, %conv574
  %449 = load i32, ptr %x, align 4, !tbaa !5
  %add576 = add nsw i32 %449, %mul575
  store i32 %add576, ptr %x, align 4, !tbaa !5
  %450 = load i8, ptr %c, align 1, !tbaa !25
  %conv577 = zext i8 %450 to i32
  %451 = load i32, ptr %y, align 4, !tbaa !5
  %add578 = add nsw i32 %451, %conv577
  store i32 %add578, ptr %y, align 4, !tbaa !5
  %452 = load ptr, ptr %cp, align 8, !tbaa !21
  %453 = load ptr, ptr %p, align 8, !tbaa !21
  %454 = load i8, ptr %453, align 1, !tbaa !25
  %conv579 = zext i8 %454 to i32
  %idx.ext580 = sext i32 %conv579 to i64
  %idx.neg581 = sub i64 0, %idx.ext580
  %add.ptr582 = getelementptr inbounds i8, ptr %452, i64 %idx.neg581
  %455 = load i8, ptr %add.ptr582, align 1, !tbaa !25
  store i8 %455, ptr %c, align 1, !tbaa !25
  %456 = load i8, ptr %c, align 1, !tbaa !25
  %conv583 = zext i8 %456 to i32
  %mul584 = mul nsw i32 3, %conv583
  %457 = load i32, ptr %x, align 4, !tbaa !5
  %add585 = add nsw i32 %457, %mul584
  store i32 %add585, ptr %x, align 4, !tbaa !5
  %458 = load i8, ptr %c, align 1, !tbaa !25
  %conv586 = zext i8 %458 to i32
  %459 = load i32, ptr %y, align 4, !tbaa !5
  %add587 = add nsw i32 %459, %conv586
  store i32 %add587, ptr %y, align 4, !tbaa !5
  %460 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %sub588 = sub nsw i32 %460, 5
  %461 = load ptr, ptr %p, align 8, !tbaa !21
  %idx.ext589 = sext i32 %sub588 to i64
  %add.ptr590 = getelementptr inbounds i8, ptr %461, i64 %idx.ext589
  store ptr %add.ptr590, ptr %p, align 8, !tbaa !21
  %462 = load ptr, ptr %cp, align 8, !tbaa !21
  %463 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr591 = getelementptr inbounds nuw i8, ptr %463, i32 1
  store ptr %incdec.ptr591, ptr %p, align 8, !tbaa !21
  %464 = load i8, ptr %463, align 1, !tbaa !25
  %conv592 = zext i8 %464 to i32
  %idx.ext593 = sext i32 %conv592 to i64
  %idx.neg594 = sub i64 0, %idx.ext593
  %add.ptr595 = getelementptr inbounds i8, ptr %462, i64 %idx.neg594
  %465 = load i8, ptr %add.ptr595, align 1, !tbaa !25
  store i8 %465, ptr %c, align 1, !tbaa !25
  %466 = load i8, ptr %c, align 1, !tbaa !25
  %conv596 = zext i8 %466 to i32
  %mul597 = mul nsw i32 2, %conv596
  %467 = load i32, ptr %x, align 4, !tbaa !5
  %sub598 = sub nsw i32 %467, %mul597
  store i32 %sub598, ptr %x, align 4, !tbaa !5
  %468 = load i8, ptr %c, align 1, !tbaa !25
  %conv599 = zext i8 %468 to i32
  %mul600 = mul nsw i32 2, %conv599
  %469 = load i32, ptr %y, align 4, !tbaa !5
  %add601 = add nsw i32 %469, %mul600
  store i32 %add601, ptr %y, align 4, !tbaa !5
  %470 = load ptr, ptr %cp, align 8, !tbaa !21
  %471 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr602 = getelementptr inbounds nuw i8, ptr %471, i32 1
  store ptr %incdec.ptr602, ptr %p, align 8, !tbaa !21
  %472 = load i8, ptr %471, align 1, !tbaa !25
  %conv603 = zext i8 %472 to i32
  %idx.ext604 = sext i32 %conv603 to i64
  %idx.neg605 = sub i64 0, %idx.ext604
  %add.ptr606 = getelementptr inbounds i8, ptr %470, i64 %idx.neg605
  %473 = load i8, ptr %add.ptr606, align 1, !tbaa !25
  store i8 %473, ptr %c, align 1, !tbaa !25
  %474 = load i8, ptr %c, align 1, !tbaa !25
  %conv607 = zext i8 %474 to i32
  %475 = load i32, ptr %x, align 4, !tbaa !5
  %sub608 = sub nsw i32 %475, %conv607
  store i32 %sub608, ptr %x, align 4, !tbaa !5
  %476 = load i8, ptr %c, align 1, !tbaa !25
  %conv609 = zext i8 %476 to i32
  %mul610 = mul nsw i32 2, %conv609
  %477 = load i32, ptr %y, align 4, !tbaa !5
  %add611 = add nsw i32 %477, %mul610
  store i32 %add611, ptr %y, align 4, !tbaa !5
  %478 = load ptr, ptr %cp, align 8, !tbaa !21
  %479 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr612 = getelementptr inbounds nuw i8, ptr %479, i32 1
  store ptr %incdec.ptr612, ptr %p, align 8, !tbaa !21
  %480 = load i8, ptr %479, align 1, !tbaa !25
  %conv613 = zext i8 %480 to i32
  %idx.ext614 = sext i32 %conv613 to i64
  %idx.neg615 = sub i64 0, %idx.ext614
  %add.ptr616 = getelementptr inbounds i8, ptr %478, i64 %idx.neg615
  %481 = load i8, ptr %add.ptr616, align 1, !tbaa !25
  store i8 %481, ptr %c, align 1, !tbaa !25
  %482 = load i8, ptr %c, align 1, !tbaa !25
  %conv617 = zext i8 %482 to i32
  %mul618 = mul nsw i32 2, %conv617
  %483 = load i32, ptr %y, align 4, !tbaa !5
  %add619 = add nsw i32 %483, %mul618
  store i32 %add619, ptr %y, align 4, !tbaa !5
  %484 = load ptr, ptr %cp, align 8, !tbaa !21
  %485 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr620 = getelementptr inbounds nuw i8, ptr %485, i32 1
  store ptr %incdec.ptr620, ptr %p, align 8, !tbaa !21
  %486 = load i8, ptr %485, align 1, !tbaa !25
  %conv621 = zext i8 %486 to i32
  %idx.ext622 = sext i32 %conv621 to i64
  %idx.neg623 = sub i64 0, %idx.ext622
  %add.ptr624 = getelementptr inbounds i8, ptr %484, i64 %idx.neg623
  %487 = load i8, ptr %add.ptr624, align 1, !tbaa !25
  store i8 %487, ptr %c, align 1, !tbaa !25
  %488 = load i8, ptr %c, align 1, !tbaa !25
  %conv625 = zext i8 %488 to i32
  %489 = load i32, ptr %x, align 4, !tbaa !5
  %add626 = add nsw i32 %489, %conv625
  store i32 %add626, ptr %x, align 4, !tbaa !5
  %490 = load i8, ptr %c, align 1, !tbaa !25
  %conv627 = zext i8 %490 to i32
  %mul628 = mul nsw i32 2, %conv627
  %491 = load i32, ptr %y, align 4, !tbaa !5
  %add629 = add nsw i32 %491, %mul628
  store i32 %add629, ptr %y, align 4, !tbaa !5
  %492 = load ptr, ptr %cp, align 8, !tbaa !21
  %493 = load ptr, ptr %p, align 8, !tbaa !21
  %494 = load i8, ptr %493, align 1, !tbaa !25
  %conv630 = zext i8 %494 to i32
  %idx.ext631 = sext i32 %conv630 to i64
  %idx.neg632 = sub i64 0, %idx.ext631
  %add.ptr633 = getelementptr inbounds i8, ptr %492, i64 %idx.neg632
  %495 = load i8, ptr %add.ptr633, align 1, !tbaa !25
  store i8 %495, ptr %c, align 1, !tbaa !25
  %496 = load i8, ptr %c, align 1, !tbaa !25
  %conv634 = zext i8 %496 to i32
  %mul635 = mul nsw i32 2, %conv634
  %497 = load i32, ptr %x, align 4, !tbaa !5
  %add636 = add nsw i32 %497, %mul635
  store i32 %add636, ptr %x, align 4, !tbaa !5
  %498 = load i8, ptr %c, align 1, !tbaa !25
  %conv637 = zext i8 %498 to i32
  %mul638 = mul nsw i32 2, %conv637
  %499 = load i32, ptr %y, align 4, !tbaa !5
  %add639 = add nsw i32 %499, %mul638
  store i32 %add639, ptr %y, align 4, !tbaa !5
  %500 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %sub640 = sub nsw i32 %500, 3
  %501 = load ptr, ptr %p, align 8, !tbaa !21
  %idx.ext641 = sext i32 %sub640 to i64
  %add.ptr642 = getelementptr inbounds i8, ptr %501, i64 %idx.ext641
  store ptr %add.ptr642, ptr %p, align 8, !tbaa !21
  %502 = load ptr, ptr %cp, align 8, !tbaa !21
  %503 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr643 = getelementptr inbounds nuw i8, ptr %503, i32 1
  store ptr %incdec.ptr643, ptr %p, align 8, !tbaa !21
  %504 = load i8, ptr %503, align 1, !tbaa !25
  %conv644 = zext i8 %504 to i32
  %idx.ext645 = sext i32 %conv644 to i64
  %idx.neg646 = sub i64 0, %idx.ext645
  %add.ptr647 = getelementptr inbounds i8, ptr %502, i64 %idx.neg646
  %505 = load i8, ptr %add.ptr647, align 1, !tbaa !25
  store i8 %505, ptr %c, align 1, !tbaa !25
  %506 = load i8, ptr %c, align 1, !tbaa !25
  %conv648 = zext i8 %506 to i32
  %507 = load i32, ptr %x, align 4, !tbaa !5
  %sub649 = sub nsw i32 %507, %conv648
  store i32 %sub649, ptr %x, align 4, !tbaa !5
  %508 = load i8, ptr %c, align 1, !tbaa !25
  %conv650 = zext i8 %508 to i32
  %mul651 = mul nsw i32 3, %conv650
  %509 = load i32, ptr %y, align 4, !tbaa !5
  %add652 = add nsw i32 %509, %mul651
  store i32 %add652, ptr %y, align 4, !tbaa !5
  %510 = load ptr, ptr %cp, align 8, !tbaa !21
  %511 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr653 = getelementptr inbounds nuw i8, ptr %511, i32 1
  store ptr %incdec.ptr653, ptr %p, align 8, !tbaa !21
  %512 = load i8, ptr %511, align 1, !tbaa !25
  %conv654 = zext i8 %512 to i32
  %idx.ext655 = sext i32 %conv654 to i64
  %idx.neg656 = sub i64 0, %idx.ext655
  %add.ptr657 = getelementptr inbounds i8, ptr %510, i64 %idx.neg656
  %513 = load i8, ptr %add.ptr657, align 1, !tbaa !25
  store i8 %513, ptr %c, align 1, !tbaa !25
  %514 = load i8, ptr %c, align 1, !tbaa !25
  %conv658 = zext i8 %514 to i32
  %mul659 = mul nsw i32 3, %conv658
  %515 = load i32, ptr %y, align 4, !tbaa !5
  %add660 = add nsw i32 %515, %mul659
  store i32 %add660, ptr %y, align 4, !tbaa !5
  %516 = load ptr, ptr %cp, align 8, !tbaa !21
  %517 = load ptr, ptr %p, align 8, !tbaa !21
  %518 = load i8, ptr %517, align 1, !tbaa !25
  %conv661 = zext i8 %518 to i32
  %idx.ext662 = sext i32 %conv661 to i64
  %idx.neg663 = sub i64 0, %idx.ext662
  %add.ptr664 = getelementptr inbounds i8, ptr %516, i64 %idx.neg663
  %519 = load i8, ptr %add.ptr664, align 1, !tbaa !25
  store i8 %519, ptr %c, align 1, !tbaa !25
  %520 = load i8, ptr %c, align 1, !tbaa !25
  %conv665 = zext i8 %520 to i32
  %521 = load i32, ptr %x, align 4, !tbaa !5
  %add666 = add nsw i32 %521, %conv665
  store i32 %add666, ptr %x, align 4, !tbaa !5
  %522 = load i8, ptr %c, align 1, !tbaa !25
  %conv667 = zext i8 %522 to i32
  %mul668 = mul nsw i32 3, %conv667
  %523 = load i32, ptr %y, align 4, !tbaa !5
  %add669 = add nsw i32 %523, %mul668
  store i32 %add669, ptr %y, align 4, !tbaa !5
  %524 = load i32, ptr %x, align 4, !tbaa !5
  %525 = load i32, ptr %x, align 4, !tbaa !5
  %mul670 = mul nsw i32 %524, %525
  %526 = load i32, ptr %y, align 4, !tbaa !5
  %527 = load i32, ptr %y, align 4, !tbaa !5
  %mul671 = mul nsw i32 %526, %527
  %add672 = add nsw i32 %mul670, %mul671
  %conv673 = sitofp i32 %add672 to float
  %conv674 = fpext float %conv673 to double
  %call = call double @sqrt(double noundef %conv674) #10, !tbaa !5
  %conv675 = fptrunc double %call to float
  store float %conv675, ptr %z, align 4, !tbaa !41
  %528 = load float, ptr %z, align 4, !tbaa !41
  %conv676 = fpext float %528 to double
  %529 = load i32, ptr %n, align 4, !tbaa !5
  %conv677 = sitofp i32 %529 to float
  %conv678 = fpext float %conv677 to double
  %mul679 = fmul double 9.000000e-01, %conv678
  %cmp680 = fcmp ogt double %conv676, %mul679
  br i1 %cmp680, label %if.then682, label %if.else755

if.then682:                                       ; preds = %if.then319
  store i32 0, ptr %do_symmetry, align 4, !tbaa !5
  %530 = load i32, ptr %x, align 4, !tbaa !5
  %cmp683 = icmp eq i32 %530, 0
  br i1 %cmp683, label %if.then685, label %if.else

if.then685:                                       ; preds = %if.then682
  store float 1.000000e+06, ptr %z, align 4, !tbaa !41
  br label %if.end688

if.else:                                          ; preds = %if.then682
  %531 = load i32, ptr %y, align 4, !tbaa !5
  %conv686 = sitofp i32 %531 to float
  %532 = load i32, ptr %x, align 4, !tbaa !5
  %conv687 = sitofp i32 %532 to float
  %div = fdiv float %conv686, %conv687
  store float %div, ptr %z, align 4, !tbaa !41
  br label %if.end688

if.end688:                                        ; preds = %if.else, %if.then685
  %533 = load float, ptr %z, align 4, !tbaa !41
  %cmp689 = fcmp olt float %533, 0.000000e+00
  br i1 %cmp689, label %if.then691, label %if.else692

if.then691:                                       ; preds = %if.end688
  %534 = load float, ptr %z, align 4, !tbaa !41
  %fneg = fneg float %534
  store float %fneg, ptr %z, align 4, !tbaa !41
  store i32 -1, ptr %w, align 4, !tbaa !5
  br label %if.end693

if.else692:                                       ; preds = %if.end688
  store i32 1, ptr %w, align 4, !tbaa !5
  br label %if.end693

if.end693:                                        ; preds = %if.else692, %if.then691
  %535 = load float, ptr %z, align 4, !tbaa !41
  %conv694 = fpext float %535 to double
  %cmp695 = fcmp olt double %conv694, 5.000000e-01
  br i1 %cmp695, label %if.then697, label %if.else698

if.then697:                                       ; preds = %if.end693
  store i32 0, ptr %a, align 4, !tbaa !5
  store i32 1, ptr %b, align 4, !tbaa !5
  br label %if.end710

if.else698:                                       ; preds = %if.end693
  %536 = load float, ptr %z, align 4, !tbaa !41
  %conv699 = fpext float %536 to double
  %cmp700 = fcmp ogt double %conv699, 2.000000e+00
  br i1 %cmp700, label %if.then702, label %if.else703

if.then702:                                       ; preds = %if.else698
  store i32 1, ptr %a, align 4, !tbaa !5
  store i32 0, ptr %b, align 4, !tbaa !5
  br label %if.end709

if.else703:                                       ; preds = %if.else698
  %537 = load i32, ptr %w, align 4, !tbaa !5
  %cmp704 = icmp sgt i32 %537, 0
  br i1 %cmp704, label %if.then706, label %if.else707

if.then706:                                       ; preds = %if.else703
  store i32 1, ptr %a, align 4, !tbaa !5
  store i32 1, ptr %b, align 4, !tbaa !5
  br label %if.end708

if.else707:                                       ; preds = %if.else703
  store i32 -1, ptr %a, align 4, !tbaa !5
  store i32 1, ptr %b, align 4, !tbaa !5
  br label %if.end708

if.end708:                                        ; preds = %if.else707, %if.then706
  br label %if.end709

if.end709:                                        ; preds = %if.end708, %if.then702
  br label %if.end710

if.end710:                                        ; preds = %if.end709, %if.then697
  %538 = load i32, ptr %m, align 4, !tbaa !5
  %539 = load ptr, ptr %r.addr, align 8, !tbaa !23
  %540 = load i32, ptr %i, align 4, !tbaa !5
  %541 = load i32, ptr %a, align 4, !tbaa !5
  %add711 = add nsw i32 %540, %541
  %542 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul712 = mul nsw i32 %add711, %542
  %543 = load i32, ptr %j, align 4, !tbaa !5
  %add713 = add nsw i32 %mul712, %543
  %544 = load i32, ptr %b, align 4, !tbaa !5
  %add714 = add nsw i32 %add713, %544
  %idxprom715 = sext i32 %add714 to i64
  %arrayidx716 = getelementptr inbounds i32, ptr %539, i64 %idxprom715
  %545 = load i32, ptr %arrayidx716, align 4, !tbaa !5
  %cmp717 = icmp sgt i32 %538, %545
  br i1 %cmp717, label %land.lhs.true, label %if.end754

land.lhs.true:                                    ; preds = %if.end710
  %546 = load i32, ptr %m, align 4, !tbaa !5
  %547 = load ptr, ptr %r.addr, align 8, !tbaa !23
  %548 = load i32, ptr %i, align 4, !tbaa !5
  %549 = load i32, ptr %a, align 4, !tbaa !5
  %sub719 = sub nsw i32 %548, %549
  %550 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul720 = mul nsw i32 %sub719, %550
  %551 = load i32, ptr %j, align 4, !tbaa !5
  %add721 = add nsw i32 %mul720, %551
  %552 = load i32, ptr %b, align 4, !tbaa !5
  %sub722 = sub nsw i32 %add721, %552
  %idxprom723 = sext i32 %sub722 to i64
  %arrayidx724 = getelementptr inbounds i32, ptr %547, i64 %idxprom723
  %553 = load i32, ptr %arrayidx724, align 4, !tbaa !5
  %cmp725 = icmp sge i32 %546, %553
  br i1 %cmp725, label %land.lhs.true727, label %if.end754

land.lhs.true727:                                 ; preds = %land.lhs.true
  %554 = load i32, ptr %m, align 4, !tbaa !5
  %555 = load ptr, ptr %r.addr, align 8, !tbaa !23
  %556 = load i32, ptr %i, align 4, !tbaa !5
  %557 = load i32, ptr %a, align 4, !tbaa !5
  %mul728 = mul nsw i32 2, %557
  %add729 = add nsw i32 %556, %mul728
  %558 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul730 = mul nsw i32 %add729, %558
  %559 = load i32, ptr %j, align 4, !tbaa !5
  %add731 = add nsw i32 %mul730, %559
  %560 = load i32, ptr %b, align 4, !tbaa !5
  %mul732 = mul nsw i32 2, %560
  %add733 = add nsw i32 %add731, %mul732
  %idxprom734 = sext i32 %add733 to i64
  %arrayidx735 = getelementptr inbounds i32, ptr %555, i64 %idxprom734
  %561 = load i32, ptr %arrayidx735, align 4, !tbaa !5
  %cmp736 = icmp sgt i32 %554, %561
  br i1 %cmp736, label %land.lhs.true738, label %if.end754

land.lhs.true738:                                 ; preds = %land.lhs.true727
  %562 = load i32, ptr %m, align 4, !tbaa !5
  %563 = load ptr, ptr %r.addr, align 8, !tbaa !23
  %564 = load i32, ptr %i, align 4, !tbaa !5
  %565 = load i32, ptr %a, align 4, !tbaa !5
  %mul739 = mul nsw i32 2, %565
  %sub740 = sub nsw i32 %564, %mul739
  %566 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul741 = mul nsw i32 %sub740, %566
  %567 = load i32, ptr %j, align 4, !tbaa !5
  %add742 = add nsw i32 %mul741, %567
  %568 = load i32, ptr %b, align 4, !tbaa !5
  %mul743 = mul nsw i32 2, %568
  %sub744 = sub nsw i32 %add742, %mul743
  %idxprom745 = sext i32 %sub744 to i64
  %arrayidx746 = getelementptr inbounds i32, ptr %563, i64 %idxprom745
  %569 = load i32, ptr %arrayidx746, align 4, !tbaa !5
  %cmp747 = icmp sge i32 %562, %569
  br i1 %cmp747, label %if.then749, label %if.end754

if.then749:                                       ; preds = %land.lhs.true738
  %570 = load ptr, ptr %mid.addr, align 8, !tbaa !21
  %571 = load i32, ptr %i, align 4, !tbaa !5
  %572 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul750 = mul nsw i32 %571, %572
  %573 = load i32, ptr %j, align 4, !tbaa !5
  %add751 = add nsw i32 %mul750, %573
  %idxprom752 = sext i32 %add751 to i64
  %arrayidx753 = getelementptr inbounds i8, ptr %570, i64 %idxprom752
  store i8 1, ptr %arrayidx753, align 1, !tbaa !25
  br label %if.end754

if.end754:                                        ; preds = %if.then749, %land.lhs.true738, %land.lhs.true727, %land.lhs.true, %if.end710
  br label %if.end756

if.else755:                                       ; preds = %if.then319
  store i32 1, ptr %do_symmetry, align 4, !tbaa !5
  br label %if.end756

if.end756:                                        ; preds = %if.else755, %if.end754
  br label %if.end758

if.else757:                                       ; preds = %if.then304
  store i32 1, ptr %do_symmetry, align 4, !tbaa !5
  br label %if.end758

if.end758:                                        ; preds = %if.else757, %if.end756
  %574 = load i32, ptr %do_symmetry, align 4, !tbaa !5
  %cmp759 = icmp eq i32 %574, 1
  br i1 %cmp759, label %if.then761, label %if.end1250

if.then761:                                       ; preds = %if.end758
  %575 = load ptr, ptr %in.addr, align 8, !tbaa !21
  %576 = load i32, ptr %i, align 4, !tbaa !5
  %sub762 = sub nsw i32 %576, 3
  %577 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul763 = mul nsw i32 %sub762, %577
  %idx.ext764 = sext i32 %mul763 to i64
  %add.ptr765 = getelementptr inbounds i8, ptr %575, i64 %idx.ext764
  %578 = load i32, ptr %j, align 4, !tbaa !5
  %idx.ext766 = sext i32 %578 to i64
  %add.ptr767 = getelementptr inbounds i8, ptr %add.ptr765, i64 %idx.ext766
  %add.ptr768 = getelementptr inbounds i8, ptr %add.ptr767, i64 -1
  store ptr %add.ptr768, ptr %p, align 8, !tbaa !21
  store i32 0, ptr %x, align 4, !tbaa !5
  store i32 0, ptr %y, align 4, !tbaa !5
  store i32 0, ptr %w, align 4, !tbaa !5
  %579 = load ptr, ptr %cp, align 8, !tbaa !21
  %580 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr769 = getelementptr inbounds nuw i8, ptr %580, i32 1
  store ptr %incdec.ptr769, ptr %p, align 8, !tbaa !21
  %581 = load i8, ptr %580, align 1, !tbaa !25
  %conv770 = zext i8 %581 to i32
  %idx.ext771 = sext i32 %conv770 to i64
  %idx.neg772 = sub i64 0, %idx.ext771
  %add.ptr773 = getelementptr inbounds i8, ptr %579, i64 %idx.neg772
  %582 = load i8, ptr %add.ptr773, align 1, !tbaa !25
  store i8 %582, ptr %c, align 1, !tbaa !25
  %583 = load i8, ptr %c, align 1, !tbaa !25
  %conv774 = zext i8 %583 to i32
  %584 = load i32, ptr %x, align 4, !tbaa !5
  %add775 = add nsw i32 %584, %conv774
  store i32 %add775, ptr %x, align 4, !tbaa !5
  %585 = load i8, ptr %c, align 1, !tbaa !25
  %conv776 = zext i8 %585 to i32
  %mul777 = mul nsw i32 9, %conv776
  %586 = load i32, ptr %y, align 4, !tbaa !5
  %add778 = add nsw i32 %586, %mul777
  store i32 %add778, ptr %y, align 4, !tbaa !5
  %587 = load i8, ptr %c, align 1, !tbaa !25
  %conv779 = zext i8 %587 to i32
  %mul780 = mul nsw i32 3, %conv779
  %588 = load i32, ptr %w, align 4, !tbaa !5
  %add781 = add nsw i32 %588, %mul780
  store i32 %add781, ptr %w, align 4, !tbaa !5
  %589 = load ptr, ptr %cp, align 8, !tbaa !21
  %590 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr782 = getelementptr inbounds nuw i8, ptr %590, i32 1
  store ptr %incdec.ptr782, ptr %p, align 8, !tbaa !21
  %591 = load i8, ptr %590, align 1, !tbaa !25
  %conv783 = zext i8 %591 to i32
  %idx.ext784 = sext i32 %conv783 to i64
  %idx.neg785 = sub i64 0, %idx.ext784
  %add.ptr786 = getelementptr inbounds i8, ptr %589, i64 %idx.neg785
  %592 = load i8, ptr %add.ptr786, align 1, !tbaa !25
  store i8 %592, ptr %c, align 1, !tbaa !25
  %593 = load i8, ptr %c, align 1, !tbaa !25
  %conv787 = zext i8 %593 to i32
  %mul788 = mul nsw i32 9, %conv787
  %594 = load i32, ptr %y, align 4, !tbaa !5
  %add789 = add nsw i32 %594, %mul788
  store i32 %add789, ptr %y, align 4, !tbaa !5
  %595 = load ptr, ptr %cp, align 8, !tbaa !21
  %596 = load ptr, ptr %p, align 8, !tbaa !21
  %597 = load i8, ptr %596, align 1, !tbaa !25
  %conv790 = zext i8 %597 to i32
  %idx.ext791 = sext i32 %conv790 to i64
  %idx.neg792 = sub i64 0, %idx.ext791
  %add.ptr793 = getelementptr inbounds i8, ptr %595, i64 %idx.neg792
  %598 = load i8, ptr %add.ptr793, align 1, !tbaa !25
  store i8 %598, ptr %c, align 1, !tbaa !25
  %599 = load i8, ptr %c, align 1, !tbaa !25
  %conv794 = zext i8 %599 to i32
  %600 = load i32, ptr %x, align 4, !tbaa !5
  %add795 = add nsw i32 %600, %conv794
  store i32 %add795, ptr %x, align 4, !tbaa !5
  %601 = load i8, ptr %c, align 1, !tbaa !25
  %conv796 = zext i8 %601 to i32
  %mul797 = mul nsw i32 9, %conv796
  %602 = load i32, ptr %y, align 4, !tbaa !5
  %add798 = add nsw i32 %602, %mul797
  store i32 %add798, ptr %y, align 4, !tbaa !5
  %603 = load i8, ptr %c, align 1, !tbaa !25
  %conv799 = zext i8 %603 to i32
  %mul800 = mul nsw i32 3, %conv799
  %604 = load i32, ptr %w, align 4, !tbaa !5
  %sub801 = sub nsw i32 %604, %mul800
  store i32 %sub801, ptr %w, align 4, !tbaa !5
  %605 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %sub802 = sub nsw i32 %605, 3
  %606 = load ptr, ptr %p, align 8, !tbaa !21
  %idx.ext803 = sext i32 %sub802 to i64
  %add.ptr804 = getelementptr inbounds i8, ptr %606, i64 %idx.ext803
  store ptr %add.ptr804, ptr %p, align 8, !tbaa !21
  %607 = load ptr, ptr %cp, align 8, !tbaa !21
  %608 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr805 = getelementptr inbounds nuw i8, ptr %608, i32 1
  store ptr %incdec.ptr805, ptr %p, align 8, !tbaa !21
  %609 = load i8, ptr %608, align 1, !tbaa !25
  %conv806 = zext i8 %609 to i32
  %idx.ext807 = sext i32 %conv806 to i64
  %idx.neg808 = sub i64 0, %idx.ext807
  %add.ptr809 = getelementptr inbounds i8, ptr %607, i64 %idx.neg808
  %610 = load i8, ptr %add.ptr809, align 1, !tbaa !25
  store i8 %610, ptr %c, align 1, !tbaa !25
  %611 = load i8, ptr %c, align 1, !tbaa !25
  %conv810 = zext i8 %611 to i32
  %mul811 = mul nsw i32 4, %conv810
  %612 = load i32, ptr %x, align 4, !tbaa !5
  %add812 = add nsw i32 %612, %mul811
  store i32 %add812, ptr %x, align 4, !tbaa !5
  %613 = load i8, ptr %c, align 1, !tbaa !25
  %conv813 = zext i8 %613 to i32
  %mul814 = mul nsw i32 4, %conv813
  %614 = load i32, ptr %y, align 4, !tbaa !5
  %add815 = add nsw i32 %614, %mul814
  store i32 %add815, ptr %y, align 4, !tbaa !5
  %615 = load i8, ptr %c, align 1, !tbaa !25
  %conv816 = zext i8 %615 to i32
  %mul817 = mul nsw i32 4, %conv816
  %616 = load i32, ptr %w, align 4, !tbaa !5
  %add818 = add nsw i32 %616, %mul817
  store i32 %add818, ptr %w, align 4, !tbaa !5
  %617 = load ptr, ptr %cp, align 8, !tbaa !21
  %618 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr819 = getelementptr inbounds nuw i8, ptr %618, i32 1
  store ptr %incdec.ptr819, ptr %p, align 8, !tbaa !21
  %619 = load i8, ptr %618, align 1, !tbaa !25
  %conv820 = zext i8 %619 to i32
  %idx.ext821 = sext i32 %conv820 to i64
  %idx.neg822 = sub i64 0, %idx.ext821
  %add.ptr823 = getelementptr inbounds i8, ptr %617, i64 %idx.neg822
  %620 = load i8, ptr %add.ptr823, align 1, !tbaa !25
  store i8 %620, ptr %c, align 1, !tbaa !25
  %621 = load i8, ptr %c, align 1, !tbaa !25
  %conv824 = zext i8 %621 to i32
  %622 = load i32, ptr %x, align 4, !tbaa !5
  %add825 = add nsw i32 %622, %conv824
  store i32 %add825, ptr %x, align 4, !tbaa !5
  %623 = load i8, ptr %c, align 1, !tbaa !25
  %conv826 = zext i8 %623 to i32
  %mul827 = mul nsw i32 4, %conv826
  %624 = load i32, ptr %y, align 4, !tbaa !5
  %add828 = add nsw i32 %624, %mul827
  store i32 %add828, ptr %y, align 4, !tbaa !5
  %625 = load i8, ptr %c, align 1, !tbaa !25
  %conv829 = zext i8 %625 to i32
  %mul830 = mul nsw i32 2, %conv829
  %626 = load i32, ptr %w, align 4, !tbaa !5
  %add831 = add nsw i32 %626, %mul830
  store i32 %add831, ptr %w, align 4, !tbaa !5
  %627 = load ptr, ptr %cp, align 8, !tbaa !21
  %628 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr832 = getelementptr inbounds nuw i8, ptr %628, i32 1
  store ptr %incdec.ptr832, ptr %p, align 8, !tbaa !21
  %629 = load i8, ptr %628, align 1, !tbaa !25
  %conv833 = zext i8 %629 to i32
  %idx.ext834 = sext i32 %conv833 to i64
  %idx.neg835 = sub i64 0, %idx.ext834
  %add.ptr836 = getelementptr inbounds i8, ptr %627, i64 %idx.neg835
  %630 = load i8, ptr %add.ptr836, align 1, !tbaa !25
  store i8 %630, ptr %c, align 1, !tbaa !25
  %631 = load i8, ptr %c, align 1, !tbaa !25
  %conv837 = zext i8 %631 to i32
  %mul838 = mul nsw i32 4, %conv837
  %632 = load i32, ptr %y, align 4, !tbaa !5
  %add839 = add nsw i32 %632, %mul838
  store i32 %add839, ptr %y, align 4, !tbaa !5
  %633 = load ptr, ptr %cp, align 8, !tbaa !21
  %634 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr840 = getelementptr inbounds nuw i8, ptr %634, i32 1
  store ptr %incdec.ptr840, ptr %p, align 8, !tbaa !21
  %635 = load i8, ptr %634, align 1, !tbaa !25
  %conv841 = zext i8 %635 to i32
  %idx.ext842 = sext i32 %conv841 to i64
  %idx.neg843 = sub i64 0, %idx.ext842
  %add.ptr844 = getelementptr inbounds i8, ptr %633, i64 %idx.neg843
  %636 = load i8, ptr %add.ptr844, align 1, !tbaa !25
  store i8 %636, ptr %c, align 1, !tbaa !25
  %637 = load i8, ptr %c, align 1, !tbaa !25
  %conv845 = zext i8 %637 to i32
  %638 = load i32, ptr %x, align 4, !tbaa !5
  %add846 = add nsw i32 %638, %conv845
  store i32 %add846, ptr %x, align 4, !tbaa !5
  %639 = load i8, ptr %c, align 1, !tbaa !25
  %conv847 = zext i8 %639 to i32
  %mul848 = mul nsw i32 4, %conv847
  %640 = load i32, ptr %y, align 4, !tbaa !5
  %add849 = add nsw i32 %640, %mul848
  store i32 %add849, ptr %y, align 4, !tbaa !5
  %641 = load i8, ptr %c, align 1, !tbaa !25
  %conv850 = zext i8 %641 to i32
  %mul851 = mul nsw i32 2, %conv850
  %642 = load i32, ptr %w, align 4, !tbaa !5
  %sub852 = sub nsw i32 %642, %mul851
  store i32 %sub852, ptr %w, align 4, !tbaa !5
  %643 = load ptr, ptr %cp, align 8, !tbaa !21
  %644 = load ptr, ptr %p, align 8, !tbaa !21
  %645 = load i8, ptr %644, align 1, !tbaa !25
  %conv853 = zext i8 %645 to i32
  %idx.ext854 = sext i32 %conv853 to i64
  %idx.neg855 = sub i64 0, %idx.ext854
  %add.ptr856 = getelementptr inbounds i8, ptr %643, i64 %idx.neg855
  %646 = load i8, ptr %add.ptr856, align 1, !tbaa !25
  store i8 %646, ptr %c, align 1, !tbaa !25
  %647 = load i8, ptr %c, align 1, !tbaa !25
  %conv857 = zext i8 %647 to i32
  %mul858 = mul nsw i32 4, %conv857
  %648 = load i32, ptr %x, align 4, !tbaa !5
  %add859 = add nsw i32 %648, %mul858
  store i32 %add859, ptr %x, align 4, !tbaa !5
  %649 = load i8, ptr %c, align 1, !tbaa !25
  %conv860 = zext i8 %649 to i32
  %mul861 = mul nsw i32 4, %conv860
  %650 = load i32, ptr %y, align 4, !tbaa !5
  %add862 = add nsw i32 %650, %mul861
  store i32 %add862, ptr %y, align 4, !tbaa !5
  %651 = load i8, ptr %c, align 1, !tbaa !25
  %conv863 = zext i8 %651 to i32
  %mul864 = mul nsw i32 4, %conv863
  %652 = load i32, ptr %w, align 4, !tbaa !5
  %sub865 = sub nsw i32 %652, %mul864
  store i32 %sub865, ptr %w, align 4, !tbaa !5
  %653 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %sub866 = sub nsw i32 %653, 5
  %654 = load ptr, ptr %p, align 8, !tbaa !21
  %idx.ext867 = sext i32 %sub866 to i64
  %add.ptr868 = getelementptr inbounds i8, ptr %654, i64 %idx.ext867
  store ptr %add.ptr868, ptr %p, align 8, !tbaa !21
  %655 = load ptr, ptr %cp, align 8, !tbaa !21
  %656 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr869 = getelementptr inbounds nuw i8, ptr %656, i32 1
  store ptr %incdec.ptr869, ptr %p, align 8, !tbaa !21
  %657 = load i8, ptr %656, align 1, !tbaa !25
  %conv870 = zext i8 %657 to i32
  %idx.ext871 = sext i32 %conv870 to i64
  %idx.neg872 = sub i64 0, %idx.ext871
  %add.ptr873 = getelementptr inbounds i8, ptr %655, i64 %idx.neg872
  %658 = load i8, ptr %add.ptr873, align 1, !tbaa !25
  store i8 %658, ptr %c, align 1, !tbaa !25
  %659 = load i8, ptr %c, align 1, !tbaa !25
  %conv874 = zext i8 %659 to i32
  %mul875 = mul nsw i32 9, %conv874
  %660 = load i32, ptr %x, align 4, !tbaa !5
  %add876 = add nsw i32 %660, %mul875
  store i32 %add876, ptr %x, align 4, !tbaa !5
  %661 = load i8, ptr %c, align 1, !tbaa !25
  %conv877 = zext i8 %661 to i32
  %662 = load i32, ptr %y, align 4, !tbaa !5
  %add878 = add nsw i32 %662, %conv877
  store i32 %add878, ptr %y, align 4, !tbaa !5
  %663 = load i8, ptr %c, align 1, !tbaa !25
  %conv879 = zext i8 %663 to i32
  %mul880 = mul nsw i32 3, %conv879
  %664 = load i32, ptr %w, align 4, !tbaa !5
  %add881 = add nsw i32 %664, %mul880
  store i32 %add881, ptr %w, align 4, !tbaa !5
  %665 = load ptr, ptr %cp, align 8, !tbaa !21
  %666 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr882 = getelementptr inbounds nuw i8, ptr %666, i32 1
  store ptr %incdec.ptr882, ptr %p, align 8, !tbaa !21
  %667 = load i8, ptr %666, align 1, !tbaa !25
  %conv883 = zext i8 %667 to i32
  %idx.ext884 = sext i32 %conv883 to i64
  %idx.neg885 = sub i64 0, %idx.ext884
  %add.ptr886 = getelementptr inbounds i8, ptr %665, i64 %idx.neg885
  %668 = load i8, ptr %add.ptr886, align 1, !tbaa !25
  store i8 %668, ptr %c, align 1, !tbaa !25
  %669 = load i8, ptr %c, align 1, !tbaa !25
  %conv887 = zext i8 %669 to i32
  %mul888 = mul nsw i32 4, %conv887
  %670 = load i32, ptr %x, align 4, !tbaa !5
  %add889 = add nsw i32 %670, %mul888
  store i32 %add889, ptr %x, align 4, !tbaa !5
  %671 = load i8, ptr %c, align 1, !tbaa !25
  %conv890 = zext i8 %671 to i32
  %672 = load i32, ptr %y, align 4, !tbaa !5
  %add891 = add nsw i32 %672, %conv890
  store i32 %add891, ptr %y, align 4, !tbaa !5
  %673 = load i8, ptr %c, align 1, !tbaa !25
  %conv892 = zext i8 %673 to i32
  %mul893 = mul nsw i32 2, %conv892
  %674 = load i32, ptr %w, align 4, !tbaa !5
  %add894 = add nsw i32 %674, %mul893
  store i32 %add894, ptr %w, align 4, !tbaa !5
  %675 = load ptr, ptr %cp, align 8, !tbaa !21
  %676 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr895 = getelementptr inbounds nuw i8, ptr %676, i32 1
  store ptr %incdec.ptr895, ptr %p, align 8, !tbaa !21
  %677 = load i8, ptr %676, align 1, !tbaa !25
  %conv896 = zext i8 %677 to i32
  %idx.ext897 = sext i32 %conv896 to i64
  %idx.neg898 = sub i64 0, %idx.ext897
  %add.ptr899 = getelementptr inbounds i8, ptr %675, i64 %idx.neg898
  %678 = load i8, ptr %add.ptr899, align 1, !tbaa !25
  store i8 %678, ptr %c, align 1, !tbaa !25
  %679 = load i8, ptr %c, align 1, !tbaa !25
  %conv900 = zext i8 %679 to i32
  %680 = load i32, ptr %x, align 4, !tbaa !5
  %add901 = add nsw i32 %680, %conv900
  store i32 %add901, ptr %x, align 4, !tbaa !5
  %681 = load i8, ptr %c, align 1, !tbaa !25
  %conv902 = zext i8 %681 to i32
  %682 = load i32, ptr %y, align 4, !tbaa !5
  %add903 = add nsw i32 %682, %conv902
  store i32 %add903, ptr %y, align 4, !tbaa !5
  %683 = load i8, ptr %c, align 1, !tbaa !25
  %conv904 = zext i8 %683 to i32
  %684 = load i32, ptr %w, align 4, !tbaa !5
  %add905 = add nsw i32 %684, %conv904
  store i32 %add905, ptr %w, align 4, !tbaa !5
  %685 = load ptr, ptr %cp, align 8, !tbaa !21
  %686 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr906 = getelementptr inbounds nuw i8, ptr %686, i32 1
  store ptr %incdec.ptr906, ptr %p, align 8, !tbaa !21
  %687 = load i8, ptr %686, align 1, !tbaa !25
  %conv907 = zext i8 %687 to i32
  %idx.ext908 = sext i32 %conv907 to i64
  %idx.neg909 = sub i64 0, %idx.ext908
  %add.ptr910 = getelementptr inbounds i8, ptr %685, i64 %idx.neg909
  %688 = load i8, ptr %add.ptr910, align 1, !tbaa !25
  store i8 %688, ptr %c, align 1, !tbaa !25
  %689 = load i8, ptr %c, align 1, !tbaa !25
  %conv911 = zext i8 %689 to i32
  %690 = load i32, ptr %y, align 4, !tbaa !5
  %add912 = add nsw i32 %690, %conv911
  store i32 %add912, ptr %y, align 4, !tbaa !5
  %691 = load ptr, ptr %cp, align 8, !tbaa !21
  %692 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr913 = getelementptr inbounds nuw i8, ptr %692, i32 1
  store ptr %incdec.ptr913, ptr %p, align 8, !tbaa !21
  %693 = load i8, ptr %692, align 1, !tbaa !25
  %conv914 = zext i8 %693 to i32
  %idx.ext915 = sext i32 %conv914 to i64
  %idx.neg916 = sub i64 0, %idx.ext915
  %add.ptr917 = getelementptr inbounds i8, ptr %691, i64 %idx.neg916
  %694 = load i8, ptr %add.ptr917, align 1, !tbaa !25
  store i8 %694, ptr %c, align 1, !tbaa !25
  %695 = load i8, ptr %c, align 1, !tbaa !25
  %conv918 = zext i8 %695 to i32
  %696 = load i32, ptr %x, align 4, !tbaa !5
  %add919 = add nsw i32 %696, %conv918
  store i32 %add919, ptr %x, align 4, !tbaa !5
  %697 = load i8, ptr %c, align 1, !tbaa !25
  %conv920 = zext i8 %697 to i32
  %698 = load i32, ptr %y, align 4, !tbaa !5
  %add921 = add nsw i32 %698, %conv920
  store i32 %add921, ptr %y, align 4, !tbaa !5
  %699 = load i8, ptr %c, align 1, !tbaa !25
  %conv922 = zext i8 %699 to i32
  %700 = load i32, ptr %w, align 4, !tbaa !5
  %sub923 = sub nsw i32 %700, %conv922
  store i32 %sub923, ptr %w, align 4, !tbaa !5
  %701 = load ptr, ptr %cp, align 8, !tbaa !21
  %702 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr924 = getelementptr inbounds nuw i8, ptr %702, i32 1
  store ptr %incdec.ptr924, ptr %p, align 8, !tbaa !21
  %703 = load i8, ptr %702, align 1, !tbaa !25
  %conv925 = zext i8 %703 to i32
  %idx.ext926 = sext i32 %conv925 to i64
  %idx.neg927 = sub i64 0, %idx.ext926
  %add.ptr928 = getelementptr inbounds i8, ptr %701, i64 %idx.neg927
  %704 = load i8, ptr %add.ptr928, align 1, !tbaa !25
  store i8 %704, ptr %c, align 1, !tbaa !25
  %705 = load i8, ptr %c, align 1, !tbaa !25
  %conv929 = zext i8 %705 to i32
  %mul930 = mul nsw i32 4, %conv929
  %706 = load i32, ptr %x, align 4, !tbaa !5
  %add931 = add nsw i32 %706, %mul930
  store i32 %add931, ptr %x, align 4, !tbaa !5
  %707 = load i8, ptr %c, align 1, !tbaa !25
  %conv932 = zext i8 %707 to i32
  %708 = load i32, ptr %y, align 4, !tbaa !5
  %add933 = add nsw i32 %708, %conv932
  store i32 %add933, ptr %y, align 4, !tbaa !5
  %709 = load i8, ptr %c, align 1, !tbaa !25
  %conv934 = zext i8 %709 to i32
  %mul935 = mul nsw i32 2, %conv934
  %710 = load i32, ptr %w, align 4, !tbaa !5
  %sub936 = sub nsw i32 %710, %mul935
  store i32 %sub936, ptr %w, align 4, !tbaa !5
  %711 = load ptr, ptr %cp, align 8, !tbaa !21
  %712 = load ptr, ptr %p, align 8, !tbaa !21
  %713 = load i8, ptr %712, align 1, !tbaa !25
  %conv937 = zext i8 %713 to i32
  %idx.ext938 = sext i32 %conv937 to i64
  %idx.neg939 = sub i64 0, %idx.ext938
  %add.ptr940 = getelementptr inbounds i8, ptr %711, i64 %idx.neg939
  %714 = load i8, ptr %add.ptr940, align 1, !tbaa !25
  store i8 %714, ptr %c, align 1, !tbaa !25
  %715 = load i8, ptr %c, align 1, !tbaa !25
  %conv941 = zext i8 %715 to i32
  %mul942 = mul nsw i32 9, %conv941
  %716 = load i32, ptr %x, align 4, !tbaa !5
  %add943 = add nsw i32 %716, %mul942
  store i32 %add943, ptr %x, align 4, !tbaa !5
  %717 = load i8, ptr %c, align 1, !tbaa !25
  %conv944 = zext i8 %717 to i32
  %718 = load i32, ptr %y, align 4, !tbaa !5
  %add945 = add nsw i32 %718, %conv944
  store i32 %add945, ptr %y, align 4, !tbaa !5
  %719 = load i8, ptr %c, align 1, !tbaa !25
  %conv946 = zext i8 %719 to i32
  %mul947 = mul nsw i32 3, %conv946
  %720 = load i32, ptr %w, align 4, !tbaa !5
  %sub948 = sub nsw i32 %720, %mul947
  store i32 %sub948, ptr %w, align 4, !tbaa !5
  %721 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %sub949 = sub nsw i32 %721, 6
  %722 = load ptr, ptr %p, align 8, !tbaa !21
  %idx.ext950 = sext i32 %sub949 to i64
  %add.ptr951 = getelementptr inbounds i8, ptr %722, i64 %idx.ext950
  store ptr %add.ptr951, ptr %p, align 8, !tbaa !21
  %723 = load ptr, ptr %cp, align 8, !tbaa !21
  %724 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr952 = getelementptr inbounds nuw i8, ptr %724, i32 1
  store ptr %incdec.ptr952, ptr %p, align 8, !tbaa !21
  %725 = load i8, ptr %724, align 1, !tbaa !25
  %conv953 = zext i8 %725 to i32
  %idx.ext954 = sext i32 %conv953 to i64
  %idx.neg955 = sub i64 0, %idx.ext954
  %add.ptr956 = getelementptr inbounds i8, ptr %723, i64 %idx.neg955
  %726 = load i8, ptr %add.ptr956, align 1, !tbaa !25
  store i8 %726, ptr %c, align 1, !tbaa !25
  %727 = load i8, ptr %c, align 1, !tbaa !25
  %conv957 = zext i8 %727 to i32
  %mul958 = mul nsw i32 9, %conv957
  %728 = load i32, ptr %x, align 4, !tbaa !5
  %add959 = add nsw i32 %728, %mul958
  store i32 %add959, ptr %x, align 4, !tbaa !5
  %729 = load ptr, ptr %cp, align 8, !tbaa !21
  %730 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr960 = getelementptr inbounds nuw i8, ptr %730, i32 1
  store ptr %incdec.ptr960, ptr %p, align 8, !tbaa !21
  %731 = load i8, ptr %730, align 1, !tbaa !25
  %conv961 = zext i8 %731 to i32
  %idx.ext962 = sext i32 %conv961 to i64
  %idx.neg963 = sub i64 0, %idx.ext962
  %add.ptr964 = getelementptr inbounds i8, ptr %729, i64 %idx.neg963
  %732 = load i8, ptr %add.ptr964, align 1, !tbaa !25
  store i8 %732, ptr %c, align 1, !tbaa !25
  %733 = load i8, ptr %c, align 1, !tbaa !25
  %conv965 = zext i8 %733 to i32
  %mul966 = mul nsw i32 4, %conv965
  %734 = load i32, ptr %x, align 4, !tbaa !5
  %add967 = add nsw i32 %734, %mul966
  store i32 %add967, ptr %x, align 4, !tbaa !5
  %735 = load ptr, ptr %cp, align 8, !tbaa !21
  %736 = load ptr, ptr %p, align 8, !tbaa !21
  %737 = load i8, ptr %736, align 1, !tbaa !25
  %conv968 = zext i8 %737 to i32
  %idx.ext969 = sext i32 %conv968 to i64
  %idx.neg970 = sub i64 0, %idx.ext969
  %add.ptr971 = getelementptr inbounds i8, ptr %735, i64 %idx.neg970
  %738 = load i8, ptr %add.ptr971, align 1, !tbaa !25
  store i8 %738, ptr %c, align 1, !tbaa !25
  %739 = load i8, ptr %c, align 1, !tbaa !25
  %conv972 = zext i8 %739 to i32
  %740 = load i32, ptr %x, align 4, !tbaa !5
  %add973 = add nsw i32 %740, %conv972
  store i32 %add973, ptr %x, align 4, !tbaa !5
  %741 = load ptr, ptr %p, align 8, !tbaa !21
  %add.ptr974 = getelementptr inbounds i8, ptr %741, i64 2
  store ptr %add.ptr974, ptr %p, align 8, !tbaa !21
  %742 = load ptr, ptr %cp, align 8, !tbaa !21
  %743 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr975 = getelementptr inbounds nuw i8, ptr %743, i32 1
  store ptr %incdec.ptr975, ptr %p, align 8, !tbaa !21
  %744 = load i8, ptr %743, align 1, !tbaa !25
  %conv976 = zext i8 %744 to i32
  %idx.ext977 = sext i32 %conv976 to i64
  %idx.neg978 = sub i64 0, %idx.ext977
  %add.ptr979 = getelementptr inbounds i8, ptr %742, i64 %idx.neg978
  %745 = load i8, ptr %add.ptr979, align 1, !tbaa !25
  store i8 %745, ptr %c, align 1, !tbaa !25
  %746 = load i8, ptr %c, align 1, !tbaa !25
  %conv980 = zext i8 %746 to i32
  %747 = load i32, ptr %x, align 4, !tbaa !5
  %add981 = add nsw i32 %747, %conv980
  store i32 %add981, ptr %x, align 4, !tbaa !5
  %748 = load ptr, ptr %cp, align 8, !tbaa !21
  %749 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr982 = getelementptr inbounds nuw i8, ptr %749, i32 1
  store ptr %incdec.ptr982, ptr %p, align 8, !tbaa !21
  %750 = load i8, ptr %749, align 1, !tbaa !25
  %conv983 = zext i8 %750 to i32
  %idx.ext984 = sext i32 %conv983 to i64
  %idx.neg985 = sub i64 0, %idx.ext984
  %add.ptr986 = getelementptr inbounds i8, ptr %748, i64 %idx.neg985
  %751 = load i8, ptr %add.ptr986, align 1, !tbaa !25
  store i8 %751, ptr %c, align 1, !tbaa !25
  %752 = load i8, ptr %c, align 1, !tbaa !25
  %conv987 = zext i8 %752 to i32
  %mul988 = mul nsw i32 4, %conv987
  %753 = load i32, ptr %x, align 4, !tbaa !5
  %add989 = add nsw i32 %753, %mul988
  store i32 %add989, ptr %x, align 4, !tbaa !5
  %754 = load ptr, ptr %cp, align 8, !tbaa !21
  %755 = load ptr, ptr %p, align 8, !tbaa !21
  %756 = load i8, ptr %755, align 1, !tbaa !25
  %conv990 = zext i8 %756 to i32
  %idx.ext991 = sext i32 %conv990 to i64
  %idx.neg992 = sub i64 0, %idx.ext991
  %add.ptr993 = getelementptr inbounds i8, ptr %754, i64 %idx.neg992
  %757 = load i8, ptr %add.ptr993, align 1, !tbaa !25
  store i8 %757, ptr %c, align 1, !tbaa !25
  %758 = load i8, ptr %c, align 1, !tbaa !25
  %conv994 = zext i8 %758 to i32
  %mul995 = mul nsw i32 9, %conv994
  %759 = load i32, ptr %x, align 4, !tbaa !5
  %add996 = add nsw i32 %759, %mul995
  store i32 %add996, ptr %x, align 4, !tbaa !5
  %760 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %sub997 = sub nsw i32 %760, 6
  %761 = load ptr, ptr %p, align 8, !tbaa !21
  %idx.ext998 = sext i32 %sub997 to i64
  %add.ptr999 = getelementptr inbounds i8, ptr %761, i64 %idx.ext998
  store ptr %add.ptr999, ptr %p, align 8, !tbaa !21
  %762 = load ptr, ptr %cp, align 8, !tbaa !21
  %763 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr1000 = getelementptr inbounds nuw i8, ptr %763, i32 1
  store ptr %incdec.ptr1000, ptr %p, align 8, !tbaa !21
  %764 = load i8, ptr %763, align 1, !tbaa !25
  %conv1001 = zext i8 %764 to i32
  %idx.ext1002 = sext i32 %conv1001 to i64
  %idx.neg1003 = sub i64 0, %idx.ext1002
  %add.ptr1004 = getelementptr inbounds i8, ptr %762, i64 %idx.neg1003
  %765 = load i8, ptr %add.ptr1004, align 1, !tbaa !25
  store i8 %765, ptr %c, align 1, !tbaa !25
  %766 = load i8, ptr %c, align 1, !tbaa !25
  %conv1005 = zext i8 %766 to i32
  %mul1006 = mul nsw i32 9, %conv1005
  %767 = load i32, ptr %x, align 4, !tbaa !5
  %add1007 = add nsw i32 %767, %mul1006
  store i32 %add1007, ptr %x, align 4, !tbaa !5
  %768 = load i8, ptr %c, align 1, !tbaa !25
  %conv1008 = zext i8 %768 to i32
  %769 = load i32, ptr %y, align 4, !tbaa !5
  %add1009 = add nsw i32 %769, %conv1008
  store i32 %add1009, ptr %y, align 4, !tbaa !5
  %770 = load i8, ptr %c, align 1, !tbaa !25
  %conv1010 = zext i8 %770 to i32
  %mul1011 = mul nsw i32 3, %conv1010
  %771 = load i32, ptr %w, align 4, !tbaa !5
  %sub1012 = sub nsw i32 %771, %mul1011
  store i32 %sub1012, ptr %w, align 4, !tbaa !5
  %772 = load ptr, ptr %cp, align 8, !tbaa !21
  %773 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr1013 = getelementptr inbounds nuw i8, ptr %773, i32 1
  store ptr %incdec.ptr1013, ptr %p, align 8, !tbaa !21
  %774 = load i8, ptr %773, align 1, !tbaa !25
  %conv1014 = zext i8 %774 to i32
  %idx.ext1015 = sext i32 %conv1014 to i64
  %idx.neg1016 = sub i64 0, %idx.ext1015
  %add.ptr1017 = getelementptr inbounds i8, ptr %772, i64 %idx.neg1016
  %775 = load i8, ptr %add.ptr1017, align 1, !tbaa !25
  store i8 %775, ptr %c, align 1, !tbaa !25
  %776 = load i8, ptr %c, align 1, !tbaa !25
  %conv1018 = zext i8 %776 to i32
  %mul1019 = mul nsw i32 4, %conv1018
  %777 = load i32, ptr %x, align 4, !tbaa !5
  %add1020 = add nsw i32 %777, %mul1019
  store i32 %add1020, ptr %x, align 4, !tbaa !5
  %778 = load i8, ptr %c, align 1, !tbaa !25
  %conv1021 = zext i8 %778 to i32
  %779 = load i32, ptr %y, align 4, !tbaa !5
  %add1022 = add nsw i32 %779, %conv1021
  store i32 %add1022, ptr %y, align 4, !tbaa !5
  %780 = load i8, ptr %c, align 1, !tbaa !25
  %conv1023 = zext i8 %780 to i32
  %mul1024 = mul nsw i32 2, %conv1023
  %781 = load i32, ptr %w, align 4, !tbaa !5
  %sub1025 = sub nsw i32 %781, %mul1024
  store i32 %sub1025, ptr %w, align 4, !tbaa !5
  %782 = load ptr, ptr %cp, align 8, !tbaa !21
  %783 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr1026 = getelementptr inbounds nuw i8, ptr %783, i32 1
  store ptr %incdec.ptr1026, ptr %p, align 8, !tbaa !21
  %784 = load i8, ptr %783, align 1, !tbaa !25
  %conv1027 = zext i8 %784 to i32
  %idx.ext1028 = sext i32 %conv1027 to i64
  %idx.neg1029 = sub i64 0, %idx.ext1028
  %add.ptr1030 = getelementptr inbounds i8, ptr %782, i64 %idx.neg1029
  %785 = load i8, ptr %add.ptr1030, align 1, !tbaa !25
  store i8 %785, ptr %c, align 1, !tbaa !25
  %786 = load i8, ptr %c, align 1, !tbaa !25
  %conv1031 = zext i8 %786 to i32
  %787 = load i32, ptr %x, align 4, !tbaa !5
  %add1032 = add nsw i32 %787, %conv1031
  store i32 %add1032, ptr %x, align 4, !tbaa !5
  %788 = load i8, ptr %c, align 1, !tbaa !25
  %conv1033 = zext i8 %788 to i32
  %789 = load i32, ptr %y, align 4, !tbaa !5
  %add1034 = add nsw i32 %789, %conv1033
  store i32 %add1034, ptr %y, align 4, !tbaa !5
  %790 = load i8, ptr %c, align 1, !tbaa !25
  %conv1035 = zext i8 %790 to i32
  %791 = load i32, ptr %w, align 4, !tbaa !5
  %sub1036 = sub nsw i32 %791, %conv1035
  store i32 %sub1036, ptr %w, align 4, !tbaa !5
  %792 = load ptr, ptr %cp, align 8, !tbaa !21
  %793 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr1037 = getelementptr inbounds nuw i8, ptr %793, i32 1
  store ptr %incdec.ptr1037, ptr %p, align 8, !tbaa !21
  %794 = load i8, ptr %793, align 1, !tbaa !25
  %conv1038 = zext i8 %794 to i32
  %idx.ext1039 = sext i32 %conv1038 to i64
  %idx.neg1040 = sub i64 0, %idx.ext1039
  %add.ptr1041 = getelementptr inbounds i8, ptr %792, i64 %idx.neg1040
  %795 = load i8, ptr %add.ptr1041, align 1, !tbaa !25
  store i8 %795, ptr %c, align 1, !tbaa !25
  %796 = load i8, ptr %c, align 1, !tbaa !25
  %conv1042 = zext i8 %796 to i32
  %797 = load i32, ptr %y, align 4, !tbaa !5
  %add1043 = add nsw i32 %797, %conv1042
  store i32 %add1043, ptr %y, align 4, !tbaa !5
  %798 = load ptr, ptr %cp, align 8, !tbaa !21
  %799 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr1044 = getelementptr inbounds nuw i8, ptr %799, i32 1
  store ptr %incdec.ptr1044, ptr %p, align 8, !tbaa !21
  %800 = load i8, ptr %799, align 1, !tbaa !25
  %conv1045 = zext i8 %800 to i32
  %idx.ext1046 = sext i32 %conv1045 to i64
  %idx.neg1047 = sub i64 0, %idx.ext1046
  %add.ptr1048 = getelementptr inbounds i8, ptr %798, i64 %idx.neg1047
  %801 = load i8, ptr %add.ptr1048, align 1, !tbaa !25
  store i8 %801, ptr %c, align 1, !tbaa !25
  %802 = load i8, ptr %c, align 1, !tbaa !25
  %conv1049 = zext i8 %802 to i32
  %803 = load i32, ptr %x, align 4, !tbaa !5
  %add1050 = add nsw i32 %803, %conv1049
  store i32 %add1050, ptr %x, align 4, !tbaa !5
  %804 = load i8, ptr %c, align 1, !tbaa !25
  %conv1051 = zext i8 %804 to i32
  %805 = load i32, ptr %y, align 4, !tbaa !5
  %add1052 = add nsw i32 %805, %conv1051
  store i32 %add1052, ptr %y, align 4, !tbaa !5
  %806 = load i8, ptr %c, align 1, !tbaa !25
  %conv1053 = zext i8 %806 to i32
  %807 = load i32, ptr %w, align 4, !tbaa !5
  %add1054 = add nsw i32 %807, %conv1053
  store i32 %add1054, ptr %w, align 4, !tbaa !5
  %808 = load ptr, ptr %cp, align 8, !tbaa !21
  %809 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr1055 = getelementptr inbounds nuw i8, ptr %809, i32 1
  store ptr %incdec.ptr1055, ptr %p, align 8, !tbaa !21
  %810 = load i8, ptr %809, align 1, !tbaa !25
  %conv1056 = zext i8 %810 to i32
  %idx.ext1057 = sext i32 %conv1056 to i64
  %idx.neg1058 = sub i64 0, %idx.ext1057
  %add.ptr1059 = getelementptr inbounds i8, ptr %808, i64 %idx.neg1058
  %811 = load i8, ptr %add.ptr1059, align 1, !tbaa !25
  store i8 %811, ptr %c, align 1, !tbaa !25
  %812 = load i8, ptr %c, align 1, !tbaa !25
  %conv1060 = zext i8 %812 to i32
  %mul1061 = mul nsw i32 4, %conv1060
  %813 = load i32, ptr %x, align 4, !tbaa !5
  %add1062 = add nsw i32 %813, %mul1061
  store i32 %add1062, ptr %x, align 4, !tbaa !5
  %814 = load i8, ptr %c, align 1, !tbaa !25
  %conv1063 = zext i8 %814 to i32
  %815 = load i32, ptr %y, align 4, !tbaa !5
  %add1064 = add nsw i32 %815, %conv1063
  store i32 %add1064, ptr %y, align 4, !tbaa !5
  %816 = load i8, ptr %c, align 1, !tbaa !25
  %conv1065 = zext i8 %816 to i32
  %mul1066 = mul nsw i32 2, %conv1065
  %817 = load i32, ptr %w, align 4, !tbaa !5
  %add1067 = add nsw i32 %817, %mul1066
  store i32 %add1067, ptr %w, align 4, !tbaa !5
  %818 = load ptr, ptr %cp, align 8, !tbaa !21
  %819 = load ptr, ptr %p, align 8, !tbaa !21
  %820 = load i8, ptr %819, align 1, !tbaa !25
  %conv1068 = zext i8 %820 to i32
  %idx.ext1069 = sext i32 %conv1068 to i64
  %idx.neg1070 = sub i64 0, %idx.ext1069
  %add.ptr1071 = getelementptr inbounds i8, ptr %818, i64 %idx.neg1070
  %821 = load i8, ptr %add.ptr1071, align 1, !tbaa !25
  store i8 %821, ptr %c, align 1, !tbaa !25
  %822 = load i8, ptr %c, align 1, !tbaa !25
  %conv1072 = zext i8 %822 to i32
  %mul1073 = mul nsw i32 9, %conv1072
  %823 = load i32, ptr %x, align 4, !tbaa !5
  %add1074 = add nsw i32 %823, %mul1073
  store i32 %add1074, ptr %x, align 4, !tbaa !5
  %824 = load i8, ptr %c, align 1, !tbaa !25
  %conv1075 = zext i8 %824 to i32
  %825 = load i32, ptr %y, align 4, !tbaa !5
  %add1076 = add nsw i32 %825, %conv1075
  store i32 %add1076, ptr %y, align 4, !tbaa !5
  %826 = load i8, ptr %c, align 1, !tbaa !25
  %conv1077 = zext i8 %826 to i32
  %mul1078 = mul nsw i32 3, %conv1077
  %827 = load i32, ptr %w, align 4, !tbaa !5
  %add1079 = add nsw i32 %827, %mul1078
  store i32 %add1079, ptr %w, align 4, !tbaa !5
  %828 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %sub1080 = sub nsw i32 %828, 5
  %829 = load ptr, ptr %p, align 8, !tbaa !21
  %idx.ext1081 = sext i32 %sub1080 to i64
  %add.ptr1082 = getelementptr inbounds i8, ptr %829, i64 %idx.ext1081
  store ptr %add.ptr1082, ptr %p, align 8, !tbaa !21
  %830 = load ptr, ptr %cp, align 8, !tbaa !21
  %831 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr1083 = getelementptr inbounds nuw i8, ptr %831, i32 1
  store ptr %incdec.ptr1083, ptr %p, align 8, !tbaa !21
  %832 = load i8, ptr %831, align 1, !tbaa !25
  %conv1084 = zext i8 %832 to i32
  %idx.ext1085 = sext i32 %conv1084 to i64
  %idx.neg1086 = sub i64 0, %idx.ext1085
  %add.ptr1087 = getelementptr inbounds i8, ptr %830, i64 %idx.neg1086
  %833 = load i8, ptr %add.ptr1087, align 1, !tbaa !25
  store i8 %833, ptr %c, align 1, !tbaa !25
  %834 = load i8, ptr %c, align 1, !tbaa !25
  %conv1088 = zext i8 %834 to i32
  %mul1089 = mul nsw i32 4, %conv1088
  %835 = load i32, ptr %x, align 4, !tbaa !5
  %add1090 = add nsw i32 %835, %mul1089
  store i32 %add1090, ptr %x, align 4, !tbaa !5
  %836 = load i8, ptr %c, align 1, !tbaa !25
  %conv1091 = zext i8 %836 to i32
  %mul1092 = mul nsw i32 4, %conv1091
  %837 = load i32, ptr %y, align 4, !tbaa !5
  %add1093 = add nsw i32 %837, %mul1092
  store i32 %add1093, ptr %y, align 4, !tbaa !5
  %838 = load i8, ptr %c, align 1, !tbaa !25
  %conv1094 = zext i8 %838 to i32
  %mul1095 = mul nsw i32 4, %conv1094
  %839 = load i32, ptr %w, align 4, !tbaa !5
  %sub1096 = sub nsw i32 %839, %mul1095
  store i32 %sub1096, ptr %w, align 4, !tbaa !5
  %840 = load ptr, ptr %cp, align 8, !tbaa !21
  %841 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr1097 = getelementptr inbounds nuw i8, ptr %841, i32 1
  store ptr %incdec.ptr1097, ptr %p, align 8, !tbaa !21
  %842 = load i8, ptr %841, align 1, !tbaa !25
  %conv1098 = zext i8 %842 to i32
  %idx.ext1099 = sext i32 %conv1098 to i64
  %idx.neg1100 = sub i64 0, %idx.ext1099
  %add.ptr1101 = getelementptr inbounds i8, ptr %840, i64 %idx.neg1100
  %843 = load i8, ptr %add.ptr1101, align 1, !tbaa !25
  store i8 %843, ptr %c, align 1, !tbaa !25
  %844 = load i8, ptr %c, align 1, !tbaa !25
  %conv1102 = zext i8 %844 to i32
  %845 = load i32, ptr %x, align 4, !tbaa !5
  %add1103 = add nsw i32 %845, %conv1102
  store i32 %add1103, ptr %x, align 4, !tbaa !5
  %846 = load i8, ptr %c, align 1, !tbaa !25
  %conv1104 = zext i8 %846 to i32
  %mul1105 = mul nsw i32 4, %conv1104
  %847 = load i32, ptr %y, align 4, !tbaa !5
  %add1106 = add nsw i32 %847, %mul1105
  store i32 %add1106, ptr %y, align 4, !tbaa !5
  %848 = load i8, ptr %c, align 1, !tbaa !25
  %conv1107 = zext i8 %848 to i32
  %mul1108 = mul nsw i32 2, %conv1107
  %849 = load i32, ptr %w, align 4, !tbaa !5
  %sub1109 = sub nsw i32 %849, %mul1108
  store i32 %sub1109, ptr %w, align 4, !tbaa !5
  %850 = load ptr, ptr %cp, align 8, !tbaa !21
  %851 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr1110 = getelementptr inbounds nuw i8, ptr %851, i32 1
  store ptr %incdec.ptr1110, ptr %p, align 8, !tbaa !21
  %852 = load i8, ptr %851, align 1, !tbaa !25
  %conv1111 = zext i8 %852 to i32
  %idx.ext1112 = sext i32 %conv1111 to i64
  %idx.neg1113 = sub i64 0, %idx.ext1112
  %add.ptr1114 = getelementptr inbounds i8, ptr %850, i64 %idx.neg1113
  %853 = load i8, ptr %add.ptr1114, align 1, !tbaa !25
  store i8 %853, ptr %c, align 1, !tbaa !25
  %854 = load i8, ptr %c, align 1, !tbaa !25
  %conv1115 = zext i8 %854 to i32
  %mul1116 = mul nsw i32 4, %conv1115
  %855 = load i32, ptr %y, align 4, !tbaa !5
  %add1117 = add nsw i32 %855, %mul1116
  store i32 %add1117, ptr %y, align 4, !tbaa !5
  %856 = load ptr, ptr %cp, align 8, !tbaa !21
  %857 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr1118 = getelementptr inbounds nuw i8, ptr %857, i32 1
  store ptr %incdec.ptr1118, ptr %p, align 8, !tbaa !21
  %858 = load i8, ptr %857, align 1, !tbaa !25
  %conv1119 = zext i8 %858 to i32
  %idx.ext1120 = sext i32 %conv1119 to i64
  %idx.neg1121 = sub i64 0, %idx.ext1120
  %add.ptr1122 = getelementptr inbounds i8, ptr %856, i64 %idx.neg1121
  %859 = load i8, ptr %add.ptr1122, align 1, !tbaa !25
  store i8 %859, ptr %c, align 1, !tbaa !25
  %860 = load i8, ptr %c, align 1, !tbaa !25
  %conv1123 = zext i8 %860 to i32
  %861 = load i32, ptr %x, align 4, !tbaa !5
  %add1124 = add nsw i32 %861, %conv1123
  store i32 %add1124, ptr %x, align 4, !tbaa !5
  %862 = load i8, ptr %c, align 1, !tbaa !25
  %conv1125 = zext i8 %862 to i32
  %mul1126 = mul nsw i32 4, %conv1125
  %863 = load i32, ptr %y, align 4, !tbaa !5
  %add1127 = add nsw i32 %863, %mul1126
  store i32 %add1127, ptr %y, align 4, !tbaa !5
  %864 = load i8, ptr %c, align 1, !tbaa !25
  %conv1128 = zext i8 %864 to i32
  %mul1129 = mul nsw i32 2, %conv1128
  %865 = load i32, ptr %w, align 4, !tbaa !5
  %add1130 = add nsw i32 %865, %mul1129
  store i32 %add1130, ptr %w, align 4, !tbaa !5
  %866 = load ptr, ptr %cp, align 8, !tbaa !21
  %867 = load ptr, ptr %p, align 8, !tbaa !21
  %868 = load i8, ptr %867, align 1, !tbaa !25
  %conv1131 = zext i8 %868 to i32
  %idx.ext1132 = sext i32 %conv1131 to i64
  %idx.neg1133 = sub i64 0, %idx.ext1132
  %add.ptr1134 = getelementptr inbounds i8, ptr %866, i64 %idx.neg1133
  %869 = load i8, ptr %add.ptr1134, align 1, !tbaa !25
  store i8 %869, ptr %c, align 1, !tbaa !25
  %870 = load i8, ptr %c, align 1, !tbaa !25
  %conv1135 = zext i8 %870 to i32
  %mul1136 = mul nsw i32 4, %conv1135
  %871 = load i32, ptr %x, align 4, !tbaa !5
  %add1137 = add nsw i32 %871, %mul1136
  store i32 %add1137, ptr %x, align 4, !tbaa !5
  %872 = load i8, ptr %c, align 1, !tbaa !25
  %conv1138 = zext i8 %872 to i32
  %mul1139 = mul nsw i32 4, %conv1138
  %873 = load i32, ptr %y, align 4, !tbaa !5
  %add1140 = add nsw i32 %873, %mul1139
  store i32 %add1140, ptr %y, align 4, !tbaa !5
  %874 = load i8, ptr %c, align 1, !tbaa !25
  %conv1141 = zext i8 %874 to i32
  %mul1142 = mul nsw i32 4, %conv1141
  %875 = load i32, ptr %w, align 4, !tbaa !5
  %add1143 = add nsw i32 %875, %mul1142
  store i32 %add1143, ptr %w, align 4, !tbaa !5
  %876 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %sub1144 = sub nsw i32 %876, 3
  %877 = load ptr, ptr %p, align 8, !tbaa !21
  %idx.ext1145 = sext i32 %sub1144 to i64
  %add.ptr1146 = getelementptr inbounds i8, ptr %877, i64 %idx.ext1145
  store ptr %add.ptr1146, ptr %p, align 8, !tbaa !21
  %878 = load ptr, ptr %cp, align 8, !tbaa !21
  %879 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr1147 = getelementptr inbounds nuw i8, ptr %879, i32 1
  store ptr %incdec.ptr1147, ptr %p, align 8, !tbaa !21
  %880 = load i8, ptr %879, align 1, !tbaa !25
  %conv1148 = zext i8 %880 to i32
  %idx.ext1149 = sext i32 %conv1148 to i64
  %idx.neg1150 = sub i64 0, %idx.ext1149
  %add.ptr1151 = getelementptr inbounds i8, ptr %878, i64 %idx.neg1150
  %881 = load i8, ptr %add.ptr1151, align 1, !tbaa !25
  store i8 %881, ptr %c, align 1, !tbaa !25
  %882 = load i8, ptr %c, align 1, !tbaa !25
  %conv1152 = zext i8 %882 to i32
  %883 = load i32, ptr %x, align 4, !tbaa !5
  %add1153 = add nsw i32 %883, %conv1152
  store i32 %add1153, ptr %x, align 4, !tbaa !5
  %884 = load i8, ptr %c, align 1, !tbaa !25
  %conv1154 = zext i8 %884 to i32
  %mul1155 = mul nsw i32 9, %conv1154
  %885 = load i32, ptr %y, align 4, !tbaa !5
  %add1156 = add nsw i32 %885, %mul1155
  store i32 %add1156, ptr %y, align 4, !tbaa !5
  %886 = load i8, ptr %c, align 1, !tbaa !25
  %conv1157 = zext i8 %886 to i32
  %mul1158 = mul nsw i32 3, %conv1157
  %887 = load i32, ptr %w, align 4, !tbaa !5
  %sub1159 = sub nsw i32 %887, %mul1158
  store i32 %sub1159, ptr %w, align 4, !tbaa !5
  %888 = load ptr, ptr %cp, align 8, !tbaa !21
  %889 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr1160 = getelementptr inbounds nuw i8, ptr %889, i32 1
  store ptr %incdec.ptr1160, ptr %p, align 8, !tbaa !21
  %890 = load i8, ptr %889, align 1, !tbaa !25
  %conv1161 = zext i8 %890 to i32
  %idx.ext1162 = sext i32 %conv1161 to i64
  %idx.neg1163 = sub i64 0, %idx.ext1162
  %add.ptr1164 = getelementptr inbounds i8, ptr %888, i64 %idx.neg1163
  %891 = load i8, ptr %add.ptr1164, align 1, !tbaa !25
  store i8 %891, ptr %c, align 1, !tbaa !25
  %892 = load i8, ptr %c, align 1, !tbaa !25
  %conv1165 = zext i8 %892 to i32
  %mul1166 = mul nsw i32 9, %conv1165
  %893 = load i32, ptr %y, align 4, !tbaa !5
  %add1167 = add nsw i32 %893, %mul1166
  store i32 %add1167, ptr %y, align 4, !tbaa !5
  %894 = load ptr, ptr %cp, align 8, !tbaa !21
  %895 = load ptr, ptr %p, align 8, !tbaa !21
  %896 = load i8, ptr %895, align 1, !tbaa !25
  %conv1168 = zext i8 %896 to i32
  %idx.ext1169 = sext i32 %conv1168 to i64
  %idx.neg1170 = sub i64 0, %idx.ext1169
  %add.ptr1171 = getelementptr inbounds i8, ptr %894, i64 %idx.neg1170
  %897 = load i8, ptr %add.ptr1171, align 1, !tbaa !25
  store i8 %897, ptr %c, align 1, !tbaa !25
  %898 = load i8, ptr %c, align 1, !tbaa !25
  %conv1172 = zext i8 %898 to i32
  %899 = load i32, ptr %x, align 4, !tbaa !5
  %add1173 = add nsw i32 %899, %conv1172
  store i32 %add1173, ptr %x, align 4, !tbaa !5
  %900 = load i8, ptr %c, align 1, !tbaa !25
  %conv1174 = zext i8 %900 to i32
  %mul1175 = mul nsw i32 9, %conv1174
  %901 = load i32, ptr %y, align 4, !tbaa !5
  %add1176 = add nsw i32 %901, %mul1175
  store i32 %add1176, ptr %y, align 4, !tbaa !5
  %902 = load i8, ptr %c, align 1, !tbaa !25
  %conv1177 = zext i8 %902 to i32
  %mul1178 = mul nsw i32 3, %conv1177
  %903 = load i32, ptr %w, align 4, !tbaa !5
  %add1179 = add nsw i32 %903, %mul1178
  store i32 %add1179, ptr %w, align 4, !tbaa !5
  %904 = load i32, ptr %y, align 4, !tbaa !5
  %cmp1180 = icmp eq i32 %904, 0
  br i1 %cmp1180, label %if.then1182, label %if.else1183

if.then1182:                                      ; preds = %if.then761
  store float 1.000000e+06, ptr %z, align 4, !tbaa !41
  br label %if.end1187

if.else1183:                                      ; preds = %if.then761
  %905 = load i32, ptr %x, align 4, !tbaa !5
  %conv1184 = sitofp i32 %905 to float
  %906 = load i32, ptr %y, align 4, !tbaa !5
  %conv1185 = sitofp i32 %906 to float
  %div1186 = fdiv float %conv1184, %conv1185
  store float %div1186, ptr %z, align 4, !tbaa !41
  br label %if.end1187

if.end1187:                                       ; preds = %if.else1183, %if.then1182
  %907 = load float, ptr %z, align 4, !tbaa !41
  %conv1188 = fpext float %907 to double
  %cmp1189 = fcmp olt double %conv1188, 5.000000e-01
  br i1 %cmp1189, label %if.then1191, label %if.else1192

if.then1191:                                      ; preds = %if.end1187
  store i32 0, ptr %a, align 4, !tbaa !5
  store i32 1, ptr %b, align 4, !tbaa !5
  br label %if.end1204

if.else1192:                                      ; preds = %if.end1187
  %908 = load float, ptr %z, align 4, !tbaa !41
  %conv1193 = fpext float %908 to double
  %cmp1194 = fcmp ogt double %conv1193, 2.000000e+00
  br i1 %cmp1194, label %if.then1196, label %if.else1197

if.then1196:                                      ; preds = %if.else1192
  store i32 1, ptr %a, align 4, !tbaa !5
  store i32 0, ptr %b, align 4, !tbaa !5
  br label %if.end1203

if.else1197:                                      ; preds = %if.else1192
  %909 = load i32, ptr %w, align 4, !tbaa !5
  %cmp1198 = icmp sgt i32 %909, 0
  br i1 %cmp1198, label %if.then1200, label %if.else1201

if.then1200:                                      ; preds = %if.else1197
  store i32 -1, ptr %a, align 4, !tbaa !5
  store i32 1, ptr %b, align 4, !tbaa !5
  br label %if.end1202

if.else1201:                                      ; preds = %if.else1197
  store i32 1, ptr %a, align 4, !tbaa !5
  store i32 1, ptr %b, align 4, !tbaa !5
  br label %if.end1202

if.end1202:                                       ; preds = %if.else1201, %if.then1200
  br label %if.end1203

if.end1203:                                       ; preds = %if.end1202, %if.then1196
  br label %if.end1204

if.end1204:                                       ; preds = %if.end1203, %if.then1191
  %910 = load i32, ptr %m, align 4, !tbaa !5
  %911 = load ptr, ptr %r.addr, align 8, !tbaa !23
  %912 = load i32, ptr %i, align 4, !tbaa !5
  %913 = load i32, ptr %a, align 4, !tbaa !5
  %add1205 = add nsw i32 %912, %913
  %914 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul1206 = mul nsw i32 %add1205, %914
  %915 = load i32, ptr %j, align 4, !tbaa !5
  %add1207 = add nsw i32 %mul1206, %915
  %916 = load i32, ptr %b, align 4, !tbaa !5
  %add1208 = add nsw i32 %add1207, %916
  %idxprom1209 = sext i32 %add1208 to i64
  %arrayidx1210 = getelementptr inbounds i32, ptr %911, i64 %idxprom1209
  %917 = load i32, ptr %arrayidx1210, align 4, !tbaa !5
  %cmp1211 = icmp sgt i32 %910, %917
  br i1 %cmp1211, label %land.lhs.true1213, label %if.end1249

land.lhs.true1213:                                ; preds = %if.end1204
  %918 = load i32, ptr %m, align 4, !tbaa !5
  %919 = load ptr, ptr %r.addr, align 8, !tbaa !23
  %920 = load i32, ptr %i, align 4, !tbaa !5
  %921 = load i32, ptr %a, align 4, !tbaa !5
  %sub1214 = sub nsw i32 %920, %921
  %922 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul1215 = mul nsw i32 %sub1214, %922
  %923 = load i32, ptr %j, align 4, !tbaa !5
  %add1216 = add nsw i32 %mul1215, %923
  %924 = load i32, ptr %b, align 4, !tbaa !5
  %sub1217 = sub nsw i32 %add1216, %924
  %idxprom1218 = sext i32 %sub1217 to i64
  %arrayidx1219 = getelementptr inbounds i32, ptr %919, i64 %idxprom1218
  %925 = load i32, ptr %arrayidx1219, align 4, !tbaa !5
  %cmp1220 = icmp sge i32 %918, %925
  br i1 %cmp1220, label %land.lhs.true1222, label %if.end1249

land.lhs.true1222:                                ; preds = %land.lhs.true1213
  %926 = load i32, ptr %m, align 4, !tbaa !5
  %927 = load ptr, ptr %r.addr, align 8, !tbaa !23
  %928 = load i32, ptr %i, align 4, !tbaa !5
  %929 = load i32, ptr %a, align 4, !tbaa !5
  %mul1223 = mul nsw i32 2, %929
  %add1224 = add nsw i32 %928, %mul1223
  %930 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul1225 = mul nsw i32 %add1224, %930
  %931 = load i32, ptr %j, align 4, !tbaa !5
  %add1226 = add nsw i32 %mul1225, %931
  %932 = load i32, ptr %b, align 4, !tbaa !5
  %mul1227 = mul nsw i32 2, %932
  %add1228 = add nsw i32 %add1226, %mul1227
  %idxprom1229 = sext i32 %add1228 to i64
  %arrayidx1230 = getelementptr inbounds i32, ptr %927, i64 %idxprom1229
  %933 = load i32, ptr %arrayidx1230, align 4, !tbaa !5
  %cmp1231 = icmp sgt i32 %926, %933
  br i1 %cmp1231, label %land.lhs.true1233, label %if.end1249

land.lhs.true1233:                                ; preds = %land.lhs.true1222
  %934 = load i32, ptr %m, align 4, !tbaa !5
  %935 = load ptr, ptr %r.addr, align 8, !tbaa !23
  %936 = load i32, ptr %i, align 4, !tbaa !5
  %937 = load i32, ptr %a, align 4, !tbaa !5
  %mul1234 = mul nsw i32 2, %937
  %sub1235 = sub nsw i32 %936, %mul1234
  %938 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul1236 = mul nsw i32 %sub1235, %938
  %939 = load i32, ptr %j, align 4, !tbaa !5
  %add1237 = add nsw i32 %mul1236, %939
  %940 = load i32, ptr %b, align 4, !tbaa !5
  %mul1238 = mul nsw i32 2, %940
  %sub1239 = sub nsw i32 %add1237, %mul1238
  %idxprom1240 = sext i32 %sub1239 to i64
  %arrayidx1241 = getelementptr inbounds i32, ptr %935, i64 %idxprom1240
  %941 = load i32, ptr %arrayidx1241, align 4, !tbaa !5
  %cmp1242 = icmp sge i32 %934, %941
  br i1 %cmp1242, label %if.then1244, label %if.end1249

if.then1244:                                      ; preds = %land.lhs.true1233
  %942 = load ptr, ptr %mid.addr, align 8, !tbaa !21
  %943 = load i32, ptr %i, align 4, !tbaa !5
  %944 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul1245 = mul nsw i32 %943, %944
  %945 = load i32, ptr %j, align 4, !tbaa !5
  %add1246 = add nsw i32 %mul1245, %945
  %idxprom1247 = sext i32 %add1246 to i64
  %arrayidx1248 = getelementptr inbounds i8, ptr %942, i64 %idxprom1247
  store i8 2, ptr %arrayidx1248, align 1, !tbaa !25
  br label %if.end1249

if.end1249:                                       ; preds = %if.then1244, %land.lhs.true1233, %land.lhs.true1222, %land.lhs.true1213, %if.end1204
  br label %if.end1250

if.end1250:                                       ; preds = %if.end1249, %if.end758
  br label %if.end1251

if.end1251:                                       ; preds = %if.end1250, %for.body297
  br label %for.inc1252

for.inc1252:                                      ; preds = %if.end1251
  %946 = load i32, ptr %j, align 4, !tbaa !5
  %inc1253 = add nsw i32 %946, 1
  store i32 %inc1253, ptr %j, align 4, !tbaa !5
  br label %for.cond293, !llvm.loop !59

for.end1254:                                      ; preds = %for.cond293
  br label %for.inc1255

for.inc1255:                                      ; preds = %for.end1254
  %947 = load i32, ptr %i, align 4, !tbaa !5
  %inc1256 = add nsw i32 %947, 1
  store i32 %inc1256, ptr %i, align 4, !tbaa !5
  br label %for.cond288, !llvm.loop !60

for.end1257:                                      ; preds = %for.cond288
  call void @llvm.lifetime.end.p0(i64 8, ptr %cp) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %w) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %y) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %x) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %b) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %a) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %m) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %do_symmetry) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %z) #10
  ret void
}

; Function Attrs: nounwind
declare double @sqrt(double noundef) #3

; Function Attrs: nounwind uwtable
define dso_local void @susan_edges_small(ptr noundef %in, ptr noundef %r, ptr noundef %mid, ptr noundef %bp, i32 noundef %max_no, i32 noundef %x_size, i32 noundef %y_size) #0 {
entry:
  %in.addr = alloca ptr, align 8
  %r.addr = alloca ptr, align 8
  %mid.addr = alloca ptr, align 8
  %bp.addr = alloca ptr, align 8
  %max_no.addr = alloca i32, align 4
  %x_size.addr = alloca i32, align 4
  %y_size.addr = alloca i32, align 4
  %z = alloca float, align 4
  %do_symmetry = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %m = alloca i32, align 4
  %n = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %w = alloca i32, align 4
  %c = alloca i8, align 1
  %p = alloca ptr, align 8
  %cp = alloca ptr, align 8
  store ptr %in, ptr %in.addr, align 8, !tbaa !21
  store ptr %r, ptr %r.addr, align 8, !tbaa !23
  store ptr %mid, ptr %mid.addr, align 8, !tbaa !21
  store ptr %bp, ptr %bp.addr, align 8, !tbaa !21
  store i32 %max_no, ptr %max_no.addr, align 4, !tbaa !5
  store i32 %x_size, ptr %x_size.addr, align 4, !tbaa !5
  store i32 %y_size, ptr %y_size.addr, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %z) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %do_symmetry) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %m) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %a) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %b) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %x) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %y) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %w) #10
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %cp) #10
  %0 = load ptr, ptr %r.addr, align 8, !tbaa !23
  %1 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %2 = load i32, ptr %y_size.addr, align 4, !tbaa !5
  %mul = mul nsw i32 %1, %2
  %conv = sext i32 %mul to i64
  %mul1 = mul i64 %conv, 4
  call void @llvm.memset.p0.i64(ptr align 4 %0, i8 0, i64 %mul1, i1 false)
  store i32 730, ptr %max_no.addr, align 4, !tbaa !5
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc81, %entry
  %3 = load i32, ptr %i, align 4, !tbaa !5
  %4 = load i32, ptr %y_size.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %4, 1
  %cmp = icmp slt i32 %3, %sub
  br i1 %cmp, label %for.body, label %for.end83

for.body:                                         ; preds = %for.cond
  store i32 1, ptr %j, align 4, !tbaa !5
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %5 = load i32, ptr %j, align 4, !tbaa !5
  %6 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %sub4 = sub nsw i32 %6, 1
  %cmp5 = icmp slt i32 %5, %sub4
  br i1 %cmp5, label %for.body7, label %for.end

for.body7:                                        ; preds = %for.cond3
  store i32 100, ptr %n, align 4, !tbaa !5
  %7 = load ptr, ptr %in.addr, align 8, !tbaa !21
  %8 = load i32, ptr %i, align 4, !tbaa !5
  %sub8 = sub nsw i32 %8, 1
  %9 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul9 = mul nsw i32 %sub8, %9
  %idx.ext = sext i32 %mul9 to i64
  %add.ptr = getelementptr inbounds i8, ptr %7, i64 %idx.ext
  %10 = load i32, ptr %j, align 4, !tbaa !5
  %idx.ext10 = sext i32 %10 to i64
  %add.ptr11 = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.ext10
  %add.ptr12 = getelementptr inbounds i8, ptr %add.ptr11, i64 -1
  store ptr %add.ptr12, ptr %p, align 8, !tbaa !21
  %11 = load ptr, ptr %bp.addr, align 8, !tbaa !21
  %12 = load ptr, ptr %in.addr, align 8, !tbaa !21
  %13 = load i32, ptr %i, align 4, !tbaa !5
  %14 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul13 = mul nsw i32 %13, %14
  %15 = load i32, ptr %j, align 4, !tbaa !5
  %add = add nsw i32 %mul13, %15
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds i8, ptr %12, i64 %idxprom
  %16 = load i8, ptr %arrayidx, align 1, !tbaa !25
  %conv14 = zext i8 %16 to i32
  %idx.ext15 = sext i32 %conv14 to i64
  %add.ptr16 = getelementptr inbounds i8, ptr %11, i64 %idx.ext15
  store ptr %add.ptr16, ptr %cp, align 8, !tbaa !21
  %17 = load ptr, ptr %cp, align 8, !tbaa !21
  %18 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %18, i32 1
  store ptr %incdec.ptr, ptr %p, align 8, !tbaa !21
  %19 = load i8, ptr %18, align 1, !tbaa !25
  %conv17 = zext i8 %19 to i32
  %idx.ext18 = sext i32 %conv17 to i64
  %idx.neg = sub i64 0, %idx.ext18
  %add.ptr19 = getelementptr inbounds i8, ptr %17, i64 %idx.neg
  %20 = load i8, ptr %add.ptr19, align 1, !tbaa !25
  %conv20 = zext i8 %20 to i32
  %21 = load i32, ptr %n, align 4, !tbaa !5
  %add21 = add nsw i32 %21, %conv20
  store i32 %add21, ptr %n, align 4, !tbaa !5
  %22 = load ptr, ptr %cp, align 8, !tbaa !21
  %23 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr22 = getelementptr inbounds nuw i8, ptr %23, i32 1
  store ptr %incdec.ptr22, ptr %p, align 8, !tbaa !21
  %24 = load i8, ptr %23, align 1, !tbaa !25
  %conv23 = zext i8 %24 to i32
  %idx.ext24 = sext i32 %conv23 to i64
  %idx.neg25 = sub i64 0, %idx.ext24
  %add.ptr26 = getelementptr inbounds i8, ptr %22, i64 %idx.neg25
  %25 = load i8, ptr %add.ptr26, align 1, !tbaa !25
  %conv27 = zext i8 %25 to i32
  %26 = load i32, ptr %n, align 4, !tbaa !5
  %add28 = add nsw i32 %26, %conv27
  store i32 %add28, ptr %n, align 4, !tbaa !5
  %27 = load ptr, ptr %cp, align 8, !tbaa !21
  %28 = load ptr, ptr %p, align 8, !tbaa !21
  %29 = load i8, ptr %28, align 1, !tbaa !25
  %conv29 = zext i8 %29 to i32
  %idx.ext30 = sext i32 %conv29 to i64
  %idx.neg31 = sub i64 0, %idx.ext30
  %add.ptr32 = getelementptr inbounds i8, ptr %27, i64 %idx.neg31
  %30 = load i8, ptr %add.ptr32, align 1, !tbaa !25
  %conv33 = zext i8 %30 to i32
  %31 = load i32, ptr %n, align 4, !tbaa !5
  %add34 = add nsw i32 %31, %conv33
  store i32 %add34, ptr %n, align 4, !tbaa !5
  %32 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %sub35 = sub nsw i32 %32, 2
  %33 = load ptr, ptr %p, align 8, !tbaa !21
  %idx.ext36 = sext i32 %sub35 to i64
  %add.ptr37 = getelementptr inbounds i8, ptr %33, i64 %idx.ext36
  store ptr %add.ptr37, ptr %p, align 8, !tbaa !21
  %34 = load ptr, ptr %cp, align 8, !tbaa !21
  %35 = load ptr, ptr %p, align 8, !tbaa !21
  %36 = load i8, ptr %35, align 1, !tbaa !25
  %conv38 = zext i8 %36 to i32
  %idx.ext39 = sext i32 %conv38 to i64
  %idx.neg40 = sub i64 0, %idx.ext39
  %add.ptr41 = getelementptr inbounds i8, ptr %34, i64 %idx.neg40
  %37 = load i8, ptr %add.ptr41, align 1, !tbaa !25
  %conv42 = zext i8 %37 to i32
  %38 = load i32, ptr %n, align 4, !tbaa !5
  %add43 = add nsw i32 %38, %conv42
  store i32 %add43, ptr %n, align 4, !tbaa !5
  %39 = load ptr, ptr %p, align 8, !tbaa !21
  %add.ptr44 = getelementptr inbounds i8, ptr %39, i64 2
  store ptr %add.ptr44, ptr %p, align 8, !tbaa !21
  %40 = load ptr, ptr %cp, align 8, !tbaa !21
  %41 = load ptr, ptr %p, align 8, !tbaa !21
  %42 = load i8, ptr %41, align 1, !tbaa !25
  %conv45 = zext i8 %42 to i32
  %idx.ext46 = sext i32 %conv45 to i64
  %idx.neg47 = sub i64 0, %idx.ext46
  %add.ptr48 = getelementptr inbounds i8, ptr %40, i64 %idx.neg47
  %43 = load i8, ptr %add.ptr48, align 1, !tbaa !25
  %conv49 = zext i8 %43 to i32
  %44 = load i32, ptr %n, align 4, !tbaa !5
  %add50 = add nsw i32 %44, %conv49
  store i32 %add50, ptr %n, align 4, !tbaa !5
  %45 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %sub51 = sub nsw i32 %45, 2
  %46 = load ptr, ptr %p, align 8, !tbaa !21
  %idx.ext52 = sext i32 %sub51 to i64
  %add.ptr53 = getelementptr inbounds i8, ptr %46, i64 %idx.ext52
  store ptr %add.ptr53, ptr %p, align 8, !tbaa !21
  %47 = load ptr, ptr %cp, align 8, !tbaa !21
  %48 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr54 = getelementptr inbounds nuw i8, ptr %48, i32 1
  store ptr %incdec.ptr54, ptr %p, align 8, !tbaa !21
  %49 = load i8, ptr %48, align 1, !tbaa !25
  %conv55 = zext i8 %49 to i32
  %idx.ext56 = sext i32 %conv55 to i64
  %idx.neg57 = sub i64 0, %idx.ext56
  %add.ptr58 = getelementptr inbounds i8, ptr %47, i64 %idx.neg57
  %50 = load i8, ptr %add.ptr58, align 1, !tbaa !25
  %conv59 = zext i8 %50 to i32
  %51 = load i32, ptr %n, align 4, !tbaa !5
  %add60 = add nsw i32 %51, %conv59
  store i32 %add60, ptr %n, align 4, !tbaa !5
  %52 = load ptr, ptr %cp, align 8, !tbaa !21
  %53 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr61 = getelementptr inbounds nuw i8, ptr %53, i32 1
  store ptr %incdec.ptr61, ptr %p, align 8, !tbaa !21
  %54 = load i8, ptr %53, align 1, !tbaa !25
  %conv62 = zext i8 %54 to i32
  %idx.ext63 = sext i32 %conv62 to i64
  %idx.neg64 = sub i64 0, %idx.ext63
  %add.ptr65 = getelementptr inbounds i8, ptr %52, i64 %idx.neg64
  %55 = load i8, ptr %add.ptr65, align 1, !tbaa !25
  %conv66 = zext i8 %55 to i32
  %56 = load i32, ptr %n, align 4, !tbaa !5
  %add67 = add nsw i32 %56, %conv66
  store i32 %add67, ptr %n, align 4, !tbaa !5
  %57 = load ptr, ptr %cp, align 8, !tbaa !21
  %58 = load ptr, ptr %p, align 8, !tbaa !21
  %59 = load i8, ptr %58, align 1, !tbaa !25
  %conv68 = zext i8 %59 to i32
  %idx.ext69 = sext i32 %conv68 to i64
  %idx.neg70 = sub i64 0, %idx.ext69
  %add.ptr71 = getelementptr inbounds i8, ptr %57, i64 %idx.neg70
  %60 = load i8, ptr %add.ptr71, align 1, !tbaa !25
  %conv72 = zext i8 %60 to i32
  %61 = load i32, ptr %n, align 4, !tbaa !5
  %add73 = add nsw i32 %61, %conv72
  store i32 %add73, ptr %n, align 4, !tbaa !5
  %62 = load i32, ptr %n, align 4, !tbaa !5
  %63 = load i32, ptr %max_no.addr, align 4, !tbaa !5
  %cmp74 = icmp sle i32 %62, %63
  br i1 %cmp74, label %if.then, label %if.end

if.then:                                          ; preds = %for.body7
  %64 = load i32, ptr %max_no.addr, align 4, !tbaa !5
  %65 = load i32, ptr %n, align 4, !tbaa !5
  %sub76 = sub nsw i32 %64, %65
  %66 = load ptr, ptr %r.addr, align 8, !tbaa !23
  %67 = load i32, ptr %i, align 4, !tbaa !5
  %68 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul77 = mul nsw i32 %67, %68
  %69 = load i32, ptr %j, align 4, !tbaa !5
  %add78 = add nsw i32 %mul77, %69
  %idxprom79 = sext i32 %add78 to i64
  %arrayidx80 = getelementptr inbounds i32, ptr %66, i64 %idxprom79
  store i32 %sub76, ptr %arrayidx80, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body7
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %70 = load i32, ptr %j, align 4, !tbaa !5
  %inc = add nsw i32 %70, 1
  store i32 %inc, ptr %j, align 4, !tbaa !5
  br label %for.cond3, !llvm.loop !61

for.end:                                          ; preds = %for.cond3
  br label %for.inc81

for.inc81:                                        ; preds = %for.end
  %71 = load i32, ptr %i, align 4, !tbaa !5
  %inc82 = add nsw i32 %71, 1
  store i32 %inc82, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !62

for.end83:                                        ; preds = %for.cond
  store i32 2, ptr %i, align 4, !tbaa !5
  br label %for.cond84

for.cond84:                                       ; preds = %for.inc395, %for.end83
  %72 = load i32, ptr %i, align 4, !tbaa !5
  %73 = load i32, ptr %y_size.addr, align 4, !tbaa !5
  %sub85 = sub nsw i32 %73, 2
  %cmp86 = icmp slt i32 %72, %sub85
  br i1 %cmp86, label %for.body88, label %for.end397

for.body88:                                       ; preds = %for.cond84
  store i32 2, ptr %j, align 4, !tbaa !5
  br label %for.cond89

for.cond89:                                       ; preds = %for.inc392, %for.body88
  %74 = load i32, ptr %j, align 4, !tbaa !5
  %75 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %sub90 = sub nsw i32 %75, 2
  %cmp91 = icmp slt i32 %74, %sub90
  br i1 %cmp91, label %for.body93, label %for.end394

for.body93:                                       ; preds = %for.cond89
  %76 = load ptr, ptr %r.addr, align 8, !tbaa !23
  %77 = load i32, ptr %i, align 4, !tbaa !5
  %78 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul94 = mul nsw i32 %77, %78
  %79 = load i32, ptr %j, align 4, !tbaa !5
  %add95 = add nsw i32 %mul94, %79
  %idxprom96 = sext i32 %add95 to i64
  %arrayidx97 = getelementptr inbounds i32, ptr %76, i64 %idxprom96
  %80 = load i32, ptr %arrayidx97, align 4, !tbaa !5
  %cmp98 = icmp sgt i32 %80, 0
  br i1 %cmp98, label %if.then100, label %if.end391

if.then100:                                       ; preds = %for.body93
  %81 = load ptr, ptr %r.addr, align 8, !tbaa !23
  %82 = load i32, ptr %i, align 4, !tbaa !5
  %83 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul101 = mul nsw i32 %82, %83
  %84 = load i32, ptr %j, align 4, !tbaa !5
  %add102 = add nsw i32 %mul101, %84
  %idxprom103 = sext i32 %add102 to i64
  %arrayidx104 = getelementptr inbounds i32, ptr %81, i64 %idxprom103
  %85 = load i32, ptr %arrayidx104, align 4, !tbaa !5
  store i32 %85, ptr %m, align 4, !tbaa !5
  %86 = load i32, ptr %max_no.addr, align 4, !tbaa !5
  %87 = load i32, ptr %m, align 4, !tbaa !5
  %sub105 = sub nsw i32 %86, %87
  store i32 %sub105, ptr %n, align 4, !tbaa !5
  %88 = load ptr, ptr %bp.addr, align 8, !tbaa !21
  %89 = load ptr, ptr %in.addr, align 8, !tbaa !21
  %90 = load i32, ptr %i, align 4, !tbaa !5
  %91 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul106 = mul nsw i32 %90, %91
  %92 = load i32, ptr %j, align 4, !tbaa !5
  %add107 = add nsw i32 %mul106, %92
  %idxprom108 = sext i32 %add107 to i64
  %arrayidx109 = getelementptr inbounds i8, ptr %89, i64 %idxprom108
  %93 = load i8, ptr %arrayidx109, align 1, !tbaa !25
  %conv110 = zext i8 %93 to i32
  %idx.ext111 = sext i32 %conv110 to i64
  %add.ptr112 = getelementptr inbounds i8, ptr %88, i64 %idx.ext111
  store ptr %add.ptr112, ptr %cp, align 8, !tbaa !21
  %94 = load i32, ptr %n, align 4, !tbaa !5
  %cmp113 = icmp sgt i32 %94, 250
  br i1 %cmp113, label %if.then115, label %if.else255

if.then115:                                       ; preds = %if.then100
  %95 = load ptr, ptr %in.addr, align 8, !tbaa !21
  %96 = load i32, ptr %i, align 4, !tbaa !5
  %sub116 = sub nsw i32 %96, 1
  %97 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul117 = mul nsw i32 %sub116, %97
  %idx.ext118 = sext i32 %mul117 to i64
  %add.ptr119 = getelementptr inbounds i8, ptr %95, i64 %idx.ext118
  %98 = load i32, ptr %j, align 4, !tbaa !5
  %idx.ext120 = sext i32 %98 to i64
  %add.ptr121 = getelementptr inbounds i8, ptr %add.ptr119, i64 %idx.ext120
  %add.ptr122 = getelementptr inbounds i8, ptr %add.ptr121, i64 -1
  store ptr %add.ptr122, ptr %p, align 8, !tbaa !21
  store i32 0, ptr %x, align 4, !tbaa !5
  store i32 0, ptr %y, align 4, !tbaa !5
  %99 = load ptr, ptr %cp, align 8, !tbaa !21
  %100 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr123 = getelementptr inbounds nuw i8, ptr %100, i32 1
  store ptr %incdec.ptr123, ptr %p, align 8, !tbaa !21
  %101 = load i8, ptr %100, align 1, !tbaa !25
  %conv124 = zext i8 %101 to i32
  %idx.ext125 = sext i32 %conv124 to i64
  %idx.neg126 = sub i64 0, %idx.ext125
  %add.ptr127 = getelementptr inbounds i8, ptr %99, i64 %idx.neg126
  %102 = load i8, ptr %add.ptr127, align 1, !tbaa !25
  store i8 %102, ptr %c, align 1, !tbaa !25
  %103 = load i8, ptr %c, align 1, !tbaa !25
  %conv128 = zext i8 %103 to i32
  %104 = load i32, ptr %x, align 4, !tbaa !5
  %sub129 = sub nsw i32 %104, %conv128
  store i32 %sub129, ptr %x, align 4, !tbaa !5
  %105 = load i8, ptr %c, align 1, !tbaa !25
  %conv130 = zext i8 %105 to i32
  %106 = load i32, ptr %y, align 4, !tbaa !5
  %sub131 = sub nsw i32 %106, %conv130
  store i32 %sub131, ptr %y, align 4, !tbaa !5
  %107 = load ptr, ptr %cp, align 8, !tbaa !21
  %108 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr132 = getelementptr inbounds nuw i8, ptr %108, i32 1
  store ptr %incdec.ptr132, ptr %p, align 8, !tbaa !21
  %109 = load i8, ptr %108, align 1, !tbaa !25
  %conv133 = zext i8 %109 to i32
  %idx.ext134 = sext i32 %conv133 to i64
  %idx.neg135 = sub i64 0, %idx.ext134
  %add.ptr136 = getelementptr inbounds i8, ptr %107, i64 %idx.neg135
  %110 = load i8, ptr %add.ptr136, align 1, !tbaa !25
  store i8 %110, ptr %c, align 1, !tbaa !25
  %111 = load i8, ptr %c, align 1, !tbaa !25
  %conv137 = zext i8 %111 to i32
  %112 = load i32, ptr %y, align 4, !tbaa !5
  %sub138 = sub nsw i32 %112, %conv137
  store i32 %sub138, ptr %y, align 4, !tbaa !5
  %113 = load ptr, ptr %cp, align 8, !tbaa !21
  %114 = load ptr, ptr %p, align 8, !tbaa !21
  %115 = load i8, ptr %114, align 1, !tbaa !25
  %conv139 = zext i8 %115 to i32
  %idx.ext140 = sext i32 %conv139 to i64
  %idx.neg141 = sub i64 0, %idx.ext140
  %add.ptr142 = getelementptr inbounds i8, ptr %113, i64 %idx.neg141
  %116 = load i8, ptr %add.ptr142, align 1, !tbaa !25
  store i8 %116, ptr %c, align 1, !tbaa !25
  %117 = load i8, ptr %c, align 1, !tbaa !25
  %conv143 = zext i8 %117 to i32
  %118 = load i32, ptr %x, align 4, !tbaa !5
  %add144 = add nsw i32 %118, %conv143
  store i32 %add144, ptr %x, align 4, !tbaa !5
  %119 = load i8, ptr %c, align 1, !tbaa !25
  %conv145 = zext i8 %119 to i32
  %120 = load i32, ptr %y, align 4, !tbaa !5
  %sub146 = sub nsw i32 %120, %conv145
  store i32 %sub146, ptr %y, align 4, !tbaa !5
  %121 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %sub147 = sub nsw i32 %121, 2
  %122 = load ptr, ptr %p, align 8, !tbaa !21
  %idx.ext148 = sext i32 %sub147 to i64
  %add.ptr149 = getelementptr inbounds i8, ptr %122, i64 %idx.ext148
  store ptr %add.ptr149, ptr %p, align 8, !tbaa !21
  %123 = load ptr, ptr %cp, align 8, !tbaa !21
  %124 = load ptr, ptr %p, align 8, !tbaa !21
  %125 = load i8, ptr %124, align 1, !tbaa !25
  %conv150 = zext i8 %125 to i32
  %idx.ext151 = sext i32 %conv150 to i64
  %idx.neg152 = sub i64 0, %idx.ext151
  %add.ptr153 = getelementptr inbounds i8, ptr %123, i64 %idx.neg152
  %126 = load i8, ptr %add.ptr153, align 1, !tbaa !25
  store i8 %126, ptr %c, align 1, !tbaa !25
  %127 = load i8, ptr %c, align 1, !tbaa !25
  %conv154 = zext i8 %127 to i32
  %128 = load i32, ptr %x, align 4, !tbaa !5
  %sub155 = sub nsw i32 %128, %conv154
  store i32 %sub155, ptr %x, align 4, !tbaa !5
  %129 = load ptr, ptr %p, align 8, !tbaa !21
  %add.ptr156 = getelementptr inbounds i8, ptr %129, i64 2
  store ptr %add.ptr156, ptr %p, align 8, !tbaa !21
  %130 = load ptr, ptr %cp, align 8, !tbaa !21
  %131 = load ptr, ptr %p, align 8, !tbaa !21
  %132 = load i8, ptr %131, align 1, !tbaa !25
  %conv157 = zext i8 %132 to i32
  %idx.ext158 = sext i32 %conv157 to i64
  %idx.neg159 = sub i64 0, %idx.ext158
  %add.ptr160 = getelementptr inbounds i8, ptr %130, i64 %idx.neg159
  %133 = load i8, ptr %add.ptr160, align 1, !tbaa !25
  store i8 %133, ptr %c, align 1, !tbaa !25
  %134 = load i8, ptr %c, align 1, !tbaa !25
  %conv161 = zext i8 %134 to i32
  %135 = load i32, ptr %x, align 4, !tbaa !5
  %add162 = add nsw i32 %135, %conv161
  store i32 %add162, ptr %x, align 4, !tbaa !5
  %136 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %sub163 = sub nsw i32 %136, 2
  %137 = load ptr, ptr %p, align 8, !tbaa !21
  %idx.ext164 = sext i32 %sub163 to i64
  %add.ptr165 = getelementptr inbounds i8, ptr %137, i64 %idx.ext164
  store ptr %add.ptr165, ptr %p, align 8, !tbaa !21
  %138 = load ptr, ptr %cp, align 8, !tbaa !21
  %139 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr166 = getelementptr inbounds nuw i8, ptr %139, i32 1
  store ptr %incdec.ptr166, ptr %p, align 8, !tbaa !21
  %140 = load i8, ptr %139, align 1, !tbaa !25
  %conv167 = zext i8 %140 to i32
  %idx.ext168 = sext i32 %conv167 to i64
  %idx.neg169 = sub i64 0, %idx.ext168
  %add.ptr170 = getelementptr inbounds i8, ptr %138, i64 %idx.neg169
  %141 = load i8, ptr %add.ptr170, align 1, !tbaa !25
  store i8 %141, ptr %c, align 1, !tbaa !25
  %142 = load i8, ptr %c, align 1, !tbaa !25
  %conv171 = zext i8 %142 to i32
  %143 = load i32, ptr %x, align 4, !tbaa !5
  %sub172 = sub nsw i32 %143, %conv171
  store i32 %sub172, ptr %x, align 4, !tbaa !5
  %144 = load i8, ptr %c, align 1, !tbaa !25
  %conv173 = zext i8 %144 to i32
  %145 = load i32, ptr %y, align 4, !tbaa !5
  %add174 = add nsw i32 %145, %conv173
  store i32 %add174, ptr %y, align 4, !tbaa !5
  %146 = load ptr, ptr %cp, align 8, !tbaa !21
  %147 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr175 = getelementptr inbounds nuw i8, ptr %147, i32 1
  store ptr %incdec.ptr175, ptr %p, align 8, !tbaa !21
  %148 = load i8, ptr %147, align 1, !tbaa !25
  %conv176 = zext i8 %148 to i32
  %idx.ext177 = sext i32 %conv176 to i64
  %idx.neg178 = sub i64 0, %idx.ext177
  %add.ptr179 = getelementptr inbounds i8, ptr %146, i64 %idx.neg178
  %149 = load i8, ptr %add.ptr179, align 1, !tbaa !25
  store i8 %149, ptr %c, align 1, !tbaa !25
  %150 = load i8, ptr %c, align 1, !tbaa !25
  %conv180 = zext i8 %150 to i32
  %151 = load i32, ptr %y, align 4, !tbaa !5
  %add181 = add nsw i32 %151, %conv180
  store i32 %add181, ptr %y, align 4, !tbaa !5
  %152 = load ptr, ptr %cp, align 8, !tbaa !21
  %153 = load ptr, ptr %p, align 8, !tbaa !21
  %154 = load i8, ptr %153, align 1, !tbaa !25
  %conv182 = zext i8 %154 to i32
  %idx.ext183 = sext i32 %conv182 to i64
  %idx.neg184 = sub i64 0, %idx.ext183
  %add.ptr185 = getelementptr inbounds i8, ptr %152, i64 %idx.neg184
  %155 = load i8, ptr %add.ptr185, align 1, !tbaa !25
  store i8 %155, ptr %c, align 1, !tbaa !25
  %156 = load i8, ptr %c, align 1, !tbaa !25
  %conv186 = zext i8 %156 to i32
  %157 = load i32, ptr %x, align 4, !tbaa !5
  %add187 = add nsw i32 %157, %conv186
  store i32 %add187, ptr %x, align 4, !tbaa !5
  %158 = load i8, ptr %c, align 1, !tbaa !25
  %conv188 = zext i8 %158 to i32
  %159 = load i32, ptr %y, align 4, !tbaa !5
  %add189 = add nsw i32 %159, %conv188
  store i32 %add189, ptr %y, align 4, !tbaa !5
  %160 = load i32, ptr %x, align 4, !tbaa !5
  %161 = load i32, ptr %x, align 4, !tbaa !5
  %mul190 = mul nsw i32 %160, %161
  %162 = load i32, ptr %y, align 4, !tbaa !5
  %163 = load i32, ptr %y, align 4, !tbaa !5
  %mul191 = mul nsw i32 %162, %163
  %add192 = add nsw i32 %mul190, %mul191
  %conv193 = sitofp i32 %add192 to float
  %conv194 = fpext float %conv193 to double
  %call = call double @sqrt(double noundef %conv194) #10, !tbaa !5
  %conv195 = fptrunc double %call to float
  store float %conv195, ptr %z, align 4, !tbaa !41
  %164 = load float, ptr %z, align 4, !tbaa !41
  %conv196 = fpext float %164 to double
  %165 = load i32, ptr %n, align 4, !tbaa !5
  %conv197 = sitofp i32 %165 to float
  %conv198 = fpext float %conv197 to double
  %mul199 = fmul double 4.000000e-01, %conv198
  %cmp200 = fcmp ogt double %conv196, %mul199
  br i1 %cmp200, label %if.then202, label %if.else253

if.then202:                                       ; preds = %if.then115
  store i32 0, ptr %do_symmetry, align 4, !tbaa !5
  %166 = load i32, ptr %x, align 4, !tbaa !5
  %cmp203 = icmp eq i32 %166, 0
  br i1 %cmp203, label %if.then205, label %if.else

if.then205:                                       ; preds = %if.then202
  store float 1.000000e+06, ptr %z, align 4, !tbaa !41
  br label %if.end208

if.else:                                          ; preds = %if.then202
  %167 = load i32, ptr %y, align 4, !tbaa !5
  %conv206 = sitofp i32 %167 to float
  %168 = load i32, ptr %x, align 4, !tbaa !5
  %conv207 = sitofp i32 %168 to float
  %div = fdiv float %conv206, %conv207
  store float %div, ptr %z, align 4, !tbaa !41
  br label %if.end208

if.end208:                                        ; preds = %if.else, %if.then205
  %169 = load float, ptr %z, align 4, !tbaa !41
  %cmp209 = fcmp olt float %169, 0.000000e+00
  br i1 %cmp209, label %if.then211, label %if.else212

if.then211:                                       ; preds = %if.end208
  %170 = load float, ptr %z, align 4, !tbaa !41
  %fneg = fneg float %170
  store float %fneg, ptr %z, align 4, !tbaa !41
  store i32 -1, ptr %w, align 4, !tbaa !5
  br label %if.end213

if.else212:                                       ; preds = %if.end208
  store i32 1, ptr %w, align 4, !tbaa !5
  br label %if.end213

if.end213:                                        ; preds = %if.else212, %if.then211
  %171 = load float, ptr %z, align 4, !tbaa !41
  %conv214 = fpext float %171 to double
  %cmp215 = fcmp olt double %conv214, 5.000000e-01
  br i1 %cmp215, label %if.then217, label %if.else218

if.then217:                                       ; preds = %if.end213
  store i32 0, ptr %a, align 4, !tbaa !5
  store i32 1, ptr %b, align 4, !tbaa !5
  br label %if.end230

if.else218:                                       ; preds = %if.end213
  %172 = load float, ptr %z, align 4, !tbaa !41
  %conv219 = fpext float %172 to double
  %cmp220 = fcmp ogt double %conv219, 2.000000e+00
  br i1 %cmp220, label %if.then222, label %if.else223

if.then222:                                       ; preds = %if.else218
  store i32 1, ptr %a, align 4, !tbaa !5
  store i32 0, ptr %b, align 4, !tbaa !5
  br label %if.end229

if.else223:                                       ; preds = %if.else218
  %173 = load i32, ptr %w, align 4, !tbaa !5
  %cmp224 = icmp sgt i32 %173, 0
  br i1 %cmp224, label %if.then226, label %if.else227

if.then226:                                       ; preds = %if.else223
  store i32 1, ptr %a, align 4, !tbaa !5
  store i32 1, ptr %b, align 4, !tbaa !5
  br label %if.end228

if.else227:                                       ; preds = %if.else223
  store i32 -1, ptr %a, align 4, !tbaa !5
  store i32 1, ptr %b, align 4, !tbaa !5
  br label %if.end228

if.end228:                                        ; preds = %if.else227, %if.then226
  br label %if.end229

if.end229:                                        ; preds = %if.end228, %if.then222
  br label %if.end230

if.end230:                                        ; preds = %if.end229, %if.then217
  %174 = load i32, ptr %m, align 4, !tbaa !5
  %175 = load ptr, ptr %r.addr, align 8, !tbaa !23
  %176 = load i32, ptr %i, align 4, !tbaa !5
  %177 = load i32, ptr %a, align 4, !tbaa !5
  %add231 = add nsw i32 %176, %177
  %178 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul232 = mul nsw i32 %add231, %178
  %179 = load i32, ptr %j, align 4, !tbaa !5
  %add233 = add nsw i32 %mul232, %179
  %180 = load i32, ptr %b, align 4, !tbaa !5
  %add234 = add nsw i32 %add233, %180
  %idxprom235 = sext i32 %add234 to i64
  %arrayidx236 = getelementptr inbounds i32, ptr %175, i64 %idxprom235
  %181 = load i32, ptr %arrayidx236, align 4, !tbaa !5
  %cmp237 = icmp sgt i32 %174, %181
  br i1 %cmp237, label %land.lhs.true, label %if.end252

land.lhs.true:                                    ; preds = %if.end230
  %182 = load i32, ptr %m, align 4, !tbaa !5
  %183 = load ptr, ptr %r.addr, align 8, !tbaa !23
  %184 = load i32, ptr %i, align 4, !tbaa !5
  %185 = load i32, ptr %a, align 4, !tbaa !5
  %sub239 = sub nsw i32 %184, %185
  %186 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul240 = mul nsw i32 %sub239, %186
  %187 = load i32, ptr %j, align 4, !tbaa !5
  %add241 = add nsw i32 %mul240, %187
  %188 = load i32, ptr %b, align 4, !tbaa !5
  %sub242 = sub nsw i32 %add241, %188
  %idxprom243 = sext i32 %sub242 to i64
  %arrayidx244 = getelementptr inbounds i32, ptr %183, i64 %idxprom243
  %189 = load i32, ptr %arrayidx244, align 4, !tbaa !5
  %cmp245 = icmp sge i32 %182, %189
  br i1 %cmp245, label %if.then247, label %if.end252

if.then247:                                       ; preds = %land.lhs.true
  %190 = load ptr, ptr %mid.addr, align 8, !tbaa !21
  %191 = load i32, ptr %i, align 4, !tbaa !5
  %192 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul248 = mul nsw i32 %191, %192
  %193 = load i32, ptr %j, align 4, !tbaa !5
  %add249 = add nsw i32 %mul248, %193
  %idxprom250 = sext i32 %add249 to i64
  %arrayidx251 = getelementptr inbounds i8, ptr %190, i64 %idxprom250
  store i8 1, ptr %arrayidx251, align 1, !tbaa !25
  br label %if.end252

if.end252:                                        ; preds = %if.then247, %land.lhs.true, %if.end230
  br label %if.end254

if.else253:                                       ; preds = %if.then115
  store i32 1, ptr %do_symmetry, align 4, !tbaa !5
  br label %if.end254

if.end254:                                        ; preds = %if.else253, %if.end252
  br label %if.end256

if.else255:                                       ; preds = %if.then100
  store i32 1, ptr %do_symmetry, align 4, !tbaa !5
  br label %if.end256

if.end256:                                        ; preds = %if.else255, %if.end254
  %194 = load i32, ptr %do_symmetry, align 4, !tbaa !5
  %cmp257 = icmp eq i32 %194, 1
  br i1 %cmp257, label %if.then259, label %if.end390

if.then259:                                       ; preds = %if.end256
  %195 = load ptr, ptr %in.addr, align 8, !tbaa !21
  %196 = load i32, ptr %i, align 4, !tbaa !5
  %sub260 = sub nsw i32 %196, 1
  %197 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul261 = mul nsw i32 %sub260, %197
  %idx.ext262 = sext i32 %mul261 to i64
  %add.ptr263 = getelementptr inbounds i8, ptr %195, i64 %idx.ext262
  %198 = load i32, ptr %j, align 4, !tbaa !5
  %idx.ext264 = sext i32 %198 to i64
  %add.ptr265 = getelementptr inbounds i8, ptr %add.ptr263, i64 %idx.ext264
  %add.ptr266 = getelementptr inbounds i8, ptr %add.ptr265, i64 -1
  store ptr %add.ptr266, ptr %p, align 8, !tbaa !21
  store i32 0, ptr %x, align 4, !tbaa !5
  store i32 0, ptr %y, align 4, !tbaa !5
  store i32 0, ptr %w, align 4, !tbaa !5
  %199 = load ptr, ptr %cp, align 8, !tbaa !21
  %200 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr267 = getelementptr inbounds nuw i8, ptr %200, i32 1
  store ptr %incdec.ptr267, ptr %p, align 8, !tbaa !21
  %201 = load i8, ptr %200, align 1, !tbaa !25
  %conv268 = zext i8 %201 to i32
  %idx.ext269 = sext i32 %conv268 to i64
  %idx.neg270 = sub i64 0, %idx.ext269
  %add.ptr271 = getelementptr inbounds i8, ptr %199, i64 %idx.neg270
  %202 = load i8, ptr %add.ptr271, align 1, !tbaa !25
  store i8 %202, ptr %c, align 1, !tbaa !25
  %203 = load i8, ptr %c, align 1, !tbaa !25
  %conv272 = zext i8 %203 to i32
  %204 = load i32, ptr %x, align 4, !tbaa !5
  %add273 = add nsw i32 %204, %conv272
  store i32 %add273, ptr %x, align 4, !tbaa !5
  %205 = load i8, ptr %c, align 1, !tbaa !25
  %conv274 = zext i8 %205 to i32
  %206 = load i32, ptr %y, align 4, !tbaa !5
  %add275 = add nsw i32 %206, %conv274
  store i32 %add275, ptr %y, align 4, !tbaa !5
  %207 = load i8, ptr %c, align 1, !tbaa !25
  %conv276 = zext i8 %207 to i32
  %208 = load i32, ptr %w, align 4, !tbaa !5
  %add277 = add nsw i32 %208, %conv276
  store i32 %add277, ptr %w, align 4, !tbaa !5
  %209 = load ptr, ptr %cp, align 8, !tbaa !21
  %210 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr278 = getelementptr inbounds nuw i8, ptr %210, i32 1
  store ptr %incdec.ptr278, ptr %p, align 8, !tbaa !21
  %211 = load i8, ptr %210, align 1, !tbaa !25
  %conv279 = zext i8 %211 to i32
  %idx.ext280 = sext i32 %conv279 to i64
  %idx.neg281 = sub i64 0, %idx.ext280
  %add.ptr282 = getelementptr inbounds i8, ptr %209, i64 %idx.neg281
  %212 = load i8, ptr %add.ptr282, align 1, !tbaa !25
  store i8 %212, ptr %c, align 1, !tbaa !25
  %213 = load i8, ptr %c, align 1, !tbaa !25
  %conv283 = zext i8 %213 to i32
  %214 = load i32, ptr %y, align 4, !tbaa !5
  %add284 = add nsw i32 %214, %conv283
  store i32 %add284, ptr %y, align 4, !tbaa !5
  %215 = load ptr, ptr %cp, align 8, !tbaa !21
  %216 = load ptr, ptr %p, align 8, !tbaa !21
  %217 = load i8, ptr %216, align 1, !tbaa !25
  %conv285 = zext i8 %217 to i32
  %idx.ext286 = sext i32 %conv285 to i64
  %idx.neg287 = sub i64 0, %idx.ext286
  %add.ptr288 = getelementptr inbounds i8, ptr %215, i64 %idx.neg287
  %218 = load i8, ptr %add.ptr288, align 1, !tbaa !25
  store i8 %218, ptr %c, align 1, !tbaa !25
  %219 = load i8, ptr %c, align 1, !tbaa !25
  %conv289 = zext i8 %219 to i32
  %220 = load i32, ptr %x, align 4, !tbaa !5
  %add290 = add nsw i32 %220, %conv289
  store i32 %add290, ptr %x, align 4, !tbaa !5
  %221 = load i8, ptr %c, align 1, !tbaa !25
  %conv291 = zext i8 %221 to i32
  %222 = load i32, ptr %y, align 4, !tbaa !5
  %add292 = add nsw i32 %222, %conv291
  store i32 %add292, ptr %y, align 4, !tbaa !5
  %223 = load i8, ptr %c, align 1, !tbaa !25
  %conv293 = zext i8 %223 to i32
  %224 = load i32, ptr %w, align 4, !tbaa !5
  %sub294 = sub nsw i32 %224, %conv293
  store i32 %sub294, ptr %w, align 4, !tbaa !5
  %225 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %sub295 = sub nsw i32 %225, 2
  %226 = load ptr, ptr %p, align 8, !tbaa !21
  %idx.ext296 = sext i32 %sub295 to i64
  %add.ptr297 = getelementptr inbounds i8, ptr %226, i64 %idx.ext296
  store ptr %add.ptr297, ptr %p, align 8, !tbaa !21
  %227 = load ptr, ptr %cp, align 8, !tbaa !21
  %228 = load ptr, ptr %p, align 8, !tbaa !21
  %229 = load i8, ptr %228, align 1, !tbaa !25
  %conv298 = zext i8 %229 to i32
  %idx.ext299 = sext i32 %conv298 to i64
  %idx.neg300 = sub i64 0, %idx.ext299
  %add.ptr301 = getelementptr inbounds i8, ptr %227, i64 %idx.neg300
  %230 = load i8, ptr %add.ptr301, align 1, !tbaa !25
  store i8 %230, ptr %c, align 1, !tbaa !25
  %231 = load i8, ptr %c, align 1, !tbaa !25
  %conv302 = zext i8 %231 to i32
  %232 = load i32, ptr %x, align 4, !tbaa !5
  %add303 = add nsw i32 %232, %conv302
  store i32 %add303, ptr %x, align 4, !tbaa !5
  %233 = load ptr, ptr %p, align 8, !tbaa !21
  %add.ptr304 = getelementptr inbounds i8, ptr %233, i64 2
  store ptr %add.ptr304, ptr %p, align 8, !tbaa !21
  %234 = load ptr, ptr %cp, align 8, !tbaa !21
  %235 = load ptr, ptr %p, align 8, !tbaa !21
  %236 = load i8, ptr %235, align 1, !tbaa !25
  %conv305 = zext i8 %236 to i32
  %idx.ext306 = sext i32 %conv305 to i64
  %idx.neg307 = sub i64 0, %idx.ext306
  %add.ptr308 = getelementptr inbounds i8, ptr %234, i64 %idx.neg307
  %237 = load i8, ptr %add.ptr308, align 1, !tbaa !25
  store i8 %237, ptr %c, align 1, !tbaa !25
  %238 = load i8, ptr %c, align 1, !tbaa !25
  %conv309 = zext i8 %238 to i32
  %239 = load i32, ptr %x, align 4, !tbaa !5
  %add310 = add nsw i32 %239, %conv309
  store i32 %add310, ptr %x, align 4, !tbaa !5
  %240 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %sub311 = sub nsw i32 %240, 2
  %241 = load ptr, ptr %p, align 8, !tbaa !21
  %idx.ext312 = sext i32 %sub311 to i64
  %add.ptr313 = getelementptr inbounds i8, ptr %241, i64 %idx.ext312
  store ptr %add.ptr313, ptr %p, align 8, !tbaa !21
  %242 = load ptr, ptr %cp, align 8, !tbaa !21
  %243 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr314 = getelementptr inbounds nuw i8, ptr %243, i32 1
  store ptr %incdec.ptr314, ptr %p, align 8, !tbaa !21
  %244 = load i8, ptr %243, align 1, !tbaa !25
  %conv315 = zext i8 %244 to i32
  %idx.ext316 = sext i32 %conv315 to i64
  %idx.neg317 = sub i64 0, %idx.ext316
  %add.ptr318 = getelementptr inbounds i8, ptr %242, i64 %idx.neg317
  %245 = load i8, ptr %add.ptr318, align 1, !tbaa !25
  store i8 %245, ptr %c, align 1, !tbaa !25
  %246 = load i8, ptr %c, align 1, !tbaa !25
  %conv319 = zext i8 %246 to i32
  %247 = load i32, ptr %x, align 4, !tbaa !5
  %add320 = add nsw i32 %247, %conv319
  store i32 %add320, ptr %x, align 4, !tbaa !5
  %248 = load i8, ptr %c, align 1, !tbaa !25
  %conv321 = zext i8 %248 to i32
  %249 = load i32, ptr %y, align 4, !tbaa !5
  %add322 = add nsw i32 %249, %conv321
  store i32 %add322, ptr %y, align 4, !tbaa !5
  %250 = load i8, ptr %c, align 1, !tbaa !25
  %conv323 = zext i8 %250 to i32
  %251 = load i32, ptr %w, align 4, !tbaa !5
  %sub324 = sub nsw i32 %251, %conv323
  store i32 %sub324, ptr %w, align 4, !tbaa !5
  %252 = load ptr, ptr %cp, align 8, !tbaa !21
  %253 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr325 = getelementptr inbounds nuw i8, ptr %253, i32 1
  store ptr %incdec.ptr325, ptr %p, align 8, !tbaa !21
  %254 = load i8, ptr %253, align 1, !tbaa !25
  %conv326 = zext i8 %254 to i32
  %idx.ext327 = sext i32 %conv326 to i64
  %idx.neg328 = sub i64 0, %idx.ext327
  %add.ptr329 = getelementptr inbounds i8, ptr %252, i64 %idx.neg328
  %255 = load i8, ptr %add.ptr329, align 1, !tbaa !25
  store i8 %255, ptr %c, align 1, !tbaa !25
  %256 = load i8, ptr %c, align 1, !tbaa !25
  %conv330 = zext i8 %256 to i32
  %257 = load i32, ptr %y, align 4, !tbaa !5
  %add331 = add nsw i32 %257, %conv330
  store i32 %add331, ptr %y, align 4, !tbaa !5
  %258 = load ptr, ptr %cp, align 8, !tbaa !21
  %259 = load ptr, ptr %p, align 8, !tbaa !21
  %260 = load i8, ptr %259, align 1, !tbaa !25
  %conv332 = zext i8 %260 to i32
  %idx.ext333 = sext i32 %conv332 to i64
  %idx.neg334 = sub i64 0, %idx.ext333
  %add.ptr335 = getelementptr inbounds i8, ptr %258, i64 %idx.neg334
  %261 = load i8, ptr %add.ptr335, align 1, !tbaa !25
  store i8 %261, ptr %c, align 1, !tbaa !25
  %262 = load i8, ptr %c, align 1, !tbaa !25
  %conv336 = zext i8 %262 to i32
  %263 = load i32, ptr %x, align 4, !tbaa !5
  %add337 = add nsw i32 %263, %conv336
  store i32 %add337, ptr %x, align 4, !tbaa !5
  %264 = load i8, ptr %c, align 1, !tbaa !25
  %conv338 = zext i8 %264 to i32
  %265 = load i32, ptr %y, align 4, !tbaa !5
  %add339 = add nsw i32 %265, %conv338
  store i32 %add339, ptr %y, align 4, !tbaa !5
  %266 = load i8, ptr %c, align 1, !tbaa !25
  %conv340 = zext i8 %266 to i32
  %267 = load i32, ptr %w, align 4, !tbaa !5
  %add341 = add nsw i32 %267, %conv340
  store i32 %add341, ptr %w, align 4, !tbaa !5
  %268 = load i32, ptr %y, align 4, !tbaa !5
  %cmp342 = icmp eq i32 %268, 0
  br i1 %cmp342, label %if.then344, label %if.else345

if.then344:                                       ; preds = %if.then259
  store float 1.000000e+06, ptr %z, align 4, !tbaa !41
  br label %if.end349

if.else345:                                       ; preds = %if.then259
  %269 = load i32, ptr %x, align 4, !tbaa !5
  %conv346 = sitofp i32 %269 to float
  %270 = load i32, ptr %y, align 4, !tbaa !5
  %conv347 = sitofp i32 %270 to float
  %div348 = fdiv float %conv346, %conv347
  store float %div348, ptr %z, align 4, !tbaa !41
  br label %if.end349

if.end349:                                        ; preds = %if.else345, %if.then344
  %271 = load float, ptr %z, align 4, !tbaa !41
  %conv350 = fpext float %271 to double
  %cmp351 = fcmp olt double %conv350, 5.000000e-01
  br i1 %cmp351, label %if.then353, label %if.else354

if.then353:                                       ; preds = %if.end349
  store i32 0, ptr %a, align 4, !tbaa !5
  store i32 1, ptr %b, align 4, !tbaa !5
  br label %if.end366

if.else354:                                       ; preds = %if.end349
  %272 = load float, ptr %z, align 4, !tbaa !41
  %conv355 = fpext float %272 to double
  %cmp356 = fcmp ogt double %conv355, 2.000000e+00
  br i1 %cmp356, label %if.then358, label %if.else359

if.then358:                                       ; preds = %if.else354
  store i32 1, ptr %a, align 4, !tbaa !5
  store i32 0, ptr %b, align 4, !tbaa !5
  br label %if.end365

if.else359:                                       ; preds = %if.else354
  %273 = load i32, ptr %w, align 4, !tbaa !5
  %cmp360 = icmp sgt i32 %273, 0
  br i1 %cmp360, label %if.then362, label %if.else363

if.then362:                                       ; preds = %if.else359
  store i32 -1, ptr %a, align 4, !tbaa !5
  store i32 1, ptr %b, align 4, !tbaa !5
  br label %if.end364

if.else363:                                       ; preds = %if.else359
  store i32 1, ptr %a, align 4, !tbaa !5
  store i32 1, ptr %b, align 4, !tbaa !5
  br label %if.end364

if.end364:                                        ; preds = %if.else363, %if.then362
  br label %if.end365

if.end365:                                        ; preds = %if.end364, %if.then358
  br label %if.end366

if.end366:                                        ; preds = %if.end365, %if.then353
  %274 = load i32, ptr %m, align 4, !tbaa !5
  %275 = load ptr, ptr %r.addr, align 8, !tbaa !23
  %276 = load i32, ptr %i, align 4, !tbaa !5
  %277 = load i32, ptr %a, align 4, !tbaa !5
  %add367 = add nsw i32 %276, %277
  %278 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul368 = mul nsw i32 %add367, %278
  %279 = load i32, ptr %j, align 4, !tbaa !5
  %add369 = add nsw i32 %mul368, %279
  %280 = load i32, ptr %b, align 4, !tbaa !5
  %add370 = add nsw i32 %add369, %280
  %idxprom371 = sext i32 %add370 to i64
  %arrayidx372 = getelementptr inbounds i32, ptr %275, i64 %idxprom371
  %281 = load i32, ptr %arrayidx372, align 4, !tbaa !5
  %cmp373 = icmp sgt i32 %274, %281
  br i1 %cmp373, label %land.lhs.true375, label %if.end389

land.lhs.true375:                                 ; preds = %if.end366
  %282 = load i32, ptr %m, align 4, !tbaa !5
  %283 = load ptr, ptr %r.addr, align 8, !tbaa !23
  %284 = load i32, ptr %i, align 4, !tbaa !5
  %285 = load i32, ptr %a, align 4, !tbaa !5
  %sub376 = sub nsw i32 %284, %285
  %286 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul377 = mul nsw i32 %sub376, %286
  %287 = load i32, ptr %j, align 4, !tbaa !5
  %add378 = add nsw i32 %mul377, %287
  %288 = load i32, ptr %b, align 4, !tbaa !5
  %sub379 = sub nsw i32 %add378, %288
  %idxprom380 = sext i32 %sub379 to i64
  %arrayidx381 = getelementptr inbounds i32, ptr %283, i64 %idxprom380
  %289 = load i32, ptr %arrayidx381, align 4, !tbaa !5
  %cmp382 = icmp sge i32 %282, %289
  br i1 %cmp382, label %if.then384, label %if.end389

if.then384:                                       ; preds = %land.lhs.true375
  %290 = load ptr, ptr %mid.addr, align 8, !tbaa !21
  %291 = load i32, ptr %i, align 4, !tbaa !5
  %292 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul385 = mul nsw i32 %291, %292
  %293 = load i32, ptr %j, align 4, !tbaa !5
  %add386 = add nsw i32 %mul385, %293
  %idxprom387 = sext i32 %add386 to i64
  %arrayidx388 = getelementptr inbounds i8, ptr %290, i64 %idxprom387
  store i8 2, ptr %arrayidx388, align 1, !tbaa !25
  br label %if.end389

if.end389:                                        ; preds = %if.then384, %land.lhs.true375, %if.end366
  br label %if.end390

if.end390:                                        ; preds = %if.end389, %if.end256
  br label %if.end391

if.end391:                                        ; preds = %if.end390, %for.body93
  br label %for.inc392

for.inc392:                                       ; preds = %if.end391
  %294 = load i32, ptr %j, align 4, !tbaa !5
  %inc393 = add nsw i32 %294, 1
  store i32 %inc393, ptr %j, align 4, !tbaa !5
  br label %for.cond89, !llvm.loop !63

for.end394:                                       ; preds = %for.cond89
  br label %for.inc395

for.inc395:                                       ; preds = %for.end394
  %295 = load i32, ptr %i, align 4, !tbaa !5
  %inc396 = add nsw i32 %295, 1
  store i32 %inc396, ptr %i, align 4, !tbaa !5
  br label %for.cond84, !llvm.loop !64

for.end397:                                       ; preds = %for.cond84
  call void @llvm.lifetime.end.p0(i64 8, ptr %cp) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %w) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %y) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %x) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %b) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %a) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %m) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %do_symmetry) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %z) #10
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @corner_draw(ptr noundef %in, ptr noundef %corner_list, i32 noundef %x_size, i32 noundef %drawing_mode) #0 {
entry:
  %in.addr = alloca ptr, align 8
  %corner_list.addr = alloca ptr, align 8
  %x_size.addr = alloca i32, align 4
  %drawing_mode.addr = alloca i32, align 4
  %p = alloca ptr, align 8
  %n = alloca i32, align 4
  store ptr %in, ptr %in.addr, align 8, !tbaa !21
  store ptr %corner_list, ptr %corner_list.addr, align 8, !tbaa !65
  store i32 %x_size, ptr %x_size.addr, align 4, !tbaa !5
  store i32 %drawing_mode, ptr %drawing_mode.addr, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #10
  store i32 0, ptr %n, align 4, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load ptr, ptr %corner_list.addr, align 8, !tbaa !65
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds %struct.anon, ptr %0, i64 %idxprom
  %info = getelementptr inbounds nuw %struct.anon, ptr %arrayidx, i32 0, i32 2
  %2 = load i32, ptr %info, align 4, !tbaa !66
  %cmp = icmp ne i32 %2, 7
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i32, ptr %drawing_mode.addr, align 4, !tbaa !5
  %cmp1 = icmp eq i32 %3, 0
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %4 = load ptr, ptr %in.addr, align 8, !tbaa !21
  %5 = load ptr, ptr %corner_list.addr, align 8, !tbaa !65
  %6 = load i32, ptr %n, align 4, !tbaa !5
  %idxprom2 = sext i32 %6 to i64
  %arrayidx3 = getelementptr inbounds %struct.anon, ptr %5, i64 %idxprom2
  %y = getelementptr inbounds nuw %struct.anon, ptr %arrayidx3, i32 0, i32 1
  %7 = load i32, ptr %y, align 4, !tbaa !68
  %sub = sub nsw i32 %7, 1
  %8 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul = mul nsw i32 %sub, %8
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8, ptr %4, i64 %idx.ext
  %9 = load ptr, ptr %corner_list.addr, align 8, !tbaa !65
  %10 = load i32, ptr %n, align 4, !tbaa !5
  %idxprom4 = sext i32 %10 to i64
  %arrayidx5 = getelementptr inbounds %struct.anon, ptr %9, i64 %idxprom4
  %x = getelementptr inbounds nuw %struct.anon, ptr %arrayidx5, i32 0, i32 0
  %11 = load i32, ptr %x, align 4, !tbaa !69
  %idx.ext6 = sext i32 %11 to i64
  %add.ptr7 = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.ext6
  %add.ptr8 = getelementptr inbounds i8, ptr %add.ptr7, i64 -1
  store ptr %add.ptr8, ptr %p, align 8, !tbaa !21
  %12 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %12, i32 1
  store ptr %incdec.ptr, ptr %p, align 8, !tbaa !21
  store i8 -1, ptr %12, align 1, !tbaa !25
  %13 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr9 = getelementptr inbounds nuw i8, ptr %13, i32 1
  store ptr %incdec.ptr9, ptr %p, align 8, !tbaa !21
  store i8 -1, ptr %13, align 1, !tbaa !25
  %14 = load ptr, ptr %p, align 8, !tbaa !21
  store i8 -1, ptr %14, align 1, !tbaa !25
  %15 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %sub10 = sub nsw i32 %15, 2
  %16 = load ptr, ptr %p, align 8, !tbaa !21
  %idx.ext11 = sext i32 %sub10 to i64
  %add.ptr12 = getelementptr inbounds i8, ptr %16, i64 %idx.ext11
  store ptr %add.ptr12, ptr %p, align 8, !tbaa !21
  %17 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr13 = getelementptr inbounds nuw i8, ptr %17, i32 1
  store ptr %incdec.ptr13, ptr %p, align 8, !tbaa !21
  store i8 -1, ptr %17, align 1, !tbaa !25
  %18 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr14 = getelementptr inbounds nuw i8, ptr %18, i32 1
  store ptr %incdec.ptr14, ptr %p, align 8, !tbaa !21
  store i8 0, ptr %18, align 1, !tbaa !25
  %19 = load ptr, ptr %p, align 8, !tbaa !21
  store i8 -1, ptr %19, align 1, !tbaa !25
  %20 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %sub15 = sub nsw i32 %20, 2
  %21 = load ptr, ptr %p, align 8, !tbaa !21
  %idx.ext16 = sext i32 %sub15 to i64
  %add.ptr17 = getelementptr inbounds i8, ptr %21, i64 %idx.ext16
  store ptr %add.ptr17, ptr %p, align 8, !tbaa !21
  %22 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr18 = getelementptr inbounds nuw i8, ptr %22, i32 1
  store ptr %incdec.ptr18, ptr %p, align 8, !tbaa !21
  store i8 -1, ptr %22, align 1, !tbaa !25
  %23 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr19 = getelementptr inbounds nuw i8, ptr %23, i32 1
  store ptr %incdec.ptr19, ptr %p, align 8, !tbaa !21
  store i8 -1, ptr %23, align 1, !tbaa !25
  %24 = load ptr, ptr %p, align 8, !tbaa !21
  store i8 -1, ptr %24, align 1, !tbaa !25
  %25 = load i32, ptr %n, align 4, !tbaa !5
  %inc = add nsw i32 %25, 1
  store i32 %inc, ptr %n, align 4, !tbaa !5
  br label %if.end

if.else:                                          ; preds = %while.body
  %26 = load ptr, ptr %in.addr, align 8, !tbaa !21
  %27 = load ptr, ptr %corner_list.addr, align 8, !tbaa !65
  %28 = load i32, ptr %n, align 4, !tbaa !5
  %idxprom20 = sext i32 %28 to i64
  %arrayidx21 = getelementptr inbounds %struct.anon, ptr %27, i64 %idxprom20
  %y22 = getelementptr inbounds nuw %struct.anon, ptr %arrayidx21, i32 0, i32 1
  %29 = load i32, ptr %y22, align 4, !tbaa !68
  %30 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul23 = mul nsw i32 %29, %30
  %idx.ext24 = sext i32 %mul23 to i64
  %add.ptr25 = getelementptr inbounds i8, ptr %26, i64 %idx.ext24
  %31 = load ptr, ptr %corner_list.addr, align 8, !tbaa !65
  %32 = load i32, ptr %n, align 4, !tbaa !5
  %idxprom26 = sext i32 %32 to i64
  %arrayidx27 = getelementptr inbounds %struct.anon, ptr %31, i64 %idxprom26
  %x28 = getelementptr inbounds nuw %struct.anon, ptr %arrayidx27, i32 0, i32 0
  %33 = load i32, ptr %x28, align 4, !tbaa !69
  %idx.ext29 = sext i32 %33 to i64
  %add.ptr30 = getelementptr inbounds i8, ptr %add.ptr25, i64 %idx.ext29
  store ptr %add.ptr30, ptr %p, align 8, !tbaa !21
  %34 = load ptr, ptr %p, align 8, !tbaa !21
  store i8 0, ptr %34, align 1, !tbaa !25
  %35 = load i32, ptr %n, align 4, !tbaa !5
  %inc31 = add nsw i32 %35, 1
  store i32 %inc31, ptr %n, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %while.cond, !llvm.loop !70

while.end:                                        ; preds = %while.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #10
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @susan_corners(ptr noundef %in, ptr noundef %r, ptr noundef %bp, i32 noundef %max_no, ptr noundef %corner_list, i32 noundef %x_size, i32 noundef %y_size) #0 {
entry:
  %in.addr = alloca ptr, align 8
  %r.addr = alloca ptr, align 8
  %bp.addr = alloca ptr, align 8
  %max_no.addr = alloca i32, align 4
  %corner_list.addr = alloca ptr, align 8
  %x_size.addr = alloca i32, align 4
  %y_size.addr = alloca i32, align 4
  %n = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %sq = alloca i32, align 4
  %xx = alloca i32, align 4
  %yy = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %cgx = alloca ptr, align 8
  %cgy = alloca ptr, align 8
  %divide = alloca float, align 4
  %c = alloca i8, align 1
  %p = alloca ptr, align 8
  %cp = alloca ptr, align 8
  store ptr %in, ptr %in.addr, align 8, !tbaa !21
  store ptr %r, ptr %r.addr, align 8, !tbaa !23
  store ptr %bp, ptr %bp.addr, align 8, !tbaa !21
  store i32 %max_no, ptr %max_no.addr, align 4, !tbaa !5
  store ptr %corner_list, ptr %corner_list.addr, align 8, !tbaa !65
  store i32 %x_size, ptr %x_size.addr, align 4, !tbaa !5
  store i32 %y_size, ptr %y_size.addr, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %x) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %y) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %sq) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %xx) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %yy) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %cgx) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %cgy) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %divide) #10
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %cp) #10
  %0 = load ptr, ptr %r.addr, align 8, !tbaa !23
  %1 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %2 = load i32, ptr %y_size.addr, align 4, !tbaa !5
  %mul = mul nsw i32 %1, %2
  %conv = sext i32 %mul to i64
  %mul1 = mul i64 %conv, 4
  call void @llvm.memset.p0.i64(ptr align 4 %0, i8 0, i64 %mul1, i1 false)
  %3 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %4 = load i32, ptr %y_size.addr, align 4, !tbaa !5
  %mul2 = mul nsw i32 %3, %4
  %conv3 = sext i32 %mul2 to i64
  %mul4 = mul i64 %conv3, 4
  %call = call noalias ptr @malloc(i64 noundef %mul4) #12
  store ptr %call, ptr %cgx, align 8, !tbaa !23
  %5 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %6 = load i32, ptr %y_size.addr, align 4, !tbaa !5
  %mul5 = mul nsw i32 %5, %6
  %conv6 = sext i32 %mul5 to i64
  %mul7 = mul i64 %conv6, 4
  %call8 = call noalias ptr @malloc(i64 noundef %mul7) #12
  store ptr %call8, ptr %cgy, align 8, !tbaa !23
  store i32 5, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc904, %entry
  %7 = load i32, ptr %i, align 4, !tbaa !5
  %8 = load i32, ptr %y_size.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %8, 5
  %cmp = icmp slt i32 %7, %sub
  br i1 %cmp, label %for.body, label %for.end906

for.body:                                         ; preds = %for.cond
  store i32 5, ptr %j, align 4, !tbaa !5
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc, %for.body
  %9 = load i32, ptr %j, align 4, !tbaa !5
  %10 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %sub11 = sub nsw i32 %10, 5
  %cmp12 = icmp slt i32 %9, %sub11
  br i1 %cmp12, label %for.body14, label %for.end

for.body14:                                       ; preds = %for.cond10
  store i32 100, ptr %n, align 4, !tbaa !5
  %11 = load ptr, ptr %in.addr, align 8, !tbaa !21
  %12 = load i32, ptr %i, align 4, !tbaa !5
  %sub15 = sub nsw i32 %12, 3
  %13 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul16 = mul nsw i32 %sub15, %13
  %idx.ext = sext i32 %mul16 to i64
  %add.ptr = getelementptr inbounds i8, ptr %11, i64 %idx.ext
  %14 = load i32, ptr %j, align 4, !tbaa !5
  %idx.ext17 = sext i32 %14 to i64
  %add.ptr18 = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.ext17
  %add.ptr19 = getelementptr inbounds i8, ptr %add.ptr18, i64 -1
  store ptr %add.ptr19, ptr %p, align 8, !tbaa !21
  %15 = load ptr, ptr %bp.addr, align 8, !tbaa !21
  %16 = load ptr, ptr %in.addr, align 8, !tbaa !21
  %17 = load i32, ptr %i, align 4, !tbaa !5
  %18 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul20 = mul nsw i32 %17, %18
  %19 = load i32, ptr %j, align 4, !tbaa !5
  %add = add nsw i32 %mul20, %19
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds i8, ptr %16, i64 %idxprom
  %20 = load i8, ptr %arrayidx, align 1, !tbaa !25
  %conv21 = zext i8 %20 to i32
  %idx.ext22 = sext i32 %conv21 to i64
  %add.ptr23 = getelementptr inbounds i8, ptr %15, i64 %idx.ext22
  store ptr %add.ptr23, ptr %cp, align 8, !tbaa !21
  %21 = load ptr, ptr %cp, align 8, !tbaa !21
  %22 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %22, i32 1
  store ptr %incdec.ptr, ptr %p, align 8, !tbaa !21
  %23 = load i8, ptr %22, align 1, !tbaa !25
  %conv24 = zext i8 %23 to i32
  %idx.ext25 = sext i32 %conv24 to i64
  %idx.neg = sub i64 0, %idx.ext25
  %add.ptr26 = getelementptr inbounds i8, ptr %21, i64 %idx.neg
  %24 = load i8, ptr %add.ptr26, align 1, !tbaa !25
  %conv27 = zext i8 %24 to i32
  %25 = load i32, ptr %n, align 4, !tbaa !5
  %add28 = add nsw i32 %25, %conv27
  store i32 %add28, ptr %n, align 4, !tbaa !5
  %26 = load ptr, ptr %cp, align 8, !tbaa !21
  %27 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr29 = getelementptr inbounds nuw i8, ptr %27, i32 1
  store ptr %incdec.ptr29, ptr %p, align 8, !tbaa !21
  %28 = load i8, ptr %27, align 1, !tbaa !25
  %conv30 = zext i8 %28 to i32
  %idx.ext31 = sext i32 %conv30 to i64
  %idx.neg32 = sub i64 0, %idx.ext31
  %add.ptr33 = getelementptr inbounds i8, ptr %26, i64 %idx.neg32
  %29 = load i8, ptr %add.ptr33, align 1, !tbaa !25
  %conv34 = zext i8 %29 to i32
  %30 = load i32, ptr %n, align 4, !tbaa !5
  %add35 = add nsw i32 %30, %conv34
  store i32 %add35, ptr %n, align 4, !tbaa !5
  %31 = load ptr, ptr %cp, align 8, !tbaa !21
  %32 = load ptr, ptr %p, align 8, !tbaa !21
  %33 = load i8, ptr %32, align 1, !tbaa !25
  %conv36 = zext i8 %33 to i32
  %idx.ext37 = sext i32 %conv36 to i64
  %idx.neg38 = sub i64 0, %idx.ext37
  %add.ptr39 = getelementptr inbounds i8, ptr %31, i64 %idx.neg38
  %34 = load i8, ptr %add.ptr39, align 1, !tbaa !25
  %conv40 = zext i8 %34 to i32
  %35 = load i32, ptr %n, align 4, !tbaa !5
  %add41 = add nsw i32 %35, %conv40
  store i32 %add41, ptr %n, align 4, !tbaa !5
  %36 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %sub42 = sub nsw i32 %36, 3
  %37 = load ptr, ptr %p, align 8, !tbaa !21
  %idx.ext43 = sext i32 %sub42 to i64
  %add.ptr44 = getelementptr inbounds i8, ptr %37, i64 %idx.ext43
  store ptr %add.ptr44, ptr %p, align 8, !tbaa !21
  %38 = load ptr, ptr %cp, align 8, !tbaa !21
  %39 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr45 = getelementptr inbounds nuw i8, ptr %39, i32 1
  store ptr %incdec.ptr45, ptr %p, align 8, !tbaa !21
  %40 = load i8, ptr %39, align 1, !tbaa !25
  %conv46 = zext i8 %40 to i32
  %idx.ext47 = sext i32 %conv46 to i64
  %idx.neg48 = sub i64 0, %idx.ext47
  %add.ptr49 = getelementptr inbounds i8, ptr %38, i64 %idx.neg48
  %41 = load i8, ptr %add.ptr49, align 1, !tbaa !25
  %conv50 = zext i8 %41 to i32
  %42 = load i32, ptr %n, align 4, !tbaa !5
  %add51 = add nsw i32 %42, %conv50
  store i32 %add51, ptr %n, align 4, !tbaa !5
  %43 = load ptr, ptr %cp, align 8, !tbaa !21
  %44 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr52 = getelementptr inbounds nuw i8, ptr %44, i32 1
  store ptr %incdec.ptr52, ptr %p, align 8, !tbaa !21
  %45 = load i8, ptr %44, align 1, !tbaa !25
  %conv53 = zext i8 %45 to i32
  %idx.ext54 = sext i32 %conv53 to i64
  %idx.neg55 = sub i64 0, %idx.ext54
  %add.ptr56 = getelementptr inbounds i8, ptr %43, i64 %idx.neg55
  %46 = load i8, ptr %add.ptr56, align 1, !tbaa !25
  %conv57 = zext i8 %46 to i32
  %47 = load i32, ptr %n, align 4, !tbaa !5
  %add58 = add nsw i32 %47, %conv57
  store i32 %add58, ptr %n, align 4, !tbaa !5
  %48 = load ptr, ptr %cp, align 8, !tbaa !21
  %49 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr59 = getelementptr inbounds nuw i8, ptr %49, i32 1
  store ptr %incdec.ptr59, ptr %p, align 8, !tbaa !21
  %50 = load i8, ptr %49, align 1, !tbaa !25
  %conv60 = zext i8 %50 to i32
  %idx.ext61 = sext i32 %conv60 to i64
  %idx.neg62 = sub i64 0, %idx.ext61
  %add.ptr63 = getelementptr inbounds i8, ptr %48, i64 %idx.neg62
  %51 = load i8, ptr %add.ptr63, align 1, !tbaa !25
  %conv64 = zext i8 %51 to i32
  %52 = load i32, ptr %n, align 4, !tbaa !5
  %add65 = add nsw i32 %52, %conv64
  store i32 %add65, ptr %n, align 4, !tbaa !5
  %53 = load ptr, ptr %cp, align 8, !tbaa !21
  %54 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr66 = getelementptr inbounds nuw i8, ptr %54, i32 1
  store ptr %incdec.ptr66, ptr %p, align 8, !tbaa !21
  %55 = load i8, ptr %54, align 1, !tbaa !25
  %conv67 = zext i8 %55 to i32
  %idx.ext68 = sext i32 %conv67 to i64
  %idx.neg69 = sub i64 0, %idx.ext68
  %add.ptr70 = getelementptr inbounds i8, ptr %53, i64 %idx.neg69
  %56 = load i8, ptr %add.ptr70, align 1, !tbaa !25
  %conv71 = zext i8 %56 to i32
  %57 = load i32, ptr %n, align 4, !tbaa !5
  %add72 = add nsw i32 %57, %conv71
  store i32 %add72, ptr %n, align 4, !tbaa !5
  %58 = load ptr, ptr %cp, align 8, !tbaa !21
  %59 = load ptr, ptr %p, align 8, !tbaa !21
  %60 = load i8, ptr %59, align 1, !tbaa !25
  %conv73 = zext i8 %60 to i32
  %idx.ext74 = sext i32 %conv73 to i64
  %idx.neg75 = sub i64 0, %idx.ext74
  %add.ptr76 = getelementptr inbounds i8, ptr %58, i64 %idx.neg75
  %61 = load i8, ptr %add.ptr76, align 1, !tbaa !25
  %conv77 = zext i8 %61 to i32
  %62 = load i32, ptr %n, align 4, !tbaa !5
  %add78 = add nsw i32 %62, %conv77
  store i32 %add78, ptr %n, align 4, !tbaa !5
  %63 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %sub79 = sub nsw i32 %63, 5
  %64 = load ptr, ptr %p, align 8, !tbaa !21
  %idx.ext80 = sext i32 %sub79 to i64
  %add.ptr81 = getelementptr inbounds i8, ptr %64, i64 %idx.ext80
  store ptr %add.ptr81, ptr %p, align 8, !tbaa !21
  %65 = load ptr, ptr %cp, align 8, !tbaa !21
  %66 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr82 = getelementptr inbounds nuw i8, ptr %66, i32 1
  store ptr %incdec.ptr82, ptr %p, align 8, !tbaa !21
  %67 = load i8, ptr %66, align 1, !tbaa !25
  %conv83 = zext i8 %67 to i32
  %idx.ext84 = sext i32 %conv83 to i64
  %idx.neg85 = sub i64 0, %idx.ext84
  %add.ptr86 = getelementptr inbounds i8, ptr %65, i64 %idx.neg85
  %68 = load i8, ptr %add.ptr86, align 1, !tbaa !25
  %conv87 = zext i8 %68 to i32
  %69 = load i32, ptr %n, align 4, !tbaa !5
  %add88 = add nsw i32 %69, %conv87
  store i32 %add88, ptr %n, align 4, !tbaa !5
  %70 = load ptr, ptr %cp, align 8, !tbaa !21
  %71 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr89 = getelementptr inbounds nuw i8, ptr %71, i32 1
  store ptr %incdec.ptr89, ptr %p, align 8, !tbaa !21
  %72 = load i8, ptr %71, align 1, !tbaa !25
  %conv90 = zext i8 %72 to i32
  %idx.ext91 = sext i32 %conv90 to i64
  %idx.neg92 = sub i64 0, %idx.ext91
  %add.ptr93 = getelementptr inbounds i8, ptr %70, i64 %idx.neg92
  %73 = load i8, ptr %add.ptr93, align 1, !tbaa !25
  %conv94 = zext i8 %73 to i32
  %74 = load i32, ptr %n, align 4, !tbaa !5
  %add95 = add nsw i32 %74, %conv94
  store i32 %add95, ptr %n, align 4, !tbaa !5
  %75 = load ptr, ptr %cp, align 8, !tbaa !21
  %76 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr96 = getelementptr inbounds nuw i8, ptr %76, i32 1
  store ptr %incdec.ptr96, ptr %p, align 8, !tbaa !21
  %77 = load i8, ptr %76, align 1, !tbaa !25
  %conv97 = zext i8 %77 to i32
  %idx.ext98 = sext i32 %conv97 to i64
  %idx.neg99 = sub i64 0, %idx.ext98
  %add.ptr100 = getelementptr inbounds i8, ptr %75, i64 %idx.neg99
  %78 = load i8, ptr %add.ptr100, align 1, !tbaa !25
  %conv101 = zext i8 %78 to i32
  %79 = load i32, ptr %n, align 4, !tbaa !5
  %add102 = add nsw i32 %79, %conv101
  store i32 %add102, ptr %n, align 4, !tbaa !5
  %80 = load ptr, ptr %cp, align 8, !tbaa !21
  %81 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr103 = getelementptr inbounds nuw i8, ptr %81, i32 1
  store ptr %incdec.ptr103, ptr %p, align 8, !tbaa !21
  %82 = load i8, ptr %81, align 1, !tbaa !25
  %conv104 = zext i8 %82 to i32
  %idx.ext105 = sext i32 %conv104 to i64
  %idx.neg106 = sub i64 0, %idx.ext105
  %add.ptr107 = getelementptr inbounds i8, ptr %80, i64 %idx.neg106
  %83 = load i8, ptr %add.ptr107, align 1, !tbaa !25
  %conv108 = zext i8 %83 to i32
  %84 = load i32, ptr %n, align 4, !tbaa !5
  %add109 = add nsw i32 %84, %conv108
  store i32 %add109, ptr %n, align 4, !tbaa !5
  %85 = load ptr, ptr %cp, align 8, !tbaa !21
  %86 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr110 = getelementptr inbounds nuw i8, ptr %86, i32 1
  store ptr %incdec.ptr110, ptr %p, align 8, !tbaa !21
  %87 = load i8, ptr %86, align 1, !tbaa !25
  %conv111 = zext i8 %87 to i32
  %idx.ext112 = sext i32 %conv111 to i64
  %idx.neg113 = sub i64 0, %idx.ext112
  %add.ptr114 = getelementptr inbounds i8, ptr %85, i64 %idx.neg113
  %88 = load i8, ptr %add.ptr114, align 1, !tbaa !25
  %conv115 = zext i8 %88 to i32
  %89 = load i32, ptr %n, align 4, !tbaa !5
  %add116 = add nsw i32 %89, %conv115
  store i32 %add116, ptr %n, align 4, !tbaa !5
  %90 = load ptr, ptr %cp, align 8, !tbaa !21
  %91 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr117 = getelementptr inbounds nuw i8, ptr %91, i32 1
  store ptr %incdec.ptr117, ptr %p, align 8, !tbaa !21
  %92 = load i8, ptr %91, align 1, !tbaa !25
  %conv118 = zext i8 %92 to i32
  %idx.ext119 = sext i32 %conv118 to i64
  %idx.neg120 = sub i64 0, %idx.ext119
  %add.ptr121 = getelementptr inbounds i8, ptr %90, i64 %idx.neg120
  %93 = load i8, ptr %add.ptr121, align 1, !tbaa !25
  %conv122 = zext i8 %93 to i32
  %94 = load i32, ptr %n, align 4, !tbaa !5
  %add123 = add nsw i32 %94, %conv122
  store i32 %add123, ptr %n, align 4, !tbaa !5
  %95 = load ptr, ptr %cp, align 8, !tbaa !21
  %96 = load ptr, ptr %p, align 8, !tbaa !21
  %97 = load i8, ptr %96, align 1, !tbaa !25
  %conv124 = zext i8 %97 to i32
  %idx.ext125 = sext i32 %conv124 to i64
  %idx.neg126 = sub i64 0, %idx.ext125
  %add.ptr127 = getelementptr inbounds i8, ptr %95, i64 %idx.neg126
  %98 = load i8, ptr %add.ptr127, align 1, !tbaa !25
  %conv128 = zext i8 %98 to i32
  %99 = load i32, ptr %n, align 4, !tbaa !5
  %add129 = add nsw i32 %99, %conv128
  store i32 %add129, ptr %n, align 4, !tbaa !5
  %100 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %sub130 = sub nsw i32 %100, 6
  %101 = load ptr, ptr %p, align 8, !tbaa !21
  %idx.ext131 = sext i32 %sub130 to i64
  %add.ptr132 = getelementptr inbounds i8, ptr %101, i64 %idx.ext131
  store ptr %add.ptr132, ptr %p, align 8, !tbaa !21
  %102 = load ptr, ptr %cp, align 8, !tbaa !21
  %103 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr133 = getelementptr inbounds nuw i8, ptr %103, i32 1
  store ptr %incdec.ptr133, ptr %p, align 8, !tbaa !21
  %104 = load i8, ptr %103, align 1, !tbaa !25
  %conv134 = zext i8 %104 to i32
  %idx.ext135 = sext i32 %conv134 to i64
  %idx.neg136 = sub i64 0, %idx.ext135
  %add.ptr137 = getelementptr inbounds i8, ptr %102, i64 %idx.neg136
  %105 = load i8, ptr %add.ptr137, align 1, !tbaa !25
  %conv138 = zext i8 %105 to i32
  %106 = load i32, ptr %n, align 4, !tbaa !5
  %add139 = add nsw i32 %106, %conv138
  store i32 %add139, ptr %n, align 4, !tbaa !5
  %107 = load ptr, ptr %cp, align 8, !tbaa !21
  %108 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr140 = getelementptr inbounds nuw i8, ptr %108, i32 1
  store ptr %incdec.ptr140, ptr %p, align 8, !tbaa !21
  %109 = load i8, ptr %108, align 1, !tbaa !25
  %conv141 = zext i8 %109 to i32
  %idx.ext142 = sext i32 %conv141 to i64
  %idx.neg143 = sub i64 0, %idx.ext142
  %add.ptr144 = getelementptr inbounds i8, ptr %107, i64 %idx.neg143
  %110 = load i8, ptr %add.ptr144, align 1, !tbaa !25
  %conv145 = zext i8 %110 to i32
  %111 = load i32, ptr %n, align 4, !tbaa !5
  %add146 = add nsw i32 %111, %conv145
  store i32 %add146, ptr %n, align 4, !tbaa !5
  %112 = load ptr, ptr %cp, align 8, !tbaa !21
  %113 = load ptr, ptr %p, align 8, !tbaa !21
  %114 = load i8, ptr %113, align 1, !tbaa !25
  %conv147 = zext i8 %114 to i32
  %idx.ext148 = sext i32 %conv147 to i64
  %idx.neg149 = sub i64 0, %idx.ext148
  %add.ptr150 = getelementptr inbounds i8, ptr %112, i64 %idx.neg149
  %115 = load i8, ptr %add.ptr150, align 1, !tbaa !25
  %conv151 = zext i8 %115 to i32
  %116 = load i32, ptr %n, align 4, !tbaa !5
  %add152 = add nsw i32 %116, %conv151
  store i32 %add152, ptr %n, align 4, !tbaa !5
  %117 = load i32, ptr %n, align 4, !tbaa !5
  %118 = load i32, ptr %max_no.addr, align 4, !tbaa !5
  %cmp153 = icmp slt i32 %117, %118
  br i1 %cmp153, label %if.then, label %if.end903

if.then:                                          ; preds = %for.body14
  %119 = load ptr, ptr %p, align 8, !tbaa !21
  %add.ptr155 = getelementptr inbounds i8, ptr %119, i64 2
  store ptr %add.ptr155, ptr %p, align 8, !tbaa !21
  %120 = load ptr, ptr %cp, align 8, !tbaa !21
  %121 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr156 = getelementptr inbounds nuw i8, ptr %121, i32 1
  store ptr %incdec.ptr156, ptr %p, align 8, !tbaa !21
  %122 = load i8, ptr %121, align 1, !tbaa !25
  %conv157 = zext i8 %122 to i32
  %idx.ext158 = sext i32 %conv157 to i64
  %idx.neg159 = sub i64 0, %idx.ext158
  %add.ptr160 = getelementptr inbounds i8, ptr %120, i64 %idx.neg159
  %123 = load i8, ptr %add.ptr160, align 1, !tbaa !25
  %conv161 = zext i8 %123 to i32
  %124 = load i32, ptr %n, align 4, !tbaa !5
  %add162 = add nsw i32 %124, %conv161
  store i32 %add162, ptr %n, align 4, !tbaa !5
  %125 = load i32, ptr %n, align 4, !tbaa !5
  %126 = load i32, ptr %max_no.addr, align 4, !tbaa !5
  %cmp163 = icmp slt i32 %125, %126
  br i1 %cmp163, label %if.then165, label %if.end902

if.then165:                                       ; preds = %if.then
  %127 = load ptr, ptr %cp, align 8, !tbaa !21
  %128 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr166 = getelementptr inbounds nuw i8, ptr %128, i32 1
  store ptr %incdec.ptr166, ptr %p, align 8, !tbaa !21
  %129 = load i8, ptr %128, align 1, !tbaa !25
  %conv167 = zext i8 %129 to i32
  %idx.ext168 = sext i32 %conv167 to i64
  %idx.neg169 = sub i64 0, %idx.ext168
  %add.ptr170 = getelementptr inbounds i8, ptr %127, i64 %idx.neg169
  %130 = load i8, ptr %add.ptr170, align 1, !tbaa !25
  %conv171 = zext i8 %130 to i32
  %131 = load i32, ptr %n, align 4, !tbaa !5
  %add172 = add nsw i32 %131, %conv171
  store i32 %add172, ptr %n, align 4, !tbaa !5
  %132 = load i32, ptr %n, align 4, !tbaa !5
  %133 = load i32, ptr %max_no.addr, align 4, !tbaa !5
  %cmp173 = icmp slt i32 %132, %133
  br i1 %cmp173, label %if.then175, label %if.end901

if.then175:                                       ; preds = %if.then165
  %134 = load ptr, ptr %cp, align 8, !tbaa !21
  %135 = load ptr, ptr %p, align 8, !tbaa !21
  %136 = load i8, ptr %135, align 1, !tbaa !25
  %conv176 = zext i8 %136 to i32
  %idx.ext177 = sext i32 %conv176 to i64
  %idx.neg178 = sub i64 0, %idx.ext177
  %add.ptr179 = getelementptr inbounds i8, ptr %134, i64 %idx.neg178
  %137 = load i8, ptr %add.ptr179, align 1, !tbaa !25
  %conv180 = zext i8 %137 to i32
  %138 = load i32, ptr %n, align 4, !tbaa !5
  %add181 = add nsw i32 %138, %conv180
  store i32 %add181, ptr %n, align 4, !tbaa !5
  %139 = load i32, ptr %n, align 4, !tbaa !5
  %140 = load i32, ptr %max_no.addr, align 4, !tbaa !5
  %cmp182 = icmp slt i32 %139, %140
  br i1 %cmp182, label %if.then184, label %if.end900

if.then184:                                       ; preds = %if.then175
  %141 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %sub185 = sub nsw i32 %141, 6
  %142 = load ptr, ptr %p, align 8, !tbaa !21
  %idx.ext186 = sext i32 %sub185 to i64
  %add.ptr187 = getelementptr inbounds i8, ptr %142, i64 %idx.ext186
  store ptr %add.ptr187, ptr %p, align 8, !tbaa !21
  %143 = load ptr, ptr %cp, align 8, !tbaa !21
  %144 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr188 = getelementptr inbounds nuw i8, ptr %144, i32 1
  store ptr %incdec.ptr188, ptr %p, align 8, !tbaa !21
  %145 = load i8, ptr %144, align 1, !tbaa !25
  %conv189 = zext i8 %145 to i32
  %idx.ext190 = sext i32 %conv189 to i64
  %idx.neg191 = sub i64 0, %idx.ext190
  %add.ptr192 = getelementptr inbounds i8, ptr %143, i64 %idx.neg191
  %146 = load i8, ptr %add.ptr192, align 1, !tbaa !25
  %conv193 = zext i8 %146 to i32
  %147 = load i32, ptr %n, align 4, !tbaa !5
  %add194 = add nsw i32 %147, %conv193
  store i32 %add194, ptr %n, align 4, !tbaa !5
  %148 = load i32, ptr %n, align 4, !tbaa !5
  %149 = load i32, ptr %max_no.addr, align 4, !tbaa !5
  %cmp195 = icmp slt i32 %148, %149
  br i1 %cmp195, label %if.then197, label %if.end899

if.then197:                                       ; preds = %if.then184
  %150 = load ptr, ptr %cp, align 8, !tbaa !21
  %151 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr198 = getelementptr inbounds nuw i8, ptr %151, i32 1
  store ptr %incdec.ptr198, ptr %p, align 8, !tbaa !21
  %152 = load i8, ptr %151, align 1, !tbaa !25
  %conv199 = zext i8 %152 to i32
  %idx.ext200 = sext i32 %conv199 to i64
  %idx.neg201 = sub i64 0, %idx.ext200
  %add.ptr202 = getelementptr inbounds i8, ptr %150, i64 %idx.neg201
  %153 = load i8, ptr %add.ptr202, align 1, !tbaa !25
  %conv203 = zext i8 %153 to i32
  %154 = load i32, ptr %n, align 4, !tbaa !5
  %add204 = add nsw i32 %154, %conv203
  store i32 %add204, ptr %n, align 4, !tbaa !5
  %155 = load i32, ptr %n, align 4, !tbaa !5
  %156 = load i32, ptr %max_no.addr, align 4, !tbaa !5
  %cmp205 = icmp slt i32 %155, %156
  br i1 %cmp205, label %if.then207, label %if.end898

if.then207:                                       ; preds = %if.then197
  %157 = load ptr, ptr %cp, align 8, !tbaa !21
  %158 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr208 = getelementptr inbounds nuw i8, ptr %158, i32 1
  store ptr %incdec.ptr208, ptr %p, align 8, !tbaa !21
  %159 = load i8, ptr %158, align 1, !tbaa !25
  %conv209 = zext i8 %159 to i32
  %idx.ext210 = sext i32 %conv209 to i64
  %idx.neg211 = sub i64 0, %idx.ext210
  %add.ptr212 = getelementptr inbounds i8, ptr %157, i64 %idx.neg211
  %160 = load i8, ptr %add.ptr212, align 1, !tbaa !25
  %conv213 = zext i8 %160 to i32
  %161 = load i32, ptr %n, align 4, !tbaa !5
  %add214 = add nsw i32 %161, %conv213
  store i32 %add214, ptr %n, align 4, !tbaa !5
  %162 = load i32, ptr %n, align 4, !tbaa !5
  %163 = load i32, ptr %max_no.addr, align 4, !tbaa !5
  %cmp215 = icmp slt i32 %162, %163
  br i1 %cmp215, label %if.then217, label %if.end897

if.then217:                                       ; preds = %if.then207
  %164 = load ptr, ptr %cp, align 8, !tbaa !21
  %165 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr218 = getelementptr inbounds nuw i8, ptr %165, i32 1
  store ptr %incdec.ptr218, ptr %p, align 8, !tbaa !21
  %166 = load i8, ptr %165, align 1, !tbaa !25
  %conv219 = zext i8 %166 to i32
  %idx.ext220 = sext i32 %conv219 to i64
  %idx.neg221 = sub i64 0, %idx.ext220
  %add.ptr222 = getelementptr inbounds i8, ptr %164, i64 %idx.neg221
  %167 = load i8, ptr %add.ptr222, align 1, !tbaa !25
  %conv223 = zext i8 %167 to i32
  %168 = load i32, ptr %n, align 4, !tbaa !5
  %add224 = add nsw i32 %168, %conv223
  store i32 %add224, ptr %n, align 4, !tbaa !5
  %169 = load i32, ptr %n, align 4, !tbaa !5
  %170 = load i32, ptr %max_no.addr, align 4, !tbaa !5
  %cmp225 = icmp slt i32 %169, %170
  br i1 %cmp225, label %if.then227, label %if.end896

if.then227:                                       ; preds = %if.then217
  %171 = load ptr, ptr %cp, align 8, !tbaa !21
  %172 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr228 = getelementptr inbounds nuw i8, ptr %172, i32 1
  store ptr %incdec.ptr228, ptr %p, align 8, !tbaa !21
  %173 = load i8, ptr %172, align 1, !tbaa !25
  %conv229 = zext i8 %173 to i32
  %idx.ext230 = sext i32 %conv229 to i64
  %idx.neg231 = sub i64 0, %idx.ext230
  %add.ptr232 = getelementptr inbounds i8, ptr %171, i64 %idx.neg231
  %174 = load i8, ptr %add.ptr232, align 1, !tbaa !25
  %conv233 = zext i8 %174 to i32
  %175 = load i32, ptr %n, align 4, !tbaa !5
  %add234 = add nsw i32 %175, %conv233
  store i32 %add234, ptr %n, align 4, !tbaa !5
  %176 = load i32, ptr %n, align 4, !tbaa !5
  %177 = load i32, ptr %max_no.addr, align 4, !tbaa !5
  %cmp235 = icmp slt i32 %176, %177
  br i1 %cmp235, label %if.then237, label %if.end895

if.then237:                                       ; preds = %if.then227
  %178 = load ptr, ptr %cp, align 8, !tbaa !21
  %179 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr238 = getelementptr inbounds nuw i8, ptr %179, i32 1
  store ptr %incdec.ptr238, ptr %p, align 8, !tbaa !21
  %180 = load i8, ptr %179, align 1, !tbaa !25
  %conv239 = zext i8 %180 to i32
  %idx.ext240 = sext i32 %conv239 to i64
  %idx.neg241 = sub i64 0, %idx.ext240
  %add.ptr242 = getelementptr inbounds i8, ptr %178, i64 %idx.neg241
  %181 = load i8, ptr %add.ptr242, align 1, !tbaa !25
  %conv243 = zext i8 %181 to i32
  %182 = load i32, ptr %n, align 4, !tbaa !5
  %add244 = add nsw i32 %182, %conv243
  store i32 %add244, ptr %n, align 4, !tbaa !5
  %183 = load i32, ptr %n, align 4, !tbaa !5
  %184 = load i32, ptr %max_no.addr, align 4, !tbaa !5
  %cmp245 = icmp slt i32 %183, %184
  br i1 %cmp245, label %if.then247, label %if.end894

if.then247:                                       ; preds = %if.then237
  %185 = load ptr, ptr %cp, align 8, !tbaa !21
  %186 = load ptr, ptr %p, align 8, !tbaa !21
  %187 = load i8, ptr %186, align 1, !tbaa !25
  %conv248 = zext i8 %187 to i32
  %idx.ext249 = sext i32 %conv248 to i64
  %idx.neg250 = sub i64 0, %idx.ext249
  %add.ptr251 = getelementptr inbounds i8, ptr %185, i64 %idx.neg250
  %188 = load i8, ptr %add.ptr251, align 1, !tbaa !25
  %conv252 = zext i8 %188 to i32
  %189 = load i32, ptr %n, align 4, !tbaa !5
  %add253 = add nsw i32 %189, %conv252
  store i32 %add253, ptr %n, align 4, !tbaa !5
  %190 = load i32, ptr %n, align 4, !tbaa !5
  %191 = load i32, ptr %max_no.addr, align 4, !tbaa !5
  %cmp254 = icmp slt i32 %190, %191
  br i1 %cmp254, label %if.then256, label %if.end893

if.then256:                                       ; preds = %if.then247
  %192 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %sub257 = sub nsw i32 %192, 5
  %193 = load ptr, ptr %p, align 8, !tbaa !21
  %idx.ext258 = sext i32 %sub257 to i64
  %add.ptr259 = getelementptr inbounds i8, ptr %193, i64 %idx.ext258
  store ptr %add.ptr259, ptr %p, align 8, !tbaa !21
  %194 = load ptr, ptr %cp, align 8, !tbaa !21
  %195 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr260 = getelementptr inbounds nuw i8, ptr %195, i32 1
  store ptr %incdec.ptr260, ptr %p, align 8, !tbaa !21
  %196 = load i8, ptr %195, align 1, !tbaa !25
  %conv261 = zext i8 %196 to i32
  %idx.ext262 = sext i32 %conv261 to i64
  %idx.neg263 = sub i64 0, %idx.ext262
  %add.ptr264 = getelementptr inbounds i8, ptr %194, i64 %idx.neg263
  %197 = load i8, ptr %add.ptr264, align 1, !tbaa !25
  %conv265 = zext i8 %197 to i32
  %198 = load i32, ptr %n, align 4, !tbaa !5
  %add266 = add nsw i32 %198, %conv265
  store i32 %add266, ptr %n, align 4, !tbaa !5
  %199 = load i32, ptr %n, align 4, !tbaa !5
  %200 = load i32, ptr %max_no.addr, align 4, !tbaa !5
  %cmp267 = icmp slt i32 %199, %200
  br i1 %cmp267, label %if.then269, label %if.end892

if.then269:                                       ; preds = %if.then256
  %201 = load ptr, ptr %cp, align 8, !tbaa !21
  %202 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr270 = getelementptr inbounds nuw i8, ptr %202, i32 1
  store ptr %incdec.ptr270, ptr %p, align 8, !tbaa !21
  %203 = load i8, ptr %202, align 1, !tbaa !25
  %conv271 = zext i8 %203 to i32
  %idx.ext272 = sext i32 %conv271 to i64
  %idx.neg273 = sub i64 0, %idx.ext272
  %add.ptr274 = getelementptr inbounds i8, ptr %201, i64 %idx.neg273
  %204 = load i8, ptr %add.ptr274, align 1, !tbaa !25
  %conv275 = zext i8 %204 to i32
  %205 = load i32, ptr %n, align 4, !tbaa !5
  %add276 = add nsw i32 %205, %conv275
  store i32 %add276, ptr %n, align 4, !tbaa !5
  %206 = load i32, ptr %n, align 4, !tbaa !5
  %207 = load i32, ptr %max_no.addr, align 4, !tbaa !5
  %cmp277 = icmp slt i32 %206, %207
  br i1 %cmp277, label %if.then279, label %if.end891

if.then279:                                       ; preds = %if.then269
  %208 = load ptr, ptr %cp, align 8, !tbaa !21
  %209 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr280 = getelementptr inbounds nuw i8, ptr %209, i32 1
  store ptr %incdec.ptr280, ptr %p, align 8, !tbaa !21
  %210 = load i8, ptr %209, align 1, !tbaa !25
  %conv281 = zext i8 %210 to i32
  %idx.ext282 = sext i32 %conv281 to i64
  %idx.neg283 = sub i64 0, %idx.ext282
  %add.ptr284 = getelementptr inbounds i8, ptr %208, i64 %idx.neg283
  %211 = load i8, ptr %add.ptr284, align 1, !tbaa !25
  %conv285 = zext i8 %211 to i32
  %212 = load i32, ptr %n, align 4, !tbaa !5
  %add286 = add nsw i32 %212, %conv285
  store i32 %add286, ptr %n, align 4, !tbaa !5
  %213 = load i32, ptr %n, align 4, !tbaa !5
  %214 = load i32, ptr %max_no.addr, align 4, !tbaa !5
  %cmp287 = icmp slt i32 %213, %214
  br i1 %cmp287, label %if.then289, label %if.end890

if.then289:                                       ; preds = %if.then279
  %215 = load ptr, ptr %cp, align 8, !tbaa !21
  %216 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr290 = getelementptr inbounds nuw i8, ptr %216, i32 1
  store ptr %incdec.ptr290, ptr %p, align 8, !tbaa !21
  %217 = load i8, ptr %216, align 1, !tbaa !25
  %conv291 = zext i8 %217 to i32
  %idx.ext292 = sext i32 %conv291 to i64
  %idx.neg293 = sub i64 0, %idx.ext292
  %add.ptr294 = getelementptr inbounds i8, ptr %215, i64 %idx.neg293
  %218 = load i8, ptr %add.ptr294, align 1, !tbaa !25
  %conv295 = zext i8 %218 to i32
  %219 = load i32, ptr %n, align 4, !tbaa !5
  %add296 = add nsw i32 %219, %conv295
  store i32 %add296, ptr %n, align 4, !tbaa !5
  %220 = load i32, ptr %n, align 4, !tbaa !5
  %221 = load i32, ptr %max_no.addr, align 4, !tbaa !5
  %cmp297 = icmp slt i32 %220, %221
  br i1 %cmp297, label %if.then299, label %if.end889

if.then299:                                       ; preds = %if.then289
  %222 = load ptr, ptr %cp, align 8, !tbaa !21
  %223 = load ptr, ptr %p, align 8, !tbaa !21
  %224 = load i8, ptr %223, align 1, !tbaa !25
  %conv300 = zext i8 %224 to i32
  %idx.ext301 = sext i32 %conv300 to i64
  %idx.neg302 = sub i64 0, %idx.ext301
  %add.ptr303 = getelementptr inbounds i8, ptr %222, i64 %idx.neg302
  %225 = load i8, ptr %add.ptr303, align 1, !tbaa !25
  %conv304 = zext i8 %225 to i32
  %226 = load i32, ptr %n, align 4, !tbaa !5
  %add305 = add nsw i32 %226, %conv304
  store i32 %add305, ptr %n, align 4, !tbaa !5
  %227 = load i32, ptr %n, align 4, !tbaa !5
  %228 = load i32, ptr %max_no.addr, align 4, !tbaa !5
  %cmp306 = icmp slt i32 %227, %228
  br i1 %cmp306, label %if.then308, label %if.end888

if.then308:                                       ; preds = %if.then299
  %229 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %sub309 = sub nsw i32 %229, 3
  %230 = load ptr, ptr %p, align 8, !tbaa !21
  %idx.ext310 = sext i32 %sub309 to i64
  %add.ptr311 = getelementptr inbounds i8, ptr %230, i64 %idx.ext310
  store ptr %add.ptr311, ptr %p, align 8, !tbaa !21
  %231 = load ptr, ptr %cp, align 8, !tbaa !21
  %232 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr312 = getelementptr inbounds nuw i8, ptr %232, i32 1
  store ptr %incdec.ptr312, ptr %p, align 8, !tbaa !21
  %233 = load i8, ptr %232, align 1, !tbaa !25
  %conv313 = zext i8 %233 to i32
  %idx.ext314 = sext i32 %conv313 to i64
  %idx.neg315 = sub i64 0, %idx.ext314
  %add.ptr316 = getelementptr inbounds i8, ptr %231, i64 %idx.neg315
  %234 = load i8, ptr %add.ptr316, align 1, !tbaa !25
  %conv317 = zext i8 %234 to i32
  %235 = load i32, ptr %n, align 4, !tbaa !5
  %add318 = add nsw i32 %235, %conv317
  store i32 %add318, ptr %n, align 4, !tbaa !5
  %236 = load i32, ptr %n, align 4, !tbaa !5
  %237 = load i32, ptr %max_no.addr, align 4, !tbaa !5
  %cmp319 = icmp slt i32 %236, %237
  br i1 %cmp319, label %if.then321, label %if.end887

if.then321:                                       ; preds = %if.then308
  %238 = load ptr, ptr %cp, align 8, !tbaa !21
  %239 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr322 = getelementptr inbounds nuw i8, ptr %239, i32 1
  store ptr %incdec.ptr322, ptr %p, align 8, !tbaa !21
  %240 = load i8, ptr %239, align 1, !tbaa !25
  %conv323 = zext i8 %240 to i32
  %idx.ext324 = sext i32 %conv323 to i64
  %idx.neg325 = sub i64 0, %idx.ext324
  %add.ptr326 = getelementptr inbounds i8, ptr %238, i64 %idx.neg325
  %241 = load i8, ptr %add.ptr326, align 1, !tbaa !25
  %conv327 = zext i8 %241 to i32
  %242 = load i32, ptr %n, align 4, !tbaa !5
  %add328 = add nsw i32 %242, %conv327
  store i32 %add328, ptr %n, align 4, !tbaa !5
  %243 = load i32, ptr %n, align 4, !tbaa !5
  %244 = load i32, ptr %max_no.addr, align 4, !tbaa !5
  %cmp329 = icmp slt i32 %243, %244
  br i1 %cmp329, label %if.then331, label %if.end886

if.then331:                                       ; preds = %if.then321
  %245 = load ptr, ptr %cp, align 8, !tbaa !21
  %246 = load ptr, ptr %p, align 8, !tbaa !21
  %247 = load i8, ptr %246, align 1, !tbaa !25
  %conv332 = zext i8 %247 to i32
  %idx.ext333 = sext i32 %conv332 to i64
  %idx.neg334 = sub i64 0, %idx.ext333
  %add.ptr335 = getelementptr inbounds i8, ptr %245, i64 %idx.neg334
  %248 = load i8, ptr %add.ptr335, align 1, !tbaa !25
  %conv336 = zext i8 %248 to i32
  %249 = load i32, ptr %n, align 4, !tbaa !5
  %add337 = add nsw i32 %249, %conv336
  store i32 %add337, ptr %n, align 4, !tbaa !5
  %250 = load i32, ptr %n, align 4, !tbaa !5
  %251 = load i32, ptr %max_no.addr, align 4, !tbaa !5
  %cmp338 = icmp slt i32 %250, %251
  br i1 %cmp338, label %if.then340, label %if.end885

if.then340:                                       ; preds = %if.then331
  store i32 0, ptr %x, align 4, !tbaa !5
  store i32 0, ptr %y, align 4, !tbaa !5
  %252 = load ptr, ptr %in.addr, align 8, !tbaa !21
  %253 = load i32, ptr %i, align 4, !tbaa !5
  %sub341 = sub nsw i32 %253, 3
  %254 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul342 = mul nsw i32 %sub341, %254
  %idx.ext343 = sext i32 %mul342 to i64
  %add.ptr344 = getelementptr inbounds i8, ptr %252, i64 %idx.ext343
  %255 = load i32, ptr %j, align 4, !tbaa !5
  %idx.ext345 = sext i32 %255 to i64
  %add.ptr346 = getelementptr inbounds i8, ptr %add.ptr344, i64 %idx.ext345
  %add.ptr347 = getelementptr inbounds i8, ptr %add.ptr346, i64 -1
  store ptr %add.ptr347, ptr %p, align 8, !tbaa !21
  %256 = load ptr, ptr %cp, align 8, !tbaa !21
  %257 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr348 = getelementptr inbounds nuw i8, ptr %257, i32 1
  store ptr %incdec.ptr348, ptr %p, align 8, !tbaa !21
  %258 = load i8, ptr %257, align 1, !tbaa !25
  %conv349 = zext i8 %258 to i32
  %idx.ext350 = sext i32 %conv349 to i64
  %idx.neg351 = sub i64 0, %idx.ext350
  %add.ptr352 = getelementptr inbounds i8, ptr %256, i64 %idx.neg351
  %259 = load i8, ptr %add.ptr352, align 1, !tbaa !25
  store i8 %259, ptr %c, align 1, !tbaa !25
  %260 = load i8, ptr %c, align 1, !tbaa !25
  %conv353 = zext i8 %260 to i32
  %261 = load i32, ptr %x, align 4, !tbaa !5
  %sub354 = sub nsw i32 %261, %conv353
  store i32 %sub354, ptr %x, align 4, !tbaa !5
  %262 = load i8, ptr %c, align 1, !tbaa !25
  %conv355 = zext i8 %262 to i32
  %mul356 = mul nsw i32 3, %conv355
  %263 = load i32, ptr %y, align 4, !tbaa !5
  %sub357 = sub nsw i32 %263, %mul356
  store i32 %sub357, ptr %y, align 4, !tbaa !5
  %264 = load ptr, ptr %cp, align 8, !tbaa !21
  %265 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr358 = getelementptr inbounds nuw i8, ptr %265, i32 1
  store ptr %incdec.ptr358, ptr %p, align 8, !tbaa !21
  %266 = load i8, ptr %265, align 1, !tbaa !25
  %conv359 = zext i8 %266 to i32
  %idx.ext360 = sext i32 %conv359 to i64
  %idx.neg361 = sub i64 0, %idx.ext360
  %add.ptr362 = getelementptr inbounds i8, ptr %264, i64 %idx.neg361
  %267 = load i8, ptr %add.ptr362, align 1, !tbaa !25
  store i8 %267, ptr %c, align 1, !tbaa !25
  %268 = load i8, ptr %c, align 1, !tbaa !25
  %conv363 = zext i8 %268 to i32
  %mul364 = mul nsw i32 3, %conv363
  %269 = load i32, ptr %y, align 4, !tbaa !5
  %sub365 = sub nsw i32 %269, %mul364
  store i32 %sub365, ptr %y, align 4, !tbaa !5
  %270 = load ptr, ptr %cp, align 8, !tbaa !21
  %271 = load ptr, ptr %p, align 8, !tbaa !21
  %272 = load i8, ptr %271, align 1, !tbaa !25
  %conv366 = zext i8 %272 to i32
  %idx.ext367 = sext i32 %conv366 to i64
  %idx.neg368 = sub i64 0, %idx.ext367
  %add.ptr369 = getelementptr inbounds i8, ptr %270, i64 %idx.neg368
  %273 = load i8, ptr %add.ptr369, align 1, !tbaa !25
  store i8 %273, ptr %c, align 1, !tbaa !25
  %274 = load i8, ptr %c, align 1, !tbaa !25
  %conv370 = zext i8 %274 to i32
  %275 = load i32, ptr %x, align 4, !tbaa !5
  %add371 = add nsw i32 %275, %conv370
  store i32 %add371, ptr %x, align 4, !tbaa !5
  %276 = load i8, ptr %c, align 1, !tbaa !25
  %conv372 = zext i8 %276 to i32
  %mul373 = mul nsw i32 3, %conv372
  %277 = load i32, ptr %y, align 4, !tbaa !5
  %sub374 = sub nsw i32 %277, %mul373
  store i32 %sub374, ptr %y, align 4, !tbaa !5
  %278 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %sub375 = sub nsw i32 %278, 3
  %279 = load ptr, ptr %p, align 8, !tbaa !21
  %idx.ext376 = sext i32 %sub375 to i64
  %add.ptr377 = getelementptr inbounds i8, ptr %279, i64 %idx.ext376
  store ptr %add.ptr377, ptr %p, align 8, !tbaa !21
  %280 = load ptr, ptr %cp, align 8, !tbaa !21
  %281 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr378 = getelementptr inbounds nuw i8, ptr %281, i32 1
  store ptr %incdec.ptr378, ptr %p, align 8, !tbaa !21
  %282 = load i8, ptr %281, align 1, !tbaa !25
  %conv379 = zext i8 %282 to i32
  %idx.ext380 = sext i32 %conv379 to i64
  %idx.neg381 = sub i64 0, %idx.ext380
  %add.ptr382 = getelementptr inbounds i8, ptr %280, i64 %idx.neg381
  %283 = load i8, ptr %add.ptr382, align 1, !tbaa !25
  store i8 %283, ptr %c, align 1, !tbaa !25
  %284 = load i8, ptr %c, align 1, !tbaa !25
  %conv383 = zext i8 %284 to i32
  %mul384 = mul nsw i32 2, %conv383
  %285 = load i32, ptr %x, align 4, !tbaa !5
  %sub385 = sub nsw i32 %285, %mul384
  store i32 %sub385, ptr %x, align 4, !tbaa !5
  %286 = load i8, ptr %c, align 1, !tbaa !25
  %conv386 = zext i8 %286 to i32
  %mul387 = mul nsw i32 2, %conv386
  %287 = load i32, ptr %y, align 4, !tbaa !5
  %sub388 = sub nsw i32 %287, %mul387
  store i32 %sub388, ptr %y, align 4, !tbaa !5
  %288 = load ptr, ptr %cp, align 8, !tbaa !21
  %289 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr389 = getelementptr inbounds nuw i8, ptr %289, i32 1
  store ptr %incdec.ptr389, ptr %p, align 8, !tbaa !21
  %290 = load i8, ptr %289, align 1, !tbaa !25
  %conv390 = zext i8 %290 to i32
  %idx.ext391 = sext i32 %conv390 to i64
  %idx.neg392 = sub i64 0, %idx.ext391
  %add.ptr393 = getelementptr inbounds i8, ptr %288, i64 %idx.neg392
  %291 = load i8, ptr %add.ptr393, align 1, !tbaa !25
  store i8 %291, ptr %c, align 1, !tbaa !25
  %292 = load i8, ptr %c, align 1, !tbaa !25
  %conv394 = zext i8 %292 to i32
  %293 = load i32, ptr %x, align 4, !tbaa !5
  %sub395 = sub nsw i32 %293, %conv394
  store i32 %sub395, ptr %x, align 4, !tbaa !5
  %294 = load i8, ptr %c, align 1, !tbaa !25
  %conv396 = zext i8 %294 to i32
  %mul397 = mul nsw i32 2, %conv396
  %295 = load i32, ptr %y, align 4, !tbaa !5
  %sub398 = sub nsw i32 %295, %mul397
  store i32 %sub398, ptr %y, align 4, !tbaa !5
  %296 = load ptr, ptr %cp, align 8, !tbaa !21
  %297 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr399 = getelementptr inbounds nuw i8, ptr %297, i32 1
  store ptr %incdec.ptr399, ptr %p, align 8, !tbaa !21
  %298 = load i8, ptr %297, align 1, !tbaa !25
  %conv400 = zext i8 %298 to i32
  %idx.ext401 = sext i32 %conv400 to i64
  %idx.neg402 = sub i64 0, %idx.ext401
  %add.ptr403 = getelementptr inbounds i8, ptr %296, i64 %idx.neg402
  %299 = load i8, ptr %add.ptr403, align 1, !tbaa !25
  store i8 %299, ptr %c, align 1, !tbaa !25
  %300 = load i8, ptr %c, align 1, !tbaa !25
  %conv404 = zext i8 %300 to i32
  %mul405 = mul nsw i32 2, %conv404
  %301 = load i32, ptr %y, align 4, !tbaa !5
  %sub406 = sub nsw i32 %301, %mul405
  store i32 %sub406, ptr %y, align 4, !tbaa !5
  %302 = load ptr, ptr %cp, align 8, !tbaa !21
  %303 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr407 = getelementptr inbounds nuw i8, ptr %303, i32 1
  store ptr %incdec.ptr407, ptr %p, align 8, !tbaa !21
  %304 = load i8, ptr %303, align 1, !tbaa !25
  %conv408 = zext i8 %304 to i32
  %idx.ext409 = sext i32 %conv408 to i64
  %idx.neg410 = sub i64 0, %idx.ext409
  %add.ptr411 = getelementptr inbounds i8, ptr %302, i64 %idx.neg410
  %305 = load i8, ptr %add.ptr411, align 1, !tbaa !25
  store i8 %305, ptr %c, align 1, !tbaa !25
  %306 = load i8, ptr %c, align 1, !tbaa !25
  %conv412 = zext i8 %306 to i32
  %307 = load i32, ptr %x, align 4, !tbaa !5
  %add413 = add nsw i32 %307, %conv412
  store i32 %add413, ptr %x, align 4, !tbaa !5
  %308 = load i8, ptr %c, align 1, !tbaa !25
  %conv414 = zext i8 %308 to i32
  %mul415 = mul nsw i32 2, %conv414
  %309 = load i32, ptr %y, align 4, !tbaa !5
  %sub416 = sub nsw i32 %309, %mul415
  store i32 %sub416, ptr %y, align 4, !tbaa !5
  %310 = load ptr, ptr %cp, align 8, !tbaa !21
  %311 = load ptr, ptr %p, align 8, !tbaa !21
  %312 = load i8, ptr %311, align 1, !tbaa !25
  %conv417 = zext i8 %312 to i32
  %idx.ext418 = sext i32 %conv417 to i64
  %idx.neg419 = sub i64 0, %idx.ext418
  %add.ptr420 = getelementptr inbounds i8, ptr %310, i64 %idx.neg419
  %313 = load i8, ptr %add.ptr420, align 1, !tbaa !25
  store i8 %313, ptr %c, align 1, !tbaa !25
  %314 = load i8, ptr %c, align 1, !tbaa !25
  %conv421 = zext i8 %314 to i32
  %mul422 = mul nsw i32 2, %conv421
  %315 = load i32, ptr %x, align 4, !tbaa !5
  %add423 = add nsw i32 %315, %mul422
  store i32 %add423, ptr %x, align 4, !tbaa !5
  %316 = load i8, ptr %c, align 1, !tbaa !25
  %conv424 = zext i8 %316 to i32
  %mul425 = mul nsw i32 2, %conv424
  %317 = load i32, ptr %y, align 4, !tbaa !5
  %sub426 = sub nsw i32 %317, %mul425
  store i32 %sub426, ptr %y, align 4, !tbaa !5
  %318 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %sub427 = sub nsw i32 %318, 5
  %319 = load ptr, ptr %p, align 8, !tbaa !21
  %idx.ext428 = sext i32 %sub427 to i64
  %add.ptr429 = getelementptr inbounds i8, ptr %319, i64 %idx.ext428
  store ptr %add.ptr429, ptr %p, align 8, !tbaa !21
  %320 = load ptr, ptr %cp, align 8, !tbaa !21
  %321 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr430 = getelementptr inbounds nuw i8, ptr %321, i32 1
  store ptr %incdec.ptr430, ptr %p, align 8, !tbaa !21
  %322 = load i8, ptr %321, align 1, !tbaa !25
  %conv431 = zext i8 %322 to i32
  %idx.ext432 = sext i32 %conv431 to i64
  %idx.neg433 = sub i64 0, %idx.ext432
  %add.ptr434 = getelementptr inbounds i8, ptr %320, i64 %idx.neg433
  %323 = load i8, ptr %add.ptr434, align 1, !tbaa !25
  store i8 %323, ptr %c, align 1, !tbaa !25
  %324 = load i8, ptr %c, align 1, !tbaa !25
  %conv435 = zext i8 %324 to i32
  %mul436 = mul nsw i32 3, %conv435
  %325 = load i32, ptr %x, align 4, !tbaa !5
  %sub437 = sub nsw i32 %325, %mul436
  store i32 %sub437, ptr %x, align 4, !tbaa !5
  %326 = load i8, ptr %c, align 1, !tbaa !25
  %conv438 = zext i8 %326 to i32
  %327 = load i32, ptr %y, align 4, !tbaa !5
  %sub439 = sub nsw i32 %327, %conv438
  store i32 %sub439, ptr %y, align 4, !tbaa !5
  %328 = load ptr, ptr %cp, align 8, !tbaa !21
  %329 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr440 = getelementptr inbounds nuw i8, ptr %329, i32 1
  store ptr %incdec.ptr440, ptr %p, align 8, !tbaa !21
  %330 = load i8, ptr %329, align 1, !tbaa !25
  %conv441 = zext i8 %330 to i32
  %idx.ext442 = sext i32 %conv441 to i64
  %idx.neg443 = sub i64 0, %idx.ext442
  %add.ptr444 = getelementptr inbounds i8, ptr %328, i64 %idx.neg443
  %331 = load i8, ptr %add.ptr444, align 1, !tbaa !25
  store i8 %331, ptr %c, align 1, !tbaa !25
  %332 = load i8, ptr %c, align 1, !tbaa !25
  %conv445 = zext i8 %332 to i32
  %mul446 = mul nsw i32 2, %conv445
  %333 = load i32, ptr %x, align 4, !tbaa !5
  %sub447 = sub nsw i32 %333, %mul446
  store i32 %sub447, ptr %x, align 4, !tbaa !5
  %334 = load i8, ptr %c, align 1, !tbaa !25
  %conv448 = zext i8 %334 to i32
  %335 = load i32, ptr %y, align 4, !tbaa !5
  %sub449 = sub nsw i32 %335, %conv448
  store i32 %sub449, ptr %y, align 4, !tbaa !5
  %336 = load ptr, ptr %cp, align 8, !tbaa !21
  %337 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr450 = getelementptr inbounds nuw i8, ptr %337, i32 1
  store ptr %incdec.ptr450, ptr %p, align 8, !tbaa !21
  %338 = load i8, ptr %337, align 1, !tbaa !25
  %conv451 = zext i8 %338 to i32
  %idx.ext452 = sext i32 %conv451 to i64
  %idx.neg453 = sub i64 0, %idx.ext452
  %add.ptr454 = getelementptr inbounds i8, ptr %336, i64 %idx.neg453
  %339 = load i8, ptr %add.ptr454, align 1, !tbaa !25
  store i8 %339, ptr %c, align 1, !tbaa !25
  %340 = load i8, ptr %c, align 1, !tbaa !25
  %conv455 = zext i8 %340 to i32
  %341 = load i32, ptr %x, align 4, !tbaa !5
  %sub456 = sub nsw i32 %341, %conv455
  store i32 %sub456, ptr %x, align 4, !tbaa !5
  %342 = load i8, ptr %c, align 1, !tbaa !25
  %conv457 = zext i8 %342 to i32
  %343 = load i32, ptr %y, align 4, !tbaa !5
  %sub458 = sub nsw i32 %343, %conv457
  store i32 %sub458, ptr %y, align 4, !tbaa !5
  %344 = load ptr, ptr %cp, align 8, !tbaa !21
  %345 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr459 = getelementptr inbounds nuw i8, ptr %345, i32 1
  store ptr %incdec.ptr459, ptr %p, align 8, !tbaa !21
  %346 = load i8, ptr %345, align 1, !tbaa !25
  %conv460 = zext i8 %346 to i32
  %idx.ext461 = sext i32 %conv460 to i64
  %idx.neg462 = sub i64 0, %idx.ext461
  %add.ptr463 = getelementptr inbounds i8, ptr %344, i64 %idx.neg462
  %347 = load i8, ptr %add.ptr463, align 1, !tbaa !25
  store i8 %347, ptr %c, align 1, !tbaa !25
  %348 = load i8, ptr %c, align 1, !tbaa !25
  %conv464 = zext i8 %348 to i32
  %349 = load i32, ptr %y, align 4, !tbaa !5
  %sub465 = sub nsw i32 %349, %conv464
  store i32 %sub465, ptr %y, align 4, !tbaa !5
  %350 = load ptr, ptr %cp, align 8, !tbaa !21
  %351 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr466 = getelementptr inbounds nuw i8, ptr %351, i32 1
  store ptr %incdec.ptr466, ptr %p, align 8, !tbaa !21
  %352 = load i8, ptr %351, align 1, !tbaa !25
  %conv467 = zext i8 %352 to i32
  %idx.ext468 = sext i32 %conv467 to i64
  %idx.neg469 = sub i64 0, %idx.ext468
  %add.ptr470 = getelementptr inbounds i8, ptr %350, i64 %idx.neg469
  %353 = load i8, ptr %add.ptr470, align 1, !tbaa !25
  store i8 %353, ptr %c, align 1, !tbaa !25
  %354 = load i8, ptr %c, align 1, !tbaa !25
  %conv471 = zext i8 %354 to i32
  %355 = load i32, ptr %x, align 4, !tbaa !5
  %add472 = add nsw i32 %355, %conv471
  store i32 %add472, ptr %x, align 4, !tbaa !5
  %356 = load i8, ptr %c, align 1, !tbaa !25
  %conv473 = zext i8 %356 to i32
  %357 = load i32, ptr %y, align 4, !tbaa !5
  %sub474 = sub nsw i32 %357, %conv473
  store i32 %sub474, ptr %y, align 4, !tbaa !5
  %358 = load ptr, ptr %cp, align 8, !tbaa !21
  %359 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr475 = getelementptr inbounds nuw i8, ptr %359, i32 1
  store ptr %incdec.ptr475, ptr %p, align 8, !tbaa !21
  %360 = load i8, ptr %359, align 1, !tbaa !25
  %conv476 = zext i8 %360 to i32
  %idx.ext477 = sext i32 %conv476 to i64
  %idx.neg478 = sub i64 0, %idx.ext477
  %add.ptr479 = getelementptr inbounds i8, ptr %358, i64 %idx.neg478
  %361 = load i8, ptr %add.ptr479, align 1, !tbaa !25
  store i8 %361, ptr %c, align 1, !tbaa !25
  %362 = load i8, ptr %c, align 1, !tbaa !25
  %conv480 = zext i8 %362 to i32
  %mul481 = mul nsw i32 2, %conv480
  %363 = load i32, ptr %x, align 4, !tbaa !5
  %add482 = add nsw i32 %363, %mul481
  store i32 %add482, ptr %x, align 4, !tbaa !5
  %364 = load i8, ptr %c, align 1, !tbaa !25
  %conv483 = zext i8 %364 to i32
  %365 = load i32, ptr %y, align 4, !tbaa !5
  %sub484 = sub nsw i32 %365, %conv483
  store i32 %sub484, ptr %y, align 4, !tbaa !5
  %366 = load ptr, ptr %cp, align 8, !tbaa !21
  %367 = load ptr, ptr %p, align 8, !tbaa !21
  %368 = load i8, ptr %367, align 1, !tbaa !25
  %conv485 = zext i8 %368 to i32
  %idx.ext486 = sext i32 %conv485 to i64
  %idx.neg487 = sub i64 0, %idx.ext486
  %add.ptr488 = getelementptr inbounds i8, ptr %366, i64 %idx.neg487
  %369 = load i8, ptr %add.ptr488, align 1, !tbaa !25
  store i8 %369, ptr %c, align 1, !tbaa !25
  %370 = load i8, ptr %c, align 1, !tbaa !25
  %conv489 = zext i8 %370 to i32
  %mul490 = mul nsw i32 3, %conv489
  %371 = load i32, ptr %x, align 4, !tbaa !5
  %add491 = add nsw i32 %371, %mul490
  store i32 %add491, ptr %x, align 4, !tbaa !5
  %372 = load i8, ptr %c, align 1, !tbaa !25
  %conv492 = zext i8 %372 to i32
  %373 = load i32, ptr %y, align 4, !tbaa !5
  %sub493 = sub nsw i32 %373, %conv492
  store i32 %sub493, ptr %y, align 4, !tbaa !5
  %374 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %sub494 = sub nsw i32 %374, 6
  %375 = load ptr, ptr %p, align 8, !tbaa !21
  %idx.ext495 = sext i32 %sub494 to i64
  %add.ptr496 = getelementptr inbounds i8, ptr %375, i64 %idx.ext495
  store ptr %add.ptr496, ptr %p, align 8, !tbaa !21
  %376 = load ptr, ptr %cp, align 8, !tbaa !21
  %377 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr497 = getelementptr inbounds nuw i8, ptr %377, i32 1
  store ptr %incdec.ptr497, ptr %p, align 8, !tbaa !21
  %378 = load i8, ptr %377, align 1, !tbaa !25
  %conv498 = zext i8 %378 to i32
  %idx.ext499 = sext i32 %conv498 to i64
  %idx.neg500 = sub i64 0, %idx.ext499
  %add.ptr501 = getelementptr inbounds i8, ptr %376, i64 %idx.neg500
  %379 = load i8, ptr %add.ptr501, align 1, !tbaa !25
  store i8 %379, ptr %c, align 1, !tbaa !25
  %380 = load i8, ptr %c, align 1, !tbaa !25
  %conv502 = zext i8 %380 to i32
  %mul503 = mul nsw i32 3, %conv502
  %381 = load i32, ptr %x, align 4, !tbaa !5
  %sub504 = sub nsw i32 %381, %mul503
  store i32 %sub504, ptr %x, align 4, !tbaa !5
  %382 = load ptr, ptr %cp, align 8, !tbaa !21
  %383 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr505 = getelementptr inbounds nuw i8, ptr %383, i32 1
  store ptr %incdec.ptr505, ptr %p, align 8, !tbaa !21
  %384 = load i8, ptr %383, align 1, !tbaa !25
  %conv506 = zext i8 %384 to i32
  %idx.ext507 = sext i32 %conv506 to i64
  %idx.neg508 = sub i64 0, %idx.ext507
  %add.ptr509 = getelementptr inbounds i8, ptr %382, i64 %idx.neg508
  %385 = load i8, ptr %add.ptr509, align 1, !tbaa !25
  store i8 %385, ptr %c, align 1, !tbaa !25
  %386 = load i8, ptr %c, align 1, !tbaa !25
  %conv510 = zext i8 %386 to i32
  %mul511 = mul nsw i32 2, %conv510
  %387 = load i32, ptr %x, align 4, !tbaa !5
  %sub512 = sub nsw i32 %387, %mul511
  store i32 %sub512, ptr %x, align 4, !tbaa !5
  %388 = load ptr, ptr %cp, align 8, !tbaa !21
  %389 = load ptr, ptr %p, align 8, !tbaa !21
  %390 = load i8, ptr %389, align 1, !tbaa !25
  %conv513 = zext i8 %390 to i32
  %idx.ext514 = sext i32 %conv513 to i64
  %idx.neg515 = sub i64 0, %idx.ext514
  %add.ptr516 = getelementptr inbounds i8, ptr %388, i64 %idx.neg515
  %391 = load i8, ptr %add.ptr516, align 1, !tbaa !25
  store i8 %391, ptr %c, align 1, !tbaa !25
  %392 = load i8, ptr %c, align 1, !tbaa !25
  %conv517 = zext i8 %392 to i32
  %393 = load i32, ptr %x, align 4, !tbaa !5
  %sub518 = sub nsw i32 %393, %conv517
  store i32 %sub518, ptr %x, align 4, !tbaa !5
  %394 = load ptr, ptr %p, align 8, !tbaa !21
  %add.ptr519 = getelementptr inbounds i8, ptr %394, i64 2
  store ptr %add.ptr519, ptr %p, align 8, !tbaa !21
  %395 = load ptr, ptr %cp, align 8, !tbaa !21
  %396 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr520 = getelementptr inbounds nuw i8, ptr %396, i32 1
  store ptr %incdec.ptr520, ptr %p, align 8, !tbaa !21
  %397 = load i8, ptr %396, align 1, !tbaa !25
  %conv521 = zext i8 %397 to i32
  %idx.ext522 = sext i32 %conv521 to i64
  %idx.neg523 = sub i64 0, %idx.ext522
  %add.ptr524 = getelementptr inbounds i8, ptr %395, i64 %idx.neg523
  %398 = load i8, ptr %add.ptr524, align 1, !tbaa !25
  store i8 %398, ptr %c, align 1, !tbaa !25
  %399 = load i8, ptr %c, align 1, !tbaa !25
  %conv525 = zext i8 %399 to i32
  %400 = load i32, ptr %x, align 4, !tbaa !5
  %add526 = add nsw i32 %400, %conv525
  store i32 %add526, ptr %x, align 4, !tbaa !5
  %401 = load ptr, ptr %cp, align 8, !tbaa !21
  %402 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr527 = getelementptr inbounds nuw i8, ptr %402, i32 1
  store ptr %incdec.ptr527, ptr %p, align 8, !tbaa !21
  %403 = load i8, ptr %402, align 1, !tbaa !25
  %conv528 = zext i8 %403 to i32
  %idx.ext529 = sext i32 %conv528 to i64
  %idx.neg530 = sub i64 0, %idx.ext529
  %add.ptr531 = getelementptr inbounds i8, ptr %401, i64 %idx.neg530
  %404 = load i8, ptr %add.ptr531, align 1, !tbaa !25
  store i8 %404, ptr %c, align 1, !tbaa !25
  %405 = load i8, ptr %c, align 1, !tbaa !25
  %conv532 = zext i8 %405 to i32
  %mul533 = mul nsw i32 2, %conv532
  %406 = load i32, ptr %x, align 4, !tbaa !5
  %add534 = add nsw i32 %406, %mul533
  store i32 %add534, ptr %x, align 4, !tbaa !5
  %407 = load ptr, ptr %cp, align 8, !tbaa !21
  %408 = load ptr, ptr %p, align 8, !tbaa !21
  %409 = load i8, ptr %408, align 1, !tbaa !25
  %conv535 = zext i8 %409 to i32
  %idx.ext536 = sext i32 %conv535 to i64
  %idx.neg537 = sub i64 0, %idx.ext536
  %add.ptr538 = getelementptr inbounds i8, ptr %407, i64 %idx.neg537
  %410 = load i8, ptr %add.ptr538, align 1, !tbaa !25
  store i8 %410, ptr %c, align 1, !tbaa !25
  %411 = load i8, ptr %c, align 1, !tbaa !25
  %conv539 = zext i8 %411 to i32
  %mul540 = mul nsw i32 3, %conv539
  %412 = load i32, ptr %x, align 4, !tbaa !5
  %add541 = add nsw i32 %412, %mul540
  store i32 %add541, ptr %x, align 4, !tbaa !5
  %413 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %sub542 = sub nsw i32 %413, 6
  %414 = load ptr, ptr %p, align 8, !tbaa !21
  %idx.ext543 = sext i32 %sub542 to i64
  %add.ptr544 = getelementptr inbounds i8, ptr %414, i64 %idx.ext543
  store ptr %add.ptr544, ptr %p, align 8, !tbaa !21
  %415 = load ptr, ptr %cp, align 8, !tbaa !21
  %416 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr545 = getelementptr inbounds nuw i8, ptr %416, i32 1
  store ptr %incdec.ptr545, ptr %p, align 8, !tbaa !21
  %417 = load i8, ptr %416, align 1, !tbaa !25
  %conv546 = zext i8 %417 to i32
  %idx.ext547 = sext i32 %conv546 to i64
  %idx.neg548 = sub i64 0, %idx.ext547
  %add.ptr549 = getelementptr inbounds i8, ptr %415, i64 %idx.neg548
  %418 = load i8, ptr %add.ptr549, align 1, !tbaa !25
  store i8 %418, ptr %c, align 1, !tbaa !25
  %419 = load i8, ptr %c, align 1, !tbaa !25
  %conv550 = zext i8 %419 to i32
  %mul551 = mul nsw i32 3, %conv550
  %420 = load i32, ptr %x, align 4, !tbaa !5
  %sub552 = sub nsw i32 %420, %mul551
  store i32 %sub552, ptr %x, align 4, !tbaa !5
  %421 = load i8, ptr %c, align 1, !tbaa !25
  %conv553 = zext i8 %421 to i32
  %422 = load i32, ptr %y, align 4, !tbaa !5
  %add554 = add nsw i32 %422, %conv553
  store i32 %add554, ptr %y, align 4, !tbaa !5
  %423 = load ptr, ptr %cp, align 8, !tbaa !21
  %424 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr555 = getelementptr inbounds nuw i8, ptr %424, i32 1
  store ptr %incdec.ptr555, ptr %p, align 8, !tbaa !21
  %425 = load i8, ptr %424, align 1, !tbaa !25
  %conv556 = zext i8 %425 to i32
  %idx.ext557 = sext i32 %conv556 to i64
  %idx.neg558 = sub i64 0, %idx.ext557
  %add.ptr559 = getelementptr inbounds i8, ptr %423, i64 %idx.neg558
  %426 = load i8, ptr %add.ptr559, align 1, !tbaa !25
  store i8 %426, ptr %c, align 1, !tbaa !25
  %427 = load i8, ptr %c, align 1, !tbaa !25
  %conv560 = zext i8 %427 to i32
  %mul561 = mul nsw i32 2, %conv560
  %428 = load i32, ptr %x, align 4, !tbaa !5
  %sub562 = sub nsw i32 %428, %mul561
  store i32 %sub562, ptr %x, align 4, !tbaa !5
  %429 = load i8, ptr %c, align 1, !tbaa !25
  %conv563 = zext i8 %429 to i32
  %430 = load i32, ptr %y, align 4, !tbaa !5
  %add564 = add nsw i32 %430, %conv563
  store i32 %add564, ptr %y, align 4, !tbaa !5
  %431 = load ptr, ptr %cp, align 8, !tbaa !21
  %432 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr565 = getelementptr inbounds nuw i8, ptr %432, i32 1
  store ptr %incdec.ptr565, ptr %p, align 8, !tbaa !21
  %433 = load i8, ptr %432, align 1, !tbaa !25
  %conv566 = zext i8 %433 to i32
  %idx.ext567 = sext i32 %conv566 to i64
  %idx.neg568 = sub i64 0, %idx.ext567
  %add.ptr569 = getelementptr inbounds i8, ptr %431, i64 %idx.neg568
  %434 = load i8, ptr %add.ptr569, align 1, !tbaa !25
  store i8 %434, ptr %c, align 1, !tbaa !25
  %435 = load i8, ptr %c, align 1, !tbaa !25
  %conv570 = zext i8 %435 to i32
  %436 = load i32, ptr %x, align 4, !tbaa !5
  %sub571 = sub nsw i32 %436, %conv570
  store i32 %sub571, ptr %x, align 4, !tbaa !5
  %437 = load i8, ptr %c, align 1, !tbaa !25
  %conv572 = zext i8 %437 to i32
  %438 = load i32, ptr %y, align 4, !tbaa !5
  %add573 = add nsw i32 %438, %conv572
  store i32 %add573, ptr %y, align 4, !tbaa !5
  %439 = load ptr, ptr %cp, align 8, !tbaa !21
  %440 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr574 = getelementptr inbounds nuw i8, ptr %440, i32 1
  store ptr %incdec.ptr574, ptr %p, align 8, !tbaa !21
  %441 = load i8, ptr %440, align 1, !tbaa !25
  %conv575 = zext i8 %441 to i32
  %idx.ext576 = sext i32 %conv575 to i64
  %idx.neg577 = sub i64 0, %idx.ext576
  %add.ptr578 = getelementptr inbounds i8, ptr %439, i64 %idx.neg577
  %442 = load i8, ptr %add.ptr578, align 1, !tbaa !25
  store i8 %442, ptr %c, align 1, !tbaa !25
  %443 = load i8, ptr %c, align 1, !tbaa !25
  %conv579 = zext i8 %443 to i32
  %444 = load i32, ptr %y, align 4, !tbaa !5
  %add580 = add nsw i32 %444, %conv579
  store i32 %add580, ptr %y, align 4, !tbaa !5
  %445 = load ptr, ptr %cp, align 8, !tbaa !21
  %446 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr581 = getelementptr inbounds nuw i8, ptr %446, i32 1
  store ptr %incdec.ptr581, ptr %p, align 8, !tbaa !21
  %447 = load i8, ptr %446, align 1, !tbaa !25
  %conv582 = zext i8 %447 to i32
  %idx.ext583 = sext i32 %conv582 to i64
  %idx.neg584 = sub i64 0, %idx.ext583
  %add.ptr585 = getelementptr inbounds i8, ptr %445, i64 %idx.neg584
  %448 = load i8, ptr %add.ptr585, align 1, !tbaa !25
  store i8 %448, ptr %c, align 1, !tbaa !25
  %449 = load i8, ptr %c, align 1, !tbaa !25
  %conv586 = zext i8 %449 to i32
  %450 = load i32, ptr %x, align 4, !tbaa !5
  %add587 = add nsw i32 %450, %conv586
  store i32 %add587, ptr %x, align 4, !tbaa !5
  %451 = load i8, ptr %c, align 1, !tbaa !25
  %conv588 = zext i8 %451 to i32
  %452 = load i32, ptr %y, align 4, !tbaa !5
  %add589 = add nsw i32 %452, %conv588
  store i32 %add589, ptr %y, align 4, !tbaa !5
  %453 = load ptr, ptr %cp, align 8, !tbaa !21
  %454 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr590 = getelementptr inbounds nuw i8, ptr %454, i32 1
  store ptr %incdec.ptr590, ptr %p, align 8, !tbaa !21
  %455 = load i8, ptr %454, align 1, !tbaa !25
  %conv591 = zext i8 %455 to i32
  %idx.ext592 = sext i32 %conv591 to i64
  %idx.neg593 = sub i64 0, %idx.ext592
  %add.ptr594 = getelementptr inbounds i8, ptr %453, i64 %idx.neg593
  %456 = load i8, ptr %add.ptr594, align 1, !tbaa !25
  store i8 %456, ptr %c, align 1, !tbaa !25
  %457 = load i8, ptr %c, align 1, !tbaa !25
  %conv595 = zext i8 %457 to i32
  %mul596 = mul nsw i32 2, %conv595
  %458 = load i32, ptr %x, align 4, !tbaa !5
  %add597 = add nsw i32 %458, %mul596
  store i32 %add597, ptr %x, align 4, !tbaa !5
  %459 = load i8, ptr %c, align 1, !tbaa !25
  %conv598 = zext i8 %459 to i32
  %460 = load i32, ptr %y, align 4, !tbaa !5
  %add599 = add nsw i32 %460, %conv598
  store i32 %add599, ptr %y, align 4, !tbaa !5
  %461 = load ptr, ptr %cp, align 8, !tbaa !21
  %462 = load ptr, ptr %p, align 8, !tbaa !21
  %463 = load i8, ptr %462, align 1, !tbaa !25
  %conv600 = zext i8 %463 to i32
  %idx.ext601 = sext i32 %conv600 to i64
  %idx.neg602 = sub i64 0, %idx.ext601
  %add.ptr603 = getelementptr inbounds i8, ptr %461, i64 %idx.neg602
  %464 = load i8, ptr %add.ptr603, align 1, !tbaa !25
  store i8 %464, ptr %c, align 1, !tbaa !25
  %465 = load i8, ptr %c, align 1, !tbaa !25
  %conv604 = zext i8 %465 to i32
  %mul605 = mul nsw i32 3, %conv604
  %466 = load i32, ptr %x, align 4, !tbaa !5
  %add606 = add nsw i32 %466, %mul605
  store i32 %add606, ptr %x, align 4, !tbaa !5
  %467 = load i8, ptr %c, align 1, !tbaa !25
  %conv607 = zext i8 %467 to i32
  %468 = load i32, ptr %y, align 4, !tbaa !5
  %add608 = add nsw i32 %468, %conv607
  store i32 %add608, ptr %y, align 4, !tbaa !5
  %469 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %sub609 = sub nsw i32 %469, 5
  %470 = load ptr, ptr %p, align 8, !tbaa !21
  %idx.ext610 = sext i32 %sub609 to i64
  %add.ptr611 = getelementptr inbounds i8, ptr %470, i64 %idx.ext610
  store ptr %add.ptr611, ptr %p, align 8, !tbaa !21
  %471 = load ptr, ptr %cp, align 8, !tbaa !21
  %472 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr612 = getelementptr inbounds nuw i8, ptr %472, i32 1
  store ptr %incdec.ptr612, ptr %p, align 8, !tbaa !21
  %473 = load i8, ptr %472, align 1, !tbaa !25
  %conv613 = zext i8 %473 to i32
  %idx.ext614 = sext i32 %conv613 to i64
  %idx.neg615 = sub i64 0, %idx.ext614
  %add.ptr616 = getelementptr inbounds i8, ptr %471, i64 %idx.neg615
  %474 = load i8, ptr %add.ptr616, align 1, !tbaa !25
  store i8 %474, ptr %c, align 1, !tbaa !25
  %475 = load i8, ptr %c, align 1, !tbaa !25
  %conv617 = zext i8 %475 to i32
  %mul618 = mul nsw i32 2, %conv617
  %476 = load i32, ptr %x, align 4, !tbaa !5
  %sub619 = sub nsw i32 %476, %mul618
  store i32 %sub619, ptr %x, align 4, !tbaa !5
  %477 = load i8, ptr %c, align 1, !tbaa !25
  %conv620 = zext i8 %477 to i32
  %mul621 = mul nsw i32 2, %conv620
  %478 = load i32, ptr %y, align 4, !tbaa !5
  %add622 = add nsw i32 %478, %mul621
  store i32 %add622, ptr %y, align 4, !tbaa !5
  %479 = load ptr, ptr %cp, align 8, !tbaa !21
  %480 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr623 = getelementptr inbounds nuw i8, ptr %480, i32 1
  store ptr %incdec.ptr623, ptr %p, align 8, !tbaa !21
  %481 = load i8, ptr %480, align 1, !tbaa !25
  %conv624 = zext i8 %481 to i32
  %idx.ext625 = sext i32 %conv624 to i64
  %idx.neg626 = sub i64 0, %idx.ext625
  %add.ptr627 = getelementptr inbounds i8, ptr %479, i64 %idx.neg626
  %482 = load i8, ptr %add.ptr627, align 1, !tbaa !25
  store i8 %482, ptr %c, align 1, !tbaa !25
  %483 = load i8, ptr %c, align 1, !tbaa !25
  %conv628 = zext i8 %483 to i32
  %484 = load i32, ptr %x, align 4, !tbaa !5
  %sub629 = sub nsw i32 %484, %conv628
  store i32 %sub629, ptr %x, align 4, !tbaa !5
  %485 = load i8, ptr %c, align 1, !tbaa !25
  %conv630 = zext i8 %485 to i32
  %mul631 = mul nsw i32 2, %conv630
  %486 = load i32, ptr %y, align 4, !tbaa !5
  %add632 = add nsw i32 %486, %mul631
  store i32 %add632, ptr %y, align 4, !tbaa !5
  %487 = load ptr, ptr %cp, align 8, !tbaa !21
  %488 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr633 = getelementptr inbounds nuw i8, ptr %488, i32 1
  store ptr %incdec.ptr633, ptr %p, align 8, !tbaa !21
  %489 = load i8, ptr %488, align 1, !tbaa !25
  %conv634 = zext i8 %489 to i32
  %idx.ext635 = sext i32 %conv634 to i64
  %idx.neg636 = sub i64 0, %idx.ext635
  %add.ptr637 = getelementptr inbounds i8, ptr %487, i64 %idx.neg636
  %490 = load i8, ptr %add.ptr637, align 1, !tbaa !25
  store i8 %490, ptr %c, align 1, !tbaa !25
  %491 = load i8, ptr %c, align 1, !tbaa !25
  %conv638 = zext i8 %491 to i32
  %mul639 = mul nsw i32 2, %conv638
  %492 = load i32, ptr %y, align 4, !tbaa !5
  %add640 = add nsw i32 %492, %mul639
  store i32 %add640, ptr %y, align 4, !tbaa !5
  %493 = load ptr, ptr %cp, align 8, !tbaa !21
  %494 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr641 = getelementptr inbounds nuw i8, ptr %494, i32 1
  store ptr %incdec.ptr641, ptr %p, align 8, !tbaa !21
  %495 = load i8, ptr %494, align 1, !tbaa !25
  %conv642 = zext i8 %495 to i32
  %idx.ext643 = sext i32 %conv642 to i64
  %idx.neg644 = sub i64 0, %idx.ext643
  %add.ptr645 = getelementptr inbounds i8, ptr %493, i64 %idx.neg644
  %496 = load i8, ptr %add.ptr645, align 1, !tbaa !25
  store i8 %496, ptr %c, align 1, !tbaa !25
  %497 = load i8, ptr %c, align 1, !tbaa !25
  %conv646 = zext i8 %497 to i32
  %498 = load i32, ptr %x, align 4, !tbaa !5
  %add647 = add nsw i32 %498, %conv646
  store i32 %add647, ptr %x, align 4, !tbaa !5
  %499 = load i8, ptr %c, align 1, !tbaa !25
  %conv648 = zext i8 %499 to i32
  %mul649 = mul nsw i32 2, %conv648
  %500 = load i32, ptr %y, align 4, !tbaa !5
  %add650 = add nsw i32 %500, %mul649
  store i32 %add650, ptr %y, align 4, !tbaa !5
  %501 = load ptr, ptr %cp, align 8, !tbaa !21
  %502 = load ptr, ptr %p, align 8, !tbaa !21
  %503 = load i8, ptr %502, align 1, !tbaa !25
  %conv651 = zext i8 %503 to i32
  %idx.ext652 = sext i32 %conv651 to i64
  %idx.neg653 = sub i64 0, %idx.ext652
  %add.ptr654 = getelementptr inbounds i8, ptr %501, i64 %idx.neg653
  %504 = load i8, ptr %add.ptr654, align 1, !tbaa !25
  store i8 %504, ptr %c, align 1, !tbaa !25
  %505 = load i8, ptr %c, align 1, !tbaa !25
  %conv655 = zext i8 %505 to i32
  %mul656 = mul nsw i32 2, %conv655
  %506 = load i32, ptr %x, align 4, !tbaa !5
  %add657 = add nsw i32 %506, %mul656
  store i32 %add657, ptr %x, align 4, !tbaa !5
  %507 = load i8, ptr %c, align 1, !tbaa !25
  %conv658 = zext i8 %507 to i32
  %mul659 = mul nsw i32 2, %conv658
  %508 = load i32, ptr %y, align 4, !tbaa !5
  %add660 = add nsw i32 %508, %mul659
  store i32 %add660, ptr %y, align 4, !tbaa !5
  %509 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %sub661 = sub nsw i32 %509, 3
  %510 = load ptr, ptr %p, align 8, !tbaa !21
  %idx.ext662 = sext i32 %sub661 to i64
  %add.ptr663 = getelementptr inbounds i8, ptr %510, i64 %idx.ext662
  store ptr %add.ptr663, ptr %p, align 8, !tbaa !21
  %511 = load ptr, ptr %cp, align 8, !tbaa !21
  %512 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr664 = getelementptr inbounds nuw i8, ptr %512, i32 1
  store ptr %incdec.ptr664, ptr %p, align 8, !tbaa !21
  %513 = load i8, ptr %512, align 1, !tbaa !25
  %conv665 = zext i8 %513 to i32
  %idx.ext666 = sext i32 %conv665 to i64
  %idx.neg667 = sub i64 0, %idx.ext666
  %add.ptr668 = getelementptr inbounds i8, ptr %511, i64 %idx.neg667
  %514 = load i8, ptr %add.ptr668, align 1, !tbaa !25
  store i8 %514, ptr %c, align 1, !tbaa !25
  %515 = load i8, ptr %c, align 1, !tbaa !25
  %conv669 = zext i8 %515 to i32
  %516 = load i32, ptr %x, align 4, !tbaa !5
  %sub670 = sub nsw i32 %516, %conv669
  store i32 %sub670, ptr %x, align 4, !tbaa !5
  %517 = load i8, ptr %c, align 1, !tbaa !25
  %conv671 = zext i8 %517 to i32
  %mul672 = mul nsw i32 3, %conv671
  %518 = load i32, ptr %y, align 4, !tbaa !5
  %add673 = add nsw i32 %518, %mul672
  store i32 %add673, ptr %y, align 4, !tbaa !5
  %519 = load ptr, ptr %cp, align 8, !tbaa !21
  %520 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr674 = getelementptr inbounds nuw i8, ptr %520, i32 1
  store ptr %incdec.ptr674, ptr %p, align 8, !tbaa !21
  %521 = load i8, ptr %520, align 1, !tbaa !25
  %conv675 = zext i8 %521 to i32
  %idx.ext676 = sext i32 %conv675 to i64
  %idx.neg677 = sub i64 0, %idx.ext676
  %add.ptr678 = getelementptr inbounds i8, ptr %519, i64 %idx.neg677
  %522 = load i8, ptr %add.ptr678, align 1, !tbaa !25
  store i8 %522, ptr %c, align 1, !tbaa !25
  %523 = load i8, ptr %c, align 1, !tbaa !25
  %conv679 = zext i8 %523 to i32
  %mul680 = mul nsw i32 3, %conv679
  %524 = load i32, ptr %y, align 4, !tbaa !5
  %add681 = add nsw i32 %524, %mul680
  store i32 %add681, ptr %y, align 4, !tbaa !5
  %525 = load ptr, ptr %cp, align 8, !tbaa !21
  %526 = load ptr, ptr %p, align 8, !tbaa !21
  %527 = load i8, ptr %526, align 1, !tbaa !25
  %conv682 = zext i8 %527 to i32
  %idx.ext683 = sext i32 %conv682 to i64
  %idx.neg684 = sub i64 0, %idx.ext683
  %add.ptr685 = getelementptr inbounds i8, ptr %525, i64 %idx.neg684
  %528 = load i8, ptr %add.ptr685, align 1, !tbaa !25
  store i8 %528, ptr %c, align 1, !tbaa !25
  %529 = load i8, ptr %c, align 1, !tbaa !25
  %conv686 = zext i8 %529 to i32
  %530 = load i32, ptr %x, align 4, !tbaa !5
  %add687 = add nsw i32 %530, %conv686
  store i32 %add687, ptr %x, align 4, !tbaa !5
  %531 = load i8, ptr %c, align 1, !tbaa !25
  %conv688 = zext i8 %531 to i32
  %mul689 = mul nsw i32 3, %conv688
  %532 = load i32, ptr %y, align 4, !tbaa !5
  %add690 = add nsw i32 %532, %mul689
  store i32 %add690, ptr %y, align 4, !tbaa !5
  %533 = load i32, ptr %x, align 4, !tbaa !5
  %534 = load i32, ptr %x, align 4, !tbaa !5
  %mul691 = mul nsw i32 %533, %534
  store i32 %mul691, ptr %xx, align 4, !tbaa !5
  %535 = load i32, ptr %y, align 4, !tbaa !5
  %536 = load i32, ptr %y, align 4, !tbaa !5
  %mul692 = mul nsw i32 %535, %536
  store i32 %mul692, ptr %yy, align 4, !tbaa !5
  %537 = load i32, ptr %xx, align 4, !tbaa !5
  %538 = load i32, ptr %yy, align 4, !tbaa !5
  %add693 = add nsw i32 %537, %538
  store i32 %add693, ptr %sq, align 4, !tbaa !5
  %539 = load i32, ptr %sq, align 4, !tbaa !5
  %540 = load i32, ptr %n, align 4, !tbaa !5
  %541 = load i32, ptr %n, align 4, !tbaa !5
  %mul694 = mul nsw i32 %540, %541
  %div = sdiv i32 %mul694, 2
  %cmp695 = icmp sgt i32 %539, %div
  br i1 %cmp695, label %if.then697, label %if.end884

if.then697:                                       ; preds = %if.then340
  %542 = load i32, ptr %yy, align 4, !tbaa !5
  %543 = load i32, ptr %xx, align 4, !tbaa !5
  %cmp698 = icmp slt i32 %542, %543
  br i1 %cmp698, label %if.then700, label %if.else

if.then700:                                       ; preds = %if.then697
  %544 = load i32, ptr %y, align 4, !tbaa !5
  %conv701 = sitofp i32 %544 to float
  %545 = load i32, ptr %x, align 4, !tbaa !5
  %546 = call i32 @llvm.abs.i32(i32 %545, i1 true)
  %conv702 = sitofp i32 %546 to float
  %div703 = fdiv float %conv701, %conv702
  store float %div703, ptr %divide, align 4, !tbaa !41
  %547 = load i32, ptr %x, align 4, !tbaa !5
  %548 = call i32 @llvm.abs.i32(i32 %547, i1 true)
  %549 = load i32, ptr %x, align 4, !tbaa !5
  %div704 = sdiv i32 %548, %549
  store i32 %div704, ptr %sq, align 4, !tbaa !5
  %550 = load ptr, ptr %cp, align 8, !tbaa !21
  %551 = load ptr, ptr %in.addr, align 8, !tbaa !21
  %552 = load i32, ptr %i, align 4, !tbaa !5
  %553 = load float, ptr %divide, align 4, !tbaa !41
  %cmp705 = fcmp olt float %553, 0.000000e+00
  br i1 %cmp705, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then700
  %554 = load float, ptr %divide, align 4, !tbaa !41
  %conv707 = fpext float %554 to double
  %sub708 = fsub double %conv707, 5.000000e-01
  %conv709 = fptosi double %sub708 to i32
  br label %cond.end

cond.false:                                       ; preds = %if.then700
  %555 = load float, ptr %divide, align 4, !tbaa !41
  %conv710 = fpext float %555 to double
  %add711 = fadd double %conv710, 5.000000e-01
  %conv712 = fptosi double %add711 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv709, %cond.true ], [ %conv712, %cond.false ]
  %add713 = add nsw i32 %552, %cond
  %556 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul714 = mul nsw i32 %add713, %556
  %557 = load i32, ptr %j, align 4, !tbaa !5
  %add715 = add nsw i32 %mul714, %557
  %558 = load i32, ptr %sq, align 4, !tbaa !5
  %add716 = add nsw i32 %add715, %558
  %idxprom717 = sext i32 %add716 to i64
  %arrayidx718 = getelementptr inbounds i8, ptr %551, i64 %idxprom717
  %559 = load i8, ptr %arrayidx718, align 1, !tbaa !25
  %conv719 = zext i8 %559 to i32
  %idx.ext720 = sext i32 %conv719 to i64
  %idx.neg721 = sub i64 0, %idx.ext720
  %add.ptr722 = getelementptr inbounds i8, ptr %550, i64 %idx.neg721
  %560 = load i8, ptr %add.ptr722, align 1, !tbaa !25
  %conv723 = zext i8 %560 to i32
  %561 = load ptr, ptr %cp, align 8, !tbaa !21
  %562 = load ptr, ptr %in.addr, align 8, !tbaa !21
  %563 = load i32, ptr %i, align 4, !tbaa !5
  %564 = load float, ptr %divide, align 4, !tbaa !41
  %mul724 = fmul float 2.000000e+00, %564
  %cmp725 = fcmp olt float %mul724, 0.000000e+00
  br i1 %cmp725, label %cond.true727, label %cond.false732

cond.true727:                                     ; preds = %cond.end
  %565 = load float, ptr %divide, align 4, !tbaa !41
  %mul728 = fmul float 2.000000e+00, %565
  %conv729 = fpext float %mul728 to double
  %sub730 = fsub double %conv729, 5.000000e-01
  %conv731 = fptosi double %sub730 to i32
  br label %cond.end737

cond.false732:                                    ; preds = %cond.end
  %566 = load float, ptr %divide, align 4, !tbaa !41
  %mul733 = fmul float 2.000000e+00, %566
  %conv734 = fpext float %mul733 to double
  %add735 = fadd double %conv734, 5.000000e-01
  %conv736 = fptosi double %add735 to i32
  br label %cond.end737

cond.end737:                                      ; preds = %cond.false732, %cond.true727
  %cond738 = phi i32 [ %conv731, %cond.true727 ], [ %conv736, %cond.false732 ]
  %add739 = add nsw i32 %563, %cond738
  %567 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul740 = mul nsw i32 %add739, %567
  %568 = load i32, ptr %j, align 4, !tbaa !5
  %add741 = add nsw i32 %mul740, %568
  %569 = load i32, ptr %sq, align 4, !tbaa !5
  %mul742 = mul nsw i32 2, %569
  %add743 = add nsw i32 %add741, %mul742
  %idxprom744 = sext i32 %add743 to i64
  %arrayidx745 = getelementptr inbounds i8, ptr %562, i64 %idxprom744
  %570 = load i8, ptr %arrayidx745, align 1, !tbaa !25
  %conv746 = zext i8 %570 to i32
  %idx.ext747 = sext i32 %conv746 to i64
  %idx.neg748 = sub i64 0, %idx.ext747
  %add.ptr749 = getelementptr inbounds i8, ptr %561, i64 %idx.neg748
  %571 = load i8, ptr %add.ptr749, align 1, !tbaa !25
  %conv750 = zext i8 %571 to i32
  %add751 = add nsw i32 %conv723, %conv750
  %572 = load ptr, ptr %cp, align 8, !tbaa !21
  %573 = load ptr, ptr %in.addr, align 8, !tbaa !21
  %574 = load i32, ptr %i, align 4, !tbaa !5
  %575 = load float, ptr %divide, align 4, !tbaa !41
  %mul752 = fmul float 3.000000e+00, %575
  %cmp753 = fcmp olt float %mul752, 0.000000e+00
  br i1 %cmp753, label %cond.true755, label %cond.false760

cond.true755:                                     ; preds = %cond.end737
  %576 = load float, ptr %divide, align 4, !tbaa !41
  %mul756 = fmul float 3.000000e+00, %576
  %conv757 = fpext float %mul756 to double
  %sub758 = fsub double %conv757, 5.000000e-01
  %conv759 = fptosi double %sub758 to i32
  br label %cond.end765

cond.false760:                                    ; preds = %cond.end737
  %577 = load float, ptr %divide, align 4, !tbaa !41
  %mul761 = fmul float 3.000000e+00, %577
  %conv762 = fpext float %mul761 to double
  %add763 = fadd double %conv762, 5.000000e-01
  %conv764 = fptosi double %add763 to i32
  br label %cond.end765

cond.end765:                                      ; preds = %cond.false760, %cond.true755
  %cond766 = phi i32 [ %conv759, %cond.true755 ], [ %conv764, %cond.false760 ]
  %add767 = add nsw i32 %574, %cond766
  %578 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul768 = mul nsw i32 %add767, %578
  %579 = load i32, ptr %j, align 4, !tbaa !5
  %add769 = add nsw i32 %mul768, %579
  %580 = load i32, ptr %sq, align 4, !tbaa !5
  %mul770 = mul nsw i32 3, %580
  %add771 = add nsw i32 %add769, %mul770
  %idxprom772 = sext i32 %add771 to i64
  %arrayidx773 = getelementptr inbounds i8, ptr %573, i64 %idxprom772
  %581 = load i8, ptr %arrayidx773, align 1, !tbaa !25
  %conv774 = zext i8 %581 to i32
  %idx.ext775 = sext i32 %conv774 to i64
  %idx.neg776 = sub i64 0, %idx.ext775
  %add.ptr777 = getelementptr inbounds i8, ptr %572, i64 %idx.neg776
  %582 = load i8, ptr %add.ptr777, align 1, !tbaa !25
  %conv778 = zext i8 %582 to i32
  %add779 = add nsw i32 %add751, %conv778
  store i32 %add779, ptr %sq, align 4, !tbaa !5
  br label %if.end

if.else:                                          ; preds = %if.then697
  %583 = load i32, ptr %x, align 4, !tbaa !5
  %conv780 = sitofp i32 %583 to float
  %584 = load i32, ptr %y, align 4, !tbaa !5
  %585 = call i32 @llvm.abs.i32(i32 %584, i1 true)
  %conv781 = sitofp i32 %585 to float
  %div782 = fdiv float %conv780, %conv781
  store float %div782, ptr %divide, align 4, !tbaa !41
  %586 = load i32, ptr %y, align 4, !tbaa !5
  %587 = call i32 @llvm.abs.i32(i32 %586, i1 true)
  %588 = load i32, ptr %y, align 4, !tbaa !5
  %div783 = sdiv i32 %587, %588
  store i32 %div783, ptr %sq, align 4, !tbaa !5
  %589 = load ptr, ptr %cp, align 8, !tbaa !21
  %590 = load ptr, ptr %in.addr, align 8, !tbaa !21
  %591 = load i32, ptr %i, align 4, !tbaa !5
  %592 = load i32, ptr %sq, align 4, !tbaa !5
  %add784 = add nsw i32 %591, %592
  %593 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul785 = mul nsw i32 %add784, %593
  %594 = load i32, ptr %j, align 4, !tbaa !5
  %add786 = add nsw i32 %mul785, %594
  %595 = load float, ptr %divide, align 4, !tbaa !41
  %cmp787 = fcmp olt float %595, 0.000000e+00
  br i1 %cmp787, label %cond.true789, label %cond.false793

cond.true789:                                     ; preds = %if.else
  %596 = load float, ptr %divide, align 4, !tbaa !41
  %conv790 = fpext float %596 to double
  %sub791 = fsub double %conv790, 5.000000e-01
  %conv792 = fptosi double %sub791 to i32
  br label %cond.end797

cond.false793:                                    ; preds = %if.else
  %597 = load float, ptr %divide, align 4, !tbaa !41
  %conv794 = fpext float %597 to double
  %add795 = fadd double %conv794, 5.000000e-01
  %conv796 = fptosi double %add795 to i32
  br label %cond.end797

cond.end797:                                      ; preds = %cond.false793, %cond.true789
  %cond798 = phi i32 [ %conv792, %cond.true789 ], [ %conv796, %cond.false793 ]
  %add799 = add nsw i32 %add786, %cond798
  %idxprom800 = sext i32 %add799 to i64
  %arrayidx801 = getelementptr inbounds i8, ptr %590, i64 %idxprom800
  %598 = load i8, ptr %arrayidx801, align 1, !tbaa !25
  %conv802 = zext i8 %598 to i32
  %idx.ext803 = sext i32 %conv802 to i64
  %idx.neg804 = sub i64 0, %idx.ext803
  %add.ptr805 = getelementptr inbounds i8, ptr %589, i64 %idx.neg804
  %599 = load i8, ptr %add.ptr805, align 1, !tbaa !25
  %conv806 = zext i8 %599 to i32
  %600 = load ptr, ptr %cp, align 8, !tbaa !21
  %601 = load ptr, ptr %in.addr, align 8, !tbaa !21
  %602 = load i32, ptr %i, align 4, !tbaa !5
  %603 = load i32, ptr %sq, align 4, !tbaa !5
  %mul807 = mul nsw i32 2, %603
  %add808 = add nsw i32 %602, %mul807
  %604 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul809 = mul nsw i32 %add808, %604
  %605 = load i32, ptr %j, align 4, !tbaa !5
  %add810 = add nsw i32 %mul809, %605
  %606 = load float, ptr %divide, align 4, !tbaa !41
  %mul811 = fmul float 2.000000e+00, %606
  %cmp812 = fcmp olt float %mul811, 0.000000e+00
  br i1 %cmp812, label %cond.true814, label %cond.false819

cond.true814:                                     ; preds = %cond.end797
  %607 = load float, ptr %divide, align 4, !tbaa !41
  %mul815 = fmul float 2.000000e+00, %607
  %conv816 = fpext float %mul815 to double
  %sub817 = fsub double %conv816, 5.000000e-01
  %conv818 = fptosi double %sub817 to i32
  br label %cond.end824

cond.false819:                                    ; preds = %cond.end797
  %608 = load float, ptr %divide, align 4, !tbaa !41
  %mul820 = fmul float 2.000000e+00, %608
  %conv821 = fpext float %mul820 to double
  %add822 = fadd double %conv821, 5.000000e-01
  %conv823 = fptosi double %add822 to i32
  br label %cond.end824

cond.end824:                                      ; preds = %cond.false819, %cond.true814
  %cond825 = phi i32 [ %conv818, %cond.true814 ], [ %conv823, %cond.false819 ]
  %add826 = add nsw i32 %add810, %cond825
  %idxprom827 = sext i32 %add826 to i64
  %arrayidx828 = getelementptr inbounds i8, ptr %601, i64 %idxprom827
  %609 = load i8, ptr %arrayidx828, align 1, !tbaa !25
  %conv829 = zext i8 %609 to i32
  %idx.ext830 = sext i32 %conv829 to i64
  %idx.neg831 = sub i64 0, %idx.ext830
  %add.ptr832 = getelementptr inbounds i8, ptr %600, i64 %idx.neg831
  %610 = load i8, ptr %add.ptr832, align 1, !tbaa !25
  %conv833 = zext i8 %610 to i32
  %add834 = add nsw i32 %conv806, %conv833
  %611 = load ptr, ptr %cp, align 8, !tbaa !21
  %612 = load ptr, ptr %in.addr, align 8, !tbaa !21
  %613 = load i32, ptr %i, align 4, !tbaa !5
  %614 = load i32, ptr %sq, align 4, !tbaa !5
  %mul835 = mul nsw i32 3, %614
  %add836 = add nsw i32 %613, %mul835
  %615 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul837 = mul nsw i32 %add836, %615
  %616 = load i32, ptr %j, align 4, !tbaa !5
  %add838 = add nsw i32 %mul837, %616
  %617 = load float, ptr %divide, align 4, !tbaa !41
  %mul839 = fmul float 3.000000e+00, %617
  %cmp840 = fcmp olt float %mul839, 0.000000e+00
  br i1 %cmp840, label %cond.true842, label %cond.false847

cond.true842:                                     ; preds = %cond.end824
  %618 = load float, ptr %divide, align 4, !tbaa !41
  %mul843 = fmul float 3.000000e+00, %618
  %conv844 = fpext float %mul843 to double
  %sub845 = fsub double %conv844, 5.000000e-01
  %conv846 = fptosi double %sub845 to i32
  br label %cond.end852

cond.false847:                                    ; preds = %cond.end824
  %619 = load float, ptr %divide, align 4, !tbaa !41
  %mul848 = fmul float 3.000000e+00, %619
  %conv849 = fpext float %mul848 to double
  %add850 = fadd double %conv849, 5.000000e-01
  %conv851 = fptosi double %add850 to i32
  br label %cond.end852

cond.end852:                                      ; preds = %cond.false847, %cond.true842
  %cond853 = phi i32 [ %conv846, %cond.true842 ], [ %conv851, %cond.false847 ]
  %add854 = add nsw i32 %add838, %cond853
  %idxprom855 = sext i32 %add854 to i64
  %arrayidx856 = getelementptr inbounds i8, ptr %612, i64 %idxprom855
  %620 = load i8, ptr %arrayidx856, align 1, !tbaa !25
  %conv857 = zext i8 %620 to i32
  %idx.ext858 = sext i32 %conv857 to i64
  %idx.neg859 = sub i64 0, %idx.ext858
  %add.ptr860 = getelementptr inbounds i8, ptr %611, i64 %idx.neg859
  %621 = load i8, ptr %add.ptr860, align 1, !tbaa !25
  %conv861 = zext i8 %621 to i32
  %add862 = add nsw i32 %add834, %conv861
  store i32 %add862, ptr %sq, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %cond.end852, %cond.end765
  %622 = load i32, ptr %sq, align 4, !tbaa !5
  %cmp863 = icmp sgt i32 %622, 290
  br i1 %cmp863, label %if.then865, label %if.end883

if.then865:                                       ; preds = %if.end
  %623 = load i32, ptr %max_no.addr, align 4, !tbaa !5
  %624 = load i32, ptr %n, align 4, !tbaa !5
  %sub866 = sub nsw i32 %623, %624
  %625 = load ptr, ptr %r.addr, align 8, !tbaa !23
  %626 = load i32, ptr %i, align 4, !tbaa !5
  %627 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul867 = mul nsw i32 %626, %627
  %628 = load i32, ptr %j, align 4, !tbaa !5
  %add868 = add nsw i32 %mul867, %628
  %idxprom869 = sext i32 %add868 to i64
  %arrayidx870 = getelementptr inbounds i32, ptr %625, i64 %idxprom869
  store i32 %sub866, ptr %arrayidx870, align 4, !tbaa !5
  %629 = load i32, ptr %x, align 4, !tbaa !5
  %mul871 = mul nsw i32 51, %629
  %630 = load i32, ptr %n, align 4, !tbaa !5
  %div872 = sdiv i32 %mul871, %630
  %631 = load ptr, ptr %cgx, align 8, !tbaa !23
  %632 = load i32, ptr %i, align 4, !tbaa !5
  %633 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul873 = mul nsw i32 %632, %633
  %634 = load i32, ptr %j, align 4, !tbaa !5
  %add874 = add nsw i32 %mul873, %634
  %idxprom875 = sext i32 %add874 to i64
  %arrayidx876 = getelementptr inbounds i32, ptr %631, i64 %idxprom875
  store i32 %div872, ptr %arrayidx876, align 4, !tbaa !5
  %635 = load i32, ptr %y, align 4, !tbaa !5
  %mul877 = mul nsw i32 51, %635
  %636 = load i32, ptr %n, align 4, !tbaa !5
  %div878 = sdiv i32 %mul877, %636
  %637 = load ptr, ptr %cgy, align 8, !tbaa !23
  %638 = load i32, ptr %i, align 4, !tbaa !5
  %639 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul879 = mul nsw i32 %638, %639
  %640 = load i32, ptr %j, align 4, !tbaa !5
  %add880 = add nsw i32 %mul879, %640
  %idxprom881 = sext i32 %add880 to i64
  %arrayidx882 = getelementptr inbounds i32, ptr %637, i64 %idxprom881
  store i32 %div878, ptr %arrayidx882, align 4, !tbaa !5
  br label %if.end883

if.end883:                                        ; preds = %if.then865, %if.end
  br label %if.end884

if.end884:                                        ; preds = %if.end883, %if.then340
  br label %if.end885

if.end885:                                        ; preds = %if.end884, %if.then331
  br label %if.end886

if.end886:                                        ; preds = %if.end885, %if.then321
  br label %if.end887

if.end887:                                        ; preds = %if.end886, %if.then308
  br label %if.end888

if.end888:                                        ; preds = %if.end887, %if.then299
  br label %if.end889

if.end889:                                        ; preds = %if.end888, %if.then289
  br label %if.end890

if.end890:                                        ; preds = %if.end889, %if.then279
  br label %if.end891

if.end891:                                        ; preds = %if.end890, %if.then269
  br label %if.end892

if.end892:                                        ; preds = %if.end891, %if.then256
  br label %if.end893

if.end893:                                        ; preds = %if.end892, %if.then247
  br label %if.end894

if.end894:                                        ; preds = %if.end893, %if.then237
  br label %if.end895

if.end895:                                        ; preds = %if.end894, %if.then227
  br label %if.end896

if.end896:                                        ; preds = %if.end895, %if.then217
  br label %if.end897

if.end897:                                        ; preds = %if.end896, %if.then207
  br label %if.end898

if.end898:                                        ; preds = %if.end897, %if.then197
  br label %if.end899

if.end899:                                        ; preds = %if.end898, %if.then184
  br label %if.end900

if.end900:                                        ; preds = %if.end899, %if.then175
  br label %if.end901

if.end901:                                        ; preds = %if.end900, %if.then165
  br label %if.end902

if.end902:                                        ; preds = %if.end901, %if.then
  br label %if.end903

if.end903:                                        ; preds = %if.end902, %for.body14
  br label %for.inc

for.inc:                                          ; preds = %if.end903
  %641 = load i32, ptr %j, align 4, !tbaa !5
  %inc = add nsw i32 %641, 1
  store i32 %inc, ptr %j, align 4, !tbaa !5
  br label %for.cond10, !llvm.loop !71

for.end:                                          ; preds = %for.cond10
  br label %for.inc904

for.inc904:                                       ; preds = %for.end
  %642 = load i32, ptr %i, align 4, !tbaa !5
  %inc905 = add nsw i32 %642, 1
  store i32 %inc905, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !72

for.end906:                                       ; preds = %for.cond
  store i32 0, ptr %n, align 4, !tbaa !5
  store i32 5, ptr %i, align 4, !tbaa !5
  br label %for.cond907

for.cond907:                                      ; preds = %for.inc1381, %for.end906
  %643 = load i32, ptr %i, align 4, !tbaa !5
  %644 = load i32, ptr %y_size.addr, align 4, !tbaa !5
  %sub908 = sub nsw i32 %644, 5
  %cmp909 = icmp slt i32 %643, %sub908
  br i1 %cmp909, label %for.body911, label %for.end1383

for.body911:                                      ; preds = %for.cond907
  store i32 5, ptr %j, align 4, !tbaa !5
  br label %for.cond912

for.cond912:                                      ; preds = %for.inc1378, %for.body911
  %645 = load i32, ptr %j, align 4, !tbaa !5
  %646 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %sub913 = sub nsw i32 %646, 5
  %cmp914 = icmp slt i32 %645, %sub913
  br i1 %cmp914, label %for.body916, label %for.end1380

for.body916:                                      ; preds = %for.cond912
  %647 = load ptr, ptr %r.addr, align 8, !tbaa !23
  %648 = load i32, ptr %i, align 4, !tbaa !5
  %649 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul917 = mul nsw i32 %648, %649
  %650 = load i32, ptr %j, align 4, !tbaa !5
  %add918 = add nsw i32 %mul917, %650
  %idxprom919 = sext i32 %add918 to i64
  %arrayidx920 = getelementptr inbounds i32, ptr %647, i64 %idxprom919
  %651 = load i32, ptr %arrayidx920, align 4, !tbaa !5
  store i32 %651, ptr %x, align 4, !tbaa !5
  %652 = load i32, ptr %x, align 4, !tbaa !5
  %cmp921 = icmp sgt i32 %652, 0
  br i1 %cmp921, label %if.then923, label %if.end1377

if.then923:                                       ; preds = %for.body916
  %653 = load i32, ptr %x, align 4, !tbaa !5
  %654 = load ptr, ptr %r.addr, align 8, !tbaa !23
  %655 = load i32, ptr %i, align 4, !tbaa !5
  %sub924 = sub nsw i32 %655, 3
  %656 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul925 = mul nsw i32 %sub924, %656
  %657 = load i32, ptr %j, align 4, !tbaa !5
  %add926 = add nsw i32 %mul925, %657
  %sub927 = sub nsw i32 %add926, 3
  %idxprom928 = sext i32 %sub927 to i64
  %arrayidx929 = getelementptr inbounds i32, ptr %654, i64 %idxprom928
  %658 = load i32, ptr %arrayidx929, align 4, !tbaa !5
  %cmp930 = icmp sgt i32 %653, %658
  br i1 %cmp930, label %land.lhs.true, label %if.end1376

land.lhs.true:                                    ; preds = %if.then923
  %659 = load i32, ptr %x, align 4, !tbaa !5
  %660 = load ptr, ptr %r.addr, align 8, !tbaa !23
  %661 = load i32, ptr %i, align 4, !tbaa !5
  %sub932 = sub nsw i32 %661, 3
  %662 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul933 = mul nsw i32 %sub932, %662
  %663 = load i32, ptr %j, align 4, !tbaa !5
  %add934 = add nsw i32 %mul933, %663
  %sub935 = sub nsw i32 %add934, 2
  %idxprom936 = sext i32 %sub935 to i64
  %arrayidx937 = getelementptr inbounds i32, ptr %660, i64 %idxprom936
  %664 = load i32, ptr %arrayidx937, align 4, !tbaa !5
  %cmp938 = icmp sgt i32 %659, %664
  br i1 %cmp938, label %land.lhs.true940, label %if.end1376

land.lhs.true940:                                 ; preds = %land.lhs.true
  %665 = load i32, ptr %x, align 4, !tbaa !5
  %666 = load ptr, ptr %r.addr, align 8, !tbaa !23
  %667 = load i32, ptr %i, align 4, !tbaa !5
  %sub941 = sub nsw i32 %667, 3
  %668 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul942 = mul nsw i32 %sub941, %668
  %669 = load i32, ptr %j, align 4, !tbaa !5
  %add943 = add nsw i32 %mul942, %669
  %sub944 = sub nsw i32 %add943, 1
  %idxprom945 = sext i32 %sub944 to i64
  %arrayidx946 = getelementptr inbounds i32, ptr %666, i64 %idxprom945
  %670 = load i32, ptr %arrayidx946, align 4, !tbaa !5
  %cmp947 = icmp sgt i32 %665, %670
  br i1 %cmp947, label %land.lhs.true949, label %if.end1376

land.lhs.true949:                                 ; preds = %land.lhs.true940
  %671 = load i32, ptr %x, align 4, !tbaa !5
  %672 = load ptr, ptr %r.addr, align 8, !tbaa !23
  %673 = load i32, ptr %i, align 4, !tbaa !5
  %sub950 = sub nsw i32 %673, 3
  %674 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul951 = mul nsw i32 %sub950, %674
  %675 = load i32, ptr %j, align 4, !tbaa !5
  %add952 = add nsw i32 %mul951, %675
  %idxprom953 = sext i32 %add952 to i64
  %arrayidx954 = getelementptr inbounds i32, ptr %672, i64 %idxprom953
  %676 = load i32, ptr %arrayidx954, align 4, !tbaa !5
  %cmp955 = icmp sgt i32 %671, %676
  br i1 %cmp955, label %land.lhs.true957, label %if.end1376

land.lhs.true957:                                 ; preds = %land.lhs.true949
  %677 = load i32, ptr %x, align 4, !tbaa !5
  %678 = load ptr, ptr %r.addr, align 8, !tbaa !23
  %679 = load i32, ptr %i, align 4, !tbaa !5
  %sub958 = sub nsw i32 %679, 3
  %680 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul959 = mul nsw i32 %sub958, %680
  %681 = load i32, ptr %j, align 4, !tbaa !5
  %add960 = add nsw i32 %mul959, %681
  %add961 = add nsw i32 %add960, 1
  %idxprom962 = sext i32 %add961 to i64
  %arrayidx963 = getelementptr inbounds i32, ptr %678, i64 %idxprom962
  %682 = load i32, ptr %arrayidx963, align 4, !tbaa !5
  %cmp964 = icmp sgt i32 %677, %682
  br i1 %cmp964, label %land.lhs.true966, label %if.end1376

land.lhs.true966:                                 ; preds = %land.lhs.true957
  %683 = load i32, ptr %x, align 4, !tbaa !5
  %684 = load ptr, ptr %r.addr, align 8, !tbaa !23
  %685 = load i32, ptr %i, align 4, !tbaa !5
  %sub967 = sub nsw i32 %685, 3
  %686 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul968 = mul nsw i32 %sub967, %686
  %687 = load i32, ptr %j, align 4, !tbaa !5
  %add969 = add nsw i32 %mul968, %687
  %add970 = add nsw i32 %add969, 2
  %idxprom971 = sext i32 %add970 to i64
  %arrayidx972 = getelementptr inbounds i32, ptr %684, i64 %idxprom971
  %688 = load i32, ptr %arrayidx972, align 4, !tbaa !5
  %cmp973 = icmp sgt i32 %683, %688
  br i1 %cmp973, label %land.lhs.true975, label %if.end1376

land.lhs.true975:                                 ; preds = %land.lhs.true966
  %689 = load i32, ptr %x, align 4, !tbaa !5
  %690 = load ptr, ptr %r.addr, align 8, !tbaa !23
  %691 = load i32, ptr %i, align 4, !tbaa !5
  %sub976 = sub nsw i32 %691, 3
  %692 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul977 = mul nsw i32 %sub976, %692
  %693 = load i32, ptr %j, align 4, !tbaa !5
  %add978 = add nsw i32 %mul977, %693
  %add979 = add nsw i32 %add978, 3
  %idxprom980 = sext i32 %add979 to i64
  %arrayidx981 = getelementptr inbounds i32, ptr %690, i64 %idxprom980
  %694 = load i32, ptr %arrayidx981, align 4, !tbaa !5
  %cmp982 = icmp sgt i32 %689, %694
  br i1 %cmp982, label %land.lhs.true984, label %if.end1376

land.lhs.true984:                                 ; preds = %land.lhs.true975
  %695 = load i32, ptr %x, align 4, !tbaa !5
  %696 = load ptr, ptr %r.addr, align 8, !tbaa !23
  %697 = load i32, ptr %i, align 4, !tbaa !5
  %sub985 = sub nsw i32 %697, 2
  %698 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul986 = mul nsw i32 %sub985, %698
  %699 = load i32, ptr %j, align 4, !tbaa !5
  %add987 = add nsw i32 %mul986, %699
  %sub988 = sub nsw i32 %add987, 3
  %idxprom989 = sext i32 %sub988 to i64
  %arrayidx990 = getelementptr inbounds i32, ptr %696, i64 %idxprom989
  %700 = load i32, ptr %arrayidx990, align 4, !tbaa !5
  %cmp991 = icmp sgt i32 %695, %700
  br i1 %cmp991, label %land.lhs.true993, label %if.end1376

land.lhs.true993:                                 ; preds = %land.lhs.true984
  %701 = load i32, ptr %x, align 4, !tbaa !5
  %702 = load ptr, ptr %r.addr, align 8, !tbaa !23
  %703 = load i32, ptr %i, align 4, !tbaa !5
  %sub994 = sub nsw i32 %703, 2
  %704 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul995 = mul nsw i32 %sub994, %704
  %705 = load i32, ptr %j, align 4, !tbaa !5
  %add996 = add nsw i32 %mul995, %705
  %sub997 = sub nsw i32 %add996, 2
  %idxprom998 = sext i32 %sub997 to i64
  %arrayidx999 = getelementptr inbounds i32, ptr %702, i64 %idxprom998
  %706 = load i32, ptr %arrayidx999, align 4, !tbaa !5
  %cmp1000 = icmp sgt i32 %701, %706
  br i1 %cmp1000, label %land.lhs.true1002, label %if.end1376

land.lhs.true1002:                                ; preds = %land.lhs.true993
  %707 = load i32, ptr %x, align 4, !tbaa !5
  %708 = load ptr, ptr %r.addr, align 8, !tbaa !23
  %709 = load i32, ptr %i, align 4, !tbaa !5
  %sub1003 = sub nsw i32 %709, 2
  %710 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul1004 = mul nsw i32 %sub1003, %710
  %711 = load i32, ptr %j, align 4, !tbaa !5
  %add1005 = add nsw i32 %mul1004, %711
  %sub1006 = sub nsw i32 %add1005, 1
  %idxprom1007 = sext i32 %sub1006 to i64
  %arrayidx1008 = getelementptr inbounds i32, ptr %708, i64 %idxprom1007
  %712 = load i32, ptr %arrayidx1008, align 4, !tbaa !5
  %cmp1009 = icmp sgt i32 %707, %712
  br i1 %cmp1009, label %land.lhs.true1011, label %if.end1376

land.lhs.true1011:                                ; preds = %land.lhs.true1002
  %713 = load i32, ptr %x, align 4, !tbaa !5
  %714 = load ptr, ptr %r.addr, align 8, !tbaa !23
  %715 = load i32, ptr %i, align 4, !tbaa !5
  %sub1012 = sub nsw i32 %715, 2
  %716 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul1013 = mul nsw i32 %sub1012, %716
  %717 = load i32, ptr %j, align 4, !tbaa !5
  %add1014 = add nsw i32 %mul1013, %717
  %idxprom1015 = sext i32 %add1014 to i64
  %arrayidx1016 = getelementptr inbounds i32, ptr %714, i64 %idxprom1015
  %718 = load i32, ptr %arrayidx1016, align 4, !tbaa !5
  %cmp1017 = icmp sgt i32 %713, %718
  br i1 %cmp1017, label %land.lhs.true1019, label %if.end1376

land.lhs.true1019:                                ; preds = %land.lhs.true1011
  %719 = load i32, ptr %x, align 4, !tbaa !5
  %720 = load ptr, ptr %r.addr, align 8, !tbaa !23
  %721 = load i32, ptr %i, align 4, !tbaa !5
  %sub1020 = sub nsw i32 %721, 2
  %722 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul1021 = mul nsw i32 %sub1020, %722
  %723 = load i32, ptr %j, align 4, !tbaa !5
  %add1022 = add nsw i32 %mul1021, %723
  %add1023 = add nsw i32 %add1022, 1
  %idxprom1024 = sext i32 %add1023 to i64
  %arrayidx1025 = getelementptr inbounds i32, ptr %720, i64 %idxprom1024
  %724 = load i32, ptr %arrayidx1025, align 4, !tbaa !5
  %cmp1026 = icmp sgt i32 %719, %724
  br i1 %cmp1026, label %land.lhs.true1028, label %if.end1376

land.lhs.true1028:                                ; preds = %land.lhs.true1019
  %725 = load i32, ptr %x, align 4, !tbaa !5
  %726 = load ptr, ptr %r.addr, align 8, !tbaa !23
  %727 = load i32, ptr %i, align 4, !tbaa !5
  %sub1029 = sub nsw i32 %727, 2
  %728 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul1030 = mul nsw i32 %sub1029, %728
  %729 = load i32, ptr %j, align 4, !tbaa !5
  %add1031 = add nsw i32 %mul1030, %729
  %add1032 = add nsw i32 %add1031, 2
  %idxprom1033 = sext i32 %add1032 to i64
  %arrayidx1034 = getelementptr inbounds i32, ptr %726, i64 %idxprom1033
  %730 = load i32, ptr %arrayidx1034, align 4, !tbaa !5
  %cmp1035 = icmp sgt i32 %725, %730
  br i1 %cmp1035, label %land.lhs.true1037, label %if.end1376

land.lhs.true1037:                                ; preds = %land.lhs.true1028
  %731 = load i32, ptr %x, align 4, !tbaa !5
  %732 = load ptr, ptr %r.addr, align 8, !tbaa !23
  %733 = load i32, ptr %i, align 4, !tbaa !5
  %sub1038 = sub nsw i32 %733, 2
  %734 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul1039 = mul nsw i32 %sub1038, %734
  %735 = load i32, ptr %j, align 4, !tbaa !5
  %add1040 = add nsw i32 %mul1039, %735
  %add1041 = add nsw i32 %add1040, 3
  %idxprom1042 = sext i32 %add1041 to i64
  %arrayidx1043 = getelementptr inbounds i32, ptr %732, i64 %idxprom1042
  %736 = load i32, ptr %arrayidx1043, align 4, !tbaa !5
  %cmp1044 = icmp sgt i32 %731, %736
  br i1 %cmp1044, label %land.lhs.true1046, label %if.end1376

land.lhs.true1046:                                ; preds = %land.lhs.true1037
  %737 = load i32, ptr %x, align 4, !tbaa !5
  %738 = load ptr, ptr %r.addr, align 8, !tbaa !23
  %739 = load i32, ptr %i, align 4, !tbaa !5
  %sub1047 = sub nsw i32 %739, 1
  %740 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul1048 = mul nsw i32 %sub1047, %740
  %741 = load i32, ptr %j, align 4, !tbaa !5
  %add1049 = add nsw i32 %mul1048, %741
  %sub1050 = sub nsw i32 %add1049, 3
  %idxprom1051 = sext i32 %sub1050 to i64
  %arrayidx1052 = getelementptr inbounds i32, ptr %738, i64 %idxprom1051
  %742 = load i32, ptr %arrayidx1052, align 4, !tbaa !5
  %cmp1053 = icmp sgt i32 %737, %742
  br i1 %cmp1053, label %land.lhs.true1055, label %if.end1376

land.lhs.true1055:                                ; preds = %land.lhs.true1046
  %743 = load i32, ptr %x, align 4, !tbaa !5
  %744 = load ptr, ptr %r.addr, align 8, !tbaa !23
  %745 = load i32, ptr %i, align 4, !tbaa !5
  %sub1056 = sub nsw i32 %745, 1
  %746 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul1057 = mul nsw i32 %sub1056, %746
  %747 = load i32, ptr %j, align 4, !tbaa !5
  %add1058 = add nsw i32 %mul1057, %747
  %sub1059 = sub nsw i32 %add1058, 2
  %idxprom1060 = sext i32 %sub1059 to i64
  %arrayidx1061 = getelementptr inbounds i32, ptr %744, i64 %idxprom1060
  %748 = load i32, ptr %arrayidx1061, align 4, !tbaa !5
  %cmp1062 = icmp sgt i32 %743, %748
  br i1 %cmp1062, label %land.lhs.true1064, label %if.end1376

land.lhs.true1064:                                ; preds = %land.lhs.true1055
  %749 = load i32, ptr %x, align 4, !tbaa !5
  %750 = load ptr, ptr %r.addr, align 8, !tbaa !23
  %751 = load i32, ptr %i, align 4, !tbaa !5
  %sub1065 = sub nsw i32 %751, 1
  %752 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul1066 = mul nsw i32 %sub1065, %752
  %753 = load i32, ptr %j, align 4, !tbaa !5
  %add1067 = add nsw i32 %mul1066, %753
  %sub1068 = sub nsw i32 %add1067, 1
  %idxprom1069 = sext i32 %sub1068 to i64
  %arrayidx1070 = getelementptr inbounds i32, ptr %750, i64 %idxprom1069
  %754 = load i32, ptr %arrayidx1070, align 4, !tbaa !5
  %cmp1071 = icmp sgt i32 %749, %754
  br i1 %cmp1071, label %land.lhs.true1073, label %if.end1376

land.lhs.true1073:                                ; preds = %land.lhs.true1064
  %755 = load i32, ptr %x, align 4, !tbaa !5
  %756 = load ptr, ptr %r.addr, align 8, !tbaa !23
  %757 = load i32, ptr %i, align 4, !tbaa !5
  %sub1074 = sub nsw i32 %757, 1
  %758 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul1075 = mul nsw i32 %sub1074, %758
  %759 = load i32, ptr %j, align 4, !tbaa !5
  %add1076 = add nsw i32 %mul1075, %759
  %idxprom1077 = sext i32 %add1076 to i64
  %arrayidx1078 = getelementptr inbounds i32, ptr %756, i64 %idxprom1077
  %760 = load i32, ptr %arrayidx1078, align 4, !tbaa !5
  %cmp1079 = icmp sgt i32 %755, %760
  br i1 %cmp1079, label %land.lhs.true1081, label %if.end1376

land.lhs.true1081:                                ; preds = %land.lhs.true1073
  %761 = load i32, ptr %x, align 4, !tbaa !5
  %762 = load ptr, ptr %r.addr, align 8, !tbaa !23
  %763 = load i32, ptr %i, align 4, !tbaa !5
  %sub1082 = sub nsw i32 %763, 1
  %764 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul1083 = mul nsw i32 %sub1082, %764
  %765 = load i32, ptr %j, align 4, !tbaa !5
  %add1084 = add nsw i32 %mul1083, %765
  %add1085 = add nsw i32 %add1084, 1
  %idxprom1086 = sext i32 %add1085 to i64
  %arrayidx1087 = getelementptr inbounds i32, ptr %762, i64 %idxprom1086
  %766 = load i32, ptr %arrayidx1087, align 4, !tbaa !5
  %cmp1088 = icmp sgt i32 %761, %766
  br i1 %cmp1088, label %land.lhs.true1090, label %if.end1376

land.lhs.true1090:                                ; preds = %land.lhs.true1081
  %767 = load i32, ptr %x, align 4, !tbaa !5
  %768 = load ptr, ptr %r.addr, align 8, !tbaa !23
  %769 = load i32, ptr %i, align 4, !tbaa !5
  %sub1091 = sub nsw i32 %769, 1
  %770 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul1092 = mul nsw i32 %sub1091, %770
  %771 = load i32, ptr %j, align 4, !tbaa !5
  %add1093 = add nsw i32 %mul1092, %771
  %add1094 = add nsw i32 %add1093, 2
  %idxprom1095 = sext i32 %add1094 to i64
  %arrayidx1096 = getelementptr inbounds i32, ptr %768, i64 %idxprom1095
  %772 = load i32, ptr %arrayidx1096, align 4, !tbaa !5
  %cmp1097 = icmp sgt i32 %767, %772
  br i1 %cmp1097, label %land.lhs.true1099, label %if.end1376

land.lhs.true1099:                                ; preds = %land.lhs.true1090
  %773 = load i32, ptr %x, align 4, !tbaa !5
  %774 = load ptr, ptr %r.addr, align 8, !tbaa !23
  %775 = load i32, ptr %i, align 4, !tbaa !5
  %sub1100 = sub nsw i32 %775, 1
  %776 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul1101 = mul nsw i32 %sub1100, %776
  %777 = load i32, ptr %j, align 4, !tbaa !5
  %add1102 = add nsw i32 %mul1101, %777
  %add1103 = add nsw i32 %add1102, 3
  %idxprom1104 = sext i32 %add1103 to i64
  %arrayidx1105 = getelementptr inbounds i32, ptr %774, i64 %idxprom1104
  %778 = load i32, ptr %arrayidx1105, align 4, !tbaa !5
  %cmp1106 = icmp sgt i32 %773, %778
  br i1 %cmp1106, label %land.lhs.true1108, label %if.end1376

land.lhs.true1108:                                ; preds = %land.lhs.true1099
  %779 = load i32, ptr %x, align 4, !tbaa !5
  %780 = load ptr, ptr %r.addr, align 8, !tbaa !23
  %781 = load i32, ptr %i, align 4, !tbaa !5
  %782 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul1109 = mul nsw i32 %781, %782
  %783 = load i32, ptr %j, align 4, !tbaa !5
  %add1110 = add nsw i32 %mul1109, %783
  %sub1111 = sub nsw i32 %add1110, 3
  %idxprom1112 = sext i32 %sub1111 to i64
  %arrayidx1113 = getelementptr inbounds i32, ptr %780, i64 %idxprom1112
  %784 = load i32, ptr %arrayidx1113, align 4, !tbaa !5
  %cmp1114 = icmp sgt i32 %779, %784
  br i1 %cmp1114, label %land.lhs.true1116, label %if.end1376

land.lhs.true1116:                                ; preds = %land.lhs.true1108
  %785 = load i32, ptr %x, align 4, !tbaa !5
  %786 = load ptr, ptr %r.addr, align 8, !tbaa !23
  %787 = load i32, ptr %i, align 4, !tbaa !5
  %788 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul1117 = mul nsw i32 %787, %788
  %789 = load i32, ptr %j, align 4, !tbaa !5
  %add1118 = add nsw i32 %mul1117, %789
  %sub1119 = sub nsw i32 %add1118, 2
  %idxprom1120 = sext i32 %sub1119 to i64
  %arrayidx1121 = getelementptr inbounds i32, ptr %786, i64 %idxprom1120
  %790 = load i32, ptr %arrayidx1121, align 4, !tbaa !5
  %cmp1122 = icmp sgt i32 %785, %790
  br i1 %cmp1122, label %land.lhs.true1124, label %if.end1376

land.lhs.true1124:                                ; preds = %land.lhs.true1116
  %791 = load i32, ptr %x, align 4, !tbaa !5
  %792 = load ptr, ptr %r.addr, align 8, !tbaa !23
  %793 = load i32, ptr %i, align 4, !tbaa !5
  %794 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul1125 = mul nsw i32 %793, %794
  %795 = load i32, ptr %j, align 4, !tbaa !5
  %add1126 = add nsw i32 %mul1125, %795
  %sub1127 = sub nsw i32 %add1126, 1
  %idxprom1128 = sext i32 %sub1127 to i64
  %arrayidx1129 = getelementptr inbounds i32, ptr %792, i64 %idxprom1128
  %796 = load i32, ptr %arrayidx1129, align 4, !tbaa !5
  %cmp1130 = icmp sgt i32 %791, %796
  br i1 %cmp1130, label %land.lhs.true1132, label %if.end1376

land.lhs.true1132:                                ; preds = %land.lhs.true1124
  %797 = load i32, ptr %x, align 4, !tbaa !5
  %798 = load ptr, ptr %r.addr, align 8, !tbaa !23
  %799 = load i32, ptr %i, align 4, !tbaa !5
  %800 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul1133 = mul nsw i32 %799, %800
  %801 = load i32, ptr %j, align 4, !tbaa !5
  %add1134 = add nsw i32 %mul1133, %801
  %add1135 = add nsw i32 %add1134, 1
  %idxprom1136 = sext i32 %add1135 to i64
  %arrayidx1137 = getelementptr inbounds i32, ptr %798, i64 %idxprom1136
  %802 = load i32, ptr %arrayidx1137, align 4, !tbaa !5
  %cmp1138 = icmp sge i32 %797, %802
  br i1 %cmp1138, label %land.lhs.true1140, label %if.end1376

land.lhs.true1140:                                ; preds = %land.lhs.true1132
  %803 = load i32, ptr %x, align 4, !tbaa !5
  %804 = load ptr, ptr %r.addr, align 8, !tbaa !23
  %805 = load i32, ptr %i, align 4, !tbaa !5
  %806 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul1141 = mul nsw i32 %805, %806
  %807 = load i32, ptr %j, align 4, !tbaa !5
  %add1142 = add nsw i32 %mul1141, %807
  %add1143 = add nsw i32 %add1142, 2
  %idxprom1144 = sext i32 %add1143 to i64
  %arrayidx1145 = getelementptr inbounds i32, ptr %804, i64 %idxprom1144
  %808 = load i32, ptr %arrayidx1145, align 4, !tbaa !5
  %cmp1146 = icmp sge i32 %803, %808
  br i1 %cmp1146, label %land.lhs.true1148, label %if.end1376

land.lhs.true1148:                                ; preds = %land.lhs.true1140
  %809 = load i32, ptr %x, align 4, !tbaa !5
  %810 = load ptr, ptr %r.addr, align 8, !tbaa !23
  %811 = load i32, ptr %i, align 4, !tbaa !5
  %812 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul1149 = mul nsw i32 %811, %812
  %813 = load i32, ptr %j, align 4, !tbaa !5
  %add1150 = add nsw i32 %mul1149, %813
  %add1151 = add nsw i32 %add1150, 3
  %idxprom1152 = sext i32 %add1151 to i64
  %arrayidx1153 = getelementptr inbounds i32, ptr %810, i64 %idxprom1152
  %814 = load i32, ptr %arrayidx1153, align 4, !tbaa !5
  %cmp1154 = icmp sge i32 %809, %814
  br i1 %cmp1154, label %land.lhs.true1156, label %if.end1376

land.lhs.true1156:                                ; preds = %land.lhs.true1148
  %815 = load i32, ptr %x, align 4, !tbaa !5
  %816 = load ptr, ptr %r.addr, align 8, !tbaa !23
  %817 = load i32, ptr %i, align 4, !tbaa !5
  %add1157 = add nsw i32 %817, 1
  %818 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul1158 = mul nsw i32 %add1157, %818
  %819 = load i32, ptr %j, align 4, !tbaa !5
  %add1159 = add nsw i32 %mul1158, %819
  %sub1160 = sub nsw i32 %add1159, 3
  %idxprom1161 = sext i32 %sub1160 to i64
  %arrayidx1162 = getelementptr inbounds i32, ptr %816, i64 %idxprom1161
  %820 = load i32, ptr %arrayidx1162, align 4, !tbaa !5
  %cmp1163 = icmp sge i32 %815, %820
  br i1 %cmp1163, label %land.lhs.true1165, label %if.end1376

land.lhs.true1165:                                ; preds = %land.lhs.true1156
  %821 = load i32, ptr %x, align 4, !tbaa !5
  %822 = load ptr, ptr %r.addr, align 8, !tbaa !23
  %823 = load i32, ptr %i, align 4, !tbaa !5
  %add1166 = add nsw i32 %823, 1
  %824 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul1167 = mul nsw i32 %add1166, %824
  %825 = load i32, ptr %j, align 4, !tbaa !5
  %add1168 = add nsw i32 %mul1167, %825
  %sub1169 = sub nsw i32 %add1168, 2
  %idxprom1170 = sext i32 %sub1169 to i64
  %arrayidx1171 = getelementptr inbounds i32, ptr %822, i64 %idxprom1170
  %826 = load i32, ptr %arrayidx1171, align 4, !tbaa !5
  %cmp1172 = icmp sge i32 %821, %826
  br i1 %cmp1172, label %land.lhs.true1174, label %if.end1376

land.lhs.true1174:                                ; preds = %land.lhs.true1165
  %827 = load i32, ptr %x, align 4, !tbaa !5
  %828 = load ptr, ptr %r.addr, align 8, !tbaa !23
  %829 = load i32, ptr %i, align 4, !tbaa !5
  %add1175 = add nsw i32 %829, 1
  %830 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul1176 = mul nsw i32 %add1175, %830
  %831 = load i32, ptr %j, align 4, !tbaa !5
  %add1177 = add nsw i32 %mul1176, %831
  %sub1178 = sub nsw i32 %add1177, 1
  %idxprom1179 = sext i32 %sub1178 to i64
  %arrayidx1180 = getelementptr inbounds i32, ptr %828, i64 %idxprom1179
  %832 = load i32, ptr %arrayidx1180, align 4, !tbaa !5
  %cmp1181 = icmp sge i32 %827, %832
  br i1 %cmp1181, label %land.lhs.true1183, label %if.end1376

land.lhs.true1183:                                ; preds = %land.lhs.true1174
  %833 = load i32, ptr %x, align 4, !tbaa !5
  %834 = load ptr, ptr %r.addr, align 8, !tbaa !23
  %835 = load i32, ptr %i, align 4, !tbaa !5
  %add1184 = add nsw i32 %835, 1
  %836 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul1185 = mul nsw i32 %add1184, %836
  %837 = load i32, ptr %j, align 4, !tbaa !5
  %add1186 = add nsw i32 %mul1185, %837
  %idxprom1187 = sext i32 %add1186 to i64
  %arrayidx1188 = getelementptr inbounds i32, ptr %834, i64 %idxprom1187
  %838 = load i32, ptr %arrayidx1188, align 4, !tbaa !5
  %cmp1189 = icmp sge i32 %833, %838
  br i1 %cmp1189, label %land.lhs.true1191, label %if.end1376

land.lhs.true1191:                                ; preds = %land.lhs.true1183
  %839 = load i32, ptr %x, align 4, !tbaa !5
  %840 = load ptr, ptr %r.addr, align 8, !tbaa !23
  %841 = load i32, ptr %i, align 4, !tbaa !5
  %add1192 = add nsw i32 %841, 1
  %842 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul1193 = mul nsw i32 %add1192, %842
  %843 = load i32, ptr %j, align 4, !tbaa !5
  %add1194 = add nsw i32 %mul1193, %843
  %add1195 = add nsw i32 %add1194, 1
  %idxprom1196 = sext i32 %add1195 to i64
  %arrayidx1197 = getelementptr inbounds i32, ptr %840, i64 %idxprom1196
  %844 = load i32, ptr %arrayidx1197, align 4, !tbaa !5
  %cmp1198 = icmp sge i32 %839, %844
  br i1 %cmp1198, label %land.lhs.true1200, label %if.end1376

land.lhs.true1200:                                ; preds = %land.lhs.true1191
  %845 = load i32, ptr %x, align 4, !tbaa !5
  %846 = load ptr, ptr %r.addr, align 8, !tbaa !23
  %847 = load i32, ptr %i, align 4, !tbaa !5
  %add1201 = add nsw i32 %847, 1
  %848 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul1202 = mul nsw i32 %add1201, %848
  %849 = load i32, ptr %j, align 4, !tbaa !5
  %add1203 = add nsw i32 %mul1202, %849
  %add1204 = add nsw i32 %add1203, 2
  %idxprom1205 = sext i32 %add1204 to i64
  %arrayidx1206 = getelementptr inbounds i32, ptr %846, i64 %idxprom1205
  %850 = load i32, ptr %arrayidx1206, align 4, !tbaa !5
  %cmp1207 = icmp sge i32 %845, %850
  br i1 %cmp1207, label %land.lhs.true1209, label %if.end1376

land.lhs.true1209:                                ; preds = %land.lhs.true1200
  %851 = load i32, ptr %x, align 4, !tbaa !5
  %852 = load ptr, ptr %r.addr, align 8, !tbaa !23
  %853 = load i32, ptr %i, align 4, !tbaa !5
  %add1210 = add nsw i32 %853, 1
  %854 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul1211 = mul nsw i32 %add1210, %854
  %855 = load i32, ptr %j, align 4, !tbaa !5
  %add1212 = add nsw i32 %mul1211, %855
  %add1213 = add nsw i32 %add1212, 3
  %idxprom1214 = sext i32 %add1213 to i64
  %arrayidx1215 = getelementptr inbounds i32, ptr %852, i64 %idxprom1214
  %856 = load i32, ptr %arrayidx1215, align 4, !tbaa !5
  %cmp1216 = icmp sge i32 %851, %856
  br i1 %cmp1216, label %land.lhs.true1218, label %if.end1376

land.lhs.true1218:                                ; preds = %land.lhs.true1209
  %857 = load i32, ptr %x, align 4, !tbaa !5
  %858 = load ptr, ptr %r.addr, align 8, !tbaa !23
  %859 = load i32, ptr %i, align 4, !tbaa !5
  %add1219 = add nsw i32 %859, 2
  %860 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul1220 = mul nsw i32 %add1219, %860
  %861 = load i32, ptr %j, align 4, !tbaa !5
  %add1221 = add nsw i32 %mul1220, %861
  %sub1222 = sub nsw i32 %add1221, 3
  %idxprom1223 = sext i32 %sub1222 to i64
  %arrayidx1224 = getelementptr inbounds i32, ptr %858, i64 %idxprom1223
  %862 = load i32, ptr %arrayidx1224, align 4, !tbaa !5
  %cmp1225 = icmp sge i32 %857, %862
  br i1 %cmp1225, label %land.lhs.true1227, label %if.end1376

land.lhs.true1227:                                ; preds = %land.lhs.true1218
  %863 = load i32, ptr %x, align 4, !tbaa !5
  %864 = load ptr, ptr %r.addr, align 8, !tbaa !23
  %865 = load i32, ptr %i, align 4, !tbaa !5
  %add1228 = add nsw i32 %865, 2
  %866 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul1229 = mul nsw i32 %add1228, %866
  %867 = load i32, ptr %j, align 4, !tbaa !5
  %add1230 = add nsw i32 %mul1229, %867
  %sub1231 = sub nsw i32 %add1230, 2
  %idxprom1232 = sext i32 %sub1231 to i64
  %arrayidx1233 = getelementptr inbounds i32, ptr %864, i64 %idxprom1232
  %868 = load i32, ptr %arrayidx1233, align 4, !tbaa !5
  %cmp1234 = icmp sge i32 %863, %868
  br i1 %cmp1234, label %land.lhs.true1236, label %if.end1376

land.lhs.true1236:                                ; preds = %land.lhs.true1227
  %869 = load i32, ptr %x, align 4, !tbaa !5
  %870 = load ptr, ptr %r.addr, align 8, !tbaa !23
  %871 = load i32, ptr %i, align 4, !tbaa !5
  %add1237 = add nsw i32 %871, 2
  %872 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul1238 = mul nsw i32 %add1237, %872
  %873 = load i32, ptr %j, align 4, !tbaa !5
  %add1239 = add nsw i32 %mul1238, %873
  %sub1240 = sub nsw i32 %add1239, 1
  %idxprom1241 = sext i32 %sub1240 to i64
  %arrayidx1242 = getelementptr inbounds i32, ptr %870, i64 %idxprom1241
  %874 = load i32, ptr %arrayidx1242, align 4, !tbaa !5
  %cmp1243 = icmp sge i32 %869, %874
  br i1 %cmp1243, label %land.lhs.true1245, label %if.end1376

land.lhs.true1245:                                ; preds = %land.lhs.true1236
  %875 = load i32, ptr %x, align 4, !tbaa !5
  %876 = load ptr, ptr %r.addr, align 8, !tbaa !23
  %877 = load i32, ptr %i, align 4, !tbaa !5
  %add1246 = add nsw i32 %877, 2
  %878 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul1247 = mul nsw i32 %add1246, %878
  %879 = load i32, ptr %j, align 4, !tbaa !5
  %add1248 = add nsw i32 %mul1247, %879
  %idxprom1249 = sext i32 %add1248 to i64
  %arrayidx1250 = getelementptr inbounds i32, ptr %876, i64 %idxprom1249
  %880 = load i32, ptr %arrayidx1250, align 4, !tbaa !5
  %cmp1251 = icmp sge i32 %875, %880
  br i1 %cmp1251, label %land.lhs.true1253, label %if.end1376

land.lhs.true1253:                                ; preds = %land.lhs.true1245
  %881 = load i32, ptr %x, align 4, !tbaa !5
  %882 = load ptr, ptr %r.addr, align 8, !tbaa !23
  %883 = load i32, ptr %i, align 4, !tbaa !5
  %add1254 = add nsw i32 %883, 2
  %884 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul1255 = mul nsw i32 %add1254, %884
  %885 = load i32, ptr %j, align 4, !tbaa !5
  %add1256 = add nsw i32 %mul1255, %885
  %add1257 = add nsw i32 %add1256, 1
  %idxprom1258 = sext i32 %add1257 to i64
  %arrayidx1259 = getelementptr inbounds i32, ptr %882, i64 %idxprom1258
  %886 = load i32, ptr %arrayidx1259, align 4, !tbaa !5
  %cmp1260 = icmp sge i32 %881, %886
  br i1 %cmp1260, label %land.lhs.true1262, label %if.end1376

land.lhs.true1262:                                ; preds = %land.lhs.true1253
  %887 = load i32, ptr %x, align 4, !tbaa !5
  %888 = load ptr, ptr %r.addr, align 8, !tbaa !23
  %889 = load i32, ptr %i, align 4, !tbaa !5
  %add1263 = add nsw i32 %889, 2
  %890 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul1264 = mul nsw i32 %add1263, %890
  %891 = load i32, ptr %j, align 4, !tbaa !5
  %add1265 = add nsw i32 %mul1264, %891
  %add1266 = add nsw i32 %add1265, 2
  %idxprom1267 = sext i32 %add1266 to i64
  %arrayidx1268 = getelementptr inbounds i32, ptr %888, i64 %idxprom1267
  %892 = load i32, ptr %arrayidx1268, align 4, !tbaa !5
  %cmp1269 = icmp sge i32 %887, %892
  br i1 %cmp1269, label %land.lhs.true1271, label %if.end1376

land.lhs.true1271:                                ; preds = %land.lhs.true1262
  %893 = load i32, ptr %x, align 4, !tbaa !5
  %894 = load ptr, ptr %r.addr, align 8, !tbaa !23
  %895 = load i32, ptr %i, align 4, !tbaa !5
  %add1272 = add nsw i32 %895, 2
  %896 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul1273 = mul nsw i32 %add1272, %896
  %897 = load i32, ptr %j, align 4, !tbaa !5
  %add1274 = add nsw i32 %mul1273, %897
  %add1275 = add nsw i32 %add1274, 3
  %idxprom1276 = sext i32 %add1275 to i64
  %arrayidx1277 = getelementptr inbounds i32, ptr %894, i64 %idxprom1276
  %898 = load i32, ptr %arrayidx1277, align 4, !tbaa !5
  %cmp1278 = icmp sge i32 %893, %898
  br i1 %cmp1278, label %land.lhs.true1280, label %if.end1376

land.lhs.true1280:                                ; preds = %land.lhs.true1271
  %899 = load i32, ptr %x, align 4, !tbaa !5
  %900 = load ptr, ptr %r.addr, align 8, !tbaa !23
  %901 = load i32, ptr %i, align 4, !tbaa !5
  %add1281 = add nsw i32 %901, 3
  %902 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul1282 = mul nsw i32 %add1281, %902
  %903 = load i32, ptr %j, align 4, !tbaa !5
  %add1283 = add nsw i32 %mul1282, %903
  %sub1284 = sub nsw i32 %add1283, 3
  %idxprom1285 = sext i32 %sub1284 to i64
  %arrayidx1286 = getelementptr inbounds i32, ptr %900, i64 %idxprom1285
  %904 = load i32, ptr %arrayidx1286, align 4, !tbaa !5
  %cmp1287 = icmp sge i32 %899, %904
  br i1 %cmp1287, label %land.lhs.true1289, label %if.end1376

land.lhs.true1289:                                ; preds = %land.lhs.true1280
  %905 = load i32, ptr %x, align 4, !tbaa !5
  %906 = load ptr, ptr %r.addr, align 8, !tbaa !23
  %907 = load i32, ptr %i, align 4, !tbaa !5
  %add1290 = add nsw i32 %907, 3
  %908 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul1291 = mul nsw i32 %add1290, %908
  %909 = load i32, ptr %j, align 4, !tbaa !5
  %add1292 = add nsw i32 %mul1291, %909
  %sub1293 = sub nsw i32 %add1292, 2
  %idxprom1294 = sext i32 %sub1293 to i64
  %arrayidx1295 = getelementptr inbounds i32, ptr %906, i64 %idxprom1294
  %910 = load i32, ptr %arrayidx1295, align 4, !tbaa !5
  %cmp1296 = icmp sge i32 %905, %910
  br i1 %cmp1296, label %land.lhs.true1298, label %if.end1376

land.lhs.true1298:                                ; preds = %land.lhs.true1289
  %911 = load i32, ptr %x, align 4, !tbaa !5
  %912 = load ptr, ptr %r.addr, align 8, !tbaa !23
  %913 = load i32, ptr %i, align 4, !tbaa !5
  %add1299 = add nsw i32 %913, 3
  %914 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul1300 = mul nsw i32 %add1299, %914
  %915 = load i32, ptr %j, align 4, !tbaa !5
  %add1301 = add nsw i32 %mul1300, %915
  %sub1302 = sub nsw i32 %add1301, 1
  %idxprom1303 = sext i32 %sub1302 to i64
  %arrayidx1304 = getelementptr inbounds i32, ptr %912, i64 %idxprom1303
  %916 = load i32, ptr %arrayidx1304, align 4, !tbaa !5
  %cmp1305 = icmp sge i32 %911, %916
  br i1 %cmp1305, label %land.lhs.true1307, label %if.end1376

land.lhs.true1307:                                ; preds = %land.lhs.true1298
  %917 = load i32, ptr %x, align 4, !tbaa !5
  %918 = load ptr, ptr %r.addr, align 8, !tbaa !23
  %919 = load i32, ptr %i, align 4, !tbaa !5
  %add1308 = add nsw i32 %919, 3
  %920 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul1309 = mul nsw i32 %add1308, %920
  %921 = load i32, ptr %j, align 4, !tbaa !5
  %add1310 = add nsw i32 %mul1309, %921
  %idxprom1311 = sext i32 %add1310 to i64
  %arrayidx1312 = getelementptr inbounds i32, ptr %918, i64 %idxprom1311
  %922 = load i32, ptr %arrayidx1312, align 4, !tbaa !5
  %cmp1313 = icmp sge i32 %917, %922
  br i1 %cmp1313, label %land.lhs.true1315, label %if.end1376

land.lhs.true1315:                                ; preds = %land.lhs.true1307
  %923 = load i32, ptr %x, align 4, !tbaa !5
  %924 = load ptr, ptr %r.addr, align 8, !tbaa !23
  %925 = load i32, ptr %i, align 4, !tbaa !5
  %add1316 = add nsw i32 %925, 3
  %926 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul1317 = mul nsw i32 %add1316, %926
  %927 = load i32, ptr %j, align 4, !tbaa !5
  %add1318 = add nsw i32 %mul1317, %927
  %add1319 = add nsw i32 %add1318, 1
  %idxprom1320 = sext i32 %add1319 to i64
  %arrayidx1321 = getelementptr inbounds i32, ptr %924, i64 %idxprom1320
  %928 = load i32, ptr %arrayidx1321, align 4, !tbaa !5
  %cmp1322 = icmp sge i32 %923, %928
  br i1 %cmp1322, label %land.lhs.true1324, label %if.end1376

land.lhs.true1324:                                ; preds = %land.lhs.true1315
  %929 = load i32, ptr %x, align 4, !tbaa !5
  %930 = load ptr, ptr %r.addr, align 8, !tbaa !23
  %931 = load i32, ptr %i, align 4, !tbaa !5
  %add1325 = add nsw i32 %931, 3
  %932 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul1326 = mul nsw i32 %add1325, %932
  %933 = load i32, ptr %j, align 4, !tbaa !5
  %add1327 = add nsw i32 %mul1326, %933
  %add1328 = add nsw i32 %add1327, 2
  %idxprom1329 = sext i32 %add1328 to i64
  %arrayidx1330 = getelementptr inbounds i32, ptr %930, i64 %idxprom1329
  %934 = load i32, ptr %arrayidx1330, align 4, !tbaa !5
  %cmp1331 = icmp sge i32 %929, %934
  br i1 %cmp1331, label %land.lhs.true1333, label %if.end1376

land.lhs.true1333:                                ; preds = %land.lhs.true1324
  %935 = load i32, ptr %x, align 4, !tbaa !5
  %936 = load ptr, ptr %r.addr, align 8, !tbaa !23
  %937 = load i32, ptr %i, align 4, !tbaa !5
  %add1334 = add nsw i32 %937, 3
  %938 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul1335 = mul nsw i32 %add1334, %938
  %939 = load i32, ptr %j, align 4, !tbaa !5
  %add1336 = add nsw i32 %mul1335, %939
  %add1337 = add nsw i32 %add1336, 3
  %idxprom1338 = sext i32 %add1337 to i64
  %arrayidx1339 = getelementptr inbounds i32, ptr %936, i64 %idxprom1338
  %940 = load i32, ptr %arrayidx1339, align 4, !tbaa !5
  %cmp1340 = icmp sge i32 %935, %940
  br i1 %cmp1340, label %if.then1342, label %if.end1376

if.then1342:                                      ; preds = %land.lhs.true1333
  %941 = load ptr, ptr %corner_list.addr, align 8, !tbaa !65
  %942 = load i32, ptr %n, align 4, !tbaa !5
  %idxprom1343 = sext i32 %942 to i64
  %arrayidx1344 = getelementptr inbounds %struct.anon, ptr %941, i64 %idxprom1343
  %info = getelementptr inbounds nuw %struct.anon, ptr %arrayidx1344, i32 0, i32 2
  store i32 0, ptr %info, align 4, !tbaa !66
  %943 = load i32, ptr %j, align 4, !tbaa !5
  %944 = load ptr, ptr %corner_list.addr, align 8, !tbaa !65
  %945 = load i32, ptr %n, align 4, !tbaa !5
  %idxprom1345 = sext i32 %945 to i64
  %arrayidx1346 = getelementptr inbounds %struct.anon, ptr %944, i64 %idxprom1345
  %x1347 = getelementptr inbounds nuw %struct.anon, ptr %arrayidx1346, i32 0, i32 0
  store i32 %943, ptr %x1347, align 4, !tbaa !69
  %946 = load i32, ptr %i, align 4, !tbaa !5
  %947 = load ptr, ptr %corner_list.addr, align 8, !tbaa !65
  %948 = load i32, ptr %n, align 4, !tbaa !5
  %idxprom1348 = sext i32 %948 to i64
  %arrayidx1349 = getelementptr inbounds %struct.anon, ptr %947, i64 %idxprom1348
  %y1350 = getelementptr inbounds nuw %struct.anon, ptr %arrayidx1349, i32 0, i32 1
  store i32 %946, ptr %y1350, align 4, !tbaa !68
  %949 = load ptr, ptr %cgx, align 8, !tbaa !23
  %950 = load i32, ptr %i, align 4, !tbaa !5
  %951 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul1351 = mul nsw i32 %950, %951
  %952 = load i32, ptr %j, align 4, !tbaa !5
  %add1352 = add nsw i32 %mul1351, %952
  %idxprom1353 = sext i32 %add1352 to i64
  %arrayidx1354 = getelementptr inbounds i32, ptr %949, i64 %idxprom1353
  %953 = load i32, ptr %arrayidx1354, align 4, !tbaa !5
  %954 = load ptr, ptr %corner_list.addr, align 8, !tbaa !65
  %955 = load i32, ptr %n, align 4, !tbaa !5
  %idxprom1355 = sext i32 %955 to i64
  %arrayidx1356 = getelementptr inbounds %struct.anon, ptr %954, i64 %idxprom1355
  %dx = getelementptr inbounds nuw %struct.anon, ptr %arrayidx1356, i32 0, i32 3
  store i32 %953, ptr %dx, align 4, !tbaa !73
  %956 = load ptr, ptr %cgy, align 8, !tbaa !23
  %957 = load i32, ptr %i, align 4, !tbaa !5
  %958 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul1357 = mul nsw i32 %957, %958
  %959 = load i32, ptr %j, align 4, !tbaa !5
  %add1358 = add nsw i32 %mul1357, %959
  %idxprom1359 = sext i32 %add1358 to i64
  %arrayidx1360 = getelementptr inbounds i32, ptr %956, i64 %idxprom1359
  %960 = load i32, ptr %arrayidx1360, align 4, !tbaa !5
  %961 = load ptr, ptr %corner_list.addr, align 8, !tbaa !65
  %962 = load i32, ptr %n, align 4, !tbaa !5
  %idxprom1361 = sext i32 %962 to i64
  %arrayidx1362 = getelementptr inbounds %struct.anon, ptr %961, i64 %idxprom1361
  %dy = getelementptr inbounds nuw %struct.anon, ptr %arrayidx1362, i32 0, i32 4
  store i32 %960, ptr %dy, align 4, !tbaa !74
  %963 = load ptr, ptr %in.addr, align 8, !tbaa !21
  %964 = load i32, ptr %i, align 4, !tbaa !5
  %965 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul1363 = mul nsw i32 %964, %965
  %966 = load i32, ptr %j, align 4, !tbaa !5
  %add1364 = add nsw i32 %mul1363, %966
  %idxprom1365 = sext i32 %add1364 to i64
  %arrayidx1366 = getelementptr inbounds i8, ptr %963, i64 %idxprom1365
  %967 = load i8, ptr %arrayidx1366, align 1, !tbaa !25
  %conv1367 = zext i8 %967 to i32
  %968 = load ptr, ptr %corner_list.addr, align 8, !tbaa !65
  %969 = load i32, ptr %n, align 4, !tbaa !5
  %idxprom1368 = sext i32 %969 to i64
  %arrayidx1369 = getelementptr inbounds %struct.anon, ptr %968, i64 %idxprom1368
  %I = getelementptr inbounds nuw %struct.anon, ptr %arrayidx1369, i32 0, i32 5
  store i32 %conv1367, ptr %I, align 4, !tbaa !75
  %970 = load i32, ptr %n, align 4, !tbaa !5
  %inc1370 = add nsw i32 %970, 1
  store i32 %inc1370, ptr %n, align 4, !tbaa !5
  %971 = load i32, ptr %n, align 4, !tbaa !5
  %cmp1371 = icmp eq i32 %971, 15000
  br i1 %cmp1371, label %if.then1373, label %if.end1375

if.then1373:                                      ; preds = %if.then1342
  %972 = load ptr, ptr @stderr, align 8, !tbaa !13
  %call1374 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %972, ptr noundef @.str.29) #10
  call void @exit(i32 noundef 1) #11
  unreachable

if.end1375:                                       ; preds = %if.then1342
  br label %if.end1376

if.end1376:                                       ; preds = %if.end1375, %land.lhs.true1333, %land.lhs.true1324, %land.lhs.true1315, %land.lhs.true1307, %land.lhs.true1298, %land.lhs.true1289, %land.lhs.true1280, %land.lhs.true1271, %land.lhs.true1262, %land.lhs.true1253, %land.lhs.true1245, %land.lhs.true1236, %land.lhs.true1227, %land.lhs.true1218, %land.lhs.true1209, %land.lhs.true1200, %land.lhs.true1191, %land.lhs.true1183, %land.lhs.true1174, %land.lhs.true1165, %land.lhs.true1156, %land.lhs.true1148, %land.lhs.true1140, %land.lhs.true1132, %land.lhs.true1124, %land.lhs.true1116, %land.lhs.true1108, %land.lhs.true1099, %land.lhs.true1090, %land.lhs.true1081, %land.lhs.true1073, %land.lhs.true1064, %land.lhs.true1055, %land.lhs.true1046, %land.lhs.true1037, %land.lhs.true1028, %land.lhs.true1019, %land.lhs.true1011, %land.lhs.true1002, %land.lhs.true993, %land.lhs.true984, %land.lhs.true975, %land.lhs.true966, %land.lhs.true957, %land.lhs.true949, %land.lhs.true940, %land.lhs.true, %if.then923
  br label %if.end1377

if.end1377:                                       ; preds = %if.end1376, %for.body916
  br label %for.inc1378

for.inc1378:                                      ; preds = %if.end1377
  %973 = load i32, ptr %j, align 4, !tbaa !5
  %inc1379 = add nsw i32 %973, 1
  store i32 %inc1379, ptr %j, align 4, !tbaa !5
  br label %for.cond912, !llvm.loop !76

for.end1380:                                      ; preds = %for.cond912
  br label %for.inc1381

for.inc1381:                                      ; preds = %for.end1380
  %974 = load i32, ptr %i, align 4, !tbaa !5
  %inc1382 = add nsw i32 %974, 1
  store i32 %inc1382, ptr %i, align 4, !tbaa !5
  br label %for.cond907, !llvm.loop !77

for.end1383:                                      ; preds = %for.cond907
  %975 = load ptr, ptr %corner_list.addr, align 8, !tbaa !65
  %976 = load i32, ptr %n, align 4, !tbaa !5
  %idxprom1384 = sext i32 %976 to i64
  %arrayidx1385 = getelementptr inbounds %struct.anon, ptr %975, i64 %idxprom1384
  %info1386 = getelementptr inbounds nuw %struct.anon, ptr %arrayidx1385, i32 0, i32 2
  store i32 7, ptr %info1386, align 4, !tbaa !66
  %977 = load ptr, ptr %cgx, align 8, !tbaa !23
  call void @free(ptr noundef %977) #10
  %978 = load ptr, ptr %cgy, align 8, !tbaa !23
  call void @free(ptr noundef %978) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %cp) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %divide) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %cgy) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %cgx) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %yy) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %xx) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %sq) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %y) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %x) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #10
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #8

; Function Attrs: nounwind uwtable
define dso_local void @susan_corners_quick(ptr noundef %in, ptr noundef %r, ptr noundef %bp, i32 noundef %max_no, ptr noundef %corner_list, i32 noundef %x_size, i32 noundef %y_size) #0 {
entry:
  %in.addr = alloca ptr, align 8
  %r.addr = alloca ptr, align 8
  %bp.addr = alloca ptr, align 8
  %max_no.addr = alloca i32, align 4
  %corner_list.addr = alloca ptr, align 8
  %x_size.addr = alloca i32, align 4
  %y_size.addr = alloca i32, align 4
  %n = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %p = alloca ptr, align 8
  %cp = alloca ptr, align 8
  store ptr %in, ptr %in.addr, align 8, !tbaa !21
  store ptr %r, ptr %r.addr, align 8, !tbaa !23
  store ptr %bp, ptr %bp.addr, align 8, !tbaa !21
  store i32 %max_no, ptr %max_no.addr, align 4, !tbaa !5
  store ptr %corner_list, ptr %corner_list.addr, align 8, !tbaa !65
  store i32 %x_size, ptr %x_size.addr, align 4, !tbaa !5
  store i32 %y_size, ptr %y_size.addr, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %x) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %y) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %cp) #10
  %0 = load ptr, ptr %r.addr, align 8, !tbaa !23
  %1 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %2 = load i32, ptr %y_size.addr, align 4, !tbaa !5
  %mul = mul nsw i32 %1, %2
  %conv = sext i32 %mul to i64
  %mul1 = mul i64 %conv, 4
  call void @llvm.memset.p0.i64(ptr align 4 %0, i8 0, i64 %mul1, i1 false)
  store i32 7, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc357, %entry
  %3 = load i32, ptr %i, align 4, !tbaa !5
  %4 = load i32, ptr %y_size.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %4, 7
  %cmp = icmp slt i32 %3, %sub
  br i1 %cmp, label %for.body, label %for.end359

for.body:                                         ; preds = %for.cond
  store i32 7, ptr %j, align 4, !tbaa !5
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %5 = load i32, ptr %j, align 4, !tbaa !5
  %6 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %sub4 = sub nsw i32 %6, 7
  %cmp5 = icmp slt i32 %5, %sub4
  br i1 %cmp5, label %for.body7, label %for.end

for.body7:                                        ; preds = %for.cond3
  store i32 100, ptr %n, align 4, !tbaa !5
  %7 = load ptr, ptr %in.addr, align 8, !tbaa !21
  %8 = load i32, ptr %i, align 4, !tbaa !5
  %sub8 = sub nsw i32 %8, 3
  %9 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul9 = mul nsw i32 %sub8, %9
  %idx.ext = sext i32 %mul9 to i64
  %add.ptr = getelementptr inbounds i8, ptr %7, i64 %idx.ext
  %10 = load i32, ptr %j, align 4, !tbaa !5
  %idx.ext10 = sext i32 %10 to i64
  %add.ptr11 = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.ext10
  %add.ptr12 = getelementptr inbounds i8, ptr %add.ptr11, i64 -1
  store ptr %add.ptr12, ptr %p, align 8, !tbaa !21
  %11 = load ptr, ptr %bp.addr, align 8, !tbaa !21
  %12 = load ptr, ptr %in.addr, align 8, !tbaa !21
  %13 = load i32, ptr %i, align 4, !tbaa !5
  %14 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul13 = mul nsw i32 %13, %14
  %15 = load i32, ptr %j, align 4, !tbaa !5
  %add = add nsw i32 %mul13, %15
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds i8, ptr %12, i64 %idxprom
  %16 = load i8, ptr %arrayidx, align 1, !tbaa !25
  %conv14 = zext i8 %16 to i32
  %idx.ext15 = sext i32 %conv14 to i64
  %add.ptr16 = getelementptr inbounds i8, ptr %11, i64 %idx.ext15
  store ptr %add.ptr16, ptr %cp, align 8, !tbaa !21
  %17 = load ptr, ptr %cp, align 8, !tbaa !21
  %18 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %18, i32 1
  store ptr %incdec.ptr, ptr %p, align 8, !tbaa !21
  %19 = load i8, ptr %18, align 1, !tbaa !25
  %conv17 = zext i8 %19 to i32
  %idx.ext18 = sext i32 %conv17 to i64
  %idx.neg = sub i64 0, %idx.ext18
  %add.ptr19 = getelementptr inbounds i8, ptr %17, i64 %idx.neg
  %20 = load i8, ptr %add.ptr19, align 1, !tbaa !25
  %conv20 = zext i8 %20 to i32
  %21 = load i32, ptr %n, align 4, !tbaa !5
  %add21 = add nsw i32 %21, %conv20
  store i32 %add21, ptr %n, align 4, !tbaa !5
  %22 = load ptr, ptr %cp, align 8, !tbaa !21
  %23 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr22 = getelementptr inbounds nuw i8, ptr %23, i32 1
  store ptr %incdec.ptr22, ptr %p, align 8, !tbaa !21
  %24 = load i8, ptr %23, align 1, !tbaa !25
  %conv23 = zext i8 %24 to i32
  %idx.ext24 = sext i32 %conv23 to i64
  %idx.neg25 = sub i64 0, %idx.ext24
  %add.ptr26 = getelementptr inbounds i8, ptr %22, i64 %idx.neg25
  %25 = load i8, ptr %add.ptr26, align 1, !tbaa !25
  %conv27 = zext i8 %25 to i32
  %26 = load i32, ptr %n, align 4, !tbaa !5
  %add28 = add nsw i32 %26, %conv27
  store i32 %add28, ptr %n, align 4, !tbaa !5
  %27 = load ptr, ptr %cp, align 8, !tbaa !21
  %28 = load ptr, ptr %p, align 8, !tbaa !21
  %29 = load i8, ptr %28, align 1, !tbaa !25
  %conv29 = zext i8 %29 to i32
  %idx.ext30 = sext i32 %conv29 to i64
  %idx.neg31 = sub i64 0, %idx.ext30
  %add.ptr32 = getelementptr inbounds i8, ptr %27, i64 %idx.neg31
  %30 = load i8, ptr %add.ptr32, align 1, !tbaa !25
  %conv33 = zext i8 %30 to i32
  %31 = load i32, ptr %n, align 4, !tbaa !5
  %add34 = add nsw i32 %31, %conv33
  store i32 %add34, ptr %n, align 4, !tbaa !5
  %32 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %sub35 = sub nsw i32 %32, 3
  %33 = load ptr, ptr %p, align 8, !tbaa !21
  %idx.ext36 = sext i32 %sub35 to i64
  %add.ptr37 = getelementptr inbounds i8, ptr %33, i64 %idx.ext36
  store ptr %add.ptr37, ptr %p, align 8, !tbaa !21
  %34 = load ptr, ptr %cp, align 8, !tbaa !21
  %35 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr38 = getelementptr inbounds nuw i8, ptr %35, i32 1
  store ptr %incdec.ptr38, ptr %p, align 8, !tbaa !21
  %36 = load i8, ptr %35, align 1, !tbaa !25
  %conv39 = zext i8 %36 to i32
  %idx.ext40 = sext i32 %conv39 to i64
  %idx.neg41 = sub i64 0, %idx.ext40
  %add.ptr42 = getelementptr inbounds i8, ptr %34, i64 %idx.neg41
  %37 = load i8, ptr %add.ptr42, align 1, !tbaa !25
  %conv43 = zext i8 %37 to i32
  %38 = load i32, ptr %n, align 4, !tbaa !5
  %add44 = add nsw i32 %38, %conv43
  store i32 %add44, ptr %n, align 4, !tbaa !5
  %39 = load ptr, ptr %cp, align 8, !tbaa !21
  %40 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr45 = getelementptr inbounds nuw i8, ptr %40, i32 1
  store ptr %incdec.ptr45, ptr %p, align 8, !tbaa !21
  %41 = load i8, ptr %40, align 1, !tbaa !25
  %conv46 = zext i8 %41 to i32
  %idx.ext47 = sext i32 %conv46 to i64
  %idx.neg48 = sub i64 0, %idx.ext47
  %add.ptr49 = getelementptr inbounds i8, ptr %39, i64 %idx.neg48
  %42 = load i8, ptr %add.ptr49, align 1, !tbaa !25
  %conv50 = zext i8 %42 to i32
  %43 = load i32, ptr %n, align 4, !tbaa !5
  %add51 = add nsw i32 %43, %conv50
  store i32 %add51, ptr %n, align 4, !tbaa !5
  %44 = load ptr, ptr %cp, align 8, !tbaa !21
  %45 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr52 = getelementptr inbounds nuw i8, ptr %45, i32 1
  store ptr %incdec.ptr52, ptr %p, align 8, !tbaa !21
  %46 = load i8, ptr %45, align 1, !tbaa !25
  %conv53 = zext i8 %46 to i32
  %idx.ext54 = sext i32 %conv53 to i64
  %idx.neg55 = sub i64 0, %idx.ext54
  %add.ptr56 = getelementptr inbounds i8, ptr %44, i64 %idx.neg55
  %47 = load i8, ptr %add.ptr56, align 1, !tbaa !25
  %conv57 = zext i8 %47 to i32
  %48 = load i32, ptr %n, align 4, !tbaa !5
  %add58 = add nsw i32 %48, %conv57
  store i32 %add58, ptr %n, align 4, !tbaa !5
  %49 = load ptr, ptr %cp, align 8, !tbaa !21
  %50 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr59 = getelementptr inbounds nuw i8, ptr %50, i32 1
  store ptr %incdec.ptr59, ptr %p, align 8, !tbaa !21
  %51 = load i8, ptr %50, align 1, !tbaa !25
  %conv60 = zext i8 %51 to i32
  %idx.ext61 = sext i32 %conv60 to i64
  %idx.neg62 = sub i64 0, %idx.ext61
  %add.ptr63 = getelementptr inbounds i8, ptr %49, i64 %idx.neg62
  %52 = load i8, ptr %add.ptr63, align 1, !tbaa !25
  %conv64 = zext i8 %52 to i32
  %53 = load i32, ptr %n, align 4, !tbaa !5
  %add65 = add nsw i32 %53, %conv64
  store i32 %add65, ptr %n, align 4, !tbaa !5
  %54 = load ptr, ptr %cp, align 8, !tbaa !21
  %55 = load ptr, ptr %p, align 8, !tbaa !21
  %56 = load i8, ptr %55, align 1, !tbaa !25
  %conv66 = zext i8 %56 to i32
  %idx.ext67 = sext i32 %conv66 to i64
  %idx.neg68 = sub i64 0, %idx.ext67
  %add.ptr69 = getelementptr inbounds i8, ptr %54, i64 %idx.neg68
  %57 = load i8, ptr %add.ptr69, align 1, !tbaa !25
  %conv70 = zext i8 %57 to i32
  %58 = load i32, ptr %n, align 4, !tbaa !5
  %add71 = add nsw i32 %58, %conv70
  store i32 %add71, ptr %n, align 4, !tbaa !5
  %59 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %sub72 = sub nsw i32 %59, 5
  %60 = load ptr, ptr %p, align 8, !tbaa !21
  %idx.ext73 = sext i32 %sub72 to i64
  %add.ptr74 = getelementptr inbounds i8, ptr %60, i64 %idx.ext73
  store ptr %add.ptr74, ptr %p, align 8, !tbaa !21
  %61 = load ptr, ptr %cp, align 8, !tbaa !21
  %62 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr75 = getelementptr inbounds nuw i8, ptr %62, i32 1
  store ptr %incdec.ptr75, ptr %p, align 8, !tbaa !21
  %63 = load i8, ptr %62, align 1, !tbaa !25
  %conv76 = zext i8 %63 to i32
  %idx.ext77 = sext i32 %conv76 to i64
  %idx.neg78 = sub i64 0, %idx.ext77
  %add.ptr79 = getelementptr inbounds i8, ptr %61, i64 %idx.neg78
  %64 = load i8, ptr %add.ptr79, align 1, !tbaa !25
  %conv80 = zext i8 %64 to i32
  %65 = load i32, ptr %n, align 4, !tbaa !5
  %add81 = add nsw i32 %65, %conv80
  store i32 %add81, ptr %n, align 4, !tbaa !5
  %66 = load ptr, ptr %cp, align 8, !tbaa !21
  %67 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr82 = getelementptr inbounds nuw i8, ptr %67, i32 1
  store ptr %incdec.ptr82, ptr %p, align 8, !tbaa !21
  %68 = load i8, ptr %67, align 1, !tbaa !25
  %conv83 = zext i8 %68 to i32
  %idx.ext84 = sext i32 %conv83 to i64
  %idx.neg85 = sub i64 0, %idx.ext84
  %add.ptr86 = getelementptr inbounds i8, ptr %66, i64 %idx.neg85
  %69 = load i8, ptr %add.ptr86, align 1, !tbaa !25
  %conv87 = zext i8 %69 to i32
  %70 = load i32, ptr %n, align 4, !tbaa !5
  %add88 = add nsw i32 %70, %conv87
  store i32 %add88, ptr %n, align 4, !tbaa !5
  %71 = load ptr, ptr %cp, align 8, !tbaa !21
  %72 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr89 = getelementptr inbounds nuw i8, ptr %72, i32 1
  store ptr %incdec.ptr89, ptr %p, align 8, !tbaa !21
  %73 = load i8, ptr %72, align 1, !tbaa !25
  %conv90 = zext i8 %73 to i32
  %idx.ext91 = sext i32 %conv90 to i64
  %idx.neg92 = sub i64 0, %idx.ext91
  %add.ptr93 = getelementptr inbounds i8, ptr %71, i64 %idx.neg92
  %74 = load i8, ptr %add.ptr93, align 1, !tbaa !25
  %conv94 = zext i8 %74 to i32
  %75 = load i32, ptr %n, align 4, !tbaa !5
  %add95 = add nsw i32 %75, %conv94
  store i32 %add95, ptr %n, align 4, !tbaa !5
  %76 = load ptr, ptr %cp, align 8, !tbaa !21
  %77 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr96 = getelementptr inbounds nuw i8, ptr %77, i32 1
  store ptr %incdec.ptr96, ptr %p, align 8, !tbaa !21
  %78 = load i8, ptr %77, align 1, !tbaa !25
  %conv97 = zext i8 %78 to i32
  %idx.ext98 = sext i32 %conv97 to i64
  %idx.neg99 = sub i64 0, %idx.ext98
  %add.ptr100 = getelementptr inbounds i8, ptr %76, i64 %idx.neg99
  %79 = load i8, ptr %add.ptr100, align 1, !tbaa !25
  %conv101 = zext i8 %79 to i32
  %80 = load i32, ptr %n, align 4, !tbaa !5
  %add102 = add nsw i32 %80, %conv101
  store i32 %add102, ptr %n, align 4, !tbaa !5
  %81 = load ptr, ptr %cp, align 8, !tbaa !21
  %82 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr103 = getelementptr inbounds nuw i8, ptr %82, i32 1
  store ptr %incdec.ptr103, ptr %p, align 8, !tbaa !21
  %83 = load i8, ptr %82, align 1, !tbaa !25
  %conv104 = zext i8 %83 to i32
  %idx.ext105 = sext i32 %conv104 to i64
  %idx.neg106 = sub i64 0, %idx.ext105
  %add.ptr107 = getelementptr inbounds i8, ptr %81, i64 %idx.neg106
  %84 = load i8, ptr %add.ptr107, align 1, !tbaa !25
  %conv108 = zext i8 %84 to i32
  %85 = load i32, ptr %n, align 4, !tbaa !5
  %add109 = add nsw i32 %85, %conv108
  store i32 %add109, ptr %n, align 4, !tbaa !5
  %86 = load ptr, ptr %cp, align 8, !tbaa !21
  %87 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr110 = getelementptr inbounds nuw i8, ptr %87, i32 1
  store ptr %incdec.ptr110, ptr %p, align 8, !tbaa !21
  %88 = load i8, ptr %87, align 1, !tbaa !25
  %conv111 = zext i8 %88 to i32
  %idx.ext112 = sext i32 %conv111 to i64
  %idx.neg113 = sub i64 0, %idx.ext112
  %add.ptr114 = getelementptr inbounds i8, ptr %86, i64 %idx.neg113
  %89 = load i8, ptr %add.ptr114, align 1, !tbaa !25
  %conv115 = zext i8 %89 to i32
  %90 = load i32, ptr %n, align 4, !tbaa !5
  %add116 = add nsw i32 %90, %conv115
  store i32 %add116, ptr %n, align 4, !tbaa !5
  %91 = load ptr, ptr %cp, align 8, !tbaa !21
  %92 = load ptr, ptr %p, align 8, !tbaa !21
  %93 = load i8, ptr %92, align 1, !tbaa !25
  %conv117 = zext i8 %93 to i32
  %idx.ext118 = sext i32 %conv117 to i64
  %idx.neg119 = sub i64 0, %idx.ext118
  %add.ptr120 = getelementptr inbounds i8, ptr %91, i64 %idx.neg119
  %94 = load i8, ptr %add.ptr120, align 1, !tbaa !25
  %conv121 = zext i8 %94 to i32
  %95 = load i32, ptr %n, align 4, !tbaa !5
  %add122 = add nsw i32 %95, %conv121
  store i32 %add122, ptr %n, align 4, !tbaa !5
  %96 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %sub123 = sub nsw i32 %96, 6
  %97 = load ptr, ptr %p, align 8, !tbaa !21
  %idx.ext124 = sext i32 %sub123 to i64
  %add.ptr125 = getelementptr inbounds i8, ptr %97, i64 %idx.ext124
  store ptr %add.ptr125, ptr %p, align 8, !tbaa !21
  %98 = load ptr, ptr %cp, align 8, !tbaa !21
  %99 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr126 = getelementptr inbounds nuw i8, ptr %99, i32 1
  store ptr %incdec.ptr126, ptr %p, align 8, !tbaa !21
  %100 = load i8, ptr %99, align 1, !tbaa !25
  %conv127 = zext i8 %100 to i32
  %idx.ext128 = sext i32 %conv127 to i64
  %idx.neg129 = sub i64 0, %idx.ext128
  %add.ptr130 = getelementptr inbounds i8, ptr %98, i64 %idx.neg129
  %101 = load i8, ptr %add.ptr130, align 1, !tbaa !25
  %conv131 = zext i8 %101 to i32
  %102 = load i32, ptr %n, align 4, !tbaa !5
  %add132 = add nsw i32 %102, %conv131
  store i32 %add132, ptr %n, align 4, !tbaa !5
  %103 = load ptr, ptr %cp, align 8, !tbaa !21
  %104 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr133 = getelementptr inbounds nuw i8, ptr %104, i32 1
  store ptr %incdec.ptr133, ptr %p, align 8, !tbaa !21
  %105 = load i8, ptr %104, align 1, !tbaa !25
  %conv134 = zext i8 %105 to i32
  %idx.ext135 = sext i32 %conv134 to i64
  %idx.neg136 = sub i64 0, %idx.ext135
  %add.ptr137 = getelementptr inbounds i8, ptr %103, i64 %idx.neg136
  %106 = load i8, ptr %add.ptr137, align 1, !tbaa !25
  %conv138 = zext i8 %106 to i32
  %107 = load i32, ptr %n, align 4, !tbaa !5
  %add139 = add nsw i32 %107, %conv138
  store i32 %add139, ptr %n, align 4, !tbaa !5
  %108 = load ptr, ptr %cp, align 8, !tbaa !21
  %109 = load ptr, ptr %p, align 8, !tbaa !21
  %110 = load i8, ptr %109, align 1, !tbaa !25
  %conv140 = zext i8 %110 to i32
  %idx.ext141 = sext i32 %conv140 to i64
  %idx.neg142 = sub i64 0, %idx.ext141
  %add.ptr143 = getelementptr inbounds i8, ptr %108, i64 %idx.neg142
  %111 = load i8, ptr %add.ptr143, align 1, !tbaa !25
  %conv144 = zext i8 %111 to i32
  %112 = load i32, ptr %n, align 4, !tbaa !5
  %add145 = add nsw i32 %112, %conv144
  store i32 %add145, ptr %n, align 4, !tbaa !5
  %113 = load i32, ptr %n, align 4, !tbaa !5
  %114 = load i32, ptr %max_no.addr, align 4, !tbaa !5
  %cmp146 = icmp slt i32 %113, %114
  br i1 %cmp146, label %if.then, label %if.end356

if.then:                                          ; preds = %for.body7
  %115 = load ptr, ptr %p, align 8, !tbaa !21
  %add.ptr148 = getelementptr inbounds i8, ptr %115, i64 2
  store ptr %add.ptr148, ptr %p, align 8, !tbaa !21
  %116 = load ptr, ptr %cp, align 8, !tbaa !21
  %117 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr149 = getelementptr inbounds nuw i8, ptr %117, i32 1
  store ptr %incdec.ptr149, ptr %p, align 8, !tbaa !21
  %118 = load i8, ptr %117, align 1, !tbaa !25
  %conv150 = zext i8 %118 to i32
  %idx.ext151 = sext i32 %conv150 to i64
  %idx.neg152 = sub i64 0, %idx.ext151
  %add.ptr153 = getelementptr inbounds i8, ptr %116, i64 %idx.neg152
  %119 = load i8, ptr %add.ptr153, align 1, !tbaa !25
  %conv154 = zext i8 %119 to i32
  %120 = load i32, ptr %n, align 4, !tbaa !5
  %add155 = add nsw i32 %120, %conv154
  store i32 %add155, ptr %n, align 4, !tbaa !5
  %121 = load i32, ptr %n, align 4, !tbaa !5
  %122 = load i32, ptr %max_no.addr, align 4, !tbaa !5
  %cmp156 = icmp slt i32 %121, %122
  br i1 %cmp156, label %if.then158, label %if.end355

if.then158:                                       ; preds = %if.then
  %123 = load ptr, ptr %cp, align 8, !tbaa !21
  %124 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr159 = getelementptr inbounds nuw i8, ptr %124, i32 1
  store ptr %incdec.ptr159, ptr %p, align 8, !tbaa !21
  %125 = load i8, ptr %124, align 1, !tbaa !25
  %conv160 = zext i8 %125 to i32
  %idx.ext161 = sext i32 %conv160 to i64
  %idx.neg162 = sub i64 0, %idx.ext161
  %add.ptr163 = getelementptr inbounds i8, ptr %123, i64 %idx.neg162
  %126 = load i8, ptr %add.ptr163, align 1, !tbaa !25
  %conv164 = zext i8 %126 to i32
  %127 = load i32, ptr %n, align 4, !tbaa !5
  %add165 = add nsw i32 %127, %conv164
  store i32 %add165, ptr %n, align 4, !tbaa !5
  %128 = load i32, ptr %n, align 4, !tbaa !5
  %129 = load i32, ptr %max_no.addr, align 4, !tbaa !5
  %cmp166 = icmp slt i32 %128, %129
  br i1 %cmp166, label %if.then168, label %if.end354

if.then168:                                       ; preds = %if.then158
  %130 = load ptr, ptr %cp, align 8, !tbaa !21
  %131 = load ptr, ptr %p, align 8, !tbaa !21
  %132 = load i8, ptr %131, align 1, !tbaa !25
  %conv169 = zext i8 %132 to i32
  %idx.ext170 = sext i32 %conv169 to i64
  %idx.neg171 = sub i64 0, %idx.ext170
  %add.ptr172 = getelementptr inbounds i8, ptr %130, i64 %idx.neg171
  %133 = load i8, ptr %add.ptr172, align 1, !tbaa !25
  %conv173 = zext i8 %133 to i32
  %134 = load i32, ptr %n, align 4, !tbaa !5
  %add174 = add nsw i32 %134, %conv173
  store i32 %add174, ptr %n, align 4, !tbaa !5
  %135 = load i32, ptr %n, align 4, !tbaa !5
  %136 = load i32, ptr %max_no.addr, align 4, !tbaa !5
  %cmp175 = icmp slt i32 %135, %136
  br i1 %cmp175, label %if.then177, label %if.end353

if.then177:                                       ; preds = %if.then168
  %137 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %sub178 = sub nsw i32 %137, 6
  %138 = load ptr, ptr %p, align 8, !tbaa !21
  %idx.ext179 = sext i32 %sub178 to i64
  %add.ptr180 = getelementptr inbounds i8, ptr %138, i64 %idx.ext179
  store ptr %add.ptr180, ptr %p, align 8, !tbaa !21
  %139 = load ptr, ptr %cp, align 8, !tbaa !21
  %140 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr181 = getelementptr inbounds nuw i8, ptr %140, i32 1
  store ptr %incdec.ptr181, ptr %p, align 8, !tbaa !21
  %141 = load i8, ptr %140, align 1, !tbaa !25
  %conv182 = zext i8 %141 to i32
  %idx.ext183 = sext i32 %conv182 to i64
  %idx.neg184 = sub i64 0, %idx.ext183
  %add.ptr185 = getelementptr inbounds i8, ptr %139, i64 %idx.neg184
  %142 = load i8, ptr %add.ptr185, align 1, !tbaa !25
  %conv186 = zext i8 %142 to i32
  %143 = load i32, ptr %n, align 4, !tbaa !5
  %add187 = add nsw i32 %143, %conv186
  store i32 %add187, ptr %n, align 4, !tbaa !5
  %144 = load i32, ptr %n, align 4, !tbaa !5
  %145 = load i32, ptr %max_no.addr, align 4, !tbaa !5
  %cmp188 = icmp slt i32 %144, %145
  br i1 %cmp188, label %if.then190, label %if.end352

if.then190:                                       ; preds = %if.then177
  %146 = load ptr, ptr %cp, align 8, !tbaa !21
  %147 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr191 = getelementptr inbounds nuw i8, ptr %147, i32 1
  store ptr %incdec.ptr191, ptr %p, align 8, !tbaa !21
  %148 = load i8, ptr %147, align 1, !tbaa !25
  %conv192 = zext i8 %148 to i32
  %idx.ext193 = sext i32 %conv192 to i64
  %idx.neg194 = sub i64 0, %idx.ext193
  %add.ptr195 = getelementptr inbounds i8, ptr %146, i64 %idx.neg194
  %149 = load i8, ptr %add.ptr195, align 1, !tbaa !25
  %conv196 = zext i8 %149 to i32
  %150 = load i32, ptr %n, align 4, !tbaa !5
  %add197 = add nsw i32 %150, %conv196
  store i32 %add197, ptr %n, align 4, !tbaa !5
  %151 = load i32, ptr %n, align 4, !tbaa !5
  %152 = load i32, ptr %max_no.addr, align 4, !tbaa !5
  %cmp198 = icmp slt i32 %151, %152
  br i1 %cmp198, label %if.then200, label %if.end351

if.then200:                                       ; preds = %if.then190
  %153 = load ptr, ptr %cp, align 8, !tbaa !21
  %154 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr201 = getelementptr inbounds nuw i8, ptr %154, i32 1
  store ptr %incdec.ptr201, ptr %p, align 8, !tbaa !21
  %155 = load i8, ptr %154, align 1, !tbaa !25
  %conv202 = zext i8 %155 to i32
  %idx.ext203 = sext i32 %conv202 to i64
  %idx.neg204 = sub i64 0, %idx.ext203
  %add.ptr205 = getelementptr inbounds i8, ptr %153, i64 %idx.neg204
  %156 = load i8, ptr %add.ptr205, align 1, !tbaa !25
  %conv206 = zext i8 %156 to i32
  %157 = load i32, ptr %n, align 4, !tbaa !5
  %add207 = add nsw i32 %157, %conv206
  store i32 %add207, ptr %n, align 4, !tbaa !5
  %158 = load i32, ptr %n, align 4, !tbaa !5
  %159 = load i32, ptr %max_no.addr, align 4, !tbaa !5
  %cmp208 = icmp slt i32 %158, %159
  br i1 %cmp208, label %if.then210, label %if.end350

if.then210:                                       ; preds = %if.then200
  %160 = load ptr, ptr %cp, align 8, !tbaa !21
  %161 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr211 = getelementptr inbounds nuw i8, ptr %161, i32 1
  store ptr %incdec.ptr211, ptr %p, align 8, !tbaa !21
  %162 = load i8, ptr %161, align 1, !tbaa !25
  %conv212 = zext i8 %162 to i32
  %idx.ext213 = sext i32 %conv212 to i64
  %idx.neg214 = sub i64 0, %idx.ext213
  %add.ptr215 = getelementptr inbounds i8, ptr %160, i64 %idx.neg214
  %163 = load i8, ptr %add.ptr215, align 1, !tbaa !25
  %conv216 = zext i8 %163 to i32
  %164 = load i32, ptr %n, align 4, !tbaa !5
  %add217 = add nsw i32 %164, %conv216
  store i32 %add217, ptr %n, align 4, !tbaa !5
  %165 = load i32, ptr %n, align 4, !tbaa !5
  %166 = load i32, ptr %max_no.addr, align 4, !tbaa !5
  %cmp218 = icmp slt i32 %165, %166
  br i1 %cmp218, label %if.then220, label %if.end349

if.then220:                                       ; preds = %if.then210
  %167 = load ptr, ptr %cp, align 8, !tbaa !21
  %168 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr221 = getelementptr inbounds nuw i8, ptr %168, i32 1
  store ptr %incdec.ptr221, ptr %p, align 8, !tbaa !21
  %169 = load i8, ptr %168, align 1, !tbaa !25
  %conv222 = zext i8 %169 to i32
  %idx.ext223 = sext i32 %conv222 to i64
  %idx.neg224 = sub i64 0, %idx.ext223
  %add.ptr225 = getelementptr inbounds i8, ptr %167, i64 %idx.neg224
  %170 = load i8, ptr %add.ptr225, align 1, !tbaa !25
  %conv226 = zext i8 %170 to i32
  %171 = load i32, ptr %n, align 4, !tbaa !5
  %add227 = add nsw i32 %171, %conv226
  store i32 %add227, ptr %n, align 4, !tbaa !5
  %172 = load i32, ptr %n, align 4, !tbaa !5
  %173 = load i32, ptr %max_no.addr, align 4, !tbaa !5
  %cmp228 = icmp slt i32 %172, %173
  br i1 %cmp228, label %if.then230, label %if.end348

if.then230:                                       ; preds = %if.then220
  %174 = load ptr, ptr %cp, align 8, !tbaa !21
  %175 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr231 = getelementptr inbounds nuw i8, ptr %175, i32 1
  store ptr %incdec.ptr231, ptr %p, align 8, !tbaa !21
  %176 = load i8, ptr %175, align 1, !tbaa !25
  %conv232 = zext i8 %176 to i32
  %idx.ext233 = sext i32 %conv232 to i64
  %idx.neg234 = sub i64 0, %idx.ext233
  %add.ptr235 = getelementptr inbounds i8, ptr %174, i64 %idx.neg234
  %177 = load i8, ptr %add.ptr235, align 1, !tbaa !25
  %conv236 = zext i8 %177 to i32
  %178 = load i32, ptr %n, align 4, !tbaa !5
  %add237 = add nsw i32 %178, %conv236
  store i32 %add237, ptr %n, align 4, !tbaa !5
  %179 = load i32, ptr %n, align 4, !tbaa !5
  %180 = load i32, ptr %max_no.addr, align 4, !tbaa !5
  %cmp238 = icmp slt i32 %179, %180
  br i1 %cmp238, label %if.then240, label %if.end347

if.then240:                                       ; preds = %if.then230
  %181 = load ptr, ptr %cp, align 8, !tbaa !21
  %182 = load ptr, ptr %p, align 8, !tbaa !21
  %183 = load i8, ptr %182, align 1, !tbaa !25
  %conv241 = zext i8 %183 to i32
  %idx.ext242 = sext i32 %conv241 to i64
  %idx.neg243 = sub i64 0, %idx.ext242
  %add.ptr244 = getelementptr inbounds i8, ptr %181, i64 %idx.neg243
  %184 = load i8, ptr %add.ptr244, align 1, !tbaa !25
  %conv245 = zext i8 %184 to i32
  %185 = load i32, ptr %n, align 4, !tbaa !5
  %add246 = add nsw i32 %185, %conv245
  store i32 %add246, ptr %n, align 4, !tbaa !5
  %186 = load i32, ptr %n, align 4, !tbaa !5
  %187 = load i32, ptr %max_no.addr, align 4, !tbaa !5
  %cmp247 = icmp slt i32 %186, %187
  br i1 %cmp247, label %if.then249, label %if.end346

if.then249:                                       ; preds = %if.then240
  %188 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %sub250 = sub nsw i32 %188, 5
  %189 = load ptr, ptr %p, align 8, !tbaa !21
  %idx.ext251 = sext i32 %sub250 to i64
  %add.ptr252 = getelementptr inbounds i8, ptr %189, i64 %idx.ext251
  store ptr %add.ptr252, ptr %p, align 8, !tbaa !21
  %190 = load ptr, ptr %cp, align 8, !tbaa !21
  %191 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr253 = getelementptr inbounds nuw i8, ptr %191, i32 1
  store ptr %incdec.ptr253, ptr %p, align 8, !tbaa !21
  %192 = load i8, ptr %191, align 1, !tbaa !25
  %conv254 = zext i8 %192 to i32
  %idx.ext255 = sext i32 %conv254 to i64
  %idx.neg256 = sub i64 0, %idx.ext255
  %add.ptr257 = getelementptr inbounds i8, ptr %190, i64 %idx.neg256
  %193 = load i8, ptr %add.ptr257, align 1, !tbaa !25
  %conv258 = zext i8 %193 to i32
  %194 = load i32, ptr %n, align 4, !tbaa !5
  %add259 = add nsw i32 %194, %conv258
  store i32 %add259, ptr %n, align 4, !tbaa !5
  %195 = load i32, ptr %n, align 4, !tbaa !5
  %196 = load i32, ptr %max_no.addr, align 4, !tbaa !5
  %cmp260 = icmp slt i32 %195, %196
  br i1 %cmp260, label %if.then262, label %if.end345

if.then262:                                       ; preds = %if.then249
  %197 = load ptr, ptr %cp, align 8, !tbaa !21
  %198 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr263 = getelementptr inbounds nuw i8, ptr %198, i32 1
  store ptr %incdec.ptr263, ptr %p, align 8, !tbaa !21
  %199 = load i8, ptr %198, align 1, !tbaa !25
  %conv264 = zext i8 %199 to i32
  %idx.ext265 = sext i32 %conv264 to i64
  %idx.neg266 = sub i64 0, %idx.ext265
  %add.ptr267 = getelementptr inbounds i8, ptr %197, i64 %idx.neg266
  %200 = load i8, ptr %add.ptr267, align 1, !tbaa !25
  %conv268 = zext i8 %200 to i32
  %201 = load i32, ptr %n, align 4, !tbaa !5
  %add269 = add nsw i32 %201, %conv268
  store i32 %add269, ptr %n, align 4, !tbaa !5
  %202 = load i32, ptr %n, align 4, !tbaa !5
  %203 = load i32, ptr %max_no.addr, align 4, !tbaa !5
  %cmp270 = icmp slt i32 %202, %203
  br i1 %cmp270, label %if.then272, label %if.end344

if.then272:                                       ; preds = %if.then262
  %204 = load ptr, ptr %cp, align 8, !tbaa !21
  %205 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr273 = getelementptr inbounds nuw i8, ptr %205, i32 1
  store ptr %incdec.ptr273, ptr %p, align 8, !tbaa !21
  %206 = load i8, ptr %205, align 1, !tbaa !25
  %conv274 = zext i8 %206 to i32
  %idx.ext275 = sext i32 %conv274 to i64
  %idx.neg276 = sub i64 0, %idx.ext275
  %add.ptr277 = getelementptr inbounds i8, ptr %204, i64 %idx.neg276
  %207 = load i8, ptr %add.ptr277, align 1, !tbaa !25
  %conv278 = zext i8 %207 to i32
  %208 = load i32, ptr %n, align 4, !tbaa !5
  %add279 = add nsw i32 %208, %conv278
  store i32 %add279, ptr %n, align 4, !tbaa !5
  %209 = load i32, ptr %n, align 4, !tbaa !5
  %210 = load i32, ptr %max_no.addr, align 4, !tbaa !5
  %cmp280 = icmp slt i32 %209, %210
  br i1 %cmp280, label %if.then282, label %if.end343

if.then282:                                       ; preds = %if.then272
  %211 = load ptr, ptr %cp, align 8, !tbaa !21
  %212 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr283 = getelementptr inbounds nuw i8, ptr %212, i32 1
  store ptr %incdec.ptr283, ptr %p, align 8, !tbaa !21
  %213 = load i8, ptr %212, align 1, !tbaa !25
  %conv284 = zext i8 %213 to i32
  %idx.ext285 = sext i32 %conv284 to i64
  %idx.neg286 = sub i64 0, %idx.ext285
  %add.ptr287 = getelementptr inbounds i8, ptr %211, i64 %idx.neg286
  %214 = load i8, ptr %add.ptr287, align 1, !tbaa !25
  %conv288 = zext i8 %214 to i32
  %215 = load i32, ptr %n, align 4, !tbaa !5
  %add289 = add nsw i32 %215, %conv288
  store i32 %add289, ptr %n, align 4, !tbaa !5
  %216 = load i32, ptr %n, align 4, !tbaa !5
  %217 = load i32, ptr %max_no.addr, align 4, !tbaa !5
  %cmp290 = icmp slt i32 %216, %217
  br i1 %cmp290, label %if.then292, label %if.end342

if.then292:                                       ; preds = %if.then282
  %218 = load ptr, ptr %cp, align 8, !tbaa !21
  %219 = load ptr, ptr %p, align 8, !tbaa !21
  %220 = load i8, ptr %219, align 1, !tbaa !25
  %conv293 = zext i8 %220 to i32
  %idx.ext294 = sext i32 %conv293 to i64
  %idx.neg295 = sub i64 0, %idx.ext294
  %add.ptr296 = getelementptr inbounds i8, ptr %218, i64 %idx.neg295
  %221 = load i8, ptr %add.ptr296, align 1, !tbaa !25
  %conv297 = zext i8 %221 to i32
  %222 = load i32, ptr %n, align 4, !tbaa !5
  %add298 = add nsw i32 %222, %conv297
  store i32 %add298, ptr %n, align 4, !tbaa !5
  %223 = load i32, ptr %n, align 4, !tbaa !5
  %224 = load i32, ptr %max_no.addr, align 4, !tbaa !5
  %cmp299 = icmp slt i32 %223, %224
  br i1 %cmp299, label %if.then301, label %if.end341

if.then301:                                       ; preds = %if.then292
  %225 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %sub302 = sub nsw i32 %225, 3
  %226 = load ptr, ptr %p, align 8, !tbaa !21
  %idx.ext303 = sext i32 %sub302 to i64
  %add.ptr304 = getelementptr inbounds i8, ptr %226, i64 %idx.ext303
  store ptr %add.ptr304, ptr %p, align 8, !tbaa !21
  %227 = load ptr, ptr %cp, align 8, !tbaa !21
  %228 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr305 = getelementptr inbounds nuw i8, ptr %228, i32 1
  store ptr %incdec.ptr305, ptr %p, align 8, !tbaa !21
  %229 = load i8, ptr %228, align 1, !tbaa !25
  %conv306 = zext i8 %229 to i32
  %idx.ext307 = sext i32 %conv306 to i64
  %idx.neg308 = sub i64 0, %idx.ext307
  %add.ptr309 = getelementptr inbounds i8, ptr %227, i64 %idx.neg308
  %230 = load i8, ptr %add.ptr309, align 1, !tbaa !25
  %conv310 = zext i8 %230 to i32
  %231 = load i32, ptr %n, align 4, !tbaa !5
  %add311 = add nsw i32 %231, %conv310
  store i32 %add311, ptr %n, align 4, !tbaa !5
  %232 = load i32, ptr %n, align 4, !tbaa !5
  %233 = load i32, ptr %max_no.addr, align 4, !tbaa !5
  %cmp312 = icmp slt i32 %232, %233
  br i1 %cmp312, label %if.then314, label %if.end340

if.then314:                                       ; preds = %if.then301
  %234 = load ptr, ptr %cp, align 8, !tbaa !21
  %235 = load ptr, ptr %p, align 8, !tbaa !21
  %incdec.ptr315 = getelementptr inbounds nuw i8, ptr %235, i32 1
  store ptr %incdec.ptr315, ptr %p, align 8, !tbaa !21
  %236 = load i8, ptr %235, align 1, !tbaa !25
  %conv316 = zext i8 %236 to i32
  %idx.ext317 = sext i32 %conv316 to i64
  %idx.neg318 = sub i64 0, %idx.ext317
  %add.ptr319 = getelementptr inbounds i8, ptr %234, i64 %idx.neg318
  %237 = load i8, ptr %add.ptr319, align 1, !tbaa !25
  %conv320 = zext i8 %237 to i32
  %238 = load i32, ptr %n, align 4, !tbaa !5
  %add321 = add nsw i32 %238, %conv320
  store i32 %add321, ptr %n, align 4, !tbaa !5
  %239 = load i32, ptr %n, align 4, !tbaa !5
  %240 = load i32, ptr %max_no.addr, align 4, !tbaa !5
  %cmp322 = icmp slt i32 %239, %240
  br i1 %cmp322, label %if.then324, label %if.end339

if.then324:                                       ; preds = %if.then314
  %241 = load ptr, ptr %cp, align 8, !tbaa !21
  %242 = load ptr, ptr %p, align 8, !tbaa !21
  %243 = load i8, ptr %242, align 1, !tbaa !25
  %conv325 = zext i8 %243 to i32
  %idx.ext326 = sext i32 %conv325 to i64
  %idx.neg327 = sub i64 0, %idx.ext326
  %add.ptr328 = getelementptr inbounds i8, ptr %241, i64 %idx.neg327
  %244 = load i8, ptr %add.ptr328, align 1, !tbaa !25
  %conv329 = zext i8 %244 to i32
  %245 = load i32, ptr %n, align 4, !tbaa !5
  %add330 = add nsw i32 %245, %conv329
  store i32 %add330, ptr %n, align 4, !tbaa !5
  %246 = load i32, ptr %n, align 4, !tbaa !5
  %247 = load i32, ptr %max_no.addr, align 4, !tbaa !5
  %cmp331 = icmp slt i32 %246, %247
  br i1 %cmp331, label %if.then333, label %if.end

if.then333:                                       ; preds = %if.then324
  %248 = load i32, ptr %max_no.addr, align 4, !tbaa !5
  %249 = load i32, ptr %n, align 4, !tbaa !5
  %sub334 = sub nsw i32 %248, %249
  %250 = load ptr, ptr %r.addr, align 8, !tbaa !23
  %251 = load i32, ptr %i, align 4, !tbaa !5
  %252 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul335 = mul nsw i32 %251, %252
  %253 = load i32, ptr %j, align 4, !tbaa !5
  %add336 = add nsw i32 %mul335, %253
  %idxprom337 = sext i32 %add336 to i64
  %arrayidx338 = getelementptr inbounds i32, ptr %250, i64 %idxprom337
  store i32 %sub334, ptr %arrayidx338, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then333, %if.then324
  br label %if.end339

if.end339:                                        ; preds = %if.end, %if.then314
  br label %if.end340

if.end340:                                        ; preds = %if.end339, %if.then301
  br label %if.end341

if.end341:                                        ; preds = %if.end340, %if.then292
  br label %if.end342

if.end342:                                        ; preds = %if.end341, %if.then282
  br label %if.end343

if.end343:                                        ; preds = %if.end342, %if.then272
  br label %if.end344

if.end344:                                        ; preds = %if.end343, %if.then262
  br label %if.end345

if.end345:                                        ; preds = %if.end344, %if.then249
  br label %if.end346

if.end346:                                        ; preds = %if.end345, %if.then240
  br label %if.end347

if.end347:                                        ; preds = %if.end346, %if.then230
  br label %if.end348

if.end348:                                        ; preds = %if.end347, %if.then220
  br label %if.end349

if.end349:                                        ; preds = %if.end348, %if.then210
  br label %if.end350

if.end350:                                        ; preds = %if.end349, %if.then200
  br label %if.end351

if.end351:                                        ; preds = %if.end350, %if.then190
  br label %if.end352

if.end352:                                        ; preds = %if.end351, %if.then177
  br label %if.end353

if.end353:                                        ; preds = %if.end352, %if.then168
  br label %if.end354

if.end354:                                        ; preds = %if.end353, %if.then158
  br label %if.end355

if.end355:                                        ; preds = %if.end354, %if.then
  br label %if.end356

if.end356:                                        ; preds = %if.end355, %for.body7
  br label %for.inc

for.inc:                                          ; preds = %if.end356
  %254 = load i32, ptr %j, align 4, !tbaa !5
  %inc = add nsw i32 %254, 1
  store i32 %inc, ptr %j, align 4, !tbaa !5
  br label %for.cond3, !llvm.loop !78

for.end:                                          ; preds = %for.cond3
  br label %for.inc357

for.inc357:                                       ; preds = %for.end
  %255 = load i32, ptr %i, align 4, !tbaa !5
  %inc358 = add nsw i32 %255, 1
  store i32 %inc358, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !79

for.end359:                                       ; preds = %for.cond
  store i32 0, ptr %n, align 4, !tbaa !5
  store i32 7, ptr %i, align 4, !tbaa !5
  br label %for.cond360

for.cond360:                                      ; preds = %for.inc1323, %for.end359
  %256 = load i32, ptr %i, align 4, !tbaa !5
  %257 = load i32, ptr %y_size.addr, align 4, !tbaa !5
  %sub361 = sub nsw i32 %257, 7
  %cmp362 = icmp slt i32 %256, %sub361
  br i1 %cmp362, label %for.body364, label %for.end1325

for.body364:                                      ; preds = %for.cond360
  store i32 7, ptr %j, align 4, !tbaa !5
  br label %for.cond365

for.cond365:                                      ; preds = %for.inc1320, %for.body364
  %258 = load i32, ptr %j, align 4, !tbaa !5
  %259 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %sub366 = sub nsw i32 %259, 7
  %cmp367 = icmp slt i32 %258, %sub366
  br i1 %cmp367, label %for.body369, label %for.end1322

for.body369:                                      ; preds = %for.cond365
  %260 = load ptr, ptr %r.addr, align 8, !tbaa !23
  %261 = load i32, ptr %i, align 4, !tbaa !5
  %262 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul370 = mul nsw i32 %261, %262
  %263 = load i32, ptr %j, align 4, !tbaa !5
  %add371 = add nsw i32 %mul370, %263
  %idxprom372 = sext i32 %add371 to i64
  %arrayidx373 = getelementptr inbounds i32, ptr %260, i64 %idxprom372
  %264 = load i32, ptr %arrayidx373, align 4, !tbaa !5
  store i32 %264, ptr %x, align 4, !tbaa !5
  %265 = load i32, ptr %x, align 4, !tbaa !5
  %cmp374 = icmp sgt i32 %265, 0
  br i1 %cmp374, label %if.then376, label %if.end1319

if.then376:                                       ; preds = %for.body369
  %266 = load i32, ptr %x, align 4, !tbaa !5
  %267 = load ptr, ptr %r.addr, align 8, !tbaa !23
  %268 = load i32, ptr %i, align 4, !tbaa !5
  %sub377 = sub nsw i32 %268, 3
  %269 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul378 = mul nsw i32 %sub377, %269
  %270 = load i32, ptr %j, align 4, !tbaa !5
  %add379 = add nsw i32 %mul378, %270
  %sub380 = sub nsw i32 %add379, 3
  %idxprom381 = sext i32 %sub380 to i64
  %arrayidx382 = getelementptr inbounds i32, ptr %267, i64 %idxprom381
  %271 = load i32, ptr %arrayidx382, align 4, !tbaa !5
  %cmp383 = icmp sgt i32 %266, %271
  br i1 %cmp383, label %land.lhs.true, label %if.end1318

land.lhs.true:                                    ; preds = %if.then376
  %272 = load i32, ptr %x, align 4, !tbaa !5
  %273 = load ptr, ptr %r.addr, align 8, !tbaa !23
  %274 = load i32, ptr %i, align 4, !tbaa !5
  %sub385 = sub nsw i32 %274, 3
  %275 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul386 = mul nsw i32 %sub385, %275
  %276 = load i32, ptr %j, align 4, !tbaa !5
  %add387 = add nsw i32 %mul386, %276
  %sub388 = sub nsw i32 %add387, 2
  %idxprom389 = sext i32 %sub388 to i64
  %arrayidx390 = getelementptr inbounds i32, ptr %273, i64 %idxprom389
  %277 = load i32, ptr %arrayidx390, align 4, !tbaa !5
  %cmp391 = icmp sgt i32 %272, %277
  br i1 %cmp391, label %land.lhs.true393, label %if.end1318

land.lhs.true393:                                 ; preds = %land.lhs.true
  %278 = load i32, ptr %x, align 4, !tbaa !5
  %279 = load ptr, ptr %r.addr, align 8, !tbaa !23
  %280 = load i32, ptr %i, align 4, !tbaa !5
  %sub394 = sub nsw i32 %280, 3
  %281 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul395 = mul nsw i32 %sub394, %281
  %282 = load i32, ptr %j, align 4, !tbaa !5
  %add396 = add nsw i32 %mul395, %282
  %sub397 = sub nsw i32 %add396, 1
  %idxprom398 = sext i32 %sub397 to i64
  %arrayidx399 = getelementptr inbounds i32, ptr %279, i64 %idxprom398
  %283 = load i32, ptr %arrayidx399, align 4, !tbaa !5
  %cmp400 = icmp sgt i32 %278, %283
  br i1 %cmp400, label %land.lhs.true402, label %if.end1318

land.lhs.true402:                                 ; preds = %land.lhs.true393
  %284 = load i32, ptr %x, align 4, !tbaa !5
  %285 = load ptr, ptr %r.addr, align 8, !tbaa !23
  %286 = load i32, ptr %i, align 4, !tbaa !5
  %sub403 = sub nsw i32 %286, 3
  %287 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul404 = mul nsw i32 %sub403, %287
  %288 = load i32, ptr %j, align 4, !tbaa !5
  %add405 = add nsw i32 %mul404, %288
  %idxprom406 = sext i32 %add405 to i64
  %arrayidx407 = getelementptr inbounds i32, ptr %285, i64 %idxprom406
  %289 = load i32, ptr %arrayidx407, align 4, !tbaa !5
  %cmp408 = icmp sgt i32 %284, %289
  br i1 %cmp408, label %land.lhs.true410, label %if.end1318

land.lhs.true410:                                 ; preds = %land.lhs.true402
  %290 = load i32, ptr %x, align 4, !tbaa !5
  %291 = load ptr, ptr %r.addr, align 8, !tbaa !23
  %292 = load i32, ptr %i, align 4, !tbaa !5
  %sub411 = sub nsw i32 %292, 3
  %293 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul412 = mul nsw i32 %sub411, %293
  %294 = load i32, ptr %j, align 4, !tbaa !5
  %add413 = add nsw i32 %mul412, %294
  %add414 = add nsw i32 %add413, 1
  %idxprom415 = sext i32 %add414 to i64
  %arrayidx416 = getelementptr inbounds i32, ptr %291, i64 %idxprom415
  %295 = load i32, ptr %arrayidx416, align 4, !tbaa !5
  %cmp417 = icmp sgt i32 %290, %295
  br i1 %cmp417, label %land.lhs.true419, label %if.end1318

land.lhs.true419:                                 ; preds = %land.lhs.true410
  %296 = load i32, ptr %x, align 4, !tbaa !5
  %297 = load ptr, ptr %r.addr, align 8, !tbaa !23
  %298 = load i32, ptr %i, align 4, !tbaa !5
  %sub420 = sub nsw i32 %298, 3
  %299 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul421 = mul nsw i32 %sub420, %299
  %300 = load i32, ptr %j, align 4, !tbaa !5
  %add422 = add nsw i32 %mul421, %300
  %add423 = add nsw i32 %add422, 2
  %idxprom424 = sext i32 %add423 to i64
  %arrayidx425 = getelementptr inbounds i32, ptr %297, i64 %idxprom424
  %301 = load i32, ptr %arrayidx425, align 4, !tbaa !5
  %cmp426 = icmp sgt i32 %296, %301
  br i1 %cmp426, label %land.lhs.true428, label %if.end1318

land.lhs.true428:                                 ; preds = %land.lhs.true419
  %302 = load i32, ptr %x, align 4, !tbaa !5
  %303 = load ptr, ptr %r.addr, align 8, !tbaa !23
  %304 = load i32, ptr %i, align 4, !tbaa !5
  %sub429 = sub nsw i32 %304, 3
  %305 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul430 = mul nsw i32 %sub429, %305
  %306 = load i32, ptr %j, align 4, !tbaa !5
  %add431 = add nsw i32 %mul430, %306
  %add432 = add nsw i32 %add431, 3
  %idxprom433 = sext i32 %add432 to i64
  %arrayidx434 = getelementptr inbounds i32, ptr %303, i64 %idxprom433
  %307 = load i32, ptr %arrayidx434, align 4, !tbaa !5
  %cmp435 = icmp sgt i32 %302, %307
  br i1 %cmp435, label %land.lhs.true437, label %if.end1318

land.lhs.true437:                                 ; preds = %land.lhs.true428
  %308 = load i32, ptr %x, align 4, !tbaa !5
  %309 = load ptr, ptr %r.addr, align 8, !tbaa !23
  %310 = load i32, ptr %i, align 4, !tbaa !5
  %sub438 = sub nsw i32 %310, 2
  %311 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul439 = mul nsw i32 %sub438, %311
  %312 = load i32, ptr %j, align 4, !tbaa !5
  %add440 = add nsw i32 %mul439, %312
  %sub441 = sub nsw i32 %add440, 3
  %idxprom442 = sext i32 %sub441 to i64
  %arrayidx443 = getelementptr inbounds i32, ptr %309, i64 %idxprom442
  %313 = load i32, ptr %arrayidx443, align 4, !tbaa !5
  %cmp444 = icmp sgt i32 %308, %313
  br i1 %cmp444, label %land.lhs.true446, label %if.end1318

land.lhs.true446:                                 ; preds = %land.lhs.true437
  %314 = load i32, ptr %x, align 4, !tbaa !5
  %315 = load ptr, ptr %r.addr, align 8, !tbaa !23
  %316 = load i32, ptr %i, align 4, !tbaa !5
  %sub447 = sub nsw i32 %316, 2
  %317 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul448 = mul nsw i32 %sub447, %317
  %318 = load i32, ptr %j, align 4, !tbaa !5
  %add449 = add nsw i32 %mul448, %318
  %sub450 = sub nsw i32 %add449, 2
  %idxprom451 = sext i32 %sub450 to i64
  %arrayidx452 = getelementptr inbounds i32, ptr %315, i64 %idxprom451
  %319 = load i32, ptr %arrayidx452, align 4, !tbaa !5
  %cmp453 = icmp sgt i32 %314, %319
  br i1 %cmp453, label %land.lhs.true455, label %if.end1318

land.lhs.true455:                                 ; preds = %land.lhs.true446
  %320 = load i32, ptr %x, align 4, !tbaa !5
  %321 = load ptr, ptr %r.addr, align 8, !tbaa !23
  %322 = load i32, ptr %i, align 4, !tbaa !5
  %sub456 = sub nsw i32 %322, 2
  %323 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul457 = mul nsw i32 %sub456, %323
  %324 = load i32, ptr %j, align 4, !tbaa !5
  %add458 = add nsw i32 %mul457, %324
  %sub459 = sub nsw i32 %add458, 1
  %idxprom460 = sext i32 %sub459 to i64
  %arrayidx461 = getelementptr inbounds i32, ptr %321, i64 %idxprom460
  %325 = load i32, ptr %arrayidx461, align 4, !tbaa !5
  %cmp462 = icmp sgt i32 %320, %325
  br i1 %cmp462, label %land.lhs.true464, label %if.end1318

land.lhs.true464:                                 ; preds = %land.lhs.true455
  %326 = load i32, ptr %x, align 4, !tbaa !5
  %327 = load ptr, ptr %r.addr, align 8, !tbaa !23
  %328 = load i32, ptr %i, align 4, !tbaa !5
  %sub465 = sub nsw i32 %328, 2
  %329 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul466 = mul nsw i32 %sub465, %329
  %330 = load i32, ptr %j, align 4, !tbaa !5
  %add467 = add nsw i32 %mul466, %330
  %idxprom468 = sext i32 %add467 to i64
  %arrayidx469 = getelementptr inbounds i32, ptr %327, i64 %idxprom468
  %331 = load i32, ptr %arrayidx469, align 4, !tbaa !5
  %cmp470 = icmp sgt i32 %326, %331
  br i1 %cmp470, label %land.lhs.true472, label %if.end1318

land.lhs.true472:                                 ; preds = %land.lhs.true464
  %332 = load i32, ptr %x, align 4, !tbaa !5
  %333 = load ptr, ptr %r.addr, align 8, !tbaa !23
  %334 = load i32, ptr %i, align 4, !tbaa !5
  %sub473 = sub nsw i32 %334, 2
  %335 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul474 = mul nsw i32 %sub473, %335
  %336 = load i32, ptr %j, align 4, !tbaa !5
  %add475 = add nsw i32 %mul474, %336
  %add476 = add nsw i32 %add475, 1
  %idxprom477 = sext i32 %add476 to i64
  %arrayidx478 = getelementptr inbounds i32, ptr %333, i64 %idxprom477
  %337 = load i32, ptr %arrayidx478, align 4, !tbaa !5
  %cmp479 = icmp sgt i32 %332, %337
  br i1 %cmp479, label %land.lhs.true481, label %if.end1318

land.lhs.true481:                                 ; preds = %land.lhs.true472
  %338 = load i32, ptr %x, align 4, !tbaa !5
  %339 = load ptr, ptr %r.addr, align 8, !tbaa !23
  %340 = load i32, ptr %i, align 4, !tbaa !5
  %sub482 = sub nsw i32 %340, 2
  %341 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul483 = mul nsw i32 %sub482, %341
  %342 = load i32, ptr %j, align 4, !tbaa !5
  %add484 = add nsw i32 %mul483, %342
  %add485 = add nsw i32 %add484, 2
  %idxprom486 = sext i32 %add485 to i64
  %arrayidx487 = getelementptr inbounds i32, ptr %339, i64 %idxprom486
  %343 = load i32, ptr %arrayidx487, align 4, !tbaa !5
  %cmp488 = icmp sgt i32 %338, %343
  br i1 %cmp488, label %land.lhs.true490, label %if.end1318

land.lhs.true490:                                 ; preds = %land.lhs.true481
  %344 = load i32, ptr %x, align 4, !tbaa !5
  %345 = load ptr, ptr %r.addr, align 8, !tbaa !23
  %346 = load i32, ptr %i, align 4, !tbaa !5
  %sub491 = sub nsw i32 %346, 2
  %347 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul492 = mul nsw i32 %sub491, %347
  %348 = load i32, ptr %j, align 4, !tbaa !5
  %add493 = add nsw i32 %mul492, %348
  %add494 = add nsw i32 %add493, 3
  %idxprom495 = sext i32 %add494 to i64
  %arrayidx496 = getelementptr inbounds i32, ptr %345, i64 %idxprom495
  %349 = load i32, ptr %arrayidx496, align 4, !tbaa !5
  %cmp497 = icmp sgt i32 %344, %349
  br i1 %cmp497, label %land.lhs.true499, label %if.end1318

land.lhs.true499:                                 ; preds = %land.lhs.true490
  %350 = load i32, ptr %x, align 4, !tbaa !5
  %351 = load ptr, ptr %r.addr, align 8, !tbaa !23
  %352 = load i32, ptr %i, align 4, !tbaa !5
  %sub500 = sub nsw i32 %352, 1
  %353 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul501 = mul nsw i32 %sub500, %353
  %354 = load i32, ptr %j, align 4, !tbaa !5
  %add502 = add nsw i32 %mul501, %354
  %sub503 = sub nsw i32 %add502, 3
  %idxprom504 = sext i32 %sub503 to i64
  %arrayidx505 = getelementptr inbounds i32, ptr %351, i64 %idxprom504
  %355 = load i32, ptr %arrayidx505, align 4, !tbaa !5
  %cmp506 = icmp sgt i32 %350, %355
  br i1 %cmp506, label %land.lhs.true508, label %if.end1318

land.lhs.true508:                                 ; preds = %land.lhs.true499
  %356 = load i32, ptr %x, align 4, !tbaa !5
  %357 = load ptr, ptr %r.addr, align 8, !tbaa !23
  %358 = load i32, ptr %i, align 4, !tbaa !5
  %sub509 = sub nsw i32 %358, 1
  %359 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul510 = mul nsw i32 %sub509, %359
  %360 = load i32, ptr %j, align 4, !tbaa !5
  %add511 = add nsw i32 %mul510, %360
  %sub512 = sub nsw i32 %add511, 2
  %idxprom513 = sext i32 %sub512 to i64
  %arrayidx514 = getelementptr inbounds i32, ptr %357, i64 %idxprom513
  %361 = load i32, ptr %arrayidx514, align 4, !tbaa !5
  %cmp515 = icmp sgt i32 %356, %361
  br i1 %cmp515, label %land.lhs.true517, label %if.end1318

land.lhs.true517:                                 ; preds = %land.lhs.true508
  %362 = load i32, ptr %x, align 4, !tbaa !5
  %363 = load ptr, ptr %r.addr, align 8, !tbaa !23
  %364 = load i32, ptr %i, align 4, !tbaa !5
  %sub518 = sub nsw i32 %364, 1
  %365 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul519 = mul nsw i32 %sub518, %365
  %366 = load i32, ptr %j, align 4, !tbaa !5
  %add520 = add nsw i32 %mul519, %366
  %sub521 = sub nsw i32 %add520, 1
  %idxprom522 = sext i32 %sub521 to i64
  %arrayidx523 = getelementptr inbounds i32, ptr %363, i64 %idxprom522
  %367 = load i32, ptr %arrayidx523, align 4, !tbaa !5
  %cmp524 = icmp sgt i32 %362, %367
  br i1 %cmp524, label %land.lhs.true526, label %if.end1318

land.lhs.true526:                                 ; preds = %land.lhs.true517
  %368 = load i32, ptr %x, align 4, !tbaa !5
  %369 = load ptr, ptr %r.addr, align 8, !tbaa !23
  %370 = load i32, ptr %i, align 4, !tbaa !5
  %sub527 = sub nsw i32 %370, 1
  %371 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul528 = mul nsw i32 %sub527, %371
  %372 = load i32, ptr %j, align 4, !tbaa !5
  %add529 = add nsw i32 %mul528, %372
  %idxprom530 = sext i32 %add529 to i64
  %arrayidx531 = getelementptr inbounds i32, ptr %369, i64 %idxprom530
  %373 = load i32, ptr %arrayidx531, align 4, !tbaa !5
  %cmp532 = icmp sgt i32 %368, %373
  br i1 %cmp532, label %land.lhs.true534, label %if.end1318

land.lhs.true534:                                 ; preds = %land.lhs.true526
  %374 = load i32, ptr %x, align 4, !tbaa !5
  %375 = load ptr, ptr %r.addr, align 8, !tbaa !23
  %376 = load i32, ptr %i, align 4, !tbaa !5
  %sub535 = sub nsw i32 %376, 1
  %377 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul536 = mul nsw i32 %sub535, %377
  %378 = load i32, ptr %j, align 4, !tbaa !5
  %add537 = add nsw i32 %mul536, %378
  %add538 = add nsw i32 %add537, 1
  %idxprom539 = sext i32 %add538 to i64
  %arrayidx540 = getelementptr inbounds i32, ptr %375, i64 %idxprom539
  %379 = load i32, ptr %arrayidx540, align 4, !tbaa !5
  %cmp541 = icmp sgt i32 %374, %379
  br i1 %cmp541, label %land.lhs.true543, label %if.end1318

land.lhs.true543:                                 ; preds = %land.lhs.true534
  %380 = load i32, ptr %x, align 4, !tbaa !5
  %381 = load ptr, ptr %r.addr, align 8, !tbaa !23
  %382 = load i32, ptr %i, align 4, !tbaa !5
  %sub544 = sub nsw i32 %382, 1
  %383 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul545 = mul nsw i32 %sub544, %383
  %384 = load i32, ptr %j, align 4, !tbaa !5
  %add546 = add nsw i32 %mul545, %384
  %add547 = add nsw i32 %add546, 2
  %idxprom548 = sext i32 %add547 to i64
  %arrayidx549 = getelementptr inbounds i32, ptr %381, i64 %idxprom548
  %385 = load i32, ptr %arrayidx549, align 4, !tbaa !5
  %cmp550 = icmp sgt i32 %380, %385
  br i1 %cmp550, label %land.lhs.true552, label %if.end1318

land.lhs.true552:                                 ; preds = %land.lhs.true543
  %386 = load i32, ptr %x, align 4, !tbaa !5
  %387 = load ptr, ptr %r.addr, align 8, !tbaa !23
  %388 = load i32, ptr %i, align 4, !tbaa !5
  %sub553 = sub nsw i32 %388, 1
  %389 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul554 = mul nsw i32 %sub553, %389
  %390 = load i32, ptr %j, align 4, !tbaa !5
  %add555 = add nsw i32 %mul554, %390
  %add556 = add nsw i32 %add555, 3
  %idxprom557 = sext i32 %add556 to i64
  %arrayidx558 = getelementptr inbounds i32, ptr %387, i64 %idxprom557
  %391 = load i32, ptr %arrayidx558, align 4, !tbaa !5
  %cmp559 = icmp sgt i32 %386, %391
  br i1 %cmp559, label %land.lhs.true561, label %if.end1318

land.lhs.true561:                                 ; preds = %land.lhs.true552
  %392 = load i32, ptr %x, align 4, !tbaa !5
  %393 = load ptr, ptr %r.addr, align 8, !tbaa !23
  %394 = load i32, ptr %i, align 4, !tbaa !5
  %395 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul562 = mul nsw i32 %394, %395
  %396 = load i32, ptr %j, align 4, !tbaa !5
  %add563 = add nsw i32 %mul562, %396
  %sub564 = sub nsw i32 %add563, 3
  %idxprom565 = sext i32 %sub564 to i64
  %arrayidx566 = getelementptr inbounds i32, ptr %393, i64 %idxprom565
  %397 = load i32, ptr %arrayidx566, align 4, !tbaa !5
  %cmp567 = icmp sgt i32 %392, %397
  br i1 %cmp567, label %land.lhs.true569, label %if.end1318

land.lhs.true569:                                 ; preds = %land.lhs.true561
  %398 = load i32, ptr %x, align 4, !tbaa !5
  %399 = load ptr, ptr %r.addr, align 8, !tbaa !23
  %400 = load i32, ptr %i, align 4, !tbaa !5
  %401 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul570 = mul nsw i32 %400, %401
  %402 = load i32, ptr %j, align 4, !tbaa !5
  %add571 = add nsw i32 %mul570, %402
  %sub572 = sub nsw i32 %add571, 2
  %idxprom573 = sext i32 %sub572 to i64
  %arrayidx574 = getelementptr inbounds i32, ptr %399, i64 %idxprom573
  %403 = load i32, ptr %arrayidx574, align 4, !tbaa !5
  %cmp575 = icmp sgt i32 %398, %403
  br i1 %cmp575, label %land.lhs.true577, label %if.end1318

land.lhs.true577:                                 ; preds = %land.lhs.true569
  %404 = load i32, ptr %x, align 4, !tbaa !5
  %405 = load ptr, ptr %r.addr, align 8, !tbaa !23
  %406 = load i32, ptr %i, align 4, !tbaa !5
  %407 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul578 = mul nsw i32 %406, %407
  %408 = load i32, ptr %j, align 4, !tbaa !5
  %add579 = add nsw i32 %mul578, %408
  %sub580 = sub nsw i32 %add579, 1
  %idxprom581 = sext i32 %sub580 to i64
  %arrayidx582 = getelementptr inbounds i32, ptr %405, i64 %idxprom581
  %409 = load i32, ptr %arrayidx582, align 4, !tbaa !5
  %cmp583 = icmp sgt i32 %404, %409
  br i1 %cmp583, label %land.lhs.true585, label %if.end1318

land.lhs.true585:                                 ; preds = %land.lhs.true577
  %410 = load i32, ptr %x, align 4, !tbaa !5
  %411 = load ptr, ptr %r.addr, align 8, !tbaa !23
  %412 = load i32, ptr %i, align 4, !tbaa !5
  %413 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul586 = mul nsw i32 %412, %413
  %414 = load i32, ptr %j, align 4, !tbaa !5
  %add587 = add nsw i32 %mul586, %414
  %add588 = add nsw i32 %add587, 1
  %idxprom589 = sext i32 %add588 to i64
  %arrayidx590 = getelementptr inbounds i32, ptr %411, i64 %idxprom589
  %415 = load i32, ptr %arrayidx590, align 4, !tbaa !5
  %cmp591 = icmp sge i32 %410, %415
  br i1 %cmp591, label %land.lhs.true593, label %if.end1318

land.lhs.true593:                                 ; preds = %land.lhs.true585
  %416 = load i32, ptr %x, align 4, !tbaa !5
  %417 = load ptr, ptr %r.addr, align 8, !tbaa !23
  %418 = load i32, ptr %i, align 4, !tbaa !5
  %419 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul594 = mul nsw i32 %418, %419
  %420 = load i32, ptr %j, align 4, !tbaa !5
  %add595 = add nsw i32 %mul594, %420
  %add596 = add nsw i32 %add595, 2
  %idxprom597 = sext i32 %add596 to i64
  %arrayidx598 = getelementptr inbounds i32, ptr %417, i64 %idxprom597
  %421 = load i32, ptr %arrayidx598, align 4, !tbaa !5
  %cmp599 = icmp sge i32 %416, %421
  br i1 %cmp599, label %land.lhs.true601, label %if.end1318

land.lhs.true601:                                 ; preds = %land.lhs.true593
  %422 = load i32, ptr %x, align 4, !tbaa !5
  %423 = load ptr, ptr %r.addr, align 8, !tbaa !23
  %424 = load i32, ptr %i, align 4, !tbaa !5
  %425 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul602 = mul nsw i32 %424, %425
  %426 = load i32, ptr %j, align 4, !tbaa !5
  %add603 = add nsw i32 %mul602, %426
  %add604 = add nsw i32 %add603, 3
  %idxprom605 = sext i32 %add604 to i64
  %arrayidx606 = getelementptr inbounds i32, ptr %423, i64 %idxprom605
  %427 = load i32, ptr %arrayidx606, align 4, !tbaa !5
  %cmp607 = icmp sge i32 %422, %427
  br i1 %cmp607, label %land.lhs.true609, label %if.end1318

land.lhs.true609:                                 ; preds = %land.lhs.true601
  %428 = load i32, ptr %x, align 4, !tbaa !5
  %429 = load ptr, ptr %r.addr, align 8, !tbaa !23
  %430 = load i32, ptr %i, align 4, !tbaa !5
  %add610 = add nsw i32 %430, 1
  %431 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul611 = mul nsw i32 %add610, %431
  %432 = load i32, ptr %j, align 4, !tbaa !5
  %add612 = add nsw i32 %mul611, %432
  %sub613 = sub nsw i32 %add612, 3
  %idxprom614 = sext i32 %sub613 to i64
  %arrayidx615 = getelementptr inbounds i32, ptr %429, i64 %idxprom614
  %433 = load i32, ptr %arrayidx615, align 4, !tbaa !5
  %cmp616 = icmp sge i32 %428, %433
  br i1 %cmp616, label %land.lhs.true618, label %if.end1318

land.lhs.true618:                                 ; preds = %land.lhs.true609
  %434 = load i32, ptr %x, align 4, !tbaa !5
  %435 = load ptr, ptr %r.addr, align 8, !tbaa !23
  %436 = load i32, ptr %i, align 4, !tbaa !5
  %add619 = add nsw i32 %436, 1
  %437 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul620 = mul nsw i32 %add619, %437
  %438 = load i32, ptr %j, align 4, !tbaa !5
  %add621 = add nsw i32 %mul620, %438
  %sub622 = sub nsw i32 %add621, 2
  %idxprom623 = sext i32 %sub622 to i64
  %arrayidx624 = getelementptr inbounds i32, ptr %435, i64 %idxprom623
  %439 = load i32, ptr %arrayidx624, align 4, !tbaa !5
  %cmp625 = icmp sge i32 %434, %439
  br i1 %cmp625, label %land.lhs.true627, label %if.end1318

land.lhs.true627:                                 ; preds = %land.lhs.true618
  %440 = load i32, ptr %x, align 4, !tbaa !5
  %441 = load ptr, ptr %r.addr, align 8, !tbaa !23
  %442 = load i32, ptr %i, align 4, !tbaa !5
  %add628 = add nsw i32 %442, 1
  %443 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul629 = mul nsw i32 %add628, %443
  %444 = load i32, ptr %j, align 4, !tbaa !5
  %add630 = add nsw i32 %mul629, %444
  %sub631 = sub nsw i32 %add630, 1
  %idxprom632 = sext i32 %sub631 to i64
  %arrayidx633 = getelementptr inbounds i32, ptr %441, i64 %idxprom632
  %445 = load i32, ptr %arrayidx633, align 4, !tbaa !5
  %cmp634 = icmp sge i32 %440, %445
  br i1 %cmp634, label %land.lhs.true636, label %if.end1318

land.lhs.true636:                                 ; preds = %land.lhs.true627
  %446 = load i32, ptr %x, align 4, !tbaa !5
  %447 = load ptr, ptr %r.addr, align 8, !tbaa !23
  %448 = load i32, ptr %i, align 4, !tbaa !5
  %add637 = add nsw i32 %448, 1
  %449 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul638 = mul nsw i32 %add637, %449
  %450 = load i32, ptr %j, align 4, !tbaa !5
  %add639 = add nsw i32 %mul638, %450
  %idxprom640 = sext i32 %add639 to i64
  %arrayidx641 = getelementptr inbounds i32, ptr %447, i64 %idxprom640
  %451 = load i32, ptr %arrayidx641, align 4, !tbaa !5
  %cmp642 = icmp sge i32 %446, %451
  br i1 %cmp642, label %land.lhs.true644, label %if.end1318

land.lhs.true644:                                 ; preds = %land.lhs.true636
  %452 = load i32, ptr %x, align 4, !tbaa !5
  %453 = load ptr, ptr %r.addr, align 8, !tbaa !23
  %454 = load i32, ptr %i, align 4, !tbaa !5
  %add645 = add nsw i32 %454, 1
  %455 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul646 = mul nsw i32 %add645, %455
  %456 = load i32, ptr %j, align 4, !tbaa !5
  %add647 = add nsw i32 %mul646, %456
  %add648 = add nsw i32 %add647, 1
  %idxprom649 = sext i32 %add648 to i64
  %arrayidx650 = getelementptr inbounds i32, ptr %453, i64 %idxprom649
  %457 = load i32, ptr %arrayidx650, align 4, !tbaa !5
  %cmp651 = icmp sge i32 %452, %457
  br i1 %cmp651, label %land.lhs.true653, label %if.end1318

land.lhs.true653:                                 ; preds = %land.lhs.true644
  %458 = load i32, ptr %x, align 4, !tbaa !5
  %459 = load ptr, ptr %r.addr, align 8, !tbaa !23
  %460 = load i32, ptr %i, align 4, !tbaa !5
  %add654 = add nsw i32 %460, 1
  %461 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul655 = mul nsw i32 %add654, %461
  %462 = load i32, ptr %j, align 4, !tbaa !5
  %add656 = add nsw i32 %mul655, %462
  %add657 = add nsw i32 %add656, 2
  %idxprom658 = sext i32 %add657 to i64
  %arrayidx659 = getelementptr inbounds i32, ptr %459, i64 %idxprom658
  %463 = load i32, ptr %arrayidx659, align 4, !tbaa !5
  %cmp660 = icmp sge i32 %458, %463
  br i1 %cmp660, label %land.lhs.true662, label %if.end1318

land.lhs.true662:                                 ; preds = %land.lhs.true653
  %464 = load i32, ptr %x, align 4, !tbaa !5
  %465 = load ptr, ptr %r.addr, align 8, !tbaa !23
  %466 = load i32, ptr %i, align 4, !tbaa !5
  %add663 = add nsw i32 %466, 1
  %467 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul664 = mul nsw i32 %add663, %467
  %468 = load i32, ptr %j, align 4, !tbaa !5
  %add665 = add nsw i32 %mul664, %468
  %add666 = add nsw i32 %add665, 3
  %idxprom667 = sext i32 %add666 to i64
  %arrayidx668 = getelementptr inbounds i32, ptr %465, i64 %idxprom667
  %469 = load i32, ptr %arrayidx668, align 4, !tbaa !5
  %cmp669 = icmp sge i32 %464, %469
  br i1 %cmp669, label %land.lhs.true671, label %if.end1318

land.lhs.true671:                                 ; preds = %land.lhs.true662
  %470 = load i32, ptr %x, align 4, !tbaa !5
  %471 = load ptr, ptr %r.addr, align 8, !tbaa !23
  %472 = load i32, ptr %i, align 4, !tbaa !5
  %add672 = add nsw i32 %472, 2
  %473 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul673 = mul nsw i32 %add672, %473
  %474 = load i32, ptr %j, align 4, !tbaa !5
  %add674 = add nsw i32 %mul673, %474
  %sub675 = sub nsw i32 %add674, 3
  %idxprom676 = sext i32 %sub675 to i64
  %arrayidx677 = getelementptr inbounds i32, ptr %471, i64 %idxprom676
  %475 = load i32, ptr %arrayidx677, align 4, !tbaa !5
  %cmp678 = icmp sge i32 %470, %475
  br i1 %cmp678, label %land.lhs.true680, label %if.end1318

land.lhs.true680:                                 ; preds = %land.lhs.true671
  %476 = load i32, ptr %x, align 4, !tbaa !5
  %477 = load ptr, ptr %r.addr, align 8, !tbaa !23
  %478 = load i32, ptr %i, align 4, !tbaa !5
  %add681 = add nsw i32 %478, 2
  %479 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul682 = mul nsw i32 %add681, %479
  %480 = load i32, ptr %j, align 4, !tbaa !5
  %add683 = add nsw i32 %mul682, %480
  %sub684 = sub nsw i32 %add683, 2
  %idxprom685 = sext i32 %sub684 to i64
  %arrayidx686 = getelementptr inbounds i32, ptr %477, i64 %idxprom685
  %481 = load i32, ptr %arrayidx686, align 4, !tbaa !5
  %cmp687 = icmp sge i32 %476, %481
  br i1 %cmp687, label %land.lhs.true689, label %if.end1318

land.lhs.true689:                                 ; preds = %land.lhs.true680
  %482 = load i32, ptr %x, align 4, !tbaa !5
  %483 = load ptr, ptr %r.addr, align 8, !tbaa !23
  %484 = load i32, ptr %i, align 4, !tbaa !5
  %add690 = add nsw i32 %484, 2
  %485 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul691 = mul nsw i32 %add690, %485
  %486 = load i32, ptr %j, align 4, !tbaa !5
  %add692 = add nsw i32 %mul691, %486
  %sub693 = sub nsw i32 %add692, 1
  %idxprom694 = sext i32 %sub693 to i64
  %arrayidx695 = getelementptr inbounds i32, ptr %483, i64 %idxprom694
  %487 = load i32, ptr %arrayidx695, align 4, !tbaa !5
  %cmp696 = icmp sge i32 %482, %487
  br i1 %cmp696, label %land.lhs.true698, label %if.end1318

land.lhs.true698:                                 ; preds = %land.lhs.true689
  %488 = load i32, ptr %x, align 4, !tbaa !5
  %489 = load ptr, ptr %r.addr, align 8, !tbaa !23
  %490 = load i32, ptr %i, align 4, !tbaa !5
  %add699 = add nsw i32 %490, 2
  %491 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul700 = mul nsw i32 %add699, %491
  %492 = load i32, ptr %j, align 4, !tbaa !5
  %add701 = add nsw i32 %mul700, %492
  %idxprom702 = sext i32 %add701 to i64
  %arrayidx703 = getelementptr inbounds i32, ptr %489, i64 %idxprom702
  %493 = load i32, ptr %arrayidx703, align 4, !tbaa !5
  %cmp704 = icmp sge i32 %488, %493
  br i1 %cmp704, label %land.lhs.true706, label %if.end1318

land.lhs.true706:                                 ; preds = %land.lhs.true698
  %494 = load i32, ptr %x, align 4, !tbaa !5
  %495 = load ptr, ptr %r.addr, align 8, !tbaa !23
  %496 = load i32, ptr %i, align 4, !tbaa !5
  %add707 = add nsw i32 %496, 2
  %497 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul708 = mul nsw i32 %add707, %497
  %498 = load i32, ptr %j, align 4, !tbaa !5
  %add709 = add nsw i32 %mul708, %498
  %add710 = add nsw i32 %add709, 1
  %idxprom711 = sext i32 %add710 to i64
  %arrayidx712 = getelementptr inbounds i32, ptr %495, i64 %idxprom711
  %499 = load i32, ptr %arrayidx712, align 4, !tbaa !5
  %cmp713 = icmp sge i32 %494, %499
  br i1 %cmp713, label %land.lhs.true715, label %if.end1318

land.lhs.true715:                                 ; preds = %land.lhs.true706
  %500 = load i32, ptr %x, align 4, !tbaa !5
  %501 = load ptr, ptr %r.addr, align 8, !tbaa !23
  %502 = load i32, ptr %i, align 4, !tbaa !5
  %add716 = add nsw i32 %502, 2
  %503 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul717 = mul nsw i32 %add716, %503
  %504 = load i32, ptr %j, align 4, !tbaa !5
  %add718 = add nsw i32 %mul717, %504
  %add719 = add nsw i32 %add718, 2
  %idxprom720 = sext i32 %add719 to i64
  %arrayidx721 = getelementptr inbounds i32, ptr %501, i64 %idxprom720
  %505 = load i32, ptr %arrayidx721, align 4, !tbaa !5
  %cmp722 = icmp sge i32 %500, %505
  br i1 %cmp722, label %land.lhs.true724, label %if.end1318

land.lhs.true724:                                 ; preds = %land.lhs.true715
  %506 = load i32, ptr %x, align 4, !tbaa !5
  %507 = load ptr, ptr %r.addr, align 8, !tbaa !23
  %508 = load i32, ptr %i, align 4, !tbaa !5
  %add725 = add nsw i32 %508, 2
  %509 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul726 = mul nsw i32 %add725, %509
  %510 = load i32, ptr %j, align 4, !tbaa !5
  %add727 = add nsw i32 %mul726, %510
  %add728 = add nsw i32 %add727, 3
  %idxprom729 = sext i32 %add728 to i64
  %arrayidx730 = getelementptr inbounds i32, ptr %507, i64 %idxprom729
  %511 = load i32, ptr %arrayidx730, align 4, !tbaa !5
  %cmp731 = icmp sge i32 %506, %511
  br i1 %cmp731, label %land.lhs.true733, label %if.end1318

land.lhs.true733:                                 ; preds = %land.lhs.true724
  %512 = load i32, ptr %x, align 4, !tbaa !5
  %513 = load ptr, ptr %r.addr, align 8, !tbaa !23
  %514 = load i32, ptr %i, align 4, !tbaa !5
  %add734 = add nsw i32 %514, 3
  %515 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul735 = mul nsw i32 %add734, %515
  %516 = load i32, ptr %j, align 4, !tbaa !5
  %add736 = add nsw i32 %mul735, %516
  %sub737 = sub nsw i32 %add736, 3
  %idxprom738 = sext i32 %sub737 to i64
  %arrayidx739 = getelementptr inbounds i32, ptr %513, i64 %idxprom738
  %517 = load i32, ptr %arrayidx739, align 4, !tbaa !5
  %cmp740 = icmp sge i32 %512, %517
  br i1 %cmp740, label %land.lhs.true742, label %if.end1318

land.lhs.true742:                                 ; preds = %land.lhs.true733
  %518 = load i32, ptr %x, align 4, !tbaa !5
  %519 = load ptr, ptr %r.addr, align 8, !tbaa !23
  %520 = load i32, ptr %i, align 4, !tbaa !5
  %add743 = add nsw i32 %520, 3
  %521 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul744 = mul nsw i32 %add743, %521
  %522 = load i32, ptr %j, align 4, !tbaa !5
  %add745 = add nsw i32 %mul744, %522
  %sub746 = sub nsw i32 %add745, 2
  %idxprom747 = sext i32 %sub746 to i64
  %arrayidx748 = getelementptr inbounds i32, ptr %519, i64 %idxprom747
  %523 = load i32, ptr %arrayidx748, align 4, !tbaa !5
  %cmp749 = icmp sge i32 %518, %523
  br i1 %cmp749, label %land.lhs.true751, label %if.end1318

land.lhs.true751:                                 ; preds = %land.lhs.true742
  %524 = load i32, ptr %x, align 4, !tbaa !5
  %525 = load ptr, ptr %r.addr, align 8, !tbaa !23
  %526 = load i32, ptr %i, align 4, !tbaa !5
  %add752 = add nsw i32 %526, 3
  %527 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul753 = mul nsw i32 %add752, %527
  %528 = load i32, ptr %j, align 4, !tbaa !5
  %add754 = add nsw i32 %mul753, %528
  %sub755 = sub nsw i32 %add754, 1
  %idxprom756 = sext i32 %sub755 to i64
  %arrayidx757 = getelementptr inbounds i32, ptr %525, i64 %idxprom756
  %529 = load i32, ptr %arrayidx757, align 4, !tbaa !5
  %cmp758 = icmp sge i32 %524, %529
  br i1 %cmp758, label %land.lhs.true760, label %if.end1318

land.lhs.true760:                                 ; preds = %land.lhs.true751
  %530 = load i32, ptr %x, align 4, !tbaa !5
  %531 = load ptr, ptr %r.addr, align 8, !tbaa !23
  %532 = load i32, ptr %i, align 4, !tbaa !5
  %add761 = add nsw i32 %532, 3
  %533 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul762 = mul nsw i32 %add761, %533
  %534 = load i32, ptr %j, align 4, !tbaa !5
  %add763 = add nsw i32 %mul762, %534
  %idxprom764 = sext i32 %add763 to i64
  %arrayidx765 = getelementptr inbounds i32, ptr %531, i64 %idxprom764
  %535 = load i32, ptr %arrayidx765, align 4, !tbaa !5
  %cmp766 = icmp sge i32 %530, %535
  br i1 %cmp766, label %land.lhs.true768, label %if.end1318

land.lhs.true768:                                 ; preds = %land.lhs.true760
  %536 = load i32, ptr %x, align 4, !tbaa !5
  %537 = load ptr, ptr %r.addr, align 8, !tbaa !23
  %538 = load i32, ptr %i, align 4, !tbaa !5
  %add769 = add nsw i32 %538, 3
  %539 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul770 = mul nsw i32 %add769, %539
  %540 = load i32, ptr %j, align 4, !tbaa !5
  %add771 = add nsw i32 %mul770, %540
  %add772 = add nsw i32 %add771, 1
  %idxprom773 = sext i32 %add772 to i64
  %arrayidx774 = getelementptr inbounds i32, ptr %537, i64 %idxprom773
  %541 = load i32, ptr %arrayidx774, align 4, !tbaa !5
  %cmp775 = icmp sge i32 %536, %541
  br i1 %cmp775, label %land.lhs.true777, label %if.end1318

land.lhs.true777:                                 ; preds = %land.lhs.true768
  %542 = load i32, ptr %x, align 4, !tbaa !5
  %543 = load ptr, ptr %r.addr, align 8, !tbaa !23
  %544 = load i32, ptr %i, align 4, !tbaa !5
  %add778 = add nsw i32 %544, 3
  %545 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul779 = mul nsw i32 %add778, %545
  %546 = load i32, ptr %j, align 4, !tbaa !5
  %add780 = add nsw i32 %mul779, %546
  %add781 = add nsw i32 %add780, 2
  %idxprom782 = sext i32 %add781 to i64
  %arrayidx783 = getelementptr inbounds i32, ptr %543, i64 %idxprom782
  %547 = load i32, ptr %arrayidx783, align 4, !tbaa !5
  %cmp784 = icmp sge i32 %542, %547
  br i1 %cmp784, label %land.lhs.true786, label %if.end1318

land.lhs.true786:                                 ; preds = %land.lhs.true777
  %548 = load i32, ptr %x, align 4, !tbaa !5
  %549 = load ptr, ptr %r.addr, align 8, !tbaa !23
  %550 = load i32, ptr %i, align 4, !tbaa !5
  %add787 = add nsw i32 %550, 3
  %551 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul788 = mul nsw i32 %add787, %551
  %552 = load i32, ptr %j, align 4, !tbaa !5
  %add789 = add nsw i32 %mul788, %552
  %add790 = add nsw i32 %add789, 3
  %idxprom791 = sext i32 %add790 to i64
  %arrayidx792 = getelementptr inbounds i32, ptr %549, i64 %idxprom791
  %553 = load i32, ptr %arrayidx792, align 4, !tbaa !5
  %cmp793 = icmp sge i32 %548, %553
  br i1 %cmp793, label %if.then795, label %if.end1318

if.then795:                                       ; preds = %land.lhs.true786
  %554 = load ptr, ptr %corner_list.addr, align 8, !tbaa !65
  %555 = load i32, ptr %n, align 4, !tbaa !5
  %idxprom796 = sext i32 %555 to i64
  %arrayidx797 = getelementptr inbounds %struct.anon, ptr %554, i64 %idxprom796
  %info = getelementptr inbounds nuw %struct.anon, ptr %arrayidx797, i32 0, i32 2
  store i32 0, ptr %info, align 4, !tbaa !66
  %556 = load i32, ptr %j, align 4, !tbaa !5
  %557 = load ptr, ptr %corner_list.addr, align 8, !tbaa !65
  %558 = load i32, ptr %n, align 4, !tbaa !5
  %idxprom798 = sext i32 %558 to i64
  %arrayidx799 = getelementptr inbounds %struct.anon, ptr %557, i64 %idxprom798
  %x800 = getelementptr inbounds nuw %struct.anon, ptr %arrayidx799, i32 0, i32 0
  store i32 %556, ptr %x800, align 4, !tbaa !69
  %559 = load i32, ptr %i, align 4, !tbaa !5
  %560 = load ptr, ptr %corner_list.addr, align 8, !tbaa !65
  %561 = load i32, ptr %n, align 4, !tbaa !5
  %idxprom801 = sext i32 %561 to i64
  %arrayidx802 = getelementptr inbounds %struct.anon, ptr %560, i64 %idxprom801
  %y803 = getelementptr inbounds nuw %struct.anon, ptr %arrayidx802, i32 0, i32 1
  store i32 %559, ptr %y803, align 4, !tbaa !68
  %562 = load ptr, ptr %in.addr, align 8, !tbaa !21
  %563 = load i32, ptr %i, align 4, !tbaa !5
  %sub804 = sub nsw i32 %563, 2
  %564 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul805 = mul nsw i32 %sub804, %564
  %565 = load i32, ptr %j, align 4, !tbaa !5
  %add806 = add nsw i32 %mul805, %565
  %sub807 = sub nsw i32 %add806, 2
  %idxprom808 = sext i32 %sub807 to i64
  %arrayidx809 = getelementptr inbounds i8, ptr %562, i64 %idxprom808
  %566 = load i8, ptr %arrayidx809, align 1, !tbaa !25
  %conv810 = zext i8 %566 to i32
  %567 = load ptr, ptr %in.addr, align 8, !tbaa !21
  %568 = load i32, ptr %i, align 4, !tbaa !5
  %sub811 = sub nsw i32 %568, 2
  %569 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul812 = mul nsw i32 %sub811, %569
  %570 = load i32, ptr %j, align 4, !tbaa !5
  %add813 = add nsw i32 %mul812, %570
  %sub814 = sub nsw i32 %add813, 1
  %idxprom815 = sext i32 %sub814 to i64
  %arrayidx816 = getelementptr inbounds i8, ptr %567, i64 %idxprom815
  %571 = load i8, ptr %arrayidx816, align 1, !tbaa !25
  %conv817 = zext i8 %571 to i32
  %add818 = add nsw i32 %conv810, %conv817
  %572 = load ptr, ptr %in.addr, align 8, !tbaa !21
  %573 = load i32, ptr %i, align 4, !tbaa !5
  %sub819 = sub nsw i32 %573, 2
  %574 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul820 = mul nsw i32 %sub819, %574
  %575 = load i32, ptr %j, align 4, !tbaa !5
  %add821 = add nsw i32 %mul820, %575
  %idxprom822 = sext i32 %add821 to i64
  %arrayidx823 = getelementptr inbounds i8, ptr %572, i64 %idxprom822
  %576 = load i8, ptr %arrayidx823, align 1, !tbaa !25
  %conv824 = zext i8 %576 to i32
  %add825 = add nsw i32 %add818, %conv824
  %577 = load ptr, ptr %in.addr, align 8, !tbaa !21
  %578 = load i32, ptr %i, align 4, !tbaa !5
  %sub826 = sub nsw i32 %578, 2
  %579 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul827 = mul nsw i32 %sub826, %579
  %580 = load i32, ptr %j, align 4, !tbaa !5
  %add828 = add nsw i32 %mul827, %580
  %add829 = add nsw i32 %add828, 1
  %idxprom830 = sext i32 %add829 to i64
  %arrayidx831 = getelementptr inbounds i8, ptr %577, i64 %idxprom830
  %581 = load i8, ptr %arrayidx831, align 1, !tbaa !25
  %conv832 = zext i8 %581 to i32
  %add833 = add nsw i32 %add825, %conv832
  %582 = load ptr, ptr %in.addr, align 8, !tbaa !21
  %583 = load i32, ptr %i, align 4, !tbaa !5
  %sub834 = sub nsw i32 %583, 2
  %584 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul835 = mul nsw i32 %sub834, %584
  %585 = load i32, ptr %j, align 4, !tbaa !5
  %add836 = add nsw i32 %mul835, %585
  %add837 = add nsw i32 %add836, 2
  %idxprom838 = sext i32 %add837 to i64
  %arrayidx839 = getelementptr inbounds i8, ptr %582, i64 %idxprom838
  %586 = load i8, ptr %arrayidx839, align 1, !tbaa !25
  %conv840 = zext i8 %586 to i32
  %add841 = add nsw i32 %add833, %conv840
  %587 = load ptr, ptr %in.addr, align 8, !tbaa !21
  %588 = load i32, ptr %i, align 4, !tbaa !5
  %sub842 = sub nsw i32 %588, 1
  %589 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul843 = mul nsw i32 %sub842, %589
  %590 = load i32, ptr %j, align 4, !tbaa !5
  %add844 = add nsw i32 %mul843, %590
  %sub845 = sub nsw i32 %add844, 2
  %idxprom846 = sext i32 %sub845 to i64
  %arrayidx847 = getelementptr inbounds i8, ptr %587, i64 %idxprom846
  %591 = load i8, ptr %arrayidx847, align 1, !tbaa !25
  %conv848 = zext i8 %591 to i32
  %add849 = add nsw i32 %add841, %conv848
  %592 = load ptr, ptr %in.addr, align 8, !tbaa !21
  %593 = load i32, ptr %i, align 4, !tbaa !5
  %sub850 = sub nsw i32 %593, 1
  %594 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul851 = mul nsw i32 %sub850, %594
  %595 = load i32, ptr %j, align 4, !tbaa !5
  %add852 = add nsw i32 %mul851, %595
  %sub853 = sub nsw i32 %add852, 1
  %idxprom854 = sext i32 %sub853 to i64
  %arrayidx855 = getelementptr inbounds i8, ptr %592, i64 %idxprom854
  %596 = load i8, ptr %arrayidx855, align 1, !tbaa !25
  %conv856 = zext i8 %596 to i32
  %add857 = add nsw i32 %add849, %conv856
  %597 = load ptr, ptr %in.addr, align 8, !tbaa !21
  %598 = load i32, ptr %i, align 4, !tbaa !5
  %sub858 = sub nsw i32 %598, 1
  %599 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul859 = mul nsw i32 %sub858, %599
  %600 = load i32, ptr %j, align 4, !tbaa !5
  %add860 = add nsw i32 %mul859, %600
  %idxprom861 = sext i32 %add860 to i64
  %arrayidx862 = getelementptr inbounds i8, ptr %597, i64 %idxprom861
  %601 = load i8, ptr %arrayidx862, align 1, !tbaa !25
  %conv863 = zext i8 %601 to i32
  %add864 = add nsw i32 %add857, %conv863
  %602 = load ptr, ptr %in.addr, align 8, !tbaa !21
  %603 = load i32, ptr %i, align 4, !tbaa !5
  %sub865 = sub nsw i32 %603, 1
  %604 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul866 = mul nsw i32 %sub865, %604
  %605 = load i32, ptr %j, align 4, !tbaa !5
  %add867 = add nsw i32 %mul866, %605
  %add868 = add nsw i32 %add867, 1
  %idxprom869 = sext i32 %add868 to i64
  %arrayidx870 = getelementptr inbounds i8, ptr %602, i64 %idxprom869
  %606 = load i8, ptr %arrayidx870, align 1, !tbaa !25
  %conv871 = zext i8 %606 to i32
  %add872 = add nsw i32 %add864, %conv871
  %607 = load ptr, ptr %in.addr, align 8, !tbaa !21
  %608 = load i32, ptr %i, align 4, !tbaa !5
  %sub873 = sub nsw i32 %608, 1
  %609 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul874 = mul nsw i32 %sub873, %609
  %610 = load i32, ptr %j, align 4, !tbaa !5
  %add875 = add nsw i32 %mul874, %610
  %add876 = add nsw i32 %add875, 2
  %idxprom877 = sext i32 %add876 to i64
  %arrayidx878 = getelementptr inbounds i8, ptr %607, i64 %idxprom877
  %611 = load i8, ptr %arrayidx878, align 1, !tbaa !25
  %conv879 = zext i8 %611 to i32
  %add880 = add nsw i32 %add872, %conv879
  %612 = load ptr, ptr %in.addr, align 8, !tbaa !21
  %613 = load i32, ptr %i, align 4, !tbaa !5
  %614 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul881 = mul nsw i32 %613, %614
  %615 = load i32, ptr %j, align 4, !tbaa !5
  %add882 = add nsw i32 %mul881, %615
  %sub883 = sub nsw i32 %add882, 2
  %idxprom884 = sext i32 %sub883 to i64
  %arrayidx885 = getelementptr inbounds i8, ptr %612, i64 %idxprom884
  %616 = load i8, ptr %arrayidx885, align 1, !tbaa !25
  %conv886 = zext i8 %616 to i32
  %add887 = add nsw i32 %add880, %conv886
  %617 = load ptr, ptr %in.addr, align 8, !tbaa !21
  %618 = load i32, ptr %i, align 4, !tbaa !5
  %619 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul888 = mul nsw i32 %618, %619
  %620 = load i32, ptr %j, align 4, !tbaa !5
  %add889 = add nsw i32 %mul888, %620
  %sub890 = sub nsw i32 %add889, 1
  %idxprom891 = sext i32 %sub890 to i64
  %arrayidx892 = getelementptr inbounds i8, ptr %617, i64 %idxprom891
  %621 = load i8, ptr %arrayidx892, align 1, !tbaa !25
  %conv893 = zext i8 %621 to i32
  %add894 = add nsw i32 %add887, %conv893
  %622 = load ptr, ptr %in.addr, align 8, !tbaa !21
  %623 = load i32, ptr %i, align 4, !tbaa !5
  %624 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul895 = mul nsw i32 %623, %624
  %625 = load i32, ptr %j, align 4, !tbaa !5
  %add896 = add nsw i32 %mul895, %625
  %idxprom897 = sext i32 %add896 to i64
  %arrayidx898 = getelementptr inbounds i8, ptr %622, i64 %idxprom897
  %626 = load i8, ptr %arrayidx898, align 1, !tbaa !25
  %conv899 = zext i8 %626 to i32
  %add900 = add nsw i32 %add894, %conv899
  %627 = load ptr, ptr %in.addr, align 8, !tbaa !21
  %628 = load i32, ptr %i, align 4, !tbaa !5
  %629 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul901 = mul nsw i32 %628, %629
  %630 = load i32, ptr %j, align 4, !tbaa !5
  %add902 = add nsw i32 %mul901, %630
  %add903 = add nsw i32 %add902, 1
  %idxprom904 = sext i32 %add903 to i64
  %arrayidx905 = getelementptr inbounds i8, ptr %627, i64 %idxprom904
  %631 = load i8, ptr %arrayidx905, align 1, !tbaa !25
  %conv906 = zext i8 %631 to i32
  %add907 = add nsw i32 %add900, %conv906
  %632 = load ptr, ptr %in.addr, align 8, !tbaa !21
  %633 = load i32, ptr %i, align 4, !tbaa !5
  %634 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul908 = mul nsw i32 %633, %634
  %635 = load i32, ptr %j, align 4, !tbaa !5
  %add909 = add nsw i32 %mul908, %635
  %add910 = add nsw i32 %add909, 2
  %idxprom911 = sext i32 %add910 to i64
  %arrayidx912 = getelementptr inbounds i8, ptr %632, i64 %idxprom911
  %636 = load i8, ptr %arrayidx912, align 1, !tbaa !25
  %conv913 = zext i8 %636 to i32
  %add914 = add nsw i32 %add907, %conv913
  %637 = load ptr, ptr %in.addr, align 8, !tbaa !21
  %638 = load i32, ptr %i, align 4, !tbaa !5
  %add915 = add nsw i32 %638, 1
  %639 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul916 = mul nsw i32 %add915, %639
  %640 = load i32, ptr %j, align 4, !tbaa !5
  %add917 = add nsw i32 %mul916, %640
  %sub918 = sub nsw i32 %add917, 2
  %idxprom919 = sext i32 %sub918 to i64
  %arrayidx920 = getelementptr inbounds i8, ptr %637, i64 %idxprom919
  %641 = load i8, ptr %arrayidx920, align 1, !tbaa !25
  %conv921 = zext i8 %641 to i32
  %add922 = add nsw i32 %add914, %conv921
  %642 = load ptr, ptr %in.addr, align 8, !tbaa !21
  %643 = load i32, ptr %i, align 4, !tbaa !5
  %add923 = add nsw i32 %643, 1
  %644 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul924 = mul nsw i32 %add923, %644
  %645 = load i32, ptr %j, align 4, !tbaa !5
  %add925 = add nsw i32 %mul924, %645
  %sub926 = sub nsw i32 %add925, 1
  %idxprom927 = sext i32 %sub926 to i64
  %arrayidx928 = getelementptr inbounds i8, ptr %642, i64 %idxprom927
  %646 = load i8, ptr %arrayidx928, align 1, !tbaa !25
  %conv929 = zext i8 %646 to i32
  %add930 = add nsw i32 %add922, %conv929
  %647 = load ptr, ptr %in.addr, align 8, !tbaa !21
  %648 = load i32, ptr %i, align 4, !tbaa !5
  %add931 = add nsw i32 %648, 1
  %649 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul932 = mul nsw i32 %add931, %649
  %650 = load i32, ptr %j, align 4, !tbaa !5
  %add933 = add nsw i32 %mul932, %650
  %idxprom934 = sext i32 %add933 to i64
  %arrayidx935 = getelementptr inbounds i8, ptr %647, i64 %idxprom934
  %651 = load i8, ptr %arrayidx935, align 1, !tbaa !25
  %conv936 = zext i8 %651 to i32
  %add937 = add nsw i32 %add930, %conv936
  %652 = load ptr, ptr %in.addr, align 8, !tbaa !21
  %653 = load i32, ptr %i, align 4, !tbaa !5
  %add938 = add nsw i32 %653, 1
  %654 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul939 = mul nsw i32 %add938, %654
  %655 = load i32, ptr %j, align 4, !tbaa !5
  %add940 = add nsw i32 %mul939, %655
  %add941 = add nsw i32 %add940, 1
  %idxprom942 = sext i32 %add941 to i64
  %arrayidx943 = getelementptr inbounds i8, ptr %652, i64 %idxprom942
  %656 = load i8, ptr %arrayidx943, align 1, !tbaa !25
  %conv944 = zext i8 %656 to i32
  %add945 = add nsw i32 %add937, %conv944
  %657 = load ptr, ptr %in.addr, align 8, !tbaa !21
  %658 = load i32, ptr %i, align 4, !tbaa !5
  %add946 = add nsw i32 %658, 1
  %659 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul947 = mul nsw i32 %add946, %659
  %660 = load i32, ptr %j, align 4, !tbaa !5
  %add948 = add nsw i32 %mul947, %660
  %add949 = add nsw i32 %add948, 2
  %idxprom950 = sext i32 %add949 to i64
  %arrayidx951 = getelementptr inbounds i8, ptr %657, i64 %idxprom950
  %661 = load i8, ptr %arrayidx951, align 1, !tbaa !25
  %conv952 = zext i8 %661 to i32
  %add953 = add nsw i32 %add945, %conv952
  %662 = load ptr, ptr %in.addr, align 8, !tbaa !21
  %663 = load i32, ptr %i, align 4, !tbaa !5
  %add954 = add nsw i32 %663, 2
  %664 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul955 = mul nsw i32 %add954, %664
  %665 = load i32, ptr %j, align 4, !tbaa !5
  %add956 = add nsw i32 %mul955, %665
  %sub957 = sub nsw i32 %add956, 2
  %idxprom958 = sext i32 %sub957 to i64
  %arrayidx959 = getelementptr inbounds i8, ptr %662, i64 %idxprom958
  %666 = load i8, ptr %arrayidx959, align 1, !tbaa !25
  %conv960 = zext i8 %666 to i32
  %add961 = add nsw i32 %add953, %conv960
  %667 = load ptr, ptr %in.addr, align 8, !tbaa !21
  %668 = load i32, ptr %i, align 4, !tbaa !5
  %add962 = add nsw i32 %668, 2
  %669 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul963 = mul nsw i32 %add962, %669
  %670 = load i32, ptr %j, align 4, !tbaa !5
  %add964 = add nsw i32 %mul963, %670
  %sub965 = sub nsw i32 %add964, 1
  %idxprom966 = sext i32 %sub965 to i64
  %arrayidx967 = getelementptr inbounds i8, ptr %667, i64 %idxprom966
  %671 = load i8, ptr %arrayidx967, align 1, !tbaa !25
  %conv968 = zext i8 %671 to i32
  %add969 = add nsw i32 %add961, %conv968
  %672 = load ptr, ptr %in.addr, align 8, !tbaa !21
  %673 = load i32, ptr %i, align 4, !tbaa !5
  %add970 = add nsw i32 %673, 2
  %674 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul971 = mul nsw i32 %add970, %674
  %675 = load i32, ptr %j, align 4, !tbaa !5
  %add972 = add nsw i32 %mul971, %675
  %idxprom973 = sext i32 %add972 to i64
  %arrayidx974 = getelementptr inbounds i8, ptr %672, i64 %idxprom973
  %676 = load i8, ptr %arrayidx974, align 1, !tbaa !25
  %conv975 = zext i8 %676 to i32
  %add976 = add nsw i32 %add969, %conv975
  %677 = load ptr, ptr %in.addr, align 8, !tbaa !21
  %678 = load i32, ptr %i, align 4, !tbaa !5
  %add977 = add nsw i32 %678, 2
  %679 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul978 = mul nsw i32 %add977, %679
  %680 = load i32, ptr %j, align 4, !tbaa !5
  %add979 = add nsw i32 %mul978, %680
  %add980 = add nsw i32 %add979, 1
  %idxprom981 = sext i32 %add980 to i64
  %arrayidx982 = getelementptr inbounds i8, ptr %677, i64 %idxprom981
  %681 = load i8, ptr %arrayidx982, align 1, !tbaa !25
  %conv983 = zext i8 %681 to i32
  %add984 = add nsw i32 %add976, %conv983
  %682 = load ptr, ptr %in.addr, align 8, !tbaa !21
  %683 = load i32, ptr %i, align 4, !tbaa !5
  %add985 = add nsw i32 %683, 2
  %684 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul986 = mul nsw i32 %add985, %684
  %685 = load i32, ptr %j, align 4, !tbaa !5
  %add987 = add nsw i32 %mul986, %685
  %add988 = add nsw i32 %add987, 2
  %idxprom989 = sext i32 %add988 to i64
  %arrayidx990 = getelementptr inbounds i8, ptr %682, i64 %idxprom989
  %686 = load i8, ptr %arrayidx990, align 1, !tbaa !25
  %conv991 = zext i8 %686 to i32
  %add992 = add nsw i32 %add984, %conv991
  store i32 %add992, ptr %x, align 4, !tbaa !5
  %687 = load i32, ptr %x, align 4, !tbaa !5
  %div = sdiv i32 %687, 25
  %688 = load ptr, ptr %corner_list.addr, align 8, !tbaa !65
  %689 = load i32, ptr %n, align 4, !tbaa !5
  %idxprom993 = sext i32 %689 to i64
  %arrayidx994 = getelementptr inbounds %struct.anon, ptr %688, i64 %idxprom993
  %I = getelementptr inbounds nuw %struct.anon, ptr %arrayidx994, i32 0, i32 5
  store i32 %div, ptr %I, align 4, !tbaa !75
  %690 = load ptr, ptr %in.addr, align 8, !tbaa !21
  %691 = load i32, ptr %i, align 4, !tbaa !5
  %sub995 = sub nsw i32 %691, 2
  %692 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul996 = mul nsw i32 %sub995, %692
  %693 = load i32, ptr %j, align 4, !tbaa !5
  %add997 = add nsw i32 %mul996, %693
  %add998 = add nsw i32 %add997, 2
  %idxprom999 = sext i32 %add998 to i64
  %arrayidx1000 = getelementptr inbounds i8, ptr %690, i64 %idxprom999
  %694 = load i8, ptr %arrayidx1000, align 1, !tbaa !25
  %conv1001 = zext i8 %694 to i32
  %695 = load ptr, ptr %in.addr, align 8, !tbaa !21
  %696 = load i32, ptr %i, align 4, !tbaa !5
  %sub1002 = sub nsw i32 %696, 1
  %697 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul1003 = mul nsw i32 %sub1002, %697
  %698 = load i32, ptr %j, align 4, !tbaa !5
  %add1004 = add nsw i32 %mul1003, %698
  %add1005 = add nsw i32 %add1004, 2
  %idxprom1006 = sext i32 %add1005 to i64
  %arrayidx1007 = getelementptr inbounds i8, ptr %695, i64 %idxprom1006
  %699 = load i8, ptr %arrayidx1007, align 1, !tbaa !25
  %conv1008 = zext i8 %699 to i32
  %add1009 = add nsw i32 %conv1001, %conv1008
  %700 = load ptr, ptr %in.addr, align 8, !tbaa !21
  %701 = load i32, ptr %i, align 4, !tbaa !5
  %702 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul1010 = mul nsw i32 %701, %702
  %703 = load i32, ptr %j, align 4, !tbaa !5
  %add1011 = add nsw i32 %mul1010, %703
  %add1012 = add nsw i32 %add1011, 2
  %idxprom1013 = sext i32 %add1012 to i64
  %arrayidx1014 = getelementptr inbounds i8, ptr %700, i64 %idxprom1013
  %704 = load i8, ptr %arrayidx1014, align 1, !tbaa !25
  %conv1015 = zext i8 %704 to i32
  %add1016 = add nsw i32 %add1009, %conv1015
  %705 = load ptr, ptr %in.addr, align 8, !tbaa !21
  %706 = load i32, ptr %i, align 4, !tbaa !5
  %add1017 = add nsw i32 %706, 1
  %707 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul1018 = mul nsw i32 %add1017, %707
  %708 = load i32, ptr %j, align 4, !tbaa !5
  %add1019 = add nsw i32 %mul1018, %708
  %add1020 = add nsw i32 %add1019, 2
  %idxprom1021 = sext i32 %add1020 to i64
  %arrayidx1022 = getelementptr inbounds i8, ptr %705, i64 %idxprom1021
  %709 = load i8, ptr %arrayidx1022, align 1, !tbaa !25
  %conv1023 = zext i8 %709 to i32
  %add1024 = add nsw i32 %add1016, %conv1023
  %710 = load ptr, ptr %in.addr, align 8, !tbaa !21
  %711 = load i32, ptr %i, align 4, !tbaa !5
  %add1025 = add nsw i32 %711, 2
  %712 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul1026 = mul nsw i32 %add1025, %712
  %713 = load i32, ptr %j, align 4, !tbaa !5
  %add1027 = add nsw i32 %mul1026, %713
  %add1028 = add nsw i32 %add1027, 2
  %idxprom1029 = sext i32 %add1028 to i64
  %arrayidx1030 = getelementptr inbounds i8, ptr %710, i64 %idxprom1029
  %714 = load i8, ptr %arrayidx1030, align 1, !tbaa !25
  %conv1031 = zext i8 %714 to i32
  %add1032 = add nsw i32 %add1024, %conv1031
  %715 = load ptr, ptr %in.addr, align 8, !tbaa !21
  %716 = load i32, ptr %i, align 4, !tbaa !5
  %sub1033 = sub nsw i32 %716, 2
  %717 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul1034 = mul nsw i32 %sub1033, %717
  %718 = load i32, ptr %j, align 4, !tbaa !5
  %add1035 = add nsw i32 %mul1034, %718
  %sub1036 = sub nsw i32 %add1035, 2
  %idxprom1037 = sext i32 %sub1036 to i64
  %arrayidx1038 = getelementptr inbounds i8, ptr %715, i64 %idxprom1037
  %719 = load i8, ptr %arrayidx1038, align 1, !tbaa !25
  %conv1039 = zext i8 %719 to i32
  %720 = load ptr, ptr %in.addr, align 8, !tbaa !21
  %721 = load i32, ptr %i, align 4, !tbaa !5
  %sub1040 = sub nsw i32 %721, 1
  %722 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul1041 = mul nsw i32 %sub1040, %722
  %723 = load i32, ptr %j, align 4, !tbaa !5
  %add1042 = add nsw i32 %mul1041, %723
  %sub1043 = sub nsw i32 %add1042, 2
  %idxprom1044 = sext i32 %sub1043 to i64
  %arrayidx1045 = getelementptr inbounds i8, ptr %720, i64 %idxprom1044
  %724 = load i8, ptr %arrayidx1045, align 1, !tbaa !25
  %conv1046 = zext i8 %724 to i32
  %add1047 = add nsw i32 %conv1039, %conv1046
  %725 = load ptr, ptr %in.addr, align 8, !tbaa !21
  %726 = load i32, ptr %i, align 4, !tbaa !5
  %727 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul1048 = mul nsw i32 %726, %727
  %728 = load i32, ptr %j, align 4, !tbaa !5
  %add1049 = add nsw i32 %mul1048, %728
  %sub1050 = sub nsw i32 %add1049, 2
  %idxprom1051 = sext i32 %sub1050 to i64
  %arrayidx1052 = getelementptr inbounds i8, ptr %725, i64 %idxprom1051
  %729 = load i8, ptr %arrayidx1052, align 1, !tbaa !25
  %conv1053 = zext i8 %729 to i32
  %add1054 = add nsw i32 %add1047, %conv1053
  %730 = load ptr, ptr %in.addr, align 8, !tbaa !21
  %731 = load i32, ptr %i, align 4, !tbaa !5
  %add1055 = add nsw i32 %731, 1
  %732 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul1056 = mul nsw i32 %add1055, %732
  %733 = load i32, ptr %j, align 4, !tbaa !5
  %add1057 = add nsw i32 %mul1056, %733
  %sub1058 = sub nsw i32 %add1057, 2
  %idxprom1059 = sext i32 %sub1058 to i64
  %arrayidx1060 = getelementptr inbounds i8, ptr %730, i64 %idxprom1059
  %734 = load i8, ptr %arrayidx1060, align 1, !tbaa !25
  %conv1061 = zext i8 %734 to i32
  %add1062 = add nsw i32 %add1054, %conv1061
  %735 = load ptr, ptr %in.addr, align 8, !tbaa !21
  %736 = load i32, ptr %i, align 4, !tbaa !5
  %add1063 = add nsw i32 %736, 2
  %737 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul1064 = mul nsw i32 %add1063, %737
  %738 = load i32, ptr %j, align 4, !tbaa !5
  %add1065 = add nsw i32 %mul1064, %738
  %sub1066 = sub nsw i32 %add1065, 2
  %idxprom1067 = sext i32 %sub1066 to i64
  %arrayidx1068 = getelementptr inbounds i8, ptr %735, i64 %idxprom1067
  %739 = load i8, ptr %arrayidx1068, align 1, !tbaa !25
  %conv1069 = zext i8 %739 to i32
  %add1070 = add nsw i32 %add1062, %conv1069
  %sub1071 = sub nsw i32 %add1032, %add1070
  store i32 %sub1071, ptr %x, align 4, !tbaa !5
  %740 = load i32, ptr %x, align 4, !tbaa !5
  %741 = load ptr, ptr %in.addr, align 8, !tbaa !21
  %742 = load i32, ptr %i, align 4, !tbaa !5
  %sub1072 = sub nsw i32 %742, 2
  %743 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul1073 = mul nsw i32 %sub1072, %743
  %744 = load i32, ptr %j, align 4, !tbaa !5
  %add1074 = add nsw i32 %mul1073, %744
  %add1075 = add nsw i32 %add1074, 1
  %idxprom1076 = sext i32 %add1075 to i64
  %arrayidx1077 = getelementptr inbounds i8, ptr %741, i64 %idxprom1076
  %745 = load i8, ptr %arrayidx1077, align 1, !tbaa !25
  %conv1078 = zext i8 %745 to i32
  %add1079 = add nsw i32 %740, %conv1078
  %746 = load ptr, ptr %in.addr, align 8, !tbaa !21
  %747 = load i32, ptr %i, align 4, !tbaa !5
  %sub1080 = sub nsw i32 %747, 1
  %748 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul1081 = mul nsw i32 %sub1080, %748
  %749 = load i32, ptr %j, align 4, !tbaa !5
  %add1082 = add nsw i32 %mul1081, %749
  %add1083 = add nsw i32 %add1082, 1
  %idxprom1084 = sext i32 %add1083 to i64
  %arrayidx1085 = getelementptr inbounds i8, ptr %746, i64 %idxprom1084
  %750 = load i8, ptr %arrayidx1085, align 1, !tbaa !25
  %conv1086 = zext i8 %750 to i32
  %add1087 = add nsw i32 %add1079, %conv1086
  %751 = load ptr, ptr %in.addr, align 8, !tbaa !21
  %752 = load i32, ptr %i, align 4, !tbaa !5
  %753 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul1088 = mul nsw i32 %752, %753
  %754 = load i32, ptr %j, align 4, !tbaa !5
  %add1089 = add nsw i32 %mul1088, %754
  %add1090 = add nsw i32 %add1089, 1
  %idxprom1091 = sext i32 %add1090 to i64
  %arrayidx1092 = getelementptr inbounds i8, ptr %751, i64 %idxprom1091
  %755 = load i8, ptr %arrayidx1092, align 1, !tbaa !25
  %conv1093 = zext i8 %755 to i32
  %add1094 = add nsw i32 %add1087, %conv1093
  %756 = load ptr, ptr %in.addr, align 8, !tbaa !21
  %757 = load i32, ptr %i, align 4, !tbaa !5
  %add1095 = add nsw i32 %757, 1
  %758 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul1096 = mul nsw i32 %add1095, %758
  %759 = load i32, ptr %j, align 4, !tbaa !5
  %add1097 = add nsw i32 %mul1096, %759
  %add1098 = add nsw i32 %add1097, 1
  %idxprom1099 = sext i32 %add1098 to i64
  %arrayidx1100 = getelementptr inbounds i8, ptr %756, i64 %idxprom1099
  %760 = load i8, ptr %arrayidx1100, align 1, !tbaa !25
  %conv1101 = zext i8 %760 to i32
  %add1102 = add nsw i32 %add1094, %conv1101
  %761 = load ptr, ptr %in.addr, align 8, !tbaa !21
  %762 = load i32, ptr %i, align 4, !tbaa !5
  %add1103 = add nsw i32 %762, 2
  %763 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul1104 = mul nsw i32 %add1103, %763
  %764 = load i32, ptr %j, align 4, !tbaa !5
  %add1105 = add nsw i32 %mul1104, %764
  %add1106 = add nsw i32 %add1105, 1
  %idxprom1107 = sext i32 %add1106 to i64
  %arrayidx1108 = getelementptr inbounds i8, ptr %761, i64 %idxprom1107
  %765 = load i8, ptr %arrayidx1108, align 1, !tbaa !25
  %conv1109 = zext i8 %765 to i32
  %add1110 = add nsw i32 %add1102, %conv1109
  %766 = load ptr, ptr %in.addr, align 8, !tbaa !21
  %767 = load i32, ptr %i, align 4, !tbaa !5
  %sub1111 = sub nsw i32 %767, 2
  %768 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul1112 = mul nsw i32 %sub1111, %768
  %769 = load i32, ptr %j, align 4, !tbaa !5
  %add1113 = add nsw i32 %mul1112, %769
  %sub1114 = sub nsw i32 %add1113, 1
  %idxprom1115 = sext i32 %sub1114 to i64
  %arrayidx1116 = getelementptr inbounds i8, ptr %766, i64 %idxprom1115
  %770 = load i8, ptr %arrayidx1116, align 1, !tbaa !25
  %conv1117 = zext i8 %770 to i32
  %771 = load ptr, ptr %in.addr, align 8, !tbaa !21
  %772 = load i32, ptr %i, align 4, !tbaa !5
  %sub1118 = sub nsw i32 %772, 1
  %773 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul1119 = mul nsw i32 %sub1118, %773
  %774 = load i32, ptr %j, align 4, !tbaa !5
  %add1120 = add nsw i32 %mul1119, %774
  %sub1121 = sub nsw i32 %add1120, 1
  %idxprom1122 = sext i32 %sub1121 to i64
  %arrayidx1123 = getelementptr inbounds i8, ptr %771, i64 %idxprom1122
  %775 = load i8, ptr %arrayidx1123, align 1, !tbaa !25
  %conv1124 = zext i8 %775 to i32
  %add1125 = add nsw i32 %conv1117, %conv1124
  %776 = load ptr, ptr %in.addr, align 8, !tbaa !21
  %777 = load i32, ptr %i, align 4, !tbaa !5
  %778 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul1126 = mul nsw i32 %777, %778
  %779 = load i32, ptr %j, align 4, !tbaa !5
  %add1127 = add nsw i32 %mul1126, %779
  %sub1128 = sub nsw i32 %add1127, 1
  %idxprom1129 = sext i32 %sub1128 to i64
  %arrayidx1130 = getelementptr inbounds i8, ptr %776, i64 %idxprom1129
  %780 = load i8, ptr %arrayidx1130, align 1, !tbaa !25
  %conv1131 = zext i8 %780 to i32
  %add1132 = add nsw i32 %add1125, %conv1131
  %781 = load ptr, ptr %in.addr, align 8, !tbaa !21
  %782 = load i32, ptr %i, align 4, !tbaa !5
  %add1133 = add nsw i32 %782, 1
  %783 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul1134 = mul nsw i32 %add1133, %783
  %784 = load i32, ptr %j, align 4, !tbaa !5
  %add1135 = add nsw i32 %mul1134, %784
  %sub1136 = sub nsw i32 %add1135, 1
  %idxprom1137 = sext i32 %sub1136 to i64
  %arrayidx1138 = getelementptr inbounds i8, ptr %781, i64 %idxprom1137
  %785 = load i8, ptr %arrayidx1138, align 1, !tbaa !25
  %conv1139 = zext i8 %785 to i32
  %add1140 = add nsw i32 %add1132, %conv1139
  %786 = load ptr, ptr %in.addr, align 8, !tbaa !21
  %787 = load i32, ptr %i, align 4, !tbaa !5
  %add1141 = add nsw i32 %787, 2
  %788 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul1142 = mul nsw i32 %add1141, %788
  %789 = load i32, ptr %j, align 4, !tbaa !5
  %add1143 = add nsw i32 %mul1142, %789
  %sub1144 = sub nsw i32 %add1143, 1
  %idxprom1145 = sext i32 %sub1144 to i64
  %arrayidx1146 = getelementptr inbounds i8, ptr %786, i64 %idxprom1145
  %790 = load i8, ptr %arrayidx1146, align 1, !tbaa !25
  %conv1147 = zext i8 %790 to i32
  %add1148 = add nsw i32 %add1140, %conv1147
  %sub1149 = sub nsw i32 %add1110, %add1148
  %791 = load i32, ptr %x, align 4, !tbaa !5
  %add1150 = add nsw i32 %791, %sub1149
  store i32 %add1150, ptr %x, align 4, !tbaa !5
  %792 = load ptr, ptr %in.addr, align 8, !tbaa !21
  %793 = load i32, ptr %i, align 4, !tbaa !5
  %add1151 = add nsw i32 %793, 2
  %794 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul1152 = mul nsw i32 %add1151, %794
  %795 = load i32, ptr %j, align 4, !tbaa !5
  %add1153 = add nsw i32 %mul1152, %795
  %sub1154 = sub nsw i32 %add1153, 2
  %idxprom1155 = sext i32 %sub1154 to i64
  %arrayidx1156 = getelementptr inbounds i8, ptr %792, i64 %idxprom1155
  %796 = load i8, ptr %arrayidx1156, align 1, !tbaa !25
  %conv1157 = zext i8 %796 to i32
  %797 = load ptr, ptr %in.addr, align 8, !tbaa !21
  %798 = load i32, ptr %i, align 4, !tbaa !5
  %add1158 = add nsw i32 %798, 2
  %799 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul1159 = mul nsw i32 %add1158, %799
  %800 = load i32, ptr %j, align 4, !tbaa !5
  %add1160 = add nsw i32 %mul1159, %800
  %sub1161 = sub nsw i32 %add1160, 1
  %idxprom1162 = sext i32 %sub1161 to i64
  %arrayidx1163 = getelementptr inbounds i8, ptr %797, i64 %idxprom1162
  %801 = load i8, ptr %arrayidx1163, align 1, !tbaa !25
  %conv1164 = zext i8 %801 to i32
  %add1165 = add nsw i32 %conv1157, %conv1164
  %802 = load ptr, ptr %in.addr, align 8, !tbaa !21
  %803 = load i32, ptr %i, align 4, !tbaa !5
  %add1166 = add nsw i32 %803, 2
  %804 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul1167 = mul nsw i32 %add1166, %804
  %805 = load i32, ptr %j, align 4, !tbaa !5
  %add1168 = add nsw i32 %mul1167, %805
  %idxprom1169 = sext i32 %add1168 to i64
  %arrayidx1170 = getelementptr inbounds i8, ptr %802, i64 %idxprom1169
  %806 = load i8, ptr %arrayidx1170, align 1, !tbaa !25
  %conv1171 = zext i8 %806 to i32
  %add1172 = add nsw i32 %add1165, %conv1171
  %807 = load ptr, ptr %in.addr, align 8, !tbaa !21
  %808 = load i32, ptr %i, align 4, !tbaa !5
  %add1173 = add nsw i32 %808, 2
  %809 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul1174 = mul nsw i32 %add1173, %809
  %810 = load i32, ptr %j, align 4, !tbaa !5
  %add1175 = add nsw i32 %mul1174, %810
  %add1176 = add nsw i32 %add1175, 1
  %idxprom1177 = sext i32 %add1176 to i64
  %arrayidx1178 = getelementptr inbounds i8, ptr %807, i64 %idxprom1177
  %811 = load i8, ptr %arrayidx1178, align 1, !tbaa !25
  %conv1179 = zext i8 %811 to i32
  %add1180 = add nsw i32 %add1172, %conv1179
  %812 = load ptr, ptr %in.addr, align 8, !tbaa !21
  %813 = load i32, ptr %i, align 4, !tbaa !5
  %add1181 = add nsw i32 %813, 2
  %814 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul1182 = mul nsw i32 %add1181, %814
  %815 = load i32, ptr %j, align 4, !tbaa !5
  %add1183 = add nsw i32 %mul1182, %815
  %add1184 = add nsw i32 %add1183, 2
  %idxprom1185 = sext i32 %add1184 to i64
  %arrayidx1186 = getelementptr inbounds i8, ptr %812, i64 %idxprom1185
  %816 = load i8, ptr %arrayidx1186, align 1, !tbaa !25
  %conv1187 = zext i8 %816 to i32
  %add1188 = add nsw i32 %add1180, %conv1187
  %817 = load ptr, ptr %in.addr, align 8, !tbaa !21
  %818 = load i32, ptr %i, align 4, !tbaa !5
  %sub1189 = sub nsw i32 %818, 2
  %819 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul1190 = mul nsw i32 %sub1189, %819
  %820 = load i32, ptr %j, align 4, !tbaa !5
  %add1191 = add nsw i32 %mul1190, %820
  %sub1192 = sub nsw i32 %add1191, 2
  %idxprom1193 = sext i32 %sub1192 to i64
  %arrayidx1194 = getelementptr inbounds i8, ptr %817, i64 %idxprom1193
  %821 = load i8, ptr %arrayidx1194, align 1, !tbaa !25
  %conv1195 = zext i8 %821 to i32
  %822 = load ptr, ptr %in.addr, align 8, !tbaa !21
  %823 = load i32, ptr %i, align 4, !tbaa !5
  %sub1196 = sub nsw i32 %823, 2
  %824 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul1197 = mul nsw i32 %sub1196, %824
  %825 = load i32, ptr %j, align 4, !tbaa !5
  %add1198 = add nsw i32 %mul1197, %825
  %sub1199 = sub nsw i32 %add1198, 1
  %idxprom1200 = sext i32 %sub1199 to i64
  %arrayidx1201 = getelementptr inbounds i8, ptr %822, i64 %idxprom1200
  %826 = load i8, ptr %arrayidx1201, align 1, !tbaa !25
  %conv1202 = zext i8 %826 to i32
  %add1203 = add nsw i32 %conv1195, %conv1202
  %827 = load ptr, ptr %in.addr, align 8, !tbaa !21
  %828 = load i32, ptr %i, align 4, !tbaa !5
  %sub1204 = sub nsw i32 %828, 2
  %829 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul1205 = mul nsw i32 %sub1204, %829
  %830 = load i32, ptr %j, align 4, !tbaa !5
  %add1206 = add nsw i32 %mul1205, %830
  %idxprom1207 = sext i32 %add1206 to i64
  %arrayidx1208 = getelementptr inbounds i8, ptr %827, i64 %idxprom1207
  %831 = load i8, ptr %arrayidx1208, align 1, !tbaa !25
  %conv1209 = zext i8 %831 to i32
  %add1210 = add nsw i32 %add1203, %conv1209
  %832 = load ptr, ptr %in.addr, align 8, !tbaa !21
  %833 = load i32, ptr %i, align 4, !tbaa !5
  %sub1211 = sub nsw i32 %833, 2
  %834 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul1212 = mul nsw i32 %sub1211, %834
  %835 = load i32, ptr %j, align 4, !tbaa !5
  %add1213 = add nsw i32 %mul1212, %835
  %add1214 = add nsw i32 %add1213, 1
  %idxprom1215 = sext i32 %add1214 to i64
  %arrayidx1216 = getelementptr inbounds i8, ptr %832, i64 %idxprom1215
  %836 = load i8, ptr %arrayidx1216, align 1, !tbaa !25
  %conv1217 = zext i8 %836 to i32
  %add1218 = add nsw i32 %add1210, %conv1217
  %837 = load ptr, ptr %in.addr, align 8, !tbaa !21
  %838 = load i32, ptr %i, align 4, !tbaa !5
  %sub1219 = sub nsw i32 %838, 2
  %839 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul1220 = mul nsw i32 %sub1219, %839
  %840 = load i32, ptr %j, align 4, !tbaa !5
  %add1221 = add nsw i32 %mul1220, %840
  %add1222 = add nsw i32 %add1221, 2
  %idxprom1223 = sext i32 %add1222 to i64
  %arrayidx1224 = getelementptr inbounds i8, ptr %837, i64 %idxprom1223
  %841 = load i8, ptr %arrayidx1224, align 1, !tbaa !25
  %conv1225 = zext i8 %841 to i32
  %add1226 = add nsw i32 %add1218, %conv1225
  %sub1227 = sub nsw i32 %add1188, %add1226
  store i32 %sub1227, ptr %y, align 4, !tbaa !5
  %842 = load i32, ptr %y, align 4, !tbaa !5
  %843 = load ptr, ptr %in.addr, align 8, !tbaa !21
  %844 = load i32, ptr %i, align 4, !tbaa !5
  %add1228 = add nsw i32 %844, 1
  %845 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul1229 = mul nsw i32 %add1228, %845
  %846 = load i32, ptr %j, align 4, !tbaa !5
  %add1230 = add nsw i32 %mul1229, %846
  %sub1231 = sub nsw i32 %add1230, 2
  %idxprom1232 = sext i32 %sub1231 to i64
  %arrayidx1233 = getelementptr inbounds i8, ptr %843, i64 %idxprom1232
  %847 = load i8, ptr %arrayidx1233, align 1, !tbaa !25
  %conv1234 = zext i8 %847 to i32
  %add1235 = add nsw i32 %842, %conv1234
  %848 = load ptr, ptr %in.addr, align 8, !tbaa !21
  %849 = load i32, ptr %i, align 4, !tbaa !5
  %add1236 = add nsw i32 %849, 1
  %850 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul1237 = mul nsw i32 %add1236, %850
  %851 = load i32, ptr %j, align 4, !tbaa !5
  %add1238 = add nsw i32 %mul1237, %851
  %sub1239 = sub nsw i32 %add1238, 1
  %idxprom1240 = sext i32 %sub1239 to i64
  %arrayidx1241 = getelementptr inbounds i8, ptr %848, i64 %idxprom1240
  %852 = load i8, ptr %arrayidx1241, align 1, !tbaa !25
  %conv1242 = zext i8 %852 to i32
  %add1243 = add nsw i32 %add1235, %conv1242
  %853 = load ptr, ptr %in.addr, align 8, !tbaa !21
  %854 = load i32, ptr %i, align 4, !tbaa !5
  %add1244 = add nsw i32 %854, 1
  %855 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul1245 = mul nsw i32 %add1244, %855
  %856 = load i32, ptr %j, align 4, !tbaa !5
  %add1246 = add nsw i32 %mul1245, %856
  %idxprom1247 = sext i32 %add1246 to i64
  %arrayidx1248 = getelementptr inbounds i8, ptr %853, i64 %idxprom1247
  %857 = load i8, ptr %arrayidx1248, align 1, !tbaa !25
  %conv1249 = zext i8 %857 to i32
  %add1250 = add nsw i32 %add1243, %conv1249
  %858 = load ptr, ptr %in.addr, align 8, !tbaa !21
  %859 = load i32, ptr %i, align 4, !tbaa !5
  %add1251 = add nsw i32 %859, 1
  %860 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul1252 = mul nsw i32 %add1251, %860
  %861 = load i32, ptr %j, align 4, !tbaa !5
  %add1253 = add nsw i32 %mul1252, %861
  %add1254 = add nsw i32 %add1253, 1
  %idxprom1255 = sext i32 %add1254 to i64
  %arrayidx1256 = getelementptr inbounds i8, ptr %858, i64 %idxprom1255
  %862 = load i8, ptr %arrayidx1256, align 1, !tbaa !25
  %conv1257 = zext i8 %862 to i32
  %add1258 = add nsw i32 %add1250, %conv1257
  %863 = load ptr, ptr %in.addr, align 8, !tbaa !21
  %864 = load i32, ptr %i, align 4, !tbaa !5
  %add1259 = add nsw i32 %864, 1
  %865 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul1260 = mul nsw i32 %add1259, %865
  %866 = load i32, ptr %j, align 4, !tbaa !5
  %add1261 = add nsw i32 %mul1260, %866
  %add1262 = add nsw i32 %add1261, 2
  %idxprom1263 = sext i32 %add1262 to i64
  %arrayidx1264 = getelementptr inbounds i8, ptr %863, i64 %idxprom1263
  %867 = load i8, ptr %arrayidx1264, align 1, !tbaa !25
  %conv1265 = zext i8 %867 to i32
  %add1266 = add nsw i32 %add1258, %conv1265
  %868 = load ptr, ptr %in.addr, align 8, !tbaa !21
  %869 = load i32, ptr %i, align 4, !tbaa !5
  %sub1267 = sub nsw i32 %869, 1
  %870 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul1268 = mul nsw i32 %sub1267, %870
  %871 = load i32, ptr %j, align 4, !tbaa !5
  %add1269 = add nsw i32 %mul1268, %871
  %sub1270 = sub nsw i32 %add1269, 2
  %idxprom1271 = sext i32 %sub1270 to i64
  %arrayidx1272 = getelementptr inbounds i8, ptr %868, i64 %idxprom1271
  %872 = load i8, ptr %arrayidx1272, align 1, !tbaa !25
  %conv1273 = zext i8 %872 to i32
  %873 = load ptr, ptr %in.addr, align 8, !tbaa !21
  %874 = load i32, ptr %i, align 4, !tbaa !5
  %sub1274 = sub nsw i32 %874, 1
  %875 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul1275 = mul nsw i32 %sub1274, %875
  %876 = load i32, ptr %j, align 4, !tbaa !5
  %add1276 = add nsw i32 %mul1275, %876
  %sub1277 = sub nsw i32 %add1276, 1
  %idxprom1278 = sext i32 %sub1277 to i64
  %arrayidx1279 = getelementptr inbounds i8, ptr %873, i64 %idxprom1278
  %877 = load i8, ptr %arrayidx1279, align 1, !tbaa !25
  %conv1280 = zext i8 %877 to i32
  %add1281 = add nsw i32 %conv1273, %conv1280
  %878 = load ptr, ptr %in.addr, align 8, !tbaa !21
  %879 = load i32, ptr %i, align 4, !tbaa !5
  %sub1282 = sub nsw i32 %879, 1
  %880 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul1283 = mul nsw i32 %sub1282, %880
  %881 = load i32, ptr %j, align 4, !tbaa !5
  %add1284 = add nsw i32 %mul1283, %881
  %idxprom1285 = sext i32 %add1284 to i64
  %arrayidx1286 = getelementptr inbounds i8, ptr %878, i64 %idxprom1285
  %882 = load i8, ptr %arrayidx1286, align 1, !tbaa !25
  %conv1287 = zext i8 %882 to i32
  %add1288 = add nsw i32 %add1281, %conv1287
  %883 = load ptr, ptr %in.addr, align 8, !tbaa !21
  %884 = load i32, ptr %i, align 4, !tbaa !5
  %sub1289 = sub nsw i32 %884, 1
  %885 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul1290 = mul nsw i32 %sub1289, %885
  %886 = load i32, ptr %j, align 4, !tbaa !5
  %add1291 = add nsw i32 %mul1290, %886
  %add1292 = add nsw i32 %add1291, 1
  %idxprom1293 = sext i32 %add1292 to i64
  %arrayidx1294 = getelementptr inbounds i8, ptr %883, i64 %idxprom1293
  %887 = load i8, ptr %arrayidx1294, align 1, !tbaa !25
  %conv1295 = zext i8 %887 to i32
  %add1296 = add nsw i32 %add1288, %conv1295
  %888 = load ptr, ptr %in.addr, align 8, !tbaa !21
  %889 = load i32, ptr %i, align 4, !tbaa !5
  %sub1297 = sub nsw i32 %889, 1
  %890 = load i32, ptr %x_size.addr, align 4, !tbaa !5
  %mul1298 = mul nsw i32 %sub1297, %890
  %891 = load i32, ptr %j, align 4, !tbaa !5
  %add1299 = add nsw i32 %mul1298, %891
  %add1300 = add nsw i32 %add1299, 2
  %idxprom1301 = sext i32 %add1300 to i64
  %arrayidx1302 = getelementptr inbounds i8, ptr %888, i64 %idxprom1301
  %892 = load i8, ptr %arrayidx1302, align 1, !tbaa !25
  %conv1303 = zext i8 %892 to i32
  %add1304 = add nsw i32 %add1296, %conv1303
  %sub1305 = sub nsw i32 %add1266, %add1304
  %893 = load i32, ptr %y, align 4, !tbaa !5
  %add1306 = add nsw i32 %893, %sub1305
  store i32 %add1306, ptr %y, align 4, !tbaa !5
  %894 = load i32, ptr %x, align 4, !tbaa !5
  %div1307 = sdiv i32 %894, 15
  %895 = load ptr, ptr %corner_list.addr, align 8, !tbaa !65
  %896 = load i32, ptr %n, align 4, !tbaa !5
  %idxprom1308 = sext i32 %896 to i64
  %arrayidx1309 = getelementptr inbounds %struct.anon, ptr %895, i64 %idxprom1308
  %dx = getelementptr inbounds nuw %struct.anon, ptr %arrayidx1309, i32 0, i32 3
  store i32 %div1307, ptr %dx, align 4, !tbaa !73
  %897 = load i32, ptr %y, align 4, !tbaa !5
  %div1310 = sdiv i32 %897, 15
  %898 = load ptr, ptr %corner_list.addr, align 8, !tbaa !65
  %899 = load i32, ptr %n, align 4, !tbaa !5
  %idxprom1311 = sext i32 %899 to i64
  %arrayidx1312 = getelementptr inbounds %struct.anon, ptr %898, i64 %idxprom1311
  %dy = getelementptr inbounds nuw %struct.anon, ptr %arrayidx1312, i32 0, i32 4
  store i32 %div1310, ptr %dy, align 4, !tbaa !74
  %900 = load i32, ptr %n, align 4, !tbaa !5
  %inc1313 = add nsw i32 %900, 1
  store i32 %inc1313, ptr %n, align 4, !tbaa !5
  %901 = load i32, ptr %n, align 4, !tbaa !5
  %cmp1314 = icmp eq i32 %901, 15000
  br i1 %cmp1314, label %if.then1316, label %if.end1317

if.then1316:                                      ; preds = %if.then795
  %902 = load ptr, ptr @stderr, align 8, !tbaa !13
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %902, ptr noundef @.str.29) #10
  call void @exit(i32 noundef 1) #11
  unreachable

if.end1317:                                       ; preds = %if.then795
  br label %if.end1318

if.end1318:                                       ; preds = %if.end1317, %land.lhs.true786, %land.lhs.true777, %land.lhs.true768, %land.lhs.true760, %land.lhs.true751, %land.lhs.true742, %land.lhs.true733, %land.lhs.true724, %land.lhs.true715, %land.lhs.true706, %land.lhs.true698, %land.lhs.true689, %land.lhs.true680, %land.lhs.true671, %land.lhs.true662, %land.lhs.true653, %land.lhs.true644, %land.lhs.true636, %land.lhs.true627, %land.lhs.true618, %land.lhs.true609, %land.lhs.true601, %land.lhs.true593, %land.lhs.true585, %land.lhs.true577, %land.lhs.true569, %land.lhs.true561, %land.lhs.true552, %land.lhs.true543, %land.lhs.true534, %land.lhs.true526, %land.lhs.true517, %land.lhs.true508, %land.lhs.true499, %land.lhs.true490, %land.lhs.true481, %land.lhs.true472, %land.lhs.true464, %land.lhs.true455, %land.lhs.true446, %land.lhs.true437, %land.lhs.true428, %land.lhs.true419, %land.lhs.true410, %land.lhs.true402, %land.lhs.true393, %land.lhs.true, %if.then376
  br label %if.end1319

if.end1319:                                       ; preds = %if.end1318, %for.body369
  br label %for.inc1320

for.inc1320:                                      ; preds = %if.end1319
  %903 = load i32, ptr %j, align 4, !tbaa !5
  %inc1321 = add nsw i32 %903, 1
  store i32 %inc1321, ptr %j, align 4, !tbaa !5
  br label %for.cond365, !llvm.loop !80

for.end1322:                                      ; preds = %for.cond365
  br label %for.inc1323

for.inc1323:                                      ; preds = %for.end1322
  %904 = load i32, ptr %i, align 4, !tbaa !5
  %inc1324 = add nsw i32 %904, 1
  store i32 %inc1324, ptr %i, align 4, !tbaa !5
  br label %for.cond360, !llvm.loop !81

for.end1325:                                      ; preds = %for.cond360
  %905 = load ptr, ptr %corner_list.addr, align 8, !tbaa !65
  %906 = load i32, ptr %n, align 4, !tbaa !5
  %idxprom1326 = sext i32 %906 to i64
  %arrayidx1327 = getelementptr inbounds %struct.anon, ptr %905, i64 %idxprom1326
  %info1328 = getelementptr inbounds nuw %struct.anon, ptr %arrayidx1327, i32 0, i32 2
  store i32 7, ptr %info1328, align 4, !tbaa !66
  call void @llvm.lifetime.end.p0(i64 8, ptr %cp) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %y) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %x) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #10
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @main1(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %tcp = alloca ptr, align 8
  %in = alloca ptr, align 8
  %bp = alloca ptr, align 8
  %mid = alloca ptr, align 8
  %dt = alloca float, align 4
  %r = alloca ptr, align 8
  %argindex = alloca i32, align 4
  %bt = alloca i32, align 4
  %principle = alloca i32, align 4
  %thin_post_proc = alloca i32, align 4
  %three_by_three = alloca i32, align 4
  %drawing_mode = alloca i32, align 4
  %susan_quick = alloca i32, align 4
  %max_no_corners = alloca i32, align 4
  %max_no_edges = alloca i32, align 4
  %mode = alloca i32, align 4
  %x_size = alloca i32, align 4
  %y_size = alloca i32, align 4
  %corner_list = alloca [15000 x %struct.anon], align 16
  store i32 %argc, ptr %argc.addr, align 4, !tbaa !5
  store ptr %argv, ptr %argv.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %tcp) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %in) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %bp) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %mid) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %dt) #10
  store float 4.000000e+00, ptr %dt, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(i64 8, ptr %r) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %argindex) #10
  store i32 3, ptr %argindex, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %bt) #10
  store i32 20, ptr %bt, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %principle) #10
  store i32 0, ptr %principle, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %thin_post_proc) #10
  store i32 1, ptr %thin_post_proc, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %three_by_three) #10
  store i32 0, ptr %three_by_three, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %drawing_mode) #10
  store i32 0, ptr %drawing_mode, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %susan_quick) #10
  store i32 0, ptr %susan_quick, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %max_no_corners) #10
  store i32 1850, ptr %max_no_corners, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %max_no_edges) #10
  store i32 2650, ptr %max_no_edges, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %mode) #10
  store i32 0, ptr %mode, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %x_size) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %y_size) #10
  call void @llvm.lifetime.start.p0(i64 360000, ptr %corner_list) #10
  %0 = load i32, ptr %argc.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @usage()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load ptr, ptr %argv.addr, align 8, !tbaa !9
  %arrayidx = getelementptr inbounds ptr, ptr %1, i64 1
  %2 = load ptr, ptr %arrayidx, align 8, !tbaa !21
  call void @get_image(ptr noundef %2, ptr noundef %in, ptr noundef %x_size, ptr noundef %y_size)
  br label %while.cond

while.cond:                                       ; preds = %if.end37, %if.end
  %3 = load i32, ptr %argindex, align 4, !tbaa !5
  %4 = load i32, ptr %argc.addr, align 4, !tbaa !5
  %cmp1 = icmp slt i32 %3, %4
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load ptr, ptr %argv.addr, align 8, !tbaa !9
  %6 = load i32, ptr %argindex, align 4, !tbaa !5
  %idxprom = sext i32 %6 to i64
  %arrayidx2 = getelementptr inbounds ptr, ptr %5, i64 %idxprom
  %7 = load ptr, ptr %arrayidx2, align 8, !tbaa !21
  store ptr %7, ptr %tcp, align 8, !tbaa !21
  %8 = load ptr, ptr %tcp, align 8, !tbaa !21
  %9 = load i8, ptr %8, align 1, !tbaa !25
  %conv = sext i8 %9 to i32
  %cmp3 = icmp eq i32 %conv, 45
  br i1 %cmp3, label %if.then5, label %if.else

if.then5:                                         ; preds = %while.body
  %10 = load ptr, ptr %tcp, align 8, !tbaa !21
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %10, i32 1
  store ptr %incdec.ptr, ptr %tcp, align 8, !tbaa !21
  %11 = load i8, ptr %incdec.ptr, align 1, !tbaa !25
  %conv6 = sext i8 %11 to i32
  switch i32 %conv6, label %sw.epilog [
    i32 115, label %sw.bb
    i32 101, label %sw.bb7
    i32 99, label %sw.bb8
    i32 112, label %sw.bb9
    i32 110, label %sw.bb10
    i32 98, label %sw.bb11
    i32 51, label %sw.bb12
    i32 113, label %sw.bb13
    i32 100, label %sw.bb14
    i32 116, label %sw.bb27
  ]

sw.bb:                                            ; preds = %if.then5
  store i32 0, ptr %mode, align 4, !tbaa !5
  br label %sw.epilog

sw.bb7:                                           ; preds = %if.then5
  store i32 1, ptr %mode, align 4, !tbaa !5
  br label %sw.epilog

sw.bb8:                                           ; preds = %if.then5
  store i32 2, ptr %mode, align 4, !tbaa !5
  br label %sw.epilog

sw.bb9:                                           ; preds = %if.then5
  store i32 1, ptr %principle, align 4, !tbaa !5
  br label %sw.epilog

sw.bb10:                                          ; preds = %if.then5
  store i32 0, ptr %thin_post_proc, align 4, !tbaa !5
  br label %sw.epilog

sw.bb11:                                          ; preds = %if.then5
  store i32 1, ptr %drawing_mode, align 4, !tbaa !5
  br label %sw.epilog

sw.bb12:                                          ; preds = %if.then5
  store i32 1, ptr %three_by_three, align 4, !tbaa !5
  br label %sw.epilog

sw.bb13:                                          ; preds = %if.then5
  store i32 1, ptr %susan_quick, align 4, !tbaa !5
  br label %sw.epilog

sw.bb14:                                          ; preds = %if.then5
  %12 = load i32, ptr %argindex, align 4, !tbaa !5
  %inc = add nsw i32 %12, 1
  store i32 %inc, ptr %argindex, align 4, !tbaa !5
  %13 = load i32, ptr %argc.addr, align 4, !tbaa !5
  %cmp15 = icmp sge i32 %inc, %13
  br i1 %cmp15, label %if.then17, label %if.end18

if.then17:                                        ; preds = %sw.bb14
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.30)
  call void @exit(i32 noundef 0) #11
  unreachable

if.end18:                                         ; preds = %sw.bb14
  %14 = load ptr, ptr %argv.addr, align 8, !tbaa !9
  %15 = load i32, ptr %argindex, align 4, !tbaa !5
  %idxprom19 = sext i32 %15 to i64
  %arrayidx20 = getelementptr inbounds ptr, ptr %14, i64 %idxprom19
  %16 = load ptr, ptr %arrayidx20, align 8, !tbaa !21
  %call21 = call double @atof(ptr noundef %16) #13
  %conv22 = fptrunc double %call21 to float
  store float %conv22, ptr %dt, align 4, !tbaa !41
  %17 = load float, ptr %dt, align 4, !tbaa !41
  %cmp23 = fcmp olt float %17, 0.000000e+00
  br i1 %cmp23, label %if.then25, label %if.end26

if.then25:                                        ; preds = %if.end18
  store i32 1, ptr %three_by_three, align 4, !tbaa !5
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %if.end18
  br label %sw.epilog

sw.bb27:                                          ; preds = %if.then5
  %18 = load i32, ptr %argindex, align 4, !tbaa !5
  %inc28 = add nsw i32 %18, 1
  store i32 %inc28, ptr %argindex, align 4, !tbaa !5
  %19 = load i32, ptr %argc.addr, align 4, !tbaa !5
  %cmp29 = icmp sge i32 %inc28, %19
  br i1 %cmp29, label %if.then31, label %if.end33

if.then31:                                        ; preds = %sw.bb27
  %call32 = call i32 (ptr, ...) @printf(ptr noundef @.str.31)
  call void @exit(i32 noundef 0) #11
  unreachable

if.end33:                                         ; preds = %sw.bb27
  %20 = load ptr, ptr %argv.addr, align 8, !tbaa !9
  %21 = load i32, ptr %argindex, align 4, !tbaa !5
  %idxprom34 = sext i32 %21 to i64
  %arrayidx35 = getelementptr inbounds ptr, ptr %20, i64 %idxprom34
  %22 = load ptr, ptr %arrayidx35, align 8, !tbaa !21
  %call36 = call i32 @atoi(ptr noundef %22) #13
  store i32 %call36, ptr %bt, align 4, !tbaa !5
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then5, %if.end33, %if.end26, %sw.bb13, %sw.bb12, %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb
  br label %if.end37

if.else:                                          ; preds = %while.body
  call void @usage()
  br label %if.end37

if.end37:                                         ; preds = %if.else, %sw.epilog
  %23 = load i32, ptr %argindex, align 4, !tbaa !5
  %inc38 = add nsw i32 %23, 1
  store i32 %inc38, ptr %argindex, align 4, !tbaa !5
  br label %while.cond, !llvm.loop !82

while.end:                                        ; preds = %while.cond
  %24 = load i32, ptr %principle, align 4, !tbaa !5
  %cmp39 = icmp eq i32 %24, 1
  br i1 %cmp39, label %land.lhs.true, label %if.end44

land.lhs.true:                                    ; preds = %while.end
  %25 = load i32, ptr %mode, align 4, !tbaa !5
  %cmp41 = icmp eq i32 %25, 0
  br i1 %cmp41, label %if.then43, label %if.end44

if.then43:                                        ; preds = %land.lhs.true
  store i32 1, ptr %mode, align 4, !tbaa !5
  br label %if.end44

if.end44:                                         ; preds = %if.then43, %land.lhs.true, %while.end
  %26 = load i32, ptr %mode, align 4, !tbaa !5
  switch i32 %26, label %sw.epilog86 [
    i32 0, label %sw.bb45
    i32 1, label %sw.bb46
    i32 2, label %sw.bb70
  ]

sw.bb45:                                          ; preds = %if.end44
  %27 = load i32, ptr %bt, align 4, !tbaa !5
  call void @setup_brightness_lut(ptr noundef %bp, i32 noundef %27, i32 noundef 2)
  %28 = load i32, ptr %three_by_three, align 4, !tbaa !5
  %29 = load ptr, ptr %in, align 8, !tbaa !21
  %30 = load float, ptr %dt, align 4, !tbaa !41
  %31 = load i32, ptr %x_size, align 4, !tbaa !5
  %32 = load i32, ptr %y_size, align 4, !tbaa !5
  %33 = load ptr, ptr %bp, align 8, !tbaa !21
  call void @susan_smoothing(i32 noundef %28, ptr noundef %29, float noundef %30, i32 noundef %31, i32 noundef %32, ptr noundef %33)
  %34 = load ptr, ptr %bp, align 8, !tbaa !21
  call void @free_brightness_lut(ptr noundef %34)
  br label %sw.epilog86

sw.bb46:                                          ; preds = %if.end44
  %35 = load i32, ptr %x_size, align 4, !tbaa !5
  %36 = load i32, ptr %y_size, align 4, !tbaa !5
  %mul = mul nsw i32 %35, %36
  %conv47 = sext i32 %mul to i64
  %mul48 = mul i64 %conv47, 4
  %call49 = call noalias ptr @malloc(i64 noundef %mul48) #12
  store ptr %call49, ptr %r, align 8, !tbaa !23
  %37 = load i32, ptr %bt, align 4, !tbaa !5
  call void @setup_brightness_lut(ptr noundef %bp, i32 noundef %37, i32 noundef 6)
  %38 = load i32, ptr %principle, align 4, !tbaa !5
  %tobool = icmp ne i32 %38, 0
  br i1 %tobool, label %if.then50, label %if.else56

if.then50:                                        ; preds = %sw.bb46
  %39 = load i32, ptr %three_by_three, align 4, !tbaa !5
  %tobool51 = icmp ne i32 %39, 0
  br i1 %tobool51, label %if.then52, label %if.else53

if.then52:                                        ; preds = %if.then50
  %40 = load ptr, ptr %in, align 8, !tbaa !21
  %41 = load ptr, ptr %r, align 8, !tbaa !23
  %42 = load ptr, ptr %bp, align 8, !tbaa !21
  %43 = load i32, ptr %max_no_edges, align 4, !tbaa !5
  %44 = load i32, ptr %x_size, align 4, !tbaa !5
  %45 = load i32, ptr %y_size, align 4, !tbaa !5
  call void @susan_principle_small(ptr noundef %40, ptr noundef %41, ptr noundef %42, i32 noundef %43, i32 noundef %44, i32 noundef %45)
  br label %if.end54

if.else53:                                        ; preds = %if.then50
  %46 = load ptr, ptr %in, align 8, !tbaa !21
  %47 = load ptr, ptr %r, align 8, !tbaa !23
  %48 = load ptr, ptr %bp, align 8, !tbaa !21
  %49 = load i32, ptr %max_no_edges, align 4, !tbaa !5
  %50 = load i32, ptr %x_size, align 4, !tbaa !5
  %51 = load i32, ptr %y_size, align 4, !tbaa !5
  call void @susan_principle(ptr noundef %46, ptr noundef %47, ptr noundef %48, i32 noundef %49, i32 noundef %50, i32 noundef %51)
  br label %if.end54

if.end54:                                         ; preds = %if.else53, %if.then52
  %52 = load ptr, ptr %r, align 8, !tbaa !23
  %53 = load ptr, ptr %in, align 8, !tbaa !21
  %54 = load i32, ptr %x_size, align 4, !tbaa !5
  %55 = load i32, ptr %y_size, align 4, !tbaa !5
  %mul55 = mul nsw i32 %54, %55
  call void @int_to_uchar(ptr noundef %52, ptr noundef %53, i32 noundef %mul55)
  br label %if.end69

if.else56:                                        ; preds = %sw.bb46
  %56 = load i32, ptr %x_size, align 4, !tbaa !5
  %57 = load i32, ptr %y_size, align 4, !tbaa !5
  %mul57 = mul nsw i32 %56, %57
  %conv58 = sext i32 %mul57 to i64
  %call59 = call noalias ptr @malloc(i64 noundef %conv58) #12
  store ptr %call59, ptr %mid, align 8, !tbaa !21
  %58 = load ptr, ptr %mid, align 8, !tbaa !21
  %59 = load i32, ptr %x_size, align 4, !tbaa !5
  %60 = load i32, ptr %y_size, align 4, !tbaa !5
  %mul60 = mul nsw i32 %59, %60
  %conv61 = sext i32 %mul60 to i64
  call void @llvm.memset.p0.i64(ptr align 1 %58, i8 100, i64 %conv61, i1 false)
  %61 = load i32, ptr %three_by_three, align 4, !tbaa !5
  %tobool62 = icmp ne i32 %61, 0
  br i1 %tobool62, label %if.then63, label %if.else64

if.then63:                                        ; preds = %if.else56
  %62 = load ptr, ptr %in, align 8, !tbaa !21
  %63 = load ptr, ptr %r, align 8, !tbaa !23
  %64 = load ptr, ptr %mid, align 8, !tbaa !21
  %65 = load ptr, ptr %bp, align 8, !tbaa !21
  %66 = load i32, ptr %max_no_edges, align 4, !tbaa !5
  %67 = load i32, ptr %x_size, align 4, !tbaa !5
  %68 = load i32, ptr %y_size, align 4, !tbaa !5
  call void @susan_edges_small(ptr noundef %62, ptr noundef %63, ptr noundef %64, ptr noundef %65, i32 noundef %66, i32 noundef %67, i32 noundef %68)
  br label %if.end65

if.else64:                                        ; preds = %if.else56
  %69 = load ptr, ptr %in, align 8, !tbaa !21
  %70 = load ptr, ptr %r, align 8, !tbaa !23
  %71 = load ptr, ptr %mid, align 8, !tbaa !21
  %72 = load ptr, ptr %bp, align 8, !tbaa !21
  %73 = load i32, ptr %max_no_edges, align 4, !tbaa !5
  %74 = load i32, ptr %x_size, align 4, !tbaa !5
  %75 = load i32, ptr %y_size, align 4, !tbaa !5
  call void @susan_edges(ptr noundef %69, ptr noundef %70, ptr noundef %71, ptr noundef %72, i32 noundef %73, i32 noundef %74, i32 noundef %75)
  br label %if.end65

if.end65:                                         ; preds = %if.else64, %if.then63
  %76 = load i32, ptr %thin_post_proc, align 4, !tbaa !5
  %tobool66 = icmp ne i32 %76, 0
  br i1 %tobool66, label %if.then67, label %if.end68

if.then67:                                        ; preds = %if.end65
  %77 = load ptr, ptr %r, align 8, !tbaa !23
  %78 = load ptr, ptr %mid, align 8, !tbaa !21
  %79 = load i32, ptr %x_size, align 4, !tbaa !5
  %80 = load i32, ptr %y_size, align 4, !tbaa !5
  call void @susan_thin(ptr noundef %77, ptr noundef %78, i32 noundef %79, i32 noundef %80)
  br label %if.end68

if.end68:                                         ; preds = %if.then67, %if.end65
  %81 = load ptr, ptr %in, align 8, !tbaa !21
  %82 = load ptr, ptr %mid, align 8, !tbaa !21
  %83 = load i32, ptr %x_size, align 4, !tbaa !5
  %84 = load i32, ptr %y_size, align 4, !tbaa !5
  %85 = load i32, ptr %drawing_mode, align 4, !tbaa !5
  call void @edge_draw(ptr noundef %81, ptr noundef %82, i32 noundef %83, i32 noundef %84, i32 noundef %85)
  %86 = load ptr, ptr %mid, align 8, !tbaa !21
  call void @free(ptr noundef %86) #10
  br label %if.end69

if.end69:                                         ; preds = %if.end68, %if.end54
  %87 = load ptr, ptr %bp, align 8, !tbaa !21
  call void @free_brightness_lut(ptr noundef %87)
  %88 = load ptr, ptr %r, align 8, !tbaa !23
  call void @free(ptr noundef %88) #10
  br label %sw.epilog86

sw.bb70:                                          ; preds = %if.end44
  %89 = load i32, ptr %x_size, align 4, !tbaa !5
  %90 = load i32, ptr %y_size, align 4, !tbaa !5
  %mul71 = mul nsw i32 %89, %90
  %conv72 = sext i32 %mul71 to i64
  %mul73 = mul i64 %conv72, 4
  %call74 = call noalias ptr @malloc(i64 noundef %mul73) #12
  store ptr %call74, ptr %r, align 8, !tbaa !23
  %91 = load i32, ptr %bt, align 4, !tbaa !5
  call void @setup_brightness_lut(ptr noundef %bp, i32 noundef %91, i32 noundef 6)
  %92 = load i32, ptr %principle, align 4, !tbaa !5
  %tobool75 = icmp ne i32 %92, 0
  br i1 %tobool75, label %if.then76, label %if.else78

if.then76:                                        ; preds = %sw.bb70
  %93 = load ptr, ptr %in, align 8, !tbaa !21
  %94 = load ptr, ptr %r, align 8, !tbaa !23
  %95 = load ptr, ptr %bp, align 8, !tbaa !21
  %96 = load i32, ptr %max_no_corners, align 4, !tbaa !5
  %97 = load i32, ptr %x_size, align 4, !tbaa !5
  %98 = load i32, ptr %y_size, align 4, !tbaa !5
  call void @susan_principle(ptr noundef %93, ptr noundef %94, ptr noundef %95, i32 noundef %96, i32 noundef %97, i32 noundef %98)
  %99 = load ptr, ptr %r, align 8, !tbaa !23
  %100 = load ptr, ptr %in, align 8, !tbaa !21
  %101 = load i32, ptr %x_size, align 4, !tbaa !5
  %102 = load i32, ptr %y_size, align 4, !tbaa !5
  %mul77 = mul nsw i32 %101, %102
  call void @int_to_uchar(ptr noundef %99, ptr noundef %100, i32 noundef %mul77)
  br label %if.end85

if.else78:                                        ; preds = %sw.bb70
  %103 = load i32, ptr %susan_quick, align 4, !tbaa !5
  %tobool79 = icmp ne i32 %103, 0
  br i1 %tobool79, label %if.then80, label %if.else81

if.then80:                                        ; preds = %if.else78
  %104 = load ptr, ptr %in, align 8, !tbaa !21
  %105 = load ptr, ptr %r, align 8, !tbaa !23
  %106 = load ptr, ptr %bp, align 8, !tbaa !21
  %107 = load i32, ptr %max_no_corners, align 4, !tbaa !5
  %arraydecay = getelementptr inbounds [15000 x %struct.anon], ptr %corner_list, i64 0, i64 0
  %108 = load i32, ptr %x_size, align 4, !tbaa !5
  %109 = load i32, ptr %y_size, align 4, !tbaa !5
  call void @susan_corners_quick(ptr noundef %104, ptr noundef %105, ptr noundef %106, i32 noundef %107, ptr noundef %arraydecay, i32 noundef %108, i32 noundef %109)
  br label %if.end83

if.else81:                                        ; preds = %if.else78
  %110 = load ptr, ptr %in, align 8, !tbaa !21
  %111 = load ptr, ptr %r, align 8, !tbaa !23
  %112 = load ptr, ptr %bp, align 8, !tbaa !21
  %113 = load i32, ptr %max_no_corners, align 4, !tbaa !5
  %arraydecay82 = getelementptr inbounds [15000 x %struct.anon], ptr %corner_list, i64 0, i64 0
  %114 = load i32, ptr %x_size, align 4, !tbaa !5
  %115 = load i32, ptr %y_size, align 4, !tbaa !5
  call void @susan_corners(ptr noundef %110, ptr noundef %111, ptr noundef %112, i32 noundef %113, ptr noundef %arraydecay82, i32 noundef %114, i32 noundef %115)
  br label %if.end83

if.end83:                                         ; preds = %if.else81, %if.then80
  %116 = load ptr, ptr %in, align 8, !tbaa !21
  %arraydecay84 = getelementptr inbounds [15000 x %struct.anon], ptr %corner_list, i64 0, i64 0
  %117 = load i32, ptr %x_size, align 4, !tbaa !5
  %118 = load i32, ptr %drawing_mode, align 4, !tbaa !5
  call void @corner_draw(ptr noundef %116, ptr noundef %arraydecay84, i32 noundef %117, i32 noundef %118)
  br label %if.end85

if.end85:                                         ; preds = %if.end83, %if.then76
  %119 = load ptr, ptr %bp, align 8, !tbaa !21
  call void @free_brightness_lut(ptr noundef %119)
  %120 = load ptr, ptr %r, align 8, !tbaa !23
  call void @free(ptr noundef %120) #10
  br label %sw.epilog86

sw.epilog86:                                      ; preds = %if.end44, %if.end85, %if.end69, %sw.bb45
  %121 = load ptr, ptr %argv.addr, align 8, !tbaa !9
  %arrayidx87 = getelementptr inbounds ptr, ptr %121, i64 2
  %122 = load ptr, ptr %arrayidx87, align 8, !tbaa !21
  %123 = load ptr, ptr %in, align 8, !tbaa !21
  %124 = load i32, ptr %x_size, align 4, !tbaa !5
  %125 = load i32, ptr %y_size, align 4, !tbaa !5
  call void @put_image(ptr noundef %122, ptr noundef %123, i32 noundef %124, i32 noundef %125)
  %126 = load ptr, ptr %in, align 8, !tbaa !21
  call void @free(ptr noundef %126) #10
  call void @llvm.lifetime.end.p0(i64 360000, ptr %corner_list) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %y_size) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %x_size) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %mode) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %max_no_edges) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %max_no_corners) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %susan_quick) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %drawing_mode) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %three_by_three) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %thin_post_proc) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %principle) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %bt) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %argindex) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %r) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %dt) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %mid) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %bp) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %in) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %tcp) #10
  ret void
}

; Function Attrs: inlinehint nounwind willreturn memory(read) uwtable
define available_externally double @atof(ptr noundef nonnull %__nptr) #9 {
entry:
  %__nptr.addr = alloca ptr, align 8
  store ptr %__nptr, ptr %__nptr.addr, align 8, !tbaa !21
  %0 = load ptr, ptr %__nptr.addr, align 8, !tbaa !21
  %call = call double @strtod(ptr noundef %0, ptr noundef null) #10
  ret double %call
}

; Function Attrs: inlinehint nounwind willreturn memory(read) uwtable
define available_externally i32 @atoi(ptr noundef nonnull %__nptr) #9 {
entry:
  %__nptr.addr = alloca ptr, align 8
  store ptr %__nptr, ptr %__nptr.addr, align 8, !tbaa !21
  %0 = load ptr, ptr %__nptr.addr, align 8, !tbaa !21
  %call = call i64 @strtol(ptr noundef %0, ptr noundef null, i32 noundef 10) #10
  %conv = trunc i64 %call to i32
  ret i32 %conv
}

; Function Attrs: nounwind
declare i64 @strtol(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: nounwind
declare double @strtod(ptr noundef, ptr noundef) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { inlinehint nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind }
attributes #11 = { noreturn nounwind }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { nounwind willreturn memory(read) }

!llvm.ident = !{!0, !0}
!llvm.module.flags = !{!1, !2, !3, !4}

!0 = !{!"clang version 21.1.8 (https://github.com/llvm/llvm-project.git 2078da43e25a4623cab2d0d60decddf709aaea28)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"p2 omnipotent char", !11, i64 0}
!11 = !{!"any p2 pointer", !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"p1 _ZTS8_IO_FILE", !12, i64 0}
!15 = !{!16, !16, i64 0}
!16 = !{!"long", !7, i64 0}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.unroll.disable"}
!19 = distinct !{!19, !18}
!20 = distinct !{!20, !18}
!21 = !{!22, !22, i64 0}
!22 = !{!"p1 omnipotent char", !12, i64 0}
!23 = !{!24, !24, i64 0}
!24 = !{!"p1 int", !12, i64 0}
!25 = !{!7, !7, i64 0}
!26 = distinct !{!26, !18}
!27 = distinct !{!27, !18}
!28 = !{!29, !29, i64 0}
!29 = !{!"double", !7, i64 0}
!30 = distinct !{!30, !18}
!31 = distinct !{!31, !18}
!32 = distinct !{!32, !18}
!33 = distinct !{!33, !18}
!34 = distinct !{!34, !18}
!35 = distinct !{!35, !18}
!36 = distinct !{!36, !18}
!37 = distinct !{!37, !18}
!38 = distinct !{!38, !18}
!39 = distinct !{!39, !18}
!40 = distinct !{!40, !18}
!41 = !{!42, !42, i64 0}
!42 = !{!"float", !7, i64 0}
!43 = distinct !{!43, !18}
!44 = distinct !{!44, !18}
!45 = distinct !{!45, !18}
!46 = distinct !{!46, !18}
!47 = distinct !{!47, !18}
!48 = distinct !{!48, !18}
!49 = distinct !{!49, !18}
!50 = distinct !{!50, !18}
!51 = distinct !{!51, !18}
!52 = distinct !{!52, !18}
!53 = distinct !{!53, !18}
!54 = distinct !{!54, !18}
!55 = distinct !{!55, !18}
!56 = distinct !{!56, !18}
!57 = distinct !{!57, !18}
!58 = distinct !{!58, !18}
!59 = distinct !{!59, !18}
!60 = distinct !{!60, !18}
!61 = distinct !{!61, !18}
!62 = distinct !{!62, !18}
!63 = distinct !{!63, !18}
!64 = distinct !{!64, !18}
!65 = !{!12, !12, i64 0}
!66 = !{!67, !6, i64 8}
!67 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20}
!68 = !{!67, !6, i64 4}
!69 = !{!67, !6, i64 0}
!70 = distinct !{!70, !18}
!71 = distinct !{!71, !18}
!72 = distinct !{!72, !18}
!73 = !{!67, !6, i64 12}
!74 = !{!67, !6, i64 16}
!75 = !{!67, !6, i64 20}
!76 = distinct !{!76, !18}
!77 = distinct !{!77, !18}
!78 = distinct !{!78, !18}
!79 = distinct !{!79, !18}
!80 = distinct !{!80, !18}
!81 = distinct !{!81, !18}
!82 = distinct !{!82, !18}
