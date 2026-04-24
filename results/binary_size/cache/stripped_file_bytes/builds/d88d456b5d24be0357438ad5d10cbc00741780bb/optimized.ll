; ModuleID = '/tmp/tmp2cmrty2r.cpp'
source_filename = "/tmp/tmp2cmrty2r.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [18 x i8] c"%d %d %d %d %d %d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %t = alloca i32, align 4
  %time = alloca [1000 x [6 x i32]], align 16
  %jg = alloca [1000 x i32], align 16
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %t) #4
  call void @llvm.lifetime.start.p0(i64 24000, ptr %time) #4
  call void @llvm.lifetime.start.p0(i64 4000, ptr %jg) #4
  call void @llvm.memset.p0.i64(ptr align 16 %jg, i8 0, i64 4000, i1 false)
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  br i1 true, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [1000 x [6 x i32]], ptr %time, i64 0, i64 %idxprom
  %arrayidx1 = getelementptr inbounds [6 x i32], ptr %arrayidx, i64 0, i64 0
  %1 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom2 = sext i32 %1 to i64
  %arrayidx3 = getelementptr inbounds [1000 x [6 x i32]], ptr %time, i64 0, i64 %idxprom2
  %arrayidx4 = getelementptr inbounds [6 x i32], ptr %arrayidx3, i64 0, i64 1
  %2 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom5 = sext i32 %2 to i64
  %arrayidx6 = getelementptr inbounds [1000 x [6 x i32]], ptr %time, i64 0, i64 %idxprom5
  %arrayidx7 = getelementptr inbounds [6 x i32], ptr %arrayidx6, i64 0, i64 2
  %3 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom8 = sext i32 %3 to i64
  %arrayidx9 = getelementptr inbounds [1000 x [6 x i32]], ptr %time, i64 0, i64 %idxprom8
  %arrayidx10 = getelementptr inbounds [6 x i32], ptr %arrayidx9, i64 0, i64 3
  %4 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom11 = sext i32 %4 to i64
  %arrayidx12 = getelementptr inbounds [1000 x [6 x i32]], ptr %time, i64 0, i64 %idxprom11
  %arrayidx13 = getelementptr inbounds [6 x i32], ptr %arrayidx12, i64 0, i64 4
  %5 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom14 = sext i32 %5 to i64
  %arrayidx15 = getelementptr inbounds [1000 x [6 x i32]], ptr %time, i64 0, i64 %idxprom14
  %arrayidx16 = getelementptr inbounds [6 x i32], ptr %arrayidx15, i64 0, i64 5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arrayidx1, ptr noundef %arrayidx4, ptr noundef %arrayidx7, ptr noundef %arrayidx10, ptr noundef %arrayidx13, ptr noundef %arrayidx16)
  %6 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom17 = sext i32 %6 to i64
  %arrayidx18 = getelementptr inbounds [1000 x [6 x i32]], ptr %time, i64 0, i64 %idxprom17
  %arrayidx19 = getelementptr inbounds [6 x i32], ptr %arrayidx18, i64 0, i64 0
  %7 = load i32, ptr %arrayidx19, align 8, !tbaa !5
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %8 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %8, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %if.then, %for.cond
  %9 = load i32, ptr %i, align 4, !tbaa !5
  store i32 %9, ptr %t, align 4, !tbaa !5
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond20

for.cond20:                                       ; preds = %for.inc58, %for.end
  %10 = load i32, ptr %i, align 4, !tbaa !5
  %11 = load i32, ptr %t, align 4, !tbaa !5
  %cmp21 = icmp slt i32 %10, %11
  br i1 %cmp21, label %for.body22, label %for.end60

for.body22:                                       ; preds = %for.cond20
  %12 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom23 = sext i32 %12 to i64
  %arrayidx24 = getelementptr inbounds [1000 x [6 x i32]], ptr %time, i64 0, i64 %idxprom23
  %arrayidx25 = getelementptr inbounds [6 x i32], ptr %arrayidx24, i64 0, i64 0
  %13 = load i32, ptr %arrayidx25, align 8, !tbaa !5
  %sub = sub nsw i32 12, %13
  %mul = mul nsw i32 %sub, 60
  %mul26 = mul nsw i32 %mul, 60
  %14 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom27 = sext i32 %14 to i64
  %arrayidx28 = getelementptr inbounds [1000 x [6 x i32]], ptr %time, i64 0, i64 %idxprom27
  %arrayidx29 = getelementptr inbounds [6 x i32], ptr %arrayidx28, i64 0, i64 1
  %15 = load i32, ptr %arrayidx29, align 4, !tbaa !5
  %mul30 = mul nsw i32 %15, 60
  %sub31 = sub nsw i32 %mul26, %mul30
  %16 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom32 = sext i32 %16 to i64
  %arrayidx33 = getelementptr inbounds [1000 x [6 x i32]], ptr %time, i64 0, i64 %idxprom32
  %arrayidx34 = getelementptr inbounds [6 x i32], ptr %arrayidx33, i64 0, i64 2
  %17 = load i32, ptr %arrayidx34, align 8, !tbaa !5
  %sub35 = sub nsw i32 %sub31, %17
  %18 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom36 = sext i32 %18 to i64
  %arrayidx37 = getelementptr inbounds [1000 x i32], ptr %jg, i64 0, i64 %idxprom36
  %19 = load i32, ptr %arrayidx37, align 4, !tbaa !5
  %add = add nsw i32 %19, %sub35
  store i32 %add, ptr %arrayidx37, align 4, !tbaa !5
  %20 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom38 = sext i32 %20 to i64
  %arrayidx39 = getelementptr inbounds [1000 x [6 x i32]], ptr %time, i64 0, i64 %idxprom38
  %arrayidx40 = getelementptr inbounds [6 x i32], ptr %arrayidx39, i64 0, i64 3
  %21 = load i32, ptr %arrayidx40, align 4, !tbaa !5
  %mul41 = mul nsw i32 %21, 60
  %mul42 = mul nsw i32 %mul41, 60
  %22 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom43 = sext i32 %22 to i64
  %arrayidx44 = getelementptr inbounds [1000 x [6 x i32]], ptr %time, i64 0, i64 %idxprom43
  %arrayidx45 = getelementptr inbounds [6 x i32], ptr %arrayidx44, i64 0, i64 4
  %23 = load i32, ptr %arrayidx45, align 8, !tbaa !5
  %mul46 = mul nsw i32 %23, 60
  %add47 = add nsw i32 %mul42, %mul46
  %24 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom48 = sext i32 %24 to i64
  %arrayidx49 = getelementptr inbounds [1000 x [6 x i32]], ptr %time, i64 0, i64 %idxprom48
  %arrayidx50 = getelementptr inbounds [6 x i32], ptr %arrayidx49, i64 0, i64 5
  %25 = load i32, ptr %arrayidx50, align 4, !tbaa !5
  %add51 = add nsw i32 %add47, %25
  %26 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom52 = sext i32 %26 to i64
  %arrayidx53 = getelementptr inbounds [1000 x i32], ptr %jg, i64 0, i64 %idxprom52
  %27 = load i32, ptr %arrayidx53, align 4, !tbaa !5
  %add54 = add nsw i32 %27, %add51
  store i32 %add54, ptr %arrayidx53, align 4, !tbaa !5
  %28 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom55 = sext i32 %28 to i64
  %arrayidx56 = getelementptr inbounds [1000 x i32], ptr %jg, i64 0, i64 %idxprom55
  %29 = load i32, ptr %arrayidx56, align 4, !tbaa !5
  %call57 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %29)
  br label %for.inc58

for.inc58:                                        ; preds = %for.body22
  %30 = load i32, ptr %i, align 4, !tbaa !5
  %inc59 = add nsw i32 %30, 1
  store i32 %inc59, ptr %i, align 4, !tbaa !5
  br label %for.cond20, !llvm.loop !12

for.end60:                                        ; preds = %for.cond20
  call void @llvm.lifetime.end.p0(i64 4000, ptr %jg) #4
  call void @llvm.lifetime.end.p0(i64 24000, ptr %time) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %t) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
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
