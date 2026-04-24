; ModuleID = '/tmp/tmpbxf1ip1v.cpp'
source_filename = "/tmp/tmpbxf1ip1v.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"%d\0A%d\0A%d\0A%d\0A%d\0A%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %n = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  %d = alloca i32, align 4
  %e = alloca i32, align 4
  %f = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4, !tbaa !5
  store ptr %argv, ptr %argv.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %a) #3
  store i32 0, ptr %a, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %b) #3
  store i32 0, ptr %b, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %c) #3
  store i32 0, ptr %c, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %d) #3
  store i32 0, ptr %d, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %e) #3
  store i32 0, ptr %e, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %f) #3
  store i32 0, ptr %f, align 4, !tbaa !5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp sge i32 %0, 100
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %div = sdiv i32 %1, 100
  store i32 %div, ptr %a, align 4, !tbaa !5
  %2 = load i32, ptr %n, align 4, !tbaa !5
  %rem = srem i32 %2, 100
  store i32 %rem, ptr %n, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, ptr %n, align 4, !tbaa !5
  %cmp1 = icmp sge i32 %3, 50
  br i1 %cmp1, label %if.then2, label %if.end5

if.then2:                                         ; preds = %if.end
  %4 = load i32, ptr %n, align 4, !tbaa !5
  %div3 = sdiv i32 %4, 50
  store i32 %div3, ptr %b, align 4, !tbaa !5
  %5 = load i32, ptr %n, align 4, !tbaa !5
  %rem4 = srem i32 %5, 50
  store i32 %rem4, ptr %n, align 4, !tbaa !5
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %if.end
  %6 = load i32, ptr %n, align 4, !tbaa !5
  %cmp6 = icmp sge i32 %6, 20
  br i1 %cmp6, label %if.then7, label %if.end10

if.then7:                                         ; preds = %if.end5
  %7 = load i32, ptr %n, align 4, !tbaa !5
  %div8 = sdiv i32 %7, 20
  store i32 %div8, ptr %c, align 4, !tbaa !5
  %8 = load i32, ptr %n, align 4, !tbaa !5
  %rem9 = srem i32 %8, 20
  store i32 %rem9, ptr %n, align 4, !tbaa !5
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %if.end5
  %9 = load i32, ptr %n, align 4, !tbaa !5
  %cmp11 = icmp sge i32 %9, 10
  br i1 %cmp11, label %if.then12, label %if.end15

if.then12:                                        ; preds = %if.end10
  %10 = load i32, ptr %n, align 4, !tbaa !5
  %div13 = sdiv i32 %10, 10
  store i32 %div13, ptr %d, align 4, !tbaa !5
  %11 = load i32, ptr %n, align 4, !tbaa !5
  %rem14 = srem i32 %11, 10
  store i32 %rem14, ptr %n, align 4, !tbaa !5
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %if.end10
  %12 = load i32, ptr %n, align 4, !tbaa !5
  %cmp16 = icmp sge i32 %12, 5
  br i1 %cmp16, label %if.then17, label %if.end20

if.then17:                                        ; preds = %if.end15
  %13 = load i32, ptr %n, align 4, !tbaa !5
  %div18 = sdiv i32 %13, 5
  store i32 %div18, ptr %e, align 4, !tbaa !5
  %14 = load i32, ptr %n, align 4, !tbaa !5
  %rem19 = srem i32 %14, 5
  store i32 %rem19, ptr %n, align 4, !tbaa !5
  br label %if.end20

if.end20:                                         ; preds = %if.then17, %if.end15
  %15 = load i32, ptr %n, align 4, !tbaa !5
  %cmp21 = icmp slt i32 %15, 5
  br i1 %cmp21, label %land.lhs.true, label %if.end24

land.lhs.true:                                    ; preds = %if.end20
  %16 = load i32, ptr %n, align 4, !tbaa !5
  %cmp22 = icmp sgt i32 %16, 0
  br i1 %cmp22, label %if.then23, label %if.end24

if.then23:                                        ; preds = %land.lhs.true
  %17 = load i32, ptr %n, align 4, !tbaa !5
  store i32 %17, ptr %f, align 4, !tbaa !5
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %land.lhs.true, %if.end20
  %18 = load i32, ptr %a, align 4, !tbaa !5
  %19 = load i32, ptr %b, align 4, !tbaa !5
  %20 = load i32, ptr %c, align 4, !tbaa !5
  %21 = load i32, ptr %d, align 4, !tbaa !5
  %22 = load i32, ptr %e, align 4, !tbaa !5
  %23 = load i32, ptr %f, align 4, !tbaa !5
  %call25 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %18, i32 noundef %19, i32 noundef %20, i32 noundef %21, i32 noundef %22, i32 noundef %23)
  call void @llvm.lifetime.end.p0(i64 4, ptr %f) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %e) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %d) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %c) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %b) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %a) #3
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
!9 = !{!10, !10, i64 0}
!10 = !{!"p2 omnipotent char", !11, i64 0}
!11 = !{!"any p2 pointer", !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
