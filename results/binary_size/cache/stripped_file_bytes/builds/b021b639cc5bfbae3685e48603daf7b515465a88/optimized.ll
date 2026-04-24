; ModuleID = '/tmp/tmp3e1kcdtr.cpp'
source_filename = "/tmp/tmp3e1kcdtr.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [18 x i8] c"%d %d %d %d %d %d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  %d = alloca i32, align 4
  %e = alloca i32, align 4
  %f = alloca i32, align 4
  %sum = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %a) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %b) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %c) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %d) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %e) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %f) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %sum) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #3
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, 100
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %a, ptr noundef %b, ptr noundef %c, ptr noundef %d, ptr noundef %e, ptr noundef %f)
  %1 = load i32, ptr %a, align 4, !tbaa !5
  %cmp1 = icmp eq i32 %1, 0
  br i1 %cmp1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %2 = load i32, ptr %b, align 4, !tbaa !5
  %cmp2 = icmp eq i32 %2, 0
  br i1 %cmp2, label %land.lhs.true3, label %if.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %3 = load i32, ptr %c, align 4, !tbaa !5
  %cmp4 = icmp eq i32 %3, 0
  br i1 %cmp4, label %land.lhs.true5, label %if.end

land.lhs.true5:                                   ; preds = %land.lhs.true3
  %4 = load i32, ptr %d, align 4, !tbaa !5
  %cmp6 = icmp eq i32 %4, 0
  br i1 %cmp6, label %land.lhs.true7, label %if.end

land.lhs.true7:                                   ; preds = %land.lhs.true5
  %5 = load i32, ptr %e, align 4, !tbaa !5
  %cmp8 = icmp eq i32 %5, 0
  br i1 %cmp8, label %land.lhs.true9, label %if.end

land.lhs.true9:                                   ; preds = %land.lhs.true7
  %6 = load i32, ptr %f, align 4, !tbaa !5
  %cmp10 = icmp eq i32 %6, 0
  br i1 %cmp10, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true9
  br label %for.end

if.end:                                           ; preds = %land.lhs.true9, %land.lhs.true7, %land.lhs.true5, %land.lhs.true3, %land.lhs.true, %for.body
  %7 = load i32, ptr %d, align 4, !tbaa !5
  %add = add nsw i32 %7, 12
  store i32 %add, ptr %d, align 4, !tbaa !5
  store i32 0, ptr %sum, align 4, !tbaa !5
  %8 = load i32, ptr %d, align 4, !tbaa !5
  %9 = load i32, ptr %a, align 4, !tbaa !5
  %sub = sub nsw i32 %8, %9
  %mul = mul nsw i32 %sub, 60
  %mul11 = mul nsw i32 %mul, 60
  %10 = load i32, ptr %sum, align 4, !tbaa !5
  %add12 = add nsw i32 %10, %mul11
  store i32 %add12, ptr %sum, align 4, !tbaa !5
  %11 = load i32, ptr %e, align 4, !tbaa !5
  %12 = load i32, ptr %b, align 4, !tbaa !5
  %cmp13 = icmp sge i32 %11, %12
  br i1 %cmp13, label %if.then14, label %if.else

if.then14:                                        ; preds = %if.end
  %13 = load i32, ptr %e, align 4, !tbaa !5
  %14 = load i32, ptr %b, align 4, !tbaa !5
  %sub15 = sub nsw i32 %13, %14
  %mul16 = mul nsw i32 %sub15, 60
  %15 = load i32, ptr %sum, align 4, !tbaa !5
  %add17 = add nsw i32 %15, %mul16
  store i32 %add17, ptr %sum, align 4, !tbaa !5
  br label %if.end21

if.else:                                          ; preds = %if.end
  %16 = load i32, ptr %b, align 4, !tbaa !5
  %17 = load i32, ptr %e, align 4, !tbaa !5
  %sub18 = sub nsw i32 %16, %17
  %mul19 = mul nsw i32 %sub18, 60
  %18 = load i32, ptr %sum, align 4, !tbaa !5
  %sub20 = sub nsw i32 %18, %mul19
  store i32 %sub20, ptr %sum, align 4, !tbaa !5
  br label %if.end21

if.end21:                                         ; preds = %if.else, %if.then14
  %19 = load i32, ptr %f, align 4, !tbaa !5
  %20 = load i32, ptr %c, align 4, !tbaa !5
  %cmp22 = icmp sge i32 %19, %20
  br i1 %cmp22, label %if.then23, label %if.else26

if.then23:                                        ; preds = %if.end21
  %21 = load i32, ptr %f, align 4, !tbaa !5
  %22 = load i32, ptr %c, align 4, !tbaa !5
  %sub24 = sub nsw i32 %21, %22
  %23 = load i32, ptr %sum, align 4, !tbaa !5
  %add25 = add nsw i32 %23, %sub24
  store i32 %add25, ptr %sum, align 4, !tbaa !5
  br label %if.end29

if.else26:                                        ; preds = %if.end21
  %24 = load i32, ptr %c, align 4, !tbaa !5
  %25 = load i32, ptr %f, align 4, !tbaa !5
  %sub27 = sub nsw i32 %24, %25
  %26 = load i32, ptr %sum, align 4, !tbaa !5
  %sub28 = sub nsw i32 %26, %sub27
  store i32 %sub28, ptr %sum, align 4, !tbaa !5
  br label %if.end29

if.end29:                                         ; preds = %if.else26, %if.then23
  %27 = load i32, ptr %sum, align 4, !tbaa !5
  %call30 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %27)
  br label %for.inc

for.inc:                                          ; preds = %if.end29
  %28 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %28, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %if.then, %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %sum) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %f) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %e) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %d) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %c) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %b) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %a) #3
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
