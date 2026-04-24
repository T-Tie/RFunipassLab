; ModuleID = '/tmp/tmpwu_043ye.cpp'
source_filename = "/tmp/tmpwu_043ye.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [7 x i8] c"%d%c%d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%d+%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"No\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %m = alloca i32, align 4
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %max = alloca i32, align 4
  %min = alloca i32, align 4
  %f = alloca i32, align 4
  %c = alloca i8, align 1
  %s = alloca [8 x [8 x i32]], align 16
  %djl = alloca [8 x i32], align 16
  %djh = alloca [8 x i32], align 16
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %m) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %max) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %min) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %f) #3
  store i32 1, ptr %f, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #3
  call void @llvm.lifetime.start.p0(i64 256, ptr %s) #3
  call void @llvm.lifetime.start.p0(i64 32, ptr %djl) #3
  call void @llvm.lifetime.start.p0(i64 32, ptr %djh) #3
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %m, ptr noundef %c, ptr noundef %n)
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %m, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, ptr %j, align 4, !tbaa !5
  %3 = load i32, ptr %n, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %4 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [8 x [8 x i32]], ptr %s, i64 0, i64 %idxprom
  %5 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom4 = sext i32 %5 to i64
  %arrayidx5 = getelementptr inbounds [8 x i32], ptr %arrayidx, i64 0, i64 %idxprom4
  %call6 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.1, ptr noundef %arrayidx5)
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %6 = load i32, ptr %j, align 4, !tbaa !5
  %inc = add nsw i32 %6, 1
  store i32 %inc, ptr %j, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !9

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %7 = load i32, ptr %i, align 4, !tbaa !5
  %inc8 = add nsw i32 %7, 1
  store i32 %inc8, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !12

for.end9:                                         ; preds = %for.cond
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc35, %for.end9
  %8 = load i32, ptr %i, align 4, !tbaa !5
  %9 = load i32, ptr %m, align 4, !tbaa !5
  %cmp11 = icmp slt i32 %8, %9
  br i1 %cmp11, label %for.body12, label %for.end37

for.body12:                                       ; preds = %for.cond10
  %10 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom13 = sext i32 %10 to i64
  %arrayidx14 = getelementptr inbounds [8 x [8 x i32]], ptr %s, i64 0, i64 %idxprom13
  %arrayidx15 = getelementptr inbounds [8 x i32], ptr %arrayidx14, i64 0, i64 0
  %11 = load i32, ptr %arrayidx15, align 16, !tbaa !5
  store i32 %11, ptr %max, align 4, !tbaa !5
  %12 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom16 = sext i32 %12 to i64
  %arrayidx17 = getelementptr inbounds [8 x i32], ptr %djl, i64 0, i64 %idxprom16
  store i32 0, ptr %arrayidx17, align 4, !tbaa !5
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond18

for.cond18:                                       ; preds = %for.inc32, %for.body12
  %13 = load i32, ptr %j, align 4, !tbaa !5
  %14 = load i32, ptr %n, align 4, !tbaa !5
  %cmp19 = icmp slt i32 %13, %14
  br i1 %cmp19, label %for.body20, label %for.end34

for.body20:                                       ; preds = %for.cond18
  %15 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom21 = sext i32 %15 to i64
  %arrayidx22 = getelementptr inbounds [8 x [8 x i32]], ptr %s, i64 0, i64 %idxprom21
  %16 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom23 = sext i32 %16 to i64
  %arrayidx24 = getelementptr inbounds [8 x i32], ptr %arrayidx22, i64 0, i64 %idxprom23
  %17 = load i32, ptr %arrayidx24, align 4, !tbaa !5
  %18 = load i32, ptr %max, align 4, !tbaa !5
  %cmp25 = icmp sgt i32 %17, %18
  br i1 %cmp25, label %if.then, label %if.end

if.then:                                          ; preds = %for.body20
  %19 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom26 = sext i32 %19 to i64
  %arrayidx27 = getelementptr inbounds [8 x [8 x i32]], ptr %s, i64 0, i64 %idxprom26
  %20 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom28 = sext i32 %20 to i64
  %arrayidx29 = getelementptr inbounds [8 x i32], ptr %arrayidx27, i64 0, i64 %idxprom28
  %21 = load i32, ptr %arrayidx29, align 4, !tbaa !5
  store i32 %21, ptr %max, align 4, !tbaa !5
  %22 = load i32, ptr %j, align 4, !tbaa !5
  %23 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom30 = sext i32 %23 to i64
  %arrayidx31 = getelementptr inbounds [8 x i32], ptr %djl, i64 0, i64 %idxprom30
  store i32 %22, ptr %arrayidx31, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body20
  br label %for.inc32

for.inc32:                                        ; preds = %if.end
  %24 = load i32, ptr %j, align 4, !tbaa !5
  %inc33 = add nsw i32 %24, 1
  store i32 %inc33, ptr %j, align 4, !tbaa !5
  br label %for.cond18, !llvm.loop !13

for.end34:                                        ; preds = %for.cond18
  br label %for.inc35

for.inc35:                                        ; preds = %for.end34
  %25 = load i32, ptr %i, align 4, !tbaa !5
  %inc36 = add nsw i32 %25, 1
  store i32 %inc36, ptr %i, align 4, !tbaa !5
  br label %for.cond10, !llvm.loop !14

for.end37:                                        ; preds = %for.cond10
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond38

for.cond38:                                       ; preds = %for.inc65, %for.end37
  %26 = load i32, ptr %j, align 4, !tbaa !5
  %27 = load i32, ptr %n, align 4, !tbaa !5
  %cmp39 = icmp slt i32 %26, %27
  br i1 %cmp39, label %for.body40, label %for.end67

for.body40:                                       ; preds = %for.cond38
  %arrayidx41 = getelementptr inbounds [8 x [8 x i32]], ptr %s, i64 0, i64 0
  %28 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom42 = sext i32 %28 to i64
  %arrayidx43 = getelementptr inbounds [8 x i32], ptr %arrayidx41, i64 0, i64 %idxprom42
  %29 = load i32, ptr %arrayidx43, align 4, !tbaa !5
  store i32 %29, ptr %min, align 4, !tbaa !5
  %30 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom44 = sext i32 %30 to i64
  %arrayidx45 = getelementptr inbounds [8 x i32], ptr %djh, i64 0, i64 %idxprom44
  store i32 0, ptr %arrayidx45, align 4, !tbaa !5
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond46

for.cond46:                                       ; preds = %for.inc62, %for.body40
  %31 = load i32, ptr %i, align 4, !tbaa !5
  %32 = load i32, ptr %m, align 4, !tbaa !5
  %cmp47 = icmp slt i32 %31, %32
  br i1 %cmp47, label %for.body48, label %for.end64

for.body48:                                       ; preds = %for.cond46
  %33 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom49 = sext i32 %33 to i64
  %arrayidx50 = getelementptr inbounds [8 x [8 x i32]], ptr %s, i64 0, i64 %idxprom49
  %34 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom51 = sext i32 %34 to i64
  %arrayidx52 = getelementptr inbounds [8 x i32], ptr %arrayidx50, i64 0, i64 %idxprom51
  %35 = load i32, ptr %arrayidx52, align 4, !tbaa !5
  %36 = load i32, ptr %min, align 4, !tbaa !5
  %cmp53 = icmp slt i32 %35, %36
  br i1 %cmp53, label %if.then54, label %if.end61

if.then54:                                        ; preds = %for.body48
  %37 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom55 = sext i32 %37 to i64
  %arrayidx56 = getelementptr inbounds [8 x [8 x i32]], ptr %s, i64 0, i64 %idxprom55
  %38 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom57 = sext i32 %38 to i64
  %arrayidx58 = getelementptr inbounds [8 x i32], ptr %arrayidx56, i64 0, i64 %idxprom57
  %39 = load i32, ptr %arrayidx58, align 4, !tbaa !5
  store i32 %39, ptr %min, align 4, !tbaa !5
  %40 = load i32, ptr %i, align 4, !tbaa !5
  %41 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom59 = sext i32 %41 to i64
  %arrayidx60 = getelementptr inbounds [8 x i32], ptr %djh, i64 0, i64 %idxprom59
  store i32 %40, ptr %arrayidx60, align 4, !tbaa !5
  br label %if.end61

if.end61:                                         ; preds = %if.then54, %for.body48
  br label %for.inc62

for.inc62:                                        ; preds = %if.end61
  %42 = load i32, ptr %i, align 4, !tbaa !5
  %inc63 = add nsw i32 %42, 1
  store i32 %inc63, ptr %i, align 4, !tbaa !5
  br label %for.cond46, !llvm.loop !15

for.end64:                                        ; preds = %for.cond46
  br label %for.inc65

for.inc65:                                        ; preds = %for.end64
  %43 = load i32, ptr %j, align 4, !tbaa !5
  %inc66 = add nsw i32 %43, 1
  store i32 %inc66, ptr %j, align 4, !tbaa !5
  br label %for.cond38, !llvm.loop !16

for.end67:                                        ; preds = %for.cond38
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond68

for.cond68:                                       ; preds = %for.inc86, %for.end67
  %44 = load i32, ptr %i, align 4, !tbaa !5
  %45 = load i32, ptr %m, align 4, !tbaa !5
  %cmp69 = icmp slt i32 %44, %45
  br i1 %cmp69, label %for.body70, label %for.end88

for.body70:                                       ; preds = %for.cond68
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond71

for.cond71:                                       ; preds = %for.inc83, %for.body70
  %46 = load i32, ptr %j, align 4, !tbaa !5
  %47 = load i32, ptr %n, align 4, !tbaa !5
  %cmp72 = icmp slt i32 %46, %47
  br i1 %cmp72, label %for.body73, label %for.end85

for.body73:                                       ; preds = %for.cond71
  %48 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom74 = sext i32 %48 to i64
  %arrayidx75 = getelementptr inbounds [8 x i32], ptr %djl, i64 0, i64 %idxprom74
  %49 = load i32, ptr %arrayidx75, align 4, !tbaa !5
  %50 = load i32, ptr %j, align 4, !tbaa !5
  %cmp76 = icmp eq i32 %49, %50
  br i1 %cmp76, label %land.lhs.true, label %if.end82

land.lhs.true:                                    ; preds = %for.body73
  %51 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom77 = sext i32 %51 to i64
  %arrayidx78 = getelementptr inbounds [8 x i32], ptr %djh, i64 0, i64 %idxprom77
  %52 = load i32, ptr %arrayidx78, align 4, !tbaa !5
  %53 = load i32, ptr %i, align 4, !tbaa !5
  %cmp79 = icmp eq i32 %52, %53
  br i1 %cmp79, label %if.then80, label %if.end82

if.then80:                                        ; preds = %land.lhs.true
  %54 = load i32, ptr %i, align 4, !tbaa !5
  %55 = load i32, ptr %j, align 4, !tbaa !5
  %call81 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %54, i32 noundef %55)
  store i32 0, ptr %f, align 4, !tbaa !5
  br label %if.end82

if.end82:                                         ; preds = %if.then80, %land.lhs.true, %for.body73
  br label %for.inc83

for.inc83:                                        ; preds = %if.end82
  %56 = load i32, ptr %j, align 4, !tbaa !5
  %inc84 = add nsw i32 %56, 1
  store i32 %inc84, ptr %j, align 4, !tbaa !5
  br label %for.cond71, !llvm.loop !17

for.end85:                                        ; preds = %for.cond71
  br label %for.inc86

for.inc86:                                        ; preds = %for.end85
  %57 = load i32, ptr %i, align 4, !tbaa !5
  %inc87 = add nsw i32 %57, 1
  store i32 %inc87, ptr %i, align 4, !tbaa !5
  br label %for.cond68, !llvm.loop !18

for.end88:                                        ; preds = %for.cond68
  %58 = load i32, ptr %f, align 4, !tbaa !5
  %tobool = icmp ne i32 %58, 0
  br i1 %tobool, label %if.then89, label %if.end91

if.then89:                                        ; preds = %for.end88
  %call90 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  br label %if.end91

if.end91:                                         ; preds = %if.then89, %for.end88
  call void @llvm.lifetime.end.p0(i64 32, ptr %djh) #3
  call void @llvm.lifetime.end.p0(i64 32, ptr %djl) #3
  call void @llvm.lifetime.end.p0(i64 256, ptr %s) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %f) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %min) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %max) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %m) #3
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
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11}
!18 = distinct !{!18, !10, !11}
