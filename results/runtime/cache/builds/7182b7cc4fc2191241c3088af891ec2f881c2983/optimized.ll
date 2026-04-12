; ModuleID = '<stdin>'
source_filename = "/tmp/tmpjwe4_vbr.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%d,\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %N = alloca i32, align 4
  %i = alloca i32, align 4
  %t = alloca i32, align 4
  %p = alloca i32, align 4
  %q = alloca i32, align 4
  %sz = alloca [500 x i32], align 16
  %js = alloca [500 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %N) #3
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %i) #3
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %t) #3
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %p) #3
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %q) #3
  call void @llvm.lifetime.start.p0(i64 noundef 2000, ptr noundef align 16 %sz) #3
  call void @llvm.lifetime.start.p0(i64 noundef 2000, ptr noundef align 16 %js) #3
  store i32 -1, ptr %t, align 4, !tbaa !5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef align 4 %N)
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %N, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %sub = sub nsw i32 %1, 1
  %cmp1 = icmp slt i32 %0, %sub
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [500 x i32], ptr %sz, i64 0, i64 %idxprom
  %call2 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.1, ptr noundef %arrayidx)
  br label %if.end

if.else:                                          ; preds = %for.body
  %idxprom3 = sext i32 %0 to i64
  %arrayidx4 = getelementptr inbounds [500 x i32], ptr %sz, i64 0, i64 %idxprom3
  %call5 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arrayidx4)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %0, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc19, %for.end
  %2 = load i32, ptr %i, align 4, !tbaa !5
  %cmp7 = icmp slt i32 %2, %1
  br i1 %cmp7, label %for.body8, label %for.end21

for.body8:                                        ; preds = %for.cond6
  %idxprom9 = sext i32 %2 to i64
  %arrayidx10 = getelementptr inbounds [500 x i32], ptr %sz, i64 0, i64 %idxprom9
  %3 = load i32, ptr %arrayidx10, align 4, !tbaa !5
  %rem = srem i32 %3, 2
  %cmp11 = icmp eq i32 %rem, 1
  br i1 %cmp11, label %if.then12, label %if.end18

if.then12:                                        ; preds = %for.body8
  %4 = load i32, ptr %t, align 4, !tbaa !5
  %inc13 = add nsw i32 %4, 1
  store i32 %inc13, ptr %t, align 4, !tbaa !5
  %idxprom16 = sext i32 %inc13 to i64
  %arrayidx17 = getelementptr inbounds [500 x i32], ptr %js, i64 0, i64 %idxprom16
  store i32 %3, ptr %arrayidx17, align 4, !tbaa !5
  br label %if.end18

if.end18:                                         ; preds = %if.then12, %for.body8
  br label %for.inc19

for.inc19:                                        ; preds = %if.end18
  %inc20 = add nsw i32 %2, 1
  store i32 %inc20, ptr %i, align 4, !tbaa !5
  br label %for.cond6, !llvm.loop !12

for.end21:                                        ; preds = %for.cond6
  store i32 1, ptr %q, align 4, !tbaa !5
  br label %for.cond22

for.cond22:                                       ; preds = %for.inc49, %for.end21
  %5 = load i32, ptr %q, align 4, !tbaa !5
  %6 = load i32, ptr %t, align 4, !tbaa !5
  %add = add nsw i32 %6, 1
  %cmp23 = icmp sle i32 %5, %add
  br i1 %cmp23, label %for.body24, label %for.end51

for.body24:                                       ; preds = %for.cond22
  store i32 0, ptr %p, align 4, !tbaa !5
  br label %for.cond25

for.cond25:                                       ; preds = %for.inc46, %for.body24
  %7 = load i32, ptr %p, align 4, !tbaa !5
  %cmp26 = icmp slt i32 %7, %6
  br i1 %cmp26, label %for.body27, label %for.end48

for.body27:                                       ; preds = %for.cond25
  %idxprom28 = sext i32 %7 to i64
  %arrayidx29 = getelementptr inbounds [500 x i32], ptr %js, i64 0, i64 %idxprom28
  %8 = load i32, ptr %arrayidx29, align 4, !tbaa !5
  %add30 = add nsw i32 %7, 1
  %idxprom31 = sext i32 %add30 to i64
  %arrayidx32 = getelementptr inbounds [500 x i32], ptr %js, i64 0, i64 %idxprom31
  %9 = load i32, ptr %arrayidx32, align 4, !tbaa !5, !invariant.load !13
  %cmp33 = icmp sgt i32 %8, %9
  br i1 %cmp33, label %if.then34, label %if.end45

if.then34:                                        ; preds = %for.body27
  store i32 %9, ptr %arrayidx29, align 4, !tbaa !5
  store i32 %8, ptr %arrayidx32, align 4, !tbaa !5
  br label %if.end45

if.end45:                                         ; preds = %if.then34, %for.body27
  br label %for.inc46

for.inc46:                                        ; preds = %if.end45
  store i32 %add30, ptr %p, align 4, !tbaa !5
  br label %for.cond25, !llvm.loop !14

for.end48:                                        ; preds = %for.cond25
  br label %for.inc49

for.inc49:                                        ; preds = %for.end48
  %inc50 = add nsw i32 %5, 1
  store i32 %inc50, ptr %q, align 4, !tbaa !5
  br label %for.cond22, !llvm.loop !15

for.end51:                                        ; preds = %for.cond22
  store i32 0, ptr %p, align 4, !tbaa !5
  br label %for.cond52

for.cond52:                                       ; preds = %for.inc65, %for.end51
  %10 = load i32, ptr %p, align 4, !tbaa !5
  %cmp53 = icmp sle i32 %10, %6
  br i1 %cmp53, label %for.body54, label %for.end67

for.body54:                                       ; preds = %for.cond52
  %cmp55 = icmp slt i32 %10, %6
  br i1 %cmp55, label %if.then56, label %if.else60

if.then56:                                        ; preds = %for.body54
  %idxprom57 = sext i32 %10 to i64
  %arrayidx58 = getelementptr inbounds [500 x i32], ptr %js, i64 0, i64 %idxprom57
  %11 = load i32, ptr %arrayidx58, align 4, !tbaa !5
  %call59 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %11)
  br label %if.end64

if.else60:                                        ; preds = %for.body54
  %idxprom61 = sext i32 %10 to i64
  %arrayidx62 = getelementptr inbounds [500 x i32], ptr %js, i64 0, i64 %idxprom61
  %12 = load i32, ptr %arrayidx62, align 4, !tbaa !5
  %call63 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %12)
  br label %if.end64

if.end64:                                         ; preds = %if.else60, %if.then56
  br label %for.inc65

for.inc65:                                        ; preds = %if.end64
  %inc66 = add nsw i32 %10, 1
  store i32 %inc66, ptr %p, align 4, !tbaa !5
  br label %for.cond52, !llvm.loop !16

for.end67:                                        ; preds = %for.cond52
  call void @llvm.lifetime.end.p0(i64 noundef 2000, ptr noundef %js) #4
  call void @llvm.lifetime.end.p0(i64 noundef 2000, ptr noundef %sz) #4
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %q) #4
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %p) #4
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %t) #4
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %i) #4
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %N) #4
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #2

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
!13 = !{}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
