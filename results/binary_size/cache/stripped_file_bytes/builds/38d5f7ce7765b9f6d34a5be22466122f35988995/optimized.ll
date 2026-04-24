; ModuleID = '/tmp/tmpmegoetrv.cpp'
source_filename = "/tmp/tmpmegoetrv.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"%d %d %d\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"YES\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"NO\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %year = alloca [200 x i32], align 16
  %mon1 = alloca [200 x i32], align 16
  %mon2 = alloca [200 x i32], align 16
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 800, ptr %year) #3
  call void @llvm.lifetime.start.p0(i64 800, ptr %mon1) #3
  call void @llvm.lifetime.start.p0(i64 800, ptr %mon2) #3
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %n)
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp sle i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [200 x i32], ptr %year, i64 0, i64 %idxprom
  %3 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom1 = sext i32 %3 to i64
  %arrayidx2 = getelementptr inbounds [200 x i32], ptr %mon1, i64 0, i64 %idxprom1
  %4 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom3 = sext i32 %4 to i64
  %arrayidx4 = getelementptr inbounds [200 x i32], ptr %mon2, i64 0, i64 %idxprom3
  %call5 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.1, ptr noundef %arrayidx, ptr noundef %arrayidx2, ptr noundef %arrayidx4)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %5, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc395, %for.end
  %6 = load i32, ptr %i, align 4, !tbaa !5
  %7 = load i32, ptr %n, align 4, !tbaa !5
  %cmp7 = icmp sle i32 %6, %7
  br i1 %cmp7, label %for.body8, label %for.end397

for.body8:                                        ; preds = %for.cond6
  %8 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom9 = sext i32 %8 to i64
  %arrayidx10 = getelementptr inbounds [200 x i32], ptr %year, i64 0, i64 %idxprom9
  %9 = load i32, ptr %arrayidx10, align 4, !tbaa !5
  %rem = srem i32 %9, 100
  %cmp11 = icmp ne i32 %rem, 0
  br i1 %cmp11, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %for.body8
  %10 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom12 = sext i32 %10 to i64
  %arrayidx13 = getelementptr inbounds [200 x i32], ptr %year, i64 0, i64 %idxprom12
  %11 = load i32, ptr %arrayidx13, align 4, !tbaa !5
  %rem14 = srem i32 %11, 4
  %cmp15 = icmp eq i32 %rem14, 0
  br i1 %cmp15, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %for.body8
  %12 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom16 = sext i32 %12 to i64
  %arrayidx17 = getelementptr inbounds [200 x i32], ptr %year, i64 0, i64 %idxprom16
  %13 = load i32, ptr %arrayidx17, align 4, !tbaa !5
  %rem18 = srem i32 %13, 400
  %cmp19 = icmp eq i32 %rem18, 0
  br i1 %cmp19, label %if.then, label %if.else205

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  %14 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom20 = sext i32 %14 to i64
  %arrayidx21 = getelementptr inbounds [200 x i32], ptr %mon1, i64 0, i64 %idxprom20
  %15 = load i32, ptr %arrayidx21, align 4, !tbaa !5
  %cmp22 = icmp eq i32 %15, 1
  br i1 %cmp22, label %if.then23, label %if.end

if.then23:                                        ; preds = %if.then
  %16 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom24 = sext i32 %16 to i64
  %arrayidx25 = getelementptr inbounds [200 x i32], ptr %mon1, i64 0, i64 %idxprom24
  store i32 1, ptr %arrayidx25, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then23, %if.then
  %17 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom26 = sext i32 %17 to i64
  %arrayidx27 = getelementptr inbounds [200 x i32], ptr %mon1, i64 0, i64 %idxprom26
  %18 = load i32, ptr %arrayidx27, align 4, !tbaa !5
  %cmp28 = icmp eq i32 %18, 2
  br i1 %cmp28, label %if.then29, label %if.end32

if.then29:                                        ; preds = %if.end
  %19 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom30 = sext i32 %19 to i64
  %arrayidx31 = getelementptr inbounds [200 x i32], ptr %mon1, i64 0, i64 %idxprom30
  store i32 32, ptr %arrayidx31, align 4, !tbaa !5
  br label %if.end32

if.end32:                                         ; preds = %if.then29, %if.end
  %20 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom33 = sext i32 %20 to i64
  %arrayidx34 = getelementptr inbounds [200 x i32], ptr %mon1, i64 0, i64 %idxprom33
  %21 = load i32, ptr %arrayidx34, align 4, !tbaa !5
  %cmp35 = icmp eq i32 %21, 3
  br i1 %cmp35, label %if.then36, label %if.end39

if.then36:                                        ; preds = %if.end32
  %22 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom37 = sext i32 %22 to i64
  %arrayidx38 = getelementptr inbounds [200 x i32], ptr %mon1, i64 0, i64 %idxprom37
  store i32 61, ptr %arrayidx38, align 4, !tbaa !5
  br label %if.end39

if.end39:                                         ; preds = %if.then36, %if.end32
  %23 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom40 = sext i32 %23 to i64
  %arrayidx41 = getelementptr inbounds [200 x i32], ptr %mon1, i64 0, i64 %idxprom40
  %24 = load i32, ptr %arrayidx41, align 4, !tbaa !5
  %cmp42 = icmp eq i32 %24, 4
  br i1 %cmp42, label %if.then43, label %if.end46

if.then43:                                        ; preds = %if.end39
  %25 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom44 = sext i32 %25 to i64
  %arrayidx45 = getelementptr inbounds [200 x i32], ptr %mon1, i64 0, i64 %idxprom44
  store i32 92, ptr %arrayidx45, align 4, !tbaa !5
  br label %if.end46

if.end46:                                         ; preds = %if.then43, %if.end39
  %26 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom47 = sext i32 %26 to i64
  %arrayidx48 = getelementptr inbounds [200 x i32], ptr %mon1, i64 0, i64 %idxprom47
  %27 = load i32, ptr %arrayidx48, align 4, !tbaa !5
  %cmp49 = icmp eq i32 %27, 5
  br i1 %cmp49, label %if.then50, label %if.end53

if.then50:                                        ; preds = %if.end46
  %28 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom51 = sext i32 %28 to i64
  %arrayidx52 = getelementptr inbounds [200 x i32], ptr %mon1, i64 0, i64 %idxprom51
  store i32 122, ptr %arrayidx52, align 4, !tbaa !5
  br label %if.end53

if.end53:                                         ; preds = %if.then50, %if.end46
  %29 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom54 = sext i32 %29 to i64
  %arrayidx55 = getelementptr inbounds [200 x i32], ptr %mon1, i64 0, i64 %idxprom54
  %30 = load i32, ptr %arrayidx55, align 4, !tbaa !5
  %cmp56 = icmp eq i32 %30, 6
  br i1 %cmp56, label %if.then57, label %if.end60

if.then57:                                        ; preds = %if.end53
  %31 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom58 = sext i32 %31 to i64
  %arrayidx59 = getelementptr inbounds [200 x i32], ptr %mon1, i64 0, i64 %idxprom58
  store i32 153, ptr %arrayidx59, align 4, !tbaa !5
  br label %if.end60

if.end60:                                         ; preds = %if.then57, %if.end53
  %32 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom61 = sext i32 %32 to i64
  %arrayidx62 = getelementptr inbounds [200 x i32], ptr %mon1, i64 0, i64 %idxprom61
  %33 = load i32, ptr %arrayidx62, align 4, !tbaa !5
  %cmp63 = icmp eq i32 %33, 7
  br i1 %cmp63, label %if.then64, label %if.end67

if.then64:                                        ; preds = %if.end60
  %34 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom65 = sext i32 %34 to i64
  %arrayidx66 = getelementptr inbounds [200 x i32], ptr %mon1, i64 0, i64 %idxprom65
  store i32 183, ptr %arrayidx66, align 4, !tbaa !5
  br label %if.end67

if.end67:                                         ; preds = %if.then64, %if.end60
  %35 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom68 = sext i32 %35 to i64
  %arrayidx69 = getelementptr inbounds [200 x i32], ptr %mon1, i64 0, i64 %idxprom68
  %36 = load i32, ptr %arrayidx69, align 4, !tbaa !5
  %cmp70 = icmp eq i32 %36, 8
  br i1 %cmp70, label %if.then71, label %if.end74

if.then71:                                        ; preds = %if.end67
  %37 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom72 = sext i32 %37 to i64
  %arrayidx73 = getelementptr inbounds [200 x i32], ptr %mon1, i64 0, i64 %idxprom72
  store i32 214, ptr %arrayidx73, align 4, !tbaa !5
  br label %if.end74

if.end74:                                         ; preds = %if.then71, %if.end67
  %38 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom75 = sext i32 %38 to i64
  %arrayidx76 = getelementptr inbounds [200 x i32], ptr %mon1, i64 0, i64 %idxprom75
  %39 = load i32, ptr %arrayidx76, align 4, !tbaa !5
  %cmp77 = icmp eq i32 %39, 9
  br i1 %cmp77, label %if.then78, label %if.end81

if.then78:                                        ; preds = %if.end74
  %40 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom79 = sext i32 %40 to i64
  %arrayidx80 = getelementptr inbounds [200 x i32], ptr %mon1, i64 0, i64 %idxprom79
  store i32 245, ptr %arrayidx80, align 4, !tbaa !5
  br label %if.end81

if.end81:                                         ; preds = %if.then78, %if.end74
  %41 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom82 = sext i32 %41 to i64
  %arrayidx83 = getelementptr inbounds [200 x i32], ptr %mon1, i64 0, i64 %idxprom82
  %42 = load i32, ptr %arrayidx83, align 4, !tbaa !5
  %cmp84 = icmp eq i32 %42, 10
  br i1 %cmp84, label %if.then85, label %if.end88

if.then85:                                        ; preds = %if.end81
  %43 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom86 = sext i32 %43 to i64
  %arrayidx87 = getelementptr inbounds [200 x i32], ptr %mon1, i64 0, i64 %idxprom86
  store i32 275, ptr %arrayidx87, align 4, !tbaa !5
  br label %if.end88

if.end88:                                         ; preds = %if.then85, %if.end81
  %44 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom89 = sext i32 %44 to i64
  %arrayidx90 = getelementptr inbounds [200 x i32], ptr %mon1, i64 0, i64 %idxprom89
  %45 = load i32, ptr %arrayidx90, align 4, !tbaa !5
  %cmp91 = icmp eq i32 %45, 11
  br i1 %cmp91, label %if.then92, label %if.end95

if.then92:                                        ; preds = %if.end88
  %46 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom93 = sext i32 %46 to i64
  %arrayidx94 = getelementptr inbounds [200 x i32], ptr %mon1, i64 0, i64 %idxprom93
  store i32 306, ptr %arrayidx94, align 4, !tbaa !5
  br label %if.end95

if.end95:                                         ; preds = %if.then92, %if.end88
  %47 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom96 = sext i32 %47 to i64
  %arrayidx97 = getelementptr inbounds [200 x i32], ptr %mon1, i64 0, i64 %idxprom96
  %48 = load i32, ptr %arrayidx97, align 4, !tbaa !5
  %cmp98 = icmp eq i32 %48, 12
  br i1 %cmp98, label %if.then99, label %if.end102

if.then99:                                        ; preds = %if.end95
  %49 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom100 = sext i32 %49 to i64
  %arrayidx101 = getelementptr inbounds [200 x i32], ptr %mon1, i64 0, i64 %idxprom100
  store i32 336, ptr %arrayidx101, align 4, !tbaa !5
  br label %if.end102

if.end102:                                        ; preds = %if.then99, %if.end95
  %50 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom103 = sext i32 %50 to i64
  %arrayidx104 = getelementptr inbounds [200 x i32], ptr %mon2, i64 0, i64 %idxprom103
  %51 = load i32, ptr %arrayidx104, align 4, !tbaa !5
  %cmp105 = icmp eq i32 %51, 1
  br i1 %cmp105, label %if.then106, label %if.end109

if.then106:                                       ; preds = %if.end102
  %52 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom107 = sext i32 %52 to i64
  %arrayidx108 = getelementptr inbounds [200 x i32], ptr %mon2, i64 0, i64 %idxprom107
  store i32 1, ptr %arrayidx108, align 4, !tbaa !5
  br label %if.end109

if.end109:                                        ; preds = %if.then106, %if.end102
  %53 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom110 = sext i32 %53 to i64
  %arrayidx111 = getelementptr inbounds [200 x i32], ptr %mon2, i64 0, i64 %idxprom110
  %54 = load i32, ptr %arrayidx111, align 4, !tbaa !5
  %cmp112 = icmp eq i32 %54, 2
  br i1 %cmp112, label %if.then113, label %if.end116

if.then113:                                       ; preds = %if.end109
  %55 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom114 = sext i32 %55 to i64
  %arrayidx115 = getelementptr inbounds [200 x i32], ptr %mon2, i64 0, i64 %idxprom114
  store i32 32, ptr %arrayidx115, align 4, !tbaa !5
  br label %if.end116

if.end116:                                        ; preds = %if.then113, %if.end109
  %56 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom117 = sext i32 %56 to i64
  %arrayidx118 = getelementptr inbounds [200 x i32], ptr %mon2, i64 0, i64 %idxprom117
  %57 = load i32, ptr %arrayidx118, align 4, !tbaa !5
  %cmp119 = icmp eq i32 %57, 3
  br i1 %cmp119, label %if.then120, label %if.end123

if.then120:                                       ; preds = %if.end116
  %58 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom121 = sext i32 %58 to i64
  %arrayidx122 = getelementptr inbounds [200 x i32], ptr %mon2, i64 0, i64 %idxprom121
  store i32 61, ptr %arrayidx122, align 4, !tbaa !5
  br label %if.end123

if.end123:                                        ; preds = %if.then120, %if.end116
  %59 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom124 = sext i32 %59 to i64
  %arrayidx125 = getelementptr inbounds [200 x i32], ptr %mon2, i64 0, i64 %idxprom124
  %60 = load i32, ptr %arrayidx125, align 4, !tbaa !5
  %cmp126 = icmp eq i32 %60, 4
  br i1 %cmp126, label %if.then127, label %if.end130

if.then127:                                       ; preds = %if.end123
  %61 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom128 = sext i32 %61 to i64
  %arrayidx129 = getelementptr inbounds [200 x i32], ptr %mon2, i64 0, i64 %idxprom128
  store i32 92, ptr %arrayidx129, align 4, !tbaa !5
  br label %if.end130

if.end130:                                        ; preds = %if.then127, %if.end123
  %62 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom131 = sext i32 %62 to i64
  %arrayidx132 = getelementptr inbounds [200 x i32], ptr %mon2, i64 0, i64 %idxprom131
  %63 = load i32, ptr %arrayidx132, align 4, !tbaa !5
  %cmp133 = icmp eq i32 %63, 5
  br i1 %cmp133, label %if.then134, label %if.end137

if.then134:                                       ; preds = %if.end130
  %64 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom135 = sext i32 %64 to i64
  %arrayidx136 = getelementptr inbounds [200 x i32], ptr %mon2, i64 0, i64 %idxprom135
  store i32 122, ptr %arrayidx136, align 4, !tbaa !5
  br label %if.end137

if.end137:                                        ; preds = %if.then134, %if.end130
  %65 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom138 = sext i32 %65 to i64
  %arrayidx139 = getelementptr inbounds [200 x i32], ptr %mon2, i64 0, i64 %idxprom138
  %66 = load i32, ptr %arrayidx139, align 4, !tbaa !5
  %cmp140 = icmp eq i32 %66, 6
  br i1 %cmp140, label %if.then141, label %if.end144

if.then141:                                       ; preds = %if.end137
  %67 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom142 = sext i32 %67 to i64
  %arrayidx143 = getelementptr inbounds [200 x i32], ptr %mon2, i64 0, i64 %idxprom142
  store i32 153, ptr %arrayidx143, align 4, !tbaa !5
  br label %if.end144

if.end144:                                        ; preds = %if.then141, %if.end137
  %68 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom145 = sext i32 %68 to i64
  %arrayidx146 = getelementptr inbounds [200 x i32], ptr %mon2, i64 0, i64 %idxprom145
  %69 = load i32, ptr %arrayidx146, align 4, !tbaa !5
  %cmp147 = icmp eq i32 %69, 7
  br i1 %cmp147, label %if.then148, label %if.end151

if.then148:                                       ; preds = %if.end144
  %70 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom149 = sext i32 %70 to i64
  %arrayidx150 = getelementptr inbounds [200 x i32], ptr %mon2, i64 0, i64 %idxprom149
  store i32 183, ptr %arrayidx150, align 4, !tbaa !5
  br label %if.end151

if.end151:                                        ; preds = %if.then148, %if.end144
  %71 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom152 = sext i32 %71 to i64
  %arrayidx153 = getelementptr inbounds [200 x i32], ptr %mon2, i64 0, i64 %idxprom152
  %72 = load i32, ptr %arrayidx153, align 4, !tbaa !5
  %cmp154 = icmp eq i32 %72, 8
  br i1 %cmp154, label %if.then155, label %if.end158

if.then155:                                       ; preds = %if.end151
  %73 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom156 = sext i32 %73 to i64
  %arrayidx157 = getelementptr inbounds [200 x i32], ptr %mon2, i64 0, i64 %idxprom156
  store i32 214, ptr %arrayidx157, align 4, !tbaa !5
  br label %if.end158

if.end158:                                        ; preds = %if.then155, %if.end151
  %74 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom159 = sext i32 %74 to i64
  %arrayidx160 = getelementptr inbounds [200 x i32], ptr %mon2, i64 0, i64 %idxprom159
  %75 = load i32, ptr %arrayidx160, align 4, !tbaa !5
  %cmp161 = icmp eq i32 %75, 9
  br i1 %cmp161, label %if.then162, label %if.end165

if.then162:                                       ; preds = %if.end158
  %76 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom163 = sext i32 %76 to i64
  %arrayidx164 = getelementptr inbounds [200 x i32], ptr %mon2, i64 0, i64 %idxprom163
  store i32 245, ptr %arrayidx164, align 4, !tbaa !5
  br label %if.end165

if.end165:                                        ; preds = %if.then162, %if.end158
  %77 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom166 = sext i32 %77 to i64
  %arrayidx167 = getelementptr inbounds [200 x i32], ptr %mon2, i64 0, i64 %idxprom166
  %78 = load i32, ptr %arrayidx167, align 4, !tbaa !5
  %cmp168 = icmp eq i32 %78, 10
  br i1 %cmp168, label %if.then169, label %if.end172

if.then169:                                       ; preds = %if.end165
  %79 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom170 = sext i32 %79 to i64
  %arrayidx171 = getelementptr inbounds [200 x i32], ptr %mon2, i64 0, i64 %idxprom170
  store i32 275, ptr %arrayidx171, align 4, !tbaa !5
  br label %if.end172

if.end172:                                        ; preds = %if.then169, %if.end165
  %80 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom173 = sext i32 %80 to i64
  %arrayidx174 = getelementptr inbounds [200 x i32], ptr %mon2, i64 0, i64 %idxprom173
  %81 = load i32, ptr %arrayidx174, align 4, !tbaa !5
  %cmp175 = icmp eq i32 %81, 11
  br i1 %cmp175, label %if.then176, label %if.end179

if.then176:                                       ; preds = %if.end172
  %82 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom177 = sext i32 %82 to i64
  %arrayidx178 = getelementptr inbounds [200 x i32], ptr %mon2, i64 0, i64 %idxprom177
  store i32 306, ptr %arrayidx178, align 4, !tbaa !5
  br label %if.end179

if.end179:                                        ; preds = %if.then176, %if.end172
  %83 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom180 = sext i32 %83 to i64
  %arrayidx181 = getelementptr inbounds [200 x i32], ptr %mon2, i64 0, i64 %idxprom180
  %84 = load i32, ptr %arrayidx181, align 4, !tbaa !5
  %cmp182 = icmp eq i32 %84, 12
  br i1 %cmp182, label %if.then183, label %if.end186

if.then183:                                       ; preds = %if.end179
  %85 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom184 = sext i32 %85 to i64
  %arrayidx185 = getelementptr inbounds [200 x i32], ptr %mon2, i64 0, i64 %idxprom184
  store i32 336, ptr %arrayidx185, align 4, !tbaa !5
  br label %if.end186

if.end186:                                        ; preds = %if.then183, %if.end179
  %86 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom187 = sext i32 %86 to i64
  %arrayidx188 = getelementptr inbounds [200 x i32], ptr %mon2, i64 0, i64 %idxprom187
  %87 = load i32, ptr %arrayidx188, align 4, !tbaa !5
  %88 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom189 = sext i32 %88 to i64
  %arrayidx190 = getelementptr inbounds [200 x i32], ptr %mon1, i64 0, i64 %idxprom189
  %89 = load i32, ptr %arrayidx190, align 4, !tbaa !5
  %sub = sub nsw i32 %87, %89
  %rem191 = srem i32 %sub, 7
  %cmp192 = icmp eq i32 %rem191, 0
  br i1 %cmp192, label %if.then201, label %lor.lhs.false193

lor.lhs.false193:                                 ; preds = %if.end186
  %90 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom194 = sext i32 %90 to i64
  %arrayidx195 = getelementptr inbounds [200 x i32], ptr %mon1, i64 0, i64 %idxprom194
  %91 = load i32, ptr %arrayidx195, align 4, !tbaa !5
  %92 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom196 = sext i32 %92 to i64
  %arrayidx197 = getelementptr inbounds [200 x i32], ptr %mon2, i64 0, i64 %idxprom196
  %93 = load i32, ptr %arrayidx197, align 4, !tbaa !5
  %sub198 = sub nsw i32 %91, %93
  %rem199 = srem i32 %sub198, 7
  %cmp200 = icmp eq i32 %rem199, 0
  br i1 %cmp200, label %if.then201, label %if.else

if.then201:                                       ; preds = %lor.lhs.false193, %if.end186
  %call202 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %if.end204

if.else:                                          ; preds = %lor.lhs.false193
  %call203 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  br label %if.end204

if.end204:                                        ; preds = %if.else, %if.then201
  br label %if.end394

if.else205:                                       ; preds = %lor.lhs.false
  %94 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom206 = sext i32 %94 to i64
  %arrayidx207 = getelementptr inbounds [200 x i32], ptr %mon1, i64 0, i64 %idxprom206
  %95 = load i32, ptr %arrayidx207, align 4, !tbaa !5
  %cmp208 = icmp eq i32 %95, 1
  br i1 %cmp208, label %if.then209, label %if.end212

if.then209:                                       ; preds = %if.else205
  %96 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom210 = sext i32 %96 to i64
  %arrayidx211 = getelementptr inbounds [200 x i32], ptr %mon1, i64 0, i64 %idxprom210
  store i32 1, ptr %arrayidx211, align 4, !tbaa !5
  br label %if.end212

if.end212:                                        ; preds = %if.then209, %if.else205
  %97 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom213 = sext i32 %97 to i64
  %arrayidx214 = getelementptr inbounds [200 x i32], ptr %mon1, i64 0, i64 %idxprom213
  %98 = load i32, ptr %arrayidx214, align 4, !tbaa !5
  %cmp215 = icmp eq i32 %98, 2
  br i1 %cmp215, label %if.then216, label %if.end219

if.then216:                                       ; preds = %if.end212
  %99 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom217 = sext i32 %99 to i64
  %arrayidx218 = getelementptr inbounds [200 x i32], ptr %mon1, i64 0, i64 %idxprom217
  store i32 32, ptr %arrayidx218, align 4, !tbaa !5
  br label %if.end219

if.end219:                                        ; preds = %if.then216, %if.end212
  %100 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom220 = sext i32 %100 to i64
  %arrayidx221 = getelementptr inbounds [200 x i32], ptr %mon1, i64 0, i64 %idxprom220
  %101 = load i32, ptr %arrayidx221, align 4, !tbaa !5
  %cmp222 = icmp eq i32 %101, 3
  br i1 %cmp222, label %if.then223, label %if.end226

if.then223:                                       ; preds = %if.end219
  %102 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom224 = sext i32 %102 to i64
  %arrayidx225 = getelementptr inbounds [200 x i32], ptr %mon1, i64 0, i64 %idxprom224
  store i32 60, ptr %arrayidx225, align 4, !tbaa !5
  br label %if.end226

if.end226:                                        ; preds = %if.then223, %if.end219
  %103 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom227 = sext i32 %103 to i64
  %arrayidx228 = getelementptr inbounds [200 x i32], ptr %mon1, i64 0, i64 %idxprom227
  %104 = load i32, ptr %arrayidx228, align 4, !tbaa !5
  %cmp229 = icmp eq i32 %104, 4
  br i1 %cmp229, label %if.then230, label %if.end233

if.then230:                                       ; preds = %if.end226
  %105 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom231 = sext i32 %105 to i64
  %arrayidx232 = getelementptr inbounds [200 x i32], ptr %mon1, i64 0, i64 %idxprom231
  store i32 91, ptr %arrayidx232, align 4, !tbaa !5
  br label %if.end233

if.end233:                                        ; preds = %if.then230, %if.end226
  %106 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom234 = sext i32 %106 to i64
  %arrayidx235 = getelementptr inbounds [200 x i32], ptr %mon1, i64 0, i64 %idxprom234
  %107 = load i32, ptr %arrayidx235, align 4, !tbaa !5
  %cmp236 = icmp eq i32 %107, 5
  br i1 %cmp236, label %if.then237, label %if.end240

if.then237:                                       ; preds = %if.end233
  %108 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom238 = sext i32 %108 to i64
  %arrayidx239 = getelementptr inbounds [200 x i32], ptr %mon1, i64 0, i64 %idxprom238
  store i32 121, ptr %arrayidx239, align 4, !tbaa !5
  br label %if.end240

if.end240:                                        ; preds = %if.then237, %if.end233
  %109 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom241 = sext i32 %109 to i64
  %arrayidx242 = getelementptr inbounds [200 x i32], ptr %mon1, i64 0, i64 %idxprom241
  %110 = load i32, ptr %arrayidx242, align 4, !tbaa !5
  %cmp243 = icmp eq i32 %110, 6
  br i1 %cmp243, label %if.then244, label %if.end247

if.then244:                                       ; preds = %if.end240
  %111 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom245 = sext i32 %111 to i64
  %arrayidx246 = getelementptr inbounds [200 x i32], ptr %mon1, i64 0, i64 %idxprom245
  store i32 152, ptr %arrayidx246, align 4, !tbaa !5
  br label %if.end247

if.end247:                                        ; preds = %if.then244, %if.end240
  %112 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom248 = sext i32 %112 to i64
  %arrayidx249 = getelementptr inbounds [200 x i32], ptr %mon1, i64 0, i64 %idxprom248
  %113 = load i32, ptr %arrayidx249, align 4, !tbaa !5
  %cmp250 = icmp eq i32 %113, 7
  br i1 %cmp250, label %if.then251, label %if.end254

if.then251:                                       ; preds = %if.end247
  %114 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom252 = sext i32 %114 to i64
  %arrayidx253 = getelementptr inbounds [200 x i32], ptr %mon1, i64 0, i64 %idxprom252
  store i32 182, ptr %arrayidx253, align 4, !tbaa !5
  br label %if.end254

if.end254:                                        ; preds = %if.then251, %if.end247
  %115 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom255 = sext i32 %115 to i64
  %arrayidx256 = getelementptr inbounds [200 x i32], ptr %mon1, i64 0, i64 %idxprom255
  %116 = load i32, ptr %arrayidx256, align 4, !tbaa !5
  %cmp257 = icmp eq i32 %116, 8
  br i1 %cmp257, label %if.then258, label %if.end261

if.then258:                                       ; preds = %if.end254
  %117 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom259 = sext i32 %117 to i64
  %arrayidx260 = getelementptr inbounds [200 x i32], ptr %mon1, i64 0, i64 %idxprom259
  store i32 213, ptr %arrayidx260, align 4, !tbaa !5
  br label %if.end261

if.end261:                                        ; preds = %if.then258, %if.end254
  %118 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom262 = sext i32 %118 to i64
  %arrayidx263 = getelementptr inbounds [200 x i32], ptr %mon1, i64 0, i64 %idxprom262
  %119 = load i32, ptr %arrayidx263, align 4, !tbaa !5
  %cmp264 = icmp eq i32 %119, 9
  br i1 %cmp264, label %if.then265, label %if.end268

if.then265:                                       ; preds = %if.end261
  %120 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom266 = sext i32 %120 to i64
  %arrayidx267 = getelementptr inbounds [200 x i32], ptr %mon1, i64 0, i64 %idxprom266
  store i32 244, ptr %arrayidx267, align 4, !tbaa !5
  br label %if.end268

if.end268:                                        ; preds = %if.then265, %if.end261
  %121 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom269 = sext i32 %121 to i64
  %arrayidx270 = getelementptr inbounds [200 x i32], ptr %mon1, i64 0, i64 %idxprom269
  %122 = load i32, ptr %arrayidx270, align 4, !tbaa !5
  %cmp271 = icmp eq i32 %122, 10
  br i1 %cmp271, label %if.then272, label %if.end275

if.then272:                                       ; preds = %if.end268
  %123 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom273 = sext i32 %123 to i64
  %arrayidx274 = getelementptr inbounds [200 x i32], ptr %mon1, i64 0, i64 %idxprom273
  store i32 274, ptr %arrayidx274, align 4, !tbaa !5
  br label %if.end275

if.end275:                                        ; preds = %if.then272, %if.end268
  %124 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom276 = sext i32 %124 to i64
  %arrayidx277 = getelementptr inbounds [200 x i32], ptr %mon1, i64 0, i64 %idxprom276
  %125 = load i32, ptr %arrayidx277, align 4, !tbaa !5
  %cmp278 = icmp eq i32 %125, 11
  br i1 %cmp278, label %if.then279, label %if.end282

if.then279:                                       ; preds = %if.end275
  %126 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom280 = sext i32 %126 to i64
  %arrayidx281 = getelementptr inbounds [200 x i32], ptr %mon1, i64 0, i64 %idxprom280
  store i32 305, ptr %arrayidx281, align 4, !tbaa !5
  br label %if.end282

if.end282:                                        ; preds = %if.then279, %if.end275
  %127 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom283 = sext i32 %127 to i64
  %arrayidx284 = getelementptr inbounds [200 x i32], ptr %mon1, i64 0, i64 %idxprom283
  %128 = load i32, ptr %arrayidx284, align 4, !tbaa !5
  %cmp285 = icmp eq i32 %128, 12
  br i1 %cmp285, label %if.then286, label %if.end289

if.then286:                                       ; preds = %if.end282
  %129 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom287 = sext i32 %129 to i64
  %arrayidx288 = getelementptr inbounds [200 x i32], ptr %mon1, i64 0, i64 %idxprom287
  store i32 335, ptr %arrayidx288, align 4, !tbaa !5
  br label %if.end289

if.end289:                                        ; preds = %if.then286, %if.end282
  %130 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom290 = sext i32 %130 to i64
  %arrayidx291 = getelementptr inbounds [200 x i32], ptr %mon2, i64 0, i64 %idxprom290
  %131 = load i32, ptr %arrayidx291, align 4, !tbaa !5
  %cmp292 = icmp eq i32 %131, 1
  br i1 %cmp292, label %if.then293, label %if.end296

if.then293:                                       ; preds = %if.end289
  %132 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom294 = sext i32 %132 to i64
  %arrayidx295 = getelementptr inbounds [200 x i32], ptr %mon2, i64 0, i64 %idxprom294
  store i32 1, ptr %arrayidx295, align 4, !tbaa !5
  br label %if.end296

if.end296:                                        ; preds = %if.then293, %if.end289
  %133 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom297 = sext i32 %133 to i64
  %arrayidx298 = getelementptr inbounds [200 x i32], ptr %mon2, i64 0, i64 %idxprom297
  %134 = load i32, ptr %arrayidx298, align 4, !tbaa !5
  %cmp299 = icmp eq i32 %134, 2
  br i1 %cmp299, label %if.then300, label %if.end303

if.then300:                                       ; preds = %if.end296
  %135 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom301 = sext i32 %135 to i64
  %arrayidx302 = getelementptr inbounds [200 x i32], ptr %mon2, i64 0, i64 %idxprom301
  store i32 32, ptr %arrayidx302, align 4, !tbaa !5
  br label %if.end303

if.end303:                                        ; preds = %if.then300, %if.end296
  %136 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom304 = sext i32 %136 to i64
  %arrayidx305 = getelementptr inbounds [200 x i32], ptr %mon2, i64 0, i64 %idxprom304
  %137 = load i32, ptr %arrayidx305, align 4, !tbaa !5
  %cmp306 = icmp eq i32 %137, 3
  br i1 %cmp306, label %if.then307, label %if.end310

if.then307:                                       ; preds = %if.end303
  %138 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom308 = sext i32 %138 to i64
  %arrayidx309 = getelementptr inbounds [200 x i32], ptr %mon2, i64 0, i64 %idxprom308
  store i32 60, ptr %arrayidx309, align 4, !tbaa !5
  br label %if.end310

if.end310:                                        ; preds = %if.then307, %if.end303
  %139 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom311 = sext i32 %139 to i64
  %arrayidx312 = getelementptr inbounds [200 x i32], ptr %mon2, i64 0, i64 %idxprom311
  %140 = load i32, ptr %arrayidx312, align 4, !tbaa !5
  %cmp313 = icmp eq i32 %140, 4
  br i1 %cmp313, label %if.then314, label %if.end317

if.then314:                                       ; preds = %if.end310
  %141 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom315 = sext i32 %141 to i64
  %arrayidx316 = getelementptr inbounds [200 x i32], ptr %mon2, i64 0, i64 %idxprom315
  store i32 91, ptr %arrayidx316, align 4, !tbaa !5
  br label %if.end317

if.end317:                                        ; preds = %if.then314, %if.end310
  %142 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom318 = sext i32 %142 to i64
  %arrayidx319 = getelementptr inbounds [200 x i32], ptr %mon2, i64 0, i64 %idxprom318
  %143 = load i32, ptr %arrayidx319, align 4, !tbaa !5
  %cmp320 = icmp eq i32 %143, 5
  br i1 %cmp320, label %if.then321, label %if.end324

if.then321:                                       ; preds = %if.end317
  %144 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom322 = sext i32 %144 to i64
  %arrayidx323 = getelementptr inbounds [200 x i32], ptr %mon2, i64 0, i64 %idxprom322
  store i32 121, ptr %arrayidx323, align 4, !tbaa !5
  br label %if.end324

if.end324:                                        ; preds = %if.then321, %if.end317
  %145 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom325 = sext i32 %145 to i64
  %arrayidx326 = getelementptr inbounds [200 x i32], ptr %mon2, i64 0, i64 %idxprom325
  %146 = load i32, ptr %arrayidx326, align 4, !tbaa !5
  %cmp327 = icmp eq i32 %146, 6
  br i1 %cmp327, label %if.then328, label %if.end331

if.then328:                                       ; preds = %if.end324
  %147 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom329 = sext i32 %147 to i64
  %arrayidx330 = getelementptr inbounds [200 x i32], ptr %mon2, i64 0, i64 %idxprom329
  store i32 152, ptr %arrayidx330, align 4, !tbaa !5
  br label %if.end331

if.end331:                                        ; preds = %if.then328, %if.end324
  %148 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom332 = sext i32 %148 to i64
  %arrayidx333 = getelementptr inbounds [200 x i32], ptr %mon2, i64 0, i64 %idxprom332
  %149 = load i32, ptr %arrayidx333, align 4, !tbaa !5
  %cmp334 = icmp eq i32 %149, 7
  br i1 %cmp334, label %if.then335, label %if.end338

if.then335:                                       ; preds = %if.end331
  %150 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom336 = sext i32 %150 to i64
  %arrayidx337 = getelementptr inbounds [200 x i32], ptr %mon2, i64 0, i64 %idxprom336
  store i32 182, ptr %arrayidx337, align 4, !tbaa !5
  br label %if.end338

if.end338:                                        ; preds = %if.then335, %if.end331
  %151 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom339 = sext i32 %151 to i64
  %arrayidx340 = getelementptr inbounds [200 x i32], ptr %mon2, i64 0, i64 %idxprom339
  %152 = load i32, ptr %arrayidx340, align 4, !tbaa !5
  %cmp341 = icmp eq i32 %152, 8
  br i1 %cmp341, label %if.then342, label %if.end345

if.then342:                                       ; preds = %if.end338
  %153 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom343 = sext i32 %153 to i64
  %arrayidx344 = getelementptr inbounds [200 x i32], ptr %mon2, i64 0, i64 %idxprom343
  store i32 213, ptr %arrayidx344, align 4, !tbaa !5
  br label %if.end345

if.end345:                                        ; preds = %if.then342, %if.end338
  %154 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom346 = sext i32 %154 to i64
  %arrayidx347 = getelementptr inbounds [200 x i32], ptr %mon2, i64 0, i64 %idxprom346
  %155 = load i32, ptr %arrayidx347, align 4, !tbaa !5
  %cmp348 = icmp eq i32 %155, 9
  br i1 %cmp348, label %if.then349, label %if.end352

if.then349:                                       ; preds = %if.end345
  %156 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom350 = sext i32 %156 to i64
  %arrayidx351 = getelementptr inbounds [200 x i32], ptr %mon2, i64 0, i64 %idxprom350
  store i32 244, ptr %arrayidx351, align 4, !tbaa !5
  br label %if.end352

if.end352:                                        ; preds = %if.then349, %if.end345
  %157 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom353 = sext i32 %157 to i64
  %arrayidx354 = getelementptr inbounds [200 x i32], ptr %mon2, i64 0, i64 %idxprom353
  %158 = load i32, ptr %arrayidx354, align 4, !tbaa !5
  %cmp355 = icmp eq i32 %158, 10
  br i1 %cmp355, label %if.then356, label %if.end359

if.then356:                                       ; preds = %if.end352
  %159 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom357 = sext i32 %159 to i64
  %arrayidx358 = getelementptr inbounds [200 x i32], ptr %mon2, i64 0, i64 %idxprom357
  store i32 274, ptr %arrayidx358, align 4, !tbaa !5
  br label %if.end359

if.end359:                                        ; preds = %if.then356, %if.end352
  %160 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom360 = sext i32 %160 to i64
  %arrayidx361 = getelementptr inbounds [200 x i32], ptr %mon2, i64 0, i64 %idxprom360
  %161 = load i32, ptr %arrayidx361, align 4, !tbaa !5
  %cmp362 = icmp eq i32 %161, 11
  br i1 %cmp362, label %if.then363, label %if.end366

if.then363:                                       ; preds = %if.end359
  %162 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom364 = sext i32 %162 to i64
  %arrayidx365 = getelementptr inbounds [200 x i32], ptr %mon2, i64 0, i64 %idxprom364
  store i32 305, ptr %arrayidx365, align 4, !tbaa !5
  br label %if.end366

if.end366:                                        ; preds = %if.then363, %if.end359
  %163 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom367 = sext i32 %163 to i64
  %arrayidx368 = getelementptr inbounds [200 x i32], ptr %mon2, i64 0, i64 %idxprom367
  %164 = load i32, ptr %arrayidx368, align 4, !tbaa !5
  %cmp369 = icmp eq i32 %164, 12
  br i1 %cmp369, label %if.then370, label %if.end373

if.then370:                                       ; preds = %if.end366
  %165 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom371 = sext i32 %165 to i64
  %arrayidx372 = getelementptr inbounds [200 x i32], ptr %mon2, i64 0, i64 %idxprom371
  store i32 335, ptr %arrayidx372, align 4, !tbaa !5
  br label %if.end373

if.end373:                                        ; preds = %if.then370, %if.end366
  %166 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom374 = sext i32 %166 to i64
  %arrayidx375 = getelementptr inbounds [200 x i32], ptr %mon2, i64 0, i64 %idxprom374
  %167 = load i32, ptr %arrayidx375, align 4, !tbaa !5
  %168 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom376 = sext i32 %168 to i64
  %arrayidx377 = getelementptr inbounds [200 x i32], ptr %mon1, i64 0, i64 %idxprom376
  %169 = load i32, ptr %arrayidx377, align 4, !tbaa !5
  %sub378 = sub nsw i32 %167, %169
  %rem379 = srem i32 %sub378, 7
  %cmp380 = icmp eq i32 %rem379, 0
  br i1 %cmp380, label %if.then389, label %lor.lhs.false381

lor.lhs.false381:                                 ; preds = %if.end373
  %170 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom382 = sext i32 %170 to i64
  %arrayidx383 = getelementptr inbounds [200 x i32], ptr %mon1, i64 0, i64 %idxprom382
  %171 = load i32, ptr %arrayidx383, align 4, !tbaa !5
  %172 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom384 = sext i32 %172 to i64
  %arrayidx385 = getelementptr inbounds [200 x i32], ptr %mon2, i64 0, i64 %idxprom384
  %173 = load i32, ptr %arrayidx385, align 4, !tbaa !5
  %sub386 = sub nsw i32 %171, %173
  %rem387 = srem i32 %sub386, 7
  %cmp388 = icmp eq i32 %rem387, 0
  br i1 %cmp388, label %if.then389, label %if.else391

if.then389:                                       ; preds = %lor.lhs.false381, %if.end373
  %call390 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %if.end393

if.else391:                                       ; preds = %lor.lhs.false381
  %call392 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  br label %if.end393

if.end393:                                        ; preds = %if.else391, %if.then389
  br label %if.end394

if.end394:                                        ; preds = %if.end393, %if.end204
  br label %for.inc395

for.inc395:                                       ; preds = %if.end394
  %174 = load i32, ptr %i, align 4, !tbaa !5
  %inc396 = add nsw i32 %174, 1
  store i32 %inc396, ptr %i, align 4, !tbaa !5
  br label %for.cond6, !llvm.loop !12

for.end397:                                       ; preds = %for.cond6
  call void @llvm.lifetime.end.p0(i64 800, ptr %mon2) #3
  call void @llvm.lifetime.end.p0(i64 800, ptr %mon1) #3
  call void @llvm.lifetime.end.p0(i64 800, ptr %year) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #3
  ret i32 0
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
