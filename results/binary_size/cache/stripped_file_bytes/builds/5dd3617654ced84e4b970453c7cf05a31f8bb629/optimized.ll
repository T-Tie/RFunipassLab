; ModuleID = '/tmp/tmpxkwwyxn_.cpp'
source_filename = "/tmp/tmpxkwwyxn_.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %a = alloca i32, align 4
  %sz = alloca [6 x i32], align 16
  %rmb = alloca [6 x i32], align 16
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %a) #3
  call void @llvm.lifetime.start.p0(i64 24, ptr %sz) #3
  call void @llvm.lifetime.start.p0(i64 24, ptr %rmb) #3
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %a)
  %arrayidx = getelementptr inbounds [6 x i32], ptr %rmb, i64 0, i64 0
  store i32 100, ptr %arrayidx, align 16, !tbaa !5
  %arrayidx1 = getelementptr inbounds [6 x i32], ptr %rmb, i64 0, i64 1
  store i32 50, ptr %arrayidx1, align 4, !tbaa !5
  %arrayidx2 = getelementptr inbounds [6 x i32], ptr %rmb, i64 0, i64 2
  store i32 20, ptr %arrayidx2, align 8, !tbaa !5
  %arrayidx3 = getelementptr inbounds [6 x i32], ptr %rmb, i64 0, i64 3
  store i32 10, ptr %arrayidx3, align 4, !tbaa !5
  %arrayidx4 = getelementptr inbounds [6 x i32], ptr %rmb, i64 0, i64 4
  store i32 5, ptr %arrayidx4, align 16, !tbaa !5
  %arrayidx5 = getelementptr inbounds [6 x i32], ptr %rmb, i64 0, i64 50
  store i32 1, ptr %arrayidx5, align 8, !tbaa !5
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, 5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %a, align 4, !tbaa !5
  %2 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %2 to i64
  %arrayidx6 = getelementptr inbounds [6 x i32], ptr %rmb, i64 0, i64 %idxprom
  %3 = load i32, ptr %arrayidx6, align 4, !tbaa !5
  %div = sdiv i32 %1, %3
  %4 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom7 = sext i32 %4 to i64
  %arrayidx8 = getelementptr inbounds [6 x i32], ptr %sz, i64 0, i64 %idxprom7
  store i32 %div, ptr %arrayidx8, align 4, !tbaa !5
  %5 = load i32, ptr %a, align 4, !tbaa !5
  %6 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom9 = sext i32 %6 to i64
  %arrayidx10 = getelementptr inbounds [6 x i32], ptr %sz, i64 0, i64 %idxprom9
  %7 = load i32, ptr %arrayidx10, align 4, !tbaa !5
  %8 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom11 = sext i32 %8 to i64
  %arrayidx12 = getelementptr inbounds [6 x i32], ptr %rmb, i64 0, i64 %idxprom11
  %9 = load i32, ptr %arrayidx12, align 4, !tbaa !5
  %mul = mul nsw i32 %7, %9
  %sub = sub nsw i32 %5, %mul
  store i32 %sub, ptr %a, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %10, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc19, %for.end
  %11 = load i32, ptr %i, align 4, !tbaa !5
  %cmp14 = icmp slt i32 %11, 5
  br i1 %cmp14, label %for.body15, label %for.end21

for.body15:                                       ; preds = %for.cond13
  %12 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom16 = sext i32 %12 to i64
  %arrayidx17 = getelementptr inbounds [6 x i32], ptr %sz, i64 0, i64 %idxprom16
  %13 = load i32, ptr %arrayidx17, align 4, !tbaa !5
  %call18 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %13)
  br label %for.inc19

for.inc19:                                        ; preds = %for.body15
  %14 = load i32, ptr %i, align 4, !tbaa !5
  %inc20 = add nsw i32 %14, 1
  store i32 %inc20, ptr %i, align 4, !tbaa !5
  br label %for.cond13, !llvm.loop !12

for.end21:                                        ; preds = %for.cond13
  %15 = load i32, ptr %a, align 4, !tbaa !5
  %call22 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %15)
  call void @llvm.lifetime.end.p0(i64 24, ptr %rmb) #3
  call void @llvm.lifetime.end.p0(i64 24, ptr %sz) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %a) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #3
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
