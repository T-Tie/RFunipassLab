; ModuleID = '/tmp/tmp110k4kyk.cpp'
source_filename = "/tmp/tmp110k4kyk.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %shuzu = alloca [16 x i32], align 16
  %i = alloca i32, align 4
  %t = alloca i32, align 4
  %k = alloca i32, align 4
  %num = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr %shuzu) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %t) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %num) #3
  store i32 0, ptr %num, align 4, !tbaa !5
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc31, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [16 x i32], ptr %shuzu, i64 0, i64 %idxprom
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arrayidx)
  %1 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom1 = sext i32 %1 to i64
  %arrayidx2 = getelementptr inbounds [16 x i32], ptr %shuzu, i64 0, i64 %idxprom1
  %2 = load i32, ptr %arrayidx2, align 4, !tbaa !5
  %cmp = icmp eq i32 %2, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.cond
  br label %for.end33

if.end:                                           ; preds = %for.cond
  %3 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom3 = sext i32 %3 to i64
  %arrayidx4 = getelementptr inbounds [16 x i32], ptr %shuzu, i64 0, i64 %idxprom3
  %4 = load i32, ptr %arrayidx4, align 4, !tbaa !5
  %cmp5 = icmp eq i32 %4, 0
  br i1 %cmp5, label %if.then6, label %if.end30

if.then6:                                         ; preds = %if.end
  store i32 0, ptr %t, align 4, !tbaa !5
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc26, %if.then6
  %5 = load i32, ptr %t, align 4, !tbaa !5
  %6 = load i32, ptr %i, align 4, !tbaa !5
  %cmp8 = icmp slt i32 %5, %6
  br i1 %cmp8, label %for.body, label %for.end28

for.body:                                         ; preds = %for.cond7
  %7 = load i32, ptr %t, align 4, !tbaa !5
  %add = add nsw i32 %7, 1
  store i32 %add, ptr %k, align 4, !tbaa !5
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc, %for.body
  %8 = load i32, ptr %k, align 4, !tbaa !5
  %9 = load i32, ptr %i, align 4, !tbaa !5
  %cmp10 = icmp slt i32 %8, %9
  br i1 %cmp10, label %for.body11, label %for.end

for.body11:                                       ; preds = %for.cond9
  %10 = load i32, ptr %t, align 4, !tbaa !5
  %idxprom12 = sext i32 %10 to i64
  %arrayidx13 = getelementptr inbounds [16 x i32], ptr %shuzu, i64 0, i64 %idxprom12
  %11 = load i32, ptr %arrayidx13, align 4, !tbaa !5
  %12 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom14 = sext i32 %12 to i64
  %arrayidx15 = getelementptr inbounds [16 x i32], ptr %shuzu, i64 0, i64 %idxprom14
  %13 = load i32, ptr %arrayidx15, align 4, !tbaa !5
  %mul = mul nsw i32 %13, 2
  %cmp16 = icmp eq i32 %11, %mul
  br i1 %cmp16, label %if.then23, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body11
  %14 = load i32, ptr %t, align 4, !tbaa !5
  %idxprom17 = sext i32 %14 to i64
  %arrayidx18 = getelementptr inbounds [16 x i32], ptr %shuzu, i64 0, i64 %idxprom17
  %15 = load i32, ptr %arrayidx18, align 4, !tbaa !5
  %mul19 = mul nsw i32 %15, 2
  %16 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom20 = sext i32 %16 to i64
  %arrayidx21 = getelementptr inbounds [16 x i32], ptr %shuzu, i64 0, i64 %idxprom20
  %17 = load i32, ptr %arrayidx21, align 4, !tbaa !5
  %cmp22 = icmp eq i32 %mul19, %17
  br i1 %cmp22, label %if.then23, label %if.end24

if.then23:                                        ; preds = %lor.lhs.false, %for.body11
  %18 = load i32, ptr %num, align 4, !tbaa !5
  %inc = add nsw i32 %18, 1
  store i32 %inc, ptr %num, align 4, !tbaa !5
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end24
  %19 = load i32, ptr %k, align 4, !tbaa !5
  %inc25 = add nsw i32 %19, 1
  store i32 %inc25, ptr %k, align 4, !tbaa !5
  br label %for.cond9, !llvm.loop !9

for.end:                                          ; preds = %for.cond9
  br label %for.inc26

for.inc26:                                        ; preds = %for.end
  %20 = load i32, ptr %t, align 4, !tbaa !5
  %inc27 = add nsw i32 %20, 1
  store i32 %inc27, ptr %t, align 4, !tbaa !5
  br label %for.cond7, !llvm.loop !12

for.end28:                                        ; preds = %for.cond7
  %21 = load i32, ptr %num, align 4, !tbaa !5
  %call29 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %21)
  store i32 0, ptr %num, align 4, !tbaa !5
  store i32 -1, ptr %i, align 4, !tbaa !5
  br label %if.end30

if.end30:                                         ; preds = %for.end28, %if.end
  br label %for.inc31

for.inc31:                                        ; preds = %if.end30
  %22 = load i32, ptr %i, align 4, !tbaa !5
  %inc32 = add nsw i32 %22, 1
  store i32 %inc32, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !13

for.end33:                                        ; preds = %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %num) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %t) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.end.p0(i64 64, ptr %shuzu) #3
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
