; ModuleID = '/tmp/tmpt2t9wx3f.cpp'
source_filename = "/tmp/tmpt2t9wx3f.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [6 x i8] c"%d,%d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%d+%d\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"No\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %a = alloca [8 x [8 x i32]], align 16
  %max = alloca [8 x i32], align 16
  %min = alloca [8 x i32], align 16
  %arrow = alloca [8 x i32], align 16
  %low = alloca [8 x i32], align 16
  %m = alloca i32, align 4
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %p = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 256, ptr %a) #4
  call void @llvm.lifetime.start.p0(i64 32, ptr %max) #4
  call void @llvm.lifetime.start.p0(i64 32, ptr %min) #4
  call void @llvm.lifetime.start.p0(i64 32, ptr %arrow) #4
  call void @llvm.memset.p0.i64(ptr align 16 %arrow, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(i64 32, ptr %low) #4
  call void @llvm.memset.p0.i64(ptr align 16 %low, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr %m) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %p) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %m, ptr noundef %n)
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %m, align 4, !tbaa !5
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
  %arrayidx = getelementptr inbounds [8 x [8 x i32]], ptr %a, i64 0, i64 %idxprom
  %5 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom4 = sext i32 %5 to i64
  %arrayidx5 = getelementptr inbounds [8 x i32], ptr %arrayidx, i64 0, i64 %idxprom4
  %call6 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.1, ptr noundef %arrayidx5)
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

for.cond10:                                       ; preds = %for.inc39, %for.end9
  %8 = load i32, ptr %i, align 4, !tbaa !5
  %9 = load i32, ptr %m, align 4, !tbaa !5
  %cmp11 = icmp slt i32 %8, %9
  br i1 %cmp11, label %for.body12, label %for.end41

for.body12:                                       ; preds = %for.cond10
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc36, %for.body12
  %10 = load i32, ptr %j, align 4, !tbaa !5
  %11 = load i32, ptr %n, align 4, !tbaa !5
  %cmp14 = icmp slt i32 %10, %11
  br i1 %cmp14, label %for.body15, label %for.end38

for.body15:                                       ; preds = %for.cond13
  %12 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom16 = sext i32 %12 to i64
  %arrayidx17 = getelementptr inbounds [8 x [8 x i32]], ptr %a, i64 0, i64 %idxprom16
  %arrayidx18 = getelementptr inbounds [8 x i32], ptr %arrayidx17, i64 0, i64 0
  %13 = load i32, ptr %arrayidx18, align 16, !tbaa !5
  %14 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom19 = sext i32 %14 to i64
  %arrayidx20 = getelementptr inbounds [8 x i32], ptr %max, i64 0, i64 %idxprom19
  store i32 %13, ptr %arrayidx20, align 4, !tbaa !5
  %15 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom21 = sext i32 %15 to i64
  %arrayidx22 = getelementptr inbounds [8 x [8 x i32]], ptr %a, i64 0, i64 %idxprom21
  %16 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom23 = sext i32 %16 to i64
  %arrayidx24 = getelementptr inbounds [8 x i32], ptr %arrayidx22, i64 0, i64 %idxprom23
  %17 = load i32, ptr %arrayidx24, align 4, !tbaa !5
  %18 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom25 = sext i32 %18 to i64
  %arrayidx26 = getelementptr inbounds [8 x i32], ptr %max, i64 0, i64 %idxprom25
  %19 = load i32, ptr %arrayidx26, align 4, !tbaa !5
  %cmp27 = icmp sgt i32 %17, %19
  br i1 %cmp27, label %if.then, label %if.end

if.then:                                          ; preds = %for.body15
  %20 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom28 = sext i32 %20 to i64
  %arrayidx29 = getelementptr inbounds [8 x [8 x i32]], ptr %a, i64 0, i64 %idxprom28
  %21 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom30 = sext i32 %21 to i64
  %arrayidx31 = getelementptr inbounds [8 x i32], ptr %arrayidx29, i64 0, i64 %idxprom30
  %22 = load i32, ptr %arrayidx31, align 4, !tbaa !5
  %23 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom32 = sext i32 %23 to i64
  %arrayidx33 = getelementptr inbounds [8 x i32], ptr %max, i64 0, i64 %idxprom32
  store i32 %22, ptr %arrayidx33, align 4, !tbaa !5
  %24 = load i32, ptr %j, align 4, !tbaa !5
  %25 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom34 = sext i32 %25 to i64
  %arrayidx35 = getelementptr inbounds [8 x i32], ptr %arrow, i64 0, i64 %idxprom34
  store i32 %24, ptr %arrayidx35, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body15
  br label %for.inc36

for.inc36:                                        ; preds = %if.end
  %26 = load i32, ptr %j, align 4, !tbaa !5
  %inc37 = add nsw i32 %26, 1
  store i32 %inc37, ptr %j, align 4, !tbaa !5
  br label %for.cond13, !llvm.loop !13

for.end38:                                        ; preds = %for.cond13
  br label %for.inc39

for.inc39:                                        ; preds = %for.end38
  %27 = load i32, ptr %i, align 4, !tbaa !5
  %inc40 = add nsw i32 %27, 1
  store i32 %inc40, ptr %i, align 4, !tbaa !5
  br label %for.cond10, !llvm.loop !14

for.end41:                                        ; preds = %for.cond10
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond42

for.cond42:                                       ; preds = %for.inc73, %for.end41
  %28 = load i32, ptr %j, align 4, !tbaa !5
  %29 = load i32, ptr %n, align 4, !tbaa !5
  %cmp43 = icmp slt i32 %28, %29
  br i1 %cmp43, label %for.body44, label %for.end75

for.body44:                                       ; preds = %for.cond42
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond45

for.cond45:                                       ; preds = %for.inc70, %for.body44
  %30 = load i32, ptr %i, align 4, !tbaa !5
  %31 = load i32, ptr %m, align 4, !tbaa !5
  %cmp46 = icmp slt i32 %30, %31
  br i1 %cmp46, label %for.body47, label %for.end72

for.body47:                                       ; preds = %for.cond45
  %arrayidx48 = getelementptr inbounds [8 x [8 x i32]], ptr %a, i64 0, i64 0
  %32 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom49 = sext i32 %32 to i64
  %arrayidx50 = getelementptr inbounds [8 x i32], ptr %arrayidx48, i64 0, i64 %idxprom49
  %33 = load i32, ptr %arrayidx50, align 4, !tbaa !5
  %34 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom51 = sext i32 %34 to i64
  %arrayidx52 = getelementptr inbounds [8 x i32], ptr %min, i64 0, i64 %idxprom51
  store i32 %33, ptr %arrayidx52, align 4, !tbaa !5
  %35 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom53 = sext i32 %35 to i64
  %arrayidx54 = getelementptr inbounds [8 x [8 x i32]], ptr %a, i64 0, i64 %idxprom53
  %36 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom55 = sext i32 %36 to i64
  %arrayidx56 = getelementptr inbounds [8 x i32], ptr %arrayidx54, i64 0, i64 %idxprom55
  %37 = load i32, ptr %arrayidx56, align 4, !tbaa !5
  %38 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom57 = sext i32 %38 to i64
  %arrayidx58 = getelementptr inbounds [8 x i32], ptr %min, i64 0, i64 %idxprom57
  %39 = load i32, ptr %arrayidx58, align 4, !tbaa !5
  %cmp59 = icmp slt i32 %37, %39
  br i1 %cmp59, label %if.then60, label %if.end69

if.then60:                                        ; preds = %for.body47
  %40 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom61 = sext i32 %40 to i64
  %arrayidx62 = getelementptr inbounds [8 x [8 x i32]], ptr %a, i64 0, i64 %idxprom61
  %41 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom63 = sext i32 %41 to i64
  %arrayidx64 = getelementptr inbounds [8 x i32], ptr %arrayidx62, i64 0, i64 %idxprom63
  %42 = load i32, ptr %arrayidx64, align 4, !tbaa !5
  %43 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom65 = sext i32 %43 to i64
  %arrayidx66 = getelementptr inbounds [8 x i32], ptr %min, i64 0, i64 %idxprom65
  store i32 %42, ptr %arrayidx66, align 4, !tbaa !5
  %44 = load i32, ptr %i, align 4, !tbaa !5
  %45 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom67 = sext i32 %45 to i64
  %arrayidx68 = getelementptr inbounds [8 x i32], ptr %low, i64 0, i64 %idxprom67
  store i32 %44, ptr %arrayidx68, align 4, !tbaa !5
  br label %if.end69

if.end69:                                         ; preds = %if.then60, %for.body47
  br label %for.inc70

for.inc70:                                        ; preds = %if.end69
  %46 = load i32, ptr %i, align 4, !tbaa !5
  %inc71 = add nsw i32 %46, 1
  store i32 %inc71, ptr %i, align 4, !tbaa !5
  br label %for.cond45, !llvm.loop !15

for.end72:                                        ; preds = %for.cond45
  br label %for.inc73

for.inc73:                                        ; preds = %for.end72
  %47 = load i32, ptr %j, align 4, !tbaa !5
  %inc74 = add nsw i32 %47, 1
  store i32 %inc74, ptr %j, align 4, !tbaa !5
  br label %for.cond42, !llvm.loop !16

for.end75:                                        ; preds = %for.cond42
  store i32 0, ptr %i, align 4, !tbaa !5
  store i32 0, ptr %p, align 4, !tbaa !5
  br label %for.cond76

for.cond76:                                       ; preds = %for.inc98, %for.end75
  %48 = load i32, ptr %i, align 4, !tbaa !5
  %49 = load i32, ptr %m, align 4, !tbaa !5
  %cmp77 = icmp slt i32 %48, %49
  br i1 %cmp77, label %for.body78, label %for.end100

for.body78:                                       ; preds = %for.cond76
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond79

for.cond79:                                       ; preds = %for.inc95, %for.body78
  %50 = load i32, ptr %j, align 4, !tbaa !5
  %51 = load i32, ptr %n, align 4, !tbaa !5
  %cmp80 = icmp slt i32 %50, %51
  br i1 %cmp80, label %for.body81, label %for.end97

for.body81:                                       ; preds = %for.cond79
  %52 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom82 = sext i32 %52 to i64
  %arrayidx83 = getelementptr inbounds [8 x i32], ptr %min, i64 0, i64 %idxprom82
  %53 = load i32, ptr %arrayidx83, align 4, !tbaa !5
  %tobool = icmp ne i32 %53, 0
  br i1 %tobool, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %for.body81
  %54 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom84 = sext i32 %54 to i64
  %arrayidx85 = getelementptr inbounds [8 x i32], ptr %low, i64 0, i64 %idxprom84
  %55 = load i32, ptr %arrayidx85, align 4, !tbaa !5
  %56 = load i32, ptr %i, align 4, !tbaa !5
  %cmp86 = icmp eq i32 %55, %56
  br i1 %cmp86, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %57 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom87 = sext i32 %57 to i64
  %arrayidx88 = getelementptr inbounds [8 x i32], ptr %arrow, i64 0, i64 %idxprom87
  %58 = load i32, ptr %arrayidx88, align 4, !tbaa !5
  %59 = load i32, ptr %j, align 4, !tbaa !5
  %cmp89 = icmp eq i32 %58, %59
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %for.body81
  %60 = phi i1 [ false, %land.lhs.true ], [ false, %for.body81 ], [ %cmp89, %land.rhs ]
  %conv = zext i1 %60 to i32
  %61 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom90 = sext i32 %61 to i64
  %arrayidx91 = getelementptr inbounds [8 x i32], ptr %max, i64 0, i64 %idxprom90
  store i32 %conv, ptr %arrayidx91, align 4, !tbaa !5
  br i1 %60, label %if.then92, label %if.end94

if.then92:                                        ; preds = %land.end
  store i32 1, ptr %p, align 4, !tbaa !5
  %62 = load i32, ptr %i, align 4, !tbaa !5
  %63 = load i32, ptr %j, align 4, !tbaa !5
  %call93 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %62, i32 noundef %63)
  br label %for.end97

if.end94:                                         ; preds = %land.end
  br label %for.inc95

for.inc95:                                        ; preds = %if.end94
  %64 = load i32, ptr %j, align 4, !tbaa !5
  %inc96 = add nsw i32 %64, 1
  store i32 %inc96, ptr %j, align 4, !tbaa !5
  br label %for.cond79, !llvm.loop !17

for.end97:                                        ; preds = %if.then92, %for.cond79
  br label %for.inc98

for.inc98:                                        ; preds = %for.end97
  %65 = load i32, ptr %i, align 4, !tbaa !5
  %inc99 = add nsw i32 %65, 1
  store i32 %inc99, ptr %i, align 4, !tbaa !5
  br label %for.cond76, !llvm.loop !18

for.end100:                                       ; preds = %for.cond76
  %66 = load i32, ptr %p, align 4, !tbaa !5
  %cmp101 = icmp eq i32 %66, 0
  br i1 %cmp101, label %if.then102, label %if.end104

if.then102:                                       ; preds = %for.end100
  %call103 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  br label %if.end104

if.end104:                                        ; preds = %if.then102, %for.end100
  call void @llvm.lifetime.end.p0(i64 4, ptr %p) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %m) #4
  call void @llvm.lifetime.end.p0(i64 32, ptr %low) #4
  call void @llvm.lifetime.end.p0(i64 32, ptr %arrow) #4
  call void @llvm.lifetime.end.p0(i64 32, ptr %min) #4
  call void @llvm.lifetime.end.p0(i64 32, ptr %max) #4
  call void @llvm.lifetime.end.p0(i64 256, ptr %a) #4
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare i32 @__isoc23_scanf(ptr noundef, ...) #3

declare i32 @printf(ptr noundef, ...) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
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
!18 = distinct !{!18, !10, !11}
