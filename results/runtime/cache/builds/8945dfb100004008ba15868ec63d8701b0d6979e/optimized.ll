; ModuleID = '<stdin>'
source_filename = "/tmp/tmp70v4nqrf.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %n = alloca i32, align 4
  %a = alloca [1000 x [1000 x i32]], align 16
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %f = alloca i32, align 4
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %n) #3
  call void @llvm.lifetime.start.p0(i64 noundef 4000000, ptr noundef align 16 %a) #3
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %i) #3
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %j) #3
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %x1) #3
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %y1) #3
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %x2) #3
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %y2) #3
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef align 4 %n)
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc5, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end7

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, ptr %j, align 4, !tbaa !5
  %3 = load i32, ptr %n, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.inc, label %for.inc5

for.inc:                                          ; preds = %for.cond1
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [1000 x [1000 x i32]], ptr %a, i64 0, i64 %idxprom
  %idx.ext = sext i32 %2 to i64
  %add.ptr = getelementptr inbounds i32, ptr %arrayidx, i64 %idx.ext
  %call4 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %add.ptr)
  %inc = add nsw i32 %2, 1
  store i32 %inc, ptr %j, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !9

for.inc5:                                         ; preds = %for.cond1
  %inc6 = add nsw i32 %0, 1
  store i32 %inc6, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !12

for.end7:                                         ; preds = %for.cond
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc25, %for.end7
  %4 = load i32, ptr %i, align 4, !tbaa !5
  %cmp9 = icmp slt i32 %4, %1
  br i1 %cmp9, label %for.body10, label %for.end27

for.body10:                                       ; preds = %for.cond8
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc19, %for.body10
  %5 = load i32, ptr %j, align 4, !tbaa !5
  %cmp12 = icmp slt i32 %5, %1
  br i1 %cmp12, label %for.body13, label %for.inc25

for.body13:                                       ; preds = %for.cond11
  %idxprom14 = sext i32 %4 to i64
  %arrayidx15 = getelementptr inbounds [1000 x [1000 x i32]], ptr %a, i64 0, i64 %idxprom14
  %idxprom16 = sext i32 %5 to i64
  %arrayidx17 = getelementptr inbounds [1000 x i32], ptr %arrayidx15, i64 0, i64 %idxprom16
  %6 = load i32, ptr %arrayidx17, align 4, !tbaa !5
  %cmp18 = icmp eq i32 %6, 0
  br i1 %cmp18, label %for.end21.thread, label %for.inc19

for.end21.thread:                                 ; preds = %for.body13
  store i32 %4, ptr %x1, align 4, !tbaa !5
  store i32 %5, ptr %y1, align 4, !tbaa !5
  br label %for.end27

for.inc19:                                        ; preds = %for.body13
  %inc20 = add nsw i32 %5, 1
  store i32 %inc20, ptr %j, align 4, !tbaa !5
  br label %for.cond11, !llvm.loop !13

for.inc25:                                        ; preds = %for.cond11
  %inc26 = add nsw i32 %4, 1
  store i32 %inc26, ptr %i, align 4, !tbaa !5
  br label %for.cond8, !llvm.loop !14

for.end27:                                        ; preds = %for.end21.thread, %for.cond8
  %7 = load i32, ptr %y1, align 4, !tbaa !5
  store i32 %7, ptr %i, align 4, !tbaa !5
  br label %for.cond28

for.cond28:                                       ; preds = %for.inc40, %for.end27
  %8 = load i32, ptr %i, align 4, !tbaa !5
  %cmp29 = icmp slt i32 %8, %1
  br i1 %cmp29, label %for.body30, label %for.end42

for.body30:                                       ; preds = %for.cond28
  %9 = load i32, ptr %x1, align 4, !tbaa !5
  %idxprom31 = sext i32 %9 to i64
  %arrayidx32 = getelementptr inbounds [1000 x [1000 x i32]], ptr %a, i64 0, i64 %idxprom31
  %add = add nsw i32 %8, 1
  %idxprom33 = sext i32 %add to i64
  %arrayidx34 = getelementptr inbounds [1000 x i32], ptr %arrayidx32, i64 0, i64 %idxprom33
  %10 = load i32, ptr %arrayidx34, align 4, !tbaa !5, !invariant.load !15
  %cmp35 = icmp ne i32 %10, 0
  br i1 %cmp35, label %if.then38, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body30
  %cmp37 = icmp sge i32 %add, %1
  br i1 %cmp37, label %if.then38, label %for.inc40

if.then38:                                        ; preds = %lor.lhs.false, %for.body30
  store i32 %8, ptr %y2, align 4, !tbaa !5
  br label %for.end42

for.inc40:                                        ; preds = %lor.lhs.false
  store i32 %add, ptr %i, align 4, !tbaa !5
  br label %for.cond28, !llvm.loop !16

for.end42:                                        ; preds = %if.then38, %for.cond28
  %11 = load i32, ptr %x1, align 4, !tbaa !5
  store i32 %11, ptr %i, align 4, !tbaa !5
  br label %for.cond43

for.cond43:                                       ; preds = %for.inc57, %for.end42
  %12 = load i32, ptr %i, align 4, !tbaa !5
  %cmp44 = icmp slt i32 %12, %1
  br i1 %cmp44, label %for.body45, label %for.end59

for.body45:                                       ; preds = %for.cond43
  %add46 = add nsw i32 %12, 1
  %idxprom47 = sext i32 %add46 to i64
  %arrayidx48 = getelementptr inbounds [1000 x [1000 x i32]], ptr %a, i64 0, i64 %idxprom47
  %idxprom49 = sext i32 %7 to i64
  %arrayidx50 = getelementptr inbounds [1000 x i32], ptr %arrayidx48, i64 0, i64 %idxprom49
  %13 = load i32, ptr %arrayidx50, align 4, !tbaa !5, !invariant.load !15
  %cmp51 = icmp ne i32 %13, 0
  br i1 %cmp51, label %if.then55, label %lor.lhs.false52

lor.lhs.false52:                                  ; preds = %for.body45
  %cmp54 = icmp sge i32 %add46, %1
  br i1 %cmp54, label %if.then55, label %for.inc57

if.then55:                                        ; preds = %lor.lhs.false52, %for.body45
  store i32 %12, ptr %x2, align 4, !tbaa !5
  br label %for.end59

for.inc57:                                        ; preds = %lor.lhs.false52
  store i32 %add46, ptr %i, align 4, !tbaa !5
  br label %for.cond43, !llvm.loop !17

for.end59:                                        ; preds = %if.then55, %for.cond43
  %14 = load i32, ptr %x2, align 4, !tbaa !5
  %sub = sub nsw i32 %14, %11
  %cmp60 = icmp slt i32 %sub, 2
  br i1 %cmp60, label %if.then64, label %lor.lhs.false61

lor.lhs.false61:                                  ; preds = %for.end59
  %15 = load i32, ptr %y2, align 4, !tbaa !5
  %sub62 = sub nsw i32 %15, %7
  %cmp63 = icmp slt i32 %sub62, 2
  br i1 %cmp63, label %if.then64, label %if.end66

if.then64:                                        ; preds = %lor.lhs.false61, %for.end59
  %call65 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef 0)
  br label %cleanup

if.end66:                                         ; preds = %lor.lhs.false61
  %sub68 = sub nsw i32 %sub, 1
  %sub70 = sub nsw i32 %sub62, 1
  %mul = mul nsw i32 %sub68, %sub70
  %call71 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %mul)
  br label %cleanup

cleanup:                                          ; preds = %if.end66, %if.then64
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %y2) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %x2) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %y1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %x1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %f) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.end.p0(i64 4000000, ptr %a) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #4
  %16 = load i32, ptr %retval, align 4
  ret i32 %16
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
!15 = !{}
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11}
