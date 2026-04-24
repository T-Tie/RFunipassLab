; ModuleID = '/tmp/tmpwsc_wcra.cpp'
source_filename = "/tmp/tmpwsc_wcra.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%d%d%d\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"YES\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"NO\0A\00", align 1

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_Z3dayi(i32 noundef %m) #0 {
entry:
  %m.addr = alloca i32, align 4
  %d = alloca i32, align 4
  store i32 %m, ptr %m.addr, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %d) #4
  store i32 0, ptr %d, align 4, !tbaa !5
  %0 = load i32, ptr %m.addr, align 4, !tbaa !5
  switch i32 %0, label %sw.epilog [
    i32 12, label %sw.bb
    i32 11, label %sw.bb1
    i32 10, label %sw.bb3
    i32 9, label %sw.bb5
    i32 8, label %sw.bb7
    i32 7, label %sw.bb9
    i32 6, label %sw.bb11
    i32 5, label %sw.bb13
    i32 4, label %sw.bb15
    i32 3, label %sw.bb17
    i32 2, label %sw.bb19
  ]

sw.bb:                                            ; preds = %entry
  %1 = load i32, ptr %d, align 4, !tbaa !5
  %add = add nsw i32 %1, 30
  store i32 %add, ptr %d, align 4, !tbaa !5
  br label %sw.bb1

sw.bb1:                                           ; preds = %entry, %sw.bb
  %2 = load i32, ptr %d, align 4, !tbaa !5
  %add2 = add nsw i32 %2, 31
  store i32 %add2, ptr %d, align 4, !tbaa !5
  br label %sw.bb3

sw.bb3:                                           ; preds = %entry, %sw.bb1
  %3 = load i32, ptr %d, align 4, !tbaa !5
  %add4 = add nsw i32 %3, 30
  store i32 %add4, ptr %d, align 4, !tbaa !5
  br label %sw.bb5

sw.bb5:                                           ; preds = %entry, %sw.bb3
  %4 = load i32, ptr %d, align 4, !tbaa !5
  %add6 = add nsw i32 %4, 31
  store i32 %add6, ptr %d, align 4, !tbaa !5
  br label %sw.bb7

sw.bb7:                                           ; preds = %entry, %sw.bb5
  %5 = load i32, ptr %d, align 4, !tbaa !5
  %add8 = add nsw i32 %5, 31
  store i32 %add8, ptr %d, align 4, !tbaa !5
  br label %sw.bb9

sw.bb9:                                           ; preds = %entry, %sw.bb7
  %6 = load i32, ptr %d, align 4, !tbaa !5
  %add10 = add nsw i32 %6, 30
  store i32 %add10, ptr %d, align 4, !tbaa !5
  br label %sw.bb11

sw.bb11:                                          ; preds = %entry, %sw.bb9
  %7 = load i32, ptr %d, align 4, !tbaa !5
  %add12 = add nsw i32 %7, 31
  store i32 %add12, ptr %d, align 4, !tbaa !5
  br label %sw.bb13

sw.bb13:                                          ; preds = %entry, %sw.bb11
  %8 = load i32, ptr %d, align 4, !tbaa !5
  %add14 = add nsw i32 %8, 30
  store i32 %add14, ptr %d, align 4, !tbaa !5
  br label %sw.bb15

sw.bb15:                                          ; preds = %entry, %sw.bb13
  %9 = load i32, ptr %d, align 4, !tbaa !5
  %add16 = add nsw i32 %9, 31
  store i32 %add16, ptr %d, align 4, !tbaa !5
  br label %sw.bb17

sw.bb17:                                          ; preds = %entry, %sw.bb15
  %10 = load i32, ptr %d, align 4, !tbaa !5
  %add18 = add nsw i32 %10, 28
  store i32 %add18, ptr %d, align 4, !tbaa !5
  br label %sw.bb19

sw.bb19:                                          ; preds = %entry, %sw.bb17
  %11 = load i32, ptr %d, align 4, !tbaa !5
  %add20 = add nsw i32 %11, 31
  store i32 %add20, ptr %d, align 4, !tbaa !5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb19, %entry
  %12 = load i32, ptr %d, align 4, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 4, ptr %d) #4
  ret i32 %12
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #2 {
entry:
  %retval = alloca i32, align 4
  %n = alloca i32, align 4
  %y = alloca i32, align 4
  %m1 = alloca i32, align 4
  %m2 = alloca i32, align 4
  %d1 = alloca i32, align 4
  %d2 = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %y) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %m1) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %m2) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %d1) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %d2) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %n)
  br label %while.cond

while.cond:                                       ; preds = %if.end20, %entry
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %dec = add nsw i32 %0, -1
  store i32 %dec, ptr %n, align 4, !tbaa !5
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.1, ptr noundef %y, ptr noundef %m1, ptr noundef %m2)
  %1 = load i32, ptr %m1, align 4, !tbaa !5
  %call2 = call noundef i32 @_Z3dayi(i32 noundef %1)
  store i32 %call2, ptr %d1, align 4, !tbaa !5
  %2 = load i32, ptr %m2, align 4, !tbaa !5
  %call3 = call noundef i32 @_Z3dayi(i32 noundef %2)
  store i32 %call3, ptr %d2, align 4, !tbaa !5
  %3 = load i32, ptr %y, align 4, !tbaa !5
  %rem = srem i32 %3, 4
  %cmp = icmp eq i32 %rem, 0
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %while.body
  %4 = load i32, ptr %y, align 4, !tbaa !5
  %rem4 = srem i32 %4, 100
  %cmp5 = icmp ne i32 %rem4, 0
  br i1 %cmp5, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %while.body
  %5 = load i32, ptr %y, align 4, !tbaa !5
  %rem6 = srem i32 %5, 400
  %cmp7 = icmp eq i32 %rem6, 0
  br i1 %cmp7, label %if.then, label %if.end14

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  %6 = load i32, ptr %m1, align 4, !tbaa !5
  %cmp8 = icmp sgt i32 %6, 2
  br i1 %cmp8, label %if.then9, label %if.end

if.then9:                                         ; preds = %if.then
  %7 = load i32, ptr %d1, align 4, !tbaa !5
  %inc = add nsw i32 %7, 1
  store i32 %inc, ptr %d1, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then9, %if.then
  %8 = load i32, ptr %m2, align 4, !tbaa !5
  %cmp10 = icmp sgt i32 %8, 2
  br i1 %cmp10, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end
  %9 = load i32, ptr %d2, align 4, !tbaa !5
  %inc12 = add nsw i32 %9, 1
  store i32 %inc12, ptr %d2, align 4, !tbaa !5
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %lor.lhs.false
  %10 = load i32, ptr %d1, align 4, !tbaa !5
  %11 = load i32, ptr %d2, align 4, !tbaa !5
  %sub = sub nsw i32 %10, %11
  %rem15 = srem i32 %sub, 7
  %cmp16 = icmp eq i32 %rem15, 0
  br i1 %cmp16, label %if.then17, label %if.else

if.then17:                                        ; preds = %if.end14
  %call18 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %if.end20

if.else:                                          ; preds = %if.end14
  %call19 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  br label %if.end20

if.end20:                                         ; preds = %if.else, %if.then17
  br label %while.cond, !llvm.loop !9

while.end:                                        ; preds = %while.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %d2) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %d1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %m2) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %m1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %y) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #4
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
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
