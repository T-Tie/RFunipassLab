; ModuleID = '/tmp/tmp9fx5gme3.cpp'
source_filename = "/tmp/tmp9fx5gme3.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c",%d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %n = alloca i32, align 4
  %a = alloca [300 x i32], align 16
  %b = alloca [300 x i32], align 16
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %r = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #3
  call void @llvm.lifetime.start.p0(i64 1200, ptr %a) #3
  call void @llvm.lifetime.start.p0(i64 1200, ptr %b) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %r) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #3
  store i32 1, ptr %k, align 4, !tbaa !5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %n)
  %arrayidx = getelementptr inbounds [300 x i32], ptr %a, i64 0, i64 0
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arrayidx)
  %arrayidx2 = getelementptr inbounds [300 x i32], ptr %a, i64 0, i64 0
  %0 = load i32, ptr %arrayidx2, align 16, !tbaa !5
  %arrayidx3 = getelementptr inbounds [300 x i32], ptr %b, i64 0, i64 0
  store i32 %0, ptr %arrayidx3, align 16, !tbaa !5
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc23, %entry
  %1 = load i32, ptr %i, align 4, !tbaa !5
  %2 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end25

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %r, align 4, !tbaa !5
  %3 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %3 to i64
  %arrayidx4 = getelementptr inbounds [300 x i32], ptr %a, i64 0, i64 %idxprom
  %call5 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arrayidx4)
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc, %for.body
  %4 = load i32, ptr %j, align 4, !tbaa !5
  %5 = load i32, ptr %i, align 4, !tbaa !5
  %cmp7 = icmp slt i32 %4, %5
  br i1 %cmp7, label %for.body8, label %for.end

for.body8:                                        ; preds = %for.cond6
  %6 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom9 = sext i32 %6 to i64
  %arrayidx10 = getelementptr inbounds [300 x i32], ptr %a, i64 0, i64 %idxprom9
  %7 = load i32, ptr %arrayidx10, align 4, !tbaa !5
  %8 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom11 = sext i32 %8 to i64
  %arrayidx12 = getelementptr inbounds [300 x i32], ptr %a, i64 0, i64 %idxprom11
  %9 = load i32, ptr %arrayidx12, align 4, !tbaa !5
  %cmp13 = icmp eq i32 %7, %9
  br i1 %cmp13, label %if.then, label %if.end

if.then:                                          ; preds = %for.body8
  %10 = load i32, ptr %r, align 4, !tbaa !5
  %inc = add nsw i32 %10, 1
  store i32 %inc, ptr %r, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body8
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load i32, ptr %j, align 4, !tbaa !5
  %inc14 = add nsw i32 %11, 1
  store i32 %inc14, ptr %j, align 4, !tbaa !5
  br label %for.cond6, !llvm.loop !9

for.end:                                          ; preds = %for.cond6
  %12 = load i32, ptr %r, align 4, !tbaa !5
  %cmp15 = icmp eq i32 %12, 0
  br i1 %cmp15, label %if.then16, label %if.end22

if.then16:                                        ; preds = %for.end
  %13 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom17 = sext i32 %13 to i64
  %arrayidx18 = getelementptr inbounds [300 x i32], ptr %a, i64 0, i64 %idxprom17
  %14 = load i32, ptr %arrayidx18, align 4, !tbaa !5
  %15 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom19 = sext i32 %15 to i64
  %arrayidx20 = getelementptr inbounds [300 x i32], ptr %b, i64 0, i64 %idxprom19
  store i32 %14, ptr %arrayidx20, align 4, !tbaa !5
  %16 = load i32, ptr %k, align 4, !tbaa !5
  %inc21 = add nsw i32 %16, 1
  store i32 %inc21, ptr %k, align 4, !tbaa !5
  br label %if.end22

if.end22:                                         ; preds = %if.then16, %for.end
  br label %for.inc23

for.inc23:                                        ; preds = %if.end22
  %17 = load i32, ptr %i, align 4, !tbaa !5
  %inc24 = add nsw i32 %17, 1
  store i32 %inc24, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !12

for.end25:                                        ; preds = %for.cond
  %arrayidx26 = getelementptr inbounds [300 x i32], ptr %b, i64 0, i64 0
  %18 = load i32, ptr %arrayidx26, align 16, !tbaa !5
  %call27 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %18)
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond28

for.cond28:                                       ; preds = %for.inc34, %for.end25
  %19 = load i32, ptr %i, align 4, !tbaa !5
  %20 = load i32, ptr %k, align 4, !tbaa !5
  %cmp29 = icmp slt i32 %19, %20
  br i1 %cmp29, label %for.body30, label %for.end36

for.body30:                                       ; preds = %for.cond28
  %21 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom31 = sext i32 %21 to i64
  %arrayidx32 = getelementptr inbounds [300 x i32], ptr %b, i64 0, i64 %idxprom31
  %22 = load i32, ptr %arrayidx32, align 4, !tbaa !5
  %call33 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %22)
  br label %for.inc34

for.inc34:                                        ; preds = %for.body30
  %23 = load i32, ptr %i, align 4, !tbaa !5
  %inc35 = add nsw i32 %23, 1
  store i32 %inc35, ptr %i, align 4, !tbaa !5
  br label %for.cond28, !llvm.loop !13

for.end36:                                        ; preds = %for.cond28
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %r) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.end.p0(i64 1200, ptr %b) #3
  call void @llvm.lifetime.end.p0(i64 1200, ptr %a) #3
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
