; ModuleID = '/tmp/tmp_3po7eml.cpp'
source_filename = "/tmp/tmp_3po7eml.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_Z4findPiii(ptr noundef %x, i32 noundef %y, i32 noundef %z) #0 {
entry:
  %x.addr = alloca ptr, align 8
  %y.addr = alloca i32, align 4
  %z.addr = alloca i32, align 4
  %count = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %x, ptr %x.addr, align 8, !tbaa !5
  store i32 %y, ptr %y.addr, align 4, !tbaa !10
  store i32 %z, ptr %z.addr, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %count) #4
  store i32 0, ptr %count, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  store i32 0, ptr %i, align 4, !tbaa !10
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !10
  %1 = load i32, ptr %y.addr, align 4, !tbaa !10
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
  br label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %x.addr, align 8, !tbaa !5
  %3 = load i32, ptr %i, align 4, !tbaa !10
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds i32, ptr %2, i64 %idxprom
  %4 = load i32, ptr %arrayidx, align 4, !tbaa !10
  %5 = load i32, ptr %z.addr, align 4, !tbaa !10
  %cmp1 = icmp eq i32 %4, %5
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %6 = load i32, ptr %count, align 4, !tbaa !10
  %inc = add nsw i32 %6, 1
  store i32 %inc, ptr %count, align 4, !tbaa !10
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %7 = load i32, ptr %i, align 4, !tbaa !10
  %inc2 = add nsw i32 %7, 1
  store i32 %inc2, ptr %i, align 4, !tbaa !10
  br label %for.cond, !llvm.loop !12

for.end:                                          ; preds = %for.cond.cleanup
  %8 = load i32, ptr %count, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 4, ptr %count) #4
  ret i32 %8
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_Z5countPii(ptr noundef %x, i32 noundef %y) #0 {
entry:
  %x.addr = alloca ptr, align 8
  %y.addr = alloca i32, align 4
  %count1 = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %x, ptr %x.addr, align 8, !tbaa !5
  store i32 %y, ptr %y.addr, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %count1) #4
  store i32 0, ptr %count1, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  store i32 0, ptr %i, align 4, !tbaa !10
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !10
  %1 = load i32, ptr %y.addr, align 4, !tbaa !10
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
  br label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %x.addr, align 8, !tbaa !5
  %3 = load i32, ptr %y.addr, align 4, !tbaa !10
  %4 = load ptr, ptr %x.addr, align 8, !tbaa !5
  %5 = load i32, ptr %i, align 4, !tbaa !10
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds i32, ptr %4, i64 %idxprom
  %6 = load i32, ptr %arrayidx, align 4, !tbaa !10
  %mul = mul nsw i32 2, %6
  %call = call noundef i32 @_Z4findPiii(ptr noundef %2, i32 noundef %3, i32 noundef %mul)
  %7 = load i32, ptr %count1, align 4, !tbaa !10
  %add = add nsw i32 %7, %call
  store i32 %add, ptr %count1, align 4, !tbaa !10
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, ptr %i, align 4, !tbaa !10
  %inc = add nsw i32 %8, 1
  store i32 %inc, ptr %i, align 4, !tbaa !10
  br label %for.cond, !llvm.loop !15

for.end:                                          ; preds = %for.cond.cleanup
  %9 = load i32, ptr %count1, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 4, ptr %count1) #4
  ret i32 %9
}

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #2 {
entry:
  %retval = alloca i32, align 4
  %temp = alloca [16 x i32], align 16
  %len = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr %temp) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #4
  store i32 0, ptr %len, align 4, !tbaa !10
  %0 = load i32, ptr %len, align 4, !tbaa !10
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [16 x i32], ptr %temp, i64 0, i64 %idxprom
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arrayidx)
  br label %while.cond

while.cond:                                       ; preds = %while.end, %entry
  %1 = load i32, ptr %len, align 4, !tbaa !10
  %idxprom1 = sext i32 %1 to i64
  %arrayidx2 = getelementptr inbounds [16 x i32], ptr %temp, i64 0, i64 %idxprom1
  %2 = load i32, ptr %arrayidx2, align 4, !tbaa !10
  %cmp = icmp ne i32 %2, -1
  br i1 %cmp, label %while.body, label %while.end15

while.body:                                       ; preds = %while.cond
  br label %while.cond3

while.cond3:                                      ; preds = %while.body7, %while.body
  %3 = load i32, ptr %len, align 4, !tbaa !10
  %idxprom4 = sext i32 %3 to i64
  %arrayidx5 = getelementptr inbounds [16 x i32], ptr %temp, i64 0, i64 %idxprom4
  %4 = load i32, ptr %arrayidx5, align 4, !tbaa !10
  %cmp6 = icmp ne i32 %4, 0
  br i1 %cmp6, label %while.body7, label %while.end

while.body7:                                      ; preds = %while.cond3
  %5 = load i32, ptr %len, align 4, !tbaa !10
  %inc = add nsw i32 %5, 1
  store i32 %inc, ptr %len, align 4, !tbaa !10
  %6 = load i32, ptr %len, align 4, !tbaa !10
  %idxprom8 = sext i32 %6 to i64
  %arrayidx9 = getelementptr inbounds [16 x i32], ptr %temp, i64 0, i64 %idxprom8
  %call10 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arrayidx9)
  br label %while.cond3, !llvm.loop !16

while.end:                                        ; preds = %while.cond3
  %arraydecay = getelementptr inbounds [16 x i32], ptr %temp, i64 0, i64 0
  %7 = load i32, ptr %len, align 4, !tbaa !10
  %call11 = call noundef i32 @_Z5countPii(ptr noundef %arraydecay, i32 noundef %7)
  %call12 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %call11)
  %arrayidx13 = getelementptr inbounds [16 x i32], ptr %temp, i64 0, i64 0
  %call14 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arrayidx13)
  store i32 0, ptr %len, align 4, !tbaa !10
  br label %while.cond, !llvm.loop !17

while.end15:                                      ; preds = %while.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr %temp) #4
  ret i32 0
}

declare i32 @__isoc23_scanf(ptr noundef, ...) #3

declare i32 @printf(ptr noundef, ...) #3

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!6 = !{!"p1 int", !7, i64 0}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C++ TBAA"}
!10 = !{!11, !11, i64 0}
!11 = !{!"int", !8, i64 0}
!12 = distinct !{!12, !13, !14}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!"llvm.loop.unroll.disable"}
!15 = distinct !{!15, !13, !14}
!16 = distinct !{!16, !13, !14}
!17 = distinct !{!17, !13, !14}
