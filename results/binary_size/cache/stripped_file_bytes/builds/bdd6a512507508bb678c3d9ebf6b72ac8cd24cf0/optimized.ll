; ModuleID = '/tmp/tmpbaafirbd.cpp'
source_filename = "/tmp/tmpbaafirbd.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %a = alloca [100 x [100 x i32]], align 16
  %m1 = alloca i32, align 4
  %n1 = alloca i32, align 4
  %m2 = alloca i32, align 4
  %n2 = alloca i32, align 4
  %t = alloca i32, align 4
  %S = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #3
  call void @llvm.lifetime.start.p0(i64 40000, ptr %a) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %m1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %n1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %m2) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %n2) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %t) #3
  store i32 0, ptr %t, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %S) #3
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %n)
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %n, align 4, !tbaa !5
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
  %arrayidx = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom
  %5 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom4 = sext i32 %5 to i64
  %arrayidx5 = getelementptr inbounds [100 x i32], ptr %arrayidx, i64 0, i64 %idxprom4
  %call6 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arrayidx5)
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

for.cond10:                                       ; preds = %for.inc46, %for.end9
  %8 = load i32, ptr %i, align 4, !tbaa !5
  %9 = load i32, ptr %n, align 4, !tbaa !5
  %cmp11 = icmp slt i32 %8, %9
  br i1 %cmp11, label %for.body12, label %for.end48

for.body12:                                       ; preds = %for.cond10
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc43, %for.body12
  %10 = load i32, ptr %j, align 4, !tbaa !5
  %11 = load i32, ptr %n, align 4, !tbaa !5
  %cmp14 = icmp slt i32 %10, %11
  br i1 %cmp14, label %for.body15, label %for.end45

for.body15:                                       ; preds = %for.cond13
  %12 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom16 = sext i32 %12 to i64
  %arrayidx17 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom16
  %13 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom18 = sext i32 %13 to i64
  %arrayidx19 = getelementptr inbounds [100 x i32], ptr %arrayidx17, i64 0, i64 %idxprom18
  %14 = load i32, ptr %arrayidx19, align 4, !tbaa !5
  %15 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom20 = sext i32 %15 to i64
  %arrayidx21 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom20
  %16 = load i32, ptr %j, align 4, !tbaa !5
  %add = add nsw i32 %16, 1
  %idxprom22 = sext i32 %add to i64
  %arrayidx23 = getelementptr inbounds [100 x i32], ptr %arrayidx21, i64 0, i64 %idxprom22
  %17 = load i32, ptr %arrayidx23, align 4, !tbaa !5
  %cmp24 = icmp eq i32 %14, %17
  br i1 %cmp24, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body15
  %18 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom25 = sext i32 %18 to i64
  %arrayidx26 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom25
  %19 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom27 = sext i32 %19 to i64
  %arrayidx28 = getelementptr inbounds [100 x i32], ptr %arrayidx26, i64 0, i64 %idxprom27
  %20 = load i32, ptr %arrayidx28, align 4, !tbaa !5
  %21 = load i32, ptr %i, align 4, !tbaa !5
  %add29 = add nsw i32 %21, 1
  %idxprom30 = sext i32 %add29 to i64
  %arrayidx31 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom30
  %22 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom32 = sext i32 %22 to i64
  %arrayidx33 = getelementptr inbounds [100 x i32], ptr %arrayidx31, i64 0, i64 %idxprom32
  %23 = load i32, ptr %arrayidx33, align 4, !tbaa !5
  %cmp34 = icmp eq i32 %20, %23
  br i1 %cmp34, label %land.lhs.true35, label %if.end

land.lhs.true35:                                  ; preds = %land.lhs.true
  %24 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom36 = sext i32 %24 to i64
  %arrayidx37 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom36
  %25 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom38 = sext i32 %25 to i64
  %arrayidx39 = getelementptr inbounds [100 x i32], ptr %arrayidx37, i64 0, i64 %idxprom38
  %26 = load i32, ptr %arrayidx39, align 4, !tbaa !5
  %cmp40 = icmp eq i32 %26, 0
  br i1 %cmp40, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true35
  %27 = load i32, ptr %i, align 4, !tbaa !5
  store i32 %27, ptr %m1, align 4, !tbaa !5
  %28 = load i32, ptr %j, align 4, !tbaa !5
  store i32 %28, ptr %n1, align 4, !tbaa !5
  store i32 1, ptr %t, align 4, !tbaa !5
  br label %for.end45

if.end:                                           ; preds = %land.lhs.true35, %land.lhs.true, %for.body15
  %29 = load i32, ptr %t, align 4, !tbaa !5
  %tobool = icmp ne i32 %29, 0
  br i1 %tobool, label %if.then41, label %if.end42

if.then41:                                        ; preds = %if.end
  br label %for.end45

if.end42:                                         ; preds = %if.end
  br label %for.inc43

for.inc43:                                        ; preds = %if.end42
  %30 = load i32, ptr %j, align 4, !tbaa !5
  %inc44 = add nsw i32 %30, 1
  store i32 %inc44, ptr %j, align 4, !tbaa !5
  br label %for.cond13, !llvm.loop !13

for.end45:                                        ; preds = %if.then41, %if.then, %for.cond13
  br label %for.inc46

for.inc46:                                        ; preds = %for.end45
  %31 = load i32, ptr %i, align 4, !tbaa !5
  %inc47 = add nsw i32 %31, 1
  store i32 %inc47, ptr %i, align 4, !tbaa !5
  br label %for.cond10, !llvm.loop !14

for.end48:                                        ; preds = %for.cond10
  store i32 0, ptr %t, align 4, !tbaa !5
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond49

for.cond49:                                       ; preds = %for.inc89, %for.end48
  %32 = load i32, ptr %j, align 4, !tbaa !5
  %33 = load i32, ptr %n, align 4, !tbaa !5
  %cmp50 = icmp slt i32 %32, %33
  br i1 %cmp50, label %for.body51, label %for.end91

for.body51:                                       ; preds = %for.cond49
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond52

for.cond52:                                       ; preds = %for.inc86, %for.body51
  %34 = load i32, ptr %i, align 4, !tbaa !5
  %35 = load i32, ptr %n, align 4, !tbaa !5
  %cmp53 = icmp slt i32 %34, %35
  br i1 %cmp53, label %for.body54, label %for.end88

for.body54:                                       ; preds = %for.cond52
  %36 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom55 = sext i32 %36 to i64
  %arrayidx56 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom55
  %37 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom57 = sext i32 %37 to i64
  %arrayidx58 = getelementptr inbounds [100 x i32], ptr %arrayidx56, i64 0, i64 %idxprom57
  %38 = load i32, ptr %arrayidx58, align 4, !tbaa !5
  %39 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom59 = sext i32 %39 to i64
  %arrayidx60 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom59
  %40 = load i32, ptr %j, align 4, !tbaa !5
  %sub = sub nsw i32 %40, 1
  %idxprom61 = sext i32 %sub to i64
  %arrayidx62 = getelementptr inbounds [100 x i32], ptr %arrayidx60, i64 0, i64 %idxprom61
  %41 = load i32, ptr %arrayidx62, align 4, !tbaa !5
  %cmp63 = icmp eq i32 %38, %41
  br i1 %cmp63, label %land.lhs.true64, label %if.end82

land.lhs.true64:                                  ; preds = %for.body54
  %42 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom65 = sext i32 %42 to i64
  %arrayidx66 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom65
  %43 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom67 = sext i32 %43 to i64
  %arrayidx68 = getelementptr inbounds [100 x i32], ptr %arrayidx66, i64 0, i64 %idxprom67
  %44 = load i32, ptr %arrayidx68, align 4, !tbaa !5
  %45 = load i32, ptr %i, align 4, !tbaa !5
  %sub69 = sub nsw i32 %45, 1
  %idxprom70 = sext i32 %sub69 to i64
  %arrayidx71 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom70
  %46 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom72 = sext i32 %46 to i64
  %arrayidx73 = getelementptr inbounds [100 x i32], ptr %arrayidx71, i64 0, i64 %idxprom72
  %47 = load i32, ptr %arrayidx73, align 4, !tbaa !5
  %cmp74 = icmp eq i32 %44, %47
  br i1 %cmp74, label %land.lhs.true75, label %if.end82

land.lhs.true75:                                  ; preds = %land.lhs.true64
  %48 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom76 = sext i32 %48 to i64
  %arrayidx77 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom76
  %49 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom78 = sext i32 %49 to i64
  %arrayidx79 = getelementptr inbounds [100 x i32], ptr %arrayidx77, i64 0, i64 %idxprom78
  %50 = load i32, ptr %arrayidx79, align 4, !tbaa !5
  %cmp80 = icmp eq i32 %50, 0
  br i1 %cmp80, label %if.then81, label %if.end82

if.then81:                                        ; preds = %land.lhs.true75
  %51 = load i32, ptr %i, align 4, !tbaa !5
  store i32 %51, ptr %m2, align 4, !tbaa !5
  %52 = load i32, ptr %j, align 4, !tbaa !5
  store i32 %52, ptr %n2, align 4, !tbaa !5
  store i32 1, ptr %t, align 4, !tbaa !5
  br label %for.end88

if.end82:                                         ; preds = %land.lhs.true75, %land.lhs.true64, %for.body54
  %53 = load i32, ptr %t, align 4, !tbaa !5
  %tobool83 = icmp ne i32 %53, 0
  br i1 %tobool83, label %if.then84, label %if.end85

if.then84:                                        ; preds = %if.end82
  br label %for.end88

if.end85:                                         ; preds = %if.end82
  br label %for.inc86

for.inc86:                                        ; preds = %if.end85
  %54 = load i32, ptr %i, align 4, !tbaa !5
  %inc87 = add nsw i32 %54, 1
  store i32 %inc87, ptr %i, align 4, !tbaa !5
  br label %for.cond52, !llvm.loop !15

for.end88:                                        ; preds = %if.then84, %if.then81, %for.cond52
  br label %for.inc89

for.inc89:                                        ; preds = %for.end88
  %55 = load i32, ptr %j, align 4, !tbaa !5
  %inc90 = add nsw i32 %55, 1
  store i32 %inc90, ptr %j, align 4, !tbaa !5
  br label %for.cond49, !llvm.loop !16

for.end91:                                        ; preds = %for.cond49
  %56 = load i32, ptr %m2, align 4, !tbaa !5
  %57 = load i32, ptr %m1, align 4, !tbaa !5
  %sub92 = sub nsw i32 %56, %57
  %sub93 = sub nsw i32 %sub92, 1
  %58 = load i32, ptr %n2, align 4, !tbaa !5
  %59 = load i32, ptr %n1, align 4, !tbaa !5
  %sub94 = sub nsw i32 %58, %59
  %sub95 = sub nsw i32 %sub94, 1
  %mul = mul nsw i32 %sub93, %sub95
  store i32 %mul, ptr %S, align 4, !tbaa !5
  %60 = load i32, ptr %S, align 4, !tbaa !5
  %call96 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %60)
  call void @llvm.lifetime.end.p0(i64 4, ptr %S) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %t) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %n2) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %m2) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %n1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %m1) #3
  call void @llvm.lifetime.end.p0(i64 40000, ptr %a) #3
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
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !10, !11}
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
