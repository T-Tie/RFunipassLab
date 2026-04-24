; ModuleID = '/tmp/tmpqlq7dl2w.cpp'
source_filename = "/tmp/tmpqlq7dl2w.cpp"
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
  %k = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %l = alloca i32, align 4
  %a = alloca [100 x [100 x i32]], align 16
  %s = alloca [100 x i32], align 16
  %minh = alloca [100 x i32], align 16
  %minl = alloca [100 x i32], align 16
  %sum = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %n)
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #4
  store i32 0, ptr %k, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc172, %entry
  %0 = load i32, ptr %k, align 4, !tbaa !5
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end174

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %l) #4
  call void @llvm.lifetime.start.p0(i64 40000, ptr %a) #4
  call void @llvm.lifetime.start.p0(i64 400, ptr %s) #4
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc10, %for.body
  %2 = load i32, ptr %i, align 4, !tbaa !5
  %3 = load i32, ptr %n, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body3, label %for.end12

for.body3:                                        ; preds = %for.cond1
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %4 = load i32, ptr %j, align 4, !tbaa !5
  %5 = load i32, ptr %n, align 4, !tbaa !5
  %cmp5 = icmp slt i32 %4, %5
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %6 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom
  %7 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom7 = sext i32 %7 to i64
  %arrayidx8 = getelementptr inbounds [100 x i32], ptr %arrayidx, i64 0, i64 %idxprom7
  %call9 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arrayidx8)
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %8 = load i32, ptr %j, align 4, !tbaa !5
  %inc = add nsw i32 %8, 1
  store i32 %inc, ptr %j, align 4, !tbaa !5
  br label %for.cond4, !llvm.loop !9

for.end:                                          ; preds = %for.cond4
  br label %for.inc10

for.inc10:                                        ; preds = %for.end
  %9 = load i32, ptr %i, align 4, !tbaa !5
  %inc11 = add nsw i32 %9, 1
  store i32 %inc11, ptr %i, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !12

for.end12:                                        ; preds = %for.cond1
  store i32 0, ptr %l, align 4, !tbaa !5
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc158, %for.end12
  %10 = load i32, ptr %l, align 4, !tbaa !5
  %11 = load i32, ptr %n, align 4, !tbaa !5
  %sub = sub nsw i32 %11, 1
  %cmp14 = icmp slt i32 %10, %sub
  br i1 %cmp14, label %for.body15, label %for.end160

for.body15:                                       ; preds = %for.cond13
  call void @llvm.lifetime.start.p0(i64 400, ptr %minh) #4
  call void @llvm.memset.p0.i64(ptr align 16 %minh, i8 0, i64 400, i1 false)
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc71, %for.body15
  %12 = load i32, ptr %i, align 4, !tbaa !5
  %13 = load i32, ptr %n, align 4, !tbaa !5
  %cmp17 = icmp slt i32 %12, %13
  br i1 %cmp17, label %for.body18, label %for.end73

for.body18:                                       ; preds = %for.cond16
  %14 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom19 = sext i32 %14 to i64
  %arrayidx20 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom19
  %arrayidx21 = getelementptr inbounds [100 x i32], ptr %arrayidx20, i64 0, i64 0
  %15 = load i32, ptr %arrayidx21, align 16, !tbaa !5
  %cmp22 = icmp sge i32 %15, 0
  br i1 %cmp22, label %if.then, label %if.end70

if.then:                                          ; preds = %for.body18
  %16 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom23 = sext i32 %16 to i64
  %arrayidx24 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom23
  %arrayidx25 = getelementptr inbounds [100 x i32], ptr %arrayidx24, i64 0, i64 0
  %17 = load i32, ptr %arrayidx25, align 16, !tbaa !5
  %18 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom26 = sext i32 %18 to i64
  %arrayidx27 = getelementptr inbounds [100 x i32], ptr %minh, i64 0, i64 %idxprom26
  store i32 %17, ptr %arrayidx27, align 4, !tbaa !5
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond28

for.cond28:                                       ; preds = %for.inc50, %if.then
  %19 = load i32, ptr %j, align 4, !tbaa !5
  %20 = load i32, ptr %n, align 4, !tbaa !5
  %cmp29 = icmp slt i32 %19, %20
  br i1 %cmp29, label %for.body30, label %for.end52

for.body30:                                       ; preds = %for.cond28
  %21 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom31 = sext i32 %21 to i64
  %arrayidx32 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom31
  %22 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom33 = sext i32 %22 to i64
  %arrayidx34 = getelementptr inbounds [100 x i32], ptr %arrayidx32, i64 0, i64 %idxprom33
  %23 = load i32, ptr %arrayidx34, align 4, !tbaa !5
  %24 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom35 = sext i32 %24 to i64
  %arrayidx36 = getelementptr inbounds [100 x i32], ptr %minh, i64 0, i64 %idxprom35
  %25 = load i32, ptr %arrayidx36, align 4, !tbaa !5
  %cmp37 = icmp slt i32 %23, %25
  br i1 %cmp37, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body30
  %26 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom38 = sext i32 %26 to i64
  %arrayidx39 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom38
  %27 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom40 = sext i32 %27 to i64
  %arrayidx41 = getelementptr inbounds [100 x i32], ptr %arrayidx39, i64 0, i64 %idxprom40
  %28 = load i32, ptr %arrayidx41, align 4, !tbaa !5
  %cmp42 = icmp sge i32 %28, 0
  br i1 %cmp42, label %if.then43, label %if.end

if.then43:                                        ; preds = %land.lhs.true
  %29 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom44 = sext i32 %29 to i64
  %arrayidx45 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom44
  %30 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom46 = sext i32 %30 to i64
  %arrayidx47 = getelementptr inbounds [100 x i32], ptr %arrayidx45, i64 0, i64 %idxprom46
  %31 = load i32, ptr %arrayidx47, align 4, !tbaa !5
  %32 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom48 = sext i32 %32 to i64
  %arrayidx49 = getelementptr inbounds [100 x i32], ptr %minh, i64 0, i64 %idxprom48
  store i32 %31, ptr %arrayidx49, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then43, %land.lhs.true, %for.body30
  br label %for.inc50

for.inc50:                                        ; preds = %if.end
  %33 = load i32, ptr %j, align 4, !tbaa !5
  %inc51 = add nsw i32 %33, 1
  store i32 %inc51, ptr %j, align 4, !tbaa !5
  br label %for.cond28, !llvm.loop !13

for.end52:                                        ; preds = %for.cond28
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond53

for.cond53:                                       ; preds = %for.inc67, %for.end52
  %34 = load i32, ptr %j, align 4, !tbaa !5
  %35 = load i32, ptr %n, align 4, !tbaa !5
  %cmp54 = icmp slt i32 %34, %35
  br i1 %cmp54, label %for.body55, label %for.end69

for.body55:                                       ; preds = %for.cond53
  %36 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom56 = sext i32 %36 to i64
  %arrayidx57 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom56
  %37 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom58 = sext i32 %37 to i64
  %arrayidx59 = getelementptr inbounds [100 x i32], ptr %arrayidx57, i64 0, i64 %idxprom58
  %38 = load i32, ptr %arrayidx59, align 4, !tbaa !5
  %39 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom60 = sext i32 %39 to i64
  %arrayidx61 = getelementptr inbounds [100 x i32], ptr %minh, i64 0, i64 %idxprom60
  %40 = load i32, ptr %arrayidx61, align 4, !tbaa !5
  %sub62 = sub nsw i32 %38, %40
  %41 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom63 = sext i32 %41 to i64
  %arrayidx64 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom63
  %42 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom65 = sext i32 %42 to i64
  %arrayidx66 = getelementptr inbounds [100 x i32], ptr %arrayidx64, i64 0, i64 %idxprom65
  store i32 %sub62, ptr %arrayidx66, align 4, !tbaa !5
  br label %for.inc67

for.inc67:                                        ; preds = %for.body55
  %43 = load i32, ptr %j, align 4, !tbaa !5
  %inc68 = add nsw i32 %43, 1
  store i32 %inc68, ptr %j, align 4, !tbaa !5
  br label %for.cond53, !llvm.loop !14

for.end69:                                        ; preds = %for.cond53
  br label %if.end70

if.end70:                                         ; preds = %for.end69, %for.body18
  br label %for.inc71

for.inc71:                                        ; preds = %if.end70
  %44 = load i32, ptr %i, align 4, !tbaa !5
  %inc72 = add nsw i32 %44, 1
  store i32 %inc72, ptr %i, align 4, !tbaa !5
  br label %for.cond16, !llvm.loop !15

for.end73:                                        ; preds = %for.cond16
  call void @llvm.lifetime.start.p0(i64 400, ptr %minl) #4
  call void @llvm.memset.p0.i64(ptr align 16 %minl, i8 0, i64 400, i1 false)
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond74

for.cond74:                                       ; preds = %for.inc132, %for.end73
  %45 = load i32, ptr %i, align 4, !tbaa !5
  %46 = load i32, ptr %n, align 4, !tbaa !5
  %cmp75 = icmp slt i32 %45, %46
  br i1 %cmp75, label %for.body76, label %for.end134

for.body76:                                       ; preds = %for.cond74
  %arrayidx77 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 0
  %47 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom78 = sext i32 %47 to i64
  %arrayidx79 = getelementptr inbounds [100 x i32], ptr %arrayidx77, i64 0, i64 %idxprom78
  %48 = load i32, ptr %arrayidx79, align 4, !tbaa !5
  %cmp80 = icmp sge i32 %48, 0
  br i1 %cmp80, label %if.then81, label %if.end131

if.then81:                                        ; preds = %for.body76
  %arrayidx82 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 0
  %49 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom83 = sext i32 %49 to i64
  %arrayidx84 = getelementptr inbounds [100 x i32], ptr %arrayidx82, i64 0, i64 %idxprom83
  %50 = load i32, ptr %arrayidx84, align 4, !tbaa !5
  %51 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom85 = sext i32 %51 to i64
  %arrayidx86 = getelementptr inbounds [100 x i32], ptr %minl, i64 0, i64 %idxprom85
  store i32 %50, ptr %arrayidx86, align 4, !tbaa !5
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond87

for.cond87:                                       ; preds = %for.inc111, %if.then81
  %52 = load i32, ptr %j, align 4, !tbaa !5
  %53 = load i32, ptr %n, align 4, !tbaa !5
  %cmp88 = icmp slt i32 %52, %53
  br i1 %cmp88, label %for.body89, label %for.end113

for.body89:                                       ; preds = %for.cond87
  %54 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom90 = sext i32 %54 to i64
  %arrayidx91 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom90
  %55 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom92 = sext i32 %55 to i64
  %arrayidx93 = getelementptr inbounds [100 x i32], ptr %arrayidx91, i64 0, i64 %idxprom92
  %56 = load i32, ptr %arrayidx93, align 4, !tbaa !5
  %57 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom94 = sext i32 %57 to i64
  %arrayidx95 = getelementptr inbounds [100 x i32], ptr %minl, i64 0, i64 %idxprom94
  %58 = load i32, ptr %arrayidx95, align 4, !tbaa !5
  %cmp96 = icmp slt i32 %56, %58
  br i1 %cmp96, label %land.lhs.true97, label %if.end110

land.lhs.true97:                                  ; preds = %for.body89
  %59 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom98 = sext i32 %59 to i64
  %arrayidx99 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom98
  %60 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom100 = sext i32 %60 to i64
  %arrayidx101 = getelementptr inbounds [100 x i32], ptr %arrayidx99, i64 0, i64 %idxprom100
  %61 = load i32, ptr %arrayidx101, align 4, !tbaa !5
  %cmp102 = icmp sge i32 %61, 0
  br i1 %cmp102, label %if.then103, label %if.end110

if.then103:                                       ; preds = %land.lhs.true97
  %62 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom104 = sext i32 %62 to i64
  %arrayidx105 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom104
  %63 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom106 = sext i32 %63 to i64
  %arrayidx107 = getelementptr inbounds [100 x i32], ptr %arrayidx105, i64 0, i64 %idxprom106
  %64 = load i32, ptr %arrayidx107, align 4, !tbaa !5
  %65 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom108 = sext i32 %65 to i64
  %arrayidx109 = getelementptr inbounds [100 x i32], ptr %minl, i64 0, i64 %idxprom108
  store i32 %64, ptr %arrayidx109, align 4, !tbaa !5
  br label %if.end110

if.end110:                                        ; preds = %if.then103, %land.lhs.true97, %for.body89
  br label %for.inc111

for.inc111:                                       ; preds = %if.end110
  %66 = load i32, ptr %j, align 4, !tbaa !5
  %inc112 = add nsw i32 %66, 1
  store i32 %inc112, ptr %j, align 4, !tbaa !5
  br label %for.cond87, !llvm.loop !16

for.end113:                                       ; preds = %for.cond87
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond114

for.cond114:                                      ; preds = %for.inc128, %for.end113
  %67 = load i32, ptr %j, align 4, !tbaa !5
  %68 = load i32, ptr %n, align 4, !tbaa !5
  %cmp115 = icmp slt i32 %67, %68
  br i1 %cmp115, label %for.body116, label %for.end130

for.body116:                                      ; preds = %for.cond114
  %69 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom117 = sext i32 %69 to i64
  %arrayidx118 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom117
  %70 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom119 = sext i32 %70 to i64
  %arrayidx120 = getelementptr inbounds [100 x i32], ptr %arrayidx118, i64 0, i64 %idxprom119
  %71 = load i32, ptr %arrayidx120, align 4, !tbaa !5
  %72 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom121 = sext i32 %72 to i64
  %arrayidx122 = getelementptr inbounds [100 x i32], ptr %minl, i64 0, i64 %idxprom121
  %73 = load i32, ptr %arrayidx122, align 4, !tbaa !5
  %sub123 = sub nsw i32 %71, %73
  %74 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom124 = sext i32 %74 to i64
  %arrayidx125 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom124
  %75 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom126 = sext i32 %75 to i64
  %arrayidx127 = getelementptr inbounds [100 x i32], ptr %arrayidx125, i64 0, i64 %idxprom126
  store i32 %sub123, ptr %arrayidx127, align 4, !tbaa !5
  br label %for.inc128

for.inc128:                                       ; preds = %for.body116
  %76 = load i32, ptr %j, align 4, !tbaa !5
  %inc129 = add nsw i32 %76, 1
  store i32 %inc129, ptr %j, align 4, !tbaa !5
  br label %for.cond114, !llvm.loop !17

for.end130:                                       ; preds = %for.cond114
  br label %if.end131

if.end131:                                        ; preds = %for.end130, %for.body76
  br label %for.inc132

for.inc132:                                       ; preds = %if.end131
  %77 = load i32, ptr %i, align 4, !tbaa !5
  %inc133 = add nsw i32 %77, 1
  store i32 %inc133, ptr %i, align 4, !tbaa !5
  br label %for.cond74, !llvm.loop !18

for.end134:                                       ; preds = %for.cond74
  %78 = load i32, ptr %l, align 4, !tbaa !5
  %add = add nsw i32 %78, 1
  %idxprom135 = sext i32 %add to i64
  %arrayidx136 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom135
  %79 = load i32, ptr %l, align 4, !tbaa !5
  %add137 = add nsw i32 %79, 1
  %idxprom138 = sext i32 %add137 to i64
  %arrayidx139 = getelementptr inbounds [100 x i32], ptr %arrayidx136, i64 0, i64 %idxprom138
  %80 = load i32, ptr %arrayidx139, align 4, !tbaa !5
  %81 = load i32, ptr %l, align 4, !tbaa !5
  %idxprom140 = sext i32 %81 to i64
  %arrayidx141 = getelementptr inbounds [100 x i32], ptr %s, i64 0, i64 %idxprom140
  store i32 %80, ptr %arrayidx141, align 4, !tbaa !5
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond142

for.cond142:                                      ; preds = %for.inc155, %for.end134
  %82 = load i32, ptr %i, align 4, !tbaa !5
  %83 = load i32, ptr %n, align 4, !tbaa !5
  %cmp143 = icmp slt i32 %82, %83
  br i1 %cmp143, label %for.body144, label %for.end157

for.body144:                                      ; preds = %for.cond142
  %84 = load i32, ptr %l, align 4, !tbaa !5
  %add145 = add nsw i32 %84, 1
  %idxprom146 = sext i32 %add145 to i64
  %arrayidx147 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom146
  %85 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom148 = sext i32 %85 to i64
  %arrayidx149 = getelementptr inbounds [100 x i32], ptr %arrayidx147, i64 0, i64 %idxprom148
  store i32 -1, ptr %arrayidx149, align 4, !tbaa !5
  %86 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom150 = sext i32 %86 to i64
  %arrayidx151 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom150
  %87 = load i32, ptr %l, align 4, !tbaa !5
  %add152 = add nsw i32 %87, 1
  %idxprom153 = sext i32 %add152 to i64
  %arrayidx154 = getelementptr inbounds [100 x i32], ptr %arrayidx151, i64 0, i64 %idxprom153
  store i32 -1, ptr %arrayidx154, align 4, !tbaa !5
  br label %for.inc155

for.inc155:                                       ; preds = %for.body144
  %88 = load i32, ptr %i, align 4, !tbaa !5
  %inc156 = add nsw i32 %88, 1
  store i32 %inc156, ptr %i, align 4, !tbaa !5
  br label %for.cond142, !llvm.loop !19

for.end157:                                       ; preds = %for.cond142
  call void @llvm.lifetime.end.p0(i64 400, ptr %minl) #4
  call void @llvm.lifetime.end.p0(i64 400, ptr %minh) #4
  br label %for.inc158

for.inc158:                                       ; preds = %for.end157
  %89 = load i32, ptr %l, align 4, !tbaa !5
  %inc159 = add nsw i32 %89, 1
  store i32 %inc159, ptr %l, align 4, !tbaa !5
  br label %for.cond13, !llvm.loop !20

for.end160:                                       ; preds = %for.cond13
  call void @llvm.lifetime.start.p0(i64 4, ptr %sum) #4
  store i32 0, ptr %sum, align 4, !tbaa !5
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond161

for.cond161:                                      ; preds = %for.inc168, %for.end160
  %90 = load i32, ptr %i, align 4, !tbaa !5
  %91 = load i32, ptr %n, align 4, !tbaa !5
  %sub162 = sub nsw i32 %91, 1
  %cmp163 = icmp slt i32 %90, %sub162
  br i1 %cmp163, label %for.body164, label %for.end170

for.body164:                                      ; preds = %for.cond161
  %92 = load i32, ptr %sum, align 4, !tbaa !5
  %93 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom165 = sext i32 %93 to i64
  %arrayidx166 = getelementptr inbounds [100 x i32], ptr %s, i64 0, i64 %idxprom165
  %94 = load i32, ptr %arrayidx166, align 4, !tbaa !5
  %add167 = add nsw i32 %92, %94
  store i32 %add167, ptr %sum, align 4, !tbaa !5
  br label %for.inc168

for.inc168:                                       ; preds = %for.body164
  %95 = load i32, ptr %i, align 4, !tbaa !5
  %inc169 = add nsw i32 %95, 1
  store i32 %inc169, ptr %i, align 4, !tbaa !5
  br label %for.cond161, !llvm.loop !21

for.end170:                                       ; preds = %for.cond161
  %96 = load i32, ptr %sum, align 4, !tbaa !5
  %call171 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %96)
  call void @llvm.lifetime.end.p0(i64 4, ptr %sum) #4
  call void @llvm.lifetime.end.p0(i64 400, ptr %s) #4
  call void @llvm.lifetime.end.p0(i64 40000, ptr %a) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %l) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
  br label %for.inc172

for.inc172:                                       ; preds = %for.end170
  %97 = load i32, ptr %k, align 4, !tbaa !5
  %inc173 = add nsw i32 %97, 1
  store i32 %inc173, ptr %k, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !22

for.end174:                                       ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #4
  %98 = load i32, ptr %retval, align 4
  ret i32 %98
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare i32 @printf(ptr noundef, ...) #2

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
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
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11}
!18 = distinct !{!18, !10, !11}
!19 = distinct !{!19, !10, !11}
!20 = distinct !{!20, !10, !11}
!21 = distinct !{!21, !10, !11}
!22 = distinct !{!22, !10, !11}
