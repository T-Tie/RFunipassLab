; ModuleID = '/tmp/tmpj0j9eeh5.cpp'
source_filename = "/tmp/tmpj0j9eeh5.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@__const.main.days = private unnamed_addr constant [12 x i32] [i32 0, i32 31, i32 28, i32 31, i32 30, i32 31, i32 30, i32 31, i32 31, i32 30, i32 31, i32 30], align 16
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"%d %d %d\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"YES\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"NO\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %w1 = alloca i32, align 4
  %w2 = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %n = alloca i32, align 4
  %a = alloca [200 x i32], align 16
  %b = alloca [200 x i32], align 16
  %c = alloca [200 x i32], align 16
  %days = alloca [12 x i32], align 16
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %w1) #4
  store i32 0, ptr %w1, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %w2) #4
  store i32 0, ptr %w2, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #4
  call void @llvm.lifetime.start.p0(i64 800, ptr %a) #4
  call void @llvm.lifetime.start.p0(i64 800, ptr %b) #4
  call void @llvm.lifetime.start.p0(i64 800, ptr %c) #4
  call void @llvm.lifetime.start.p0(i64 48, ptr %days) #4
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %days, ptr align 16 @__const.main.days, i64 48, i1 false)
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %n)
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc92, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end94

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [200 x i32], ptr %a, i64 0, i64 %idxprom
  %3 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom1 = sext i32 %3 to i64
  %arrayidx2 = getelementptr inbounds [200 x i32], ptr %b, i64 0, i64 %idxprom1
  %4 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom3 = sext i32 %4 to i64
  %arrayidx4 = getelementptr inbounds [200 x i32], ptr %c, i64 0, i64 %idxprom3
  %call5 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.1, ptr noundef %arrayidx, ptr noundef %arrayidx2, ptr noundef %arrayidx4)
  %5 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom6 = sext i32 %5 to i64
  %arrayidx7 = getelementptr inbounds [200 x i32], ptr %a, i64 0, i64 %idxprom6
  %6 = load i32, ptr %arrayidx7, align 4, !tbaa !5
  %rem = srem i32 %6, 4
  %cmp8 = icmp eq i32 %rem, 0
  br i1 %cmp8, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.body
  %7 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom9 = sext i32 %7 to i64
  %arrayidx10 = getelementptr inbounds [200 x i32], ptr %a, i64 0, i64 %idxprom9
  %8 = load i32, ptr %arrayidx10, align 4, !tbaa !5
  %rem11 = srem i32 %8, 100
  %cmp12 = icmp ne i32 %rem11, 0
  br i1 %cmp12, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %arrayidx13 = getelementptr inbounds [12 x i32], ptr %days, i64 0, i64 2
  store i32 29, ptr %arrayidx13, align 8, !tbaa !5
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc, %if.then
  %9 = load i32, ptr %j, align 4, !tbaa !5
  %10 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom15 = sext i32 %10 to i64
  %arrayidx16 = getelementptr inbounds [200 x i32], ptr %b, i64 0, i64 %idxprom15
  %11 = load i32, ptr %arrayidx16, align 4, !tbaa !5
  %cmp17 = icmp slt i32 %9, %11
  br i1 %cmp17, label %for.body18, label %for.end

for.body18:                                       ; preds = %for.cond14
  %12 = load i32, ptr %w1, align 4, !tbaa !5
  %13 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom19 = sext i32 %13 to i64
  %arrayidx20 = getelementptr inbounds [12 x i32], ptr %days, i64 0, i64 %idxprom19
  %14 = load i32, ptr %arrayidx20, align 4, !tbaa !5
  %add = add nsw i32 %12, %14
  store i32 %add, ptr %w1, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body18
  %15 = load i32, ptr %j, align 4, !tbaa !5
  %inc = add nsw i32 %15, 1
  store i32 %inc, ptr %j, align 4, !tbaa !5
  br label %for.cond14, !llvm.loop !9

for.end:                                          ; preds = %for.cond14
  store i32 0, ptr %k, align 4, !tbaa !5
  br label %for.cond21

for.cond21:                                       ; preds = %for.inc29, %for.end
  %16 = load i32, ptr %k, align 4, !tbaa !5
  %17 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom22 = sext i32 %17 to i64
  %arrayidx23 = getelementptr inbounds [200 x i32], ptr %c, i64 0, i64 %idxprom22
  %18 = load i32, ptr %arrayidx23, align 4, !tbaa !5
  %cmp24 = icmp slt i32 %16, %18
  br i1 %cmp24, label %for.body25, label %for.end31

for.body25:                                       ; preds = %for.cond21
  %19 = load i32, ptr %w2, align 4, !tbaa !5
  %20 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom26 = sext i32 %20 to i64
  %arrayidx27 = getelementptr inbounds [12 x i32], ptr %days, i64 0, i64 %idxprom26
  %21 = load i32, ptr %arrayidx27, align 4, !tbaa !5
  %add28 = add nsw i32 %19, %21
  store i32 %add28, ptr %w2, align 4, !tbaa !5
  br label %for.inc29

for.inc29:                                        ; preds = %for.body25
  %22 = load i32, ptr %k, align 4, !tbaa !5
  %inc30 = add nsw i32 %22, 1
  store i32 %inc30, ptr %k, align 4, !tbaa !5
  br label %for.cond21, !llvm.loop !12

for.end31:                                        ; preds = %for.cond21
  br label %if.end84

if.else:                                          ; preds = %land.lhs.true, %for.body
  %23 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom32 = sext i32 %23 to i64
  %arrayidx33 = getelementptr inbounds [200 x i32], ptr %a, i64 0, i64 %idxprom32
  %24 = load i32, ptr %arrayidx33, align 4, !tbaa !5
  %rem34 = srem i32 %24, 400
  %cmp35 = icmp eq i32 %rem34, 0
  br i1 %cmp35, label %if.then36, label %if.else60

if.then36:                                        ; preds = %if.else
  %arrayidx37 = getelementptr inbounds [12 x i32], ptr %days, i64 0, i64 2
  store i32 29, ptr %arrayidx37, align 8, !tbaa !5
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond38

for.cond38:                                       ; preds = %for.inc46, %if.then36
  %25 = load i32, ptr %j, align 4, !tbaa !5
  %26 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom39 = sext i32 %26 to i64
  %arrayidx40 = getelementptr inbounds [200 x i32], ptr %b, i64 0, i64 %idxprom39
  %27 = load i32, ptr %arrayidx40, align 4, !tbaa !5
  %cmp41 = icmp slt i32 %25, %27
  br i1 %cmp41, label %for.body42, label %for.end48

for.body42:                                       ; preds = %for.cond38
  %28 = load i32, ptr %w1, align 4, !tbaa !5
  %29 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom43 = sext i32 %29 to i64
  %arrayidx44 = getelementptr inbounds [12 x i32], ptr %days, i64 0, i64 %idxprom43
  %30 = load i32, ptr %arrayidx44, align 4, !tbaa !5
  %add45 = add nsw i32 %28, %30
  store i32 %add45, ptr %w1, align 4, !tbaa !5
  br label %for.inc46

for.inc46:                                        ; preds = %for.body42
  %31 = load i32, ptr %j, align 4, !tbaa !5
  %inc47 = add nsw i32 %31, 1
  store i32 %inc47, ptr %j, align 4, !tbaa !5
  br label %for.cond38, !llvm.loop !13

for.end48:                                        ; preds = %for.cond38
  store i32 0, ptr %k, align 4, !tbaa !5
  br label %for.cond49

for.cond49:                                       ; preds = %for.inc57, %for.end48
  %32 = load i32, ptr %k, align 4, !tbaa !5
  %33 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom50 = sext i32 %33 to i64
  %arrayidx51 = getelementptr inbounds [200 x i32], ptr %c, i64 0, i64 %idxprom50
  %34 = load i32, ptr %arrayidx51, align 4, !tbaa !5
  %cmp52 = icmp slt i32 %32, %34
  br i1 %cmp52, label %for.body53, label %for.end59

for.body53:                                       ; preds = %for.cond49
  %35 = load i32, ptr %w2, align 4, !tbaa !5
  %36 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom54 = sext i32 %36 to i64
  %arrayidx55 = getelementptr inbounds [12 x i32], ptr %days, i64 0, i64 %idxprom54
  %37 = load i32, ptr %arrayidx55, align 4, !tbaa !5
  %add56 = add nsw i32 %35, %37
  store i32 %add56, ptr %w2, align 4, !tbaa !5
  br label %for.inc57

for.inc57:                                        ; preds = %for.body53
  %38 = load i32, ptr %k, align 4, !tbaa !5
  %inc58 = add nsw i32 %38, 1
  store i32 %inc58, ptr %k, align 4, !tbaa !5
  br label %for.cond49, !llvm.loop !14

for.end59:                                        ; preds = %for.cond49
  br label %if.end

if.else60:                                        ; preds = %if.else
  %arrayidx61 = getelementptr inbounds [12 x i32], ptr %days, i64 0, i64 2
  store i32 28, ptr %arrayidx61, align 8, !tbaa !5
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond62

for.cond62:                                       ; preds = %for.inc70, %if.else60
  %39 = load i32, ptr %j, align 4, !tbaa !5
  %40 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom63 = sext i32 %40 to i64
  %arrayidx64 = getelementptr inbounds [200 x i32], ptr %b, i64 0, i64 %idxprom63
  %41 = load i32, ptr %arrayidx64, align 4, !tbaa !5
  %cmp65 = icmp slt i32 %39, %41
  br i1 %cmp65, label %for.body66, label %for.end72

for.body66:                                       ; preds = %for.cond62
  %42 = load i32, ptr %w1, align 4, !tbaa !5
  %43 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom67 = sext i32 %43 to i64
  %arrayidx68 = getelementptr inbounds [12 x i32], ptr %days, i64 0, i64 %idxprom67
  %44 = load i32, ptr %arrayidx68, align 4, !tbaa !5
  %add69 = add nsw i32 %42, %44
  store i32 %add69, ptr %w1, align 4, !tbaa !5
  br label %for.inc70

for.inc70:                                        ; preds = %for.body66
  %45 = load i32, ptr %j, align 4, !tbaa !5
  %inc71 = add nsw i32 %45, 1
  store i32 %inc71, ptr %j, align 4, !tbaa !5
  br label %for.cond62, !llvm.loop !15

for.end72:                                        ; preds = %for.cond62
  store i32 0, ptr %k, align 4, !tbaa !5
  br label %for.cond73

for.cond73:                                       ; preds = %for.inc81, %for.end72
  %46 = load i32, ptr %k, align 4, !tbaa !5
  %47 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom74 = sext i32 %47 to i64
  %arrayidx75 = getelementptr inbounds [200 x i32], ptr %c, i64 0, i64 %idxprom74
  %48 = load i32, ptr %arrayidx75, align 4, !tbaa !5
  %cmp76 = icmp slt i32 %46, %48
  br i1 %cmp76, label %for.body77, label %for.end83

for.body77:                                       ; preds = %for.cond73
  %49 = load i32, ptr %w2, align 4, !tbaa !5
  %50 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom78 = sext i32 %50 to i64
  %arrayidx79 = getelementptr inbounds [12 x i32], ptr %days, i64 0, i64 %idxprom78
  %51 = load i32, ptr %arrayidx79, align 4, !tbaa !5
  %add80 = add nsw i32 %49, %51
  store i32 %add80, ptr %w2, align 4, !tbaa !5
  br label %for.inc81

for.inc81:                                        ; preds = %for.body77
  %52 = load i32, ptr %k, align 4, !tbaa !5
  %inc82 = add nsw i32 %52, 1
  store i32 %inc82, ptr %k, align 4, !tbaa !5
  br label %for.cond73, !llvm.loop !16

for.end83:                                        ; preds = %for.cond73
  br label %if.end

if.end:                                           ; preds = %for.end83, %for.end59
  br label %if.end84

if.end84:                                         ; preds = %if.end, %for.end31
  %53 = load i32, ptr %w2, align 4, !tbaa !5
  %54 = load i32, ptr %w1, align 4, !tbaa !5
  %sub = sub nsw i32 %53, %54
  %rem85 = srem i32 %sub, 7
  %cmp86 = icmp eq i32 %rem85, 0
  br i1 %cmp86, label %if.then87, label %if.else89

if.then87:                                        ; preds = %if.end84
  %call88 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %if.end91

if.else89:                                        ; preds = %if.end84
  %call90 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  br label %if.end91

if.end91:                                         ; preds = %if.else89, %if.then87
  store i32 0, ptr %w1, align 4, !tbaa !5
  store i32 0, ptr %w2, align 4, !tbaa !5
  br label %for.inc92

for.inc92:                                        ; preds = %if.end91
  %55 = load i32, ptr %i, align 4, !tbaa !5
  %inc93 = add nsw i32 %55, 1
  store i32 %inc93, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !17

for.end94:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 48, ptr %days) #4
  call void @llvm.lifetime.end.p0(i64 800, ptr %c) #4
  call void @llvm.lifetime.end.p0(i64 800, ptr %b) #4
  call void @llvm.lifetime.end.p0(i64 800, ptr %a) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %w2) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %w1) #4
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare i32 @__isoc23_scanf(ptr noundef, ...) #3

declare i32 @printf(ptr noundef, ...) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
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
