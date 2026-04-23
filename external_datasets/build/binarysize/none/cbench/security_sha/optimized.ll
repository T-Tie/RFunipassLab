; ModuleID = '/root/exp/RFunipassLab/external_datasets/build/ir_build/cbench/security_sha/security_sha.linked.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SHA_INFO = type { [5 x i64], i64, i64, [16 x i64] }

@.str = private unnamed_addr constant [15 x i8] c"_finfo_dataset\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"rt\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"\0AError: Can't find dataset!\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"%08lx %08lx %08lx %08lx %08lx\0A\00", align 1
@stdin = external global ptr, align 8
@.str.7 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@stderr = external global ptr, align 8
@.str.1.8 = private unnamed_addr constant [30 x i8] c"error opening %s for reading\0A\00", align 1

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
  call void @llvm.lifetime.start.p0(i64 8, ptr %loop_wrap) #7
  store ptr null, ptr %loop_wrap, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 8, ptr %loop_wrap1) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %loop_wrap2) #7
  %call = call noalias ptr @fopen(ptr noundef @.str, ptr noundef @.str.1)
  store ptr %call, ptr %loop_wrap, align 8, !tbaa !13
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr @stderr, align 8, !tbaa !13
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef @.str.2) #7
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
  %7 = load i64, ptr %loop_wrap1, align 8, !tbaa !15
  %add = add nsw i64 %7, 1
  %8 = load i64, ptr %loop_wrap2, align 8, !tbaa !15
  %cmp5 = icmp eq i64 %add, %8
  %conv = zext i1 %cmp5 to i32
  %call6 = call i32 @main1(i32 noundef %5, ptr noundef %6, i32 noundef %conv)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i64, ptr %loop_wrap1, align 8, !tbaa !15
  %inc = add nsw i64 %9, 1
  store i64 %inc, ptr %loop_wrap1, align 8, !tbaa !15
  br label %for.cond, !llvm.loop !17

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %loop_wrap2) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %loop_wrap1) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %loop_wrap) #7
  %10 = load i32, ptr %retval, align 4
  ret i32 %10
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
define dso_local void @sha_init(ptr noundef %sha_info) #0 {
entry:
  %sha_info.addr = alloca ptr, align 8
  store ptr %sha_info, ptr %sha_info.addr, align 8, !tbaa !19
  %0 = load ptr, ptr %sha_info.addr, align 8, !tbaa !19
  %digest = getelementptr inbounds nuw %struct.SHA_INFO, ptr %0, i32 0, i32 0
  %arrayidx = getelementptr inbounds [5 x i64], ptr %digest, i64 0, i64 0
  store i64 1732584193, ptr %arrayidx, align 8, !tbaa !15
  %1 = load ptr, ptr %sha_info.addr, align 8, !tbaa !19
  %digest1 = getelementptr inbounds nuw %struct.SHA_INFO, ptr %1, i32 0, i32 0
  %arrayidx2 = getelementptr inbounds [5 x i64], ptr %digest1, i64 0, i64 1
  store i64 4023233417, ptr %arrayidx2, align 8, !tbaa !15
  %2 = load ptr, ptr %sha_info.addr, align 8, !tbaa !19
  %digest3 = getelementptr inbounds nuw %struct.SHA_INFO, ptr %2, i32 0, i32 0
  %arrayidx4 = getelementptr inbounds [5 x i64], ptr %digest3, i64 0, i64 2
  store i64 2562383102, ptr %arrayidx4, align 8, !tbaa !15
  %3 = load ptr, ptr %sha_info.addr, align 8, !tbaa !19
  %digest5 = getelementptr inbounds nuw %struct.SHA_INFO, ptr %3, i32 0, i32 0
  %arrayidx6 = getelementptr inbounds [5 x i64], ptr %digest5, i64 0, i64 3
  store i64 271733878, ptr %arrayidx6, align 8, !tbaa !15
  %4 = load ptr, ptr %sha_info.addr, align 8, !tbaa !19
  %digest7 = getelementptr inbounds nuw %struct.SHA_INFO, ptr %4, i32 0, i32 0
  %arrayidx8 = getelementptr inbounds [5 x i64], ptr %digest7, i64 0, i64 4
  store i64 3285377520, ptr %arrayidx8, align 8, !tbaa !15
  %5 = load ptr, ptr %sha_info.addr, align 8, !tbaa !19
  %count_lo = getelementptr inbounds nuw %struct.SHA_INFO, ptr %5, i32 0, i32 1
  store i64 0, ptr %count_lo, align 8, !tbaa !20
  %6 = load ptr, ptr %sha_info.addr, align 8, !tbaa !19
  %count_hi = getelementptr inbounds nuw %struct.SHA_INFO, ptr %6, i32 0, i32 2
  store i64 0, ptr %count_hi, align 8, !tbaa !22
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @sha_update(ptr noundef %sha_info, ptr noundef %buffer, i32 noundef %count) #0 {
entry:
  %sha_info.addr = alloca ptr, align 8
  %buffer.addr = alloca ptr, align 8
  %count.addr = alloca i32, align 4
  store ptr %sha_info, ptr %sha_info.addr, align 8, !tbaa !19
  store ptr %buffer, ptr %buffer.addr, align 8, !tbaa !23
  store i32 %count, ptr %count.addr, align 4, !tbaa !5
  %0 = load ptr, ptr %sha_info.addr, align 8, !tbaa !19
  %count_lo = getelementptr inbounds nuw %struct.SHA_INFO, ptr %0, i32 0, i32 1
  %1 = load i64, ptr %count_lo, align 8, !tbaa !20
  %2 = load i32, ptr %count.addr, align 4, !tbaa !5
  %conv = sext i32 %2 to i64
  %shl = shl i64 %conv, 3
  %add = add i64 %1, %shl
  %3 = load ptr, ptr %sha_info.addr, align 8, !tbaa !19
  %count_lo1 = getelementptr inbounds nuw %struct.SHA_INFO, ptr %3, i32 0, i32 1
  %4 = load i64, ptr %count_lo1, align 8, !tbaa !20
  %cmp = icmp ult i64 %add, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %sha_info.addr, align 8, !tbaa !19
  %count_hi = getelementptr inbounds nuw %struct.SHA_INFO, ptr %5, i32 0, i32 2
  %6 = load i64, ptr %count_hi, align 8, !tbaa !22
  %inc = add i64 %6, 1
  store i64 %inc, ptr %count_hi, align 8, !tbaa !22
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load i32, ptr %count.addr, align 4, !tbaa !5
  %conv3 = sext i32 %7 to i64
  %shl4 = shl i64 %conv3, 3
  %8 = load ptr, ptr %sha_info.addr, align 8, !tbaa !19
  %count_lo5 = getelementptr inbounds nuw %struct.SHA_INFO, ptr %8, i32 0, i32 1
  %9 = load i64, ptr %count_lo5, align 8, !tbaa !20
  %add6 = add i64 %9, %shl4
  store i64 %add6, ptr %count_lo5, align 8, !tbaa !20
  %10 = load i32, ptr %count.addr, align 4, !tbaa !5
  %conv7 = sext i32 %10 to i64
  %shr = lshr i64 %conv7, 29
  %11 = load ptr, ptr %sha_info.addr, align 8, !tbaa !19
  %count_hi8 = getelementptr inbounds nuw %struct.SHA_INFO, ptr %11, i32 0, i32 2
  %12 = load i64, ptr %count_hi8, align 8, !tbaa !22
  %add9 = add i64 %12, %shr
  store i64 %add9, ptr %count_hi8, align 8, !tbaa !22
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %13 = load i32, ptr %count.addr, align 4, !tbaa !5
  %cmp10 = icmp sge i32 %13, 64
  br i1 %cmp10, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %14 = load ptr, ptr %sha_info.addr, align 8, !tbaa !19
  %data = getelementptr inbounds nuw %struct.SHA_INFO, ptr %14, i32 0, i32 3
  %arraydecay = getelementptr inbounds [16 x i64], ptr %data, i64 0, i64 0
  %15 = load ptr, ptr %buffer.addr, align 8, !tbaa !23
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arraydecay, ptr align 1 %15, i64 64, i1 false)
  %16 = load ptr, ptr %sha_info.addr, align 8, !tbaa !19
  %data12 = getelementptr inbounds nuw %struct.SHA_INFO, ptr %16, i32 0, i32 3
  %arraydecay13 = getelementptr inbounds [16 x i64], ptr %data12, i64 0, i64 0
  call void @byte_reverse(ptr noundef %arraydecay13, i32 noundef 64)
  %17 = load ptr, ptr %sha_info.addr, align 8, !tbaa !19
  call void @sha_transform(ptr noundef %17)
  %18 = load ptr, ptr %buffer.addr, align 8, !tbaa !23
  %add.ptr = getelementptr inbounds i8, ptr %18, i64 64
  store ptr %add.ptr, ptr %buffer.addr, align 8, !tbaa !23
  %19 = load i32, ptr %count.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %19, 64
  store i32 %sub, ptr %count.addr, align 4, !tbaa !5
  br label %while.cond, !llvm.loop !25

while.end:                                        ; preds = %while.cond
  %20 = load ptr, ptr %sha_info.addr, align 8, !tbaa !19
  %data14 = getelementptr inbounds nuw %struct.SHA_INFO, ptr %20, i32 0, i32 3
  %arraydecay15 = getelementptr inbounds [16 x i64], ptr %data14, i64 0, i64 0
  %21 = load ptr, ptr %buffer.addr, align 8, !tbaa !23
  %22 = load i32, ptr %count.addr, align 4, !tbaa !5
  %conv16 = sext i32 %22 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arraydecay15, ptr align 1 %21, i64 %conv16, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nounwind uwtable
define internal void @byte_reverse(ptr noundef %buffer, i32 noundef %count) #0 {
entry:
  %buffer.addr = alloca ptr, align 8
  %count.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %ct = alloca [4 x i8], align 1
  %cp = alloca ptr, align 8
  store ptr %buffer, ptr %buffer.addr, align 8, !tbaa !26
  store i32 %count, ptr %count.addr, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %ct) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %cp) #7
  %0 = load i32, ptr %count.addr, align 4, !tbaa !5
  %conv = sext i32 %0 to i64
  %div = udiv i64 %conv, 8
  %conv1 = trunc i64 %div to i32
  store i32 %conv1, ptr %count.addr, align 4, !tbaa !5
  %1 = load ptr, ptr %buffer.addr, align 8, !tbaa !26
  store ptr %1, ptr %cp, align 8, !tbaa !23
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %i, align 4, !tbaa !5
  %3 = load i32, ptr %count.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %cp, align 8, !tbaa !23
  %arrayidx = getelementptr inbounds i8, ptr %4, i64 0
  %5 = load i8, ptr %arrayidx, align 1, !tbaa !28
  %arrayidx3 = getelementptr inbounds [4 x i8], ptr %ct, i64 0, i64 0
  store i8 %5, ptr %arrayidx3, align 1, !tbaa !28
  %6 = load ptr, ptr %cp, align 8, !tbaa !23
  %arrayidx4 = getelementptr inbounds i8, ptr %6, i64 1
  %7 = load i8, ptr %arrayidx4, align 1, !tbaa !28
  %arrayidx5 = getelementptr inbounds [4 x i8], ptr %ct, i64 0, i64 1
  store i8 %7, ptr %arrayidx5, align 1, !tbaa !28
  %8 = load ptr, ptr %cp, align 8, !tbaa !23
  %arrayidx6 = getelementptr inbounds i8, ptr %8, i64 2
  %9 = load i8, ptr %arrayidx6, align 1, !tbaa !28
  %arrayidx7 = getelementptr inbounds [4 x i8], ptr %ct, i64 0, i64 2
  store i8 %9, ptr %arrayidx7, align 1, !tbaa !28
  %10 = load ptr, ptr %cp, align 8, !tbaa !23
  %arrayidx8 = getelementptr inbounds i8, ptr %10, i64 3
  %11 = load i8, ptr %arrayidx8, align 1, !tbaa !28
  %arrayidx9 = getelementptr inbounds [4 x i8], ptr %ct, i64 0, i64 3
  store i8 %11, ptr %arrayidx9, align 1, !tbaa !28
  %arrayidx10 = getelementptr inbounds [4 x i8], ptr %ct, i64 0, i64 3
  %12 = load i8, ptr %arrayidx10, align 1, !tbaa !28
  %13 = load ptr, ptr %cp, align 8, !tbaa !23
  %arrayidx11 = getelementptr inbounds i8, ptr %13, i64 0
  store i8 %12, ptr %arrayidx11, align 1, !tbaa !28
  %arrayidx12 = getelementptr inbounds [4 x i8], ptr %ct, i64 0, i64 2
  %14 = load i8, ptr %arrayidx12, align 1, !tbaa !28
  %15 = load ptr, ptr %cp, align 8, !tbaa !23
  %arrayidx13 = getelementptr inbounds i8, ptr %15, i64 1
  store i8 %14, ptr %arrayidx13, align 1, !tbaa !28
  %arrayidx14 = getelementptr inbounds [4 x i8], ptr %ct, i64 0, i64 1
  %16 = load i8, ptr %arrayidx14, align 1, !tbaa !28
  %17 = load ptr, ptr %cp, align 8, !tbaa !23
  %arrayidx15 = getelementptr inbounds i8, ptr %17, i64 2
  store i8 %16, ptr %arrayidx15, align 1, !tbaa !28
  %arrayidx16 = getelementptr inbounds [4 x i8], ptr %ct, i64 0, i64 0
  %18 = load i8, ptr %arrayidx16, align 1, !tbaa !28
  %19 = load ptr, ptr %cp, align 8, !tbaa !23
  %arrayidx17 = getelementptr inbounds i8, ptr %19, i64 3
  store i8 %18, ptr %arrayidx17, align 1, !tbaa !28
  %20 = load ptr, ptr %cp, align 8, !tbaa !23
  %add.ptr = getelementptr inbounds nuw i8, ptr %20, i64 8
  store ptr %add.ptr, ptr %cp, align 8, !tbaa !23
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %21 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %21, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !29

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %cp) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %ct) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @sha_transform(ptr noundef %sha_info) #0 {
entry:
  %sha_info.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %temp = alloca i64, align 8
  %A = alloca i64, align 8
  %B = alloca i64, align 8
  %C = alloca i64, align 8
  %D = alloca i64, align 8
  %E = alloca i64, align 8
  %W = alloca [80 x i64], align 16
  store ptr %sha_info, ptr %sha_info.addr, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %temp) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %A) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %B) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %C) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %D) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %E) #7
  call void @llvm.lifetime.start.p0(i64 640, ptr %W) #7
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, 16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %sha_info.addr, align 8, !tbaa !19
  %data = getelementptr inbounds nuw %struct.SHA_INFO, ptr %1, i32 0, i32 3
  %2 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [16 x i64], ptr %data, i64 0, i64 %idxprom
  %3 = load i64, ptr %arrayidx, align 8, !tbaa !15
  %4 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds [80 x i64], ptr %W, i64 0, i64 %idxprom1
  store i64 %3, ptr %arrayidx2, align 8, !tbaa !15
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %5, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !30

for.end:                                          ; preds = %for.cond
  store i32 16, ptr %i, align 4, !tbaa !5
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc21, %for.end
  %6 = load i32, ptr %i, align 4, !tbaa !5
  %cmp4 = icmp slt i32 %6, 80
  br i1 %cmp4, label %for.body5, label %for.end23

for.body5:                                        ; preds = %for.cond3
  %7 = load i32, ptr %i, align 4, !tbaa !5
  %sub = sub nsw i32 %7, 3
  %idxprom6 = sext i32 %sub to i64
  %arrayidx7 = getelementptr inbounds [80 x i64], ptr %W, i64 0, i64 %idxprom6
  %8 = load i64, ptr %arrayidx7, align 8, !tbaa !15
  %9 = load i32, ptr %i, align 4, !tbaa !5
  %sub8 = sub nsw i32 %9, 8
  %idxprom9 = sext i32 %sub8 to i64
  %arrayidx10 = getelementptr inbounds [80 x i64], ptr %W, i64 0, i64 %idxprom9
  %10 = load i64, ptr %arrayidx10, align 8, !tbaa !15
  %xor = xor i64 %8, %10
  %11 = load i32, ptr %i, align 4, !tbaa !5
  %sub11 = sub nsw i32 %11, 14
  %idxprom12 = sext i32 %sub11 to i64
  %arrayidx13 = getelementptr inbounds [80 x i64], ptr %W, i64 0, i64 %idxprom12
  %12 = load i64, ptr %arrayidx13, align 8, !tbaa !15
  %xor14 = xor i64 %xor, %12
  %13 = load i32, ptr %i, align 4, !tbaa !5
  %sub15 = sub nsw i32 %13, 16
  %idxprom16 = sext i32 %sub15 to i64
  %arrayidx17 = getelementptr inbounds [80 x i64], ptr %W, i64 0, i64 %idxprom16
  %14 = load i64, ptr %arrayidx17, align 8, !tbaa !15
  %xor18 = xor i64 %xor14, %14
  %15 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom19 = sext i32 %15 to i64
  %arrayidx20 = getelementptr inbounds [80 x i64], ptr %W, i64 0, i64 %idxprom19
  store i64 %xor18, ptr %arrayidx20, align 8, !tbaa !15
  br label %for.inc21

for.inc21:                                        ; preds = %for.body5
  %16 = load i32, ptr %i, align 4, !tbaa !5
  %inc22 = add nsw i32 %16, 1
  store i32 %inc22, ptr %i, align 4, !tbaa !5
  br label %for.cond3, !llvm.loop !31

for.end23:                                        ; preds = %for.cond3
  %17 = load ptr, ptr %sha_info.addr, align 8, !tbaa !19
  %digest = getelementptr inbounds nuw %struct.SHA_INFO, ptr %17, i32 0, i32 0
  %arrayidx24 = getelementptr inbounds [5 x i64], ptr %digest, i64 0, i64 0
  %18 = load i64, ptr %arrayidx24, align 8, !tbaa !15
  store i64 %18, ptr %A, align 8, !tbaa !15
  %19 = load ptr, ptr %sha_info.addr, align 8, !tbaa !19
  %digest25 = getelementptr inbounds nuw %struct.SHA_INFO, ptr %19, i32 0, i32 0
  %arrayidx26 = getelementptr inbounds [5 x i64], ptr %digest25, i64 0, i64 1
  %20 = load i64, ptr %arrayidx26, align 8, !tbaa !15
  store i64 %20, ptr %B, align 8, !tbaa !15
  %21 = load ptr, ptr %sha_info.addr, align 8, !tbaa !19
  %digest27 = getelementptr inbounds nuw %struct.SHA_INFO, ptr %21, i32 0, i32 0
  %arrayidx28 = getelementptr inbounds [5 x i64], ptr %digest27, i64 0, i64 2
  %22 = load i64, ptr %arrayidx28, align 8, !tbaa !15
  store i64 %22, ptr %C, align 8, !tbaa !15
  %23 = load ptr, ptr %sha_info.addr, align 8, !tbaa !19
  %digest29 = getelementptr inbounds nuw %struct.SHA_INFO, ptr %23, i32 0, i32 0
  %arrayidx30 = getelementptr inbounds [5 x i64], ptr %digest29, i64 0, i64 3
  %24 = load i64, ptr %arrayidx30, align 8, !tbaa !15
  store i64 %24, ptr %D, align 8, !tbaa !15
  %25 = load ptr, ptr %sha_info.addr, align 8, !tbaa !19
  %digest31 = getelementptr inbounds nuw %struct.SHA_INFO, ptr %25, i32 0, i32 0
  %arrayidx32 = getelementptr inbounds [5 x i64], ptr %digest31, i64 0, i64 4
  %26 = load i64, ptr %arrayidx32, align 8, !tbaa !15
  store i64 %26, ptr %E, align 8, !tbaa !15
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond33

for.cond33:                                       ; preds = %for.inc46, %for.end23
  %27 = load i32, ptr %i, align 4, !tbaa !5
  %cmp34 = icmp slt i32 %27, 20
  br i1 %cmp34, label %for.body35, label %for.end48

for.body35:                                       ; preds = %for.cond33
  %28 = load i64, ptr %A, align 8, !tbaa !15
  %shl = shl i64 %28, 5
  %29 = load i64, ptr %A, align 8, !tbaa !15
  %shr = lshr i64 %29, 27
  %or = or i64 %shl, %shr
  %30 = load i64, ptr %B, align 8, !tbaa !15
  %31 = load i64, ptr %C, align 8, !tbaa !15
  %and = and i64 %30, %31
  %32 = load i64, ptr %B, align 8, !tbaa !15
  %not = xor i64 %32, -1
  %33 = load i64, ptr %D, align 8, !tbaa !15
  %and36 = and i64 %not, %33
  %or37 = or i64 %and, %and36
  %add = add i64 %or, %or37
  %34 = load i64, ptr %E, align 8, !tbaa !15
  %add38 = add i64 %add, %34
  %35 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom39 = sext i32 %35 to i64
  %arrayidx40 = getelementptr inbounds [80 x i64], ptr %W, i64 0, i64 %idxprom39
  %36 = load i64, ptr %arrayidx40, align 8, !tbaa !15
  %add41 = add i64 %add38, %36
  %add42 = add i64 %add41, 1518500249
  store i64 %add42, ptr %temp, align 8, !tbaa !15
  %37 = load i64, ptr %D, align 8, !tbaa !15
  store i64 %37, ptr %E, align 8, !tbaa !15
  %38 = load i64, ptr %C, align 8, !tbaa !15
  store i64 %38, ptr %D, align 8, !tbaa !15
  %39 = load i64, ptr %B, align 8, !tbaa !15
  %shl43 = shl i64 %39, 30
  %40 = load i64, ptr %B, align 8, !tbaa !15
  %shr44 = lshr i64 %40, 2
  %or45 = or i64 %shl43, %shr44
  store i64 %or45, ptr %C, align 8, !tbaa !15
  %41 = load i64, ptr %A, align 8, !tbaa !15
  store i64 %41, ptr %B, align 8, !tbaa !15
  %42 = load i64, ptr %temp, align 8, !tbaa !15
  store i64 %42, ptr %A, align 8, !tbaa !15
  br label %for.inc46

for.inc46:                                        ; preds = %for.body35
  %43 = load i32, ptr %i, align 4, !tbaa !5
  %inc47 = add nsw i32 %43, 1
  store i32 %inc47, ptr %i, align 4, !tbaa !5
  br label %for.cond33, !llvm.loop !32

for.end48:                                        ; preds = %for.cond33
  store i32 20, ptr %i, align 4, !tbaa !5
  br label %for.cond49

for.cond49:                                       ; preds = %for.inc66, %for.end48
  %44 = load i32, ptr %i, align 4, !tbaa !5
  %cmp50 = icmp slt i32 %44, 40
  br i1 %cmp50, label %for.body51, label %for.end68

for.body51:                                       ; preds = %for.cond49
  %45 = load i64, ptr %A, align 8, !tbaa !15
  %shl52 = shl i64 %45, 5
  %46 = load i64, ptr %A, align 8, !tbaa !15
  %shr53 = lshr i64 %46, 27
  %or54 = or i64 %shl52, %shr53
  %47 = load i64, ptr %B, align 8, !tbaa !15
  %48 = load i64, ptr %C, align 8, !tbaa !15
  %xor55 = xor i64 %47, %48
  %49 = load i64, ptr %D, align 8, !tbaa !15
  %xor56 = xor i64 %xor55, %49
  %add57 = add i64 %or54, %xor56
  %50 = load i64, ptr %E, align 8, !tbaa !15
  %add58 = add i64 %add57, %50
  %51 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom59 = sext i32 %51 to i64
  %arrayidx60 = getelementptr inbounds [80 x i64], ptr %W, i64 0, i64 %idxprom59
  %52 = load i64, ptr %arrayidx60, align 8, !tbaa !15
  %add61 = add i64 %add58, %52
  %add62 = add i64 %add61, 1859775393
  store i64 %add62, ptr %temp, align 8, !tbaa !15
  %53 = load i64, ptr %D, align 8, !tbaa !15
  store i64 %53, ptr %E, align 8, !tbaa !15
  %54 = load i64, ptr %C, align 8, !tbaa !15
  store i64 %54, ptr %D, align 8, !tbaa !15
  %55 = load i64, ptr %B, align 8, !tbaa !15
  %shl63 = shl i64 %55, 30
  %56 = load i64, ptr %B, align 8, !tbaa !15
  %shr64 = lshr i64 %56, 2
  %or65 = or i64 %shl63, %shr64
  store i64 %or65, ptr %C, align 8, !tbaa !15
  %57 = load i64, ptr %A, align 8, !tbaa !15
  store i64 %57, ptr %B, align 8, !tbaa !15
  %58 = load i64, ptr %temp, align 8, !tbaa !15
  store i64 %58, ptr %A, align 8, !tbaa !15
  br label %for.inc66

for.inc66:                                        ; preds = %for.body51
  %59 = load i32, ptr %i, align 4, !tbaa !5
  %inc67 = add nsw i32 %59, 1
  store i32 %inc67, ptr %i, align 4, !tbaa !5
  br label %for.cond49, !llvm.loop !33

for.end68:                                        ; preds = %for.cond49
  store i32 40, ptr %i, align 4, !tbaa !5
  br label %for.cond69

for.cond69:                                       ; preds = %for.inc89, %for.end68
  %60 = load i32, ptr %i, align 4, !tbaa !5
  %cmp70 = icmp slt i32 %60, 60
  br i1 %cmp70, label %for.body71, label %for.end91

for.body71:                                       ; preds = %for.cond69
  %61 = load i64, ptr %A, align 8, !tbaa !15
  %shl72 = shl i64 %61, 5
  %62 = load i64, ptr %A, align 8, !tbaa !15
  %shr73 = lshr i64 %62, 27
  %or74 = or i64 %shl72, %shr73
  %63 = load i64, ptr %B, align 8, !tbaa !15
  %64 = load i64, ptr %C, align 8, !tbaa !15
  %and75 = and i64 %63, %64
  %65 = load i64, ptr %B, align 8, !tbaa !15
  %66 = load i64, ptr %D, align 8, !tbaa !15
  %and76 = and i64 %65, %66
  %or77 = or i64 %and75, %and76
  %67 = load i64, ptr %C, align 8, !tbaa !15
  %68 = load i64, ptr %D, align 8, !tbaa !15
  %and78 = and i64 %67, %68
  %or79 = or i64 %or77, %and78
  %add80 = add i64 %or74, %or79
  %69 = load i64, ptr %E, align 8, !tbaa !15
  %add81 = add i64 %add80, %69
  %70 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom82 = sext i32 %70 to i64
  %arrayidx83 = getelementptr inbounds [80 x i64], ptr %W, i64 0, i64 %idxprom82
  %71 = load i64, ptr %arrayidx83, align 8, !tbaa !15
  %add84 = add i64 %add81, %71
  %add85 = add i64 %add84, 2400959708
  store i64 %add85, ptr %temp, align 8, !tbaa !15
  %72 = load i64, ptr %D, align 8, !tbaa !15
  store i64 %72, ptr %E, align 8, !tbaa !15
  %73 = load i64, ptr %C, align 8, !tbaa !15
  store i64 %73, ptr %D, align 8, !tbaa !15
  %74 = load i64, ptr %B, align 8, !tbaa !15
  %shl86 = shl i64 %74, 30
  %75 = load i64, ptr %B, align 8, !tbaa !15
  %shr87 = lshr i64 %75, 2
  %or88 = or i64 %shl86, %shr87
  store i64 %or88, ptr %C, align 8, !tbaa !15
  %76 = load i64, ptr %A, align 8, !tbaa !15
  store i64 %76, ptr %B, align 8, !tbaa !15
  %77 = load i64, ptr %temp, align 8, !tbaa !15
  store i64 %77, ptr %A, align 8, !tbaa !15
  br label %for.inc89

for.inc89:                                        ; preds = %for.body71
  %78 = load i32, ptr %i, align 4, !tbaa !5
  %inc90 = add nsw i32 %78, 1
  store i32 %inc90, ptr %i, align 4, !tbaa !5
  br label %for.cond69, !llvm.loop !34

for.end91:                                        ; preds = %for.cond69
  store i32 60, ptr %i, align 4, !tbaa !5
  br label %for.cond92

for.cond92:                                       ; preds = %for.inc109, %for.end91
  %79 = load i32, ptr %i, align 4, !tbaa !5
  %cmp93 = icmp slt i32 %79, 80
  br i1 %cmp93, label %for.body94, label %for.end111

for.body94:                                       ; preds = %for.cond92
  %80 = load i64, ptr %A, align 8, !tbaa !15
  %shl95 = shl i64 %80, 5
  %81 = load i64, ptr %A, align 8, !tbaa !15
  %shr96 = lshr i64 %81, 27
  %or97 = or i64 %shl95, %shr96
  %82 = load i64, ptr %B, align 8, !tbaa !15
  %83 = load i64, ptr %C, align 8, !tbaa !15
  %xor98 = xor i64 %82, %83
  %84 = load i64, ptr %D, align 8, !tbaa !15
  %xor99 = xor i64 %xor98, %84
  %add100 = add i64 %or97, %xor99
  %85 = load i64, ptr %E, align 8, !tbaa !15
  %add101 = add i64 %add100, %85
  %86 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom102 = sext i32 %86 to i64
  %arrayidx103 = getelementptr inbounds [80 x i64], ptr %W, i64 0, i64 %idxprom102
  %87 = load i64, ptr %arrayidx103, align 8, !tbaa !15
  %add104 = add i64 %add101, %87
  %add105 = add i64 %add104, 3395469782
  store i64 %add105, ptr %temp, align 8, !tbaa !15
  %88 = load i64, ptr %D, align 8, !tbaa !15
  store i64 %88, ptr %E, align 8, !tbaa !15
  %89 = load i64, ptr %C, align 8, !tbaa !15
  store i64 %89, ptr %D, align 8, !tbaa !15
  %90 = load i64, ptr %B, align 8, !tbaa !15
  %shl106 = shl i64 %90, 30
  %91 = load i64, ptr %B, align 8, !tbaa !15
  %shr107 = lshr i64 %91, 2
  %or108 = or i64 %shl106, %shr107
  store i64 %or108, ptr %C, align 8, !tbaa !15
  %92 = load i64, ptr %A, align 8, !tbaa !15
  store i64 %92, ptr %B, align 8, !tbaa !15
  %93 = load i64, ptr %temp, align 8, !tbaa !15
  store i64 %93, ptr %A, align 8, !tbaa !15
  br label %for.inc109

for.inc109:                                       ; preds = %for.body94
  %94 = load i32, ptr %i, align 4, !tbaa !5
  %inc110 = add nsw i32 %94, 1
  store i32 %inc110, ptr %i, align 4, !tbaa !5
  br label %for.cond92, !llvm.loop !35

for.end111:                                       ; preds = %for.cond92
  %95 = load i64, ptr %A, align 8, !tbaa !15
  %96 = load ptr, ptr %sha_info.addr, align 8, !tbaa !19
  %digest112 = getelementptr inbounds nuw %struct.SHA_INFO, ptr %96, i32 0, i32 0
  %arrayidx113 = getelementptr inbounds [5 x i64], ptr %digest112, i64 0, i64 0
  %97 = load i64, ptr %arrayidx113, align 8, !tbaa !15
  %add114 = add i64 %97, %95
  store i64 %add114, ptr %arrayidx113, align 8, !tbaa !15
  %98 = load i64, ptr %B, align 8, !tbaa !15
  %99 = load ptr, ptr %sha_info.addr, align 8, !tbaa !19
  %digest115 = getelementptr inbounds nuw %struct.SHA_INFO, ptr %99, i32 0, i32 0
  %arrayidx116 = getelementptr inbounds [5 x i64], ptr %digest115, i64 0, i64 1
  %100 = load i64, ptr %arrayidx116, align 8, !tbaa !15
  %add117 = add i64 %100, %98
  store i64 %add117, ptr %arrayidx116, align 8, !tbaa !15
  %101 = load i64, ptr %C, align 8, !tbaa !15
  %102 = load ptr, ptr %sha_info.addr, align 8, !tbaa !19
  %digest118 = getelementptr inbounds nuw %struct.SHA_INFO, ptr %102, i32 0, i32 0
  %arrayidx119 = getelementptr inbounds [5 x i64], ptr %digest118, i64 0, i64 2
  %103 = load i64, ptr %arrayidx119, align 8, !tbaa !15
  %add120 = add i64 %103, %101
  store i64 %add120, ptr %arrayidx119, align 8, !tbaa !15
  %104 = load i64, ptr %D, align 8, !tbaa !15
  %105 = load ptr, ptr %sha_info.addr, align 8, !tbaa !19
  %digest121 = getelementptr inbounds nuw %struct.SHA_INFO, ptr %105, i32 0, i32 0
  %arrayidx122 = getelementptr inbounds [5 x i64], ptr %digest121, i64 0, i64 3
  %106 = load i64, ptr %arrayidx122, align 8, !tbaa !15
  %add123 = add i64 %106, %104
  store i64 %add123, ptr %arrayidx122, align 8, !tbaa !15
  %107 = load i64, ptr %E, align 8, !tbaa !15
  %108 = load ptr, ptr %sha_info.addr, align 8, !tbaa !19
  %digest124 = getelementptr inbounds nuw %struct.SHA_INFO, ptr %108, i32 0, i32 0
  %arrayidx125 = getelementptr inbounds [5 x i64], ptr %digest124, i64 0, i64 4
  %109 = load i64, ptr %arrayidx125, align 8, !tbaa !15
  %add126 = add i64 %109, %107
  store i64 %add126, ptr %arrayidx125, align 8, !tbaa !15
  call void @llvm.lifetime.end.p0(i64 640, ptr %W) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %E) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %D) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %C) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %B) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %A) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %temp) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #7
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @sha_final(ptr noundef %sha_info) #0 {
entry:
  %sha_info.addr = alloca ptr, align 8
  %count = alloca i32, align 4
  %lo_bit_count = alloca i64, align 8
  %hi_bit_count = alloca i64, align 8
  store ptr %sha_info, ptr %sha_info.addr, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 4, ptr %count) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %lo_bit_count) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %hi_bit_count) #7
  %0 = load ptr, ptr %sha_info.addr, align 8, !tbaa !19
  %count_lo = getelementptr inbounds nuw %struct.SHA_INFO, ptr %0, i32 0, i32 1
  %1 = load i64, ptr %count_lo, align 8, !tbaa !20
  store i64 %1, ptr %lo_bit_count, align 8, !tbaa !15
  %2 = load ptr, ptr %sha_info.addr, align 8, !tbaa !19
  %count_hi = getelementptr inbounds nuw %struct.SHA_INFO, ptr %2, i32 0, i32 2
  %3 = load i64, ptr %count_hi, align 8, !tbaa !22
  store i64 %3, ptr %hi_bit_count, align 8, !tbaa !15
  %4 = load i64, ptr %lo_bit_count, align 8, !tbaa !15
  %shr = lshr i64 %4, 3
  %and = and i64 %shr, 63
  %conv = trunc i64 %and to i32
  store i32 %conv, ptr %count, align 4, !tbaa !5
  %5 = load ptr, ptr %sha_info.addr, align 8, !tbaa !19
  %data = getelementptr inbounds nuw %struct.SHA_INFO, ptr %5, i32 0, i32 3
  %arraydecay = getelementptr inbounds [16 x i64], ptr %data, i64 0, i64 0
  %6 = load i32, ptr %count, align 4, !tbaa !5
  %inc = add nsw i32 %6, 1
  store i32 %inc, ptr %count, align 4, !tbaa !5
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds i8, ptr %arraydecay, i64 %idxprom
  store i8 -128, ptr %arrayidx, align 1, !tbaa !28
  %7 = load i32, ptr %count, align 4, !tbaa !5
  %cmp = icmp sgt i32 %7, 56
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %8 = load ptr, ptr %sha_info.addr, align 8, !tbaa !19
  %data2 = getelementptr inbounds nuw %struct.SHA_INFO, ptr %8, i32 0, i32 3
  %9 = load i32, ptr %count, align 4, !tbaa !5
  %idx.ext = sext i32 %9 to i64
  %add.ptr = getelementptr inbounds i8, ptr %data2, i64 %idx.ext
  %10 = load i32, ptr %count, align 4, !tbaa !5
  %sub = sub nsw i32 64, %10
  %conv3 = sext i32 %sub to i64
  call void @llvm.memset.p0.i64(ptr align 1 %add.ptr, i8 0, i64 %conv3, i1 false)
  %11 = load ptr, ptr %sha_info.addr, align 8, !tbaa !19
  %data4 = getelementptr inbounds nuw %struct.SHA_INFO, ptr %11, i32 0, i32 3
  %arraydecay5 = getelementptr inbounds [16 x i64], ptr %data4, i64 0, i64 0
  call void @byte_reverse(ptr noundef %arraydecay5, i32 noundef 64)
  %12 = load ptr, ptr %sha_info.addr, align 8, !tbaa !19
  call void @sha_transform(ptr noundef %12)
  %13 = load ptr, ptr %sha_info.addr, align 8, !tbaa !19
  %data6 = getelementptr inbounds nuw %struct.SHA_INFO, ptr %13, i32 0, i32 3
  call void @llvm.memset.p0.i64(ptr align 8 %data6, i8 0, i64 56, i1 false)
  br label %if.end

if.else:                                          ; preds = %entry
  %14 = load ptr, ptr %sha_info.addr, align 8, !tbaa !19
  %data7 = getelementptr inbounds nuw %struct.SHA_INFO, ptr %14, i32 0, i32 3
  %15 = load i32, ptr %count, align 4, !tbaa !5
  %idx.ext8 = sext i32 %15 to i64
  %add.ptr9 = getelementptr inbounds i8, ptr %data7, i64 %idx.ext8
  %16 = load i32, ptr %count, align 4, !tbaa !5
  %sub10 = sub nsw i32 56, %16
  %conv11 = sext i32 %sub10 to i64
  call void @llvm.memset.p0.i64(ptr align 1 %add.ptr9, i8 0, i64 %conv11, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %17 = load ptr, ptr %sha_info.addr, align 8, !tbaa !19
  %data12 = getelementptr inbounds nuw %struct.SHA_INFO, ptr %17, i32 0, i32 3
  %arraydecay13 = getelementptr inbounds [16 x i64], ptr %data12, i64 0, i64 0
  call void @byte_reverse(ptr noundef %arraydecay13, i32 noundef 64)
  %18 = load i64, ptr %hi_bit_count, align 8, !tbaa !15
  %19 = load ptr, ptr %sha_info.addr, align 8, !tbaa !19
  %data14 = getelementptr inbounds nuw %struct.SHA_INFO, ptr %19, i32 0, i32 3
  %arrayidx15 = getelementptr inbounds [16 x i64], ptr %data14, i64 0, i64 14
  store i64 %18, ptr %arrayidx15, align 8, !tbaa !15
  %20 = load i64, ptr %lo_bit_count, align 8, !tbaa !15
  %21 = load ptr, ptr %sha_info.addr, align 8, !tbaa !19
  %data16 = getelementptr inbounds nuw %struct.SHA_INFO, ptr %21, i32 0, i32 3
  %arrayidx17 = getelementptr inbounds [16 x i64], ptr %data16, i64 0, i64 15
  store i64 %20, ptr %arrayidx17, align 8, !tbaa !15
  %22 = load ptr, ptr %sha_info.addr, align 8, !tbaa !19
  call void @sha_transform(ptr noundef %22)
  call void @llvm.lifetime.end.p0(i64 8, ptr %hi_bit_count) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %lo_bit_count) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %count) #7
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nounwind uwtable
define dso_local void @sha_stream(ptr noundef %sha_info, ptr noundef %fin) #0 {
entry:
  %sha_info.addr = alloca ptr, align 8
  %fin.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %data = alloca [8192 x i8], align 16
  store ptr %sha_info, ptr %sha_info.addr, align 8, !tbaa !19
  store ptr %fin, ptr %fin.addr, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #7
  call void @llvm.lifetime.start.p0(i64 8192, ptr %data) #7
  %0 = load ptr, ptr %sha_info.addr, align 8, !tbaa !19
  call void @sha_init(ptr noundef %0)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %arraydecay = getelementptr inbounds [8192 x i8], ptr %data, i64 0, i64 0
  %1 = load ptr, ptr %fin.addr, align 8, !tbaa !13
  %call = call i64 @fread(ptr noundef %arraydecay, i64 noundef 1, i64 noundef 8192, ptr noundef %1)
  %conv = trunc i64 %call to i32
  store i32 %conv, ptr %i, align 4, !tbaa !5
  %cmp = icmp sgt i32 %conv, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %sha_info.addr, align 8, !tbaa !19
  %arraydecay2 = getelementptr inbounds [8192 x i8], ptr %data, i64 0, i64 0
  %3 = load i32, ptr %i, align 4, !tbaa !5
  call void @sha_update(ptr noundef %2, ptr noundef %arraydecay2, i32 noundef %3)
  br label %while.cond, !llvm.loop !36

while.end:                                        ; preds = %while.cond
  %4 = load ptr, ptr %sha_info.addr, align 8, !tbaa !19
  call void @sha_final(ptr noundef %4)
  call void @llvm.lifetime.end.p0(i64 8192, ptr %data) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #7
  ret void
}

declare i64 @fread(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define dso_local void @sha_print(ptr noundef %sha_info) #0 {
entry:
  %sha_info.addr = alloca ptr, align 8
  store ptr %sha_info, ptr %sha_info.addr, align 8, !tbaa !19
  %0 = load ptr, ptr %sha_info.addr, align 8, !tbaa !19
  %digest = getelementptr inbounds nuw %struct.SHA_INFO, ptr %0, i32 0, i32 0
  %arrayidx = getelementptr inbounds [5 x i64], ptr %digest, i64 0, i64 0
  %1 = load i64, ptr %arrayidx, align 8, !tbaa !15
  %2 = load ptr, ptr %sha_info.addr, align 8, !tbaa !19
  %digest1 = getelementptr inbounds nuw %struct.SHA_INFO, ptr %2, i32 0, i32 0
  %arrayidx2 = getelementptr inbounds [5 x i64], ptr %digest1, i64 0, i64 1
  %3 = load i64, ptr %arrayidx2, align 8, !tbaa !15
  %4 = load ptr, ptr %sha_info.addr, align 8, !tbaa !19
  %digest3 = getelementptr inbounds nuw %struct.SHA_INFO, ptr %4, i32 0, i32 0
  %arrayidx4 = getelementptr inbounds [5 x i64], ptr %digest3, i64 0, i64 2
  %5 = load i64, ptr %arrayidx4, align 8, !tbaa !15
  %6 = load ptr, ptr %sha_info.addr, align 8, !tbaa !19
  %digest5 = getelementptr inbounds nuw %struct.SHA_INFO, ptr %6, i32 0, i32 0
  %arrayidx6 = getelementptr inbounds [5 x i64], ptr %digest5, i64 0, i64 3
  %7 = load i64, ptr %arrayidx6, align 8, !tbaa !15
  %8 = load ptr, ptr %sha_info.addr, align 8, !tbaa !19
  %digest7 = getelementptr inbounds nuw %struct.SHA_INFO, ptr %8, i32 0, i32 0
  %arrayidx8 = getelementptr inbounds [5 x i64], ptr %digest7, i64 0, i64 4
  %9 = load i64, ptr %arrayidx8, align 8, !tbaa !15
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.4, i64 noundef %1, i64 noundef %3, i64 noundef %5, i64 noundef %7, i64 noundef %9)
  ret void
}

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: nounwind uwtable
define dso_local i32 @main1(i32 noundef %argc, ptr noundef %argv, i32 noundef %print) #0 {
entry:
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %print.addr = alloca i32, align 4
  %fin = alloca ptr, align 8
  %sha_info = alloca %struct.SHA_INFO, align 8
  store i32 %argc, ptr %argc.addr, align 4, !tbaa !5
  store ptr %argv, ptr %argv.addr, align 8, !tbaa !9
  store i32 %print, ptr %print.addr, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %fin) #7
  call void @llvm.lifetime.start.p0(i64 184, ptr %sha_info) #7
  %0 = load i32, ptr %argc.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @stdin, align 8, !tbaa !13
  store ptr %1, ptr %fin, align 8, !tbaa !13
  %2 = load ptr, ptr %fin, align 8, !tbaa !13
  call void @sha_stream(ptr noundef %sha_info, ptr noundef %2)
  %3 = load i32, ptr %print.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then1, label %if.end

if.then1:                                         ; preds = %if.then
  call void @sha_print(ptr noundef %sha_info)
  br label %if.end

if.end:                                           ; preds = %if.then1, %if.then
  br label %if.end12

if.else:                                          ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end11, %if.else
  %4 = load i32, ptr %argc.addr, align 4, !tbaa !5
  %dec = add nsw i32 %4, -1
  store i32 %dec, ptr %argc.addr, align 4, !tbaa !5
  %tobool2 = icmp ne i32 %dec, 0
  br i1 %tobool2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load ptr, ptr %argv.addr, align 8, !tbaa !9
  %incdec.ptr = getelementptr inbounds nuw ptr, ptr %5, i32 1
  store ptr %incdec.ptr, ptr %argv.addr, align 8, !tbaa !9
  %6 = load ptr, ptr %incdec.ptr, align 8, !tbaa !23
  %call = call noalias ptr @fopen(ptr noundef %6, ptr noundef @.str.7)
  store ptr %call, ptr %fin, align 8, !tbaa !13
  %7 = load ptr, ptr %fin, align 8, !tbaa !13
  %cmp3 = icmp eq ptr %7, null
  br i1 %cmp3, label %if.then4, label %if.else6

if.then4:                                         ; preds = %while.body
  %8 = load ptr, ptr @stderr, align 8, !tbaa !13
  %9 = load ptr, ptr %argv.addr, align 8, !tbaa !9
  %10 = load ptr, ptr %9, align 8, !tbaa !23
  %call5 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef @.str.1.8, ptr noundef %10) #7
  call void @exit(i32 noundef 1) #8
  unreachable

if.else6:                                         ; preds = %while.body
  %11 = load ptr, ptr %fin, align 8, !tbaa !13
  call void @sha_stream(ptr noundef %sha_info, ptr noundef %11)
  %12 = load i32, ptr %print.addr, align 4, !tbaa !5
  %tobool7 = icmp ne i32 %12, 0
  br i1 %tobool7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.else6
  call void @sha_print(ptr noundef %sha_info)
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.else6
  %13 = load ptr, ptr %fin, align 8, !tbaa !13
  %call10 = call i32 @fclose(ptr noundef %13)
  br label %if.end11

if.end11:                                         ; preds = %if.end9
  br label %while.cond, !llvm.loop !37

while.end:                                        ; preds = %while.cond
  br label %if.end12

if.end12:                                         ; preds = %while.end, %if.end
  call void @llvm.lifetime.end.p0(i64 184, ptr %sha_info) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %fin) #7
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }

!llvm.ident = !{!0, !0, !0}
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
!19 = !{!12, !12, i64 0}
!20 = !{!21, !16, i64 40}
!21 = !{!"", !7, i64 0, !16, i64 40, !16, i64 48, !7, i64 56}
!22 = !{!21, !16, i64 48}
!23 = !{!24, !24, i64 0}
!24 = !{!"p1 omnipotent char", !12, i64 0}
!25 = distinct !{!25, !18}
!26 = !{!27, !27, i64 0}
!27 = !{!"p1 long", !12, i64 0}
!28 = !{!7, !7, i64 0}
!29 = distinct !{!29, !18}
!30 = distinct !{!30, !18}
!31 = distinct !{!31, !18}
!32 = distinct !{!32, !18}
!33 = distinct !{!33, !18}
!34 = distinct !{!34, !18}
!35 = distinct !{!35, !18}
!36 = distinct !{!36, !18}
!37 = distinct !{!37, !18}
