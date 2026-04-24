; ModuleID = '/tmp/tmpmn1afqrr.cpp'
source_filename = "/tmp/tmpmn1afqrr.cpp"
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
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #4
  call void @llvm.lifetime.start.p0(i64 40000, ptr %a) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %n)
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc15, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end17

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc10, %for.body
  %2 = load i32, ptr %j, align 4, !tbaa !5
  %3 = load i32, ptr %n, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body3, label %for.end12

for.body3:                                        ; preds = %for.cond1
  store i32 0, ptr %k, align 4, !tbaa !5
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %4 = load i32, ptr %k, align 4, !tbaa !5
  %5 = load i32, ptr %n, align 4, !tbaa !5
  %cmp5 = icmp slt i32 %4, %5
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %6 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom
  %7 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom7 = sext i32 %7 to i64
  %arrayidx8 = getelementptr inbounds [100 x i32], ptr %arrayidx, i64 0, i64 %idxprom7
  %call9 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arrayidx8)
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %8 = load i32, ptr %k, align 4, !tbaa !5
  %inc = add nsw i32 %8, 1
  store i32 %inc, ptr %k, align 4, !tbaa !5
  br label %for.cond4, !llvm.loop !9

for.end:                                          ; preds = %for.cond4
  br label %for.inc10

for.inc10:                                        ; preds = %for.end
  %9 = load i32, ptr %j, align 4, !tbaa !5
  %inc11 = add nsw i32 %9, 1
  store i32 %inc11, ptr %j, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !12

for.end12:                                        ; preds = %for.cond1
  %arraydecay = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 0
  %10 = load i32, ptr %n, align 4, !tbaa !5
  %call13 = call noundef i32 @_Z6changePA100_ii(ptr noundef %arraydecay, i32 noundef %10)
  %call14 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %call13)
  br label %for.inc15

for.inc15:                                        ; preds = %for.end12
  %11 = load i32, ptr %i, align 4, !tbaa !5
  %inc16 = add nsw i32 %11, 1
  store i32 %inc16, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !13

for.end17:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.end.p0(i64 40000, ptr %a) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #4
  %12 = load i32, ptr %retval, align 4
  ret i32 %12
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) #2

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_Z6changePA100_ii(ptr noundef %a, i32 noundef %n) #3 {
entry:
  %a.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %s = alloca i32, align 4
  %b = alloca [100 x [100 x i32]], align 16
  %f = alloca i32, align 4
  store ptr %a, ptr %a.addr, align 8, !tbaa !14
  store i32 %n, ptr %n.addr, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %s) #4
  call void @llvm.lifetime.start.p0(i64 40000, ptr %b) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %f) #4
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc28, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end30

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %a.addr, align 8, !tbaa !14
  %3 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [100 x i32], ptr %2, i64 %idxprom
  %arrayidx1 = getelementptr inbounds [100 x i32], ptr %arrayidx, i64 0, i64 0
  %4 = load i32, ptr %arrayidx1, align 4, !tbaa !5
  store i32 %4, ptr %s, align 4, !tbaa !5
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body
  %5 = load i32, ptr %j, align 4, !tbaa !5
  %6 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp3 = icmp slt i32 %5, %6
  br i1 %cmp3, label %for.body4, label %for.end

for.body4:                                        ; preds = %for.cond2
  %7 = load i32, ptr %s, align 4, !tbaa !5
  %8 = load ptr, ptr %a.addr, align 8, !tbaa !14
  %9 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom5 = sext i32 %9 to i64
  %arrayidx6 = getelementptr inbounds [100 x i32], ptr %8, i64 %idxprom5
  %10 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom7 = sext i32 %10 to i64
  %arrayidx8 = getelementptr inbounds [100 x i32], ptr %arrayidx6, i64 0, i64 %idxprom7
  %11 = load i32, ptr %arrayidx8, align 4, !tbaa !5
  %cmp9 = icmp sgt i32 %7, %11
  br i1 %cmp9, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body4
  %12 = load ptr, ptr %a.addr, align 8, !tbaa !14
  %13 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom10 = sext i32 %13 to i64
  %arrayidx11 = getelementptr inbounds [100 x i32], ptr %12, i64 %idxprom10
  %14 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom12 = sext i32 %14 to i64
  %arrayidx13 = getelementptr inbounds [100 x i32], ptr %arrayidx11, i64 0, i64 %idxprom12
  %15 = load i32, ptr %arrayidx13, align 4, !tbaa !5
  br label %cond.end

cond.false:                                       ; preds = %for.body4
  %16 = load i32, ptr %s, align 4, !tbaa !5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %15, %cond.true ], [ %16, %cond.false ]
  store i32 %cond, ptr %s, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %17 = load i32, ptr %j, align 4, !tbaa !5
  %inc = add nsw i32 %17, 1
  store i32 %inc, ptr %j, align 4, !tbaa !5
  br label %for.cond2, !llvm.loop !17

for.end:                                          ; preds = %for.cond2
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc25, %for.end
  %18 = load i32, ptr %j, align 4, !tbaa !5
  %19 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp15 = icmp slt i32 %18, %19
  br i1 %cmp15, label %for.body16, label %for.end27

for.body16:                                       ; preds = %for.cond14
  %20 = load ptr, ptr %a.addr, align 8, !tbaa !14
  %21 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom17 = sext i32 %21 to i64
  %arrayidx18 = getelementptr inbounds [100 x i32], ptr %20, i64 %idxprom17
  %22 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom19 = sext i32 %22 to i64
  %arrayidx20 = getelementptr inbounds [100 x i32], ptr %arrayidx18, i64 0, i64 %idxprom19
  %23 = load i32, ptr %arrayidx20, align 4, !tbaa !5
  %24 = load i32, ptr %s, align 4, !tbaa !5
  %sub = sub nsw i32 %23, %24
  %25 = load ptr, ptr %a.addr, align 8, !tbaa !14
  %26 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom21 = sext i32 %26 to i64
  %arrayidx22 = getelementptr inbounds [100 x i32], ptr %25, i64 %idxprom21
  %27 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom23 = sext i32 %27 to i64
  %arrayidx24 = getelementptr inbounds [100 x i32], ptr %arrayidx22, i64 0, i64 %idxprom23
  store i32 %sub, ptr %arrayidx24, align 4, !tbaa !5
  br label %for.inc25

for.inc25:                                        ; preds = %for.body16
  %28 = load i32, ptr %j, align 4, !tbaa !5
  %inc26 = add nsw i32 %28, 1
  store i32 %inc26, ptr %j, align 4, !tbaa !5
  br label %for.cond14, !llvm.loop !18

for.end27:                                        ; preds = %for.cond14
  br label %for.inc28

for.inc28:                                        ; preds = %for.end27
  %29 = load i32, ptr %i, align 4, !tbaa !5
  %inc29 = add nsw i32 %29, 1
  store i32 %inc29, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !19

for.end30:                                        ; preds = %for.cond
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond31

for.cond31:                                       ; preds = %for.inc71, %for.end30
  %30 = load i32, ptr %i, align 4, !tbaa !5
  %31 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp32 = icmp slt i32 %30, %31
  br i1 %cmp32, label %for.body33, label %for.end73

for.body33:                                       ; preds = %for.cond31
  %32 = load ptr, ptr %a.addr, align 8, !tbaa !14
  %arrayidx34 = getelementptr inbounds [100 x i32], ptr %32, i64 0
  %33 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom35 = sext i32 %33 to i64
  %arrayidx36 = getelementptr inbounds [100 x i32], ptr %arrayidx34, i64 0, i64 %idxprom35
  %34 = load i32, ptr %arrayidx36, align 4, !tbaa !5
  store i32 %34, ptr %s, align 4, !tbaa !5
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond37

for.cond37:                                       ; preds = %for.inc53, %for.body33
  %35 = load i32, ptr %j, align 4, !tbaa !5
  %36 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp38 = icmp slt i32 %35, %36
  br i1 %cmp38, label %for.body39, label %for.end55

for.body39:                                       ; preds = %for.cond37
  %37 = load i32, ptr %s, align 4, !tbaa !5
  %38 = load ptr, ptr %a.addr, align 8, !tbaa !14
  %39 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom40 = sext i32 %39 to i64
  %arrayidx41 = getelementptr inbounds [100 x i32], ptr %38, i64 %idxprom40
  %40 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom42 = sext i32 %40 to i64
  %arrayidx43 = getelementptr inbounds [100 x i32], ptr %arrayidx41, i64 0, i64 %idxprom42
  %41 = load i32, ptr %arrayidx43, align 4, !tbaa !5
  %cmp44 = icmp sgt i32 %37, %41
  br i1 %cmp44, label %cond.true45, label %cond.false50

cond.true45:                                      ; preds = %for.body39
  %42 = load ptr, ptr %a.addr, align 8, !tbaa !14
  %43 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom46 = sext i32 %43 to i64
  %arrayidx47 = getelementptr inbounds [100 x i32], ptr %42, i64 %idxprom46
  %44 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom48 = sext i32 %44 to i64
  %arrayidx49 = getelementptr inbounds [100 x i32], ptr %arrayidx47, i64 0, i64 %idxprom48
  %45 = load i32, ptr %arrayidx49, align 4, !tbaa !5
  br label %cond.end51

cond.false50:                                     ; preds = %for.body39
  %46 = load i32, ptr %s, align 4, !tbaa !5
  br label %cond.end51

cond.end51:                                       ; preds = %cond.false50, %cond.true45
  %cond52 = phi i32 [ %45, %cond.true45 ], [ %46, %cond.false50 ]
  store i32 %cond52, ptr %s, align 4, !tbaa !5
  br label %for.inc53

for.inc53:                                        ; preds = %cond.end51
  %47 = load i32, ptr %j, align 4, !tbaa !5
  %inc54 = add nsw i32 %47, 1
  store i32 %inc54, ptr %j, align 4, !tbaa !5
  br label %for.cond37, !llvm.loop !20

for.end55:                                        ; preds = %for.cond37
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond56

for.cond56:                                       ; preds = %for.inc68, %for.end55
  %48 = load i32, ptr %j, align 4, !tbaa !5
  %49 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp57 = icmp slt i32 %48, %49
  br i1 %cmp57, label %for.body58, label %for.end70

for.body58:                                       ; preds = %for.cond56
  %50 = load ptr, ptr %a.addr, align 8, !tbaa !14
  %51 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom59 = sext i32 %51 to i64
  %arrayidx60 = getelementptr inbounds [100 x i32], ptr %50, i64 %idxprom59
  %52 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom61 = sext i32 %52 to i64
  %arrayidx62 = getelementptr inbounds [100 x i32], ptr %arrayidx60, i64 0, i64 %idxprom61
  %53 = load i32, ptr %arrayidx62, align 4, !tbaa !5
  %54 = load i32, ptr %s, align 4, !tbaa !5
  %sub63 = sub nsw i32 %53, %54
  %55 = load ptr, ptr %a.addr, align 8, !tbaa !14
  %56 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom64 = sext i32 %56 to i64
  %arrayidx65 = getelementptr inbounds [100 x i32], ptr %55, i64 %idxprom64
  %57 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom66 = sext i32 %57 to i64
  %arrayidx67 = getelementptr inbounds [100 x i32], ptr %arrayidx65, i64 0, i64 %idxprom66
  store i32 %sub63, ptr %arrayidx67, align 4, !tbaa !5
  br label %for.inc68

for.inc68:                                        ; preds = %for.body58
  %58 = load i32, ptr %j, align 4, !tbaa !5
  %inc69 = add nsw i32 %58, 1
  store i32 %inc69, ptr %j, align 4, !tbaa !5
  br label %for.cond56, !llvm.loop !21

for.end70:                                        ; preds = %for.cond56
  br label %for.inc71

for.inc71:                                        ; preds = %for.end70
  %59 = load i32, ptr %i, align 4, !tbaa !5
  %inc72 = add nsw i32 %59, 1
  store i32 %inc72, ptr %i, align 4, !tbaa !5
  br label %for.cond31, !llvm.loop !22

for.end73:                                        ; preds = %for.cond31
  %60 = load ptr, ptr %a.addr, align 8, !tbaa !14
  %arrayidx74 = getelementptr inbounds [100 x i32], ptr %60, i64 1
  %arrayidx75 = getelementptr inbounds [100 x i32], ptr %arrayidx74, i64 0, i64 1
  %61 = load i32, ptr %arrayidx75, align 4, !tbaa !5
  store i32 %61, ptr %f, align 4, !tbaa !5
  %62 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp76 = icmp sgt i32 %62, 2
  br i1 %cmp76, label %if.then, label %if.end

if.then:                                          ; preds = %for.end73
  %63 = load ptr, ptr %a.addr, align 8, !tbaa !14
  %arrayidx77 = getelementptr inbounds [100 x i32], ptr %63, i64 0
  %arrayidx78 = getelementptr inbounds [100 x i32], ptr %arrayidx77, i64 0, i64 0
  %64 = load i32, ptr %arrayidx78, align 4, !tbaa !5
  %arrayidx79 = getelementptr inbounds [100 x [100 x i32]], ptr %b, i64 0, i64 0
  %arrayidx80 = getelementptr inbounds [100 x i32], ptr %arrayidx79, i64 0, i64 0
  store i32 %64, ptr %arrayidx80, align 16, !tbaa !5
  store i32 2, ptr %i, align 4, !tbaa !5
  br label %for.cond81

for.cond81:                                       ; preds = %for.inc98, %if.then
  %65 = load i32, ptr %i, align 4, !tbaa !5
  %66 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp82 = icmp slt i32 %65, %66
  br i1 %cmp82, label %for.body83, label %for.end100

for.body83:                                       ; preds = %for.cond81
  %67 = load ptr, ptr %a.addr, align 8, !tbaa !14
  %arrayidx84 = getelementptr inbounds [100 x i32], ptr %67, i64 0
  %68 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom85 = sext i32 %68 to i64
  %arrayidx86 = getelementptr inbounds [100 x i32], ptr %arrayidx84, i64 0, i64 %idxprom85
  %69 = load i32, ptr %arrayidx86, align 4, !tbaa !5
  %arrayidx87 = getelementptr inbounds [100 x [100 x i32]], ptr %b, i64 0, i64 0
  %70 = load i32, ptr %i, align 4, !tbaa !5
  %sub88 = sub nsw i32 %70, 1
  %idxprom89 = sext i32 %sub88 to i64
  %arrayidx90 = getelementptr inbounds [100 x i32], ptr %arrayidx87, i64 0, i64 %idxprom89
  store i32 %69, ptr %arrayidx90, align 4, !tbaa !5
  %71 = load ptr, ptr %a.addr, align 8, !tbaa !14
  %72 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom91 = sext i32 %72 to i64
  %arrayidx92 = getelementptr inbounds [100 x i32], ptr %71, i64 %idxprom91
  %arrayidx93 = getelementptr inbounds [100 x i32], ptr %arrayidx92, i64 0, i64 0
  %73 = load i32, ptr %arrayidx93, align 4, !tbaa !5
  %74 = load i32, ptr %i, align 4, !tbaa !5
  %sub94 = sub nsw i32 %74, 1
  %idxprom95 = sext i32 %sub94 to i64
  %arrayidx96 = getelementptr inbounds [100 x [100 x i32]], ptr %b, i64 0, i64 %idxprom95
  %arrayidx97 = getelementptr inbounds [100 x i32], ptr %arrayidx96, i64 0, i64 0
  store i32 %73, ptr %arrayidx97, align 16, !tbaa !5
  br label %for.inc98

for.inc98:                                        ; preds = %for.body83
  %75 = load i32, ptr %i, align 4, !tbaa !5
  %inc99 = add nsw i32 %75, 1
  store i32 %inc99, ptr %i, align 4, !tbaa !5
  br label %for.cond81, !llvm.loop !23

for.end100:                                       ; preds = %for.cond81
  store i32 2, ptr %i, align 4, !tbaa !5
  br label %for.cond101

for.cond101:                                      ; preds = %for.inc120, %for.end100
  %76 = load i32, ptr %i, align 4, !tbaa !5
  %77 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp102 = icmp slt i32 %76, %77
  br i1 %cmp102, label %for.body103, label %for.end122

for.body103:                                      ; preds = %for.cond101
  store i32 2, ptr %j, align 4, !tbaa !5
  br label %for.cond104

for.cond104:                                      ; preds = %for.inc117, %for.body103
  %78 = load i32, ptr %j, align 4, !tbaa !5
  %79 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp105 = icmp slt i32 %78, %79
  br i1 %cmp105, label %for.body106, label %for.end119

for.body106:                                      ; preds = %for.cond104
  %80 = load ptr, ptr %a.addr, align 8, !tbaa !14
  %81 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom107 = sext i32 %81 to i64
  %arrayidx108 = getelementptr inbounds [100 x i32], ptr %80, i64 %idxprom107
  %82 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom109 = sext i32 %82 to i64
  %arrayidx110 = getelementptr inbounds [100 x i32], ptr %arrayidx108, i64 0, i64 %idxprom109
  %83 = load i32, ptr %arrayidx110, align 4, !tbaa !5
  %84 = load i32, ptr %i, align 4, !tbaa !5
  %sub111 = sub nsw i32 %84, 1
  %idxprom112 = sext i32 %sub111 to i64
  %arrayidx113 = getelementptr inbounds [100 x [100 x i32]], ptr %b, i64 0, i64 %idxprom112
  %85 = load i32, ptr %j, align 4, !tbaa !5
  %sub114 = sub nsw i32 %85, 1
  %idxprom115 = sext i32 %sub114 to i64
  %arrayidx116 = getelementptr inbounds [100 x i32], ptr %arrayidx113, i64 0, i64 %idxprom115
  store i32 %83, ptr %arrayidx116, align 4, !tbaa !5
  br label %for.inc117

for.inc117:                                       ; preds = %for.body106
  %86 = load i32, ptr %j, align 4, !tbaa !5
  %inc118 = add nsw i32 %86, 1
  store i32 %inc118, ptr %j, align 4, !tbaa !5
  br label %for.cond104, !llvm.loop !24

for.end119:                                       ; preds = %for.cond104
  br label %for.inc120

for.inc120:                                       ; preds = %for.end119
  %87 = load i32, ptr %i, align 4, !tbaa !5
  %inc121 = add nsw i32 %87, 1
  store i32 %inc121, ptr %i, align 4, !tbaa !5
  br label %for.cond101, !llvm.loop !25

for.end122:                                       ; preds = %for.cond101
  %88 = load i32, ptr %f, align 4, !tbaa !5
  %arraydecay = getelementptr inbounds [100 x [100 x i32]], ptr %b, i64 0, i64 0
  %89 = load i32, ptr %n.addr, align 4, !tbaa !5
  %sub123 = sub nsw i32 %89, 1
  %call = call noundef i32 @_Z6changePA100_ii(ptr noundef %arraydecay, i32 noundef %sub123)
  %add = add nsw i32 %88, %call
  store i32 %add, ptr %f, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %for.end122, %for.end73
  %90 = load i32, ptr %f, align 4, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 4, ptr %f) #4
  call void @llvm.lifetime.end.p0(i64 40000, ptr %b) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %s) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
  ret i32 %90
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

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
!14 = !{!15, !15, i64 0}
!15 = !{!"p1 int", !16, i64 0}
!16 = !{!"any pointer", !7, i64 0}
!17 = distinct !{!17, !10, !11}
!18 = distinct !{!18, !10, !11}
!19 = distinct !{!19, !10, !11}
!20 = distinct !{!20, !10, !11}
!21 = distinct !{!21, !10, !11}
!22 = distinct !{!22, !10, !11}
!23 = distinct !{!23, !10, !11}
!24 = distinct !{!24, !10, !11}
!25 = distinct !{!25, !10, !11}
