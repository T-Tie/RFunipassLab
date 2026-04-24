; ModuleID = '/tmp/tmp34chhjcq.cpp'
source_filename = "/tmp/tmp34chhjcq.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_Z4xiaoPA100_ii(ptr noundef %a, i32 noundef %n) #0 {
entry:
  %a.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %min = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store ptr %a, ptr %a.addr, align 8, !tbaa !5
  store i32 %n, ptr %n.addr, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %min) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #5
  store i32 0, ptr %i, align 4, !tbaa !10
  br label %for.cond

for.cond:                                         ; preds = %for.inc31, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !10
  %1 = load i32, ptr %n.addr, align 4, !tbaa !10
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end33

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %a.addr, align 8, !tbaa !5
  %3 = load i32, ptr %i, align 4, !tbaa !10
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [100 x i32], ptr %2, i64 %idxprom
  %arrayidx1 = getelementptr inbounds [100 x i32], ptr %arrayidx, i64 0, i64 0
  %4 = load i32, ptr %arrayidx1, align 4, !tbaa !10
  store i32 %4, ptr %min, align 4, !tbaa !10
  store i32 0, ptr %j, align 4, !tbaa !10
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body
  %5 = load i32, ptr %j, align 4, !tbaa !10
  %6 = load i32, ptr %n.addr, align 4, !tbaa !10
  %cmp3 = icmp slt i32 %5, %6
  br i1 %cmp3, label %for.body4, label %for.end

for.body4:                                        ; preds = %for.cond2
  %7 = load ptr, ptr %a.addr, align 8, !tbaa !5
  %8 = load i32, ptr %i, align 4, !tbaa !10
  %idxprom5 = sext i32 %8 to i64
  %arrayidx6 = getelementptr inbounds [100 x i32], ptr %7, i64 %idxprom5
  %9 = load i32, ptr %j, align 4, !tbaa !10
  %idxprom7 = sext i32 %9 to i64
  %arrayidx8 = getelementptr inbounds [100 x i32], ptr %arrayidx6, i64 0, i64 %idxprom7
  %10 = load i32, ptr %arrayidx8, align 4, !tbaa !10
  %11 = load i32, ptr %min, align 4, !tbaa !10
  %cmp9 = icmp slt i32 %10, %11
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %for.body4
  %12 = load ptr, ptr %a.addr, align 8, !tbaa !5
  %13 = load i32, ptr %i, align 4, !tbaa !10
  %idxprom10 = sext i32 %13 to i64
  %arrayidx11 = getelementptr inbounds [100 x i32], ptr %12, i64 %idxprom10
  %14 = load i32, ptr %j, align 4, !tbaa !10
  %idxprom12 = sext i32 %14 to i64
  %arrayidx13 = getelementptr inbounds [100 x i32], ptr %arrayidx11, i64 0, i64 %idxprom12
  %15 = load i32, ptr %arrayidx13, align 4, !tbaa !10
  store i32 %15, ptr %min, align 4, !tbaa !10
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body4
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %16 = load i32, ptr %j, align 4, !tbaa !10
  %inc = add nsw i32 %16, 1
  store i32 %inc, ptr %j, align 4, !tbaa !10
  br label %for.cond2, !llvm.loop !12

for.end:                                          ; preds = %for.cond2
  %17 = load i32, ptr %min, align 4, !tbaa !10
  %cmp14 = icmp sgt i32 %17, 0
  br i1 %cmp14, label %if.then15, label %if.end30

if.then15:                                        ; preds = %for.end
  store i32 0, ptr %j, align 4, !tbaa !10
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc27, %if.then15
  %18 = load i32, ptr %j, align 4, !tbaa !10
  %19 = load i32, ptr %n.addr, align 4, !tbaa !10
  %cmp17 = icmp slt i32 %18, %19
  br i1 %cmp17, label %for.body18, label %for.end29

for.body18:                                       ; preds = %for.cond16
  %20 = load ptr, ptr %a.addr, align 8, !tbaa !5
  %21 = load i32, ptr %i, align 4, !tbaa !10
  %idxprom19 = sext i32 %21 to i64
  %arrayidx20 = getelementptr inbounds [100 x i32], ptr %20, i64 %idxprom19
  %22 = load i32, ptr %j, align 4, !tbaa !10
  %idxprom21 = sext i32 %22 to i64
  %arrayidx22 = getelementptr inbounds [100 x i32], ptr %arrayidx20, i64 0, i64 %idxprom21
  %23 = load i32, ptr %arrayidx22, align 4, !tbaa !10
  %24 = load i32, ptr %min, align 4, !tbaa !10
  %sub = sub nsw i32 %23, %24
  %25 = load ptr, ptr %a.addr, align 8, !tbaa !5
  %26 = load i32, ptr %i, align 4, !tbaa !10
  %idxprom23 = sext i32 %26 to i64
  %arrayidx24 = getelementptr inbounds [100 x i32], ptr %25, i64 %idxprom23
  %27 = load i32, ptr %j, align 4, !tbaa !10
  %idxprom25 = sext i32 %27 to i64
  %arrayidx26 = getelementptr inbounds [100 x i32], ptr %arrayidx24, i64 0, i64 %idxprom25
  store i32 %sub, ptr %arrayidx26, align 4, !tbaa !10
  br label %for.inc27

for.inc27:                                        ; preds = %for.body18
  %28 = load i32, ptr %j, align 4, !tbaa !10
  %inc28 = add nsw i32 %28, 1
  store i32 %inc28, ptr %j, align 4, !tbaa !10
  br label %for.cond16, !llvm.loop !15

for.end29:                                        ; preds = %for.cond16
  br label %if.end30

if.end30:                                         ; preds = %for.end29, %for.end
  br label %for.inc31

for.inc31:                                        ; preds = %if.end30
  %29 = load i32, ptr %i, align 4, !tbaa !10
  %inc32 = add nsw i32 %29, 1
  store i32 %inc32, ptr %i, align 4, !tbaa !10
  br label %for.cond, !llvm.loop !16

for.end33:                                        ; preds = %for.cond
  store i32 0, ptr %j, align 4, !tbaa !10
  br label %for.cond34

for.cond34:                                       ; preds = %for.inc75, %for.end33
  %30 = load i32, ptr %j, align 4, !tbaa !10
  %31 = load i32, ptr %n.addr, align 4, !tbaa !10
  %cmp35 = icmp slt i32 %30, %31
  br i1 %cmp35, label %for.body36, label %for.end77

for.body36:                                       ; preds = %for.cond34
  %32 = load ptr, ptr %a.addr, align 8, !tbaa !5
  %arrayidx37 = getelementptr inbounds [100 x i32], ptr %32, i64 0
  %33 = load i32, ptr %j, align 4, !tbaa !10
  %idxprom38 = sext i32 %33 to i64
  %arrayidx39 = getelementptr inbounds [100 x i32], ptr %arrayidx37, i64 0, i64 %idxprom38
  %34 = load i32, ptr %arrayidx39, align 4, !tbaa !10
  store i32 %34, ptr %min, align 4, !tbaa !10
  store i32 0, ptr %i, align 4, !tbaa !10
  br label %for.cond40

for.cond40:                                       ; preds = %for.inc54, %for.body36
  %35 = load i32, ptr %i, align 4, !tbaa !10
  %36 = load i32, ptr %n.addr, align 4, !tbaa !10
  %cmp41 = icmp slt i32 %35, %36
  br i1 %cmp41, label %for.body42, label %for.end56

for.body42:                                       ; preds = %for.cond40
  %37 = load ptr, ptr %a.addr, align 8, !tbaa !5
  %38 = load i32, ptr %i, align 4, !tbaa !10
  %idxprom43 = sext i32 %38 to i64
  %arrayidx44 = getelementptr inbounds [100 x i32], ptr %37, i64 %idxprom43
  %39 = load i32, ptr %j, align 4, !tbaa !10
  %idxprom45 = sext i32 %39 to i64
  %arrayidx46 = getelementptr inbounds [100 x i32], ptr %arrayidx44, i64 0, i64 %idxprom45
  %40 = load i32, ptr %arrayidx46, align 4, !tbaa !10
  %41 = load i32, ptr %min, align 4, !tbaa !10
  %cmp47 = icmp slt i32 %40, %41
  br i1 %cmp47, label %if.then48, label %if.end53

if.then48:                                        ; preds = %for.body42
  %42 = load ptr, ptr %a.addr, align 8, !tbaa !5
  %43 = load i32, ptr %i, align 4, !tbaa !10
  %idxprom49 = sext i32 %43 to i64
  %arrayidx50 = getelementptr inbounds [100 x i32], ptr %42, i64 %idxprom49
  %44 = load i32, ptr %j, align 4, !tbaa !10
  %idxprom51 = sext i32 %44 to i64
  %arrayidx52 = getelementptr inbounds [100 x i32], ptr %arrayidx50, i64 0, i64 %idxprom51
  %45 = load i32, ptr %arrayidx52, align 4, !tbaa !10
  store i32 %45, ptr %min, align 4, !tbaa !10
  br label %if.end53

if.end53:                                         ; preds = %if.then48, %for.body42
  br label %for.inc54

for.inc54:                                        ; preds = %if.end53
  %46 = load i32, ptr %i, align 4, !tbaa !10
  %inc55 = add nsw i32 %46, 1
  store i32 %inc55, ptr %i, align 4, !tbaa !10
  br label %for.cond40, !llvm.loop !17

for.end56:                                        ; preds = %for.cond40
  %47 = load i32, ptr %min, align 4, !tbaa !10
  %cmp57 = icmp sgt i32 %47, 0
  br i1 %cmp57, label %if.then58, label %if.end74

if.then58:                                        ; preds = %for.end56
  store i32 0, ptr %i, align 4, !tbaa !10
  br label %for.cond59

for.cond59:                                       ; preds = %for.inc71, %if.then58
  %48 = load i32, ptr %i, align 4, !tbaa !10
  %49 = load i32, ptr %n.addr, align 4, !tbaa !10
  %cmp60 = icmp slt i32 %48, %49
  br i1 %cmp60, label %for.body61, label %for.end73

for.body61:                                       ; preds = %for.cond59
  %50 = load ptr, ptr %a.addr, align 8, !tbaa !5
  %51 = load i32, ptr %i, align 4, !tbaa !10
  %idxprom62 = sext i32 %51 to i64
  %arrayidx63 = getelementptr inbounds [100 x i32], ptr %50, i64 %idxprom62
  %52 = load i32, ptr %j, align 4, !tbaa !10
  %idxprom64 = sext i32 %52 to i64
  %arrayidx65 = getelementptr inbounds [100 x i32], ptr %arrayidx63, i64 0, i64 %idxprom64
  %53 = load i32, ptr %arrayidx65, align 4, !tbaa !10
  %54 = load i32, ptr %min, align 4, !tbaa !10
  %sub66 = sub nsw i32 %53, %54
  %55 = load ptr, ptr %a.addr, align 8, !tbaa !5
  %56 = load i32, ptr %i, align 4, !tbaa !10
  %idxprom67 = sext i32 %56 to i64
  %arrayidx68 = getelementptr inbounds [100 x i32], ptr %55, i64 %idxprom67
  %57 = load i32, ptr %j, align 4, !tbaa !10
  %idxprom69 = sext i32 %57 to i64
  %arrayidx70 = getelementptr inbounds [100 x i32], ptr %arrayidx68, i64 0, i64 %idxprom69
  store i32 %sub66, ptr %arrayidx70, align 4, !tbaa !10
  br label %for.inc71

for.inc71:                                        ; preds = %for.body61
  %58 = load i32, ptr %i, align 4, !tbaa !10
  %inc72 = add nsw i32 %58, 1
  store i32 %inc72, ptr %i, align 4, !tbaa !10
  br label %for.cond59, !llvm.loop !18

for.end73:                                        ; preds = %for.cond59
  br label %if.end74

if.end74:                                         ; preds = %for.end73, %for.end56
  br label %for.inc75

for.inc75:                                        ; preds = %if.end74
  %59 = load i32, ptr %j, align 4, !tbaa !10
  %inc76 = add nsw i32 %59, 1
  store i32 %inc76, ptr %j, align 4, !tbaa !10
  br label %for.cond34, !llvm.loop !19

for.end77:                                        ; preds = %for.cond34
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %min) #5
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_Z4movePA100_ii(ptr noundef %a, i32 noundef %n) #0 {
entry:
  %a.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store ptr %a, ptr %a.addr, align 8, !tbaa !5
  store i32 %n, ptr %n.addr, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #5
  store i32 0, ptr %i, align 4, !tbaa !10
  br label %for.cond

for.cond:                                         ; preds = %for.inc10, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !10
  %1 = load i32, ptr %n.addr, align 4, !tbaa !10
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end12

for.body:                                         ; preds = %for.cond
  store i32 2, ptr %j, align 4, !tbaa !10
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, ptr %j, align 4, !tbaa !10
  %3 = load i32, ptr %n.addr, align 4, !tbaa !10
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %4 = load ptr, ptr %a.addr, align 8, !tbaa !5
  %5 = load i32, ptr %i, align 4, !tbaa !10
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [100 x i32], ptr %4, i64 %idxprom
  %6 = load i32, ptr %j, align 4, !tbaa !10
  %idxprom4 = sext i32 %6 to i64
  %arrayidx5 = getelementptr inbounds [100 x i32], ptr %arrayidx, i64 0, i64 %idxprom4
  %7 = load i32, ptr %arrayidx5, align 4, !tbaa !10
  %8 = load ptr, ptr %a.addr, align 8, !tbaa !5
  %9 = load i32, ptr %i, align 4, !tbaa !10
  %idxprom6 = sext i32 %9 to i64
  %arrayidx7 = getelementptr inbounds [100 x i32], ptr %8, i64 %idxprom6
  %10 = load i32, ptr %j, align 4, !tbaa !10
  %sub = sub nsw i32 %10, 1
  %idxprom8 = sext i32 %sub to i64
  %arrayidx9 = getelementptr inbounds [100 x i32], ptr %arrayidx7, i64 0, i64 %idxprom8
  store i32 %7, ptr %arrayidx9, align 4, !tbaa !10
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %11 = load i32, ptr %j, align 4, !tbaa !10
  %inc = add nsw i32 %11, 1
  store i32 %inc, ptr %j, align 4, !tbaa !10
  br label %for.cond1, !llvm.loop !20

for.end:                                          ; preds = %for.cond1
  br label %for.inc10

for.inc10:                                        ; preds = %for.end
  %12 = load i32, ptr %i, align 4, !tbaa !10
  %inc11 = add nsw i32 %12, 1
  store i32 %inc11, ptr %i, align 4, !tbaa !10
  br label %for.cond, !llvm.loop !21

for.end12:                                        ; preds = %for.cond
  store i32 0, ptr %j, align 4, !tbaa !10
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc31, %for.end12
  %13 = load i32, ptr %j, align 4, !tbaa !10
  %14 = load i32, ptr %n.addr, align 4, !tbaa !10
  %cmp14 = icmp slt i32 %13, %14
  br i1 %cmp14, label %for.body15, label %for.end33

for.body15:                                       ; preds = %for.cond13
  store i32 2, ptr %i, align 4, !tbaa !10
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc28, %for.body15
  %15 = load i32, ptr %i, align 4, !tbaa !10
  %16 = load i32, ptr %n.addr, align 4, !tbaa !10
  %cmp17 = icmp slt i32 %15, %16
  br i1 %cmp17, label %for.body18, label %for.end30

for.body18:                                       ; preds = %for.cond16
  %17 = load ptr, ptr %a.addr, align 8, !tbaa !5
  %18 = load i32, ptr %i, align 4, !tbaa !10
  %idxprom19 = sext i32 %18 to i64
  %arrayidx20 = getelementptr inbounds [100 x i32], ptr %17, i64 %idxprom19
  %19 = load i32, ptr %j, align 4, !tbaa !10
  %idxprom21 = sext i32 %19 to i64
  %arrayidx22 = getelementptr inbounds [100 x i32], ptr %arrayidx20, i64 0, i64 %idxprom21
  %20 = load i32, ptr %arrayidx22, align 4, !tbaa !10
  %21 = load ptr, ptr %a.addr, align 8, !tbaa !5
  %22 = load i32, ptr %i, align 4, !tbaa !10
  %sub23 = sub nsw i32 %22, 1
  %idxprom24 = sext i32 %sub23 to i64
  %arrayidx25 = getelementptr inbounds [100 x i32], ptr %21, i64 %idxprom24
  %23 = load i32, ptr %j, align 4, !tbaa !10
  %idxprom26 = sext i32 %23 to i64
  %arrayidx27 = getelementptr inbounds [100 x i32], ptr %arrayidx25, i64 0, i64 %idxprom26
  store i32 %20, ptr %arrayidx27, align 4, !tbaa !10
  br label %for.inc28

for.inc28:                                        ; preds = %for.body18
  %24 = load i32, ptr %i, align 4, !tbaa !10
  %inc29 = add nsw i32 %24, 1
  store i32 %inc29, ptr %i, align 4, !tbaa !10
  br label %for.cond16, !llvm.loop !22

for.end30:                                        ; preds = %for.cond16
  br label %for.inc31

for.inc31:                                        ; preds = %for.end30
  %25 = load i32, ptr %j, align 4, !tbaa !10
  %inc32 = add nsw i32 %25, 1
  store i32 %inc32, ptr %j, align 4, !tbaa !10
  br label %for.cond13, !llvm.loop !23

for.end33:                                        ; preds = %for.cond13
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_Z5countPA100_iii(ptr noundef %a, i32 noundef %n, i32 noundef %s) #2 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %s.addr = alloca i32, align 4
  store ptr %a, ptr %a.addr, align 8, !tbaa !5
  store i32 %n, ptr %n.addr, align 4, !tbaa !10
  store i32 %s, ptr %s.addr, align 4, !tbaa !10
  %0 = load i32, ptr %n.addr, align 4, !tbaa !10
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %s.addr, align 4, !tbaa !10
  store i32 %1, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  %2 = load ptr, ptr %a.addr, align 8, !tbaa !5
  %3 = load i32, ptr %n.addr, align 4, !tbaa !10
  call void @_Z4xiaoPA100_ii(ptr noundef %2, i32 noundef %3)
  %4 = load i32, ptr %s.addr, align 4, !tbaa !10
  %5 = load ptr, ptr %a.addr, align 8, !tbaa !5
  %arrayidx = getelementptr inbounds [100 x i32], ptr %5, i64 1
  %arrayidx1 = getelementptr inbounds [100 x i32], ptr %arrayidx, i64 0, i64 1
  %6 = load i32, ptr %arrayidx1, align 4, !tbaa !10
  %add = add nsw i32 %4, %6
  store i32 %add, ptr %s.addr, align 4, !tbaa !10
  %7 = load ptr, ptr %a.addr, align 8, !tbaa !5
  %8 = load i32, ptr %n.addr, align 4, !tbaa !10
  call void @_Z4movePA100_ii(ptr noundef %7, i32 noundef %8)
  %9 = load ptr, ptr %a.addr, align 8, !tbaa !5
  %10 = load i32, ptr %n.addr, align 4, !tbaa !10
  %sub = sub nsw i32 %10, 1
  %11 = load i32, ptr %s.addr, align 4, !tbaa !10
  %call = call noundef i32 @_Z5countPA100_iii(ptr noundef %9, i32 noundef %sub, i32 noundef %11)
  store i32 %call, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.else, %if.then
  %12 = load i32, ptr %retval, align 4
  ret i32 %12
}

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #3 {
entry:
  %retval = alloca i32, align 4
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %s = alloca i32, align 4
  %t = alloca i32, align 4
  %a = alloca [100 x [100 x i32]], align 16
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %s) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %t) #5
  call void @llvm.lifetime.start.p0(i64 40000, ptr %a) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %n)
  %0 = load i32, ptr %n, align 4, !tbaa !10
  store i32 %0, ptr %t, align 4, !tbaa !10
  br label %while.cond

while.cond:                                       ; preds = %for.end10, %entry
  %1 = load i32, ptr %t, align 4, !tbaa !10
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i32 0, ptr %s, align 4, !tbaa !10
  store i32 0, ptr %i, align 4, !tbaa !10
  br label %for.cond

for.cond:                                         ; preds = %for.inc8, %while.body
  %2 = load i32, ptr %i, align 4, !tbaa !10
  %3 = load i32, ptr %n, align 4, !tbaa !10
  %cmp1 = icmp slt i32 %2, %3
  br i1 %cmp1, label %for.body, label %for.end10

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4, !tbaa !10
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body
  %4 = load i32, ptr %j, align 4, !tbaa !10
  %5 = load i32, ptr %n, align 4, !tbaa !10
  %cmp3 = icmp slt i32 %4, %5
  br i1 %cmp3, label %for.body4, label %for.end

for.body4:                                        ; preds = %for.cond2
  %6 = load i32, ptr %i, align 4, !tbaa !10
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom
  %7 = load i32, ptr %j, align 4, !tbaa !10
  %idxprom5 = sext i32 %7 to i64
  %arrayidx6 = getelementptr inbounds [100 x i32], ptr %arrayidx, i64 0, i64 %idxprom5
  %call7 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arrayidx6)
  br label %for.inc

for.inc:                                          ; preds = %for.body4
  %8 = load i32, ptr %j, align 4, !tbaa !10
  %inc = add nsw i32 %8, 1
  store i32 %inc, ptr %j, align 4, !tbaa !10
  br label %for.cond2, !llvm.loop !24

for.end:                                          ; preds = %for.cond2
  br label %for.inc8

for.inc8:                                         ; preds = %for.end
  %9 = load i32, ptr %i, align 4, !tbaa !10
  %inc9 = add nsw i32 %9, 1
  store i32 %inc9, ptr %i, align 4, !tbaa !10
  br label %for.cond, !llvm.loop !25

for.end10:                                        ; preds = %for.cond
  %arraydecay = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 0
  %10 = load i32, ptr %n, align 4, !tbaa !10
  %11 = load i32, ptr %s, align 4, !tbaa !10
  %call11 = call noundef i32 @_Z5countPA100_iii(ptr noundef %arraydecay, i32 noundef %10, i32 noundef %11)
  %call12 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %call11)
  %12 = load i32, ptr %t, align 4, !tbaa !10
  %dec = add nsw i32 %12, -1
  store i32 %dec, ptr %t, align 4, !tbaa !10
  br label %while.cond, !llvm.loop !26

while.end:                                        ; preds = %while.cond
  call void @llvm.lifetime.end.p0(i64 40000, ptr %a) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %t) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %s) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #5
  %13 = load i32, ptr %retval, align 4
  ret i32 %13
}

declare i32 @__isoc23_scanf(ptr noundef, ...) #4

declare i32 @printf(ptr noundef, ...) #4

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.1.8 (https://github.com/llvm/llvm-project.git 2078da43e25a4623cab2d0d60decddf709aaea28)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"p1 int", !7, i64 0}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C++ TBAA"}
!10 = !{!11, !11, i64 0}
!11 = !{!"int", !8, i64 0}
!12 = distinct !{!12, !13, !14}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!"llvm.loop.unroll.disable"}
!15 = distinct !{!15, !13, !14}
!16 = distinct !{!16, !13, !14}
!17 = distinct !{!17, !13, !14}
!18 = distinct !{!18, !13, !14}
!19 = distinct !{!19, !13, !14}
!20 = distinct !{!20, !13, !14}
!21 = distinct !{!21, !13, !14}
!22 = distinct !{!22, !13, !14}
!23 = distinct !{!23, !13, !14}
!24 = distinct !{!24, !13, !14}
!25 = distinct !{!25, !13, !14}
!26 = distinct !{!26, !13, !14}
