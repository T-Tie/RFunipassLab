; ModuleID = '/tmp/tmp05_gb11e.cpp'
source_filename = "/tmp/tmp05_gb11e.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%d%d%d\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"YES\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"NO\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %f = alloca i32, align 4
  %year = alloca [200 x i32], align 16
  %mon1 = alloca [200 x i32], align 16
  %day = alloca i32, align 4
  %mon2 = alloca [200 x i32], align 16
  %t1 = alloca i32, align 4
  %t2 = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4, !tbaa !5
  store ptr %argv, ptr %argv.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %f) #3
  call void @llvm.lifetime.start.p0(i64 800, ptr %year) #3
  call void @llvm.lifetime.start.p0(i64 800, ptr %mon1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %day) #3
  call void @llvm.lifetime.start.p0(i64 800, ptr %mon2) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %t1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %t2) #3
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %n)
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
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
  br label %for.cond, !llvm.loop !13

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc84, %for.end
  %6 = load i32, ptr %i, align 4, !tbaa !5
  %7 = load i32, ptr %n, align 4, !tbaa !5
  %cmp7 = icmp slt i32 %6, %7
  br i1 %cmp7, label %for.body8, label %for.end86

for.body8:                                        ; preds = %for.cond6
  %8 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom9 = sext i32 %8 to i64
  %arrayidx10 = getelementptr inbounds [200 x i32], ptr %year, i64 0, i64 %idxprom9
  %9 = load i32, ptr %arrayidx10, align 4, !tbaa !5
  %rem = srem i32 %9, 4
  %cmp11 = icmp eq i32 %rem, 0
  br i1 %cmp11, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %for.body8
  %10 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom12 = sext i32 %10 to i64
  %arrayidx13 = getelementptr inbounds [200 x i32], ptr %year, i64 0, i64 %idxprom12
  %11 = load i32, ptr %arrayidx13, align 4, !tbaa !5
  %rem14 = srem i32 %11, 100
  %cmp15 = icmp ne i32 %rem14, 0
  br i1 %cmp15, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %for.body8
  %12 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom16 = sext i32 %12 to i64
  %arrayidx17 = getelementptr inbounds [200 x i32], ptr %year, i64 0, i64 %idxprom16
  %13 = load i32, ptr %arrayidx17, align 4, !tbaa !5
  %rem18 = srem i32 %13, 400
  %cmp19 = icmp eq i32 %rem18, 0
  br i1 %cmp19, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  store i32 29, ptr %f, align 4, !tbaa !5
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  store i32 28, ptr %f, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  store i32 0, ptr %t1, align 4, !tbaa !5
  store i32 0, ptr %t2, align 4, !tbaa !5
  store i32 1, ptr %j, align 4, !tbaa !5
  br label %for.cond20

for.cond20:                                       ; preds = %for.inc43, %if.end
  %14 = load i32, ptr %j, align 4, !tbaa !5
  %15 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom21 = sext i32 %15 to i64
  %arrayidx22 = getelementptr inbounds [200 x i32], ptr %mon1, i64 0, i64 %idxprom21
  %16 = load i32, ptr %arrayidx22, align 4, !tbaa !5
  %cmp23 = icmp slt i32 %14, %16
  br i1 %cmp23, label %for.body24, label %for.end45

for.body24:                                       ; preds = %for.cond20
  %17 = load i32, ptr %j, align 4, !tbaa !5
  %cmp25 = icmp eq i32 %17, 1
  br i1 %cmp25, label %if.then36, label %lor.lhs.false26

lor.lhs.false26:                                  ; preds = %for.body24
  %18 = load i32, ptr %j, align 4, !tbaa !5
  %cmp27 = icmp eq i32 %18, 3
  br i1 %cmp27, label %if.then36, label %lor.lhs.false28

lor.lhs.false28:                                  ; preds = %lor.lhs.false26
  %19 = load i32, ptr %j, align 4, !tbaa !5
  %cmp29 = icmp eq i32 %19, 5
  br i1 %cmp29, label %if.then36, label %lor.lhs.false30

lor.lhs.false30:                                  ; preds = %lor.lhs.false28
  %20 = load i32, ptr %j, align 4, !tbaa !5
  %cmp31 = icmp eq i32 %20, 7
  br i1 %cmp31, label %if.then36, label %lor.lhs.false32

lor.lhs.false32:                                  ; preds = %lor.lhs.false30
  %21 = load i32, ptr %j, align 4, !tbaa !5
  %cmp33 = icmp eq i32 %21, 8
  br i1 %cmp33, label %if.then36, label %lor.lhs.false34

lor.lhs.false34:                                  ; preds = %lor.lhs.false32
  %22 = load i32, ptr %j, align 4, !tbaa !5
  %cmp35 = icmp eq i32 %22, 10
  br i1 %cmp35, label %if.then36, label %if.else37

if.then36:                                        ; preds = %lor.lhs.false34, %lor.lhs.false32, %lor.lhs.false30, %lor.lhs.false28, %lor.lhs.false26, %for.body24
  store i32 31, ptr %day, align 4, !tbaa !5
  br label %if.end42

if.else37:                                        ; preds = %lor.lhs.false34
  %23 = load i32, ptr %j, align 4, !tbaa !5
  %cmp38 = icmp eq i32 %23, 2
  br i1 %cmp38, label %if.then39, label %if.else40

if.then39:                                        ; preds = %if.else37
  %24 = load i32, ptr %f, align 4, !tbaa !5
  store i32 %24, ptr %day, align 4, !tbaa !5
  br label %if.end41

if.else40:                                        ; preds = %if.else37
  store i32 30, ptr %day, align 4, !tbaa !5
  br label %if.end41

if.end41:                                         ; preds = %if.else40, %if.then39
  br label %if.end42

if.end42:                                         ; preds = %if.end41, %if.then36
  %25 = load i32, ptr %t1, align 4, !tbaa !5
  %26 = load i32, ptr %day, align 4, !tbaa !5
  %add = add nsw i32 %25, %26
  store i32 %add, ptr %t1, align 4, !tbaa !5
  br label %for.inc43

for.inc43:                                        ; preds = %if.end42
  %27 = load i32, ptr %j, align 4, !tbaa !5
  %inc44 = add nsw i32 %27, 1
  store i32 %inc44, ptr %j, align 4, !tbaa !5
  br label %for.cond20, !llvm.loop !16

for.end45:                                        ; preds = %for.cond20
  store i32 1, ptr %k, align 4, !tbaa !5
  br label %for.cond46

for.cond46:                                       ; preds = %for.inc70, %for.end45
  %28 = load i32, ptr %k, align 4, !tbaa !5
  %29 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom47 = sext i32 %29 to i64
  %arrayidx48 = getelementptr inbounds [200 x i32], ptr %mon2, i64 0, i64 %idxprom47
  %30 = load i32, ptr %arrayidx48, align 4, !tbaa !5
  %cmp49 = icmp slt i32 %28, %30
  br i1 %cmp49, label %for.body50, label %for.end72

for.body50:                                       ; preds = %for.cond46
  %31 = load i32, ptr %k, align 4, !tbaa !5
  %cmp51 = icmp eq i32 %31, 1
  br i1 %cmp51, label %if.then62, label %lor.lhs.false52

lor.lhs.false52:                                  ; preds = %for.body50
  %32 = load i32, ptr %k, align 4, !tbaa !5
  %cmp53 = icmp eq i32 %32, 3
  br i1 %cmp53, label %if.then62, label %lor.lhs.false54

lor.lhs.false54:                                  ; preds = %lor.lhs.false52
  %33 = load i32, ptr %k, align 4, !tbaa !5
  %cmp55 = icmp eq i32 %33, 5
  br i1 %cmp55, label %if.then62, label %lor.lhs.false56

lor.lhs.false56:                                  ; preds = %lor.lhs.false54
  %34 = load i32, ptr %k, align 4, !tbaa !5
  %cmp57 = icmp eq i32 %34, 7
  br i1 %cmp57, label %if.then62, label %lor.lhs.false58

lor.lhs.false58:                                  ; preds = %lor.lhs.false56
  %35 = load i32, ptr %k, align 4, !tbaa !5
  %cmp59 = icmp eq i32 %35, 8
  br i1 %cmp59, label %if.then62, label %lor.lhs.false60

lor.lhs.false60:                                  ; preds = %lor.lhs.false58
  %36 = load i32, ptr %k, align 4, !tbaa !5
  %cmp61 = icmp eq i32 %36, 10
  br i1 %cmp61, label %if.then62, label %if.else63

if.then62:                                        ; preds = %lor.lhs.false60, %lor.lhs.false58, %lor.lhs.false56, %lor.lhs.false54, %lor.lhs.false52, %for.body50
  store i32 31, ptr %day, align 4, !tbaa !5
  br label %if.end68

if.else63:                                        ; preds = %lor.lhs.false60
  %37 = load i32, ptr %k, align 4, !tbaa !5
  %cmp64 = icmp eq i32 %37, 2
  br i1 %cmp64, label %if.then65, label %if.else66

if.then65:                                        ; preds = %if.else63
  %38 = load i32, ptr %f, align 4, !tbaa !5
  store i32 %38, ptr %day, align 4, !tbaa !5
  br label %if.end67

if.else66:                                        ; preds = %if.else63
  store i32 30, ptr %day, align 4, !tbaa !5
  br label %if.end67

if.end67:                                         ; preds = %if.else66, %if.then65
  br label %if.end68

if.end68:                                         ; preds = %if.end67, %if.then62
  %39 = load i32, ptr %t2, align 4, !tbaa !5
  %40 = load i32, ptr %day, align 4, !tbaa !5
  %add69 = add nsw i32 %39, %40
  store i32 %add69, ptr %t2, align 4, !tbaa !5
  br label %for.inc70

for.inc70:                                        ; preds = %if.end68
  %41 = load i32, ptr %k, align 4, !tbaa !5
  %inc71 = add nsw i32 %41, 1
  store i32 %inc71, ptr %k, align 4, !tbaa !5
  br label %for.cond46, !llvm.loop !17

for.end72:                                        ; preds = %for.cond46
  %42 = load i32, ptr %t2, align 4, !tbaa !5
  %43 = load i32, ptr %t1, align 4, !tbaa !5
  %sub = sub nsw i32 %42, %43
  %rem73 = srem i32 %sub, 7
  %cmp74 = icmp eq i32 %rem73, 0
  br i1 %cmp74, label %if.then79, label %lor.lhs.false75

lor.lhs.false75:                                  ; preds = %for.end72
  %44 = load i32, ptr %t1, align 4, !tbaa !5
  %45 = load i32, ptr %t2, align 4, !tbaa !5
  %sub76 = sub nsw i32 %44, %45
  %rem77 = srem i32 %sub76, 7
  %cmp78 = icmp eq i32 %rem77, 0
  br i1 %cmp78, label %if.then79, label %if.else81

if.then79:                                        ; preds = %lor.lhs.false75, %for.end72
  %call80 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %if.end83

if.else81:                                        ; preds = %lor.lhs.false75
  %call82 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  br label %if.end83

if.end83:                                         ; preds = %if.else81, %if.then79
  br label %for.inc84

for.inc84:                                        ; preds = %if.end83
  %46 = load i32, ptr %i, align 4, !tbaa !5
  %inc85 = add nsw i32 %46, 1
  store i32 %inc85, ptr %i, align 4, !tbaa !5
  br label %for.cond6, !llvm.loop !18

for.end86:                                        ; preds = %for.cond6
  call void @llvm.lifetime.end.p0(i64 4, ptr %t2) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %t1) #3
  call void @llvm.lifetime.end.p0(i64 800, ptr %mon2) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %day) #3
  call void @llvm.lifetime.end.p0(i64 800, ptr %mon1) #3
  call void @llvm.lifetime.end.p0(i64 800, ptr %year) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %f) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #3
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
!9 = !{!10, !10, i64 0}
!10 = !{!"p2 omnipotent char", !11, i64 0}
!11 = !{!"any p2 pointer", !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = distinct !{!13, !14, !15}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{!"llvm.loop.unroll.disable"}
!16 = distinct !{!16, !14, !15}
!17 = distinct !{!17, !14, !15}
!18 = distinct !{!18, !14, !15}
