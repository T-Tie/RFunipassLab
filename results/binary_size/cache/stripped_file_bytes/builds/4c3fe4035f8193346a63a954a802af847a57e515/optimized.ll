; ModuleID = '/tmp/tmpv_xik7mi.cpp'
source_filename = "/tmp/tmpv_xik7mi.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"%d\0A%d\0A%d\0A%d\0A%d\0A%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %n = alloca i32, align 4
  %a100 = alloca i32, align 4
  %a50 = alloca i32, align 4
  %a20 = alloca i32, align 4
  %a10 = alloca i32, align 4
  %a5 = alloca i32, align 4
  %a1 = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %a100) #3
  store i32 0, ptr %a100, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %a50) #3
  store i32 0, ptr %a50, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %a20) #3
  store i32 0, ptr %a20, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %a10) #3
  store i32 0, ptr %a10, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %a5) #3
  store i32 0, ptr %a5, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %a1) #3
  store i32 0, ptr %a1, align 4, !tbaa !5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %n)
  br label %for.cond

for.cond:                                         ; preds = %if.end35, %entry
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp ne i32 %0, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp1 = icmp sge i32 %1, 100
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %2 = load i32, ptr %a100, align 4, !tbaa !5
  %add = add nsw i32 %2, 1
  store i32 %add, ptr %a100, align 4, !tbaa !5
  %3 = load i32, ptr %n, align 4, !tbaa !5
  %sub = sub nsw i32 %3, 100
  store i32 %sub, ptr %n, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %4 = load i32, ptr %n, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %4, 100
  br i1 %cmp2, label %land.lhs.true, label %if.end7

land.lhs.true:                                    ; preds = %if.end
  %5 = load i32, ptr %n, align 4, !tbaa !5
  %cmp3 = icmp sge i32 %5, 50
  br i1 %cmp3, label %if.then4, label %if.end7

if.then4:                                         ; preds = %land.lhs.true
  %6 = load i32, ptr %a50, align 4, !tbaa !5
  %add5 = add nsw i32 %6, 1
  store i32 %add5, ptr %a50, align 4, !tbaa !5
  %7 = load i32, ptr %n, align 4, !tbaa !5
  %sub6 = sub nsw i32 %7, 50
  store i32 %sub6, ptr %n, align 4, !tbaa !5
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %land.lhs.true, %if.end
  %8 = load i32, ptr %n, align 4, !tbaa !5
  %cmp8 = icmp slt i32 %8, 50
  br i1 %cmp8, label %land.lhs.true9, label %if.end14

land.lhs.true9:                                   ; preds = %if.end7
  %9 = load i32, ptr %n, align 4, !tbaa !5
  %cmp10 = icmp sge i32 %9, 20
  br i1 %cmp10, label %if.then11, label %if.end14

if.then11:                                        ; preds = %land.lhs.true9
  %10 = load i32, ptr %a20, align 4, !tbaa !5
  %add12 = add nsw i32 %10, 1
  store i32 %add12, ptr %a20, align 4, !tbaa !5
  %11 = load i32, ptr %n, align 4, !tbaa !5
  %sub13 = sub nsw i32 %11, 20
  store i32 %sub13, ptr %n, align 4, !tbaa !5
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %land.lhs.true9, %if.end7
  %12 = load i32, ptr %n, align 4, !tbaa !5
  %cmp15 = icmp slt i32 %12, 20
  br i1 %cmp15, label %land.lhs.true16, label %if.end21

land.lhs.true16:                                  ; preds = %if.end14
  %13 = load i32, ptr %n, align 4, !tbaa !5
  %cmp17 = icmp sge i32 %13, 10
  br i1 %cmp17, label %if.then18, label %if.end21

if.then18:                                        ; preds = %land.lhs.true16
  %14 = load i32, ptr %a10, align 4, !tbaa !5
  %add19 = add nsw i32 %14, 1
  store i32 %add19, ptr %a10, align 4, !tbaa !5
  %15 = load i32, ptr %n, align 4, !tbaa !5
  %sub20 = sub nsw i32 %15, 10
  store i32 %sub20, ptr %n, align 4, !tbaa !5
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %land.lhs.true16, %if.end14
  %16 = load i32, ptr %n, align 4, !tbaa !5
  %cmp22 = icmp slt i32 %16, 10
  br i1 %cmp22, label %land.lhs.true23, label %if.end28

land.lhs.true23:                                  ; preds = %if.end21
  %17 = load i32, ptr %n, align 4, !tbaa !5
  %cmp24 = icmp sge i32 %17, 5
  br i1 %cmp24, label %if.then25, label %if.end28

if.then25:                                        ; preds = %land.lhs.true23
  %18 = load i32, ptr %a5, align 4, !tbaa !5
  %add26 = add nsw i32 %18, 1
  store i32 %add26, ptr %a5, align 4, !tbaa !5
  %19 = load i32, ptr %n, align 4, !tbaa !5
  %sub27 = sub nsw i32 %19, 5
  store i32 %sub27, ptr %n, align 4, !tbaa !5
  br label %if.end28

if.end28:                                         ; preds = %if.then25, %land.lhs.true23, %if.end21
  %20 = load i32, ptr %n, align 4, !tbaa !5
  %cmp29 = icmp slt i32 %20, 5
  br i1 %cmp29, label %land.lhs.true30, label %if.end35

land.lhs.true30:                                  ; preds = %if.end28
  %21 = load i32, ptr %n, align 4, !tbaa !5
  %cmp31 = icmp sge i32 %21, 1
  br i1 %cmp31, label %if.then32, label %if.end35

if.then32:                                        ; preds = %land.lhs.true30
  %22 = load i32, ptr %a1, align 4, !tbaa !5
  %add33 = add nsw i32 %22, 1
  store i32 %add33, ptr %a1, align 4, !tbaa !5
  %23 = load i32, ptr %n, align 4, !tbaa !5
  %sub34 = sub nsw i32 %23, 1
  store i32 %sub34, ptr %n, align 4, !tbaa !5
  br label %if.end35

if.end35:                                         ; preds = %if.then32, %land.lhs.true30, %if.end28
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %24 = load i32, ptr %a100, align 4, !tbaa !5
  %25 = load i32, ptr %a50, align 4, !tbaa !5
  %26 = load i32, ptr %a20, align 4, !tbaa !5
  %27 = load i32, ptr %a10, align 4, !tbaa !5
  %28 = load i32, ptr %a5, align 4, !tbaa !5
  %29 = load i32, ptr %a1, align 4, !tbaa !5
  %call36 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %24, i32 noundef %25, i32 noundef %26, i32 noundef %27, i32 noundef %28, i32 noundef %29)
  call void @llvm.lifetime.end.p0(i64 4, ptr %a1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %a5) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %a10) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %a20) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %a50) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %a100) #3
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
