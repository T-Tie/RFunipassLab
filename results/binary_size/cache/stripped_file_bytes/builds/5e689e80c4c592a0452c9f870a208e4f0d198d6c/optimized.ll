; ModuleID = '/tmp/tmpqu_ydsxv.cpp'
source_filename = "/tmp/tmpqu_ydsxv.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"NO\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %z = alloca [1000 x i8], align 16
  %x = alloca [20 x i8], align 16
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %l = alloca i32, align 4
  %n = alloca i32, align 4
  %h = alloca [1000 x i32], align 16
  %p = alloca i32, align 4
  %len = alloca i32, align 4
  %count = alloca i32, align 4
  %dount = alloca i32, align 4
  %m = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 1000, ptr %z) #4
  call void @llvm.lifetime.start.p0(i64 20, ptr %x) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %l) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #4
  call void @llvm.lifetime.start.p0(i64 4000, ptr %h) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %p) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %n)
  %arraydecay = getelementptr inbounds [1000 x i8], ptr %z, i64 0, i64 0
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.1, ptr noundef %arraydecay)
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #4
  %arraydecay2 = getelementptr inbounds [1000 x i8], ptr %z, i64 0, i64 0
  %call3 = call i64 @strlen(ptr noundef %arraydecay2) #5
  %conv = trunc i64 %call3 to i32
  store i32 %conv, ptr %len, align 4, !tbaa !5
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc42, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %len, align 4, !tbaa !5
  %2 = load i32, ptr %n, align 4, !tbaa !5
  %sub = sub nsw i32 %1, %2
  %cmp = icmp sle i32 %0, %sub
  br i1 %cmp, label %for.body, label %for.end44

for.body:                                         ; preds = %for.cond
  %3 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [1000 x i32], ptr %h, i64 0, i64 %idxprom
  store i32 0, ptr %arrayidx, align 4, !tbaa !5
  %4 = load i32, ptr %i, align 4, !tbaa !5
  store i32 %4, ptr %j, align 4, !tbaa !5
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body
  %5 = load i32, ptr %j, align 4, !tbaa !5
  %6 = load i32, ptr %i, align 4, !tbaa !5
  %7 = load i32, ptr %n, align 4, !tbaa !5
  %add = add nsw i32 %6, %7
  %cmp5 = icmp slt i32 %5, %add
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %8 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom7 = sext i32 %8 to i64
  %arrayidx8 = getelementptr inbounds [1000 x i8], ptr %z, i64 0, i64 %idxprom7
  %9 = load i8, ptr %arrayidx8, align 1, !tbaa !9
  %10 = load i32, ptr %j, align 4, !tbaa !5
  %11 = load i32, ptr %i, align 4, !tbaa !5
  %sub9 = sub nsw i32 %10, %11
  %idxprom10 = sext i32 %sub9 to i64
  %arrayidx11 = getelementptr inbounds [20 x i8], ptr %x, i64 0, i64 %idxprom10
  store i8 %9, ptr %arrayidx11, align 1, !tbaa !9
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %12 = load i32, ptr %j, align 4, !tbaa !5
  %inc = add nsw i32 %12, 1
  store i32 %inc, ptr %j, align 4, !tbaa !5
  br label %for.cond4, !llvm.loop !10

for.end:                                          ; preds = %for.cond4
  %13 = load i32, ptr %n, align 4, !tbaa !5
  %idxprom12 = sext i32 %13 to i64
  %arrayidx13 = getelementptr inbounds [20 x i8], ptr %x, i64 0, i64 %idxprom12
  store i8 0, ptr %arrayidx13, align 1, !tbaa !9
  %14 = load i32, ptr %i, align 4, !tbaa !5
  store i32 %14, ptr %j, align 4, !tbaa !5
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc39, %for.end
  %15 = load i32, ptr %j, align 4, !tbaa !5
  %16 = load i32, ptr %len, align 4, !tbaa !5
  %cmp15 = icmp slt i32 %15, %16
  br i1 %cmp15, label %for.body16, label %for.end41

for.body16:                                       ; preds = %for.cond14
  store i32 0, ptr %p, align 4, !tbaa !5
  %17 = load i32, ptr %j, align 4, !tbaa !5
  store i32 %17, ptr %k, align 4, !tbaa !5
  br label %for.cond17

for.cond17:                                       ; preds = %for.inc30, %for.body16
  %18 = load i32, ptr %k, align 4, !tbaa !5
  %19 = load i32, ptr %j, align 4, !tbaa !5
  %20 = load i32, ptr %n, align 4, !tbaa !5
  %add18 = add nsw i32 %19, %20
  %cmp19 = icmp slt i32 %18, %add18
  br i1 %cmp19, label %for.body20, label %for.end32

for.body20:                                       ; preds = %for.cond17
  %21 = load i32, ptr %k, align 4, !tbaa !5
  %22 = load i32, ptr %j, align 4, !tbaa !5
  %sub21 = sub nsw i32 %21, %22
  %idxprom22 = sext i32 %sub21 to i64
  %arrayidx23 = getelementptr inbounds [20 x i8], ptr %x, i64 0, i64 %idxprom22
  %23 = load i8, ptr %arrayidx23, align 1, !tbaa !9
  %conv24 = sext i8 %23 to i32
  %24 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom25 = sext i32 %24 to i64
  %arrayidx26 = getelementptr inbounds [1000 x i8], ptr %z, i64 0, i64 %idxprom25
  %25 = load i8, ptr %arrayidx26, align 1, !tbaa !9
  %conv27 = sext i8 %25 to i32
  %cmp28 = icmp eq i32 %conv24, %conv27
  br i1 %cmp28, label %if.then, label %if.end

if.then:                                          ; preds = %for.body20
  %26 = load i32, ptr %p, align 4, !tbaa !5
  %inc29 = add nsw i32 %26, 1
  store i32 %inc29, ptr %p, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body20
  br label %for.inc30

for.inc30:                                        ; preds = %if.end
  %27 = load i32, ptr %k, align 4, !tbaa !5
  %inc31 = add nsw i32 %27, 1
  store i32 %inc31, ptr %k, align 4, !tbaa !5
  br label %for.cond17, !llvm.loop !13

for.end32:                                        ; preds = %for.cond17
  %28 = load i32, ptr %p, align 4, !tbaa !5
  %29 = load i32, ptr %n, align 4, !tbaa !5
  %cmp33 = icmp eq i32 %28, %29
  br i1 %cmp33, label %if.then34, label %if.end38

if.then34:                                        ; preds = %for.end32
  %30 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom35 = sext i32 %30 to i64
  %arrayidx36 = getelementptr inbounds [1000 x i32], ptr %h, i64 0, i64 %idxprom35
  %31 = load i32, ptr %arrayidx36, align 4, !tbaa !5
  %inc37 = add nsw i32 %31, 1
  store i32 %inc37, ptr %arrayidx36, align 4, !tbaa !5
  br label %if.end38

if.end38:                                         ; preds = %if.then34, %for.end32
  br label %for.inc39

for.inc39:                                        ; preds = %if.end38
  %32 = load i32, ptr %j, align 4, !tbaa !5
  %inc40 = add nsw i32 %32, 1
  store i32 %inc40, ptr %j, align 4, !tbaa !5
  br label %for.cond14, !llvm.loop !14

for.end41:                                        ; preds = %for.cond14
  br label %for.inc42

for.inc42:                                        ; preds = %for.end41
  %33 = load i32, ptr %i, align 4, !tbaa !5
  %inc43 = add nsw i32 %33, 1
  store i32 %inc43, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !15

for.end44:                                        ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %count) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %dount) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %m) #4
  store i32 0, ptr %m, align 4, !tbaa !5
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond45

for.cond45:                                       ; preds = %for.inc84, %for.end44
  %34 = load i32, ptr %i, align 4, !tbaa !5
  %35 = load i32, ptr %len, align 4, !tbaa !5
  %36 = load i32, ptr %n, align 4, !tbaa !5
  %sub46 = sub nsw i32 %35, %36
  %add47 = add nsw i32 %sub46, 1
  %cmp48 = icmp slt i32 %34, %add47
  br i1 %cmp48, label %for.body49, label %for.end86

for.body49:                                       ; preds = %for.cond45
  store i32 0, ptr %count, align 4, !tbaa !5
  store i32 0, ptr %dount, align 4, !tbaa !5
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond50

for.cond50:                                       ; preds = %for.inc71, %for.body49
  %37 = load i32, ptr %j, align 4, !tbaa !5
  %38 = load i32, ptr %len, align 4, !tbaa !5
  %39 = load i32, ptr %n, align 4, !tbaa !5
  %sub51 = sub nsw i32 %38, %39
  %add52 = add nsw i32 %sub51, 1
  %cmp53 = icmp slt i32 %37, %add52
  br i1 %cmp53, label %for.body54, label %for.end73

for.body54:                                       ; preds = %for.cond50
  %40 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom55 = sext i32 %40 to i64
  %arrayidx56 = getelementptr inbounds [1000 x i32], ptr %h, i64 0, i64 %idxprom55
  %41 = load i32, ptr %arrayidx56, align 4, !tbaa !5
  %42 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom57 = sext i32 %42 to i64
  %arrayidx58 = getelementptr inbounds [1000 x i32], ptr %h, i64 0, i64 %idxprom57
  %43 = load i32, ptr %arrayidx58, align 4, !tbaa !5
  %cmp59 = icmp sge i32 %41, %43
  br i1 %cmp59, label %if.then60, label %if.end62

if.then60:                                        ; preds = %for.body54
  %44 = load i32, ptr %count, align 4, !tbaa !5
  %inc61 = add nsw i32 %44, 1
  store i32 %inc61, ptr %count, align 4, !tbaa !5
  br label %if.end62

if.end62:                                         ; preds = %if.then60, %for.body54
  %45 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom63 = sext i32 %45 to i64
  %arrayidx64 = getelementptr inbounds [1000 x i32], ptr %h, i64 0, i64 %idxprom63
  %46 = load i32, ptr %arrayidx64, align 4, !tbaa !5
  %47 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom65 = sext i32 %47 to i64
  %arrayidx66 = getelementptr inbounds [1000 x i32], ptr %h, i64 0, i64 %idxprom65
  %48 = load i32, ptr %arrayidx66, align 4, !tbaa !5
  %cmp67 = icmp sgt i32 %46, %48
  br i1 %cmp67, label %if.then68, label %if.end70

if.then68:                                        ; preds = %if.end62
  %49 = load i32, ptr %dount, align 4, !tbaa !5
  %inc69 = add nsw i32 %49, 1
  store i32 %inc69, ptr %dount, align 4, !tbaa !5
  br label %if.end70

if.end70:                                         ; preds = %if.then68, %if.end62
  br label %for.inc71

for.inc71:                                        ; preds = %if.end70
  %50 = load i32, ptr %j, align 4, !tbaa !5
  %inc72 = add nsw i32 %50, 1
  store i32 %inc72, ptr %j, align 4, !tbaa !5
  br label %for.cond50, !llvm.loop !16

for.end73:                                        ; preds = %for.cond50
  %51 = load i32, ptr %count, align 4, !tbaa !5
  %52 = load i32, ptr %len, align 4, !tbaa !5
  %53 = load i32, ptr %n, align 4, !tbaa !5
  %sub74 = sub nsw i32 %52, %53
  %add75 = add nsw i32 %sub74, 1
  %cmp76 = icmp eq i32 %51, %add75
  br i1 %cmp76, label %land.lhs.true, label %if.end83

land.lhs.true:                                    ; preds = %for.end73
  %54 = load i32, ptr %dount, align 4, !tbaa !5
  %cmp77 = icmp ne i32 %54, 0
  br i1 %cmp77, label %if.then78, label %if.end83

if.then78:                                        ; preds = %land.lhs.true
  %55 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom79 = sext i32 %55 to i64
  %arrayidx80 = getelementptr inbounds [1000 x i32], ptr %h, i64 0, i64 %idxprom79
  %56 = load i32, ptr %arrayidx80, align 4, !tbaa !5
  %call81 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %56)
  %57 = load i32, ptr %m, align 4, !tbaa !5
  %inc82 = add nsw i32 %57, 1
  store i32 %inc82, ptr %m, align 4, !tbaa !5
  br label %for.end86

if.end83:                                         ; preds = %land.lhs.true, %for.end73
  br label %for.inc84

for.inc84:                                        ; preds = %if.end83
  %58 = load i32, ptr %i, align 4, !tbaa !5
  %inc85 = add nsw i32 %58, 1
  store i32 %inc85, ptr %i, align 4, !tbaa !5
  br label %for.cond45, !llvm.loop !17

for.end86:                                        ; preds = %if.then78, %for.cond45
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond87

for.cond87:                                       ; preds = %for.inc138, %for.end86
  %59 = load i32, ptr %i, align 4, !tbaa !5
  %60 = load i32, ptr %len, align 4, !tbaa !5
  %61 = load i32, ptr %n, align 4, !tbaa !5
  %sub88 = sub nsw i32 %60, %61
  %add89 = add nsw i32 %sub88, 1
  %cmp90 = icmp slt i32 %59, %add89
  br i1 %cmp90, label %for.body91, label %for.end140

for.body91:                                       ; preds = %for.cond87
  store i32 0, ptr %count, align 4, !tbaa !5
  store i32 0, ptr %dount, align 4, !tbaa !5
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond92

for.cond92:                                       ; preds = %for.inc113, %for.body91
  %62 = load i32, ptr %j, align 4, !tbaa !5
  %63 = load i32, ptr %len, align 4, !tbaa !5
  %64 = load i32, ptr %n, align 4, !tbaa !5
  %sub93 = sub nsw i32 %63, %64
  %add94 = add nsw i32 %sub93, 1
  %cmp95 = icmp slt i32 %62, %add94
  br i1 %cmp95, label %for.body96, label %for.end115

for.body96:                                       ; preds = %for.cond92
  %65 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom97 = sext i32 %65 to i64
  %arrayidx98 = getelementptr inbounds [1000 x i32], ptr %h, i64 0, i64 %idxprom97
  %66 = load i32, ptr %arrayidx98, align 4, !tbaa !5
  %67 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom99 = sext i32 %67 to i64
  %arrayidx100 = getelementptr inbounds [1000 x i32], ptr %h, i64 0, i64 %idxprom99
  %68 = load i32, ptr %arrayidx100, align 4, !tbaa !5
  %cmp101 = icmp sge i32 %66, %68
  br i1 %cmp101, label %if.then102, label %if.end104

if.then102:                                       ; preds = %for.body96
  %69 = load i32, ptr %count, align 4, !tbaa !5
  %inc103 = add nsw i32 %69, 1
  store i32 %inc103, ptr %count, align 4, !tbaa !5
  br label %if.end104

if.end104:                                        ; preds = %if.then102, %for.body96
  %70 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom105 = sext i32 %70 to i64
  %arrayidx106 = getelementptr inbounds [1000 x i32], ptr %h, i64 0, i64 %idxprom105
  %71 = load i32, ptr %arrayidx106, align 4, !tbaa !5
  %72 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom107 = sext i32 %72 to i64
  %arrayidx108 = getelementptr inbounds [1000 x i32], ptr %h, i64 0, i64 %idxprom107
  %73 = load i32, ptr %arrayidx108, align 4, !tbaa !5
  %cmp109 = icmp sgt i32 %71, %73
  br i1 %cmp109, label %if.then110, label %if.end112

if.then110:                                       ; preds = %if.end104
  %74 = load i32, ptr %dount, align 4, !tbaa !5
  %inc111 = add nsw i32 %74, 1
  store i32 %inc111, ptr %dount, align 4, !tbaa !5
  br label %if.end112

if.end112:                                        ; preds = %if.then110, %if.end104
  br label %for.inc113

for.inc113:                                       ; preds = %if.end112
  %75 = load i32, ptr %j, align 4, !tbaa !5
  %inc114 = add nsw i32 %75, 1
  store i32 %inc114, ptr %j, align 4, !tbaa !5
  br label %for.cond92, !llvm.loop !18

for.end115:                                       ; preds = %for.cond92
  %76 = load i32, ptr %dount, align 4, !tbaa !5
  %cmp116 = icmp ne i32 %76, 0
  br i1 %cmp116, label %land.lhs.true117, label %if.end137

land.lhs.true117:                                 ; preds = %for.end115
  %77 = load i32, ptr %count, align 4, !tbaa !5
  %78 = load i32, ptr %len, align 4, !tbaa !5
  %79 = load i32, ptr %n, align 4, !tbaa !5
  %sub118 = sub nsw i32 %78, %79
  %add119 = add nsw i32 %sub118, 1
  %cmp120 = icmp eq i32 %77, %add119
  br i1 %cmp120, label %if.then121, label %if.end137

if.then121:                                       ; preds = %land.lhs.true117
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond122

for.cond122:                                      ; preds = %for.inc130, %if.then121
  %80 = load i32, ptr %j, align 4, !tbaa !5
  %81 = load i32, ptr %n, align 4, !tbaa !5
  %cmp123 = icmp slt i32 %80, %81
  br i1 %cmp123, label %for.body124, label %for.end132

for.body124:                                      ; preds = %for.cond122
  %82 = load i32, ptr %j, align 4, !tbaa !5
  %83 = load i32, ptr %i, align 4, !tbaa !5
  %add125 = add nsw i32 %82, %83
  %idxprom126 = sext i32 %add125 to i64
  %arrayidx127 = getelementptr inbounds [1000 x i8], ptr %z, i64 0, i64 %idxprom126
  %84 = load i8, ptr %arrayidx127, align 1, !tbaa !9
  %85 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom128 = sext i32 %85 to i64
  %arrayidx129 = getelementptr inbounds [20 x i8], ptr %x, i64 0, i64 %idxprom128
  store i8 %84, ptr %arrayidx129, align 1, !tbaa !9
  br label %for.inc130

for.inc130:                                       ; preds = %for.body124
  %86 = load i32, ptr %j, align 4, !tbaa !5
  %inc131 = add nsw i32 %86, 1
  store i32 %inc131, ptr %j, align 4, !tbaa !5
  br label %for.cond122, !llvm.loop !19

for.end132:                                       ; preds = %for.cond122
  %87 = load i32, ptr %n, align 4, !tbaa !5
  %idxprom133 = sext i32 %87 to i64
  %arrayidx134 = getelementptr inbounds [20 x i8], ptr %x, i64 0, i64 %idxprom133
  store i8 0, ptr %arrayidx134, align 1, !tbaa !9
  %arraydecay135 = getelementptr inbounds [20 x i8], ptr %x, i64 0, i64 0
  %call136 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, ptr noundef %arraydecay135)
  br label %if.end137

if.end137:                                        ; preds = %for.end132, %land.lhs.true117, %for.end115
  br label %for.inc138

for.inc138:                                       ; preds = %if.end137
  %88 = load i32, ptr %i, align 4, !tbaa !5
  %inc139 = add nsw i32 %88, 1
  store i32 %inc139, ptr %i, align 4, !tbaa !5
  br label %for.cond87, !llvm.loop !20

for.end140:                                       ; preds = %for.cond87
  %89 = load i32, ptr %m, align 4, !tbaa !5
  %cmp141 = icmp eq i32 %89, 0
  br i1 %cmp141, label %if.then142, label %if.end144

if.then142:                                       ; preds = %for.end140
  %call143 = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  br label %if.end144

if.end144:                                        ; preds = %if.then142, %for.end140
  call void @llvm.lifetime.end.p0(i64 4, ptr %m) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %dount) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %count) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %p) #4
  call void @llvm.lifetime.end.p0(i64 4000, ptr %h) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %l) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.end.p0(i64 20, ptr %x) #4
  call void @llvm.lifetime.end.p0(i64 1000, ptr %z) #4
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) #2

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #3

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { nounwind willreturn memory(read) }

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
!9 = !{!7, !7, i64 0}
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = distinct !{!13, !11, !12}
!14 = distinct !{!14, !11, !12}
!15 = distinct !{!15, !11, !12}
!16 = distinct !{!16, !11, !12}
!17 = distinct !{!17, !11, !12}
!18 = distinct !{!18, !11, !12}
!19 = distinct !{!19, !11, !12}
!20 = distinct !{!20, !11, !12}
