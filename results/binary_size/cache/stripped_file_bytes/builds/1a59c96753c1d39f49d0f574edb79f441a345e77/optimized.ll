; ModuleID = '/tmp/tmpto_oqaum.cpp'
source_filename = "/tmp/tmpto_oqaum.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%c=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"No\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %zfc = alloca [300 x i8], align 16
  %count = alloca i32, align 4
  %i = alloca i32, align 4
  %sum = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 300, ptr %zfc) #4
  %arraydecay = getelementptr inbounds [300 x i8], ptr %zfc, i64 0, i64 0
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arraydecay)
  call void @llvm.lifetime.start.p0(i64 4, ptr %count) #4
  %arraydecay1 = getelementptr inbounds [300 x i8], ptr %zfc, i64 0, i64 0
  %call2 = call i64 @strlen(ptr noundef %arraydecay1) #5
  %conv = trunc i64 %call2 to i32
  store i32 %conv, ptr %count, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  store i32 0, ptr %i, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %sum) #4
  store i32 0, ptr %sum, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #4
  store i32 97, ptr %k, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc13, %entry
  %0 = load i32, ptr %k, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, 123
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #4
  br label %for.end15

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %1 = load i32, ptr %i, align 4, !tbaa !5
  %2 = load i32, ptr %count, align 4, !tbaa !5
  %cmp4 = icmp slt i32 %1, %2
  br i1 %cmp4, label %for.body5, label %for.end

for.body5:                                        ; preds = %for.cond3
  %3 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [300 x i8], ptr %zfc, i64 0, i64 %idxprom
  %4 = load i8, ptr %arrayidx, align 1, !tbaa !9
  %conv6 = sext i8 %4 to i32
  %5 = load i32, ptr %k, align 4, !tbaa !5
  %cmp7 = icmp eq i32 %conv6, %5
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %for.body5
  %6 = load i32, ptr %sum, align 4, !tbaa !5
  %inc = add nsw i32 %6, 1
  store i32 %inc, ptr %sum, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body5
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %7 = load i32, ptr %i, align 4, !tbaa !5
  %inc8 = add nsw i32 %7, 1
  store i32 %inc8, ptr %i, align 4, !tbaa !5
  br label %for.cond3, !llvm.loop !10

for.end:                                          ; preds = %for.cond3
  %8 = load i32, ptr %sum, align 4, !tbaa !5
  %cmp9 = icmp ne i32 %8, 0
  br i1 %cmp9, label %if.then10, label %if.end12

if.then10:                                        ; preds = %for.end
  %9 = load i32, ptr %k, align 4, !tbaa !5
  %10 = load i32, ptr %sum, align 4, !tbaa !5
  %call11 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %9, i32 noundef %10)
  store i32 0, ptr %sum, align 4, !tbaa !5
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %for.end
  br label %for.inc13

for.inc13:                                        ; preds = %if.end12
  %11 = load i32, ptr %k, align 4, !tbaa !5
  %inc14 = add nsw i32 %11, 1
  store i32 %inc14, ptr %k, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !13

for.end15:                                        ; preds = %for.cond.cleanup
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc29, %for.end15
  %12 = load i32, ptr %i, align 4, !tbaa !5
  %13 = load i32, ptr %count, align 4, !tbaa !5
  %cmp17 = icmp slt i32 %12, %13
  br i1 %cmp17, label %for.body18, label %for.end31

for.body18:                                       ; preds = %for.cond16
  %14 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom19 = sext i32 %14 to i64
  %arrayidx20 = getelementptr inbounds [300 x i8], ptr %zfc, i64 0, i64 %idxprom19
  %15 = load i8, ptr %arrayidx20, align 1, !tbaa !9
  %conv21 = sext i8 %15 to i32
  %cmp22 = icmp sgt i32 %conv21, 96
  br i1 %cmp22, label %land.lhs.true, label %if.end28

land.lhs.true:                                    ; preds = %for.body18
  %16 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom23 = sext i32 %16 to i64
  %arrayidx24 = getelementptr inbounds [300 x i8], ptr %zfc, i64 0, i64 %idxprom23
  %17 = load i8, ptr %arrayidx24, align 1, !tbaa !9
  %conv25 = sext i8 %17 to i32
  %cmp26 = icmp slt i32 %conv25, 123
  br i1 %cmp26, label %if.then27, label %if.end28

if.then27:                                        ; preds = %land.lhs.true
  store i32 1, ptr %sum, align 4, !tbaa !5
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %land.lhs.true, %for.body18
  br label %for.inc29

for.inc29:                                        ; preds = %if.end28
  %18 = load i32, ptr %i, align 4, !tbaa !5
  %inc30 = add nsw i32 %18, 1
  store i32 %inc30, ptr %i, align 4, !tbaa !5
  br label %for.cond16, !llvm.loop !14

for.end31:                                        ; preds = %for.cond16
  %19 = load i32, ptr %sum, align 4, !tbaa !5
  %cmp32 = icmp ne i32 %19, 1
  br i1 %cmp32, label %if.then33, label %if.end35

if.then33:                                        ; preds = %for.end31
  %call34 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %for.end31
  call void @llvm.lifetime.end.p0(i64 4, ptr %sum) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %count) #4
  call void @llvm.lifetime.end.p0(i64 300, ptr %zfc) #4
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) #2

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #3

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { nounwind willreturn memory(read) }

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
!9 = !{!7, !7, i64 0}
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = distinct !{!13, !11, !12}
!14 = distinct !{!14, !11, !12}
