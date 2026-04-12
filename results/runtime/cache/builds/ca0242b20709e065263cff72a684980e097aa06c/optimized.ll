; ModuleID = '<stdin>'
source_filename = "/tmp/tmp42qevryk.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%d%d\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"better\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"worse\0A\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"same\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %k = alloca i32, align 4
  %x = alloca float, align 4
  %y = alloca float, align 4
  %x1 = alloca float, align 4
  %y1 = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %k) #3
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %x) #3
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %y) #3
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %x1) #3
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %y1) #3
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef align 4 %k)
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.1, ptr noundef %x1, ptr noundef %y1)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  %0 = load i32, ptr %k, align 4, !tbaa !5
  %sub = sub nsw i32 %0, 1
  %cmp = icmp slt i32 %i.0, %sub
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call2 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.1, ptr noundef %x, ptr noundef %y)
  %1 = load float, ptr %y, align 4, !tbaa !9
  %2 = load float, ptr %x, align 4, !tbaa !9
  %div = fdiv float %1, %2
  %3 = load float, ptr %y1, align 4, !tbaa !9
  %4 = load float, ptr %x1, align 4, !tbaa !9
  %div3 = fdiv float %3, %4
  %sub4 = fsub float %div, %div3
  %conv = fpext float %sub4 to double
  %cmp5 = fcmp ogt double %conv, 5.000000e-02
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %call6 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %5 = load float, ptr %y, align 4, !tbaa !9
  %6 = load float, ptr %x, align 4, !tbaa !9
  %div7 = fdiv float %5, %6
  %7 = load float, ptr %y1, align 4, !tbaa !9
  %8 = load float, ptr %x1, align 4, !tbaa !9
  %div8 = fdiv float %7, %8
  %sub9 = fsub float %div7, %div8
  %conv10 = fpext float %sub9 to double
  %cmp11 = fcmp olt double %conv10, -5.000000e-02
  br i1 %cmp11, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.end
  %call13 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.end
  %9 = load float, ptr %y, align 4, !tbaa !9
  %10 = load float, ptr %x, align 4, !tbaa !9
  %div15 = fdiv float %9, %10
  %11 = load float, ptr %y1, align 4, !tbaa !9
  %12 = load float, ptr %x1, align 4, !tbaa !9
  %div16 = fdiv float %11, %12
  %sub17 = fsub float %div15, %div16
  %conv18 = fpext float %sub17 to double
  %cmp19 = fcmp ole double %conv18, 5.000000e-02
  br i1 %cmp19, label %land.lhs.true, label %for.inc

land.lhs.true:                                    ; preds = %if.end14
  %cmp24 = fcmp oge double %conv18, -5.000000e-02
  br i1 %cmp24, label %if.then25, label %for.inc

if.then25:                                        ; preds = %land.lhs.true
  %call26 = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  br label %for.inc

for.inc:                                          ; preds = %if.end14, %land.lhs.true, %if.then25
  %inc = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !11

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %y1) #4
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %x1) #4
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %y) #4
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %x) #4
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %k) #4
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
attributes #3 = { nofree nounwind willreturn }
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
!10 = !{!"float", !7, i64 0}
!11 = distinct !{!11, !12, !13}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"llvm.loop.unroll.disable"}
