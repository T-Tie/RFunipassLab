; ModuleID = '/tmp/tmp0czara1s.cpp'
source_filename = "/tmp/tmp0czara1s.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%d %d\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"worse\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"better\0A\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"same\0A\00", align 1
@stdin = external global ptr, align 8

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %n = alloca i32, align 4
  %all = alloca i32, align 4
  %valid = alloca i32, align 4
  %i = alloca i32, align 4
  %x = alloca double, align 8
  %y = alloca double, align 8
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %all) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %valid) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %x) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %y) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %n)
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.1, ptr noundef %all, ptr noundef %valid)
  %0 = load i32, ptr %valid, align 4, !tbaa !5
  %conv = sitofp i32 %0 to double
  %1 = load i32, ptr %all, align 4, !tbaa !5
  %conv2 = sitofp i32 %1 to double
  %div = fdiv double %conv, %conv2
  store double %div, ptr %x, align 8, !tbaa !9
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %i, align 4, !tbaa !5
  %3 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call3 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.1, ptr noundef %all, ptr noundef %valid)
  %4 = load i32, ptr %valid, align 4, !tbaa !5
  %conv4 = sitofp i32 %4 to double
  %5 = load i32, ptr %all, align 4, !tbaa !5
  %conv5 = sitofp i32 %5 to double
  %div6 = fdiv double %conv4, %conv5
  store double %div6, ptr %y, align 8, !tbaa !9
  %6 = load double, ptr %x, align 8, !tbaa !9
  %7 = load double, ptr %y, align 8, !tbaa !9
  %sub = fsub double %6, %7
  %cmp7 = fcmp ogt double %sub, 5.000000e-02
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %call8 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %8 = load double, ptr %y, align 8, !tbaa !9
  %9 = load double, ptr %x, align 8, !tbaa !9
  %sub9 = fsub double %8, %9
  %cmp10 = fcmp ogt double %sub9, 5.000000e-02
  br i1 %cmp10, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end
  %call12 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end
  %10 = load double, ptr %x, align 8, !tbaa !9
  %11 = load double, ptr %y, align 8, !tbaa !9
  %sub14 = fsub double %10, %11
  %cmp15 = fcmp olt double %sub14, 5.000000e-02
  br i1 %cmp15, label %land.lhs.true, label %if.end20

land.lhs.true:                                    ; preds = %if.end13
  %12 = load double, ptr %y, align 8, !tbaa !9
  %13 = load double, ptr %x, align 8, !tbaa !9
  %sub16 = fsub double %12, %13
  %cmp17 = fcmp olt double %sub16, 5.000000e-02
  br i1 %cmp17, label %if.then18, label %if.end20

if.then18:                                        ; preds = %land.lhs.true
  %call19 = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %land.lhs.true, %if.end13
  br label %for.inc

for.inc:                                          ; preds = %if.end20
  %14 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %14, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !11

for.end:                                          ; preds = %for.cond
  %call21 = call i32 @getchar()
  %call22 = call i32 @getchar()
  call void @llvm.lifetime.end.p0(i64 8, ptr %y) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %x) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %valid) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %all) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #4
  %15 = load i32, ptr %retval, align 4
  ret i32 %15
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) #2

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: inlinehint mustprogress uwtable
define available_externally i32 @getchar() #3 {
entry:
  %0 = load ptr, ptr @stdin, align 8, !tbaa !14
  %call = call i32 @getc(ptr noundef %0)
  ret i32 %call
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare i32 @getc(ptr noundef) #2

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!9 = !{!10, !10, i64 0}
!10 = !{!"double", !7, i64 0}
!11 = distinct !{!11, !12, !13}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"llvm.loop.unroll.disable"}
!14 = !{!15, !15, i64 0}
!15 = !{!"p1 _ZTS8_IO_FILE", !16, i64 0}
!16 = !{!"any pointer", !7, i64 0}
