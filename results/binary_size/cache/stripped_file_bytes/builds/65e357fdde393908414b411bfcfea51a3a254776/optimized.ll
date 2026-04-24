; ModuleID = '/tmp/tmpc5ej7hzs.cpp'
source_filename = "/tmp/tmpc5ej7hzs.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d,\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %e = alloca i32, align 4
  %sz = alloca [500 x i32], align 16
  %jishu = alloca [500 x i32], align 16
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %a) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %b) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %e) #3
  call void @llvm.lifetime.start.p0(i64 2000, ptr %sz) #3
  call void @llvm.lifetime.start.p0(i64 2000, ptr %jishu) #3
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %n)
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [500 x i32], ptr %sz, i64 0, i64 %idxprom
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arrayidx)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %3, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc20, %for.end
  %4 = load i32, ptr %i, align 4, !tbaa !5
  %5 = load i32, ptr %n, align 4, !tbaa !5
  %cmp3 = icmp slt i32 %4, %5
  br i1 %cmp3, label %for.body4, label %for.end22

for.body4:                                        ; preds = %for.cond2
  %6 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom5 = sext i32 %6 to i64
  %arrayidx6 = getelementptr inbounds [500 x i32], ptr %sz, i64 0, i64 %idxprom5
  %7 = load i32, ptr %arrayidx6, align 4, !tbaa !5
  %rem = srem i32 %7, 2
  %cmp7 = icmp ne i32 %rem, 0
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %for.body4
  %8 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom8 = sext i32 %8 to i64
  %arrayidx9 = getelementptr inbounds [500 x i32], ptr %sz, i64 0, i64 %idxprom8
  %9 = load i32, ptr %arrayidx9, align 4, !tbaa !5
  %10 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom10 = sext i32 %10 to i64
  %arrayidx11 = getelementptr inbounds [500 x i32], ptr %jishu, i64 0, i64 %idxprom10
  store i32 %9, ptr %arrayidx11, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body4
  %11 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom12 = sext i32 %11 to i64
  %arrayidx13 = getelementptr inbounds [500 x i32], ptr %sz, i64 0, i64 %idxprom12
  %12 = load i32, ptr %arrayidx13, align 4, !tbaa !5
  %rem14 = srem i32 %12, 2
  %cmp15 = icmp eq i32 %rem14, 0
  br i1 %cmp15, label %if.then16, label %if.end19

if.then16:                                        ; preds = %if.end
  %13 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom17 = sext i32 %13 to i64
  %arrayidx18 = getelementptr inbounds [500 x i32], ptr %jishu, i64 0, i64 %idxprom17
  store i32 0, ptr %arrayidx18, align 4, !tbaa !5
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %if.end
  br label %for.inc20

for.inc20:                                        ; preds = %if.end19
  %14 = load i32, ptr %i, align 4, !tbaa !5
  %inc21 = add nsw i32 %14, 1
  store i32 %inc21, ptr %i, align 4, !tbaa !5
  br label %for.cond2, !llvm.loop !12

for.end22:                                        ; preds = %for.cond2
  store i32 1, ptr %a, align 4, !tbaa !5
  br label %for.cond23

for.cond23:                                       ; preds = %for.inc49, %for.end22
  %15 = load i32, ptr %a, align 4, !tbaa !5
  %16 = load i32, ptr %n, align 4, !tbaa !5
  %cmp24 = icmp sle i32 %15, %16
  br i1 %cmp24, label %for.body25, label %for.end51

for.body25:                                       ; preds = %for.cond23
  store i32 0, ptr %b, align 4, !tbaa !5
  br label %for.cond26

for.cond26:                                       ; preds = %for.inc46, %for.body25
  %17 = load i32, ptr %b, align 4, !tbaa !5
  %18 = load i32, ptr %n, align 4, !tbaa !5
  %19 = load i32, ptr %a, align 4, !tbaa !5
  %sub = sub nsw i32 %18, %19
  %cmp27 = icmp slt i32 %17, %sub
  br i1 %cmp27, label %for.body28, label %for.end48

for.body28:                                       ; preds = %for.cond26
  %20 = load i32, ptr %b, align 4, !tbaa !5
  %idxprom29 = sext i32 %20 to i64
  %arrayidx30 = getelementptr inbounds [500 x i32], ptr %jishu, i64 0, i64 %idxprom29
  %21 = load i32, ptr %arrayidx30, align 4, !tbaa !5
  %22 = load i32, ptr %b, align 4, !tbaa !5
  %add = add nsw i32 %22, 1
  %idxprom31 = sext i32 %add to i64
  %arrayidx32 = getelementptr inbounds [500 x i32], ptr %jishu, i64 0, i64 %idxprom31
  %23 = load i32, ptr %arrayidx32, align 4, !tbaa !5
  %cmp33 = icmp sgt i32 %21, %23
  br i1 %cmp33, label %if.then34, label %if.end45

if.then34:                                        ; preds = %for.body28
  %24 = load i32, ptr %b, align 4, !tbaa !5
  %idxprom35 = sext i32 %24 to i64
  %arrayidx36 = getelementptr inbounds [500 x i32], ptr %jishu, i64 0, i64 %idxprom35
  %25 = load i32, ptr %arrayidx36, align 4, !tbaa !5
  store i32 %25, ptr %e, align 4, !tbaa !5
  %26 = load i32, ptr %b, align 4, !tbaa !5
  %add37 = add nsw i32 %26, 1
  %idxprom38 = sext i32 %add37 to i64
  %arrayidx39 = getelementptr inbounds [500 x i32], ptr %jishu, i64 0, i64 %idxprom38
  %27 = load i32, ptr %arrayidx39, align 4, !tbaa !5
  %28 = load i32, ptr %b, align 4, !tbaa !5
  %idxprom40 = sext i32 %28 to i64
  %arrayidx41 = getelementptr inbounds [500 x i32], ptr %jishu, i64 0, i64 %idxprom40
  store i32 %27, ptr %arrayidx41, align 4, !tbaa !5
  %29 = load i32, ptr %e, align 4, !tbaa !5
  %30 = load i32, ptr %b, align 4, !tbaa !5
  %add42 = add nsw i32 %30, 1
  %idxprom43 = sext i32 %add42 to i64
  %arrayidx44 = getelementptr inbounds [500 x i32], ptr %jishu, i64 0, i64 %idxprom43
  store i32 %29, ptr %arrayidx44, align 4, !tbaa !5
  br label %if.end45

if.end45:                                         ; preds = %if.then34, %for.body28
  br label %for.inc46

for.inc46:                                        ; preds = %if.end45
  %31 = load i32, ptr %b, align 4, !tbaa !5
  %inc47 = add nsw i32 %31, 1
  store i32 %inc47, ptr %b, align 4, !tbaa !5
  br label %for.cond26, !llvm.loop !13

for.end48:                                        ; preds = %for.cond26
  br label %for.inc49

for.inc49:                                        ; preds = %for.end48
  %32 = load i32, ptr %a, align 4, !tbaa !5
  %inc50 = add nsw i32 %32, 1
  store i32 %inc50, ptr %a, align 4, !tbaa !5
  br label %for.cond23, !llvm.loop !14

for.end51:                                        ; preds = %for.cond23
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond52

for.cond52:                                       ; preds = %for.inc64, %for.end51
  %33 = load i32, ptr %i, align 4, !tbaa !5
  %34 = load i32, ptr %n, align 4, !tbaa !5
  %sub53 = sub nsw i32 %34, 1
  %cmp54 = icmp slt i32 %33, %sub53
  br i1 %cmp54, label %for.body55, label %for.end66

for.body55:                                       ; preds = %for.cond52
  %35 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom56 = sext i32 %35 to i64
  %arrayidx57 = getelementptr inbounds [500 x i32], ptr %jishu, i64 0, i64 %idxprom56
  %36 = load i32, ptr %arrayidx57, align 4, !tbaa !5
  %cmp58 = icmp ne i32 %36, 0
  br i1 %cmp58, label %if.then59, label %if.end63

if.then59:                                        ; preds = %for.body55
  %37 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom60 = sext i32 %37 to i64
  %arrayidx61 = getelementptr inbounds [500 x i32], ptr %jishu, i64 0, i64 %idxprom60
  %38 = load i32, ptr %arrayidx61, align 4, !tbaa !5
  %call62 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %38)
  br label %if.end63

if.end63:                                         ; preds = %if.then59, %for.body55
  br label %for.inc64

for.inc64:                                        ; preds = %if.end63
  %39 = load i32, ptr %i, align 4, !tbaa !5
  %inc65 = add nsw i32 %39, 1
  store i32 %inc65, ptr %i, align 4, !tbaa !5
  br label %for.cond52, !llvm.loop !15

for.end66:                                        ; preds = %for.cond52
  %40 = load i32, ptr %n, align 4, !tbaa !5
  %sub67 = sub nsw i32 %40, 1
  %idxprom68 = sext i32 %sub67 to i64
  %arrayidx69 = getelementptr inbounds [500 x i32], ptr %jishu, i64 0, i64 %idxprom68
  %41 = load i32, ptr %arrayidx69, align 4, !tbaa !5
  %call70 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %41)
  call void @llvm.lifetime.end.p0(i64 2000, ptr %jishu) #3
  call void @llvm.lifetime.end.p0(i64 2000, ptr %sz) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %e) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %b) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %a) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #3
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
