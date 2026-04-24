; ModuleID = '/tmp/tmpuv1801mq.cpp'
source_filename = "/tmp/tmpuv1801mq.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"NO\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %n = alloca i32, align 4
  %s = alloca [510 x i8], align 16
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %a = alloca [500 x [5 x i8]], align 16
  %count = alloca [500 x i32], align 16
  %x = alloca i32, align 4
  %max = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #4
  call void @llvm.lifetime.start.p0(i64 510, ptr %s) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %n)
  %arraydecay = getelementptr inbounds [510 x i8], ptr %s, i64 0, i64 0
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.1, ptr noundef %arraydecay)
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #4
  store i32 0, ptr %k, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 2500, ptr %a) #4
  call void @llvm.lifetime.start.p0(i64 2000, ptr %count) #4
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, 500
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [500 x i32], ptr %count, i64 0, i64 %idxprom
  store i32 1, ptr %arrayidx, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %2, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %x) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %max) #4
  store i32 0, ptr %max, align 4, !tbaa !5
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc25, %for.end
  %3 = load i32, ptr %i, align 4, !tbaa !5
  %4 = load i32, ptr %n, align 4, !tbaa !5
  %add = add nsw i32 %3, %4
  %sub = sub nsw i32 %add, 1
  %idxprom3 = sext i32 %sub to i64
  %arrayidx4 = getelementptr inbounds [510 x i8], ptr %s, i64 0, i64 %idxprom3
  %5 = load i8, ptr %arrayidx4, align 1, !tbaa !12
  %conv = sext i8 %5 to i32
  %cmp5 = icmp ne i32 %conv, 0
  br i1 %cmp5, label %for.body6, label %for.end27

for.body6:                                        ; preds = %for.cond2
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc17, %for.body6
  %6 = load i32, ptr %j, align 4, !tbaa !5
  %7 = load i32, ptr %n, align 4, !tbaa !5
  %cmp8 = icmp slt i32 %6, %7
  br i1 %cmp8, label %for.body9, label %for.end19

for.body9:                                        ; preds = %for.cond7
  %8 = load i32, ptr %i, align 4, !tbaa !5
  %9 = load i32, ptr %j, align 4, !tbaa !5
  %add10 = add nsw i32 %8, %9
  %idxprom11 = sext i32 %add10 to i64
  %arrayidx12 = getelementptr inbounds [510 x i8], ptr %s, i64 0, i64 %idxprom11
  %10 = load i8, ptr %arrayidx12, align 1, !tbaa !12
  %11 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom13 = sext i32 %11 to i64
  %arrayidx14 = getelementptr inbounds [500 x [5 x i8]], ptr %a, i64 0, i64 %idxprom13
  %12 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom15 = sext i32 %12 to i64
  %arrayidx16 = getelementptr inbounds [5 x i8], ptr %arrayidx14, i64 0, i64 %idxprom15
  store i8 %10, ptr %arrayidx16, align 1, !tbaa !12
  br label %for.inc17

for.inc17:                                        ; preds = %for.body9
  %13 = load i32, ptr %j, align 4, !tbaa !5
  %inc18 = add nsw i32 %13, 1
  store i32 %inc18, ptr %j, align 4, !tbaa !5
  br label %for.cond7, !llvm.loop !13

for.end19:                                        ; preds = %for.cond7
  %14 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom20 = sext i32 %14 to i64
  %arrayidx21 = getelementptr inbounds [500 x [5 x i8]], ptr %a, i64 0, i64 %idxprom20
  %15 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom22 = sext i32 %15 to i64
  %arrayidx23 = getelementptr inbounds [5 x i8], ptr %arrayidx21, i64 0, i64 %idxprom22
  store i8 0, ptr %arrayidx23, align 1, !tbaa !12
  %16 = load i32, ptr %k, align 4, !tbaa !5
  %inc24 = add nsw i32 %16, 1
  store i32 %inc24, ptr %k, align 4, !tbaa !5
  br label %for.inc25

for.inc25:                                        ; preds = %for.end19
  %17 = load i32, ptr %i, align 4, !tbaa !5
  %inc26 = add nsw i32 %17, 1
  store i32 %inc26, ptr %i, align 4, !tbaa !5
  br label %for.cond2, !llvm.loop !14

for.end27:                                        ; preds = %for.cond2
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond28

for.cond28:                                       ; preds = %for.inc56, %for.end27
  %18 = load i32, ptr %i, align 4, !tbaa !5
  %19 = load i32, ptr %k, align 4, !tbaa !5
  %cmp29 = icmp slt i32 %18, %19
  br i1 %cmp29, label %for.body30, label %for.end58

for.body30:                                       ; preds = %for.cond28
  %20 = load i32, ptr %i, align 4, !tbaa !5
  %add31 = add nsw i32 %20, 1
  store i32 %add31, ptr %j, align 4, !tbaa !5
  br label %for.cond32

for.cond32:                                       ; preds = %for.inc46, %for.body30
  %21 = load i32, ptr %j, align 4, !tbaa !5
  %22 = load i32, ptr %k, align 4, !tbaa !5
  %cmp33 = icmp slt i32 %21, %22
  br i1 %cmp33, label %for.body34, label %for.end48

for.body34:                                       ; preds = %for.cond32
  %23 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom35 = sext i32 %23 to i64
  %arrayidx36 = getelementptr inbounds [500 x [5 x i8]], ptr %a, i64 0, i64 %idxprom35
  %arraydecay37 = getelementptr inbounds [5 x i8], ptr %arrayidx36, i64 0, i64 0
  %24 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom38 = sext i32 %24 to i64
  %arrayidx39 = getelementptr inbounds [500 x [5 x i8]], ptr %a, i64 0, i64 %idxprom38
  %arraydecay40 = getelementptr inbounds [5 x i8], ptr %arrayidx39, i64 0, i64 0
  %call41 = call i32 @strcmp(ptr noundef %arraydecay37, ptr noundef %arraydecay40) #5
  store i32 %call41, ptr %x, align 4, !tbaa !5
  %25 = load i32, ptr %x, align 4, !tbaa !5
  %cmp42 = icmp eq i32 %25, 0
  br i1 %cmp42, label %if.then, label %if.end

if.then:                                          ; preds = %for.body34
  %26 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom43 = sext i32 %26 to i64
  %arrayidx44 = getelementptr inbounds [500 x i32], ptr %count, i64 0, i64 %idxprom43
  %27 = load i32, ptr %arrayidx44, align 4, !tbaa !5
  %inc45 = add nsw i32 %27, 1
  store i32 %inc45, ptr %arrayidx44, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body34
  br label %for.inc46

for.inc46:                                        ; preds = %if.end
  %28 = load i32, ptr %j, align 4, !tbaa !5
  %inc47 = add nsw i32 %28, 1
  store i32 %inc47, ptr %j, align 4, !tbaa !5
  br label %for.cond32, !llvm.loop !15

for.end48:                                        ; preds = %for.cond32
  %29 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom49 = sext i32 %29 to i64
  %arrayidx50 = getelementptr inbounds [500 x i32], ptr %count, i64 0, i64 %idxprom49
  %30 = load i32, ptr %arrayidx50, align 4, !tbaa !5
  %31 = load i32, ptr %max, align 4, !tbaa !5
  %cmp51 = icmp sge i32 %30, %31
  br i1 %cmp51, label %if.then52, label %if.end55

if.then52:                                        ; preds = %for.end48
  %32 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom53 = sext i32 %32 to i64
  %arrayidx54 = getelementptr inbounds [500 x i32], ptr %count, i64 0, i64 %idxprom53
  %33 = load i32, ptr %arrayidx54, align 4, !tbaa !5
  store i32 %33, ptr %max, align 4, !tbaa !5
  br label %if.end55

if.end55:                                         ; preds = %if.then52, %for.end48
  br label %for.inc56

for.inc56:                                        ; preds = %if.end55
  %34 = load i32, ptr %i, align 4, !tbaa !5
  %inc57 = add nsw i32 %34, 1
  store i32 %inc57, ptr %i, align 4, !tbaa !5
  br label %for.cond28, !llvm.loop !16

for.end58:                                        ; preds = %for.cond28
  %35 = load i32, ptr %max, align 4, !tbaa !5
  %cmp59 = icmp ne i32 %35, 1
  br i1 %cmp59, label %if.then60, label %if.else

if.then60:                                        ; preds = %for.end58
  %36 = load i32, ptr %max, align 4, !tbaa !5
  %call61 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %36)
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond62

for.cond62:                                       ; preds = %for.inc74, %if.then60
  %37 = load i32, ptr %i, align 4, !tbaa !5
  %38 = load i32, ptr %k, align 4, !tbaa !5
  %cmp63 = icmp slt i32 %37, %38
  br i1 %cmp63, label %for.body64, label %for.end76

for.body64:                                       ; preds = %for.cond62
  %39 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom65 = sext i32 %39 to i64
  %arrayidx66 = getelementptr inbounds [500 x i32], ptr %count, i64 0, i64 %idxprom65
  %40 = load i32, ptr %arrayidx66, align 4, !tbaa !5
  %41 = load i32, ptr %max, align 4, !tbaa !5
  %cmp67 = icmp eq i32 %40, %41
  br i1 %cmp67, label %if.then68, label %if.end73

if.then68:                                        ; preds = %for.body64
  %42 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom69 = sext i32 %42 to i64
  %arrayidx70 = getelementptr inbounds [500 x [5 x i8]], ptr %a, i64 0, i64 %idxprom69
  %arraydecay71 = getelementptr inbounds [5 x i8], ptr %arrayidx70, i64 0, i64 0
  %call72 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, ptr noundef %arraydecay71)
  br label %if.end73

if.end73:                                         ; preds = %if.then68, %for.body64
  br label %for.inc74

for.inc74:                                        ; preds = %if.end73
  %43 = load i32, ptr %i, align 4, !tbaa !5
  %inc75 = add nsw i32 %43, 1
  store i32 %inc75, ptr %i, align 4, !tbaa !5
  br label %for.cond62, !llvm.loop !17

for.end76:                                        ; preds = %for.cond62
  br label %if.end78

if.else:                                          ; preds = %for.end58
  %call77 = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  br label %if.end78

if.end78:                                         ; preds = %if.else, %for.end76
  call void @llvm.lifetime.end.p0(i64 4, ptr %max) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %x) #4
  call void @llvm.lifetime.end.p0(i64 2000, ptr %count) #4
  call void @llvm.lifetime.end.p0(i64 2500, ptr %a) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.end.p0(i64 510, ptr %s) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #4
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) #2

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strcmp(ptr noundef, ptr noundef) #3

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
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = !{!7, !7, i64 0}
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11}
