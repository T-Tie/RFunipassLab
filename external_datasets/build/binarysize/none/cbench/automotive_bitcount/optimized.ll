; ModuleID = '/root/exp/RFunipassLab/external_datasets/build/ir_build/cbench/automotive_bitcount/automotive_bitcount.linked.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { i64 }
%struct.bfile = type { ptr, i8, i8, i8, i8 }

@bits = internal global [256 x i8] c"\00\01\01\02\01\02\02\03\01\02\02\03\02\03\03\04\01\02\02\03\02\03\03\04\02\03\03\04\03\04\04\05\01\02\02\03\02\03\03\04\02\03\03\04\03\04\04\05\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\01\02\02\03\02\03\03\04\02\03\03\04\03\04\04\05\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\03\04\04\05\04\05\05\06\04\05\05\06\05\06\06\07\01\02\02\03\02\03\03\04\02\03\03\04\03\04\04\05\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\03\04\04\05\04\05\05\06\04\05\05\06\05\06\06\07\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\03\04\04\05\04\05\05\06\04\05\05\06\05\06\06\07\03\04\04\05\04\05\05\06\04\05\05\06\05\06\06\07\04\05\05\06\05\06\06\07\05\06\06\07\06\07\07\08", align 16
@bits.1 = internal global [256 x i8] c"\00\01\01\02\01\02\02\03\01\02\02\03\02\03\03\04\01\02\02\03\02\03\03\04\02\03\03\04\03\04\04\05\01\02\02\03\02\03\03\04\02\03\03\04\03\04\04\05\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\01\02\02\03\02\03\03\04\02\03\03\04\03\04\04\05\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\03\04\04\05\04\05\05\06\04\05\05\06\05\06\06\07\01\02\02\03\02\03\03\04\02\03\03\04\03\04\04\05\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\03\04\04\05\04\05\05\06\04\05\05\06\05\06\06\07\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\03\04\04\05\04\05\05\06\04\05\05\06\05\06\06\07\03\04\04\05\04\05\05\06\04\05\05\06\05\06\06\07\04\05\05\06\05\06\06\07\05\06\06\07\06\07\07\08", align 16
@main1.pBitCntFunc = internal global [7 x ptr] [ptr @bit_count, ptr @bitcount, ptr @ntbl_bitcnt, ptr @ntbl_bitcount, ptr @BW_btbl_bitcount, ptr @AR_btbl_bitcount, ptr @bit_shifter], align 16
@main1.text = internal global [7 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], align 16
@.str = private unnamed_addr constant [29 x i8] c"Optimized 1 bit/loop counter\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Ratko's mystery algorithm\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Recursive bit count by nybbles\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"Non-recursive bit count by nybbles\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"Non-recursive bit count by bytes (BW)\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"Non-recursive bit count by bytes (AR)\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"Shift and count bits\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"Usage: bitcnts <iterations>\0A\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"Bit counter algorithm benchmark\0A\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"%-38s> Bits: %ld\0A\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"01\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"_finfo_dataset\00", align 1
@.str.1.12 = private unnamed_addr constant [3 x i8] c"rt\00", align 1
@stderr = external global ptr, align 8
@.str.2.13 = private unnamed_addr constant [29 x i8] c"\0AError: Can't find dataset!\0A\00", align 1
@.str.3.14 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1

; Function Attrs: nounwind uwtable
define dso_local ptr @alloc_bit_array(i64 noundef %bits) #0 {
entry:
  %bits.addr = alloca i64, align 8
  %set = alloca ptr, align 8
  store i64 %bits, ptr %bits.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %set) #9
  %0 = load i64, ptr %bits.addr, align 8, !tbaa !5
  %add = add i64 %0, 8
  %sub = sub i64 %add, 1
  %div = udiv i64 %sub, 8
  %call = call noalias ptr @calloc(i64 noundef %div, i64 noundef 1) #10
  store ptr %call, ptr %set, align 8, !tbaa !9
  %1 = load ptr, ptr %set, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 8, ptr %set) #9
  ret ptr %1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nounwind allocsize(0,1)
declare noalias ptr @calloc(i64 noundef, i64 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @getbit(ptr noundef %set, i32 noundef %number) #0 {
entry:
  %set.addr = alloca ptr, align 8
  %number.addr = alloca i32, align 4
  store ptr %set, ptr %set.addr, align 8, !tbaa !9
  store i32 %number, ptr %number.addr, align 4, !tbaa !12
  %0 = load i32, ptr %number.addr, align 4, !tbaa !12
  %div = sdiv i32 %0, 8
  %1 = load ptr, ptr %set.addr, align 8, !tbaa !9
  %idx.ext = sext i32 %div to i64
  %add.ptr = getelementptr inbounds i8, ptr %1, i64 %idx.ext
  store ptr %add.ptr, ptr %set.addr, align 8, !tbaa !9
  %2 = load ptr, ptr %set.addr, align 8, !tbaa !9
  %3 = load i8, ptr %2, align 1, !tbaa !14
  %conv = sext i8 %3 to i32
  %4 = load i32, ptr %number.addr, align 4, !tbaa !12
  %rem = srem i32 %4, 8
  %shl = shl i32 1, %rem
  %and = and i32 %conv, %shl
  %cmp = icmp ne i32 %and, 0
  %conv1 = zext i1 %cmp to i32
  ret i32 %conv1
}

; Function Attrs: nounwind uwtable
define dso_local void @setbit(ptr noundef %set, i32 noundef %number, i32 noundef %value) #0 {
entry:
  %set.addr = alloca ptr, align 8
  %number.addr = alloca i32, align 4
  %value.addr = alloca i32, align 4
  store ptr %set, ptr %set.addr, align 8, !tbaa !9
  store i32 %number, ptr %number.addr, align 4, !tbaa !12
  store i32 %value, ptr %value.addr, align 4, !tbaa !12
  %0 = load i32, ptr %number.addr, align 4, !tbaa !12
  %div = sdiv i32 %0, 8
  %1 = load ptr, ptr %set.addr, align 8, !tbaa !9
  %idx.ext = sext i32 %div to i64
  %add.ptr = getelementptr inbounds i8, ptr %1, i64 %idx.ext
  store ptr %add.ptr, ptr %set.addr, align 8, !tbaa !9
  %2 = load i32, ptr %value.addr, align 4, !tbaa !12
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %number.addr, align 4, !tbaa !12
  %rem = srem i32 %3, 8
  %shl = shl i32 1, %rem
  %4 = load ptr, ptr %set.addr, align 8, !tbaa !9
  %5 = load i8, ptr %4, align 1, !tbaa !14
  %conv = sext i8 %5 to i32
  %or = or i32 %conv, %shl
  %conv1 = trunc i32 %or to i8
  store i8 %conv1, ptr %4, align 1, !tbaa !14
  br label %if.end

if.else:                                          ; preds = %entry
  %6 = load i32, ptr %number.addr, align 4, !tbaa !12
  %rem2 = srem i32 %6, 8
  %shl3 = shl i32 1, %rem2
  %not = xor i32 %shl3, -1
  %7 = load ptr, ptr %set.addr, align 8, !tbaa !9
  %8 = load i8, ptr %7, align 1, !tbaa !14
  %conv4 = sext i8 %8 to i32
  %and = and i32 %conv4, %not
  %conv5 = trunc i32 %and to i8
  store i8 %conv5, ptr %7, align 1, !tbaa !14
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @flipbit(ptr noundef %set, i32 noundef %number) #0 {
entry:
  %set.addr = alloca ptr, align 8
  %number.addr = alloca i32, align 4
  store ptr %set, ptr %set.addr, align 8, !tbaa !9
  store i32 %number, ptr %number.addr, align 4, !tbaa !12
  %0 = load i32, ptr %number.addr, align 4, !tbaa !12
  %div = sdiv i32 %0, 8
  %1 = load ptr, ptr %set.addr, align 8, !tbaa !9
  %idx.ext = sext i32 %div to i64
  %add.ptr = getelementptr inbounds i8, ptr %1, i64 %idx.ext
  store ptr %add.ptr, ptr %set.addr, align 8, !tbaa !9
  %2 = load i32, ptr %number.addr, align 4, !tbaa !12
  %rem = srem i32 %2, 8
  %shl = shl i32 1, %rem
  %3 = load ptr, ptr %set.addr, align 8, !tbaa !9
  %4 = load i8, ptr %3, align 1, !tbaa !14
  %conv = sext i8 %4 to i32
  %xor = xor i32 %conv, %shl
  %conv1 = trunc i32 %xor to i8
  store i8 %conv1, ptr %3, align 1, !tbaa !14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @bit_count(i64 noundef %x) #0 {
entry:
  %x.addr = alloca i64, align 8
  %n = alloca i32, align 4
  store i64 %x, ptr %x.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #9
  store i32 0, ptr %n, align 4, !tbaa !12
  %0 = load i64, ptr %x.addr, align 8, !tbaa !5
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then
  %1 = load i32, ptr %n, align 4, !tbaa !12
  %inc = add nsw i32 %1, 1
  store i32 %inc, ptr %n, align 4, !tbaa !12
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %2 = load i64, ptr %x.addr, align 8, !tbaa !5
  %3 = load i64, ptr %x.addr, align 8, !tbaa !5
  %sub = sub nsw i64 %3, 1
  %and = and i64 %2, %sub
  store i64 %and, ptr %x.addr, align 8, !tbaa !5
  %cmp = icmp ne i64 0, %and
  br i1 %cmp, label %do.body, label %do.end, !llvm.loop !15

do.end:                                           ; preds = %do.cond
  br label %if.end

if.end:                                           ; preds = %do.end, %entry
  %4 = load i32, ptr %n, align 4, !tbaa !12
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #9
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define dso_local i32 @bitcount(i64 noundef %i) #0 {
entry:
  %i.addr = alloca i64, align 8
  store i64 %i, ptr %i.addr, align 8, !tbaa !5
  %0 = load i64, ptr %i.addr, align 8, !tbaa !5
  %and = and i64 %0, 2863311530
  %shr = ashr i64 %and, 1
  %1 = load i64, ptr %i.addr, align 8, !tbaa !5
  %and1 = and i64 %1, 1431655765
  %add = add nsw i64 %shr, %and1
  store i64 %add, ptr %i.addr, align 8, !tbaa !5
  %2 = load i64, ptr %i.addr, align 8, !tbaa !5
  %and2 = and i64 %2, 3435973836
  %shr3 = ashr i64 %and2, 2
  %3 = load i64, ptr %i.addr, align 8, !tbaa !5
  %and4 = and i64 %3, 858993459
  %add5 = add nsw i64 %shr3, %and4
  store i64 %add5, ptr %i.addr, align 8, !tbaa !5
  %4 = load i64, ptr %i.addr, align 8, !tbaa !5
  %and6 = and i64 %4, 4042322160
  %shr7 = ashr i64 %and6, 4
  %5 = load i64, ptr %i.addr, align 8, !tbaa !5
  %and8 = and i64 %5, 252645135
  %add9 = add nsw i64 %shr7, %and8
  store i64 %add9, ptr %i.addr, align 8, !tbaa !5
  %6 = load i64, ptr %i.addr, align 8, !tbaa !5
  %and10 = and i64 %6, 4278255360
  %shr11 = ashr i64 %and10, 8
  %7 = load i64, ptr %i.addr, align 8, !tbaa !5
  %and12 = and i64 %7, 16711935
  %add13 = add nsw i64 %shr11, %and12
  store i64 %add13, ptr %i.addr, align 8, !tbaa !5
  %8 = load i64, ptr %i.addr, align 8, !tbaa !5
  %and14 = and i64 %8, 4294901760
  %shr15 = ashr i64 %and14, 16
  %9 = load i64, ptr %i.addr, align 8, !tbaa !5
  %and16 = and i64 %9, 65535
  %add17 = add nsw i64 %shr15, %and16
  store i64 %add17, ptr %i.addr, align 8, !tbaa !5
  %10 = load i64, ptr %i.addr, align 8, !tbaa !5
  %conv = trunc i64 %10 to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ntbl_bitcount(i64 noundef %x) #0 {
entry:
  %x.addr = alloca i64, align 8
  store i64 %x, ptr %x.addr, align 8, !tbaa !5
  %0 = load i64, ptr %x.addr, align 8, !tbaa !5
  %and = and i64 %0, 15
  %conv = trunc i64 %and to i32
  %idxprom = sext i32 %conv to i64
  %arrayidx = getelementptr inbounds [256 x i8], ptr @bits, i64 0, i64 %idxprom
  %1 = load i8, ptr %arrayidx, align 1, !tbaa !14
  %conv1 = sext i8 %1 to i32
  %2 = load i64, ptr %x.addr, align 8, !tbaa !5
  %and2 = and i64 %2, 240
  %shr = lshr i64 %and2, 4
  %conv3 = trunc i64 %shr to i32
  %idxprom4 = sext i32 %conv3 to i64
  %arrayidx5 = getelementptr inbounds [256 x i8], ptr @bits, i64 0, i64 %idxprom4
  %3 = load i8, ptr %arrayidx5, align 1, !tbaa !14
  %conv6 = sext i8 %3 to i32
  %add = add nsw i32 %conv1, %conv6
  %4 = load i64, ptr %x.addr, align 8, !tbaa !5
  %and7 = and i64 %4, 3840
  %shr8 = lshr i64 %and7, 8
  %conv9 = trunc i64 %shr8 to i32
  %idxprom10 = sext i32 %conv9 to i64
  %arrayidx11 = getelementptr inbounds [256 x i8], ptr @bits, i64 0, i64 %idxprom10
  %5 = load i8, ptr %arrayidx11, align 1, !tbaa !14
  %conv12 = sext i8 %5 to i32
  %add13 = add nsw i32 %add, %conv12
  %6 = load i64, ptr %x.addr, align 8, !tbaa !5
  %and14 = and i64 %6, 61440
  %shr15 = lshr i64 %and14, 12
  %conv16 = trunc i64 %shr15 to i32
  %idxprom17 = sext i32 %conv16 to i64
  %arrayidx18 = getelementptr inbounds [256 x i8], ptr @bits, i64 0, i64 %idxprom17
  %7 = load i8, ptr %arrayidx18, align 1, !tbaa !14
  %conv19 = sext i8 %7 to i32
  %add20 = add nsw i32 %add13, %conv19
  %8 = load i64, ptr %x.addr, align 8, !tbaa !5
  %and21 = and i64 %8, 983040
  %shr22 = lshr i64 %and21, 16
  %conv23 = trunc i64 %shr22 to i32
  %idxprom24 = sext i32 %conv23 to i64
  %arrayidx25 = getelementptr inbounds [256 x i8], ptr @bits, i64 0, i64 %idxprom24
  %9 = load i8, ptr %arrayidx25, align 1, !tbaa !14
  %conv26 = sext i8 %9 to i32
  %add27 = add nsw i32 %add20, %conv26
  %10 = load i64, ptr %x.addr, align 8, !tbaa !5
  %and28 = and i64 %10, 15728640
  %shr29 = lshr i64 %and28, 20
  %conv30 = trunc i64 %shr29 to i32
  %idxprom31 = sext i32 %conv30 to i64
  %arrayidx32 = getelementptr inbounds [256 x i8], ptr @bits, i64 0, i64 %idxprom31
  %11 = load i8, ptr %arrayidx32, align 1, !tbaa !14
  %conv33 = sext i8 %11 to i32
  %add34 = add nsw i32 %add27, %conv33
  %12 = load i64, ptr %x.addr, align 8, !tbaa !5
  %and35 = and i64 %12, 251658240
  %shr36 = lshr i64 %and35, 24
  %conv37 = trunc i64 %shr36 to i32
  %idxprom38 = sext i32 %conv37 to i64
  %arrayidx39 = getelementptr inbounds [256 x i8], ptr @bits, i64 0, i64 %idxprom38
  %13 = load i8, ptr %arrayidx39, align 1, !tbaa !14
  %conv40 = sext i8 %13 to i32
  %add41 = add nsw i32 %add34, %conv40
  %14 = load i64, ptr %x.addr, align 8, !tbaa !5
  %and42 = and i64 %14, 4026531840
  %shr43 = lshr i64 %and42, 28
  %conv44 = trunc i64 %shr43 to i32
  %idxprom45 = sext i32 %conv44 to i64
  %arrayidx46 = getelementptr inbounds [256 x i8], ptr @bits, i64 0, i64 %idxprom45
  %15 = load i8, ptr %arrayidx46, align 1, !tbaa !14
  %conv47 = sext i8 %15 to i32
  %add48 = add nsw i32 %add41, %conv47
  ret i32 %add48
}

; Function Attrs: nounwind uwtable
define dso_local i32 @BW_btbl_bitcount(i64 noundef %x) #0 {
entry:
  %x.addr = alloca i64, align 8
  %U = alloca %union.anon, align 8
  store i64 %x, ptr %x.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %U) #9
  %0 = load i64, ptr %x.addr, align 8, !tbaa !5
  store i64 %0, ptr %U, align 8, !tbaa !14
  %arrayidx = getelementptr inbounds [4 x i8], ptr %U, i64 0, i64 0
  %1 = load i8, ptr %arrayidx, align 8, !tbaa !14
  %idxprom = zext i8 %1 to i64
  %arrayidx1 = getelementptr inbounds nuw [256 x i8], ptr @bits, i64 0, i64 %idxprom
  %2 = load i8, ptr %arrayidx1, align 1, !tbaa !14
  %conv = sext i8 %2 to i32
  %arrayidx2 = getelementptr inbounds [4 x i8], ptr %U, i64 0, i64 1
  %3 = load i8, ptr %arrayidx2, align 1, !tbaa !14
  %idxprom3 = zext i8 %3 to i64
  %arrayidx4 = getelementptr inbounds nuw [256 x i8], ptr @bits, i64 0, i64 %idxprom3
  %4 = load i8, ptr %arrayidx4, align 1, !tbaa !14
  %conv5 = sext i8 %4 to i32
  %add = add nsw i32 %conv, %conv5
  %arrayidx6 = getelementptr inbounds [4 x i8], ptr %U, i64 0, i64 3
  %5 = load i8, ptr %arrayidx6, align 1, !tbaa !14
  %idxprom7 = zext i8 %5 to i64
  %arrayidx8 = getelementptr inbounds nuw [256 x i8], ptr @bits, i64 0, i64 %idxprom7
  %6 = load i8, ptr %arrayidx8, align 1, !tbaa !14
  %conv9 = sext i8 %6 to i32
  %add10 = add nsw i32 %add, %conv9
  %arrayidx11 = getelementptr inbounds [4 x i8], ptr %U, i64 0, i64 2
  %7 = load i8, ptr %arrayidx11, align 2, !tbaa !14
  %idxprom12 = zext i8 %7 to i64
  %arrayidx13 = getelementptr inbounds nuw [256 x i8], ptr @bits, i64 0, i64 %idxprom12
  %8 = load i8, ptr %arrayidx13, align 1, !tbaa !14
  %conv14 = sext i8 %8 to i32
  %add15 = add nsw i32 %add10, %conv14
  call void @llvm.lifetime.end.p0(i64 8, ptr %U) #9
  ret i32 %add15
}

; Function Attrs: nounwind uwtable
define dso_local i32 @AR_btbl_bitcount(i64 noundef %x) #0 {
entry:
  %x.addr = alloca i64, align 8
  %Ptr = alloca ptr, align 8
  %Accu = alloca i32, align 4
  store i64 %x, ptr %x.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %Ptr) #9
  store ptr %x.addr, ptr %Ptr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %Accu) #9
  %0 = load ptr, ptr %Ptr, align 8, !tbaa !9
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %0, i32 1
  store ptr %incdec.ptr, ptr %Ptr, align 8, !tbaa !9
  %1 = load i8, ptr %0, align 1, !tbaa !14
  %idxprom = zext i8 %1 to i64
  %arrayidx = getelementptr inbounds nuw [256 x i8], ptr @bits, i64 0, i64 %idxprom
  %2 = load i8, ptr %arrayidx, align 1, !tbaa !14
  %conv = sext i8 %2 to i32
  store i32 %conv, ptr %Accu, align 4, !tbaa !12
  %3 = load ptr, ptr %Ptr, align 8, !tbaa !9
  %incdec.ptr1 = getelementptr inbounds nuw i8, ptr %3, i32 1
  store ptr %incdec.ptr1, ptr %Ptr, align 8, !tbaa !9
  %4 = load i8, ptr %3, align 1, !tbaa !14
  %idxprom2 = zext i8 %4 to i64
  %arrayidx3 = getelementptr inbounds nuw [256 x i8], ptr @bits, i64 0, i64 %idxprom2
  %5 = load i8, ptr %arrayidx3, align 1, !tbaa !14
  %conv4 = sext i8 %5 to i32
  %6 = load i32, ptr %Accu, align 4, !tbaa !12
  %add = add nsw i32 %6, %conv4
  store i32 %add, ptr %Accu, align 4, !tbaa !12
  %7 = load ptr, ptr %Ptr, align 8, !tbaa !9
  %incdec.ptr5 = getelementptr inbounds nuw i8, ptr %7, i32 1
  store ptr %incdec.ptr5, ptr %Ptr, align 8, !tbaa !9
  %8 = load i8, ptr %7, align 1, !tbaa !14
  %idxprom6 = zext i8 %8 to i64
  %arrayidx7 = getelementptr inbounds nuw [256 x i8], ptr @bits, i64 0, i64 %idxprom6
  %9 = load i8, ptr %arrayidx7, align 1, !tbaa !14
  %conv8 = sext i8 %9 to i32
  %10 = load i32, ptr %Accu, align 4, !tbaa !12
  %add9 = add nsw i32 %10, %conv8
  store i32 %add9, ptr %Accu, align 4, !tbaa !12
  %11 = load ptr, ptr %Ptr, align 8, !tbaa !9
  %12 = load i8, ptr %11, align 1, !tbaa !14
  %idxprom10 = zext i8 %12 to i64
  %arrayidx11 = getelementptr inbounds nuw [256 x i8], ptr @bits, i64 0, i64 %idxprom10
  %13 = load i8, ptr %arrayidx11, align 1, !tbaa !14
  %conv12 = sext i8 %13 to i32
  %14 = load i32, ptr %Accu, align 4, !tbaa !12
  %add13 = add nsw i32 %14, %conv12
  store i32 %add13, ptr %Accu, align 4, !tbaa !12
  %15 = load i32, ptr %Accu, align 4, !tbaa !12
  call void @llvm.lifetime.end.p0(i64 4, ptr %Accu) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %Ptr) #9
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ntbl_bitcnt(i64 noundef %x) #0 {
entry:
  %x.addr = alloca i64, align 8
  %cnt = alloca i32, align 4
  store i64 %x, ptr %x.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %cnt) #9
  %0 = load i64, ptr %x.addr, align 8, !tbaa !5
  %and = and i64 %0, 15
  %conv = trunc i64 %and to i32
  %idxprom = sext i32 %conv to i64
  %arrayidx = getelementptr inbounds [256 x i8], ptr @bits.1, i64 0, i64 %idxprom
  %1 = load i8, ptr %arrayidx, align 1, !tbaa !14
  %conv1 = sext i8 %1 to i32
  store i32 %conv1, ptr %cnt, align 4, !tbaa !12
  %2 = load i64, ptr %x.addr, align 8, !tbaa !5
  %shr = ashr i64 %2, 4
  store i64 %shr, ptr %x.addr, align 8, !tbaa !5
  %cmp = icmp ne i64 0, %shr
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i64, ptr %x.addr, align 8, !tbaa !5
  %call = call i32 @ntbl_bitcnt(i64 noundef %3)
  %4 = load i32, ptr %cnt, align 4, !tbaa !12
  %add = add nsw i32 %4, %call
  store i32 %add, ptr %cnt, align 4, !tbaa !12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, ptr %cnt, align 4, !tbaa !12
  call void @llvm.lifetime.end.p0(i64 4, ptr %cnt) #9
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define dso_local i32 @btbl_bitcnt(i64 noundef %x) #0 {
entry:
  %x.addr = alloca i64, align 8
  %cnt = alloca i32, align 4
  store i64 %x, ptr %x.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %cnt) #9
  %arrayidx = getelementptr inbounds i8, ptr %x.addr, i64 0
  %0 = load i8, ptr %arrayidx, align 8, !tbaa !14
  %conv = sext i8 %0 to i32
  %and = and i32 %conv, 255
  %idxprom = sext i32 %and to i64
  %arrayidx1 = getelementptr inbounds [256 x i8], ptr @bits.1, i64 0, i64 %idxprom
  %1 = load i8, ptr %arrayidx1, align 1, !tbaa !14
  %conv2 = sext i8 %1 to i32
  store i32 %conv2, ptr %cnt, align 4, !tbaa !12
  %2 = load i64, ptr %x.addr, align 8, !tbaa !5
  %shr = ashr i64 %2, 8
  store i64 %shr, ptr %x.addr, align 8, !tbaa !5
  %cmp = icmp ne i64 0, %shr
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i64, ptr %x.addr, align 8, !tbaa !5
  %call = call i32 @btbl_bitcnt(i64 noundef %3)
  %4 = load i32, ptr %cnt, align 4, !tbaa !12
  %add = add nsw i32 %4, %call
  store i32 %add, ptr %cnt, align 4, !tbaa !12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, ptr %cnt, align 4, !tbaa !12
  call void @llvm.lifetime.end.p0(i64 4, ptr %cnt) #9
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define dso_local i32 @main1(i32 noundef %argc, ptr noundef %argv, i32 noundef %print) #0 {
entry:
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %print.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i64, align 8
  %n = alloca i64, align 8
  %seed = alloca i64, align 8
  %iterations = alloca i32, align 4
  store i32 %argc, ptr %argc.addr, align 4, !tbaa !12
  store ptr %argv, ptr %argv.addr, align 8, !tbaa !17
  store i32 %print, ptr %print.addr, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %j) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %n) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %seed) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %iterations) #9
  %0 = load i32, ptr %argc.addr, align 4, !tbaa !12
  %cmp = icmp slt i32 %0, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @stderr, align 8, !tbaa !20
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str.7) #9
  call void @exit(i32 noundef 1) #11
  unreachable

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %argv.addr, align 8, !tbaa !17
  %arrayidx = getelementptr inbounds ptr, ptr %2, i64 1
  %3 = load ptr, ptr %arrayidx, align 8, !tbaa !9
  %call1 = call i32 @atoi(ptr noundef %3) #12
  store i32 %call1, ptr %iterations, align 4, !tbaa !12
  %4 = load i32, ptr %print.addr, align 4, !tbaa !12
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %call3 = call i32 @puts(ptr noundef @.str.8)
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end
  store i32 0, ptr %i, align 4, !tbaa !12
  br label %for.cond

for.cond:                                         ; preds = %for.inc20, %if.end4
  %5 = load i32, ptr %i, align 4, !tbaa !12
  %cmp5 = icmp slt i32 %5, 7
  br i1 %cmp5, label %for.body, label %for.end22

for.body:                                         ; preds = %for.cond
  store i64 0, ptr %n, align 8, !tbaa !5
  store i64 0, ptr %j, align 8, !tbaa !5
  store i64 1, ptr %seed, align 8, !tbaa !5
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc, %for.body
  %6 = load i64, ptr %j, align 8, !tbaa !5
  %7 = load i32, ptr %iterations, align 4, !tbaa !12
  %conv = sext i32 %7 to i64
  %cmp7 = icmp slt i64 %6, %conv
  br i1 %cmp7, label %for.body9, label %for.end

for.body9:                                        ; preds = %for.cond6
  %8 = load i32, ptr %i, align 4, !tbaa !12
  %idxprom = sext i32 %8 to i64
  %arrayidx10 = getelementptr inbounds [7 x ptr], ptr @main1.pBitCntFunc, i64 0, i64 %idxprom
  %9 = load ptr, ptr %arrayidx10, align 8, !tbaa !22
  %10 = load i64, ptr %seed, align 8, !tbaa !5
  %call11 = call i32 %9(i64 noundef %10)
  %conv12 = sext i32 %call11 to i64
  %11 = load i64, ptr %n, align 8, !tbaa !5
  %add = add nsw i64 %11, %conv12
  store i64 %add, ptr %n, align 8, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body9
  %12 = load i64, ptr %j, align 8, !tbaa !5
  %inc = add nsw i64 %12, 1
  store i64 %inc, ptr %j, align 8, !tbaa !5
  %13 = load i64, ptr %seed, align 8, !tbaa !5
  %add13 = add nsw i64 %13, 13
  store i64 %add13, ptr %seed, align 8, !tbaa !5
  br label %for.cond6, !llvm.loop !23

for.end:                                          ; preds = %for.cond6
  %14 = load i32, ptr %print.addr, align 4, !tbaa !12
  %tobool14 = icmp ne i32 %14, 0
  br i1 %tobool14, label %if.then15, label %if.end19

if.then15:                                        ; preds = %for.end
  %15 = load i32, ptr %i, align 4, !tbaa !12
  %idxprom16 = sext i32 %15 to i64
  %arrayidx17 = getelementptr inbounds [7 x ptr], ptr @main1.text, i64 0, i64 %idxprom16
  %16 = load ptr, ptr %arrayidx17, align 8, !tbaa !9
  %17 = load i64, ptr %n, align 8, !tbaa !5
  %call18 = call i32 (ptr, ...) @printf(ptr noundef @.str.9, ptr noundef %16, i64 noundef %17)
  br label %if.end19

if.end19:                                         ; preds = %if.then15, %for.end
  br label %for.inc20

for.inc20:                                        ; preds = %if.end19
  %18 = load i32, ptr %i, align 4, !tbaa !12
  %inc21 = add nsw i32 %18, 1
  store i32 %inc21, ptr %i, align 4, !tbaa !12
  br label %for.cond, !llvm.loop !24

for.end22:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %iterations) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %seed) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %n) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %j) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #9
  ret i32 0
}

; Function Attrs: nounwind
declare i32 @fprintf(ptr noundef, ptr noundef, ...) #3

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) #4

; Function Attrs: inlinehint nounwind willreturn memory(read) uwtable
define available_externally i32 @atoi(ptr noundef nonnull %__nptr) #5 {
entry:
  %__nptr.addr = alloca ptr, align 8
  store ptr %__nptr, ptr %__nptr.addr, align 8, !tbaa !9
  %0 = load ptr, ptr %__nptr.addr, align 8, !tbaa !9
  %call = call i64 @strtol(ptr noundef %0, ptr noundef null, i32 noundef 10) #9
  %conv = trunc i64 %call to i32
  ret i32 %conv
}

declare i32 @puts(ptr noundef) #6

declare i32 @printf(ptr noundef, ...) #6

; Function Attrs: nounwind uwtable
define internal i32 @bit_shifter(i64 noundef %x) #0 {
entry:
  %x.addr = alloca i64, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  store i64 %x, ptr %x.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #9
  store i32 0, ptr %n, align 4, !tbaa !12
  store i32 0, ptr %i, align 4, !tbaa !12
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %x.addr, align 8, !tbaa !5
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4, !tbaa !12
  %conv = sext i32 %1 to i64
  %cmp = icmp ult i64 %conv, 64
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %2 = phi i1 [ false, %for.cond ], [ %cmp, %land.rhs ]
  br i1 %2, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %3 = load i64, ptr %x.addr, align 8, !tbaa !5
  %and = and i64 %3, 1
  %conv2 = trunc i64 %and to i32
  %4 = load i32, ptr %n, align 4, !tbaa !12
  %add = add nsw i32 %4, %conv2
  store i32 %add, ptr %n, align 4, !tbaa !12
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, ptr %i, align 4, !tbaa !12
  %inc = add nsw i32 %5, 1
  store i32 %inc, ptr %i, align 4, !tbaa !12
  %6 = load i64, ptr %x.addr, align 8, !tbaa !5
  %shr = ashr i64 %6, 1
  store i64 %shr, ptr %x.addr, align 8, !tbaa !5
  br label %for.cond, !llvm.loop !25

for.end:                                          ; preds = %land.end
  %7 = load i32, ptr %n, align 4, !tbaa !12
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #9
  ret i32 %7
}

; Function Attrs: nounwind
declare i64 @strtol(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: nounwind uwtable
define dso_local ptr @bfopen(ptr noundef %name, ptr noundef %mode) #0 {
entry:
  %retval = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %mode.addr = alloca ptr, align 8
  %bf = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %name, ptr %name.addr, align 8, !tbaa !9
  store ptr %mode, ptr %mode.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %bf) #9
  %call = call noalias ptr @malloc(i64 noundef 16) #13
  store ptr %call, ptr %bf, align 8, !tbaa !22
  %0 = load ptr, ptr %bf, align 8, !tbaa !22
  %cmp = icmp eq ptr null, %0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %name.addr, align 8, !tbaa !9
  %2 = load ptr, ptr %mode.addr, align 8, !tbaa !9
  %call1 = call noalias ptr @fopen(ptr noundef %1, ptr noundef %2)
  %3 = load ptr, ptr %bf, align 8, !tbaa !22
  %file = getelementptr inbounds nuw %struct.bfile, ptr %3, i32 0, i32 0
  store ptr %call1, ptr %file, align 8, !tbaa !26
  %4 = load ptr, ptr %bf, align 8, !tbaa !22
  %file2 = getelementptr inbounds nuw %struct.bfile, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %file2, align 8, !tbaa !26
  %cmp3 = icmp eq ptr null, %5
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  %6 = load ptr, ptr %bf, align 8, !tbaa !22
  call void @free(ptr noundef %6) #9
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %7 = load ptr, ptr %bf, align 8, !tbaa !22
  %rcnt = getelementptr inbounds nuw %struct.bfile, ptr %7, i32 0, i32 2
  store i8 0, ptr %rcnt, align 1, !tbaa !28
  %8 = load ptr, ptr %bf, align 8, !tbaa !22
  %wcnt = getelementptr inbounds nuw %struct.bfile, ptr %8, i32 0, i32 4
  store i8 0, ptr %wcnt, align 1, !tbaa !29
  %9 = load ptr, ptr %bf, align 8, !tbaa !22
  store ptr %9, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %bf) #9
  %10 = load ptr, ptr %retval, align 8
  ret ptr %10
}

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #7

declare noalias ptr @fopen(ptr noundef, ptr noundef) #6

; Function Attrs: nounwind
declare void @free(ptr noundef) #3

; Function Attrs: nounwind uwtable
define dso_local i32 @bfread(ptr noundef %bf) #0 {
entry:
  %bf.addr = alloca ptr, align 8
  store ptr %bf, ptr %bf.addr, align 8, !tbaa !22
  %0 = load ptr, ptr %bf.addr, align 8, !tbaa !22
  %rcnt = getelementptr inbounds nuw %struct.bfile, ptr %0, i32 0, i32 2
  %1 = load i8, ptr %rcnt, align 1, !tbaa !28
  %conv = sext i8 %1 to i32
  %cmp = icmp eq i32 0, %conv
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %bf.addr, align 8, !tbaa !22
  %file = getelementptr inbounds nuw %struct.bfile, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %file, align 8, !tbaa !26
  %call = call i32 @fgetc(ptr noundef %3)
  %conv2 = trunc i32 %call to i8
  %4 = load ptr, ptr %bf.addr, align 8, !tbaa !22
  %rbuf = getelementptr inbounds nuw %struct.bfile, ptr %4, i32 0, i32 1
  store i8 %conv2, ptr %rbuf, align 8, !tbaa !30
  %5 = load ptr, ptr %bf.addr, align 8, !tbaa !22
  %rcnt3 = getelementptr inbounds nuw %struct.bfile, ptr %5, i32 0, i32 2
  store i8 8, ptr %rcnt3, align 1, !tbaa !28
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load ptr, ptr %bf.addr, align 8, !tbaa !22
  %rcnt4 = getelementptr inbounds nuw %struct.bfile, ptr %6, i32 0, i32 2
  %7 = load i8, ptr %rcnt4, align 1, !tbaa !28
  %dec = add i8 %7, -1
  store i8 %dec, ptr %rcnt4, align 1, !tbaa !28
  %8 = load ptr, ptr %bf.addr, align 8, !tbaa !22
  %rbuf5 = getelementptr inbounds nuw %struct.bfile, ptr %8, i32 0, i32 1
  %9 = load i8, ptr %rbuf5, align 8, !tbaa !30
  %conv6 = sext i8 %9 to i32
  %10 = load ptr, ptr %bf.addr, align 8, !tbaa !22
  %rcnt7 = getelementptr inbounds nuw %struct.bfile, ptr %10, i32 0, i32 2
  %11 = load i8, ptr %rcnt7, align 1, !tbaa !28
  %conv8 = sext i8 %11 to i32
  %shl = shl i32 1, %conv8
  %and = and i32 %conv6, %shl
  %cmp9 = icmp ne i32 %and, 0
  %conv10 = zext i1 %cmp9 to i32
  ret i32 %conv10
}

declare i32 @fgetc(ptr noundef) #6

; Function Attrs: nounwind uwtable
define dso_local void @bfwrite(i32 noundef %bit, ptr noundef %bf) #0 {
entry:
  %bit.addr = alloca i32, align 4
  %bf.addr = alloca ptr, align 8
  store i32 %bit, ptr %bit.addr, align 4, !tbaa !12
  store ptr %bf, ptr %bf.addr, align 8, !tbaa !22
  %0 = load ptr, ptr %bf.addr, align 8, !tbaa !22
  %wcnt = getelementptr inbounds nuw %struct.bfile, ptr %0, i32 0, i32 4
  %1 = load i8, ptr %wcnt, align 1, !tbaa !29
  %conv = sext i8 %1 to i32
  %cmp = icmp eq i32 8, %conv
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %bf.addr, align 8, !tbaa !22
  %wbuf = getelementptr inbounds nuw %struct.bfile, ptr %2, i32 0, i32 3
  %3 = load i8, ptr %wbuf, align 2, !tbaa !31
  %conv2 = sext i8 %3 to i32
  %4 = load ptr, ptr %bf.addr, align 8, !tbaa !22
  %file = getelementptr inbounds nuw %struct.bfile, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %file, align 8, !tbaa !26
  %call = call i32 @fputc(i32 noundef %conv2, ptr noundef %5)
  %6 = load ptr, ptr %bf.addr, align 8, !tbaa !22
  %wcnt3 = getelementptr inbounds nuw %struct.bfile, ptr %6, i32 0, i32 4
  store i8 0, ptr %wcnt3, align 1, !tbaa !29
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load ptr, ptr %bf.addr, align 8, !tbaa !22
  %wcnt4 = getelementptr inbounds nuw %struct.bfile, ptr %7, i32 0, i32 4
  %8 = load i8, ptr %wcnt4, align 1, !tbaa !29
  %inc = add i8 %8, 1
  store i8 %inc, ptr %wcnt4, align 1, !tbaa !29
  %9 = load ptr, ptr %bf.addr, align 8, !tbaa !22
  %wbuf5 = getelementptr inbounds nuw %struct.bfile, ptr %9, i32 0, i32 3
  %10 = load i8, ptr %wbuf5, align 2, !tbaa !31
  %conv6 = sext i8 %10 to i32
  %shl = shl i32 %conv6, 1
  %conv7 = trunc i32 %shl to i8
  store i8 %conv7, ptr %wbuf5, align 2, !tbaa !31
  %11 = load i32, ptr %bit.addr, align 4, !tbaa !12
  %and = and i32 %11, 1
  %12 = load ptr, ptr %bf.addr, align 8, !tbaa !22
  %wbuf8 = getelementptr inbounds nuw %struct.bfile, ptr %12, i32 0, i32 3
  %13 = load i8, ptr %wbuf8, align 2, !tbaa !31
  %conv9 = sext i8 %13 to i32
  %or = or i32 %conv9, %and
  %conv10 = trunc i32 %or to i8
  store i8 %conv10, ptr %wbuf8, align 2, !tbaa !31
  ret void
}

declare i32 @fputc(i32 noundef, ptr noundef) #6

; Function Attrs: nounwind uwtable
define dso_local void @bfclose(ptr noundef %bf) #0 {
entry:
  %bf.addr = alloca ptr, align 8
  store ptr %bf, ptr %bf.addr, align 8, !tbaa !22
  %0 = load ptr, ptr %bf.addr, align 8, !tbaa !22
  %file = getelementptr inbounds nuw %struct.bfile, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %file, align 8, !tbaa !26
  %call = call i32 @fclose(ptr noundef %1)
  %2 = load ptr, ptr %bf.addr, align 8, !tbaa !22
  call void @free(ptr noundef %2) #9
  ret void
}

declare i32 @fclose(ptr noundef) #6

; Function Attrs: nounwind uwtable
define dso_local void @bitstring(ptr noundef %str, i64 noundef %byze, i32 noundef %biz, i32 noundef %strwid) #0 {
entry:
  %str.addr = alloca ptr, align 8
  %byze.addr = alloca i64, align 8
  %biz.addr = alloca i32, align 4
  %strwid.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store ptr %str, ptr %str.addr, align 8, !tbaa !9
  store i64 %byze, ptr %byze.addr, align 8, !tbaa !5
  store i32 %biz, ptr %biz.addr, align 4, !tbaa !12
  store i32 %strwid, ptr %strwid.addr, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #9
  %0 = load i32, ptr %strwid.addr, align 4, !tbaa !12
  %1 = load i32, ptr %biz.addr, align 4, !tbaa !12
  %2 = load i32, ptr %biz.addr, align 4, !tbaa !12
  %shr = ashr i32 %2, 2
  %add = add nsw i32 %1, %shr
  %3 = load i32, ptr %biz.addr, align 4, !tbaa !12
  %rem = srem i32 %3, 4
  %tobool = icmp ne i32 %rem, 0
  %4 = zext i1 %tobool to i64
  %cond = select i1 %tobool, i32 0, i32 1
  %sub = sub nsw i32 %add, %cond
  %sub1 = sub nsw i32 %0, %sub
  store i32 %sub1, ptr %j, align 4, !tbaa !12
  store i32 0, ptr %i, align 4, !tbaa !12
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, ptr %i, align 4, !tbaa !12
  %6 = load i32, ptr %j, align 4, !tbaa !12
  %cmp = icmp slt i32 %5, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %str.addr, align 8, !tbaa !9
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %7, i32 1
  store ptr %incdec.ptr, ptr %str.addr, align 8, !tbaa !9
  store i8 32, ptr %7, align 1, !tbaa !14
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, ptr %i, align 4, !tbaa !12
  %inc = add nsw i32 %8, 1
  store i32 %inc, ptr %i, align 4, !tbaa !12
  br label %for.cond, !llvm.loop !32

for.end:                                          ; preds = %for.cond
  br label %while.cond

while.cond:                                       ; preds = %if.end, %for.end
  %9 = load i32, ptr %biz.addr, align 4, !tbaa !12
  %dec = add nsw i32 %9, -1
  store i32 %dec, ptr %biz.addr, align 4, !tbaa !12
  %cmp2 = icmp sge i32 %dec, 0
  br i1 %cmp2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load i64, ptr %byze.addr, align 8, !tbaa !5
  %11 = load i32, ptr %biz.addr, align 4, !tbaa !12
  %sh_prom = zext i32 %11 to i64
  %shr3 = ashr i64 %10, %sh_prom
  %and = and i64 %shr3, 1
  %add4 = add nsw i64 %and, 48
  %conv = trunc i64 %add4 to i8
  %12 = load ptr, ptr %str.addr, align 8, !tbaa !9
  %incdec.ptr5 = getelementptr inbounds nuw i8, ptr %12, i32 1
  store ptr %incdec.ptr5, ptr %str.addr, align 8, !tbaa !9
  store i8 %conv, ptr %12, align 1, !tbaa !14
  %13 = load i32, ptr %biz.addr, align 4, !tbaa !12
  %rem6 = srem i32 %13, 4
  %tobool7 = icmp ne i32 %rem6, 0
  br i1 %tobool7, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %while.body
  %14 = load i32, ptr %biz.addr, align 4, !tbaa !12
  %tobool8 = icmp ne i32 %14, 0
  br i1 %tobool8, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %15 = load ptr, ptr %str.addr, align 8, !tbaa !9
  %incdec.ptr9 = getelementptr inbounds nuw i8, ptr %15, i32 1
  store ptr %incdec.ptr9, ptr %str.addr, align 8, !tbaa !9
  store i8 32, ptr %15, align 1, !tbaa !14
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %while.body
  br label %while.cond, !llvm.loop !33

while.end:                                        ; preds = %while.cond
  %16 = load ptr, ptr %str.addr, align 8, !tbaa !9
  store i8 0, ptr %16, align 1, !tbaa !14
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #9
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @bstr_i(ptr noundef %cptr) #0 {
entry:
  %cptr.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store ptr %cptr, ptr %cptr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #9
  store i32 0, ptr %j, align 4, !tbaa !12
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load ptr, ptr %cptr.addr, align 8, !tbaa !9
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %while.cond
  %1 = load ptr, ptr %cptr.addr, align 8, !tbaa !9
  %2 = load i8, ptr %1, align 1, !tbaa !14
  %conv = sext i8 %2 to i32
  %tobool1 = icmp ne i32 %conv, 0
  br i1 %tobool1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %3 = load ptr, ptr %cptr.addr, align 8, !tbaa !9
  %4 = load i8, ptr %3, align 1, !tbaa !14
  %conv2 = sext i8 %4 to i32
  %call = call ptr @strchr(ptr noundef @.str.10, i32 noundef %conv2) #12
  %tobool3 = icmp ne ptr %call, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %5 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool3, %land.rhs ]
  br i1 %5, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %6 = load ptr, ptr %cptr.addr, align 8, !tbaa !9
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %6, i32 1
  store ptr %incdec.ptr, ptr %cptr.addr, align 8, !tbaa !9
  %7 = load i8, ptr %6, align 1, !tbaa !14
  %conv4 = sext i8 %7 to i32
  %sub = sub nsw i32 %conv4, 48
  store i32 %sub, ptr %i, align 4, !tbaa !12
  %8 = load i32, ptr %j, align 4, !tbaa !12
  %shl = shl i32 %8, 1
  store i32 %shl, ptr %j, align 4, !tbaa !12
  %9 = load i32, ptr %i, align 4, !tbaa !12
  %and = and i32 %9, 1
  %10 = load i32, ptr %j, align 4, !tbaa !12
  %or = or i32 %10, %and
  store i32 %or, ptr %j, align 4, !tbaa !12
  br label %while.cond, !llvm.loop !34

while.end:                                        ; preds = %land.end
  %11 = load i32, ptr %j, align 4, !tbaa !12
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #9
  ret i32 %11
}

; Function Attrs: nounwind willreturn memory(read)
declare ptr @strchr(ptr noundef, i32 noundef) #8

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
  store i32 %argc, ptr %argc.addr, align 4, !tbaa !12
  store ptr %argv, ptr %argv.addr, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 8, ptr %loop_wrap) #9
  store ptr null, ptr %loop_wrap, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(i64 8, ptr %loop_wrap1) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %loop_wrap2) #9
  %call = call noalias ptr @fopen(ptr noundef @.str.11, ptr noundef @.str.1.12)
  store ptr %call, ptr %loop_wrap, align 8, !tbaa !20
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr @stderr, align 8, !tbaa !20
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef @.str.2.13) #9
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %loop_wrap, align 8, !tbaa !20
  %call2 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %1, ptr noundef @.str.3.14, ptr noundef %loop_wrap2)
  %2 = load ptr, ptr %loop_wrap, align 8, !tbaa !20
  %call3 = call i32 @fclose(ptr noundef %2)
  store i64 0, ptr %loop_wrap1, align 8, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i64, ptr %loop_wrap1, align 8, !tbaa !5
  %4 = load i64, ptr %loop_wrap2, align 8, !tbaa !5
  %cmp4 = icmp slt i64 %3, %4
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, ptr %argc.addr, align 4, !tbaa !12
  %6 = load ptr, ptr %argv.addr, align 8, !tbaa !17
  %7 = load i64, ptr %loop_wrap1, align 8, !tbaa !5
  %add = add nsw i64 %7, 1
  %8 = load i64, ptr %loop_wrap2, align 8, !tbaa !5
  %cmp5 = icmp eq i64 %add, %8
  %conv = zext i1 %cmp5 to i32
  %call6 = call i32 @main1(i32 noundef %5, ptr noundef %6, i32 noundef %conv)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i64, ptr %loop_wrap1, align 8, !tbaa !5
  %inc = add nsw i64 %9, 1
  store i64 %inc, ptr %loop_wrap1, align 8, !tbaa !5
  br label %for.cond, !llvm.loop !35

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %loop_wrap2) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %loop_wrap1) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %loop_wrap) #9
  %10 = load i32, ptr %retval, align 4
  ret i32 %10
}

declare i32 @__isoc99_fscanf(ptr noundef, ptr noundef, ...) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(0,1) }
attributes #11 = { noreturn nounwind }
attributes #12 = { nounwind willreturn memory(read) }
attributes #13 = { nounwind allocsize(0) }

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3, !4}

!0 = !{!"clang version 21.1.8 (https://github.com/llvm/llvm-project.git 2078da43e25a4623cab2d0d60decddf709aaea28)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!6, !6, i64 0}
!6 = !{!"long", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"p1 omnipotent char", !11, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"int", !7, i64 0}
!14 = !{!7, !7, i64 0}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.unroll.disable"}
!17 = !{!18, !18, i64 0}
!18 = !{!"p2 omnipotent char", !19, i64 0}
!19 = !{!"any p2 pointer", !11, i64 0}
!20 = !{!21, !21, i64 0}
!21 = !{!"p1 _ZTS8_IO_FILE", !11, i64 0}
!22 = !{!11, !11, i64 0}
!23 = distinct !{!23, !16}
!24 = distinct !{!24, !16}
!25 = distinct !{!25, !16}
!26 = !{!27, !21, i64 0}
!27 = !{!"", !21, i64 0, !7, i64 8, !7, i64 9, !7, i64 10, !7, i64 11}
!28 = !{!27, !7, i64 9}
!29 = !{!27, !7, i64 11}
!30 = !{!27, !7, i64 8}
!31 = !{!27, !7, i64 10}
!32 = distinct !{!32, !16}
!33 = distinct !{!33, !16}
!34 = distinct !{!34, !16}
!35 = distinct !{!35, !16}
