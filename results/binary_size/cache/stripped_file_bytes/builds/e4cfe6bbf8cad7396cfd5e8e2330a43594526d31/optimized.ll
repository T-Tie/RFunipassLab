; ModuleID = '/tmp/tmpwbm423v4.cpp'
source_filename = "/tmp/tmpwbm423v4.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"No\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%c=%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %p = alloca [300 x i8], align 16
  %j = alloca i8, align 1
  %b = alloca i32, align 4
  %i = alloca i32, align 4
  %a = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 300, ptr %p) #3
  call void @llvm.lifetime.start.p0(i64 1, ptr %j) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %b) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %a) #3
  store i32 0, ptr %a, align 4, !tbaa !5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %p)
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [300 x i8], ptr %p, i64 0, i64 %idxprom
  %1 = load i8, ptr %arrayidx, align 1, !tbaa !9
  %conv = sext i8 %1 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom1 = sext i32 %2 to i64
  %arrayidx2 = getelementptr inbounds [300 x i8], ptr %p, i64 0, i64 %idxprom1
  %3 = load i8, ptr %arrayidx2, align 1, !tbaa !9
  %conv3 = sext i8 %3 to i32
  %cmp4 = icmp sge i32 %conv3, 65
  br i1 %cmp4, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %for.body
  %4 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom5 = sext i32 %4 to i64
  %arrayidx6 = getelementptr inbounds [300 x i8], ptr %p, i64 0, i64 %idxprom5
  %5 = load i8, ptr %arrayidx6, align 1, !tbaa !9
  %conv7 = sext i8 %5 to i32
  %cmp8 = icmp sle i32 %conv7, 90
  br i1 %cmp8, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %for.body
  %6 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom9 = sext i32 %6 to i64
  %arrayidx10 = getelementptr inbounds [300 x i8], ptr %p, i64 0, i64 %idxprom9
  %7 = load i8, ptr %arrayidx10, align 1, !tbaa !9
  %conv11 = sext i8 %7 to i32
  %cmp12 = icmp sge i32 %conv11, 97
  br i1 %cmp12, label %land.lhs.true13, label %if.end

land.lhs.true13:                                  ; preds = %lor.lhs.false
  %8 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom14 = sext i32 %8 to i64
  %arrayidx15 = getelementptr inbounds [300 x i8], ptr %p, i64 0, i64 %idxprom14
  %9 = load i8, ptr %arrayidx15, align 1, !tbaa !9
  %conv16 = sext i8 %9 to i32
  %cmp17 = icmp sle i32 %conv16, 122
  br i1 %cmp17, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true13, %land.lhs.true
  %10 = load i32, ptr %a, align 4, !tbaa !5
  %inc = add nsw i32 %10, 1
  store i32 %inc, ptr %a, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true13, %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load i32, ptr %i, align 4, !tbaa !5
  %inc18 = add nsw i32 %11, 1
  store i32 %inc18, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  %12 = load i32, ptr %a, align 4, !tbaa !5
  %cmp19 = icmp eq i32 %12, 0
  br i1 %cmp19, label %if.then20, label %if.else

if.then20:                                        ; preds = %for.end
  %call21 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  br label %if.end80

if.else:                                          ; preds = %for.end
  store i8 65, ptr %j, align 1, !tbaa !9
  br label %for.cond22

for.cond22:                                       ; preds = %for.inc48, %if.else
  %13 = load i8, ptr %j, align 1, !tbaa !9
  %conv23 = sext i8 %13 to i32
  %cmp24 = icmp sle i32 %conv23, 90
  br i1 %cmp24, label %for.body25, label %for.end50

for.body25:                                       ; preds = %for.cond22
  store i32 0, ptr %b, align 4, !tbaa !5
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond26

for.cond26:                                       ; preds = %for.inc40, %for.body25
  %14 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom27 = sext i32 %14 to i64
  %arrayidx28 = getelementptr inbounds [300 x i8], ptr %p, i64 0, i64 %idxprom27
  %15 = load i8, ptr %arrayidx28, align 1, !tbaa !9
  %conv29 = sext i8 %15 to i32
  %cmp30 = icmp ne i32 %conv29, 0
  br i1 %cmp30, label %for.body31, label %for.end42

for.body31:                                       ; preds = %for.cond26
  %16 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom32 = sext i32 %16 to i64
  %arrayidx33 = getelementptr inbounds [300 x i8], ptr %p, i64 0, i64 %idxprom32
  %17 = load i8, ptr %arrayidx33, align 1, !tbaa !9
  %conv34 = sext i8 %17 to i32
  %18 = load i8, ptr %j, align 1, !tbaa !9
  %conv35 = sext i8 %18 to i32
  %cmp36 = icmp eq i32 %conv34, %conv35
  br i1 %cmp36, label %if.then37, label %if.end39

if.then37:                                        ; preds = %for.body31
  %19 = load i32, ptr %b, align 4, !tbaa !5
  %inc38 = add nsw i32 %19, 1
  store i32 %inc38, ptr %b, align 4, !tbaa !5
  br label %if.end39

if.end39:                                         ; preds = %if.then37, %for.body31
  br label %for.inc40

for.inc40:                                        ; preds = %if.end39
  %20 = load i32, ptr %i, align 4, !tbaa !5
  %inc41 = add nsw i32 %20, 1
  store i32 %inc41, ptr %i, align 4, !tbaa !5
  br label %for.cond26, !llvm.loop !13

for.end42:                                        ; preds = %for.cond26
  %21 = load i32, ptr %b, align 4, !tbaa !5
  %cmp43 = icmp ne i32 %21, 0
  br i1 %cmp43, label %if.then44, label %if.end47

if.then44:                                        ; preds = %for.end42
  %22 = load i8, ptr %j, align 1, !tbaa !9
  %conv45 = sext i8 %22 to i32
  %23 = load i32, ptr %b, align 4, !tbaa !5
  %call46 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %conv45, i32 noundef %23)
  br label %if.end47

if.end47:                                         ; preds = %if.then44, %for.end42
  br label %for.inc48

for.inc48:                                        ; preds = %if.end47
  %24 = load i8, ptr %j, align 1, !tbaa !9
  %inc49 = add i8 %24, 1
  store i8 %inc49, ptr %j, align 1, !tbaa !9
  br label %for.cond22, !llvm.loop !14

for.end50:                                        ; preds = %for.cond22
  store i8 97, ptr %j, align 1, !tbaa !9
  br label %for.cond51

for.cond51:                                       ; preds = %for.inc77, %for.end50
  %25 = load i8, ptr %j, align 1, !tbaa !9
  %conv52 = sext i8 %25 to i32
  %cmp53 = icmp sle i32 %conv52, 122
  br i1 %cmp53, label %for.body54, label %for.end79

for.body54:                                       ; preds = %for.cond51
  store i32 0, ptr %b, align 4, !tbaa !5
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond55

for.cond55:                                       ; preds = %for.inc69, %for.body54
  %26 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom56 = sext i32 %26 to i64
  %arrayidx57 = getelementptr inbounds [300 x i8], ptr %p, i64 0, i64 %idxprom56
  %27 = load i8, ptr %arrayidx57, align 1, !tbaa !9
  %conv58 = sext i8 %27 to i32
  %cmp59 = icmp ne i32 %conv58, 0
  br i1 %cmp59, label %for.body60, label %for.end71

for.body60:                                       ; preds = %for.cond55
  %28 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom61 = sext i32 %28 to i64
  %arrayidx62 = getelementptr inbounds [300 x i8], ptr %p, i64 0, i64 %idxprom61
  %29 = load i8, ptr %arrayidx62, align 1, !tbaa !9
  %conv63 = sext i8 %29 to i32
  %30 = load i8, ptr %j, align 1, !tbaa !9
  %conv64 = sext i8 %30 to i32
  %cmp65 = icmp eq i32 %conv63, %conv64
  br i1 %cmp65, label %if.then66, label %if.end68

if.then66:                                        ; preds = %for.body60
  %31 = load i32, ptr %b, align 4, !tbaa !5
  %inc67 = add nsw i32 %31, 1
  store i32 %inc67, ptr %b, align 4, !tbaa !5
  br label %if.end68

if.end68:                                         ; preds = %if.then66, %for.body60
  br label %for.inc69

for.inc69:                                        ; preds = %if.end68
  %32 = load i32, ptr %i, align 4, !tbaa !5
  %inc70 = add nsw i32 %32, 1
  store i32 %inc70, ptr %i, align 4, !tbaa !5
  br label %for.cond55, !llvm.loop !15

for.end71:                                        ; preds = %for.cond55
  %33 = load i32, ptr %b, align 4, !tbaa !5
  %cmp72 = icmp ne i32 %33, 0
  br i1 %cmp72, label %if.then73, label %if.end76

if.then73:                                        ; preds = %for.end71
  %34 = load i8, ptr %j, align 1, !tbaa !9
  %conv74 = sext i8 %34 to i32
  %35 = load i32, ptr %b, align 4, !tbaa !5
  %call75 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %conv74, i32 noundef %35)
  br label %if.end76

if.end76:                                         ; preds = %if.then73, %for.end71
  br label %for.inc77

for.inc77:                                        ; preds = %if.end76
  %36 = load i8, ptr %j, align 1, !tbaa !9
  %inc78 = add i8 %36, 1
  store i8 %inc78, ptr %j, align 1, !tbaa !9
  br label %for.cond51, !llvm.loop !16

for.end79:                                        ; preds = %for.cond51
  br label %if.end80

if.end80:                                         ; preds = %for.end79, %if.then20
  call void @llvm.lifetime.end.p0(i64 4, ptr %a) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %b) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr %j) #3
  call void @llvm.lifetime.end.p0(i64 300, ptr %p) #3
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
!9 = !{!7, !7, i64 0}
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = distinct !{!13, !11, !12}
!14 = distinct !{!14, !11, !12}
!15 = distinct !{!15, !11, !12}
!16 = distinct !{!16, !11, !12}
