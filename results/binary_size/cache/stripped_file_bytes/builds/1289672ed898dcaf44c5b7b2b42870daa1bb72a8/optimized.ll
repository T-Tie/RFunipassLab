; ModuleID = '/tmp/tmpc8lfmidu.cpp'
source_filename = "/tmp/tmpc8lfmidu.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [6 x i8] c"%d,%d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%d+%d\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"No\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %n = alloca i32, align 4
  %m = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %e = alloca i32, align 4
  %a = alloca i32, align 4
  %sz = alloca [8 x [8 x i32]], align 16
  %td = alloca [8 x [8 x i32]], align 16
  %zd = alloca [8 x i32], align 16
  %bj = alloca [8 x [8 x i32]], align 16
  %hd = alloca [8 x i32], align 16
  %cleanup.dest.slot = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %m) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %e) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %a) #3
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %n, ptr noundef %m)
  call void @llvm.lifetime.start.p0(i64 256, ptr %sz) #3
  call void @llvm.lifetime.start.p0(i64 256, ptr %td) #3
  call void @llvm.lifetime.start.p0(i64 32, ptr %zd) #3
  call void @llvm.lifetime.start.p0(i64 256, ptr %bj) #3
  call void @llvm.lifetime.start.p0(i64 32, ptr %hd) #3
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc23, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end25

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, ptr %j, align 4, !tbaa !5
  %3 = load i32, ptr %m, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %4 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [8 x [8 x i32]], ptr %sz, i64 0, i64 %idxprom
  %5 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom4 = sext i32 %5 to i64
  %arrayidx5 = getelementptr inbounds [8 x i32], ptr %arrayidx, i64 0, i64 %idxprom4
  %call6 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.1, ptr noundef %arrayidx5)
  %6 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom7 = sext i32 %6 to i64
  %arrayidx8 = getelementptr inbounds [8 x [8 x i32]], ptr %sz, i64 0, i64 %idxprom7
  %7 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom9 = sext i32 %7 to i64
  %arrayidx10 = getelementptr inbounds [8 x i32], ptr %arrayidx8, i64 0, i64 %idxprom9
  %8 = load i32, ptr %arrayidx10, align 4, !tbaa !5
  %9 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom11 = sext i32 %9 to i64
  %arrayidx12 = getelementptr inbounds [8 x [8 x i32]], ptr %td, i64 0, i64 %idxprom11
  %10 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom13 = sext i32 %10 to i64
  %arrayidx14 = getelementptr inbounds [8 x i32], ptr %arrayidx12, i64 0, i64 %idxprom13
  store i32 %8, ptr %arrayidx14, align 4, !tbaa !5
  %11 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom15 = sext i32 %11 to i64
  %arrayidx16 = getelementptr inbounds [8 x [8 x i32]], ptr %sz, i64 0, i64 %idxprom15
  %12 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom17 = sext i32 %12 to i64
  %arrayidx18 = getelementptr inbounds [8 x i32], ptr %arrayidx16, i64 0, i64 %idxprom17
  %13 = load i32, ptr %arrayidx18, align 4, !tbaa !5
  %14 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom19 = sext i32 %14 to i64
  %arrayidx20 = getelementptr inbounds [8 x [8 x i32]], ptr %bj, i64 0, i64 %idxprom19
  %15 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom21 = sext i32 %15 to i64
  %arrayidx22 = getelementptr inbounds [8 x i32], ptr %arrayidx20, i64 0, i64 %idxprom21
  store i32 %13, ptr %arrayidx22, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %16 = load i32, ptr %j, align 4, !tbaa !5
  %inc = add nsw i32 %16, 1
  store i32 %inc, ptr %j, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !9

for.end:                                          ; preds = %for.cond1
  br label %for.inc23

for.inc23:                                        ; preds = %for.end
  %17 = load i32, ptr %i, align 4, !tbaa !5
  %inc24 = add nsw i32 %17, 1
  store i32 %inc24, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !12

for.end25:                                        ; preds = %for.cond
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond26

for.cond26:                                       ; preds = %for.inc53, %for.end25
  %18 = load i32, ptr %i, align 4, !tbaa !5
  %19 = load i32, ptr %n, align 4, !tbaa !5
  %cmp27 = icmp slt i32 %18, %19
  br i1 %cmp27, label %for.body28, label %for.end55

for.body28:                                       ; preds = %for.cond26
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond29

for.cond29:                                       ; preds = %for.inc50, %for.body28
  %20 = load i32, ptr %j, align 4, !tbaa !5
  %21 = load i32, ptr %m, align 4, !tbaa !5
  %cmp30 = icmp slt i32 %20, %21
  br i1 %cmp30, label %for.body31, label %for.end52

for.body31:                                       ; preds = %for.cond29
  %22 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom32 = sext i32 %22 to i64
  %arrayidx33 = getelementptr inbounds [8 x [8 x i32]], ptr %sz, i64 0, i64 %idxprom32
  %23 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom34 = sext i32 %23 to i64
  %arrayidx35 = getelementptr inbounds [8 x i32], ptr %arrayidx33, i64 0, i64 %idxprom34
  %24 = load i32, ptr %arrayidx35, align 4, !tbaa !5
  %25 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom36 = sext i32 %25 to i64
  %arrayidx37 = getelementptr inbounds [8 x [8 x i32]], ptr %sz, i64 0, i64 %idxprom36
  %26 = load i32, ptr %j, align 4, !tbaa !5
  %add = add nsw i32 %26, 1
  %idxprom38 = sext i32 %add to i64
  %arrayidx39 = getelementptr inbounds [8 x i32], ptr %arrayidx37, i64 0, i64 %idxprom38
  %27 = load i32, ptr %arrayidx39, align 4, !tbaa !5
  %cmp40 = icmp sgt i32 %24, %27
  br i1 %cmp40, label %if.then, label %if.end

if.then:                                          ; preds = %for.body31
  %28 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom41 = sext i32 %28 to i64
  %arrayidx42 = getelementptr inbounds [8 x [8 x i32]], ptr %sz, i64 0, i64 %idxprom41
  %29 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom43 = sext i32 %29 to i64
  %arrayidx44 = getelementptr inbounds [8 x i32], ptr %arrayidx42, i64 0, i64 %idxprom43
  %30 = load i32, ptr %arrayidx44, align 4, !tbaa !5
  %31 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom45 = sext i32 %31 to i64
  %arrayidx46 = getelementptr inbounds [8 x [8 x i32]], ptr %sz, i64 0, i64 %idxprom45
  %32 = load i32, ptr %j, align 4, !tbaa !5
  %add47 = add nsw i32 %32, 1
  %idxprom48 = sext i32 %add47 to i64
  %arrayidx49 = getelementptr inbounds [8 x i32], ptr %arrayidx46, i64 0, i64 %idxprom48
  store i32 %30, ptr %arrayidx49, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body31
  br label %for.inc50

for.inc50:                                        ; preds = %if.end
  %33 = load i32, ptr %j, align 4, !tbaa !5
  %inc51 = add nsw i32 %33, 1
  store i32 %inc51, ptr %j, align 4, !tbaa !5
  br label %for.cond29, !llvm.loop !13

for.end52:                                        ; preds = %for.cond29
  br label %for.inc53

for.inc53:                                        ; preds = %for.end52
  %34 = load i32, ptr %i, align 4, !tbaa !5
  %inc54 = add nsw i32 %34, 1
  store i32 %inc54, ptr %i, align 4, !tbaa !5
  br label %for.cond26, !llvm.loop !14

for.end55:                                        ; preds = %for.cond26
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond56

for.cond56:                                       ; preds = %for.inc78, %for.end55
  %35 = load i32, ptr %i, align 4, !tbaa !5
  %36 = load i32, ptr %n, align 4, !tbaa !5
  %cmp57 = icmp slt i32 %35, %36
  br i1 %cmp57, label %for.body58, label %for.end80

for.body58:                                       ; preds = %for.cond56
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond59

for.cond59:                                       ; preds = %for.inc75, %for.body58
  %37 = load i32, ptr %j, align 4, !tbaa !5
  %38 = load i32, ptr %m, align 4, !tbaa !5
  %cmp60 = icmp slt i32 %37, %38
  br i1 %cmp60, label %for.body61, label %for.end77

for.body61:                                       ; preds = %for.cond59
  %39 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom62 = sext i32 %39 to i64
  %arrayidx63 = getelementptr inbounds [8 x [8 x i32]], ptr %td, i64 0, i64 %idxprom62
  %40 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom64 = sext i32 %40 to i64
  %arrayidx65 = getelementptr inbounds [8 x i32], ptr %arrayidx63, i64 0, i64 %idxprom64
  %41 = load i32, ptr %arrayidx65, align 4, !tbaa !5
  %42 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom66 = sext i32 %42 to i64
  %arrayidx67 = getelementptr inbounds [8 x [8 x i32]], ptr %sz, i64 0, i64 %idxprom66
  %43 = load i32, ptr %m, align 4, !tbaa !5
  %sub = sub nsw i32 %43, 1
  %idxprom68 = sext i32 %sub to i64
  %arrayidx69 = getelementptr inbounds [8 x i32], ptr %arrayidx67, i64 0, i64 %idxprom68
  %44 = load i32, ptr %arrayidx69, align 4, !tbaa !5
  %cmp70 = icmp eq i32 %41, %44
  br i1 %cmp70, label %if.then71, label %if.end74

if.then71:                                        ; preds = %for.body61
  %45 = load i32, ptr %j, align 4, !tbaa !5
  %46 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom72 = sext i32 %46 to i64
  %arrayidx73 = getelementptr inbounds [8 x i32], ptr %zd, i64 0, i64 %idxprom72
  store i32 %45, ptr %arrayidx73, align 4, !tbaa !5
  br label %if.end74

if.end74:                                         ; preds = %if.then71, %for.body61
  br label %for.inc75

for.inc75:                                        ; preds = %if.end74
  %47 = load i32, ptr %j, align 4, !tbaa !5
  %inc76 = add nsw i32 %47, 1
  store i32 %inc76, ptr %j, align 4, !tbaa !5
  br label %for.cond59, !llvm.loop !15

for.end77:                                        ; preds = %for.cond59
  br label %for.inc78

for.inc78:                                        ; preds = %for.end77
  %48 = load i32, ptr %i, align 4, !tbaa !5
  %inc79 = add nsw i32 %48, 1
  store i32 %inc79, ptr %i, align 4, !tbaa !5
  br label %for.cond56, !llvm.loop !16

for.end80:                                        ; preds = %for.cond56
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond81

for.cond81:                                       ; preds = %for.inc111, %for.end80
  %49 = load i32, ptr %j, align 4, !tbaa !5
  %50 = load i32, ptr %m, align 4, !tbaa !5
  %cmp82 = icmp slt i32 %49, %50
  br i1 %cmp82, label %for.body83, label %for.end113

for.body83:                                       ; preds = %for.cond81
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond84

for.cond84:                                       ; preds = %for.inc108, %for.body83
  %51 = load i32, ptr %i, align 4, !tbaa !5
  %52 = load i32, ptr %n, align 4, !tbaa !5
  %cmp85 = icmp slt i32 %51, %52
  br i1 %cmp85, label %for.body86, label %for.end110

for.body86:                                       ; preds = %for.cond84
  %53 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom87 = sext i32 %53 to i64
  %arrayidx88 = getelementptr inbounds [8 x [8 x i32]], ptr %bj, i64 0, i64 %idxprom87
  %54 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom89 = sext i32 %54 to i64
  %arrayidx90 = getelementptr inbounds [8 x i32], ptr %arrayidx88, i64 0, i64 %idxprom89
  %55 = load i32, ptr %arrayidx90, align 4, !tbaa !5
  %56 = load i32, ptr %i, align 4, !tbaa !5
  %add91 = add nsw i32 %56, 1
  %idxprom92 = sext i32 %add91 to i64
  %arrayidx93 = getelementptr inbounds [8 x [8 x i32]], ptr %bj, i64 0, i64 %idxprom92
  %57 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom94 = sext i32 %57 to i64
  %arrayidx95 = getelementptr inbounds [8 x i32], ptr %arrayidx93, i64 0, i64 %idxprom94
  %58 = load i32, ptr %arrayidx95, align 4, !tbaa !5
  %cmp96 = icmp slt i32 %55, %58
  br i1 %cmp96, label %if.then97, label %if.end107

if.then97:                                        ; preds = %for.body86
  %59 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom98 = sext i32 %59 to i64
  %arrayidx99 = getelementptr inbounds [8 x [8 x i32]], ptr %bj, i64 0, i64 %idxprom98
  %60 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom100 = sext i32 %60 to i64
  %arrayidx101 = getelementptr inbounds [8 x i32], ptr %arrayidx99, i64 0, i64 %idxprom100
  %61 = load i32, ptr %arrayidx101, align 4, !tbaa !5
  %62 = load i32, ptr %i, align 4, !tbaa !5
  %add102 = add nsw i32 %62, 1
  %idxprom103 = sext i32 %add102 to i64
  %arrayidx104 = getelementptr inbounds [8 x [8 x i32]], ptr %bj, i64 0, i64 %idxprom103
  %63 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom105 = sext i32 %63 to i64
  %arrayidx106 = getelementptr inbounds [8 x i32], ptr %arrayidx104, i64 0, i64 %idxprom105
  store i32 %61, ptr %arrayidx106, align 4, !tbaa !5
  br label %if.end107

if.end107:                                        ; preds = %if.then97, %for.body86
  br label %for.inc108

for.inc108:                                       ; preds = %if.end107
  %64 = load i32, ptr %i, align 4, !tbaa !5
  %inc109 = add nsw i32 %64, 1
  store i32 %inc109, ptr %i, align 4, !tbaa !5
  br label %for.cond84, !llvm.loop !17

for.end110:                                       ; preds = %for.cond84
  br label %for.inc111

for.inc111:                                       ; preds = %for.end110
  %65 = load i32, ptr %j, align 4, !tbaa !5
  %inc112 = add nsw i32 %65, 1
  store i32 %inc112, ptr %j, align 4, !tbaa !5
  br label %for.cond81, !llvm.loop !18

for.end113:                                       ; preds = %for.cond81
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond114

for.cond114:                                      ; preds = %for.inc137, %for.end113
  %66 = load i32, ptr %j, align 4, !tbaa !5
  %67 = load i32, ptr %m, align 4, !tbaa !5
  %cmp115 = icmp slt i32 %66, %67
  br i1 %cmp115, label %for.body116, label %for.end139

for.body116:                                      ; preds = %for.cond114
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond117

for.cond117:                                      ; preds = %for.inc134, %for.body116
  %68 = load i32, ptr %i, align 4, !tbaa !5
  %69 = load i32, ptr %n, align 4, !tbaa !5
  %cmp118 = icmp slt i32 %68, %69
  br i1 %cmp118, label %for.body119, label %for.end136

for.body119:                                      ; preds = %for.cond117
  %70 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom120 = sext i32 %70 to i64
  %arrayidx121 = getelementptr inbounds [8 x [8 x i32]], ptr %td, i64 0, i64 %idxprom120
  %71 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom122 = sext i32 %71 to i64
  %arrayidx123 = getelementptr inbounds [8 x i32], ptr %arrayidx121, i64 0, i64 %idxprom122
  %72 = load i32, ptr %arrayidx123, align 4, !tbaa !5
  %73 = load i32, ptr %n, align 4, !tbaa !5
  %sub124 = sub nsw i32 %73, 1
  %idxprom125 = sext i32 %sub124 to i64
  %arrayidx126 = getelementptr inbounds [8 x [8 x i32]], ptr %bj, i64 0, i64 %idxprom125
  %74 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom127 = sext i32 %74 to i64
  %arrayidx128 = getelementptr inbounds [8 x i32], ptr %arrayidx126, i64 0, i64 %idxprom127
  %75 = load i32, ptr %arrayidx128, align 4, !tbaa !5
  %cmp129 = icmp eq i32 %72, %75
  br i1 %cmp129, label %if.then130, label %if.end133

if.then130:                                       ; preds = %for.body119
  %76 = load i32, ptr %i, align 4, !tbaa !5
  %77 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom131 = sext i32 %77 to i64
  %arrayidx132 = getelementptr inbounds [8 x i32], ptr %hd, i64 0, i64 %idxprom131
  store i32 %76, ptr %arrayidx132, align 4, !tbaa !5
  br label %if.end133

if.end133:                                        ; preds = %if.then130, %for.body119
  br label %for.inc134

for.inc134:                                       ; preds = %if.end133
  %78 = load i32, ptr %i, align 4, !tbaa !5
  %inc135 = add nsw i32 %78, 1
  store i32 %inc135, ptr %i, align 4, !tbaa !5
  br label %for.cond117, !llvm.loop !19

for.end136:                                       ; preds = %for.cond117
  br label %for.inc137

for.inc137:                                       ; preds = %for.end136
  %79 = load i32, ptr %j, align 4, !tbaa !5
  %inc138 = add nsw i32 %79, 1
  store i32 %inc138, ptr %j, align 4, !tbaa !5
  br label %for.cond114, !llvm.loop !20

for.end139:                                       ; preds = %for.cond114
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond140

for.cond140:                                      ; preds = %for.inc150, %for.end139
  %80 = load i32, ptr %i, align 4, !tbaa !5
  %81 = load i32, ptr %n, align 4, !tbaa !5
  %cmp141 = icmp slt i32 %80, %81
  br i1 %cmp141, label %for.body142, label %for.end152

for.body142:                                      ; preds = %for.cond140
  %82 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom143 = sext i32 %82 to i64
  %arrayidx144 = getelementptr inbounds [8 x i32], ptr %zd, i64 0, i64 %idxprom143
  %83 = load i32, ptr %arrayidx144, align 4, !tbaa !5
  store i32 %83, ptr %a, align 4, !tbaa !5
  %84 = load i32, ptr %a, align 4, !tbaa !5
  %idxprom145 = sext i32 %84 to i64
  %arrayidx146 = getelementptr inbounds [8 x i32], ptr %hd, i64 0, i64 %idxprom145
  %85 = load i32, ptr %arrayidx146, align 4, !tbaa !5
  %86 = load i32, ptr %i, align 4, !tbaa !5
  %cmp147 = icmp eq i32 %85, %86
  br i1 %cmp147, label %if.then148, label %if.else

if.then148:                                       ; preds = %for.body142
  %87 = load i32, ptr %i, align 4, !tbaa !5
  %88 = load i32, ptr %a, align 4, !tbaa !5
  %call149 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %87, i32 noundef %88)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else:                                          ; preds = %for.body142
  br label %for.inc150

for.inc150:                                       ; preds = %if.else
  %89 = load i32, ptr %i, align 4, !tbaa !5
  %inc151 = add nsw i32 %89, 1
  store i32 %inc151, ptr %i, align 4, !tbaa !5
  br label %for.cond140, !llvm.loop !21

for.end152:                                       ; preds = %for.cond140
  %call153 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end152, %if.then148
  call void @llvm.lifetime.end.p0(i64 32, ptr %hd) #3
  call void @llvm.lifetime.end.p0(i64 256, ptr %bj) #3
  call void @llvm.lifetime.end.p0(i64 32, ptr %zd) #3
  call void @llvm.lifetime.end.p0(i64 256, ptr %td) #3
  call void @llvm.lifetime.end.p0(i64 256, ptr %sz) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %a) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %e) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %m) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #3
  %90 = load i32, ptr %retval, align 4
  ret i32 %90
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) #2

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

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
