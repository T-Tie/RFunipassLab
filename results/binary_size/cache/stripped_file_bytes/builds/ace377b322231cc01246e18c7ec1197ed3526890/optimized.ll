; ModuleID = '/tmp/tmphp9wcsbp.cpp'
source_filename = "/tmp/tmphp9wcsbp.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %sz = alloca [1000 x [1000 x i32]], align 16
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %a1 = alloca i32, align 4
  %a2 = alloca i32, align 4
  %b1 = alloca i32, align 4
  %b2 = alloca i32, align 4
  %s = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4000000, ptr %sz) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %a1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %a2) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %b1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %b2) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %s) #3
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %n)
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %n, align 4, !tbaa !5
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
  %arrayidx = getelementptr inbounds [1000 x [1000 x i32]], ptr %sz, i64 0, i64 %idxprom
  %5 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom4 = sext i32 %5 to i64
  %arrayidx5 = getelementptr inbounds [1000 x i32], ptr %arrayidx, i64 0, i64 %idxprom4
  %call6 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arrayidx5)
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

for.cond10:                                       ; preds = %for.inc36, %for.end9
  %8 = load i32, ptr %i, align 4, !tbaa !5
  %9 = load i32, ptr %n, align 4, !tbaa !5
  %cmp11 = icmp slt i32 %8, %9
  br i1 %cmp11, label %for.body12, label %for.end38

for.body12:                                       ; preds = %for.cond10
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc33, %for.body12
  %10 = load i32, ptr %j, align 4, !tbaa !5
  %11 = load i32, ptr %n, align 4, !tbaa !5
  %cmp14 = icmp slt i32 %10, %11
  br i1 %cmp14, label %for.body15, label %for.end35

for.body15:                                       ; preds = %for.cond13
  %12 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom16 = sext i32 %12 to i64
  %arrayidx17 = getelementptr inbounds [1000 x [1000 x i32]], ptr %sz, i64 0, i64 %idxprom16
  %13 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom18 = sext i32 %13 to i64
  %arrayidx19 = getelementptr inbounds [1000 x i32], ptr %arrayidx17, i64 0, i64 %idxprom18
  %14 = load i32, ptr %arrayidx19, align 4, !tbaa !5
  %cmp20 = icmp eq i32 %14, 0
  br i1 %cmp20, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body15
  %15 = load i32, ptr %i, align 4, !tbaa !5
  %sub = sub nsw i32 %15, 1
  %idxprom21 = sext i32 %sub to i64
  %arrayidx22 = getelementptr inbounds [1000 x [1000 x i32]], ptr %sz, i64 0, i64 %idxprom21
  %16 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom23 = sext i32 %16 to i64
  %arrayidx24 = getelementptr inbounds [1000 x i32], ptr %arrayidx22, i64 0, i64 %idxprom23
  %17 = load i32, ptr %arrayidx24, align 4, !tbaa !5
  %cmp25 = icmp ne i32 %17, 0
  br i1 %cmp25, label %land.lhs.true26, label %if.end

land.lhs.true26:                                  ; preds = %land.lhs.true
  %18 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom27 = sext i32 %18 to i64
  %arrayidx28 = getelementptr inbounds [1000 x [1000 x i32]], ptr %sz, i64 0, i64 %idxprom27
  %19 = load i32, ptr %j, align 4, !tbaa !5
  %sub29 = sub nsw i32 %19, 1
  %idxprom30 = sext i32 %sub29 to i64
  %arrayidx31 = getelementptr inbounds [1000 x i32], ptr %arrayidx28, i64 0, i64 %idxprom30
  %20 = load i32, ptr %arrayidx31, align 4, !tbaa !5
  %cmp32 = icmp ne i32 %20, 0
  br i1 %cmp32, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true26
  %21 = load i32, ptr %i, align 4, !tbaa !5
  store i32 %21, ptr %a1, align 4, !tbaa !5
  %22 = load i32, ptr %j, align 4, !tbaa !5
  store i32 %22, ptr %b1, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true26, %land.lhs.true, %for.body15
  br label %for.inc33

for.inc33:                                        ; preds = %if.end
  %23 = load i32, ptr %j, align 4, !tbaa !5
  %inc34 = add nsw i32 %23, 1
  store i32 %inc34, ptr %j, align 4, !tbaa !5
  br label %for.cond13, !llvm.loop !13

for.end35:                                        ; preds = %for.cond13
  br label %for.inc36

for.inc36:                                        ; preds = %for.end35
  %24 = load i32, ptr %i, align 4, !tbaa !5
  %inc37 = add nsw i32 %24, 1
  store i32 %inc37, ptr %i, align 4, !tbaa !5
  br label %for.cond10, !llvm.loop !14

for.end38:                                        ; preds = %for.cond10
  %25 = load i32, ptr %n, align 4, !tbaa !5
  store i32 %25, ptr %i, align 4, !tbaa !5
  br label %for.cond39

for.cond39:                                       ; preds = %for.inc67, %for.end38
  %26 = load i32, ptr %i, align 4, !tbaa !5
  %cmp40 = icmp sgt i32 %26, 0
  br i1 %cmp40, label %for.body41, label %for.end69

for.body41:                                       ; preds = %for.cond39
  %27 = load i32, ptr %n, align 4, !tbaa !5
  store i32 %27, ptr %j, align 4, !tbaa !5
  br label %for.cond42

for.cond42:                                       ; preds = %for.inc65, %for.body41
  %28 = load i32, ptr %j, align 4, !tbaa !5
  %cmp43 = icmp sgt i32 %28, 0
  br i1 %cmp43, label %for.body44, label %for.end66

for.body44:                                       ; preds = %for.cond42
  %29 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom45 = sext i32 %29 to i64
  %arrayidx46 = getelementptr inbounds [1000 x [1000 x i32]], ptr %sz, i64 0, i64 %idxprom45
  %30 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom47 = sext i32 %30 to i64
  %arrayidx48 = getelementptr inbounds [1000 x i32], ptr %arrayidx46, i64 0, i64 %idxprom47
  %31 = load i32, ptr %arrayidx48, align 4, !tbaa !5
  %cmp49 = icmp eq i32 %31, 0
  br i1 %cmp49, label %land.lhs.true50, label %if.end64

land.lhs.true50:                                  ; preds = %for.body44
  %32 = load i32, ptr %i, align 4, !tbaa !5
  %add = add nsw i32 %32, 1
  %idxprom51 = sext i32 %add to i64
  %arrayidx52 = getelementptr inbounds [1000 x [1000 x i32]], ptr %sz, i64 0, i64 %idxprom51
  %33 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom53 = sext i32 %33 to i64
  %arrayidx54 = getelementptr inbounds [1000 x i32], ptr %arrayidx52, i64 0, i64 %idxprom53
  %34 = load i32, ptr %arrayidx54, align 4, !tbaa !5
  %cmp55 = icmp ne i32 %34, 0
  br i1 %cmp55, label %land.lhs.true56, label %if.end64

land.lhs.true56:                                  ; preds = %land.lhs.true50
  %35 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom57 = sext i32 %35 to i64
  %arrayidx58 = getelementptr inbounds [1000 x [1000 x i32]], ptr %sz, i64 0, i64 %idxprom57
  %36 = load i32, ptr %j, align 4, !tbaa !5
  %add59 = add nsw i32 %36, 1
  %idxprom60 = sext i32 %add59 to i64
  %arrayidx61 = getelementptr inbounds [1000 x i32], ptr %arrayidx58, i64 0, i64 %idxprom60
  %37 = load i32, ptr %arrayidx61, align 4, !tbaa !5
  %cmp62 = icmp ne i32 %37, 0
  br i1 %cmp62, label %if.then63, label %if.end64

if.then63:                                        ; preds = %land.lhs.true56
  %38 = load i32, ptr %i, align 4, !tbaa !5
  store i32 %38, ptr %a2, align 4, !tbaa !5
  %39 = load i32, ptr %j, align 4, !tbaa !5
  store i32 %39, ptr %b2, align 4, !tbaa !5
  br label %if.end64

if.end64:                                         ; preds = %if.then63, %land.lhs.true56, %land.lhs.true50, %for.body44
  br label %for.inc65

for.inc65:                                        ; preds = %if.end64
  %40 = load i32, ptr %j, align 4, !tbaa !5
  %dec = add nsw i32 %40, -1
  store i32 %dec, ptr %j, align 4, !tbaa !5
  br label %for.cond42, !llvm.loop !15

for.end66:                                        ; preds = %for.cond42
  br label %for.inc67

for.inc67:                                        ; preds = %for.end66
  %41 = load i32, ptr %i, align 4, !tbaa !5
  %dec68 = add nsw i32 %41, -1
  store i32 %dec68, ptr %i, align 4, !tbaa !5
  br label %for.cond39, !llvm.loop !16

for.end69:                                        ; preds = %for.cond39
  %42 = load i32, ptr %a2, align 4, !tbaa !5
  %43 = load i32, ptr %a1, align 4, !tbaa !5
  %sub70 = sub nsw i32 %42, %43
  %sub71 = sub nsw i32 %sub70, 1
  %44 = load i32, ptr %b2, align 4, !tbaa !5
  %45 = load i32, ptr %b1, align 4, !tbaa !5
  %sub72 = sub nsw i32 %44, %45
  %sub73 = sub nsw i32 %sub72, 1
  %mul = mul nsw i32 %sub71, %sub73
  store i32 %mul, ptr %s, align 4, !tbaa !5
  %46 = load i32, ptr %s, align 4, !tbaa !5
  %call74 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %46)
  call void @llvm.lifetime.end.p0(i64 4, ptr %s) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %b2) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %b1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %a2) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %a1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #3
  call void @llvm.lifetime.end.p0(i64 4000000, ptr %sz) #3
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
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !10, !11}
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
