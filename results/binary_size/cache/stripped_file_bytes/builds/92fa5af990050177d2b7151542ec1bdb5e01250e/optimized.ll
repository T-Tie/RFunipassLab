; ModuleID = '/tmp/tmp0tpnm1w_.cpp'
source_filename = "/tmp/tmp0tpnm1w_.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %a = alloca [100 x i32], align 16
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %num = alloca i32, align 4
  %total = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4, !tbaa !5
  store ptr %argv, ptr %argv.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 400, ptr %a) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %num) #3
  store i32 0, ptr %num, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %total) #3
  store i32 0, ptr %total, align 4, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %for.end25, %entry
  br label %while.body

while.body:                                       ; preds = %while.cond
  store i32 0, ptr %num, align 4, !tbaa !5
  br label %while.cond1

while.cond1:                                      ; preds = %if.end9, %while.body
  br label %while.body2

while.body2:                                      ; preds = %while.cond1
  %0 = load i32, ptr %num, align 4, !tbaa !5
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [100 x i32], ptr %a, i64 0, i64 %idxprom
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arrayidx)
  %1 = load i32, ptr %num, align 4, !tbaa !5
  %idxprom3 = sext i32 %1 to i64
  %arrayidx4 = getelementptr inbounds [100 x i32], ptr %a, i64 0, i64 %idxprom3
  %2 = load i32, ptr %arrayidx4, align 4, !tbaa !5
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body2
  br label %while.end

if.end:                                           ; preds = %while.body2
  %3 = load i32, ptr %num, align 4, !tbaa !5
  %idxprom5 = sext i32 %3 to i64
  %arrayidx6 = getelementptr inbounds [100 x i32], ptr %a, i64 0, i64 %idxprom5
  %4 = load i32, ptr %arrayidx6, align 4, !tbaa !5
  %cmp7 = icmp eq i32 %4, -1
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %total) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %num) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.end.p0(i64 400, ptr %a) #3
  ret i32 0

if.end9:                                          ; preds = %if.end
  %5 = load i32, ptr %num, align 4, !tbaa !5
  %inc = add nsw i32 %5, 1
  store i32 %inc, ptr %num, align 4, !tbaa !5
  br label %while.cond1, !llvm.loop !13

while.end:                                        ; preds = %if.then
  store i32 0, ptr %total, align 4, !tbaa !5
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc23, %while.end
  %6 = load i32, ptr %i, align 4, !tbaa !5
  %7 = load i32, ptr %num, align 4, !tbaa !5
  %cmp10 = icmp slt i32 %6, %7
  br i1 %cmp10, label %for.body, label %for.end25

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc, %for.body
  %8 = load i32, ptr %j, align 4, !tbaa !5
  %9 = load i32, ptr %num, align 4, !tbaa !5
  %cmp12 = icmp slt i32 %8, %9
  br i1 %cmp12, label %for.body13, label %for.end

for.body13:                                       ; preds = %for.cond11
  %10 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom14 = sext i32 %10 to i64
  %arrayidx15 = getelementptr inbounds [100 x i32], ptr %a, i64 0, i64 %idxprom14
  %11 = load i32, ptr %arrayidx15, align 4, !tbaa !5
  %12 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom16 = sext i32 %12 to i64
  %arrayidx17 = getelementptr inbounds [100 x i32], ptr %a, i64 0, i64 %idxprom16
  %13 = load i32, ptr %arrayidx17, align 4, !tbaa !5
  %mul = mul nsw i32 2, %13
  %cmp18 = icmp eq i32 %11, %mul
  br i1 %cmp18, label %if.then19, label %if.end21

if.then19:                                        ; preds = %for.body13
  %14 = load i32, ptr %total, align 4, !tbaa !5
  %inc20 = add nsw i32 %14, 1
  store i32 %inc20, ptr %total, align 4, !tbaa !5
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %for.body13
  br label %for.inc

for.inc:                                          ; preds = %if.end21
  %15 = load i32, ptr %j, align 4, !tbaa !5
  %inc22 = add nsw i32 %15, 1
  store i32 %inc22, ptr %j, align 4, !tbaa !5
  br label %for.cond11, !llvm.loop !16

for.end:                                          ; preds = %for.cond11
  br label %for.inc23

for.inc23:                                        ; preds = %for.end
  %16 = load i32, ptr %i, align 4, !tbaa !5
  %inc24 = add nsw i32 %16, 1
  store i32 %inc24, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !17

for.end25:                                        ; preds = %for.cond
  %17 = load i32, ptr %total, align 4, !tbaa !5
  %call26 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %17)
  br label %while.cond, !llvm.loop !18
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
!9 = !{!10, !10, i64 0}
!10 = !{!"p2 omnipotent char", !11, i64 0}
!11 = !{!"any p2 pointer", !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = distinct !{!13, !14, !15}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{!"llvm.loop.unroll.disable"}
!16 = distinct !{!16, !14, !15}
!17 = distinct !{!17, !14, !15}
!18 = distinct !{!18, !14, !15}
