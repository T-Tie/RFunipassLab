; ModuleID = '<stdin>'
source_filename = "/tmp/tmpriweriyt.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %a = alloca [100 x [100 x i32]], align 16
  %sum = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %m = alloca i32, align 4
  %z = alloca i32, align 4
  %x = alloca i32, align 4
  %p = alloca i32, align 4
  %min1 = alloca [100 x i32], align 16
  %min2 = alloca [100 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %n) #3
  call void @llvm.lifetime.start.p0(i64 noundef 40000, ptr noundef align 16 %a) #3
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %sum) #3
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %i) #3
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %j) #3
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %k) #3
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %m) #3
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %z) #3
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %x) #3
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %p) #3
  call void @llvm.lifetime.start.p0(i64 noundef 400, ptr noundef align 16 %min1) #3
  call void @llvm.lifetime.start.p0(i64 noundef 400, ptr noundef align 16 %min2) #3
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef align 4 %n)
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc179, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp sle i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end181

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
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom
  %idxprom7 = sext i32 %4 to i64
  %arrayidx8 = getelementptr inbounds [100 x i32], ptr %arrayidx, i64 0, i64 %idxprom7
  %call9 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arrayidx8)
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr %k, align 4, !tbaa !5
  br label %for.cond4, !llvm.loop !9

for.end:                                          ; preds = %for.cond4
  br label %for.inc10

for.inc10:                                        ; preds = %for.end
  %inc11 = add nsw i32 %2, 1
  store i32 %inc11, ptr %j, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !12

for.end12:                                        ; preds = %for.cond1
  store i32 0, ptr %sum, align 4, !tbaa !5
  store i32 0, ptr %p, align 4, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %for.end176, %for.end12
  %6 = load i32, ptr %p, align 4, !tbaa !5
  %cmp13 = icmp slt i32 %6, %3
  br i1 %cmp13, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i32 0, ptr %m, align 4, !tbaa !5
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc42, %while.body
  %7 = load i32, ptr %m, align 4, !tbaa !5
  %sub = sub nsw i32 %3, %6
  %cmp15 = icmp slt i32 %7, %sub
  br i1 %cmp15, label %for.body16, label %for.end44

for.body16:                                       ; preds = %for.cond14
  %idxprom17 = sext i32 %7 to i64
  %arrayidx18 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom17
  %8 = load i32, ptr %arrayidx18, align 16, !tbaa !5
  %arrayidx21 = getelementptr inbounds [100 x i32], ptr %min1, i64 0, i64 %idxprom17
  store i32 %8, ptr %arrayidx21, align 4, !tbaa !5
  store i32 0, ptr %k, align 4, !tbaa !5
  br label %for.cond22

for.cond22:                                       ; preds = %for.inc39, %for.body16
  %9 = load i32, ptr %k, align 4, !tbaa !5
  %cmp24 = icmp slt i32 %9, %sub
  br i1 %cmp24, label %for.body25, label %for.end41

for.body25:                                       ; preds = %for.cond22
  %10 = load i32, ptr %arrayidx21, align 4, !tbaa !5
  %idxprom30 = sext i32 %9 to i64
  %arrayidx31 = getelementptr inbounds [100 x i32], ptr %arrayidx18, i64 0, i64 %idxprom30
  %11 = load i32, ptr %arrayidx31, align 4, !tbaa !5
  %cmp32 = icmp sgt i32 %10, %11
  br i1 %cmp32, label %if.then, label %if.end

if.then:                                          ; preds = %for.body25
  store i32 %11, ptr %arrayidx21, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body25
  br label %for.inc39

for.inc39:                                        ; preds = %if.end
  %inc40 = add nsw i32 %9, 1
  store i32 %inc40, ptr %k, align 4, !tbaa !5
  br label %for.cond22, !llvm.loop !13

for.end41:                                        ; preds = %for.cond22
  br label %for.inc42

for.inc42:                                        ; preds = %for.end41
  %inc43 = add nsw i32 %7, 1
  store i32 %inc43, ptr %m, align 4, !tbaa !5
  br label %for.cond14, !llvm.loop !14

for.end44:                                        ; preds = %for.cond14
  store i32 0, ptr %z, align 4, !tbaa !5
  br label %for.cond45

for.cond45:                                       ; preds = %for.inc67, %for.end44
  %12 = load i32, ptr %z, align 4, !tbaa !5
  %cmp47 = icmp slt i32 %12, %sub
  br i1 %cmp47, label %for.body48, label %for.end69

for.body48:                                       ; preds = %for.cond45
  store i32 0, ptr %x, align 4, !tbaa !5
  br label %for.cond49

for.cond49:                                       ; preds = %for.inc64, %for.body48
  %13 = load i32, ptr %x, align 4, !tbaa !5
  %cmp51 = icmp slt i32 %13, %sub
  br i1 %cmp51, label %for.body52, label %for.end66

for.body52:                                       ; preds = %for.cond49
  %idxprom53 = sext i32 %12 to i64
  %arrayidx54 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom53
  %idxprom55 = sext i32 %13 to i64
  %arrayidx56 = getelementptr inbounds [100 x i32], ptr %arrayidx54, i64 0, i64 %idxprom55
  %14 = load i32, ptr %arrayidx56, align 4, !tbaa !5
  %arrayidx58 = getelementptr inbounds [100 x i32], ptr %min1, i64 0, i64 %idxprom53
  %15 = load i32, ptr %arrayidx58, align 4, !tbaa !5
  %sub59 = sub nsw i32 %14, %15
  store i32 %sub59, ptr %arrayidx56, align 4, !tbaa !5
  br label %for.inc64

for.inc64:                                        ; preds = %for.body52
  %inc65 = add nsw i32 %13, 1
  store i32 %inc65, ptr %x, align 4, !tbaa !5
  br label %for.cond49, !llvm.loop !15

for.end66:                                        ; preds = %for.cond49
  br label %for.inc67

for.inc67:                                        ; preds = %for.end66
  %inc68 = add nsw i32 %12, 1
  store i32 %inc68, ptr %z, align 4, !tbaa !5
  br label %for.cond45, !llvm.loop !16

for.end69:                                        ; preds = %for.cond45
  store i32 0, ptr %m, align 4, !tbaa !5
  br label %for.cond70

for.cond70:                                       ; preds = %for.inc101, %for.end69
  %16 = load i32, ptr %m, align 4, !tbaa !5
  %cmp72 = icmp slt i32 %16, %sub
  br i1 %cmp72, label %for.body73, label %for.end103

for.body73:                                       ; preds = %for.cond70
  %idxprom75 = sext i32 %16 to i64
  %arrayidx76 = getelementptr inbounds [100 x i32], ptr %a, i64 0, i64 %idxprom75
  %17 = load i32, ptr %arrayidx76, align 4, !tbaa !5
  %arrayidx78 = getelementptr inbounds [100 x i32], ptr %min2, i64 0, i64 %idxprom75
  store i32 %17, ptr %arrayidx78, align 4, !tbaa !5
  store i32 0, ptr %k, align 4, !tbaa !5
  br label %for.cond79

for.cond79:                                       ; preds = %for.inc98, %for.body73
  %18 = load i32, ptr %k, align 4, !tbaa !5
  %cmp81 = icmp slt i32 %18, %sub
  br i1 %cmp81, label %for.body82, label %for.end100

for.body82:                                       ; preds = %for.cond79
  %19 = load i32, ptr %arrayidx78, align 4, !tbaa !5
  %idxprom85 = sext i32 %18 to i64
  %arrayidx86 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom85
  %arrayidx88 = getelementptr inbounds [100 x i32], ptr %arrayidx86, i64 0, i64 %idxprom75
  %20 = load i32, ptr %arrayidx88, align 4, !tbaa !5
  %cmp89 = icmp sgt i32 %19, %20
  br i1 %cmp89, label %if.then90, label %if.end97

if.then90:                                        ; preds = %for.body82
  store i32 %20, ptr %arrayidx78, align 4, !tbaa !5
  br label %if.end97

if.end97:                                         ; preds = %if.then90, %for.body82
  br label %for.inc98

for.inc98:                                        ; preds = %if.end97
  %inc99 = add nsw i32 %18, 1
  store i32 %inc99, ptr %k, align 4, !tbaa !5
  br label %for.cond79, !llvm.loop !17

for.end100:                                       ; preds = %for.cond79
  br label %for.inc101

for.inc101:                                       ; preds = %for.end100
  %inc102 = add nsw i32 %16, 1
  store i32 %inc102, ptr %m, align 4, !tbaa !5
  br label %for.cond70, !llvm.loop !18

for.end103:                                       ; preds = %for.cond70
  store i32 0, ptr %z, align 4, !tbaa !5
  br label %for.cond104

for.cond104:                                      ; preds = %for.inc126, %for.end103
  %21 = load i32, ptr %z, align 4, !tbaa !5
  %cmp106 = icmp slt i32 %21, %sub
  br i1 %cmp106, label %for.body107, label %for.end128

for.body107:                                      ; preds = %for.cond104
  store i32 0, ptr %x, align 4, !tbaa !5
  br label %for.cond108

for.cond108:                                      ; preds = %for.inc123, %for.body107
  %22 = load i32, ptr %x, align 4, !tbaa !5
  %cmp110 = icmp slt i32 %22, %sub
  br i1 %cmp110, label %for.body111, label %for.end125

for.body111:                                      ; preds = %for.cond108
  %idxprom112 = sext i32 %21 to i64
  %arrayidx113 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom112
  %idxprom114 = sext i32 %22 to i64
  %arrayidx115 = getelementptr inbounds [100 x i32], ptr %arrayidx113, i64 0, i64 %idxprom114
  %23 = load i32, ptr %arrayidx115, align 4, !tbaa !5
  %arrayidx117 = getelementptr inbounds [100 x i32], ptr %min2, i64 0, i64 %idxprom114
  %24 = load i32, ptr %arrayidx117, align 4, !tbaa !5
  %sub118 = sub nsw i32 %23, %24
  store i32 %sub118, ptr %arrayidx115, align 4, !tbaa !5
  br label %for.inc123

for.inc123:                                       ; preds = %for.body111
  %inc124 = add nsw i32 %22, 1
  store i32 %inc124, ptr %x, align 4, !tbaa !5
  br label %for.cond108, !llvm.loop !19

for.end125:                                       ; preds = %for.cond108
  br label %for.inc126

for.inc126:                                       ; preds = %for.end125
  %inc127 = add nsw i32 %21, 1
  store i32 %inc127, ptr %z, align 4, !tbaa !5
  br label %for.cond104, !llvm.loop !20

for.end128:                                       ; preds = %for.cond104
  %25 = load i32, ptr %sum, align 4, !tbaa !5
  %arrayidx129 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 1
  %arrayidx130 = getelementptr inbounds [100 x i32], ptr %arrayidx129, i64 0, i64 1
  %26 = load i32, ptr %arrayidx130, align 4, !tbaa !5
  %add = add nsw i32 %25, %26
  store i32 %add, ptr %sum, align 4, !tbaa !5
  store i32 0, ptr %z, align 4, !tbaa !5
  br label %for.cond131

for.cond131:                                      ; preds = %for.inc151, %for.end128
  %27 = load i32, ptr %z, align 4, !tbaa !5
  %cmp133 = icmp slt i32 %27, %sub
  br i1 %cmp133, label %for.body134, label %for.end153

for.body134:                                      ; preds = %for.cond131
  store i32 1, ptr %m, align 4, !tbaa !5
  br label %for.cond135

for.cond135:                                      ; preds = %for.inc148, %for.body134
  %28 = load i32, ptr %m, align 4, !tbaa !5
  %cmp137 = icmp slt i32 %28, %sub
  br i1 %cmp137, label %for.body138, label %for.end150

for.body138:                                      ; preds = %for.cond135
  %idxprom139 = sext i32 %27 to i64
  %arrayidx140 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom139
  %add141 = add nsw i32 %28, 1
  %idxprom142 = sext i32 %add141 to i64
  %arrayidx143 = getelementptr inbounds [100 x i32], ptr %arrayidx140, i64 0, i64 %idxprom142
  %29 = load i32, ptr %arrayidx143, align 4, !tbaa !5, !invariant.load !21
  %idxprom146 = sext i32 %28 to i64
  %arrayidx147 = getelementptr inbounds [100 x i32], ptr %arrayidx140, i64 0, i64 %idxprom146
  store i32 %29, ptr %arrayidx147, align 4, !tbaa !5
  br label %for.inc148

for.inc148:                                       ; preds = %for.body138
  store i32 %add141, ptr %m, align 4, !tbaa !5
  br label %for.cond135, !llvm.loop !22

for.end150:                                       ; preds = %for.cond135
  br label %for.inc151

for.inc151:                                       ; preds = %for.end150
  %inc152 = add nsw i32 %27, 1
  store i32 %inc152, ptr %z, align 4, !tbaa !5
  br label %for.cond131, !llvm.loop !23

for.end153:                                       ; preds = %for.cond131
  store i32 0, ptr %z, align 4, !tbaa !5
  br label %for.cond154

for.cond154:                                      ; preds = %for.inc174, %for.end153
  %30 = load i32, ptr %z, align 4, !tbaa !5
  %cmp156 = icmp slt i32 %30, %sub
  br i1 %cmp156, label %for.body157, label %for.end176

for.body157:                                      ; preds = %for.cond154
  store i32 1, ptr %m, align 4, !tbaa !5
  br label %for.cond158

for.cond158:                                      ; preds = %for.inc171, %for.body157
  %31 = load i32, ptr %m, align 4, !tbaa !5
  %cmp160 = icmp slt i32 %31, %sub
  br i1 %cmp160, label %for.body161, label %for.end173

for.body161:                                      ; preds = %for.cond158
  %add162 = add nsw i32 %31, 1
  %idxprom163 = sext i32 %add162 to i64
  %arrayidx164 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom163
  %idxprom165 = sext i32 %30 to i64
  %arrayidx166 = getelementptr inbounds [100 x i32], ptr %arrayidx164, i64 0, i64 %idxprom165
  %32 = load i32, ptr %arrayidx166, align 4, !tbaa !5, !invariant.load !21
  %idxprom167 = sext i32 %31 to i64
  %arrayidx168 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom167
  %arrayidx170 = getelementptr inbounds [100 x i32], ptr %arrayidx168, i64 0, i64 %idxprom165
  store i32 %32, ptr %arrayidx170, align 4, !tbaa !5
  br label %for.inc171

for.inc171:                                       ; preds = %for.body161
  store i32 %add162, ptr %m, align 4, !tbaa !5
  br label %for.cond158, !llvm.loop !24

for.end173:                                       ; preds = %for.cond158
  br label %for.inc174

for.inc174:                                       ; preds = %for.end173
  %inc175 = add nsw i32 %30, 1
  store i32 %inc175, ptr %z, align 4, !tbaa !5
  br label %for.cond154, !llvm.loop !25

for.end176:                                       ; preds = %for.cond154
  %inc177 = add nsw i32 %6, 1
  store i32 %inc177, ptr %p, align 4, !tbaa !5
  br label %while.cond, !llvm.loop !26

while.end:                                        ; preds = %while.cond
  %33 = load i32, ptr %sum, align 4, !tbaa !5
  %call178 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %33)
  br label %for.inc179

for.inc179:                                       ; preds = %while.end
  %inc180 = add nsw i32 %0, 1
  store i32 %inc180, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !27

for.end181:                                       ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 400, ptr noundef %min2) #4
  call void @llvm.lifetime.end.p0(i64 noundef 400, ptr noundef %min1) #4
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %p) #4
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %x) #4
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %z) #4
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %m) #4
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %k) #4
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %j) #4
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %i) #4
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %sum) #4
  call void @llvm.lifetime.end.p0(i64 noundef 40000, ptr noundef %a) #4
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %n) #4
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
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
!21 = !{}
!22 = distinct !{!22, !10, !11}
!23 = distinct !{!23, !10, !11}
!24 = distinct !{!24, !10, !11}
!25 = distinct !{!25, !10, !11}
!26 = distinct !{!26, !10, !11}
!27 = distinct !{!27, !10, !11}
