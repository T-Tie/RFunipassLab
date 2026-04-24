; ModuleID = '/tmp/tmpa9qu9iw_.cpp'
source_filename = "/tmp/tmpa9qu9iw_.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%d\0A%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %n = alloca i32, align 4
  %a = alloca [100 x i32], align 16
  %i = alloca i32, align 4
  %e = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #3
  call void @llvm.lifetime.start.p0(i64 400, ptr %a) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %e) #3
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %n)
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp sle i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [100 x i32], ptr %a, i64 0, i64 %idxprom
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arrayidx)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %3, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %arrayidx2 = getelementptr inbounds [100 x i32], ptr %a, i64 0, i64 1
  %4 = load i32, ptr %arrayidx2, align 4, !tbaa !5
  %arrayidx3 = getelementptr inbounds [100 x i32], ptr %a, i64 0, i64 2
  %5 = load i32, ptr %arrayidx3, align 8, !tbaa !5
  %cmp4 = icmp slt i32 %4, %5
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %for.end
  %arrayidx5 = getelementptr inbounds [100 x i32], ptr %a, i64 0, i64 1
  %6 = load i32, ptr %arrayidx5, align 4, !tbaa !5
  store i32 %6, ptr %e, align 4, !tbaa !5
  %arrayidx6 = getelementptr inbounds [100 x i32], ptr %a, i64 0, i64 2
  %7 = load i32, ptr %arrayidx6, align 8, !tbaa !5
  %arrayidx7 = getelementptr inbounds [100 x i32], ptr %a, i64 0, i64 1
  store i32 %7, ptr %arrayidx7, align 4, !tbaa !5
  %arrayidx8 = getelementptr inbounds [100 x i32], ptr %a, i64 0, i64 1
  %8 = load i32, ptr %arrayidx8, align 4, !tbaa !5
  %arrayidx9 = getelementptr inbounds [100 x i32], ptr %a, i64 0, i64 2
  store i32 %8, ptr %arrayidx9, align 8, !tbaa !5
  br label %if.end

if.else:                                          ; preds = %for.end
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  store i32 3, ptr %i, align 4, !tbaa !5
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc35, %if.end
  %9 = load i32, ptr %i, align 4, !tbaa !5
  %10 = load i32, ptr %n, align 4, !tbaa !5
  %cmp11 = icmp sle i32 %9, %10
  br i1 %cmp11, label %for.body12, label %for.end37

for.body12:                                       ; preds = %for.cond10
  %11 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom13 = sext i32 %11 to i64
  %arrayidx14 = getelementptr inbounds [100 x i32], ptr %a, i64 0, i64 %idxprom13
  %12 = load i32, ptr %arrayidx14, align 4, !tbaa !5
  %arrayidx15 = getelementptr inbounds [100 x i32], ptr %a, i64 0, i64 1
  %13 = load i32, ptr %arrayidx15, align 4, !tbaa !5
  %cmp16 = icmp sgt i32 %12, %13
  br i1 %cmp16, label %if.then17, label %if.else23

if.then17:                                        ; preds = %for.body12
  %arrayidx18 = getelementptr inbounds [100 x i32], ptr %a, i64 0, i64 1
  %14 = load i32, ptr %arrayidx18, align 4, !tbaa !5
  store i32 %14, ptr %e, align 4, !tbaa !5
  %15 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom19 = sext i32 %15 to i64
  %arrayidx20 = getelementptr inbounds [100 x i32], ptr %a, i64 0, i64 %idxprom19
  %16 = load i32, ptr %arrayidx20, align 4, !tbaa !5
  %arrayidx21 = getelementptr inbounds [100 x i32], ptr %a, i64 0, i64 1
  store i32 %16, ptr %arrayidx21, align 4, !tbaa !5
  %17 = load i32, ptr %e, align 4, !tbaa !5
  %arrayidx22 = getelementptr inbounds [100 x i32], ptr %a, i64 0, i64 2
  store i32 %17, ptr %arrayidx22, align 8, !tbaa !5
  br label %if.end34

if.else23:                                        ; preds = %for.body12
  %18 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom24 = sext i32 %18 to i64
  %arrayidx25 = getelementptr inbounds [100 x i32], ptr %a, i64 0, i64 %idxprom24
  %19 = load i32, ptr %arrayidx25, align 4, !tbaa !5
  %arrayidx26 = getelementptr inbounds [100 x i32], ptr %a, i64 0, i64 2
  %20 = load i32, ptr %arrayidx26, align 8, !tbaa !5
  %cmp27 = icmp slt i32 %19, %20
  br i1 %cmp27, label %if.then28, label %if.else29

if.then28:                                        ; preds = %if.else23
  br label %if.end33

if.else29:                                        ; preds = %if.else23
  %21 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom30 = sext i32 %21 to i64
  %arrayidx31 = getelementptr inbounds [100 x i32], ptr %a, i64 0, i64 %idxprom30
  %22 = load i32, ptr %arrayidx31, align 4, !tbaa !5
  %arrayidx32 = getelementptr inbounds [100 x i32], ptr %a, i64 0, i64 2
  store i32 %22, ptr %arrayidx32, align 8, !tbaa !5
  br label %if.end33

if.end33:                                         ; preds = %if.else29, %if.then28
  br label %if.end34

if.end34:                                         ; preds = %if.end33, %if.then17
  br label %for.inc35

for.inc35:                                        ; preds = %if.end34
  %23 = load i32, ptr %i, align 4, !tbaa !5
  %inc36 = add nsw i32 %23, 1
  store i32 %inc36, ptr %i, align 4, !tbaa !5
  br label %for.cond10, !llvm.loop !12

for.end37:                                        ; preds = %for.cond10
  %arrayidx38 = getelementptr inbounds [100 x i32], ptr %a, i64 0, i64 1
  %24 = load i32, ptr %arrayidx38, align 4, !tbaa !5
  %arrayidx39 = getelementptr inbounds [100 x i32], ptr %a, i64 0, i64 2
  %25 = load i32, ptr %arrayidx39, align 8, !tbaa !5
  %call40 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %24, i32 noundef %25)
  call void @llvm.lifetime.end.p0(i64 4, ptr %e) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.end.p0(i64 400, ptr %a) #3
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
