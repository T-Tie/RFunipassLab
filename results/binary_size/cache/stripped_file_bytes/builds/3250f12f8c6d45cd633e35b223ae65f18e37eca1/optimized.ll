; ModuleID = '/tmp/tmprz5ozuyh.cpp'
source_filename = "/tmp/tmprz5ozuyh.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [4 x i8] c"%lf\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"no\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %s = alloca [2 x [501 x i8]], align 16
  %n = alloca double, align 8
  %sum = alloca double, align 8
  %x = alloca double, align 8
  %Len = alloca double, align 8
  %len = alloca i32, align 4
  %i = alloca i32, align 4
  %len2 = alloca i32, align 4
  %j = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 1002, ptr %s) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %n) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %sum) #4
  store double 0.000000e+00, ptr %sum, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %x) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %Len) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %len2) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %n)
  %arrayidx = getelementptr inbounds [2 x [501 x i8]], ptr %s, i64 0, i64 0
  %arraydecay = getelementptr inbounds [501 x i8], ptr %arrayidx, i64 0, i64 0
  %arrayidx1 = getelementptr inbounds [2 x [501 x i8]], ptr %s, i64 0, i64 1
  %arraydecay2 = getelementptr inbounds [501 x i8], ptr %arrayidx1, i64 0, i64 0
  %call3 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.1, ptr noundef %arraydecay, ptr noundef %arraydecay2)
  %arrayidx4 = getelementptr inbounds [2 x [501 x i8]], ptr %s, i64 0, i64 0
  %arraydecay5 = getelementptr inbounds [501 x i8], ptr %arrayidx4, i64 0, i64 0
  %call6 = call i64 @strlen(ptr noundef %arraydecay5) #5
  %conv = trunc i64 %call6 to i32
  store i32 %conv, ptr %len, align 4, !tbaa !9
  %arrayidx7 = getelementptr inbounds [2 x [501 x i8]], ptr %s, i64 0, i64 1
  %arraydecay8 = getelementptr inbounds [501 x i8], ptr %arrayidx7, i64 0, i64 0
  %call9 = call i64 @strlen(ptr noundef %arraydecay8) #5
  %conv10 = trunc i64 %call9 to i32
  store i32 %conv10, ptr %len2, align 4, !tbaa !9
  %0 = load i32, ptr %len, align 4, !tbaa !9
  %1 = load i32, ptr %len2, align 4, !tbaa !9
  %cmp = icmp ne i32 %0, %1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call11 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else:                                          ; preds = %entry
  store i32 0, ptr %i, align 4, !tbaa !9
  br label %for.cond

for.cond:                                         ; preds = %for.inc44, %if.else
  %2 = load i32, ptr %i, align 4, !tbaa !9
  %cmp12 = icmp slt i32 %2, 2
  br i1 %cmp12, label %for.body, label %for.end46

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4, !tbaa !9
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc, %for.body
  %3 = load i32, ptr %j, align 4, !tbaa !9
  %4 = load i32, ptr %len, align 4, !tbaa !9
  %cmp14 = icmp slt i32 %3, %4
  br i1 %cmp14, label %for.body15, label %for.end

for.body15:                                       ; preds = %for.cond13
  %5 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom = sext i32 %5 to i64
  %arrayidx16 = getelementptr inbounds [2 x [501 x i8]], ptr %s, i64 0, i64 %idxprom
  %6 = load i32, ptr %j, align 4, !tbaa !9
  %idxprom17 = sext i32 %6 to i64
  %arrayidx18 = getelementptr inbounds [501 x i8], ptr %arrayidx16, i64 0, i64 %idxprom17
  %7 = load i8, ptr %arrayidx18, align 1, !tbaa !11
  %conv19 = sext i8 %7 to i32
  %cmp20 = icmp ne i32 %conv19, 65
  br i1 %cmp20, label %land.lhs.true, label %if.else43

land.lhs.true:                                    ; preds = %for.body15
  %8 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom21 = sext i32 %8 to i64
  %arrayidx22 = getelementptr inbounds [2 x [501 x i8]], ptr %s, i64 0, i64 %idxprom21
  %9 = load i32, ptr %j, align 4, !tbaa !9
  %idxprom23 = sext i32 %9 to i64
  %arrayidx24 = getelementptr inbounds [501 x i8], ptr %arrayidx22, i64 0, i64 %idxprom23
  %10 = load i8, ptr %arrayidx24, align 1, !tbaa !11
  %conv25 = sext i8 %10 to i32
  %cmp26 = icmp ne i32 %conv25, 84
  br i1 %cmp26, label %land.lhs.true27, label %if.else43

land.lhs.true27:                                  ; preds = %land.lhs.true
  %11 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom28 = sext i32 %11 to i64
  %arrayidx29 = getelementptr inbounds [2 x [501 x i8]], ptr %s, i64 0, i64 %idxprom28
  %12 = load i32, ptr %j, align 4, !tbaa !9
  %idxprom30 = sext i32 %12 to i64
  %arrayidx31 = getelementptr inbounds [501 x i8], ptr %arrayidx29, i64 0, i64 %idxprom30
  %13 = load i8, ptr %arrayidx31, align 1, !tbaa !11
  %conv32 = sext i8 %13 to i32
  %cmp33 = icmp ne i32 %conv32, 71
  br i1 %cmp33, label %land.lhs.true34, label %if.else43

land.lhs.true34:                                  ; preds = %land.lhs.true27
  %14 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom35 = sext i32 %14 to i64
  %arrayidx36 = getelementptr inbounds [2 x [501 x i8]], ptr %s, i64 0, i64 %idxprom35
  %15 = load i32, ptr %j, align 4, !tbaa !9
  %idxprom37 = sext i32 %15 to i64
  %arrayidx38 = getelementptr inbounds [501 x i8], ptr %arrayidx36, i64 0, i64 %idxprom37
  %16 = load i8, ptr %arrayidx38, align 1, !tbaa !11
  %conv39 = sext i8 %16 to i32
  %cmp40 = icmp ne i32 %conv39, 67
  br i1 %cmp40, label %if.then41, label %if.else43

if.then41:                                        ; preds = %land.lhs.true34
  %call42 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else43:                                        ; preds = %land.lhs.true34, %land.lhs.true27, %land.lhs.true, %for.body15
  br label %for.inc

for.inc:                                          ; preds = %if.else43
  %17 = load i32, ptr %j, align 4, !tbaa !9
  %inc = add nsw i32 %17, 1
  store i32 %inc, ptr %j, align 4, !tbaa !9
  br label %for.cond13, !llvm.loop !12

for.end:                                          ; preds = %for.cond13
  br label %for.inc44

for.inc44:                                        ; preds = %for.end
  %18 = load i32, ptr %i, align 4, !tbaa !9
  %inc45 = add nsw i32 %18, 1
  store i32 %inc45, ptr %i, align 4, !tbaa !9
  br label %for.cond, !llvm.loop !15

for.end46:                                        ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end46
  store i32 0, ptr %i, align 4, !tbaa !9
  br label %for.cond47

for.cond47:                                       ; preds = %for.inc61, %if.end
  %19 = load i32, ptr %i, align 4, !tbaa !9
  %20 = load i32, ptr %len, align 4, !tbaa !9
  %cmp48 = icmp slt i32 %19, %20
  br i1 %cmp48, label %for.body49, label %for.end63

for.body49:                                       ; preds = %for.cond47
  %arrayidx50 = getelementptr inbounds [2 x [501 x i8]], ptr %s, i64 0, i64 0
  %21 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom51 = sext i32 %21 to i64
  %arrayidx52 = getelementptr inbounds [501 x i8], ptr %arrayidx50, i64 0, i64 %idxprom51
  %22 = load i8, ptr %arrayidx52, align 1, !tbaa !11
  %conv53 = sext i8 %22 to i32
  %arrayidx54 = getelementptr inbounds [2 x [501 x i8]], ptr %s, i64 0, i64 1
  %23 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom55 = sext i32 %23 to i64
  %arrayidx56 = getelementptr inbounds [501 x i8], ptr %arrayidx54, i64 0, i64 %idxprom55
  %24 = load i8, ptr %arrayidx56, align 1, !tbaa !11
  %conv57 = sext i8 %24 to i32
  %cmp58 = icmp eq i32 %conv53, %conv57
  br i1 %cmp58, label %if.then59, label %if.end60

if.then59:                                        ; preds = %for.body49
  %25 = load double, ptr %sum, align 8, !tbaa !5
  %add = fadd double %25, 1.000000e+00
  store double %add, ptr %sum, align 8, !tbaa !5
  br label %if.end60

if.end60:                                         ; preds = %if.then59, %for.body49
  br label %for.inc61

for.inc61:                                        ; preds = %if.end60
  %26 = load i32, ptr %i, align 4, !tbaa !9
  %inc62 = add nsw i32 %26, 1
  store i32 %inc62, ptr %i, align 4, !tbaa !9
  br label %for.cond47, !llvm.loop !16

for.end63:                                        ; preds = %for.cond47
  %27 = load i32, ptr %len, align 4, !tbaa !9
  %conv64 = sitofp i32 %27 to double
  store double %conv64, ptr %Len, align 8, !tbaa !5
  %28 = load double, ptr %sum, align 8, !tbaa !5
  %29 = load double, ptr %Len, align 8, !tbaa !5
  %div = fdiv double %28, %29
  store double %div, ptr %x, align 8, !tbaa !5
  %30 = load double, ptr %x, align 8, !tbaa !5
  %31 = load double, ptr %n, align 8, !tbaa !5
  %cmp65 = fcmp oge double %30, %31
  br i1 %cmp65, label %if.then66, label %if.else68

if.then66:                                        ; preds = %for.end63
  %call67 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  br label %if.end70

if.else68:                                        ; preds = %for.end63
  %call69 = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  br label %if.end70

if.end70:                                         ; preds = %if.else68, %if.then66
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end70, %if.then41, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %len2) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %Len) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %x) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %sum) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %n) #4
  call void @llvm.lifetime.end.p0(i64 1002, ptr %s) #4
  %32 = load i32, ptr %retval, align 4
  ret i32 %32
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
!6 = !{!"double", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !7, i64 0}
!11 = !{!7, !7, i64 0}
!12 = distinct !{!12, !13, !14}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!"llvm.loop.unroll.disable"}
!15 = distinct !{!15, !13, !14}
!16 = distinct !{!16, !13, !14}
