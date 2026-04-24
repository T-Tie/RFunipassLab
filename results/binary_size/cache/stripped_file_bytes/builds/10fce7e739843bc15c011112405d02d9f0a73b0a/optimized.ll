; ModuleID = '/tmp/tmp9kwwv8su.cpp'
source_filename = "/tmp/tmp9kwwv8su.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %s = alloca [16 x i32], align 16
  %i = alloca i32, align 4
  %a = alloca i32, align 4
  %j = alloca i32, align 4
  %b = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4, !tbaa !5
  store ptr %argv, ptr %argv.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 64, ptr %s) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #3
  store i32 1, ptr %i, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %a) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %b) #3
  br label %loop

loop:                                             ; preds = %if.then, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [16 x i32], ptr %s, i64 0, i64 %idxprom
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arrayidx)
  %1 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom1 = sext i32 %1 to i64
  %arrayidx2 = getelementptr inbounds [16 x i32], ptr %s, i64 0, i64 %idxprom1
  %2 = load i32, ptr %arrayidx2, align 4, !tbaa !5
  %cmp = icmp ne i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %loop
  %3 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %3, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %loop

if.end:                                           ; preds = %loop
  %4 = load i32, ptr %i, align 4, !tbaa !5
  store i32 %4, ptr %a, align 4, !tbaa !5
  store i32 0, ptr %b, align 4, !tbaa !5
  %5 = load i32, ptr %a, align 4, !tbaa !5
  store i32 %5, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc22, %if.end
  %6 = load i32, ptr %i, align 4, !tbaa !5
  %cmp3 = icmp sge i32 %6, 1
  br i1 %cmp3, label %for.body, label %for.end23

for.body:                                         ; preds = %for.cond
  store i32 1, ptr %j, align 4, !tbaa !5
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body
  %7 = load i32, ptr %j, align 4, !tbaa !5
  %8 = load i32, ptr %i, align 4, !tbaa !5
  %cmp5 = icmp slt i32 %7, %8
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %9 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom7 = sext i32 %9 to i64
  %arrayidx8 = getelementptr inbounds [16 x i32], ptr %s, i64 0, i64 %idxprom7
  %10 = load i32, ptr %arrayidx8, align 4, !tbaa !5
  %11 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom9 = sext i32 %11 to i64
  %arrayidx10 = getelementptr inbounds [16 x i32], ptr %s, i64 0, i64 %idxprom9
  %12 = load i32, ptr %arrayidx10, align 4, !tbaa !5
  %mul = mul nsw i32 2, %12
  %cmp11 = icmp eq i32 %10, %mul
  br i1 %cmp11, label %if.then18, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body6
  %13 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom12 = sext i32 %13 to i64
  %arrayidx13 = getelementptr inbounds [16 x i32], ptr %s, i64 0, i64 %idxprom12
  %14 = load i32, ptr %arrayidx13, align 4, !tbaa !5
  %15 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom14 = sext i32 %15 to i64
  %arrayidx15 = getelementptr inbounds [16 x i32], ptr %s, i64 0, i64 %idxprom14
  %16 = load i32, ptr %arrayidx15, align 4, !tbaa !5
  %mul16 = mul nsw i32 2, %16
  %cmp17 = icmp eq i32 %14, %mul16
  br i1 %cmp17, label %if.then18, label %if.end20

if.then18:                                        ; preds = %lor.lhs.false, %for.body6
  %17 = load i32, ptr %b, align 4, !tbaa !5
  %inc19 = add nsw i32 %17, 1
  store i32 %inc19, ptr %b, align 4, !tbaa !5
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end20
  %18 = load i32, ptr %j, align 4, !tbaa !5
  %inc21 = add nsw i32 %18, 1
  store i32 %inc21, ptr %j, align 4, !tbaa !5
  br label %for.cond4, !llvm.loop !13

for.end:                                          ; preds = %for.cond4
  br label %for.inc22

for.inc22:                                        ; preds = %for.end
  %19 = load i32, ptr %i, align 4, !tbaa !5
  %dec = add nsw i32 %19, -1
  store i32 %dec, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !16

for.end23:                                        ; preds = %for.cond
  %20 = load i32, ptr %b, align 4, !tbaa !5
  %call24 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %20)
  call void @llvm.lifetime.end.p0(i64 4, ptr %b) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %a) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.end.p0(i64 64, ptr %s) #3
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
!9 = !{!10, !10, i64 0}
!10 = !{!"p2 omnipotent char", !11, i64 0}
!11 = !{!"any p2 pointer", !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = distinct !{!13, !14, !15}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{!"llvm.loop.unroll.disable"}
!16 = distinct !{!16, !14, !15}
