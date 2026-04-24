; ModuleID = '/tmp/tmphoynpu68.cpp'
source_filename = "/tmp/tmphoynpu68.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [13 x i8] c"%d%d%d%d%d%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %a = alloca [100 x i32], align 16
  %b = alloca [100 x i32], align 16
  %c = alloca [100 x i32], align 16
  %d = alloca [100 x i32], align 16
  %e = alloca [100 x i32], align 16
  %f = alloca [100 x i32], align 16
  %m = alloca [100 x i32], align 16
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 400, ptr %a) #3
  call void @llvm.lifetime.start.p0(i64 400, ptr %b) #3
  call void @llvm.lifetime.start.p0(i64 400, ptr %c) #3
  call void @llvm.lifetime.start.p0(i64 400, ptr %d) #3
  call void @llvm.lifetime.start.p0(i64 400, ptr %e) #3
  call void @llvm.lifetime.start.p0(i64 400, ptr %f) #3
  call void @llvm.lifetime.start.p0(i64 400, ptr %m) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #3
  store i32 0, ptr %n, align 4, !tbaa !5
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [100 x i32], ptr %a, i64 0, i64 %idxprom
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %idxprom1 = sext i32 %1 to i64
  %arrayidx2 = getelementptr inbounds [100 x i32], ptr %b, i64 0, i64 %idxprom1
  %2 = load i32, ptr %n, align 4, !tbaa !5
  %idxprom3 = sext i32 %2 to i64
  %arrayidx4 = getelementptr inbounds [100 x i32], ptr %c, i64 0, i64 %idxprom3
  %3 = load i32, ptr %n, align 4, !tbaa !5
  %idxprom5 = sext i32 %3 to i64
  %arrayidx6 = getelementptr inbounds [100 x i32], ptr %d, i64 0, i64 %idxprom5
  %4 = load i32, ptr %n, align 4, !tbaa !5
  %idxprom7 = sext i32 %4 to i64
  %arrayidx8 = getelementptr inbounds [100 x i32], ptr %e, i64 0, i64 %idxprom7
  %5 = load i32, ptr %n, align 4, !tbaa !5
  %idxprom9 = sext i32 %5 to i64
  %arrayidx10 = getelementptr inbounds [100 x i32], ptr %f, i64 0, i64 %idxprom9
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arrayidx, ptr noundef %arrayidx2, ptr noundef %arrayidx4, ptr noundef %arrayidx6, ptr noundef %arrayidx8, ptr noundef %arrayidx10)
  %6 = load i32, ptr %n, align 4, !tbaa !5
  %inc = add nsw i32 %6, 1
  store i32 %inc, ptr %n, align 4, !tbaa !5
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %7 = load i32, ptr %n, align 4, !tbaa !5
  %sub = sub nsw i32 %7, 1
  %idxprom11 = sext i32 %sub to i64
  %arrayidx12 = getelementptr inbounds [100 x i32], ptr %a, i64 0, i64 %idxprom11
  %8 = load i32, ptr %arrayidx12, align 4, !tbaa !5
  %cmp = icmp ne i32 %8, 0
  br i1 %cmp, label %do.body, label %do.end, !llvm.loop !9

do.end:                                           ; preds = %do.cond
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %9 = load i32, ptr %i, align 4, !tbaa !5
  %10 = load i32, ptr %n, align 4, !tbaa !5
  %sub13 = sub nsw i32 %10, 1
  %cmp14 = icmp slt i32 %9, %sub13
  br i1 %cmp14, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom15 = sext i32 %11 to i64
  %arrayidx16 = getelementptr inbounds [100 x i32], ptr %d, i64 0, i64 %idxprom15
  %12 = load i32, ptr %arrayidx16, align 4, !tbaa !5
  %13 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom17 = sext i32 %13 to i64
  %arrayidx18 = getelementptr inbounds [100 x i32], ptr %a, i64 0, i64 %idxprom17
  %14 = load i32, ptr %arrayidx18, align 4, !tbaa !5
  %sub19 = sub nsw i32 %12, %14
  %add = add nsw i32 %sub19, 12
  %mul = mul nsw i32 3600, %add
  %15 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom20 = sext i32 %15 to i64
  %arrayidx21 = getelementptr inbounds [100 x i32], ptr %e, i64 0, i64 %idxprom20
  %16 = load i32, ptr %arrayidx21, align 4, !tbaa !5
  %17 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom22 = sext i32 %17 to i64
  %arrayidx23 = getelementptr inbounds [100 x i32], ptr %b, i64 0, i64 %idxprom22
  %18 = load i32, ptr %arrayidx23, align 4, !tbaa !5
  %sub24 = sub nsw i32 %16, %18
  %mul25 = mul nsw i32 60, %sub24
  %add26 = add nsw i32 %mul, %mul25
  %19 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom27 = sext i32 %19 to i64
  %arrayidx28 = getelementptr inbounds [100 x i32], ptr %f, i64 0, i64 %idxprom27
  %20 = load i32, ptr %arrayidx28, align 4, !tbaa !5
  %add29 = add nsw i32 %add26, %20
  %21 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom30 = sext i32 %21 to i64
  %arrayidx31 = getelementptr inbounds [100 x i32], ptr %c, i64 0, i64 %idxprom30
  %22 = load i32, ptr %arrayidx31, align 4, !tbaa !5
  %sub32 = sub nsw i32 %add29, %22
  %23 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom33 = sext i32 %23 to i64
  %arrayidx34 = getelementptr inbounds [100 x i32], ptr %m, i64 0, i64 %idxprom33
  store i32 %sub32, ptr %arrayidx34, align 4, !tbaa !5
  %24 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom35 = sext i32 %24 to i64
  %arrayidx36 = getelementptr inbounds [100 x i32], ptr %m, i64 0, i64 %idxprom35
  %25 = load i32, ptr %arrayidx36, align 4, !tbaa !5
  %call37 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %25)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %26 = load i32, ptr %i, align 4, !tbaa !5
  %inc38 = add nsw i32 %26, 1
  store i32 %inc38, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !12

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #3
  call void @llvm.lifetime.end.p0(i64 400, ptr %m) #3
  call void @llvm.lifetime.end.p0(i64 400, ptr %f) #3
  call void @llvm.lifetime.end.p0(i64 400, ptr %e) #3
  call void @llvm.lifetime.end.p0(i64 400, ptr %d) #3
  call void @llvm.lifetime.end.p0(i64 400, ptr %c) #3
  call void @llvm.lifetime.end.p0(i64 400, ptr %b) #3
  call void @llvm.lifetime.end.p0(i64 400, ptr %a) #3
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
