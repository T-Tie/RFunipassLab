; ModuleID = '/tmp/tmpysqwb1xv.cpp'
source_filename = "/tmp/tmpysqwb1xv.cpp"
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
  %j = alloca i32, align 4
  %n = alloca i32, align 4
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  %a = alloca [1000 x i32], align 16
  %t = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %x1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %y1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %x2) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %y2) #3
  call void @llvm.lifetime.start.p0(i64 4000, ptr %a) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %t) #3
  store i32 -1, ptr %x1, align 4, !tbaa !5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %n)
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc11, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end13

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, ptr %j, align 4, !tbaa !5
  %3 = load i32, ptr %n, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %4 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [1000 x i32], ptr %a, i64 0, i64 %idxprom
  %call4 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arrayidx)
  %5 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom5 = sext i32 %5 to i64
  %arrayidx6 = getelementptr inbounds [1000 x i32], ptr %a, i64 0, i64 %idxprom5
  %6 = load i32, ptr %arrayidx6, align 4, !tbaa !5
  %cmp7 = icmp eq i32 %6, 0
  br i1 %cmp7, label %if.then, label %if.end10

if.then:                                          ; preds = %for.body3
  %7 = load i32, ptr %x1, align 4, !tbaa !5
  %cmp8 = icmp eq i32 %7, -1
  br i1 %cmp8, label %if.then9, label %if.end

if.then9:                                         ; preds = %if.then
  %8 = load i32, ptr %i, align 4, !tbaa !5
  store i32 %8, ptr %x1, align 4, !tbaa !5
  %9 = load i32, ptr %j, align 4, !tbaa !5
  store i32 %9, ptr %y1, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then9, %if.then
  %10 = load i32, ptr %i, align 4, !tbaa !5
  store i32 %10, ptr %x2, align 4, !tbaa !5
  %11 = load i32, ptr %j, align 4, !tbaa !5
  store i32 %11, ptr %y2, align 4, !tbaa !5
  br label %if.end10

if.end10:                                         ; preds = %if.end, %for.body3
  br label %for.inc

for.inc:                                          ; preds = %if.end10
  %12 = load i32, ptr %j, align 4, !tbaa !5
  %inc = add nsw i32 %12, 1
  store i32 %inc, ptr %j, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !9

for.end:                                          ; preds = %for.cond1
  br label %for.inc11

for.inc11:                                        ; preds = %for.end
  %13 = load i32, ptr %i, align 4, !tbaa !5
  %inc12 = add nsw i32 %13, 1
  store i32 %inc12, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !12

for.end13:                                        ; preds = %for.cond
  %14 = load i32, ptr %x2, align 4, !tbaa !5
  %15 = load i32, ptr %x1, align 4, !tbaa !5
  %sub = sub nsw i32 %14, %15
  %sub14 = sub nsw i32 %sub, 1
  %16 = load i32, ptr %y2, align 4, !tbaa !5
  %17 = load i32, ptr %y1, align 4, !tbaa !5
  %sub15 = sub nsw i32 %16, %17
  %sub16 = sub nsw i32 %sub15, 1
  %mul = mul nsw i32 %sub14, %sub16
  store i32 %mul, ptr %t, align 4, !tbaa !5
  %18 = load i32, ptr %t, align 4, !tbaa !5
  %call17 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %18)
  call void @llvm.lifetime.end.p0(i64 4, ptr %t) #3
  call void @llvm.lifetime.end.p0(i64 4000, ptr %a) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %y2) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %x2) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %y1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %x1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #3
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
