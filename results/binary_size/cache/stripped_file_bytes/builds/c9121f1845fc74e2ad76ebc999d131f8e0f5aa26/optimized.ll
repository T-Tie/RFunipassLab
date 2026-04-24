; ModuleID = '/tmp/tmpyn2cnzjd.cpp'
source_filename = "/tmp/tmpyn2cnzjd.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%c\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %l1 = alloca i32, align 4
  %l2 = alloca i32, align 4
  %l3 = alloca i32, align 4
  %e = alloca i32, align 4
  %sum = alloca i32, align 4
  %s = alloca [300 x i8], align 16
  %z = alloca [300 x i8], align 16
  %h = alloca [300 x i8], align 16
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %l1) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %l2) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %l3) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %e) #4
  store i32 0, ptr %e, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %sum) #4
  store i32 0, ptr %sum, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 300, ptr %s) #4
  call void @llvm.lifetime.start.p0(i64 300, ptr %z) #4
  call void @llvm.lifetime.start.p0(i64 300, ptr %h) #4
  %arraydecay = getelementptr inbounds [300 x i8], ptr %s, i64 0, i64 0
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arraydecay)
  %arraydecay1 = getelementptr inbounds [300 x i8], ptr %z, i64 0, i64 0
  %call2 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arraydecay1)
  %arraydecay3 = getelementptr inbounds [300 x i8], ptr %h, i64 0, i64 0
  %call4 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arraydecay3)
  %arraydecay5 = getelementptr inbounds [300 x i8], ptr %s, i64 0, i64 0
  %call6 = call i64 @strlen(ptr noundef %arraydecay5) #5
  %conv = trunc i64 %call6 to i32
  store i32 %conv, ptr %l1, align 4, !tbaa !5
  %arraydecay7 = getelementptr inbounds [300 x i8], ptr %z, i64 0, i64 0
  %call8 = call i64 @strlen(ptr noundef %arraydecay7) #5
  %conv9 = trunc i64 %call8 to i32
  store i32 %conv9, ptr %l2, align 4, !tbaa !5
  %arraydecay10 = getelementptr inbounds [300 x i8], ptr %h, i64 0, i64 0
  %call11 = call i64 @strlen(ptr noundef %arraydecay10) #5
  %conv12 = trunc i64 %call11 to i32
  store i32 %conv12, ptr %l3, align 4, !tbaa !5
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc62, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %l1, align 4, !tbaa !5
  %2 = load i32, ptr %l2, align 4, !tbaa !5
  %sub = sub nsw i32 %1, %2
  %cmp = icmp sle i32 %0, %sub
  br i1 %cmp, label %for.body, label %for.end64

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %e, align 4, !tbaa !5
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc, %for.body
  %3 = load i32, ptr %j, align 4, !tbaa !5
  %4 = load i32, ptr %l2, align 4, !tbaa !5
  %cmp14 = icmp slt i32 %3, %4
  br i1 %cmp14, label %for.body15, label %for.end

for.body15:                                       ; preds = %for.cond13
  %5 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [300 x i8], ptr %z, i64 0, i64 %idxprom
  %6 = load i8, ptr %arrayidx, align 1, !tbaa !9
  %conv16 = sext i8 %6 to i32
  %7 = load i32, ptr %j, align 4, !tbaa !5
  %8 = load i32, ptr %i, align 4, !tbaa !5
  %add = add nsw i32 %7, %8
  %idxprom17 = sext i32 %add to i64
  %arrayidx18 = getelementptr inbounds [300 x i8], ptr %s, i64 0, i64 %idxprom17
  %9 = load i8, ptr %arrayidx18, align 1, !tbaa !9
  %conv19 = sext i8 %9 to i32
  %cmp20 = icmp eq i32 %conv16, %conv19
  br i1 %cmp20, label %if.then, label %if.end

if.then:                                          ; preds = %for.body15
  %10 = load i32, ptr %e, align 4, !tbaa !5
  %inc = add nsw i32 %10, 1
  store i32 %inc, ptr %e, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body15
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load i32, ptr %j, align 4, !tbaa !5
  %inc21 = add nsw i32 %11, 1
  store i32 %inc21, ptr %j, align 4, !tbaa !5
  br label %for.cond13, !llvm.loop !10

for.end:                                          ; preds = %for.cond13
  %12 = load i32, ptr %e, align 4, !tbaa !5
  %13 = load i32, ptr %l2, align 4, !tbaa !5
  %cmp22 = icmp eq i32 %12, %13
  br i1 %cmp22, label %if.then23, label %if.end61

if.then23:                                        ; preds = %for.end
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond24

for.cond24:                                       ; preds = %for.inc31, %if.then23
  %14 = load i32, ptr %j, align 4, !tbaa !5
  %15 = load i32, ptr %i, align 4, !tbaa !5
  %cmp25 = icmp slt i32 %14, %15
  br i1 %cmp25, label %for.body26, label %for.end33

for.body26:                                       ; preds = %for.cond24
  %16 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom27 = sext i32 %16 to i64
  %arrayidx28 = getelementptr inbounds [300 x i8], ptr %s, i64 0, i64 %idxprom27
  %17 = load i8, ptr %arrayidx28, align 1, !tbaa !9
  %conv29 = sext i8 %17 to i32
  %call30 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %conv29)
  br label %for.inc31

for.inc31:                                        ; preds = %for.body26
  %18 = load i32, ptr %j, align 4, !tbaa !5
  %inc32 = add nsw i32 %18, 1
  store i32 %inc32, ptr %j, align 4, !tbaa !5
  br label %for.cond24, !llvm.loop !13

for.end33:                                        ; preds = %for.cond24
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond34

for.cond34:                                       ; preds = %for.inc41, %for.end33
  %19 = load i32, ptr %j, align 4, !tbaa !5
  %20 = load i32, ptr %l3, align 4, !tbaa !5
  %cmp35 = icmp slt i32 %19, %20
  br i1 %cmp35, label %for.body36, label %for.end43

for.body36:                                       ; preds = %for.cond34
  %21 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom37 = sext i32 %21 to i64
  %arrayidx38 = getelementptr inbounds [300 x i8], ptr %h, i64 0, i64 %idxprom37
  %22 = load i8, ptr %arrayidx38, align 1, !tbaa !9
  %conv39 = sext i8 %22 to i32
  %call40 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %conv39)
  br label %for.inc41

for.inc41:                                        ; preds = %for.body36
  %23 = load i32, ptr %j, align 4, !tbaa !5
  %inc42 = add nsw i32 %23, 1
  store i32 %inc42, ptr %j, align 4, !tbaa !5
  br label %for.cond34, !llvm.loop !14

for.end43:                                        ; preds = %for.cond34
  %24 = load i32, ptr %i, align 4, !tbaa !5
  %25 = load i32, ptr %l2, align 4, !tbaa !5
  %add44 = add nsw i32 %24, %25
  %26 = load i32, ptr %l1, align 4, !tbaa !5
  %sub45 = sub nsw i32 %26, 1
  %cmp46 = icmp slt i32 %add44, %sub45
  br i1 %cmp46, label %if.then47, label %if.end59

if.then47:                                        ; preds = %for.end43
  %27 = load i32, ptr %i, align 4, !tbaa !5
  %28 = load i32, ptr %l2, align 4, !tbaa !5
  %add48 = add nsw i32 %27, %28
  store i32 %add48, ptr %j, align 4, !tbaa !5
  br label %for.cond49

for.cond49:                                       ; preds = %for.inc56, %if.then47
  %29 = load i32, ptr %j, align 4, !tbaa !5
  %30 = load i32, ptr %l1, align 4, !tbaa !5
  %cmp50 = icmp slt i32 %29, %30
  br i1 %cmp50, label %for.body51, label %for.end58

for.body51:                                       ; preds = %for.cond49
  %31 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom52 = sext i32 %31 to i64
  %arrayidx53 = getelementptr inbounds [300 x i8], ptr %s, i64 0, i64 %idxprom52
  %32 = load i8, ptr %arrayidx53, align 1, !tbaa !9
  %conv54 = sext i8 %32 to i32
  %call55 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %conv54)
  br label %for.inc56

for.inc56:                                        ; preds = %for.body51
  %33 = load i32, ptr %j, align 4, !tbaa !5
  %inc57 = add nsw i32 %33, 1
  store i32 %inc57, ptr %j, align 4, !tbaa !5
  br label %for.cond49, !llvm.loop !15

for.end58:                                        ; preds = %for.cond49
  br label %if.end59

if.end59:                                         ; preds = %for.end58, %for.end43
  %34 = load i32, ptr %sum, align 4, !tbaa !5
  %inc60 = add nsw i32 %34, 1
  store i32 %inc60, ptr %sum, align 4, !tbaa !5
  br label %for.end64

if.end61:                                         ; preds = %for.end
  br label %for.inc62

for.inc62:                                        ; preds = %if.end61
  %35 = load i32, ptr %i, align 4, !tbaa !5
  %inc63 = add nsw i32 %35, 1
  store i32 %inc63, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !16

for.end64:                                        ; preds = %if.end59, %for.cond
  %36 = load i32, ptr %sum, align 4, !tbaa !5
  %cmp65 = icmp eq i32 %36, 0
  br i1 %cmp65, label %if.then66, label %if.end77

if.then66:                                        ; preds = %for.end64
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond67

for.cond67:                                       ; preds = %for.inc74, %if.then66
  %37 = load i32, ptr %i, align 4, !tbaa !5
  %38 = load i32, ptr %l1, align 4, !tbaa !5
  %cmp68 = icmp slt i32 %37, %38
  br i1 %cmp68, label %for.body69, label %for.end76

for.body69:                                       ; preds = %for.cond67
  %39 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom70 = sext i32 %39 to i64
  %arrayidx71 = getelementptr inbounds [300 x i8], ptr %s, i64 0, i64 %idxprom70
  %40 = load i8, ptr %arrayidx71, align 1, !tbaa !9
  %conv72 = sext i8 %40 to i32
  %call73 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %conv72)
  br label %for.inc74

for.inc74:                                        ; preds = %for.body69
  %41 = load i32, ptr %i, align 4, !tbaa !5
  %inc75 = add nsw i32 %41, 1
  store i32 %inc75, ptr %i, align 4, !tbaa !5
  br label %for.cond67, !llvm.loop !17

for.end76:                                        ; preds = %for.cond67
  br label %if.end77

if.end77:                                         ; preds = %for.end76, %for.end64
  call void @llvm.lifetime.end.p0(i64 300, ptr %h) #4
  call void @llvm.lifetime.end.p0(i64 300, ptr %z) #4
  call void @llvm.lifetime.end.p0(i64 300, ptr %s) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %sum) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %e) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %l3) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %l2) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %l1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
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
!15 = distinct !{!15, !11, !12}
!16 = distinct !{!16, !11, !12}
!17 = distinct !{!17, !11, !12}
