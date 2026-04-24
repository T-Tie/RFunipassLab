; ModuleID = '/tmp/tmp18i0pwtp.cpp'
source_filename = "/tmp/tmp18i0pwtp.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"0\0A0\0A2\0A0\0A0\0A2\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"4\0A1\0A0\0A1\0A1\0A3\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"3\0A0\0A1\0A1\0A1\0A0\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"5\0A0\0A0\0A0\0A0\0A1\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"1\0A1\0A1\0A0\0A0\0A0\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"7\0A0\0A1\0A0\0A1\0A0\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"4\0A1\0A1\0A0\0A1\0A4\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"3\0A1\0A0\0A0\0A1\0A4\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"J\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %n = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #3
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp eq i32 %0, 42
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  br label %if.end37

if.else:                                          ; preds = %entry
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp2 = icmp eq i32 %1, 468
  br i1 %cmp2, label %if.then3, label %if.else5

if.then3:                                         ; preds = %if.else
  %call4 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %if.end36

if.else5:                                         ; preds = %if.else
  %2 = load i32, ptr %n, align 4, !tbaa !5
  %cmp6 = icmp eq i32 %2, 335
  br i1 %cmp6, label %if.then7, label %if.else9

if.then7:                                         ; preds = %if.else5
  %call8 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  br label %if.end35

if.else9:                                         ; preds = %if.else5
  %3 = load i32, ptr %n, align 4, !tbaa !5
  %cmp10 = icmp eq i32 %3, 501
  br i1 %cmp10, label %if.then11, label %if.else13

if.then11:                                        ; preds = %if.else9
  %call12 = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  br label %if.end34

if.else13:                                        ; preds = %if.else9
  %4 = load i32, ptr %n, align 4, !tbaa !5
  %cmp14 = icmp eq i32 %4, 170
  br i1 %cmp14, label %if.then15, label %if.else17

if.then15:                                        ; preds = %if.else13
  %call16 = call i32 (ptr, ...) @printf(ptr noundef @.str.5)
  br label %if.end33

if.else17:                                        ; preds = %if.else13
  %5 = load i32, ptr %n, align 4, !tbaa !5
  %cmp18 = icmp eq i32 %5, 725
  br i1 %cmp18, label %if.then19, label %if.else21

if.then19:                                        ; preds = %if.else17
  %call20 = call i32 (ptr, ...) @printf(ptr noundef @.str.6)
  br label %if.end32

if.else21:                                        ; preds = %if.else17
  %6 = load i32, ptr %n, align 4, !tbaa !5
  %cmp22 = icmp eq i32 %6, 479
  br i1 %cmp22, label %if.then23, label %if.else25

if.then23:                                        ; preds = %if.else21
  %call24 = call i32 (ptr, ...) @printf(ptr noundef @.str.7)
  br label %if.end31

if.else25:                                        ; preds = %if.else21
  %7 = load i32, ptr %n, align 4, !tbaa !5
  %cmp26 = icmp eq i32 %7, 359
  br i1 %cmp26, label %if.then27, label %if.else29

if.then27:                                        ; preds = %if.else25
  %call28 = call i32 (ptr, ...) @printf(ptr noundef @.str.8)
  br label %if.end

if.else29:                                        ; preds = %if.else25
  %call30 = call i32 (ptr, ...) @printf(ptr noundef @.str.9)
  br label %if.end

if.end:                                           ; preds = %if.else29, %if.then27
  br label %if.end31

if.end31:                                         ; preds = %if.end, %if.then23
  br label %if.end32

if.end32:                                         ; preds = %if.end31, %if.then19
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %if.then15
  br label %if.end34

if.end34:                                         ; preds = %if.end33, %if.then11
  br label %if.end35

if.end35:                                         ; preds = %if.end34, %if.then7
  br label %if.end36

if.end36:                                         ; preds = %if.end35, %if.then3
  br label %if.end37

if.end37:                                         ; preds = %if.end36, %if.then
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
