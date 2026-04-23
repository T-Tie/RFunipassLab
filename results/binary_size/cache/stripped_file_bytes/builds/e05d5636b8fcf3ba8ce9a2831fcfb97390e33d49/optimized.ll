; ModuleID = '/tmp/tmpi671glc2.cpp'
source_filename = "/tmp/tmpi671glc2.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"%d\0A%d\0A%d\0A%d\0A%d\0A%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  %i = alloca i32, align 4
  %e = alloca i32, align 4
  %f = alloca i32, align 4
  %k = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %n = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %a) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %b) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %c) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %e) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %f) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %x) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %y) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #3
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %div = sdiv i32 %0, 100
  store i32 %div, ptr %a, align 4, !tbaa !5
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %rem = srem i32 %1, 10
  store i32 %rem, ptr %b, align 4, !tbaa !5
  %2 = load i32, ptr %n, align 4, !tbaa !5
  %div1 = sdiv i32 %2, 10
  store i32 %div1, ptr %n, align 4, !tbaa !5
  %3 = load i32, ptr %n, align 4, !tbaa !5
  %rem2 = srem i32 %3, 10
  store i32 %rem2, ptr %c, align 4, !tbaa !5
  %4 = load i32, ptr %c, align 4, !tbaa !5
  switch i32 %4, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb3
    i32 2, label %sw.bb4
    i32 3, label %sw.bb5
    i32 4, label %sw.bb6
    i32 5, label %sw.bb7
    i32 6, label %sw.bb8
    i32 7, label %sw.bb9
    i32 8, label %sw.bb10
    i32 9, label %sw.bb11
  ]

sw.bb:                                            ; preds = %entry
  store i32 0, ptr %e, align 4, !tbaa !5
  store i32 0, ptr %f, align 4, !tbaa !5
  store i32 0, ptr %k, align 4, !tbaa !5
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  store i32 1, ptr %e, align 4, !tbaa !5
  store i32 0, ptr %f, align 4, !tbaa !5
  store i32 0, ptr %k, align 4, !tbaa !5
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  store i32 0, ptr %e, align 4, !tbaa !5
  store i32 1, ptr %f, align 4, !tbaa !5
  store i32 0, ptr %k, align 4, !tbaa !5
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  store i32 1, ptr %e, align 4, !tbaa !5
  store i32 1, ptr %f, align 4, !tbaa !5
  store i32 0, ptr %k, align 4, !tbaa !5
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  store i32 0, ptr %e, align 4, !tbaa !5
  store i32 2, ptr %f, align 4, !tbaa !5
  store i32 0, ptr %k, align 4, !tbaa !5
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  store i32 0, ptr %e, align 4, !tbaa !5
  store i32 0, ptr %f, align 4, !tbaa !5
  store i32 1, ptr %k, align 4, !tbaa !5
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  store i32 1, ptr %e, align 4, !tbaa !5
  store i32 0, ptr %f, align 4, !tbaa !5
  store i32 1, ptr %k, align 4, !tbaa !5
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  store i32 0, ptr %e, align 4, !tbaa !5
  store i32 1, ptr %f, align 4, !tbaa !5
  store i32 1, ptr %k, align 4, !tbaa !5
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  store i32 1, ptr %e, align 4, !tbaa !5
  store i32 1, ptr %f, align 4, !tbaa !5
  store i32 1, ptr %k, align 4, !tbaa !5
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry
  store i32 0, ptr %e, align 4, !tbaa !5
  store i32 2, ptr %f, align 4, !tbaa !5
  store i32 1, ptr %k, align 4, !tbaa !5
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb
  %5 = load i32, ptr %b, align 4, !tbaa !5
  %cmp = icmp sge i32 %5, 5
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.epilog
  %6 = load i32, ptr %b, align 4, !tbaa !5
  %rem12 = srem i32 %6, 5
  store i32 %rem12, ptr %x, align 4, !tbaa !5
  store i32 1, ptr %y, align 4, !tbaa !5
  br label %if.end

if.else:                                          ; preds = %sw.epilog
  %7 = load i32, ptr %b, align 4, !tbaa !5
  %rem13 = srem i32 %7, 5
  store i32 %rem13, ptr %x, align 4, !tbaa !5
  store i32 0, ptr %y, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %8 = load i32, ptr %a, align 4, !tbaa !5
  %9 = load i32, ptr %k, align 4, !tbaa !5
  %10 = load i32, ptr %f, align 4, !tbaa !5
  %11 = load i32, ptr %e, align 4, !tbaa !5
  %12 = load i32, ptr %y, align 4, !tbaa !5
  %13 = load i32, ptr %x, align 4, !tbaa !5
  %call14 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11, i32 noundef %12, i32 noundef %13)
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %y) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %x) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %f) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %e) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #3
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
