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
@str = private unnamed_addr constant [7 x i8] c"better\00", align 1
@str.1 = private unnamed_addr constant [6 x i8] c"worse\00", align 1
@str.2 = private unnamed_addr constant [5 x i8] c"same\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %k = alloca i32, align 4
  %x = alloca float, align 4
  %y = alloca float, align 4
  %x1 = alloca float, align 4
  %y1 = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %k) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %x) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %y) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %x1) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %y1) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %k)
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %x1, ptr noundef nonnull %y1)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  %0 = load i32, ptr %k, align 4, !tbaa !5
  %sub = add nsw i32 %0, -1
  %cmp = icmp slt i32 %i.0, %sub
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call2 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %x, ptr noundef nonnull %y)
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
  %puts = call i32 @puts(ptr noundef nonnull dereferenceable(1) @str) #6
  %.pre = load float, ptr %y, align 4, !tbaa !9
  %.pre4 = load float, ptr %x, align 4, !tbaa !9
  %.pre5 = load float, ptr %y1, align 4, !tbaa !9
  %.pre6 = load float, ptr %x1, align 4, !tbaa !9
  %.pre11 = fdiv float %.pre, %.pre4
  %.pre12 = fdiv float %.pre5, %.pre6
  %.pre13 = fsub float %.pre11, %.pre12
  %.pre14 = fpext float %.pre13 to double
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %conv10.pre-phi = phi double [ %.pre14, %if.then ], [ %conv, %for.body ]
  %sub9.pre-phi = phi float [ %.pre13, %if.then ], [ %sub4, %for.body ]
  %cmp11 = fcmp olt double %conv10.pre-phi, -5.000000e-02
  br i1 %cmp11, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.end
  %puts2 = call i32 @puts(ptr noundef nonnull dereferenceable(1) @str.1) #6
  %.pre7 = load float, ptr %y, align 4, !tbaa !9
  %.pre8 = load float, ptr %x, align 4, !tbaa !9
  %.pre9 = load float, ptr %y1, align 4, !tbaa !9
  %.pre10 = load float, ptr %x1, align 4, !tbaa !9
  %.pre15 = fdiv float %.pre7, %.pre8
  %.pre16 = fdiv float %.pre9, %.pre10
  %.pre17 = fsub float %.pre15, %.pre16
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.end
  %sub17.pre-phi = phi float [ %.pre17, %if.then12 ], [ %sub9.pre-phi, %if.end ]
  %5 = call float @llvm.fabs.f32(float %sub17.pre-phi)
  %6 = fpext float %5 to double
  %or.cond = fcmp ugt double %6, 5.000000e-02
  br i1 %or.cond, label %for.inc, label %if.then25

if.then25:                                        ; preds = %if.end14
  %puts3 = call i32 @puts(ptr noundef nonnull dereferenceable(1) @str.2) #6
  br label %for.inc

for.inc:                                          ; preds = %if.end14, %if.then25
  %inc = add nuw nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !11

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %y1) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %x1) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %y) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %x) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %k) #6
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) #2

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nofree nounwind willreturn }
attributes #6 = { nounwind }

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
