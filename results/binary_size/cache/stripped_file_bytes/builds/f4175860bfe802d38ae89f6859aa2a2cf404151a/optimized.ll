; ModuleID = '/tmp/tmp0cks_yus.cpp'
source_filename = "/tmp/tmp0cks_yus.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d,\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %e = alloca i32, align 4
  %n = alloca i32, align 4
  %m = alloca i32, align 4
  %num = alloca [500 x i32], align 16
  %sz = alloca [500 x i32], align 16
  %i = alloca i32, align 4
  %i2 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %j = alloca i32, align 4
  %i32 = alloca i32, align 4
  %i50 = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %e) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %m) #3
  store i32 0, ptr %m, align 4, !tbaa !5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %n)
  call void @llvm.lifetime.start.p0(i64 2000, ptr %num) #3
  call void @llvm.lifetime.start.p0(i64 2000, ptr %sz) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #3
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #3
  br label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [500 x i32], ptr %num, i64 0, i64 %idxprom
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arrayidx)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %3, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond.cleanup
  call void @llvm.lifetime.start.p0(i64 4, ptr %i2) #3
  store i32 1, ptr %i2, align 4, !tbaa !5
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc29, %for.end
  %4 = load i32, ptr %i2, align 4, !tbaa !5
  %5 = load i32, ptr %n, align 4, !tbaa !5
  %cmp4 = icmp slt i32 %4, %5
  br i1 %cmp4, label %for.body6, label %for.cond.cleanup5

for.cond.cleanup5:                                ; preds = %for.cond3
  store i32 5, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i2) #3
  br label %for.end31

for.body6:                                        ; preds = %for.cond3
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #3
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc26, %for.body6
  %6 = load i32, ptr %j, align 4, !tbaa !5
  %7 = load i32, ptr %n, align 4, !tbaa !5
  %8 = load i32, ptr %i2, align 4, !tbaa !5
  %sub = sub nsw i32 %7, %8
  %cmp8 = icmp slt i32 %6, %sub
  br i1 %cmp8, label %for.body10, label %for.cond.cleanup9

for.cond.cleanup9:                                ; preds = %for.cond7
  store i32 8, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #3
  br label %for.end28

for.body10:                                       ; preds = %for.cond7
  %9 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom11 = sext i32 %9 to i64
  %arrayidx12 = getelementptr inbounds [500 x i32], ptr %num, i64 0, i64 %idxprom11
  %10 = load i32, ptr %arrayidx12, align 4, !tbaa !5
  %11 = load i32, ptr %j, align 4, !tbaa !5
  %add = add nsw i32 %11, 1
  %idxprom13 = sext i32 %add to i64
  %arrayidx14 = getelementptr inbounds [500 x i32], ptr %num, i64 0, i64 %idxprom13
  %12 = load i32, ptr %arrayidx14, align 4, !tbaa !5
  %cmp15 = icmp sgt i32 %10, %12
  br i1 %cmp15, label %if.then, label %if.end

if.then:                                          ; preds = %for.body10
  %13 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom16 = sext i32 %13 to i64
  %arrayidx17 = getelementptr inbounds [500 x i32], ptr %num, i64 0, i64 %idxprom16
  %14 = load i32, ptr %arrayidx17, align 4, !tbaa !5
  store i32 %14, ptr %e, align 4, !tbaa !5
  %15 = load i32, ptr %j, align 4, !tbaa !5
  %add18 = add nsw i32 %15, 1
  %idxprom19 = sext i32 %add18 to i64
  %arrayidx20 = getelementptr inbounds [500 x i32], ptr %num, i64 0, i64 %idxprom19
  %16 = load i32, ptr %arrayidx20, align 4, !tbaa !5
  %17 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom21 = sext i32 %17 to i64
  %arrayidx22 = getelementptr inbounds [500 x i32], ptr %num, i64 0, i64 %idxprom21
  store i32 %16, ptr %arrayidx22, align 4, !tbaa !5
  %18 = load i32, ptr %e, align 4, !tbaa !5
  %19 = load i32, ptr %j, align 4, !tbaa !5
  %add23 = add nsw i32 %19, 1
  %idxprom24 = sext i32 %add23 to i64
  %arrayidx25 = getelementptr inbounds [500 x i32], ptr %num, i64 0, i64 %idxprom24
  store i32 %18, ptr %arrayidx25, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body10
  br label %for.inc26

for.inc26:                                        ; preds = %if.end
  %20 = load i32, ptr %j, align 4, !tbaa !5
  %inc27 = add nsw i32 %20, 1
  store i32 %inc27, ptr %j, align 4, !tbaa !5
  br label %for.cond7, !llvm.loop !12

for.end28:                                        ; preds = %for.cond.cleanup9
  br label %for.inc29

for.inc29:                                        ; preds = %for.end28
  %21 = load i32, ptr %i2, align 4, !tbaa !5
  %inc30 = add nsw i32 %21, 1
  store i32 %inc30, ptr %i2, align 4, !tbaa !5
  br label %for.cond3, !llvm.loop !13

for.end31:                                        ; preds = %for.cond.cleanup5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i32) #3
  store i32 0, ptr %i32, align 4, !tbaa !5
  br label %for.cond33

for.cond33:                                       ; preds = %for.inc47, %for.end31
  %22 = load i32, ptr %i32, align 4, !tbaa !5
  %23 = load i32, ptr %n, align 4, !tbaa !5
  %cmp34 = icmp slt i32 %22, %23
  br i1 %cmp34, label %for.body36, label %for.cond.cleanup35

for.cond.cleanup35:                               ; preds = %for.cond33
  store i32 11, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i32) #3
  br label %for.end49

for.body36:                                       ; preds = %for.cond33
  %24 = load i32, ptr %i32, align 4, !tbaa !5
  %idxprom37 = sext i32 %24 to i64
  %arrayidx38 = getelementptr inbounds [500 x i32], ptr %num, i64 0, i64 %idxprom37
  %25 = load i32, ptr %arrayidx38, align 4, !tbaa !5
  %rem = srem i32 %25, 2
  %cmp39 = icmp eq i32 %rem, 1
  br i1 %cmp39, label %if.then40, label %if.end46

if.then40:                                        ; preds = %for.body36
  %26 = load i32, ptr %i32, align 4, !tbaa !5
  %idxprom41 = sext i32 %26 to i64
  %arrayidx42 = getelementptr inbounds [500 x i32], ptr %num, i64 0, i64 %idxprom41
  %27 = load i32, ptr %arrayidx42, align 4, !tbaa !5
  %28 = load i32, ptr %m, align 4, !tbaa !5
  %idxprom43 = sext i32 %28 to i64
  %arrayidx44 = getelementptr inbounds [500 x i32], ptr %sz, i64 0, i64 %idxprom43
  store i32 %27, ptr %arrayidx44, align 4, !tbaa !5
  %29 = load i32, ptr %m, align 4, !tbaa !5
  %inc45 = add nsw i32 %29, 1
  store i32 %inc45, ptr %m, align 4, !tbaa !5
  br label %if.end46

if.end46:                                         ; preds = %if.then40, %for.body36
  br label %for.inc47

for.inc47:                                        ; preds = %if.end46
  %30 = load i32, ptr %i32, align 4, !tbaa !5
  %inc48 = add nsw i32 %30, 1
  store i32 %inc48, ptr %i32, align 4, !tbaa !5
  br label %for.cond33, !llvm.loop !14

for.end49:                                        ; preds = %for.cond.cleanup35
  call void @llvm.lifetime.start.p0(i64 4, ptr %i50) #3
  store i32 0, ptr %i50, align 4, !tbaa !5
  br label %for.cond51

for.cond51:                                       ; preds = %for.inc59, %for.end49
  %31 = load i32, ptr %i50, align 4, !tbaa !5
  %32 = load i32, ptr %m, align 4, !tbaa !5
  %sub52 = sub nsw i32 %32, 1
  %cmp53 = icmp slt i32 %31, %sub52
  br i1 %cmp53, label %for.body55, label %for.cond.cleanup54

for.cond.cleanup54:                               ; preds = %for.cond51
  store i32 14, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i50) #3
  br label %for.end61

for.body55:                                       ; preds = %for.cond51
  %33 = load i32, ptr %i50, align 4, !tbaa !5
  %idxprom56 = sext i32 %33 to i64
  %arrayidx57 = getelementptr inbounds [500 x i32], ptr %sz, i64 0, i64 %idxprom56
  %34 = load i32, ptr %arrayidx57, align 4, !tbaa !5
  %call58 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %34)
  br label %for.inc59

for.inc59:                                        ; preds = %for.body55
  %35 = load i32, ptr %i50, align 4, !tbaa !5
  %inc60 = add nsw i32 %35, 1
  store i32 %inc60, ptr %i50, align 4, !tbaa !5
  br label %for.cond51, !llvm.loop !15

for.end61:                                        ; preds = %for.cond.cleanup54
  %36 = load i32, ptr %m, align 4, !tbaa !5
  %sub62 = sub nsw i32 %36, 1
  %idxprom63 = sext i32 %sub62 to i64
  %arrayidx64 = getelementptr inbounds [500 x i32], ptr %sz, i64 0, i64 %idxprom63
  %37 = load i32, ptr %arrayidx64, align 4, !tbaa !5
  %call65 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %37)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 2000, ptr %sz) #3
  call void @llvm.lifetime.end.p0(i64 2000, ptr %num) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %m) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %e) #3
  %38 = load i32, ptr %retval, align 4
  ret i32 %38
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare i32 @printf(ptr noundef, ...) #2

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
