; ModuleID = '/tmp/tmpbry9zrnj.cpp'
source_filename = "/tmp/tmpbry9zrnj.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %n = alloca i32, align 4
  %a = alloca [100 x [100 x i32]], align 16
  %p = alloca i32, align 4
  %sum = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #5
  call void @llvm.lifetime.start.p0(i64 40000, ptr %a) #5
  call void @llvm.memset.p0.i64(ptr align 16 %a, i8 0, i64 40000, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr %p) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %sum) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  store i32 %0, ptr %k, align 4, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %while.end, %entry
  %1 = load i32, ptr %k, align 4, !tbaa !5
  %dec = add nsw i32 %1, -1
  store i32 %dec, ptr %k, align 4, !tbaa !5
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %while.body, label %while.end22

while.body:                                       ; preds = %while.cond
  store i32 0, ptr %sum, align 4, !tbaa !5
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %while.body
  %2 = load i32, ptr %i, align 4, !tbaa !5
  %3 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %4 = load i32, ptr %j, align 4, !tbaa !5
  %5 = load i32, ptr %n, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %4, %5
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %6 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom
  %7 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom4 = sext i32 %7 to i64
  %arrayidx5 = getelementptr inbounds [100 x i32], ptr %arrayidx, i64 0, i64 %idxprom4
  %call6 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arrayidx5)
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %8 = load i32, ptr %j, align 4, !tbaa !5
  %inc = add nsw i32 %8, 1
  store i32 %inc, ptr %j, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !9

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %9 = load i32, ptr %i, align 4, !tbaa !5
  %inc8 = add nsw i32 %9, 1
  store i32 %inc8, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !12

for.end9:                                         ; preds = %for.cond
  %10 = load i32, ptr %n, align 4, !tbaa !5
  %sub = sub nsw i32 %10, 1
  store i32 %sub, ptr %p, align 4, !tbaa !5
  br label %while.cond10

while.cond10:                                     ; preds = %while.body12, %for.end9
  %11 = load i32, ptr %p, align 4, !tbaa !5
  %tobool11 = icmp ne i32 %11, 0
  br i1 %tobool11, label %while.body12, label %while.end

while.body12:                                     ; preds = %while.cond10
  %12 = load i32, ptr %p, align 4, !tbaa !5
  %add = add nsw i32 %12, 1
  %arraydecay = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 0
  call void @_Z2m1iPA100_i(i32 noundef %add, ptr noundef %arraydecay)
  %13 = load i32, ptr %p, align 4, !tbaa !5
  %add13 = add nsw i32 %13, 1
  %arraydecay14 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 0
  call void @_Z2m2iPA100_i(i32 noundef %add13, ptr noundef %arraydecay14)
  %arrayidx15 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 1
  %arrayidx16 = getelementptr inbounds [100 x i32], ptr %arrayidx15, i64 0, i64 1
  %14 = load i32, ptr %arrayidx16, align 4, !tbaa !5
  %15 = load i32, ptr %sum, align 4, !tbaa !5
  %add17 = add nsw i32 %15, %14
  store i32 %add17, ptr %sum, align 4, !tbaa !5
  %16 = load i32, ptr %p, align 4, !tbaa !5
  %add18 = add nsw i32 %16, 1
  %arraydecay19 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 0
  call void @_Z4dealiPA100_i(i32 noundef %add18, ptr noundef %arraydecay19)
  %17 = load i32, ptr %p, align 4, !tbaa !5
  %dec20 = add nsw i32 %17, -1
  store i32 %dec20, ptr %p, align 4, !tbaa !5
  br label %while.cond10, !llvm.loop !13

while.end:                                        ; preds = %while.cond10
  %18 = load i32, ptr %sum, align 4, !tbaa !5
  %call21 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %18)
  br label %while.cond, !llvm.loop !14

while.end22:                                      ; preds = %while.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %sum) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %p) #5
  call void @llvm.lifetime.end.p0(i64 40000, ptr %a) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #5
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare i32 @__isoc23_scanf(ptr noundef, ...) #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_Z2m1iPA100_i(i32 noundef %n, ptr noundef %a) #4 {
entry:
  %n.addr = alloca i32, align 4
  %a.addr = alloca ptr, align 8
  %min = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %n, ptr %n.addr, align 4, !tbaa !5
  store ptr %a, ptr %a.addr, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(i64 4, ptr %min) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #5
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc29, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end31

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %a.addr, align 8, !tbaa !15
  %3 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [100 x i32], ptr %2, i64 %idxprom
  %arrayidx1 = getelementptr inbounds [100 x i32], ptr %arrayidx, i64 0, i64 0
  %4 = load i32, ptr %arrayidx1, align 4, !tbaa !5
  store i32 %4, ptr %min, align 4, !tbaa !5
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body
  %5 = load i32, ptr %j, align 4, !tbaa !5
  %6 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp3 = icmp slt i32 %5, %6
  br i1 %cmp3, label %for.body4, label %for.end

for.body4:                                        ; preds = %for.cond2
  %7 = load i32, ptr %min, align 4, !tbaa !5
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.body4
  br label %for.end

if.end:                                           ; preds = %for.body4
  %8 = load ptr, ptr %a.addr, align 8, !tbaa !15
  %9 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom5 = sext i32 %9 to i64
  %arrayidx6 = getelementptr inbounds [100 x i32], ptr %8, i64 %idxprom5
  %10 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom7 = sext i32 %10 to i64
  %arrayidx8 = getelementptr inbounds [100 x i32], ptr %arrayidx6, i64 0, i64 %idxprom7
  %11 = load i32, ptr %arrayidx8, align 4, !tbaa !5
  %12 = load i32, ptr %min, align 4, !tbaa !5
  %cmp9 = icmp slt i32 %11, %12
  br i1 %cmp9, label %if.then10, label %if.end15

if.then10:                                        ; preds = %if.end
  %13 = load ptr, ptr %a.addr, align 8, !tbaa !15
  %14 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom11 = sext i32 %14 to i64
  %arrayidx12 = getelementptr inbounds [100 x i32], ptr %13, i64 %idxprom11
  %15 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom13 = sext i32 %15 to i64
  %arrayidx14 = getelementptr inbounds [100 x i32], ptr %arrayidx12, i64 0, i64 %idxprom13
  %16 = load i32, ptr %arrayidx14, align 4, !tbaa !5
  store i32 %16, ptr %min, align 4, !tbaa !5
  br label %if.end15

if.end15:                                         ; preds = %if.then10, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end15
  %17 = load i32, ptr %j, align 4, !tbaa !5
  %inc = add nsw i32 %17, 1
  store i32 %inc, ptr %j, align 4, !tbaa !5
  br label %for.cond2, !llvm.loop !18

for.end:                                          ; preds = %if.then, %for.cond2
  %18 = load i32, ptr %min, align 4, !tbaa !5
  %tobool16 = icmp ne i32 %18, 0
  br i1 %tobool16, label %if.then17, label %if.end28

if.then17:                                        ; preds = %for.end
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond18

for.cond18:                                       ; preds = %for.inc25, %if.then17
  %19 = load i32, ptr %j, align 4, !tbaa !5
  %20 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp19 = icmp slt i32 %19, %20
  br i1 %cmp19, label %for.body20, label %for.end27

for.body20:                                       ; preds = %for.cond18
  %21 = load i32, ptr %min, align 4, !tbaa !5
  %22 = load ptr, ptr %a.addr, align 8, !tbaa !15
  %23 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom21 = sext i32 %23 to i64
  %arrayidx22 = getelementptr inbounds [100 x i32], ptr %22, i64 %idxprom21
  %24 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom23 = sext i32 %24 to i64
  %arrayidx24 = getelementptr inbounds [100 x i32], ptr %arrayidx22, i64 0, i64 %idxprom23
  %25 = load i32, ptr %arrayidx24, align 4, !tbaa !5
  %sub = sub nsw i32 %25, %21
  store i32 %sub, ptr %arrayidx24, align 4, !tbaa !5
  br label %for.inc25

for.inc25:                                        ; preds = %for.body20
  %26 = load i32, ptr %j, align 4, !tbaa !5
  %inc26 = add nsw i32 %26, 1
  store i32 %inc26, ptr %j, align 4, !tbaa !5
  br label %for.cond18, !llvm.loop !19

for.end27:                                        ; preds = %for.cond18
  br label %if.end28

if.end28:                                         ; preds = %for.end27, %for.end
  br label %for.inc29

for.inc29:                                        ; preds = %if.end28
  %27 = load i32, ptr %i, align 4, !tbaa !5
  %inc30 = add nsw i32 %27, 1
  store i32 %inc30, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !20

for.end31:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %min) #5
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_Z2m2iPA100_i(i32 noundef %n, ptr noundef %a) #4 {
entry:
  %n.addr = alloca i32, align 4
  %a.addr = alloca ptr, align 8
  %min = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %n, ptr %n.addr, align 4, !tbaa !5
  store ptr %a, ptr %a.addr, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(i64 4, ptr %min) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #5
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc29, %entry
  %0 = load i32, ptr %j, align 4, !tbaa !5
  %1 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end31

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %a.addr, align 8, !tbaa !15
  %arrayidx = getelementptr inbounds [100 x i32], ptr %2, i64 0
  %3 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom = sext i32 %3 to i64
  %arrayidx1 = getelementptr inbounds [100 x i32], ptr %arrayidx, i64 0, i64 %idxprom
  %4 = load i32, ptr %arrayidx1, align 4, !tbaa !5
  store i32 %4, ptr %min, align 4, !tbaa !5
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body
  %5 = load i32, ptr %i, align 4, !tbaa !5
  %6 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp3 = icmp slt i32 %5, %6
  br i1 %cmp3, label %for.body4, label %for.end

for.body4:                                        ; preds = %for.cond2
  %7 = load i32, ptr %min, align 4, !tbaa !5
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.body4
  br label %for.end

if.end:                                           ; preds = %for.body4
  %8 = load ptr, ptr %a.addr, align 8, !tbaa !15
  %9 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom5 = sext i32 %9 to i64
  %arrayidx6 = getelementptr inbounds [100 x i32], ptr %8, i64 %idxprom5
  %10 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom7 = sext i32 %10 to i64
  %arrayidx8 = getelementptr inbounds [100 x i32], ptr %arrayidx6, i64 0, i64 %idxprom7
  %11 = load i32, ptr %arrayidx8, align 4, !tbaa !5
  %12 = load i32, ptr %min, align 4, !tbaa !5
  %cmp9 = icmp slt i32 %11, %12
  br i1 %cmp9, label %if.then10, label %if.end15

if.then10:                                        ; preds = %if.end
  %13 = load ptr, ptr %a.addr, align 8, !tbaa !15
  %14 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom11 = sext i32 %14 to i64
  %arrayidx12 = getelementptr inbounds [100 x i32], ptr %13, i64 %idxprom11
  %15 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom13 = sext i32 %15 to i64
  %arrayidx14 = getelementptr inbounds [100 x i32], ptr %arrayidx12, i64 0, i64 %idxprom13
  %16 = load i32, ptr %arrayidx14, align 4, !tbaa !5
  store i32 %16, ptr %min, align 4, !tbaa !5
  br label %if.end15

if.end15:                                         ; preds = %if.then10, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end15
  %17 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %17, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond2, !llvm.loop !21

for.end:                                          ; preds = %if.then, %for.cond2
  %18 = load i32, ptr %min, align 4, !tbaa !5
  %tobool16 = icmp ne i32 %18, 0
  br i1 %tobool16, label %if.then17, label %if.end28

if.then17:                                        ; preds = %for.end
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond18

for.cond18:                                       ; preds = %for.inc25, %if.then17
  %19 = load i32, ptr %i, align 4, !tbaa !5
  %20 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp19 = icmp slt i32 %19, %20
  br i1 %cmp19, label %for.body20, label %for.end27

for.body20:                                       ; preds = %for.cond18
  %21 = load i32, ptr %min, align 4, !tbaa !5
  %22 = load ptr, ptr %a.addr, align 8, !tbaa !15
  %23 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom21 = sext i32 %23 to i64
  %arrayidx22 = getelementptr inbounds [100 x i32], ptr %22, i64 %idxprom21
  %24 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom23 = sext i32 %24 to i64
  %arrayidx24 = getelementptr inbounds [100 x i32], ptr %arrayidx22, i64 0, i64 %idxprom23
  %25 = load i32, ptr %arrayidx24, align 4, !tbaa !5
  %sub = sub nsw i32 %25, %21
  store i32 %sub, ptr %arrayidx24, align 4, !tbaa !5
  br label %for.inc25

for.inc25:                                        ; preds = %for.body20
  %26 = load i32, ptr %i, align 4, !tbaa !5
  %inc26 = add nsw i32 %26, 1
  store i32 %inc26, ptr %i, align 4, !tbaa !5
  br label %for.cond18, !llvm.loop !22

for.end27:                                        ; preds = %for.cond18
  br label %if.end28

if.end28:                                         ; preds = %for.end27, %for.end
  br label %for.inc29

for.inc29:                                        ; preds = %if.end28
  %27 = load i32, ptr %j, align 4, !tbaa !5
  %inc30 = add nsw i32 %27, 1
  store i32 %inc30, ptr %j, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !23

for.end31:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %min) #5
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_Z4dealiPA100_i(i32 noundef %n, ptr noundef %a) #4 {
entry:
  %n.addr = alloca i32, align 4
  %a.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %n, ptr %n.addr, align 4, !tbaa !5
  store ptr %a, ptr %a.addr, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #5
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc10, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end12

for.body:                                         ; preds = %for.cond
  store i32 1, ptr %j, align 4, !tbaa !5
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, ptr %j, align 4, !tbaa !5
  %3 = load i32, ptr %n.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %3, 1
  %cmp2 = icmp slt i32 %2, %sub
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %4 = load ptr, ptr %a.addr, align 8, !tbaa !15
  %5 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [100 x i32], ptr %4, i64 %idxprom
  %6 = load i32, ptr %j, align 4, !tbaa !5
  %add = add nsw i32 %6, 1
  %idxprom4 = sext i32 %add to i64
  %arrayidx5 = getelementptr inbounds [100 x i32], ptr %arrayidx, i64 0, i64 %idxprom4
  %7 = load i32, ptr %arrayidx5, align 4, !tbaa !5
  %8 = load ptr, ptr %a.addr, align 8, !tbaa !15
  %9 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom6 = sext i32 %9 to i64
  %arrayidx7 = getelementptr inbounds [100 x i32], ptr %8, i64 %idxprom6
  %10 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom8 = sext i32 %10 to i64
  %arrayidx9 = getelementptr inbounds [100 x i32], ptr %arrayidx7, i64 0, i64 %idxprom8
  store i32 %7, ptr %arrayidx9, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %11 = load i32, ptr %j, align 4, !tbaa !5
  %inc = add nsw i32 %11, 1
  store i32 %inc, ptr %j, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !24

for.end:                                          ; preds = %for.cond1
  br label %for.inc10

for.inc10:                                        ; preds = %for.end
  %12 = load i32, ptr %i, align 4, !tbaa !5
  %inc11 = add nsw i32 %12, 1
  store i32 %inc11, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !25

for.end12:                                        ; preds = %for.cond
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc33, %for.end12
  %13 = load i32, ptr %i, align 4, !tbaa !5
  %14 = load i32, ptr %n.addr, align 4, !tbaa !5
  %sub14 = sub nsw i32 %14, 1
  %cmp15 = icmp slt i32 %13, %sub14
  br i1 %cmp15, label %for.body16, label %for.end35

for.body16:                                       ; preds = %for.cond13
  store i32 1, ptr %j, align 4, !tbaa !5
  br label %for.cond17

for.cond17:                                       ; preds = %for.inc30, %for.body16
  %15 = load i32, ptr %j, align 4, !tbaa !5
  %16 = load i32, ptr %n.addr, align 4, !tbaa !5
  %sub18 = sub nsw i32 %16, 1
  %cmp19 = icmp slt i32 %15, %sub18
  br i1 %cmp19, label %for.body20, label %for.end32

for.body20:                                       ; preds = %for.cond17
  %17 = load ptr, ptr %a.addr, align 8, !tbaa !15
  %18 = load i32, ptr %j, align 4, !tbaa !5
  %add21 = add nsw i32 %18, 1
  %idxprom22 = sext i32 %add21 to i64
  %arrayidx23 = getelementptr inbounds [100 x i32], ptr %17, i64 %idxprom22
  %19 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom24 = sext i32 %19 to i64
  %arrayidx25 = getelementptr inbounds [100 x i32], ptr %arrayidx23, i64 0, i64 %idxprom24
  %20 = load i32, ptr %arrayidx25, align 4, !tbaa !5
  %21 = load ptr, ptr %a.addr, align 8, !tbaa !15
  %22 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom26 = sext i32 %22 to i64
  %arrayidx27 = getelementptr inbounds [100 x i32], ptr %21, i64 %idxprom26
  %23 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom28 = sext i32 %23 to i64
  %arrayidx29 = getelementptr inbounds [100 x i32], ptr %arrayidx27, i64 0, i64 %idxprom28
  store i32 %20, ptr %arrayidx29, align 4, !tbaa !5
  br label %for.inc30

for.inc30:                                        ; preds = %for.body20
  %24 = load i32, ptr %j, align 4, !tbaa !5
  %inc31 = add nsw i32 %24, 1
  store i32 %inc31, ptr %j, align 4, !tbaa !5
  br label %for.cond17, !llvm.loop !26

for.end32:                                        ; preds = %for.cond17
  br label %for.inc33

for.inc33:                                        ; preds = %for.end32
  %25 = load i32, ptr %i, align 4, !tbaa !5
  %inc34 = add nsw i32 %25, 1
  store i32 %inc34, ptr %i, align 4, !tbaa !5
  br label %for.cond13, !llvm.loop !27

for.end35:                                        ; preds = %for.cond13
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5
  ret void
}

declare i32 @printf(ptr noundef, ...) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

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
!15 = !{!16, !16, i64 0}
!16 = !{!"p1 int", !17, i64 0}
!17 = !{!"any pointer", !7, i64 0}
!18 = distinct !{!18, !10, !11}
!19 = distinct !{!19, !10, !11}
!20 = distinct !{!20, !10, !11}
!21 = distinct !{!21, !10, !11}
!22 = distinct !{!22, !10, !11}
!23 = distinct !{!23, !10, !11}
!24 = distinct !{!24, !10, !11}
!25 = distinct !{!25, !10, !11}
!26 = distinct !{!26, !10, !11}
!27 = distinct !{!27, !10, !11}
