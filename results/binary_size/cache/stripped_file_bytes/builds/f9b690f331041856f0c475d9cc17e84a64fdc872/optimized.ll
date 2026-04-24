; ModuleID = '/tmp/tmptq7rj8uk.cpp'
source_filename = "/tmp/tmptq7rj8uk.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%d\0A%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %a = alloca [100 x i32], align 16
  %t = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %n = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4, !tbaa !5
  store ptr %argv, ptr %argv.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 400, ptr %a) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %t) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #3
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
  %arrayidx = getelementptr inbounds [100 x i32], ptr %a, i64 0, i64 %idxprom
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arrayidx)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %3, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !13

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc28, %for.end
  %4 = load i32, ptr %i, align 4, !tbaa !5
  %5 = load i32, ptr %n, align 4, !tbaa !5
  %sub = sub nsw i32 %5, 1
  %cmp3 = icmp slt i32 %4, %sub
  br i1 %cmp3, label %for.body4, label %for.end30

for.body4:                                        ; preds = %for.cond2
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc25, %for.body4
  %6 = load i32, ptr %j, align 4, !tbaa !5
  %7 = load i32, ptr %n, align 4, !tbaa !5
  %8 = load i32, ptr %i, align 4, !tbaa !5
  %sub6 = sub nsw i32 %7, %8
  %sub7 = sub nsw i32 %sub6, 1
  %cmp8 = icmp slt i32 %6, %sub7
  br i1 %cmp8, label %for.body9, label %for.end27

for.body9:                                        ; preds = %for.cond5
  %9 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom10 = sext i32 %9 to i64
  %arrayidx11 = getelementptr inbounds [100 x i32], ptr %a, i64 0, i64 %idxprom10
  %10 = load i32, ptr %arrayidx11, align 4, !tbaa !5
  %11 = load i32, ptr %j, align 4, !tbaa !5
  %add = add nsw i32 %11, 1
  %idxprom12 = sext i32 %add to i64
  %arrayidx13 = getelementptr inbounds [100 x i32], ptr %a, i64 0, i64 %idxprom12
  %12 = load i32, ptr %arrayidx13, align 4, !tbaa !5
  %cmp14 = icmp slt i32 %10, %12
  br i1 %cmp14, label %if.then, label %if.end

if.then:                                          ; preds = %for.body9
  %13 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom15 = sext i32 %13 to i64
  %arrayidx16 = getelementptr inbounds [100 x i32], ptr %a, i64 0, i64 %idxprom15
  %14 = load i32, ptr %arrayidx16, align 4, !tbaa !5
  store i32 %14, ptr %t, align 4, !tbaa !5
  %15 = load i32, ptr %j, align 4, !tbaa !5
  %add17 = add nsw i32 %15, 1
  %idxprom18 = sext i32 %add17 to i64
  %arrayidx19 = getelementptr inbounds [100 x i32], ptr %a, i64 0, i64 %idxprom18
  %16 = load i32, ptr %arrayidx19, align 4, !tbaa !5
  %17 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom20 = sext i32 %17 to i64
  %arrayidx21 = getelementptr inbounds [100 x i32], ptr %a, i64 0, i64 %idxprom20
  store i32 %16, ptr %arrayidx21, align 4, !tbaa !5
  %18 = load i32, ptr %t, align 4, !tbaa !5
  %19 = load i32, ptr %j, align 4, !tbaa !5
  %add22 = add nsw i32 %19, 1
  %idxprom23 = sext i32 %add22 to i64
  %arrayidx24 = getelementptr inbounds [100 x i32], ptr %a, i64 0, i64 %idxprom23
  store i32 %18, ptr %arrayidx24, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body9
  br label %for.inc25

for.inc25:                                        ; preds = %if.end
  %20 = load i32, ptr %j, align 4, !tbaa !5
  %inc26 = add nsw i32 %20, 1
  store i32 %inc26, ptr %j, align 4, !tbaa !5
  br label %for.cond5, !llvm.loop !16

for.end27:                                        ; preds = %for.cond5
  br label %for.inc28

for.inc28:                                        ; preds = %for.end27
  %21 = load i32, ptr %i, align 4, !tbaa !5
  %inc29 = add nsw i32 %21, 1
  store i32 %inc29, ptr %i, align 4, !tbaa !5
  br label %for.cond2, !llvm.loop !17

for.end30:                                        ; preds = %for.cond2
  %arrayidx31 = getelementptr inbounds [100 x i32], ptr %a, i64 0, i64 0
  %22 = load i32, ptr %arrayidx31, align 16, !tbaa !5
  %arrayidx32 = getelementptr inbounds [100 x i32], ptr %a, i64 0, i64 1
  %23 = load i32, ptr %arrayidx32, align 4, !tbaa !5
  %call33 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %22, i32 noundef %23)
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %t) #3
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
!9 = !{!10, !10, i64 0}
!10 = !{!"p2 omnipotent char", !11, i64 0}
!11 = !{!"any p2 pointer", !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = distinct !{!13, !14, !15}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{!"llvm.loop.unroll.disable"}
!16 = distinct !{!16, !14, !15}
!17 = distinct !{!17, !14, !15}
