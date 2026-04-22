; ModuleID = '/root/exp/RFunipassLab/external_datasets/build/ir_build/cbench/telecom_adpcm_c/telecom_adpcm_c.linked.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adpcm_state = type { i16, i8 }

@stepsizeTable = internal global [89 x i32] [i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 16, i32 17, i32 19, i32 21, i32 23, i32 25, i32 28, i32 31, i32 34, i32 37, i32 41, i32 45, i32 50, i32 55, i32 60, i32 66, i32 73, i32 80, i32 88, i32 97, i32 107, i32 118, i32 130, i32 143, i32 157, i32 173, i32 190, i32 209, i32 230, i32 253, i32 279, i32 307, i32 337, i32 371, i32 408, i32 449, i32 494, i32 544, i32 598, i32 658, i32 724, i32 796, i32 876, i32 963, i32 1060, i32 1166, i32 1282, i32 1411, i32 1552, i32 1707, i32 1878, i32 2066, i32 2272, i32 2499, i32 2749, i32 3024, i32 3327, i32 3660, i32 4026, i32 4428, i32 4871, i32 5358, i32 5894, i32 6484, i32 7132, i32 7845, i32 8630, i32 9493, i32 10442, i32 11487, i32 12635, i32 13899, i32 15289, i32 16818, i32 18500, i32 20350, i32 22385, i32 24623, i32 27086, i32 29794, i32 32767], align 16
@indexTable = internal global [16 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 2, i32 4, i32 6, i32 8, i32 -1, i32 -1, i32 -1, i32 -1, i32 2, i32 4, i32 6, i32 8], align 16
@.str = private unnamed_addr constant [15 x i8] c"_finfo_dataset\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"rt\00", align 1
@stderr = external global ptr, align 8
@.str.2 = private unnamed_addr constant [29 x i8] c"\0AError: Can't find dataset!\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@state = dso_local global %struct.adpcm_state zeroinitializer, align 2
@sbuf = dso_local global [1000 x i16] zeroinitializer, align 16
@.str.4 = private unnamed_addr constant [11 x i8] c"input file\00", align 1
@abuf = dso_local global [500 x i8] zeroinitializer, align 16

; Function Attrs: nounwind uwtable
define dso_local void @adpcm_coder(ptr noundef %indata, ptr noundef %outdata, i32 noundef %len, ptr noundef %state) #0 {
entry:
  %indata.addr = alloca ptr, align 8
  %outdata.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %state.addr = alloca ptr, align 8
  %inp = alloca ptr, align 8
  %outp = alloca ptr, align 8
  %val = alloca i32, align 4
  %sign = alloca i32, align 4
  %delta = alloca i32, align 4
  %diff = alloca i32, align 4
  %step = alloca i32, align 4
  %valpred = alloca i32, align 4
  %vpdiff = alloca i32, align 4
  %index = alloca i32, align 4
  %outputbuffer = alloca i32, align 4
  %bufferstep = alloca i32, align 4
  store ptr %indata, ptr %indata.addr, align 8, !tbaa !5
  store ptr %outdata, ptr %outdata.addr, align 8, !tbaa !10
  store i32 %len, ptr %len.addr, align 4, !tbaa !12
  store ptr %state, ptr %state.addr, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 8, ptr %inp) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %outp) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %val) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %sign) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %delta) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %diff) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %step) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %valpred) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %vpdiff) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %outputbuffer) #7
  store i32 0, ptr %outputbuffer, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %bufferstep) #7
  %0 = load ptr, ptr %outdata.addr, align 8, !tbaa !10
  store ptr %0, ptr %outp, align 8, !tbaa !10
  %1 = load ptr, ptr %indata.addr, align 8, !tbaa !5
  store ptr %1, ptr %inp, align 8, !tbaa !5
  %2 = load ptr, ptr %state.addr, align 8, !tbaa !14
  %valprev = getelementptr inbounds nuw %struct.adpcm_state, ptr %2, i32 0, i32 0
  %3 = load i16, ptr %valprev, align 2, !tbaa !16
  %conv = sext i16 %3 to i32
  store i32 %conv, ptr %valpred, align 4, !tbaa !12
  %4 = load ptr, ptr %state.addr, align 8, !tbaa !14
  %index1 = getelementptr inbounds nuw %struct.adpcm_state, ptr %4, i32 0, i32 1
  %5 = load i8, ptr %index1, align 2, !tbaa !19
  %conv2 = sext i8 %5 to i32
  store i32 %conv2, ptr %index, align 4, !tbaa !12
  %6 = load i32, ptr %index, align 4, !tbaa !12
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [89 x i32], ptr @stepsizeTable, i64 0, i64 %idxprom
  %7 = load i32, ptr %arrayidx, align 4, !tbaa !12
  store i32 %7, ptr %step, align 4, !tbaa !12
  store i32 1, ptr %bufferstep, align 4, !tbaa !12
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load i32, ptr %len.addr, align 4, !tbaa !12
  %cmp = icmp sgt i32 %8, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load ptr, ptr %inp, align 8, !tbaa !5
  %incdec.ptr = getelementptr inbounds nuw i16, ptr %9, i32 1
  store ptr %incdec.ptr, ptr %inp, align 8, !tbaa !5
  %10 = load i16, ptr %9, align 2, !tbaa !20
  %conv4 = sext i16 %10 to i32
  store i32 %conv4, ptr %val, align 4, !tbaa !12
  %11 = load i32, ptr %val, align 4, !tbaa !12
  %12 = load i32, ptr %valpred, align 4, !tbaa !12
  %sub = sub nsw i32 %11, %12
  store i32 %sub, ptr %diff, align 4, !tbaa !12
  %13 = load i32, ptr %diff, align 4, !tbaa !12
  %cmp5 = icmp slt i32 %13, 0
  %14 = zext i1 %cmp5 to i64
  %cond = select i1 %cmp5, i32 8, i32 0
  store i32 %cond, ptr %sign, align 4, !tbaa !12
  %15 = load i32, ptr %sign, align 4, !tbaa !12
  %tobool = icmp ne i32 %15, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %16 = load i32, ptr %diff, align 4, !tbaa !12
  %sub7 = sub nsw i32 0, %16
  store i32 %sub7, ptr %diff, align 4, !tbaa !12
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  store i32 0, ptr %delta, align 4, !tbaa !12
  %17 = load i32, ptr %step, align 4, !tbaa !12
  %shr = ashr i32 %17, 3
  store i32 %shr, ptr %vpdiff, align 4, !tbaa !12
  %18 = load i32, ptr %diff, align 4, !tbaa !12
  %19 = load i32, ptr %step, align 4, !tbaa !12
  %cmp8 = icmp sge i32 %18, %19
  br i1 %cmp8, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end
  store i32 4, ptr %delta, align 4, !tbaa !12
  %20 = load i32, ptr %step, align 4, !tbaa !12
  %21 = load i32, ptr %diff, align 4, !tbaa !12
  %sub11 = sub nsw i32 %21, %20
  store i32 %sub11, ptr %diff, align 4, !tbaa !12
  %22 = load i32, ptr %step, align 4, !tbaa !12
  %23 = load i32, ptr %vpdiff, align 4, !tbaa !12
  %add = add nsw i32 %23, %22
  store i32 %add, ptr %vpdiff, align 4, !tbaa !12
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end
  %24 = load i32, ptr %step, align 4, !tbaa !12
  %shr13 = ashr i32 %24, 1
  store i32 %shr13, ptr %step, align 4, !tbaa !12
  %25 = load i32, ptr %diff, align 4, !tbaa !12
  %26 = load i32, ptr %step, align 4, !tbaa !12
  %cmp14 = icmp sge i32 %25, %26
  br i1 %cmp14, label %if.then16, label %if.end19

if.then16:                                        ; preds = %if.end12
  %27 = load i32, ptr %delta, align 4, !tbaa !12
  %or = or i32 %27, 2
  store i32 %or, ptr %delta, align 4, !tbaa !12
  %28 = load i32, ptr %step, align 4, !tbaa !12
  %29 = load i32, ptr %diff, align 4, !tbaa !12
  %sub17 = sub nsw i32 %29, %28
  store i32 %sub17, ptr %diff, align 4, !tbaa !12
  %30 = load i32, ptr %step, align 4, !tbaa !12
  %31 = load i32, ptr %vpdiff, align 4, !tbaa !12
  %add18 = add nsw i32 %31, %30
  store i32 %add18, ptr %vpdiff, align 4, !tbaa !12
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %if.end12
  %32 = load i32, ptr %step, align 4, !tbaa !12
  %shr20 = ashr i32 %32, 1
  store i32 %shr20, ptr %step, align 4, !tbaa !12
  %33 = load i32, ptr %diff, align 4, !tbaa !12
  %34 = load i32, ptr %step, align 4, !tbaa !12
  %cmp21 = icmp sge i32 %33, %34
  br i1 %cmp21, label %if.then23, label %if.end26

if.then23:                                        ; preds = %if.end19
  %35 = load i32, ptr %delta, align 4, !tbaa !12
  %or24 = or i32 %35, 1
  store i32 %or24, ptr %delta, align 4, !tbaa !12
  %36 = load i32, ptr %step, align 4, !tbaa !12
  %37 = load i32, ptr %vpdiff, align 4, !tbaa !12
  %add25 = add nsw i32 %37, %36
  store i32 %add25, ptr %vpdiff, align 4, !tbaa !12
  br label %if.end26

if.end26:                                         ; preds = %if.then23, %if.end19
  %38 = load i32, ptr %sign, align 4, !tbaa !12
  %tobool27 = icmp ne i32 %38, 0
  br i1 %tobool27, label %if.then28, label %if.else

if.then28:                                        ; preds = %if.end26
  %39 = load i32, ptr %vpdiff, align 4, !tbaa !12
  %40 = load i32, ptr %valpred, align 4, !tbaa !12
  %sub29 = sub nsw i32 %40, %39
  store i32 %sub29, ptr %valpred, align 4, !tbaa !12
  br label %if.end31

if.else:                                          ; preds = %if.end26
  %41 = load i32, ptr %vpdiff, align 4, !tbaa !12
  %42 = load i32, ptr %valpred, align 4, !tbaa !12
  %add30 = add nsw i32 %42, %41
  store i32 %add30, ptr %valpred, align 4, !tbaa !12
  br label %if.end31

if.end31:                                         ; preds = %if.else, %if.then28
  %43 = load i32, ptr %valpred, align 4, !tbaa !12
  %cmp32 = icmp sgt i32 %43, 32767
  br i1 %cmp32, label %if.then34, label %if.else35

if.then34:                                        ; preds = %if.end31
  store i32 32767, ptr %valpred, align 4, !tbaa !12
  br label %if.end40

if.else35:                                        ; preds = %if.end31
  %44 = load i32, ptr %valpred, align 4, !tbaa !12
  %cmp36 = icmp slt i32 %44, -32768
  br i1 %cmp36, label %if.then38, label %if.end39

if.then38:                                        ; preds = %if.else35
  store i32 -32768, ptr %valpred, align 4, !tbaa !12
  br label %if.end39

if.end39:                                         ; preds = %if.then38, %if.else35
  br label %if.end40

if.end40:                                         ; preds = %if.end39, %if.then34
  %45 = load i32, ptr %sign, align 4, !tbaa !12
  %46 = load i32, ptr %delta, align 4, !tbaa !12
  %or41 = or i32 %46, %45
  store i32 %or41, ptr %delta, align 4, !tbaa !12
  %47 = load i32, ptr %delta, align 4, !tbaa !12
  %idxprom42 = sext i32 %47 to i64
  %arrayidx43 = getelementptr inbounds [16 x i32], ptr @indexTable, i64 0, i64 %idxprom42
  %48 = load i32, ptr %arrayidx43, align 4, !tbaa !12
  %49 = load i32, ptr %index, align 4, !tbaa !12
  %add44 = add nsw i32 %49, %48
  store i32 %add44, ptr %index, align 4, !tbaa !12
  %50 = load i32, ptr %index, align 4, !tbaa !12
  %cmp45 = icmp slt i32 %50, 0
  br i1 %cmp45, label %if.then47, label %if.end48

if.then47:                                        ; preds = %if.end40
  store i32 0, ptr %index, align 4, !tbaa !12
  br label %if.end48

if.end48:                                         ; preds = %if.then47, %if.end40
  %51 = load i32, ptr %index, align 4, !tbaa !12
  %cmp49 = icmp sgt i32 %51, 88
  br i1 %cmp49, label %if.then51, label %if.end52

if.then51:                                        ; preds = %if.end48
  store i32 88, ptr %index, align 4, !tbaa !12
  br label %if.end52

if.end52:                                         ; preds = %if.then51, %if.end48
  %52 = load i32, ptr %index, align 4, !tbaa !12
  %idxprom53 = sext i32 %52 to i64
  %arrayidx54 = getelementptr inbounds [89 x i32], ptr @stepsizeTable, i64 0, i64 %idxprom53
  %53 = load i32, ptr %arrayidx54, align 4, !tbaa !12
  store i32 %53, ptr %step, align 4, !tbaa !12
  %54 = load i32, ptr %bufferstep, align 4, !tbaa !12
  %tobool55 = icmp ne i32 %54, 0
  br i1 %tobool55, label %if.then56, label %if.else57

if.then56:                                        ; preds = %if.end52
  %55 = load i32, ptr %delta, align 4, !tbaa !12
  %shl = shl i32 %55, 4
  %and = and i32 %shl, 240
  store i32 %and, ptr %outputbuffer, align 4, !tbaa !12
  br label %if.end62

if.else57:                                        ; preds = %if.end52
  %56 = load i32, ptr %delta, align 4, !tbaa !12
  %and58 = and i32 %56, 15
  %57 = load i32, ptr %outputbuffer, align 4, !tbaa !12
  %or59 = or i32 %and58, %57
  %conv60 = trunc i32 %or59 to i8
  %58 = load ptr, ptr %outp, align 8, !tbaa !10
  %incdec.ptr61 = getelementptr inbounds nuw i8, ptr %58, i32 1
  store ptr %incdec.ptr61, ptr %outp, align 8, !tbaa !10
  store i8 %conv60, ptr %58, align 1, !tbaa !21
  br label %if.end62

if.end62:                                         ; preds = %if.else57, %if.then56
  %59 = load i32, ptr %bufferstep, align 4, !tbaa !12
  %tobool63 = icmp ne i32 %59, 0
  %lnot = xor i1 %tobool63, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, ptr %bufferstep, align 4, !tbaa !12
  br label %for.inc

for.inc:                                          ; preds = %if.end62
  %60 = load i32, ptr %len.addr, align 4, !tbaa !12
  %dec = add nsw i32 %60, -1
  store i32 %dec, ptr %len.addr, align 4, !tbaa !12
  br label %for.cond, !llvm.loop !22

for.end:                                          ; preds = %for.cond
  %61 = load i32, ptr %bufferstep, align 4, !tbaa !12
  %tobool64 = icmp ne i32 %61, 0
  br i1 %tobool64, label %if.end68, label %if.then65

if.then65:                                        ; preds = %for.end
  %62 = load i32, ptr %outputbuffer, align 4, !tbaa !12
  %conv66 = trunc i32 %62 to i8
  %63 = load ptr, ptr %outp, align 8, !tbaa !10
  %incdec.ptr67 = getelementptr inbounds nuw i8, ptr %63, i32 1
  store ptr %incdec.ptr67, ptr %outp, align 8, !tbaa !10
  store i8 %conv66, ptr %63, align 1, !tbaa !21
  br label %if.end68

if.end68:                                         ; preds = %if.then65, %for.end
  %64 = load i32, ptr %valpred, align 4, !tbaa !12
  %conv69 = trunc i32 %64 to i16
  %65 = load ptr, ptr %state.addr, align 8, !tbaa !14
  %valprev70 = getelementptr inbounds nuw %struct.adpcm_state, ptr %65, i32 0, i32 0
  store i16 %conv69, ptr %valprev70, align 2, !tbaa !16
  %66 = load i32, ptr %index, align 4, !tbaa !12
  %conv71 = trunc i32 %66 to i8
  %67 = load ptr, ptr %state.addr, align 8, !tbaa !14
  %index72 = getelementptr inbounds nuw %struct.adpcm_state, ptr %67, i32 0, i32 1
  store i8 %conv71, ptr %index72, align 2, !tbaa !19
  call void @llvm.lifetime.end.p0(i64 4, ptr %bufferstep) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %outputbuffer) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %vpdiff) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %valpred) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %step) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %diff) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %delta) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %sign) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %val) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %outp) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %inp) #7
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local void @adpcm_decoder(ptr noundef %indata, ptr noundef %outdata, i32 noundef %len, ptr noundef %state) #0 {
entry:
  %indata.addr = alloca ptr, align 8
  %outdata.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %state.addr = alloca ptr, align 8
  %inp = alloca ptr, align 8
  %outp = alloca ptr, align 8
  %sign = alloca i32, align 4
  %delta = alloca i32, align 4
  %step = alloca i32, align 4
  %valpred = alloca i32, align 4
  %vpdiff = alloca i32, align 4
  %index = alloca i32, align 4
  %inputbuffer = alloca i32, align 4
  %bufferstep = alloca i32, align 4
  store ptr %indata, ptr %indata.addr, align 8, !tbaa !10
  store ptr %outdata, ptr %outdata.addr, align 8, !tbaa !5
  store i32 %len, ptr %len.addr, align 4, !tbaa !12
  store ptr %state, ptr %state.addr, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 8, ptr %inp) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %outp) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %sign) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %delta) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %step) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %valpred) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %vpdiff) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %inputbuffer) #7
  store i32 0, ptr %inputbuffer, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %bufferstep) #7
  %0 = load ptr, ptr %outdata.addr, align 8, !tbaa !5
  store ptr %0, ptr %outp, align 8, !tbaa !5
  %1 = load ptr, ptr %indata.addr, align 8, !tbaa !10
  store ptr %1, ptr %inp, align 8, !tbaa !10
  %2 = load ptr, ptr %state.addr, align 8, !tbaa !14
  %valprev = getelementptr inbounds nuw %struct.adpcm_state, ptr %2, i32 0, i32 0
  %3 = load i16, ptr %valprev, align 2, !tbaa !16
  %conv = sext i16 %3 to i32
  store i32 %conv, ptr %valpred, align 4, !tbaa !12
  %4 = load ptr, ptr %state.addr, align 8, !tbaa !14
  %index1 = getelementptr inbounds nuw %struct.adpcm_state, ptr %4, i32 0, i32 1
  %5 = load i8, ptr %index1, align 2, !tbaa !19
  %conv2 = sext i8 %5 to i32
  store i32 %conv2, ptr %index, align 4, !tbaa !12
  %6 = load i32, ptr %index, align 4, !tbaa !12
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [89 x i32], ptr @stepsizeTable, i64 0, i64 %idxprom
  %7 = load i32, ptr %arrayidx, align 4, !tbaa !12
  store i32 %7, ptr %step, align 4, !tbaa !12
  store i32 0, ptr %bufferstep, align 4, !tbaa !12
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load i32, ptr %len.addr, align 4, !tbaa !12
  %cmp = icmp sgt i32 %8, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, ptr %bufferstep, align 4, !tbaa !12
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %10 = load i32, ptr %inputbuffer, align 4, !tbaa !12
  %and = and i32 %10, 15
  store i32 %and, ptr %delta, align 4, !tbaa !12
  br label %if.end

if.else:                                          ; preds = %for.body
  %11 = load ptr, ptr %inp, align 8, !tbaa !10
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %11, i32 1
  store ptr %incdec.ptr, ptr %inp, align 8, !tbaa !10
  %12 = load i8, ptr %11, align 1, !tbaa !21
  %conv4 = sext i8 %12 to i32
  store i32 %conv4, ptr %inputbuffer, align 4, !tbaa !12
  %13 = load i32, ptr %inputbuffer, align 4, !tbaa !12
  %shr = ashr i32 %13, 4
  %and5 = and i32 %shr, 15
  store i32 %and5, ptr %delta, align 4, !tbaa !12
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %14 = load i32, ptr %bufferstep, align 4, !tbaa !12
  %tobool6 = icmp ne i32 %14, 0
  %lnot = xor i1 %tobool6, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, ptr %bufferstep, align 4, !tbaa !12
  %15 = load i32, ptr %delta, align 4, !tbaa !12
  %idxprom7 = sext i32 %15 to i64
  %arrayidx8 = getelementptr inbounds [16 x i32], ptr @indexTable, i64 0, i64 %idxprom7
  %16 = load i32, ptr %arrayidx8, align 4, !tbaa !12
  %17 = load i32, ptr %index, align 4, !tbaa !12
  %add = add nsw i32 %17, %16
  store i32 %add, ptr %index, align 4, !tbaa !12
  %18 = load i32, ptr %index, align 4, !tbaa !12
  %cmp9 = icmp slt i32 %18, 0
  br i1 %cmp9, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end
  store i32 0, ptr %index, align 4, !tbaa !12
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end
  %19 = load i32, ptr %index, align 4, !tbaa !12
  %cmp13 = icmp sgt i32 %19, 88
  br i1 %cmp13, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end12
  store i32 88, ptr %index, align 4, !tbaa !12
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.end12
  %20 = load i32, ptr %delta, align 4, !tbaa !12
  %and17 = and i32 %20, 8
  store i32 %and17, ptr %sign, align 4, !tbaa !12
  %21 = load i32, ptr %delta, align 4, !tbaa !12
  %and18 = and i32 %21, 7
  store i32 %and18, ptr %delta, align 4, !tbaa !12
  %22 = load i32, ptr %step, align 4, !tbaa !12
  %shr19 = ashr i32 %22, 3
  store i32 %shr19, ptr %vpdiff, align 4, !tbaa !12
  %23 = load i32, ptr %delta, align 4, !tbaa !12
  %and20 = and i32 %23, 4
  %tobool21 = icmp ne i32 %and20, 0
  br i1 %tobool21, label %if.then22, label %if.end24

if.then22:                                        ; preds = %if.end16
  %24 = load i32, ptr %step, align 4, !tbaa !12
  %25 = load i32, ptr %vpdiff, align 4, !tbaa !12
  %add23 = add nsw i32 %25, %24
  store i32 %add23, ptr %vpdiff, align 4, !tbaa !12
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %if.end16
  %26 = load i32, ptr %delta, align 4, !tbaa !12
  %and25 = and i32 %26, 2
  %tobool26 = icmp ne i32 %and25, 0
  br i1 %tobool26, label %if.then27, label %if.end30

if.then27:                                        ; preds = %if.end24
  %27 = load i32, ptr %step, align 4, !tbaa !12
  %shr28 = ashr i32 %27, 1
  %28 = load i32, ptr %vpdiff, align 4, !tbaa !12
  %add29 = add nsw i32 %28, %shr28
  store i32 %add29, ptr %vpdiff, align 4, !tbaa !12
  br label %if.end30

if.end30:                                         ; preds = %if.then27, %if.end24
  %29 = load i32, ptr %delta, align 4, !tbaa !12
  %and31 = and i32 %29, 1
  %tobool32 = icmp ne i32 %and31, 0
  br i1 %tobool32, label %if.then33, label %if.end36

if.then33:                                        ; preds = %if.end30
  %30 = load i32, ptr %step, align 4, !tbaa !12
  %shr34 = ashr i32 %30, 2
  %31 = load i32, ptr %vpdiff, align 4, !tbaa !12
  %add35 = add nsw i32 %31, %shr34
  store i32 %add35, ptr %vpdiff, align 4, !tbaa !12
  br label %if.end36

if.end36:                                         ; preds = %if.then33, %if.end30
  %32 = load i32, ptr %sign, align 4, !tbaa !12
  %tobool37 = icmp ne i32 %32, 0
  br i1 %tobool37, label %if.then38, label %if.else39

if.then38:                                        ; preds = %if.end36
  %33 = load i32, ptr %vpdiff, align 4, !tbaa !12
  %34 = load i32, ptr %valpred, align 4, !tbaa !12
  %sub = sub nsw i32 %34, %33
  store i32 %sub, ptr %valpred, align 4, !tbaa !12
  br label %if.end41

if.else39:                                        ; preds = %if.end36
  %35 = load i32, ptr %vpdiff, align 4, !tbaa !12
  %36 = load i32, ptr %valpred, align 4, !tbaa !12
  %add40 = add nsw i32 %36, %35
  store i32 %add40, ptr %valpred, align 4, !tbaa !12
  br label %if.end41

if.end41:                                         ; preds = %if.else39, %if.then38
  %37 = load i32, ptr %valpred, align 4, !tbaa !12
  %cmp42 = icmp sgt i32 %37, 32767
  br i1 %cmp42, label %if.then44, label %if.else45

if.then44:                                        ; preds = %if.end41
  store i32 32767, ptr %valpred, align 4, !tbaa !12
  br label %if.end50

if.else45:                                        ; preds = %if.end41
  %38 = load i32, ptr %valpred, align 4, !tbaa !12
  %cmp46 = icmp slt i32 %38, -32768
  br i1 %cmp46, label %if.then48, label %if.end49

if.then48:                                        ; preds = %if.else45
  store i32 -32768, ptr %valpred, align 4, !tbaa !12
  br label %if.end49

if.end49:                                         ; preds = %if.then48, %if.else45
  br label %if.end50

if.end50:                                         ; preds = %if.end49, %if.then44
  %39 = load i32, ptr %index, align 4, !tbaa !12
  %idxprom51 = sext i32 %39 to i64
  %arrayidx52 = getelementptr inbounds [89 x i32], ptr @stepsizeTable, i64 0, i64 %idxprom51
  %40 = load i32, ptr %arrayidx52, align 4, !tbaa !12
  store i32 %40, ptr %step, align 4, !tbaa !12
  %41 = load i32, ptr %valpred, align 4, !tbaa !12
  %conv53 = trunc i32 %41 to i16
  %42 = load ptr, ptr %outp, align 8, !tbaa !5
  %incdec.ptr54 = getelementptr inbounds nuw i16, ptr %42, i32 1
  store ptr %incdec.ptr54, ptr %outp, align 8, !tbaa !5
  store i16 %conv53, ptr %42, align 2, !tbaa !20
  br label %for.inc

for.inc:                                          ; preds = %if.end50
  %43 = load i32, ptr %len.addr, align 4, !tbaa !12
  %dec = add nsw i32 %43, -1
  store i32 %dec, ptr %len.addr, align 4, !tbaa !12
  br label %for.cond, !llvm.loop !24

for.end:                                          ; preds = %for.cond
  %44 = load i32, ptr %valpred, align 4, !tbaa !12
  %conv55 = trunc i32 %44 to i16
  %45 = load ptr, ptr %state.addr, align 8, !tbaa !14
  %valprev56 = getelementptr inbounds nuw %struct.adpcm_state, ptr %45, i32 0, i32 0
  store i16 %conv55, ptr %valprev56, align 2, !tbaa !16
  %46 = load i32, ptr %index, align 4, !tbaa !12
  %conv57 = trunc i32 %46 to i8
  %47 = load ptr, ptr %state.addr, align 8, !tbaa !14
  %index58 = getelementptr inbounds nuw %struct.adpcm_state, ptr %47, i32 0, i32 1
  store i8 %conv57, ptr %index58, align 2, !tbaa !19
  call void @llvm.lifetime.end.p0(i64 4, ptr %bufferstep) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %inputbuffer) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %vpdiff) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %valpred) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %step) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %delta) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %sign) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %outp) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %inp) #7
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %loop_wrap = alloca ptr, align 8
  %loop_wrap1 = alloca i64, align 8
  %loop_wrap2 = alloca i64, align 8
  %n = alloca i32, align 4
  %current_state = alloca %struct.adpcm_state, align 2
  %cleanup.dest.slot = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %loop_wrap) #7
  store ptr null, ptr %loop_wrap, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(i64 8, ptr %loop_wrap1) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %loop_wrap2) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #7
  %call = call noalias ptr @fopen(ptr noundef @.str, ptr noundef @.str.1)
  store ptr %call, ptr %loop_wrap, align 8, !tbaa !25
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr @stderr, align 8, !tbaa !25
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef @.str.2) #7
  call void @exit(i32 noundef 1) #8
  unreachable

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %loop_wrap, align 8, !tbaa !25
  %call2 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %1, ptr noundef @.str.3, ptr noundef %loop_wrap2)
  %2 = load ptr, ptr %loop_wrap, align 8, !tbaa !25
  %call3 = call i32 @fclose(ptr noundef %2)
  br label %while.cond

while.cond:                                       ; preds = %cleanup.cont, %if.end
  br label %while.body

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %current_state) #7
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %current_state, ptr align 2 @state, i64 4, i1 false), !tbaa.struct !27
  %call4 = call i64 @read(i32 noundef 0, ptr noundef @sbuf, i64 noundef 2000)
  %conv = trunc i64 %call4 to i32
  store i32 %conv, ptr %n, align 4, !tbaa !12
  %3 = load i32, ptr %n, align 4, !tbaa !12
  %cmp5 = icmp slt i32 %3, 0
  br i1 %cmp5, label %if.then7, label %if.end8

if.then7:                                         ; preds = %while.body
  call void @perror(ptr noundef @.str.4) #9
  call void @exit(i32 noundef 1) #8
  unreachable

if.end8:                                          ; preds = %while.body
  %4 = load i32, ptr %n, align 4, !tbaa !12
  %cmp9 = icmp eq i32 %4, 0
  br i1 %cmp9, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end8
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  store i64 0, ptr %loop_wrap1, align 8, !tbaa !28
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end12
  %5 = load i64, ptr %loop_wrap1, align 8, !tbaa !28
  %6 = load i64, ptr %loop_wrap2, align 8, !tbaa !28
  %cmp13 = icmp slt i64 %5, %6
  br i1 %cmp13, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 @state, ptr align 2 %current_state, i64 4, i1 false), !tbaa.struct !27
  %7 = load i32, ptr %n, align 4, !tbaa !12
  %div = sdiv i32 %7, 2
  call void @adpcm_coder(ptr noundef @sbuf, ptr noundef @abuf, i32 noundef %div, ptr noundef @state)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i64, ptr %loop_wrap1, align 8, !tbaa !28
  %inc = add nsw i64 %8, 1
  store i64 %inc, ptr %loop_wrap1, align 8, !tbaa !28
  br label %for.cond, !llvm.loop !30

for.end:                                          ; preds = %for.cond
  %9 = load i32, ptr %n, align 4, !tbaa !12
  %div15 = sdiv i32 %9, 4
  %conv16 = sext i32 %div15 to i64
  %call17 = call i64 @write(i32 noundef 1, ptr noundef @abuf, i64 noundef %conv16)
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then11
  call void @llvm.lifetime.end.p0(i64 4, ptr %current_state) #7
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 3, label %while.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond, !llvm.loop !31

while.end:                                        ; preds = %cleanup
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %loop_wrap2) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %loop_wrap1) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %loop_wrap) #7
  %10 = load i32, ptr %retval, align 4
  ret i32 %10

unreachable:                                      ; preds = %cleanup
  unreachable
}

declare noalias ptr @fopen(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind
declare i32 @fprintf(ptr noundef, ptr noundef, ...) #3

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) #4

declare i32 @__isoc99_fscanf(ptr noundef, ptr noundef, ...) #2

declare i32 @fclose(ptr noundef) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

declare i64 @read(i32 noundef, ptr noundef, i64 noundef) #2

; Function Attrs: cold
declare void @perror(ptr noundef) #6

declare i64 @write(i32 noundef, ptr noundef, i64 noundef) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }
attributes #9 = { cold }

!llvm.ident = !{!0, !0}
!llvm.module.flags = !{!1, !2, !3, !4}

!0 = !{!"clang version 21.1.8 (https://github.com/llvm/llvm-project.git 2078da43e25a4623cab2d0d60decddf709aaea28)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!6, !6, i64 0}
!6 = !{!"p1 short", !7, i64 0}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !11, i64 0}
!11 = !{!"p1 omnipotent char", !7, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"int", !8, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"p1 _ZTS11adpcm_state", !7, i64 0}
!16 = !{!17, !18, i64 0}
!17 = !{!"adpcm_state", !18, i64 0, !8, i64 2}
!18 = !{!"short", !8, i64 0}
!19 = !{!17, !8, i64 2}
!20 = !{!18, !18, i64 0}
!21 = !{!8, !8, i64 0}
!22 = distinct !{!22, !23}
!23 = !{!"llvm.loop.unroll.disable"}
!24 = distinct !{!24, !23}
!25 = !{!26, !26, i64 0}
!26 = !{!"p1 _ZTS8_IO_FILE", !7, i64 0}
!27 = !{i64 0, i64 2, !20, i64 2, i64 1, !21}
!28 = !{!29, !29, i64 0}
!29 = !{!"long", !8, i64 0}
!30 = distinct !{!30, !23}
!31 = distinct !{!31, !23}
