; ModuleID = '/tmp/tmpo1jzqchv.cpp'
source_filename = "/tmp/tmpo1jzqchv.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_Z7minlineiiPPi(i32 noundef %n, i32 noundef %u, ptr noundef %a) #0 {
entry:
  %n.addr = alloca i32, align 4
  %u.addr = alloca i32, align 4
  %a.addr = alloca ptr, align 8
  %temp = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %n, ptr %n.addr, align 4, !tbaa !5
  store i32 %u, ptr %u.addr, align 4, !tbaa !5
  store ptr %a, ptr %a.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %temp) #6
  %0 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %arrayidx = getelementptr inbounds ptr, ptr %0, i64 0
  %1 = load ptr, ptr %arrayidx, align 8, !tbaa !13
  %2 = load i32, ptr %u.addr, align 4, !tbaa !5
  %idxprom = sext i32 %2 to i64
  %arrayidx1 = getelementptr inbounds i32, ptr %1, i64 %idxprom
  %3 = load i32, ptr %arrayidx1, align 4, !tbaa !5
  store i32 %3, ptr %temp, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, ptr %i, align 4, !tbaa !5
  %5 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %4, %5
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6
  br label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, ptr %temp, align 4, !tbaa !5
  %7 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %8 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom2 = sext i32 %8 to i64
  %arrayidx3 = getelementptr inbounds ptr, ptr %7, i64 %idxprom2
  %9 = load ptr, ptr %arrayidx3, align 8, !tbaa !13
  %10 = load i32, ptr %u.addr, align 4, !tbaa !5
  %idxprom4 = sext i32 %10 to i64
  %arrayidx5 = getelementptr inbounds i32, ptr %9, i64 %idxprom4
  %11 = load i32, ptr %arrayidx5, align 4, !tbaa !5
  %cmp6 = icmp sgt i32 %6, %11
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %12 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %13 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom7 = sext i32 %13 to i64
  %arrayidx8 = getelementptr inbounds ptr, ptr %12, i64 %idxprom7
  %14 = load ptr, ptr %arrayidx8, align 8, !tbaa !13
  %15 = load i32, ptr %u.addr, align 4, !tbaa !5
  %idxprom9 = sext i32 %15 to i64
  %arrayidx10 = getelementptr inbounds i32, ptr %14, i64 %idxprom9
  %16 = load i32, ptr %arrayidx10, align 4, !tbaa !5
  store i32 %16, ptr %temp, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %17 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %17, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !15

for.end:                                          ; preds = %for.cond.cleanup
  %18 = load i32, ptr %temp, align 4, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 4, ptr %temp) #6
  ret i32 %18
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_Z8mincrossiPi(i32 noundef %n, ptr noundef %a) #0 {
entry:
  %n.addr = alloca i32, align 4
  %a.addr = alloca ptr, align 8
  %temp = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %n, ptr %n.addr, align 4, !tbaa !5
  store ptr %a, ptr %a.addr, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 4, ptr %temp) #6
  %0 = load ptr, ptr %a.addr, align 8, !tbaa !13
  %arrayidx = getelementptr inbounds i32, ptr %0, i64 0
  %1 = load i32, ptr %arrayidx, align 4, !tbaa !5
  store i32 %1, ptr %temp, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %i, align 4, !tbaa !5
  %3 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6
  br label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, ptr %temp, align 4, !tbaa !5
  %5 = load ptr, ptr %a.addr, align 8, !tbaa !13
  %6 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %6 to i64
  %arrayidx1 = getelementptr inbounds i32, ptr %5, i64 %idxprom
  %7 = load i32, ptr %arrayidx1, align 4, !tbaa !5
  %cmp2 = icmp sgt i32 %4, %7
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %8 = load ptr, ptr %a.addr, align 8, !tbaa !13
  %9 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom3 = sext i32 %9 to i64
  %arrayidx4 = getelementptr inbounds i32, ptr %8, i64 %idxprom3
  %10 = load i32, ptr %arrayidx4, align 4, !tbaa !5
  store i32 %10, ptr %temp, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %11, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !18

for.end:                                          ; preds = %for.cond.cleanup
  %12 = load i32, ptr %temp, align 4, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 4, ptr %temp) #6
  ret i32 %12
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_Z3ansiPPi(i32 noundef %n, ptr noundef %pp) #0 {
entry:
  %n.addr = alloca i32, align 4
  %pp.addr = alloca ptr, align 8
  %sum = alloca i32, align 4
  %y = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %i = alloca i32, align 4
  %minTemp = alloca i32, align 4
  %j = alloca i32, align 4
  %i24 = alloca i32, align 4
  %minTemp30 = alloca i32, align 4
  %j33 = alloca i32, align 4
  %i56 = alloca i32, align 4
  %j62 = alloca i32, align 4
  %i84 = alloca i32, align 4
  %j91 = alloca i32, align 4
  store i32 %n, ptr %n.addr, align 4, !tbaa !5
  store ptr %pp, ptr %pp.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %sum) #6
  store i32 0, ptr %sum, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %y) #6
  store i32 0, ptr %y, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc113, %entry
  %0 = load i32, ptr %y, align 4, !tbaa !5
  %1 = load i32, ptr %n.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %1, 1
  %cmp = icmp slt i32 %0, %sub
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %y) #6
  br label %for.end115

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc21, %for.body
  %2 = load i32, ptr %i, align 4, !tbaa !5
  %3 = load i32, ptr %n.addr, align 4, !tbaa !5
  %4 = load i32, ptr %y, align 4, !tbaa !5
  %sub2 = sub nsw i32 %3, %4
  %cmp3 = icmp slt i32 %2, %sub2
  br i1 %cmp3, label %for.body5, label %for.cond.cleanup4

for.cond.cleanup4:                                ; preds = %for.cond1
  store i32 5, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6
  br label %for.end23

for.body5:                                        ; preds = %for.cond1
  call void @llvm.lifetime.start.p0(i64 4, ptr %minTemp) #6
  %5 = load i32, ptr %n.addr, align 4, !tbaa !5
  %6 = load i32, ptr %y, align 4, !tbaa !5
  %sub6 = sub nsw i32 %5, %6
  %7 = load ptr, ptr %pp.addr, align 8, !tbaa !9
  %8 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %7, i64 %idxprom
  %9 = load ptr, ptr %arrayidx, align 8, !tbaa !13
  %call = call noundef i32 @_Z8mincrossiPi(i32 noundef %sub6, ptr noundef %9)
  store i32 %call, ptr %minTemp, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #6
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc, %for.body5
  %10 = load i32, ptr %j, align 4, !tbaa !5
  %11 = load i32, ptr %n.addr, align 4, !tbaa !5
  %12 = load i32, ptr %y, align 4, !tbaa !5
  %sub8 = sub nsw i32 %11, %12
  %cmp9 = icmp slt i32 %10, %sub8
  br i1 %cmp9, label %for.body11, label %for.cond.cleanup10

for.cond.cleanup10:                               ; preds = %for.cond7
  store i32 8, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #6
  br label %for.end

for.body11:                                       ; preds = %for.cond7
  %13 = load ptr, ptr %pp.addr, align 8, !tbaa !9
  %14 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom12 = sext i32 %14 to i64
  %arrayidx13 = getelementptr inbounds ptr, ptr %13, i64 %idxprom12
  %15 = load ptr, ptr %arrayidx13, align 8, !tbaa !13
  %16 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom14 = sext i32 %16 to i64
  %arrayidx15 = getelementptr inbounds i32, ptr %15, i64 %idxprom14
  %17 = load i32, ptr %arrayidx15, align 4, !tbaa !5
  %18 = load i32, ptr %minTemp, align 4, !tbaa !5
  %sub16 = sub nsw i32 %17, %18
  %19 = load ptr, ptr %pp.addr, align 8, !tbaa !9
  %20 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom17 = sext i32 %20 to i64
  %arrayidx18 = getelementptr inbounds ptr, ptr %19, i64 %idxprom17
  %21 = load ptr, ptr %arrayidx18, align 8, !tbaa !13
  %22 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom19 = sext i32 %22 to i64
  %arrayidx20 = getelementptr inbounds i32, ptr %21, i64 %idxprom19
  store i32 %sub16, ptr %arrayidx20, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body11
  %23 = load i32, ptr %j, align 4, !tbaa !5
  %inc = add nsw i32 %23, 1
  store i32 %inc, ptr %j, align 4, !tbaa !5
  br label %for.cond7, !llvm.loop !19

for.end:                                          ; preds = %for.cond.cleanup10
  call void @llvm.lifetime.end.p0(i64 4, ptr %minTemp) #6
  br label %for.inc21

for.inc21:                                        ; preds = %for.end
  %24 = load i32, ptr %i, align 4, !tbaa !5
  %inc22 = add nsw i32 %24, 1
  store i32 %inc22, ptr %i, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !20

for.end23:                                        ; preds = %for.cond.cleanup4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i24) #6
  store i32 0, ptr %i24, align 4, !tbaa !5
  br label %for.cond25

for.cond25:                                       ; preds = %for.inc51, %for.end23
  %25 = load i32, ptr %i24, align 4, !tbaa !5
  %26 = load i32, ptr %n.addr, align 4, !tbaa !5
  %27 = load i32, ptr %y, align 4, !tbaa !5
  %sub26 = sub nsw i32 %26, %27
  %cmp27 = icmp slt i32 %25, %sub26
  br i1 %cmp27, label %for.body29, label %for.cond.cleanup28

for.cond.cleanup28:                               ; preds = %for.cond25
  store i32 11, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i24) #6
  br label %for.end53

for.body29:                                       ; preds = %for.cond25
  call void @llvm.lifetime.start.p0(i64 4, ptr %minTemp30) #6
  %28 = load i32, ptr %n.addr, align 4, !tbaa !5
  %29 = load i32, ptr %y, align 4, !tbaa !5
  %sub31 = sub nsw i32 %28, %29
  %30 = load i32, ptr %i24, align 4, !tbaa !5
  %31 = load ptr, ptr %pp.addr, align 8, !tbaa !9
  %call32 = call noundef i32 @_Z7minlineiiPPi(i32 noundef %sub31, i32 noundef %30, ptr noundef %31)
  store i32 %call32, ptr %minTemp30, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %j33) #6
  store i32 0, ptr %j33, align 4, !tbaa !5
  br label %for.cond34

for.cond34:                                       ; preds = %for.inc48, %for.body29
  %32 = load i32, ptr %j33, align 4, !tbaa !5
  %33 = load i32, ptr %n.addr, align 4, !tbaa !5
  %34 = load i32, ptr %y, align 4, !tbaa !5
  %sub35 = sub nsw i32 %33, %34
  %cmp36 = icmp slt i32 %32, %sub35
  br i1 %cmp36, label %for.body38, label %for.cond.cleanup37

for.cond.cleanup37:                               ; preds = %for.cond34
  store i32 14, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %j33) #6
  br label %for.end50

for.body38:                                       ; preds = %for.cond34
  %35 = load ptr, ptr %pp.addr, align 8, !tbaa !9
  %36 = load i32, ptr %j33, align 4, !tbaa !5
  %idxprom39 = sext i32 %36 to i64
  %arrayidx40 = getelementptr inbounds ptr, ptr %35, i64 %idxprom39
  %37 = load ptr, ptr %arrayidx40, align 8, !tbaa !13
  %38 = load i32, ptr %i24, align 4, !tbaa !5
  %idxprom41 = sext i32 %38 to i64
  %arrayidx42 = getelementptr inbounds i32, ptr %37, i64 %idxprom41
  %39 = load i32, ptr %arrayidx42, align 4, !tbaa !5
  %40 = load i32, ptr %minTemp30, align 4, !tbaa !5
  %sub43 = sub nsw i32 %39, %40
  %41 = load ptr, ptr %pp.addr, align 8, !tbaa !9
  %42 = load i32, ptr %j33, align 4, !tbaa !5
  %idxprom44 = sext i32 %42 to i64
  %arrayidx45 = getelementptr inbounds ptr, ptr %41, i64 %idxprom44
  %43 = load ptr, ptr %arrayidx45, align 8, !tbaa !13
  %44 = load i32, ptr %i24, align 4, !tbaa !5
  %idxprom46 = sext i32 %44 to i64
  %arrayidx47 = getelementptr inbounds i32, ptr %43, i64 %idxprom46
  store i32 %sub43, ptr %arrayidx47, align 4, !tbaa !5
  br label %for.inc48

for.inc48:                                        ; preds = %for.body38
  %45 = load i32, ptr %j33, align 4, !tbaa !5
  %inc49 = add nsw i32 %45, 1
  store i32 %inc49, ptr %j33, align 4, !tbaa !5
  br label %for.cond34, !llvm.loop !21

for.end50:                                        ; preds = %for.cond.cleanup37
  call void @llvm.lifetime.end.p0(i64 4, ptr %minTemp30) #6
  br label %for.inc51

for.inc51:                                        ; preds = %for.end50
  %46 = load i32, ptr %i24, align 4, !tbaa !5
  %inc52 = add nsw i32 %46, 1
  store i32 %inc52, ptr %i24, align 4, !tbaa !5
  br label %for.cond25, !llvm.loop !22

for.end53:                                        ; preds = %for.cond.cleanup28
  %47 = load i32, ptr %sum, align 4, !tbaa !5
  %48 = load ptr, ptr %pp.addr, align 8, !tbaa !9
  %arrayidx54 = getelementptr inbounds ptr, ptr %48, i64 1
  %49 = load ptr, ptr %arrayidx54, align 8, !tbaa !13
  %arrayidx55 = getelementptr inbounds i32, ptr %49, i64 1
  %50 = load i32, ptr %arrayidx55, align 4, !tbaa !5
  %add = add nsw i32 %47, %50
  store i32 %add, ptr %sum, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i56) #6
  store i32 0, ptr %i56, align 4, !tbaa !5
  br label %for.cond57

for.cond57:                                       ; preds = %for.inc81, %for.end53
  %51 = load i32, ptr %i56, align 4, !tbaa !5
  %52 = load i32, ptr %n.addr, align 4, !tbaa !5
  %53 = load i32, ptr %y, align 4, !tbaa !5
  %sub58 = sub nsw i32 %52, %53
  %cmp59 = icmp slt i32 %51, %sub58
  br i1 %cmp59, label %for.body61, label %for.cond.cleanup60

for.cond.cleanup60:                               ; preds = %for.cond57
  store i32 17, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i56) #6
  br label %for.end83

for.body61:                                       ; preds = %for.cond57
  call void @llvm.lifetime.start.p0(i64 4, ptr %j62) #6
  store i32 1, ptr %j62, align 4, !tbaa !5
  br label %for.cond63

for.cond63:                                       ; preds = %for.inc78, %for.body61
  %54 = load i32, ptr %j62, align 4, !tbaa !5
  %55 = load i32, ptr %n.addr, align 4, !tbaa !5
  %sub64 = sub nsw i32 %55, 1
  %56 = load i32, ptr %y, align 4, !tbaa !5
  %sub65 = sub nsw i32 %sub64, %56
  %cmp66 = icmp slt i32 %54, %sub65
  br i1 %cmp66, label %for.body68, label %for.cond.cleanup67

for.cond.cleanup67:                               ; preds = %for.cond63
  store i32 20, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %j62) #6
  br label %for.end80

for.body68:                                       ; preds = %for.cond63
  %57 = load ptr, ptr %pp.addr, align 8, !tbaa !9
  %58 = load i32, ptr %i56, align 4, !tbaa !5
  %idxprom69 = sext i32 %58 to i64
  %arrayidx70 = getelementptr inbounds ptr, ptr %57, i64 %idxprom69
  %59 = load ptr, ptr %arrayidx70, align 8, !tbaa !13
  %60 = load i32, ptr %j62, align 4, !tbaa !5
  %add71 = add nsw i32 %60, 1
  %idxprom72 = sext i32 %add71 to i64
  %arrayidx73 = getelementptr inbounds i32, ptr %59, i64 %idxprom72
  %61 = load i32, ptr %arrayidx73, align 4, !tbaa !5
  %62 = load ptr, ptr %pp.addr, align 8, !tbaa !9
  %63 = load i32, ptr %i56, align 4, !tbaa !5
  %idxprom74 = sext i32 %63 to i64
  %arrayidx75 = getelementptr inbounds ptr, ptr %62, i64 %idxprom74
  %64 = load ptr, ptr %arrayidx75, align 8, !tbaa !13
  %65 = load i32, ptr %j62, align 4, !tbaa !5
  %idxprom76 = sext i32 %65 to i64
  %arrayidx77 = getelementptr inbounds i32, ptr %64, i64 %idxprom76
  store i32 %61, ptr %arrayidx77, align 4, !tbaa !5
  br label %for.inc78

for.inc78:                                        ; preds = %for.body68
  %66 = load i32, ptr %j62, align 4, !tbaa !5
  %inc79 = add nsw i32 %66, 1
  store i32 %inc79, ptr %j62, align 4, !tbaa !5
  br label %for.cond63, !llvm.loop !23

for.end80:                                        ; preds = %for.cond.cleanup67
  br label %for.inc81

for.inc81:                                        ; preds = %for.end80
  %67 = load i32, ptr %i56, align 4, !tbaa !5
  %inc82 = add nsw i32 %67, 1
  store i32 %inc82, ptr %i56, align 4, !tbaa !5
  br label %for.cond57, !llvm.loop !24

for.end83:                                        ; preds = %for.cond.cleanup60
  call void @llvm.lifetime.start.p0(i64 4, ptr %i84) #6
  store i32 0, ptr %i84, align 4, !tbaa !5
  br label %for.cond85

for.cond85:                                       ; preds = %for.inc110, %for.end83
  %68 = load i32, ptr %i84, align 4, !tbaa !5
  %69 = load i32, ptr %n.addr, align 4, !tbaa !5
  %sub86 = sub nsw i32 %69, 1
  %70 = load i32, ptr %y, align 4, !tbaa !5
  %sub87 = sub nsw i32 %sub86, %70
  %cmp88 = icmp slt i32 %68, %sub87
  br i1 %cmp88, label %for.body90, label %for.cond.cleanup89

for.cond.cleanup89:                               ; preds = %for.cond85
  store i32 23, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i84) #6
  br label %for.end112

for.body90:                                       ; preds = %for.cond85
  call void @llvm.lifetime.start.p0(i64 4, ptr %j91) #6
  store i32 1, ptr %j91, align 4, !tbaa !5
  br label %for.cond92

for.cond92:                                       ; preds = %for.inc107, %for.body90
  %71 = load i32, ptr %j91, align 4, !tbaa !5
  %72 = load i32, ptr %n.addr, align 4, !tbaa !5
  %73 = load i32, ptr %y, align 4, !tbaa !5
  %sub93 = sub nsw i32 %72, %73
  %sub94 = sub nsw i32 %sub93, 1
  %cmp95 = icmp slt i32 %71, %sub94
  br i1 %cmp95, label %for.body97, label %for.cond.cleanup96

for.cond.cleanup96:                               ; preds = %for.cond92
  store i32 26, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %j91) #6
  br label %for.end109

for.body97:                                       ; preds = %for.cond92
  %74 = load ptr, ptr %pp.addr, align 8, !tbaa !9
  %75 = load i32, ptr %j91, align 4, !tbaa !5
  %add98 = add nsw i32 %75, 1
  %idxprom99 = sext i32 %add98 to i64
  %arrayidx100 = getelementptr inbounds ptr, ptr %74, i64 %idxprom99
  %76 = load ptr, ptr %arrayidx100, align 8, !tbaa !13
  %77 = load i32, ptr %i84, align 4, !tbaa !5
  %idxprom101 = sext i32 %77 to i64
  %arrayidx102 = getelementptr inbounds i32, ptr %76, i64 %idxprom101
  %78 = load i32, ptr %arrayidx102, align 4, !tbaa !5
  %79 = load ptr, ptr %pp.addr, align 8, !tbaa !9
  %80 = load i32, ptr %j91, align 4, !tbaa !5
  %idxprom103 = sext i32 %80 to i64
  %arrayidx104 = getelementptr inbounds ptr, ptr %79, i64 %idxprom103
  %81 = load ptr, ptr %arrayidx104, align 8, !tbaa !13
  %82 = load i32, ptr %i84, align 4, !tbaa !5
  %idxprom105 = sext i32 %82 to i64
  %arrayidx106 = getelementptr inbounds i32, ptr %81, i64 %idxprom105
  store i32 %78, ptr %arrayidx106, align 4, !tbaa !5
  br label %for.inc107

for.inc107:                                       ; preds = %for.body97
  %83 = load i32, ptr %j91, align 4, !tbaa !5
  %inc108 = add nsw i32 %83, 1
  store i32 %inc108, ptr %j91, align 4, !tbaa !5
  br label %for.cond92, !llvm.loop !25

for.end109:                                       ; preds = %for.cond.cleanup96
  br label %for.inc110

for.inc110:                                       ; preds = %for.end109
  %84 = load i32, ptr %i84, align 4, !tbaa !5
  %inc111 = add nsw i32 %84, 1
  store i32 %inc111, ptr %i84, align 4, !tbaa !5
  br label %for.cond85, !llvm.loop !26

for.end112:                                       ; preds = %for.cond.cleanup89
  br label %for.inc113

for.inc113:                                       ; preds = %for.end112
  %85 = load i32, ptr %y, align 4, !tbaa !5
  %inc114 = add nsw i32 %85, 1
  store i32 %inc114, ptr %y, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !27

for.end115:                                       ; preds = %for.cond.cleanup
  %86 = load i32, ptr %sum, align 4, !tbaa !5
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %sum) #6
  ret i32 %86
}

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #2 {
entry:
  %retval = alloca i32, align 4
  %n = alloca i32, align 4
  %pp = alloca ptr, align 8
  %i = alloca i32, align 4
  %w = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %i9 = alloca i32, align 4
  %j = alloca i32, align 4
  %i34 = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #6
  store i32 0, ptr %n, align 4, !tbaa !5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %n)
  call void @llvm.lifetime.start.p0(i64 8, ptr %pp) #6
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %conv = sext i32 %0 to i64
  %mul = mul i64 %conv, 8
  %call1 = call noalias ptr @malloc(i64 noundef %mul) #7
  store ptr %call1, ptr %pp, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4, !tbaa !5
  %2 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6
  br label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, ptr %n, align 4, !tbaa !5
  %conv2 = sext i32 %3 to i64
  %mul3 = mul i64 %conv2, 4
  %call4 = call noalias ptr @malloc(i64 noundef %mul3) #7
  %4 = load ptr, ptr %pp, align 8, !tbaa !9
  %5 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %4, i64 %idxprom
  store ptr %call4, ptr %arrayidx, align 8, !tbaa !13
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %6, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !28

for.end:                                          ; preds = %for.cond.cleanup
  call void @llvm.lifetime.start.p0(i64 4, ptr %w) #6
  store i32 0, ptr %w, align 4, !tbaa !5
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc31, %for.end
  %7 = load i32, ptr %w, align 4, !tbaa !5
  %8 = load i32, ptr %n, align 4, !tbaa !5
  %cmp6 = icmp slt i32 %7, %8
  br i1 %cmp6, label %for.body8, label %for.cond.cleanup7

for.cond.cleanup7:                                ; preds = %for.cond5
  store i32 5, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %w) #6
  br label %for.end33

for.body8:                                        ; preds = %for.cond5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i9) #6
  store i32 0, ptr %i9, align 4, !tbaa !5
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc26, %for.body8
  %9 = load i32, ptr %i9, align 4, !tbaa !5
  %10 = load i32, ptr %n, align 4, !tbaa !5
  %cmp11 = icmp slt i32 %9, %10
  br i1 %cmp11, label %for.body13, label %for.cond.cleanup12

for.cond.cleanup12:                               ; preds = %for.cond10
  store i32 8, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i9) #6
  br label %for.end28

for.body13:                                       ; preds = %for.cond10
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #6
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc23, %for.body13
  %11 = load i32, ptr %j, align 4, !tbaa !5
  %12 = load i32, ptr %n, align 4, !tbaa !5
  %cmp15 = icmp slt i32 %11, %12
  br i1 %cmp15, label %for.body17, label %for.cond.cleanup16

for.cond.cleanup16:                               ; preds = %for.cond14
  store i32 11, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #6
  br label %for.end25

for.body17:                                       ; preds = %for.cond14
  %13 = load ptr, ptr %pp, align 8, !tbaa !9
  %14 = load i32, ptr %i9, align 4, !tbaa !5
  %idxprom18 = sext i32 %14 to i64
  %arrayidx19 = getelementptr inbounds ptr, ptr %13, i64 %idxprom18
  %15 = load ptr, ptr %arrayidx19, align 8, !tbaa !13
  %16 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom20 = sext i32 %16 to i64
  %arrayidx21 = getelementptr inbounds i32, ptr %15, i64 %idxprom20
  %call22 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arrayidx21)
  br label %for.inc23

for.inc23:                                        ; preds = %for.body17
  %17 = load i32, ptr %j, align 4, !tbaa !5
  %inc24 = add nsw i32 %17, 1
  store i32 %inc24, ptr %j, align 4, !tbaa !5
  br label %for.cond14, !llvm.loop !29

for.end25:                                        ; preds = %for.cond.cleanup16
  br label %for.inc26

for.inc26:                                        ; preds = %for.end25
  %18 = load i32, ptr %i9, align 4, !tbaa !5
  %inc27 = add nsw i32 %18, 1
  store i32 %inc27, ptr %i9, align 4, !tbaa !5
  br label %for.cond10, !llvm.loop !30

for.end28:                                        ; preds = %for.cond.cleanup12
  %19 = load i32, ptr %n, align 4, !tbaa !5
  %20 = load ptr, ptr %pp, align 8, !tbaa !9
  %call29 = call noundef i32 @_Z3ansiPPi(i32 noundef %19, ptr noundef %20)
  %call30 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %call29)
  br label %for.inc31

for.inc31:                                        ; preds = %for.end28
  %21 = load i32, ptr %w, align 4, !tbaa !5
  %inc32 = add nsw i32 %21, 1
  store i32 %inc32, ptr %w, align 4, !tbaa !5
  br label %for.cond5, !llvm.loop !31

for.end33:                                        ; preds = %for.cond.cleanup7
  call void @llvm.lifetime.start.p0(i64 4, ptr %i34) #6
  store i32 0, ptr %i34, align 4, !tbaa !5
  br label %for.cond35

for.cond35:                                       ; preds = %for.inc41, %for.end33
  %22 = load i32, ptr %i34, align 4, !tbaa !5
  %23 = load i32, ptr %n, align 4, !tbaa !5
  %cmp36 = icmp slt i32 %22, %23
  br i1 %cmp36, label %for.body38, label %for.cond.cleanup37

for.cond.cleanup37:                               ; preds = %for.cond35
  store i32 14, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i34) #6
  br label %for.end43

for.body38:                                       ; preds = %for.cond35
  %24 = load ptr, ptr %pp, align 8, !tbaa !9
  %25 = load i32, ptr %i34, align 4, !tbaa !5
  %idxprom39 = sext i32 %25 to i64
  %arrayidx40 = getelementptr inbounds ptr, ptr %24, i64 %idxprom39
  %26 = load ptr, ptr %arrayidx40, align 8, !tbaa !13
  call void @free(ptr noundef %26) #6
  br label %for.inc41

for.inc41:                                        ; preds = %for.body38
  %27 = load i32, ptr %i34, align 4, !tbaa !5
  %inc42 = add nsw i32 %27, 1
  store i32 %inc42, ptr %i34, align 4, !tbaa !5
  br label %for.cond35, !llvm.loop !32

for.end43:                                        ; preds = %for.cond.cleanup37
  %28 = load ptr, ptr %pp, align 8, !tbaa !9
  call void @free(ptr noundef %28) #6
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %pp) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #6
  %29 = load i32, ptr %retval, align 4
  ret i32 %29
}

declare i32 @__isoc23_scanf(ptr noundef, ...) #3

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #4

declare i32 @printf(ptr noundef, ...) #3

; Function Attrs: nounwind
declare void @free(ptr noundef) #5

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { nounwind allocsize(0) }

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
!9 = !{!10, !10, i64 0}
!10 = !{!"p2 int", !11, i64 0}
!11 = !{!"any p2 pointer", !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"p1 int", !12, i64 0}
!15 = distinct !{!15, !16, !17}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{!"llvm.loop.unroll.disable"}
!18 = distinct !{!18, !16, !17}
!19 = distinct !{!19, !16, !17}
!20 = distinct !{!20, !16, !17}
!21 = distinct !{!21, !16, !17}
!22 = distinct !{!22, !16, !17}
!23 = distinct !{!23, !16, !17}
!24 = distinct !{!24, !16, !17}
!25 = distinct !{!25, !16, !17}
!26 = distinct !{!26, !16, !17}
!27 = distinct !{!27, !16, !17}
!28 = distinct !{!28, !16, !17}
!29 = distinct !{!29, !16, !17}
!30 = distinct !{!30, !16, !17}
!31 = distinct !{!31, !16, !17}
!32 = distinct !{!32, !16, !17}
