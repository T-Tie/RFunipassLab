; ModuleID = '/tmp/tmp4z9uxflz.cpp'
source_filename = "/tmp/tmp4z9uxflz.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_Z3MinPii(ptr noundef %a, i32 noundef %n) #0 {
entry:
  %a.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %min = alloca i32, align 4
  store ptr %a, ptr %a.addr, align 8, !tbaa !5
  store i32 %n, ptr %n.addr, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %min) #4
  %0 = load ptr, ptr %a.addr, align 8, !tbaa !5
  %arrayidx = getelementptr inbounds i32, ptr %0, i64 0
  %1 = load i32, ptr %arrayidx, align 4, !tbaa !10
  store i32 %1, ptr %min, align 4, !tbaa !10
  store i32 1, ptr %i, align 4, !tbaa !10
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %i, align 4, !tbaa !10
  %3 = load i32, ptr %n.addr, align 4, !tbaa !10
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %a.addr, align 8, !tbaa !5
  %5 = load i32, ptr %i, align 4, !tbaa !10
  %idxprom = sext i32 %5 to i64
  %arrayidx1 = getelementptr inbounds i32, ptr %4, i64 %idxprom
  %6 = load i32, ptr %arrayidx1, align 4, !tbaa !10
  %7 = load i32, ptr %min, align 4, !tbaa !10
  %cmp2 = icmp slt i32 %6, %7
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %8 = load ptr, ptr %a.addr, align 8, !tbaa !5
  %9 = load i32, ptr %i, align 4, !tbaa !10
  %idxprom3 = sext i32 %9 to i64
  %arrayidx4 = getelementptr inbounds i32, ptr %8, i64 %idxprom3
  %10 = load i32, ptr %arrayidx4, align 4, !tbaa !10
  store i32 %10, ptr %min, align 4, !tbaa !10
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load i32, ptr %i, align 4, !tbaa !10
  %inc = add nsw i32 %11, 1
  store i32 %inc, ptr %i, align 4, !tbaa !10
  br label %for.cond, !llvm.loop !12

for.end:                                          ; preds = %for.cond
  %12 = load i32, ptr %min, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 4, ptr %min) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
  ret i32 %12
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #2 {
entry:
  %retval = alloca i32, align 4
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %N = alloca i32, align 4
  %dd1 = alloca i32, align 4
  %dd2 = alloca i32, align 4
  %j = alloca i32, align 4
  %min = alloca i32, align 4
  %row = alloca [100 x [100 x i32]], align 16
  %col = alloca [100 x [100 x i32]], align 16
  %sum = alloca [100 x i32], align 16
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %N) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %dd1) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %dd2) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %min) #4
  call void @llvm.lifetime.start.p0(i64 40000, ptr %row) #4
  call void @llvm.lifetime.start.p0(i64 40000, ptr %col) #4
  call void @llvm.lifetime.start.p0(i64 400, ptr %sum) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %n)
  %0 = load i32, ptr %n, align 4, !tbaa !10
  store i32 %0, ptr %N, align 4, !tbaa !10
  store i32 0, ptr %i, align 4, !tbaa !10
  br label %for.cond

for.cond:                                         ; preds = %for.inc174, %entry
  %1 = load i32, ptr %i, align 4, !tbaa !10
  %2 = load i32, ptr %N, align 4, !tbaa !10
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end176

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %dd1, align 4, !tbaa !10
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc10, %for.body
  %3 = load i32, ptr %dd1, align 4, !tbaa !10
  %4 = load i32, ptr %N, align 4, !tbaa !10
  %cmp2 = icmp slt i32 %3, %4
  br i1 %cmp2, label %for.body3, label %for.end12

for.body3:                                        ; preds = %for.cond1
  store i32 0, ptr %dd2, align 4, !tbaa !10
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %5 = load i32, ptr %dd2, align 4, !tbaa !10
  %6 = load i32, ptr %N, align 4, !tbaa !10
  %cmp5 = icmp slt i32 %5, %6
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %7 = load i32, ptr %dd1, align 4, !tbaa !10
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds [100 x [100 x i32]], ptr %row, i64 0, i64 %idxprom
  %8 = load i32, ptr %dd2, align 4, !tbaa !10
  %idxprom7 = sext i32 %8 to i64
  %arrayidx8 = getelementptr inbounds [100 x i32], ptr %arrayidx, i64 0, i64 %idxprom7
  %call9 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.1, ptr noundef %arrayidx8)
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %9 = load i32, ptr %dd2, align 4, !tbaa !10
  %inc = add nsw i32 %9, 1
  store i32 %inc, ptr %dd2, align 4, !tbaa !10
  br label %for.cond4, !llvm.loop !15

for.end:                                          ; preds = %for.cond4
  br label %for.inc10

for.inc10:                                        ; preds = %for.end
  %10 = load i32, ptr %dd1, align 4, !tbaa !10
  %inc11 = add nsw i32 %10, 1
  store i32 %inc11, ptr %dd1, align 4, !tbaa !10
  br label %for.cond1, !llvm.loop !16

for.end12:                                        ; preds = %for.cond1
  %11 = load i32, ptr %i, align 4, !tbaa !10
  %idxprom13 = sext i32 %11 to i64
  %arrayidx14 = getelementptr inbounds [100 x i32], ptr %sum, i64 0, i64 %idxprom13
  store i32 0, ptr %arrayidx14, align 4, !tbaa !10
  %12 = load i32, ptr %N, align 4, !tbaa !10
  store i32 %12, ptr %n, align 4, !tbaa !10
  store i32 0, ptr %j, align 4, !tbaa !10
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc171, %for.end12
  %13 = load i32, ptr %j, align 4, !tbaa !10
  %14 = load i32, ptr %N, align 4, !tbaa !10
  %sub = sub nsw i32 %14, 1
  %cmp16 = icmp slt i32 %13, %sub
  br i1 %cmp16, label %for.body17, label %for.end173

for.body17:                                       ; preds = %for.cond15
  store i32 0, ptr %dd1, align 4, !tbaa !10
  br label %for.cond18

for.cond18:                                       ; preds = %for.inc40, %for.body17
  %15 = load i32, ptr %dd1, align 4, !tbaa !10
  %16 = load i32, ptr %n, align 4, !tbaa !10
  %cmp19 = icmp slt i32 %15, %16
  br i1 %cmp19, label %for.body20, label %for.end42

for.body20:                                       ; preds = %for.cond18
  %17 = load i32, ptr %dd1, align 4, !tbaa !10
  %idxprom21 = sext i32 %17 to i64
  %arrayidx22 = getelementptr inbounds [100 x [100 x i32]], ptr %row, i64 0, i64 %idxprom21
  %arraydecay = getelementptr inbounds [100 x i32], ptr %arrayidx22, i64 0, i64 0
  %18 = load i32, ptr %n, align 4, !tbaa !10
  %call23 = call noundef i32 @_Z3MinPii(ptr noundef %arraydecay, i32 noundef %18)
  %cmp24 = icmp ne i32 %call23, 0
  br i1 %cmp24, label %if.then, label %if.end

if.then:                                          ; preds = %for.body20
  %19 = load i32, ptr %dd1, align 4, !tbaa !10
  %idxprom25 = sext i32 %19 to i64
  %arrayidx26 = getelementptr inbounds [100 x [100 x i32]], ptr %row, i64 0, i64 %idxprom25
  %arraydecay27 = getelementptr inbounds [100 x i32], ptr %arrayidx26, i64 0, i64 0
  %20 = load i32, ptr %n, align 4, !tbaa !10
  %call28 = call noundef i32 @_Z3MinPii(ptr noundef %arraydecay27, i32 noundef %20)
  store i32 %call28, ptr %min, align 4, !tbaa !10
  store i32 0, ptr %dd2, align 4, !tbaa !10
  br label %for.cond29

for.cond29:                                       ; preds = %for.inc37, %if.then
  %21 = load i32, ptr %dd2, align 4, !tbaa !10
  %22 = load i32, ptr %n, align 4, !tbaa !10
  %cmp30 = icmp slt i32 %21, %22
  br i1 %cmp30, label %for.body31, label %for.end39

for.body31:                                       ; preds = %for.cond29
  %23 = load i32, ptr %min, align 4, !tbaa !10
  %24 = load i32, ptr %dd1, align 4, !tbaa !10
  %idxprom32 = sext i32 %24 to i64
  %arrayidx33 = getelementptr inbounds [100 x [100 x i32]], ptr %row, i64 0, i64 %idxprom32
  %25 = load i32, ptr %dd2, align 4, !tbaa !10
  %idxprom34 = sext i32 %25 to i64
  %arrayidx35 = getelementptr inbounds [100 x i32], ptr %arrayidx33, i64 0, i64 %idxprom34
  %26 = load i32, ptr %arrayidx35, align 4, !tbaa !10
  %sub36 = sub nsw i32 %26, %23
  store i32 %sub36, ptr %arrayidx35, align 4, !tbaa !10
  br label %for.inc37

for.inc37:                                        ; preds = %for.body31
  %27 = load i32, ptr %dd2, align 4, !tbaa !10
  %inc38 = add nsw i32 %27, 1
  store i32 %inc38, ptr %dd2, align 4, !tbaa !10
  br label %for.cond29, !llvm.loop !17

for.end39:                                        ; preds = %for.cond29
  br label %if.end

if.end:                                           ; preds = %for.end39, %for.body20
  br label %for.inc40

for.inc40:                                        ; preds = %if.end
  %28 = load i32, ptr %dd1, align 4, !tbaa !10
  %inc41 = add nsw i32 %28, 1
  store i32 %inc41, ptr %dd1, align 4, !tbaa !10
  br label %for.cond18, !llvm.loop !18

for.end42:                                        ; preds = %for.cond18
  store i32 0, ptr %dd1, align 4, !tbaa !10
  br label %for.cond43

for.cond43:                                       ; preds = %for.inc60, %for.end42
  %29 = load i32, ptr %dd1, align 4, !tbaa !10
  %30 = load i32, ptr %n, align 4, !tbaa !10
  %cmp44 = icmp slt i32 %29, %30
  br i1 %cmp44, label %for.body45, label %for.end62

for.body45:                                       ; preds = %for.cond43
  store i32 0, ptr %dd2, align 4, !tbaa !10
  br label %for.cond46

for.cond46:                                       ; preds = %for.inc57, %for.body45
  %31 = load i32, ptr %dd2, align 4, !tbaa !10
  %32 = load i32, ptr %n, align 4, !tbaa !10
  %cmp47 = icmp slt i32 %31, %32
  br i1 %cmp47, label %for.body48, label %for.end59

for.body48:                                       ; preds = %for.cond46
  %33 = load i32, ptr %dd1, align 4, !tbaa !10
  %idxprom49 = sext i32 %33 to i64
  %arrayidx50 = getelementptr inbounds [100 x [100 x i32]], ptr %row, i64 0, i64 %idxprom49
  %34 = load i32, ptr %dd2, align 4, !tbaa !10
  %idxprom51 = sext i32 %34 to i64
  %arrayidx52 = getelementptr inbounds [100 x i32], ptr %arrayidx50, i64 0, i64 %idxprom51
  %35 = load i32, ptr %arrayidx52, align 4, !tbaa !10
  %36 = load i32, ptr %dd2, align 4, !tbaa !10
  %idxprom53 = sext i32 %36 to i64
  %arrayidx54 = getelementptr inbounds [100 x [100 x i32]], ptr %col, i64 0, i64 %idxprom53
  %37 = load i32, ptr %dd1, align 4, !tbaa !10
  %idxprom55 = sext i32 %37 to i64
  %arrayidx56 = getelementptr inbounds [100 x i32], ptr %arrayidx54, i64 0, i64 %idxprom55
  store i32 %35, ptr %arrayidx56, align 4, !tbaa !10
  br label %for.inc57

for.inc57:                                        ; preds = %for.body48
  %38 = load i32, ptr %dd2, align 4, !tbaa !10
  %inc58 = add nsw i32 %38, 1
  store i32 %inc58, ptr %dd2, align 4, !tbaa !10
  br label %for.cond46, !llvm.loop !19

for.end59:                                        ; preds = %for.cond46
  br label %for.inc60

for.inc60:                                        ; preds = %for.end59
  %39 = load i32, ptr %dd1, align 4, !tbaa !10
  %inc61 = add nsw i32 %39, 1
  store i32 %inc61, ptr %dd1, align 4, !tbaa !10
  br label %for.cond43, !llvm.loop !20

for.end62:                                        ; preds = %for.cond43
  store i32 0, ptr %dd1, align 4, !tbaa !10
  br label %for.cond63

for.cond63:                                       ; preds = %for.inc88, %for.end62
  %40 = load i32, ptr %dd1, align 4, !tbaa !10
  %41 = load i32, ptr %n, align 4, !tbaa !10
  %cmp64 = icmp slt i32 %40, %41
  br i1 %cmp64, label %for.body65, label %for.end90

for.body65:                                       ; preds = %for.cond63
  %42 = load i32, ptr %dd1, align 4, !tbaa !10
  %idxprom66 = sext i32 %42 to i64
  %arrayidx67 = getelementptr inbounds [100 x [100 x i32]], ptr %col, i64 0, i64 %idxprom66
  %arraydecay68 = getelementptr inbounds [100 x i32], ptr %arrayidx67, i64 0, i64 0
  %43 = load i32, ptr %n, align 4, !tbaa !10
  %call69 = call noundef i32 @_Z3MinPii(ptr noundef %arraydecay68, i32 noundef %43)
  %cmp70 = icmp ne i32 %call69, 0
  br i1 %cmp70, label %if.then71, label %if.end87

if.then71:                                        ; preds = %for.body65
  %44 = load i32, ptr %dd1, align 4, !tbaa !10
  %idxprom72 = sext i32 %44 to i64
  %arrayidx73 = getelementptr inbounds [100 x [100 x i32]], ptr %col, i64 0, i64 %idxprom72
  %arraydecay74 = getelementptr inbounds [100 x i32], ptr %arrayidx73, i64 0, i64 0
  %45 = load i32, ptr %n, align 4, !tbaa !10
  %call75 = call noundef i32 @_Z3MinPii(ptr noundef %arraydecay74, i32 noundef %45)
  store i32 %call75, ptr %min, align 4, !tbaa !10
  store i32 0, ptr %dd2, align 4, !tbaa !10
  br label %for.cond76

for.cond76:                                       ; preds = %for.inc84, %if.then71
  %46 = load i32, ptr %dd2, align 4, !tbaa !10
  %47 = load i32, ptr %n, align 4, !tbaa !10
  %cmp77 = icmp slt i32 %46, %47
  br i1 %cmp77, label %for.body78, label %for.end86

for.body78:                                       ; preds = %for.cond76
  %48 = load i32, ptr %min, align 4, !tbaa !10
  %49 = load i32, ptr %dd1, align 4, !tbaa !10
  %idxprom79 = sext i32 %49 to i64
  %arrayidx80 = getelementptr inbounds [100 x [100 x i32]], ptr %col, i64 0, i64 %idxprom79
  %50 = load i32, ptr %dd2, align 4, !tbaa !10
  %idxprom81 = sext i32 %50 to i64
  %arrayidx82 = getelementptr inbounds [100 x i32], ptr %arrayidx80, i64 0, i64 %idxprom81
  %51 = load i32, ptr %arrayidx82, align 4, !tbaa !10
  %sub83 = sub nsw i32 %51, %48
  store i32 %sub83, ptr %arrayidx82, align 4, !tbaa !10
  br label %for.inc84

for.inc84:                                        ; preds = %for.body78
  %52 = load i32, ptr %dd2, align 4, !tbaa !10
  %inc85 = add nsw i32 %52, 1
  store i32 %inc85, ptr %dd2, align 4, !tbaa !10
  br label %for.cond76, !llvm.loop !21

for.end86:                                        ; preds = %for.cond76
  br label %if.end87

if.end87:                                         ; preds = %for.end86, %for.body65
  br label %for.inc88

for.inc88:                                        ; preds = %if.end87
  %53 = load i32, ptr %dd1, align 4, !tbaa !10
  %inc89 = add nsw i32 %53, 1
  store i32 %inc89, ptr %dd1, align 4, !tbaa !10
  br label %for.cond63, !llvm.loop !22

for.end90:                                        ; preds = %for.cond63
  store i32 0, ptr %dd1, align 4, !tbaa !10
  br label %for.cond91

for.cond91:                                       ; preds = %for.inc108, %for.end90
  %54 = load i32, ptr %dd1, align 4, !tbaa !10
  %55 = load i32, ptr %n, align 4, !tbaa !10
  %cmp92 = icmp slt i32 %54, %55
  br i1 %cmp92, label %for.body93, label %for.end110

for.body93:                                       ; preds = %for.cond91
  store i32 0, ptr %dd2, align 4, !tbaa !10
  br label %for.cond94

for.cond94:                                       ; preds = %for.inc105, %for.body93
  %56 = load i32, ptr %dd2, align 4, !tbaa !10
  %57 = load i32, ptr %n, align 4, !tbaa !10
  %cmp95 = icmp slt i32 %56, %57
  br i1 %cmp95, label %for.body96, label %for.end107

for.body96:                                       ; preds = %for.cond94
  %58 = load i32, ptr %dd2, align 4, !tbaa !10
  %idxprom97 = sext i32 %58 to i64
  %arrayidx98 = getelementptr inbounds [100 x [100 x i32]], ptr %col, i64 0, i64 %idxprom97
  %59 = load i32, ptr %dd1, align 4, !tbaa !10
  %idxprom99 = sext i32 %59 to i64
  %arrayidx100 = getelementptr inbounds [100 x i32], ptr %arrayidx98, i64 0, i64 %idxprom99
  %60 = load i32, ptr %arrayidx100, align 4, !tbaa !10
  %61 = load i32, ptr %dd1, align 4, !tbaa !10
  %idxprom101 = sext i32 %61 to i64
  %arrayidx102 = getelementptr inbounds [100 x [100 x i32]], ptr %row, i64 0, i64 %idxprom101
  %62 = load i32, ptr %dd2, align 4, !tbaa !10
  %idxprom103 = sext i32 %62 to i64
  %arrayidx104 = getelementptr inbounds [100 x i32], ptr %arrayidx102, i64 0, i64 %idxprom103
  store i32 %60, ptr %arrayidx104, align 4, !tbaa !10
  br label %for.inc105

for.inc105:                                       ; preds = %for.body96
  %63 = load i32, ptr %dd2, align 4, !tbaa !10
  %inc106 = add nsw i32 %63, 1
  store i32 %inc106, ptr %dd2, align 4, !tbaa !10
  br label %for.cond94, !llvm.loop !23

for.end107:                                       ; preds = %for.cond94
  br label %for.inc108

for.inc108:                                       ; preds = %for.end107
  %64 = load i32, ptr %dd1, align 4, !tbaa !10
  %inc109 = add nsw i32 %64, 1
  store i32 %inc109, ptr %dd1, align 4, !tbaa !10
  br label %for.cond91, !llvm.loop !24

for.end110:                                       ; preds = %for.cond91
  %arrayidx111 = getelementptr inbounds [100 x [100 x i32]], ptr %row, i64 0, i64 1
  %arrayidx112 = getelementptr inbounds [100 x i32], ptr %arrayidx111, i64 0, i64 1
  %65 = load i32, ptr %arrayidx112, align 4, !tbaa !10
  %66 = load i32, ptr %i, align 4, !tbaa !10
  %idxprom113 = sext i32 %66 to i64
  %arrayidx114 = getelementptr inbounds [100 x i32], ptr %sum, i64 0, i64 %idxprom113
  %67 = load i32, ptr %arrayidx114, align 4, !tbaa !10
  %add = add nsw i32 %67, %65
  store i32 %add, ptr %arrayidx114, align 4, !tbaa !10
  store i32 0, ptr %dd1, align 4, !tbaa !10
  br label %for.cond115

for.cond115:                                      ; preds = %for.inc168, %for.end110
  %68 = load i32, ptr %dd1, align 4, !tbaa !10
  %69 = load i32, ptr %n, align 4, !tbaa !10
  %sub116 = sub nsw i32 %69, 1
  %cmp117 = icmp slt i32 %68, %sub116
  br i1 %cmp117, label %for.body118, label %for.end170

for.body118:                                      ; preds = %for.cond115
  store i32 0, ptr %dd2, align 4, !tbaa !10
  br label %for.cond119

for.cond119:                                      ; preds = %for.inc165, %for.body118
  %70 = load i32, ptr %dd2, align 4, !tbaa !10
  %71 = load i32, ptr %n, align 4, !tbaa !10
  %sub120 = sub nsw i32 %71, 1
  %cmp121 = icmp slt i32 %70, %sub120
  br i1 %cmp121, label %for.body122, label %for.end167

for.body122:                                      ; preds = %for.cond119
  %72 = load i32, ptr %dd1, align 4, !tbaa !10
  %cmp123 = icmp sge i32 %72, 1
  br i1 %cmp123, label %land.lhs.true, label %if.end135

land.lhs.true:                                    ; preds = %for.body122
  %73 = load i32, ptr %dd2, align 4, !tbaa !10
  %cmp124 = icmp eq i32 %73, 0
  br i1 %cmp124, label %if.then125, label %if.end135

if.then125:                                       ; preds = %land.lhs.true
  %74 = load i32, ptr %dd1, align 4, !tbaa !10
  %add126 = add nsw i32 %74, 1
  %idxprom127 = sext i32 %add126 to i64
  %arrayidx128 = getelementptr inbounds [100 x [100 x i32]], ptr %row, i64 0, i64 %idxprom127
  %75 = load i32, ptr %dd2, align 4, !tbaa !10
  %idxprom129 = sext i32 %75 to i64
  %arrayidx130 = getelementptr inbounds [100 x i32], ptr %arrayidx128, i64 0, i64 %idxprom129
  %76 = load i32, ptr %arrayidx130, align 4, !tbaa !10
  %77 = load i32, ptr %dd1, align 4, !tbaa !10
  %idxprom131 = sext i32 %77 to i64
  %arrayidx132 = getelementptr inbounds [100 x [100 x i32]], ptr %row, i64 0, i64 %idxprom131
  %78 = load i32, ptr %dd2, align 4, !tbaa !10
  %idxprom133 = sext i32 %78 to i64
  %arrayidx134 = getelementptr inbounds [100 x i32], ptr %arrayidx132, i64 0, i64 %idxprom133
  store i32 %76, ptr %arrayidx134, align 4, !tbaa !10
  br label %if.end135

if.end135:                                        ; preds = %if.then125, %land.lhs.true, %for.body122
  %79 = load i32, ptr %dd2, align 4, !tbaa !10
  %cmp136 = icmp sge i32 %79, 1
  br i1 %cmp136, label %land.lhs.true137, label %if.end149

land.lhs.true137:                                 ; preds = %if.end135
  %80 = load i32, ptr %dd1, align 4, !tbaa !10
  %cmp138 = icmp eq i32 %80, 0
  br i1 %cmp138, label %if.then139, label %if.end149

if.then139:                                       ; preds = %land.lhs.true137
  %81 = load i32, ptr %dd1, align 4, !tbaa !10
  %idxprom140 = sext i32 %81 to i64
  %arrayidx141 = getelementptr inbounds [100 x [100 x i32]], ptr %row, i64 0, i64 %idxprom140
  %82 = load i32, ptr %dd2, align 4, !tbaa !10
  %add142 = add nsw i32 %82, 1
  %idxprom143 = sext i32 %add142 to i64
  %arrayidx144 = getelementptr inbounds [100 x i32], ptr %arrayidx141, i64 0, i64 %idxprom143
  %83 = load i32, ptr %arrayidx144, align 4, !tbaa !10
  %84 = load i32, ptr %dd1, align 4, !tbaa !10
  %idxprom145 = sext i32 %84 to i64
  %arrayidx146 = getelementptr inbounds [100 x [100 x i32]], ptr %row, i64 0, i64 %idxprom145
  %85 = load i32, ptr %dd2, align 4, !tbaa !10
  %idxprom147 = sext i32 %85 to i64
  %arrayidx148 = getelementptr inbounds [100 x i32], ptr %arrayidx146, i64 0, i64 %idxprom147
  store i32 %83, ptr %arrayidx148, align 4, !tbaa !10
  br label %if.end149

if.end149:                                        ; preds = %if.then139, %land.lhs.true137, %if.end135
  %86 = load i32, ptr %dd1, align 4, !tbaa !10
  %cmp150 = icmp sge i32 %86, 1
  br i1 %cmp150, label %land.lhs.true151, label %if.end164

land.lhs.true151:                                 ; preds = %if.end149
  %87 = load i32, ptr %dd2, align 4, !tbaa !10
  %cmp152 = icmp sge i32 %87, 1
  br i1 %cmp152, label %if.then153, label %if.end164

if.then153:                                       ; preds = %land.lhs.true151
  %88 = load i32, ptr %dd1, align 4, !tbaa !10
  %add154 = add nsw i32 %88, 1
  %idxprom155 = sext i32 %add154 to i64
  %arrayidx156 = getelementptr inbounds [100 x [100 x i32]], ptr %row, i64 0, i64 %idxprom155
  %89 = load i32, ptr %dd2, align 4, !tbaa !10
  %add157 = add nsw i32 %89, 1
  %idxprom158 = sext i32 %add157 to i64
  %arrayidx159 = getelementptr inbounds [100 x i32], ptr %arrayidx156, i64 0, i64 %idxprom158
  %90 = load i32, ptr %arrayidx159, align 4, !tbaa !10
  %91 = load i32, ptr %dd1, align 4, !tbaa !10
  %idxprom160 = sext i32 %91 to i64
  %arrayidx161 = getelementptr inbounds [100 x [100 x i32]], ptr %row, i64 0, i64 %idxprom160
  %92 = load i32, ptr %dd2, align 4, !tbaa !10
  %idxprom162 = sext i32 %92 to i64
  %arrayidx163 = getelementptr inbounds [100 x i32], ptr %arrayidx161, i64 0, i64 %idxprom162
  store i32 %90, ptr %arrayidx163, align 4, !tbaa !10
  br label %if.end164

if.end164:                                        ; preds = %if.then153, %land.lhs.true151, %if.end149
  br label %for.inc165

for.inc165:                                       ; preds = %if.end164
  %93 = load i32, ptr %dd2, align 4, !tbaa !10
  %inc166 = add nsw i32 %93, 1
  store i32 %inc166, ptr %dd2, align 4, !tbaa !10
  br label %for.cond119, !llvm.loop !25

for.end167:                                       ; preds = %for.cond119
  br label %for.inc168

for.inc168:                                       ; preds = %for.end167
  %94 = load i32, ptr %dd1, align 4, !tbaa !10
  %inc169 = add nsw i32 %94, 1
  store i32 %inc169, ptr %dd1, align 4, !tbaa !10
  br label %for.cond115, !llvm.loop !26

for.end170:                                       ; preds = %for.cond115
  %95 = load i32, ptr %n, align 4, !tbaa !10
  %dec = add nsw i32 %95, -1
  store i32 %dec, ptr %n, align 4, !tbaa !10
  br label %for.inc171

for.inc171:                                       ; preds = %for.end170
  %96 = load i32, ptr %j, align 4, !tbaa !10
  %inc172 = add nsw i32 %96, 1
  store i32 %inc172, ptr %j, align 4, !tbaa !10
  br label %for.cond15, !llvm.loop !27

for.end173:                                       ; preds = %for.cond15
  br label %for.inc174

for.inc174:                                       ; preds = %for.end173
  %97 = load i32, ptr %i, align 4, !tbaa !10
  %inc175 = add nsw i32 %97, 1
  store i32 %inc175, ptr %i, align 4, !tbaa !10
  br label %for.cond, !llvm.loop !28

for.end176:                                       ; preds = %for.cond
  store i32 0, ptr %i, align 4, !tbaa !10
  br label %for.cond177

for.cond177:                                      ; preds = %for.inc183, %for.end176
  %98 = load i32, ptr %i, align 4, !tbaa !10
  %99 = load i32, ptr %N, align 4, !tbaa !10
  %cmp178 = icmp slt i32 %98, %99
  br i1 %cmp178, label %for.body179, label %for.end185

for.body179:                                      ; preds = %for.cond177
  %100 = load i32, ptr %i, align 4, !tbaa !10
  %idxprom180 = sext i32 %100 to i64
  %arrayidx181 = getelementptr inbounds [100 x i32], ptr %sum, i64 0, i64 %idxprom180
  %101 = load i32, ptr %arrayidx181, align 4, !tbaa !10
  %call182 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %101)
  br label %for.inc183

for.inc183:                                       ; preds = %for.body179
  %102 = load i32, ptr %i, align 4, !tbaa !10
  %inc184 = add nsw i32 %102, 1
  store i32 %inc184, ptr %i, align 4, !tbaa !10
  br label %for.cond177, !llvm.loop !29

for.end185:                                       ; preds = %for.cond177
  call void @llvm.lifetime.end.p0(i64 400, ptr %sum) #4
  call void @llvm.lifetime.end.p0(i64 40000, ptr %col) #4
  call void @llvm.lifetime.end.p0(i64 40000, ptr %row) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %min) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %dd2) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %dd1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %N) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #4
  ret i32 0
}

declare i32 @__isoc23_scanf(ptr noundef, ...) #3

declare i32 @printf(ptr noundef, ...) #3

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

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
!27 = distinct !{!27, !13, !14}
!28 = distinct !{!28, !13, !14}
!29 = distinct !{!29, !13, !14}
