; ModuleID = '/tmp/tmp_cfkcyil.cpp'
source_filename = "/tmp/tmp_cfkcyil.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [4 x i8] c"%lf\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"no\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %a = alloca [100 x i8], align 16
  %b = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %t = alloca i32, align 4
  %l1 = alloca i32, align 4
  %l2 = alloca i32, align 4
  %l = alloca i32, align 4
  %s1 = alloca i32, align 4
  %s2 = alloca i32, align 4
  %n = alloca double, align 8
  %t1 = alloca double, align 8
  %t2 = alloca double, align 8
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 100, ptr %a) #4
  call void @llvm.lifetime.start.p0(i64 100, ptr %b) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %t) #4
  store i32 0, ptr %t, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %l1) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %l2) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %l) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %s1) #4
  store i32 0, ptr %s1, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %s2) #4
  store i32 0, ptr %s2, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %n) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %t1) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %t2) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %n)
  %arraydecay = getelementptr inbounds [100 x i8], ptr %a, i64 0, i64 0
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.1, ptr noundef %arraydecay)
  %arraydecay2 = getelementptr inbounds [100 x i8], ptr %b, i64 0, i64 0
  %call3 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.1, ptr noundef %arraydecay2)
  %arraydecay4 = getelementptr inbounds [100 x i8], ptr %a, i64 0, i64 0
  %call5 = call i64 @strlen(ptr noundef %arraydecay4) #5
  %conv = trunc i64 %call5 to i32
  store i32 %conv, ptr %l1, align 4, !tbaa !5
  %arraydecay6 = getelementptr inbounds [100 x i8], ptr %b, i64 0, i64 0
  %call7 = call i64 @strlen(ptr noundef %arraydecay6) #5
  %conv8 = trunc i64 %call7 to i32
  store i32 %conv8, ptr %l2, align 4, !tbaa !5
  %0 = load i32, ptr %l1, align 4, !tbaa !5
  %1 = load i32, ptr %l2, align 4, !tbaa !5
  %cmp = icmp ne i32 %0, %1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call9 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %if.end98

if.else:                                          ; preds = %entry
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %2 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [100 x i8], ptr %a, i64 0, i64 %idxprom
  %3 = load i8, ptr %arrayidx, align 1, !tbaa !9
  %tobool = icmp ne i8 %3, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom10 = sext i32 %4 to i64
  %arrayidx11 = getelementptr inbounds [100 x i8], ptr %a, i64 0, i64 %idxprom10
  %5 = load i8, ptr %arrayidx11, align 1, !tbaa !9
  %conv12 = sext i8 %5 to i32
  %cmp13 = icmp eq i32 %conv12, 65
  br i1 %cmp13, label %if.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %6 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom14 = sext i32 %6 to i64
  %arrayidx15 = getelementptr inbounds [100 x i8], ptr %a, i64 0, i64 %idxprom14
  %7 = load i8, ptr %arrayidx15, align 1, !tbaa !9
  %conv16 = sext i8 %7 to i32
  %cmp17 = icmp eq i32 %conv16, 84
  br i1 %cmp17, label %if.end, label %lor.lhs.false18

lor.lhs.false18:                                  ; preds = %lor.lhs.false
  %8 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom19 = sext i32 %8 to i64
  %arrayidx20 = getelementptr inbounds [100 x i8], ptr %a, i64 0, i64 %idxprom19
  %9 = load i8, ptr %arrayidx20, align 1, !tbaa !9
  %conv21 = sext i8 %9 to i32
  %cmp22 = icmp eq i32 %conv21, 67
  br i1 %cmp22, label %if.end, label %lor.lhs.false23

lor.lhs.false23:                                  ; preds = %lor.lhs.false18
  %10 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom24 = sext i32 %10 to i64
  %arrayidx25 = getelementptr inbounds [100 x i8], ptr %a, i64 0, i64 %idxprom24
  %11 = load i8, ptr %arrayidx25, align 1, !tbaa !9
  %conv26 = sext i8 %11 to i32
  %cmp27 = icmp eq i32 %conv26, 71
  br i1 %cmp27, label %if.end, label %if.then28

if.then28:                                        ; preds = %lor.lhs.false23
  %call29 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  %12 = load i32, ptr %s1, align 4, !tbaa !5
  %inc = add nsw i32 %12, 1
  store i32 %inc, ptr %s1, align 4, !tbaa !5
  br label %for.end

if.end:                                           ; preds = %lor.lhs.false23, %lor.lhs.false18, %lor.lhs.false, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load i32, ptr %j, align 4, !tbaa !5
  %inc30 = add nsw i32 %13, 1
  store i32 %inc30, ptr %j, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %if.then28, %for.cond
  %14 = load i32, ptr %s1, align 4, !tbaa !5
  %cmp31 = icmp eq i32 %14, 0
  br i1 %cmp31, label %if.then32, label %if.end64

if.then32:                                        ; preds = %for.end
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond33

for.cond33:                                       ; preds = %for.inc61, %if.then32
  %15 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom34 = sext i32 %15 to i64
  %arrayidx35 = getelementptr inbounds [100 x i8], ptr %b, i64 0, i64 %idxprom34
  %16 = load i8, ptr %arrayidx35, align 1, !tbaa !9
  %tobool36 = icmp ne i8 %16, 0
  br i1 %tobool36, label %for.body37, label %for.end63

for.body37:                                       ; preds = %for.cond33
  %17 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom38 = sext i32 %17 to i64
  %arrayidx39 = getelementptr inbounds [100 x i8], ptr %b, i64 0, i64 %idxprom38
  %18 = load i8, ptr %arrayidx39, align 1, !tbaa !9
  %conv40 = sext i8 %18 to i32
  %cmp41 = icmp eq i32 %conv40, 65
  br i1 %cmp41, label %if.end60, label %lor.lhs.false42

lor.lhs.false42:                                  ; preds = %for.body37
  %19 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom43 = sext i32 %19 to i64
  %arrayidx44 = getelementptr inbounds [100 x i8], ptr %b, i64 0, i64 %idxprom43
  %20 = load i8, ptr %arrayidx44, align 1, !tbaa !9
  %conv45 = sext i8 %20 to i32
  %cmp46 = icmp eq i32 %conv45, 84
  br i1 %cmp46, label %if.end60, label %lor.lhs.false47

lor.lhs.false47:                                  ; preds = %lor.lhs.false42
  %21 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom48 = sext i32 %21 to i64
  %arrayidx49 = getelementptr inbounds [100 x i8], ptr %b, i64 0, i64 %idxprom48
  %22 = load i8, ptr %arrayidx49, align 1, !tbaa !9
  %conv50 = sext i8 %22 to i32
  %cmp51 = icmp eq i32 %conv50, 67
  br i1 %cmp51, label %if.end60, label %lor.lhs.false52

lor.lhs.false52:                                  ; preds = %lor.lhs.false47
  %23 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom53 = sext i32 %23 to i64
  %arrayidx54 = getelementptr inbounds [100 x i8], ptr %b, i64 0, i64 %idxprom53
  %24 = load i8, ptr %arrayidx54, align 1, !tbaa !9
  %conv55 = sext i8 %24 to i32
  %cmp56 = icmp eq i32 %conv55, 71
  br i1 %cmp56, label %if.end60, label %if.then57

if.then57:                                        ; preds = %lor.lhs.false52
  %call58 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  %25 = load i32, ptr %s2, align 4, !tbaa !5
  %inc59 = add nsw i32 %25, 1
  store i32 %inc59, ptr %s2, align 4, !tbaa !5
  br label %for.end63

if.end60:                                         ; preds = %lor.lhs.false52, %lor.lhs.false47, %lor.lhs.false42, %for.body37
  br label %for.inc61

for.inc61:                                        ; preds = %if.end60
  %26 = load i32, ptr %j, align 4, !tbaa !5
  %inc62 = add nsw i32 %26, 1
  store i32 %inc62, ptr %j, align 4, !tbaa !5
  br label %for.cond33, !llvm.loop !13

for.end63:                                        ; preds = %if.then57, %for.cond33
  br label %if.end64

if.end64:                                         ; preds = %for.end63, %for.end
  %27 = load i32, ptr %s1, align 4, !tbaa !5
  %cmp65 = icmp eq i32 %27, 0
  br i1 %cmp65, label %land.lhs.true, label %if.end97

land.lhs.true:                                    ; preds = %if.end64
  %28 = load i32, ptr %s2, align 4, !tbaa !5
  %cmp66 = icmp eq i32 %28, 0
  br i1 %cmp66, label %if.then67, label %if.end97

if.then67:                                        ; preds = %land.lhs.true
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond68

for.cond68:                                       ; preds = %for.inc83, %if.then67
  %29 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom69 = sext i32 %29 to i64
  %arrayidx70 = getelementptr inbounds [100 x i8], ptr %a, i64 0, i64 %idxprom69
  %30 = load i8, ptr %arrayidx70, align 1, !tbaa !9
  %tobool71 = icmp ne i8 %30, 0
  br i1 %tobool71, label %for.body72, label %for.end85

for.body72:                                       ; preds = %for.cond68
  %31 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom73 = sext i32 %31 to i64
  %arrayidx74 = getelementptr inbounds [100 x i8], ptr %a, i64 0, i64 %idxprom73
  %32 = load i8, ptr %arrayidx74, align 1, !tbaa !9
  %conv75 = sext i8 %32 to i32
  %33 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom76 = sext i32 %33 to i64
  %arrayidx77 = getelementptr inbounds [100 x i8], ptr %b, i64 0, i64 %idxprom76
  %34 = load i8, ptr %arrayidx77, align 1, !tbaa !9
  %conv78 = sext i8 %34 to i32
  %cmp79 = icmp eq i32 %conv75, %conv78
  br i1 %cmp79, label %if.then80, label %if.end82

if.then80:                                        ; preds = %for.body72
  %35 = load i32, ptr %t, align 4, !tbaa !5
  %inc81 = add nsw i32 %35, 1
  store i32 %inc81, ptr %t, align 4, !tbaa !5
  br label %if.end82

if.end82:                                         ; preds = %if.then80, %for.body72
  br label %for.inc83

for.inc83:                                        ; preds = %if.end82
  %36 = load i32, ptr %i, align 4, !tbaa !5
  %inc84 = add nsw i32 %36, 1
  store i32 %inc84, ptr %i, align 4, !tbaa !5
  br label %for.cond68, !llvm.loop !14

for.end85:                                        ; preds = %for.cond68
  %arraydecay86 = getelementptr inbounds [100 x i8], ptr %a, i64 0, i64 0
  %call87 = call i64 @strlen(ptr noundef %arraydecay86) #5
  %conv88 = trunc i64 %call87 to i32
  store i32 %conv88, ptr %l, align 4, !tbaa !5
  %37 = load i32, ptr %l, align 4, !tbaa !5
  %conv89 = sitofp i32 %37 to double
  store double %conv89, ptr %t1, align 8, !tbaa !15
  %38 = load i32, ptr %t, align 4, !tbaa !5
  %conv90 = sitofp i32 %38 to double
  store double %conv90, ptr %t2, align 8, !tbaa !15
  %39 = load double, ptr %t2, align 8, !tbaa !15
  %40 = load double, ptr %t1, align 8, !tbaa !15
  %div = fdiv double %39, %40
  %41 = load double, ptr %n, align 8, !tbaa !15
  %cmp91 = fcmp ogt double %div, %41
  br i1 %cmp91, label %if.then92, label %if.else94

if.then92:                                        ; preds = %for.end85
  %call93 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  br label %if.end96

if.else94:                                        ; preds = %for.end85
  %call95 = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  br label %if.end96

if.end96:                                         ; preds = %if.else94, %if.then92
  br label %if.end97

if.end97:                                         ; preds = %if.end96, %land.lhs.true, %if.end64
  br label %if.end98

if.end98:                                         ; preds = %if.end97, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %t2) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %t1) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %n) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %s2) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %s1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %l) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %l2) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %l1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %t) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.end.p0(i64 100, ptr %b) #4
  call void @llvm.lifetime.end.p0(i64 100, ptr %a) #4
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
!15 = !{!16, !16, i64 0}
!16 = !{!"double", !7, i64 0}
