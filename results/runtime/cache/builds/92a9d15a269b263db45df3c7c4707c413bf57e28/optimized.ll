; ModuleID = '<stdin>'
source_filename = "/tmp/tmpvkxom7f5.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%d%d\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"better\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"worse\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"same\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"better\0A\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"worse\0A\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"same\0A\00", align 1
@str = private unnamed_addr constant [5 x i8] c"same\00", align 1
@str.1 = private unnamed_addr constant [6 x i8] c"worse\00", align 1
@str.2 = private unnamed_addr constant [7 x i8] c"better\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %n)
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull %a) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull %b) #5
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %a, ptr noundef nonnull %b)
  %0 = load i32, ptr %b, align 4, !tbaa !5
  %conv = sitofp i32 %0 to double
  %1 = load i32, ptr %a, align 4, !tbaa !5
  %conv2 = sitofp i32 %1 to double
  %div = fdiv double %conv, %conv2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 1, %entry ], [ %inc, %for.inc ]
  %2 = load i32, ptr %n, align 4, !tbaa !5
  %cmp.not.not = icmp slt i32 %i.0, %2
  br i1 %cmp.not.not, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull %x) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull %y) #5
  %call3 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %x, ptr noundef nonnull %y)
  %3 = load i32, ptr %y, align 4, !tbaa !5
  %conv4 = sitofp i32 %3 to double
  %4 = load i32, ptr %x, align 4, !tbaa !5
  %conv6 = sitofp i32 %4 to double
  %div7 = fdiv double %conv4, %conv6
  %5 = load i32, ptr %n, align 4, !tbaa !5
  %sub8 = add nsw i32 %5, -1
  %cmp9 = icmp eq i32 %i.0, %sub8
  %sub10 = fsub double %div7, %div
  %cmp11 = fcmp ogt double %sub10, 5.000000e-02
  br i1 %cmp9, label %if.then, label %if.else21

if.then:                                          ; preds = %for.body
  br i1 %cmp11, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.then
  %call13 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2)
  br label %for.inc

if.else:                                          ; preds = %if.then
  %sub14 = fsub double %div, %div7
  %cmp15 = fcmp ogt double %sub14, 5.000000e-02
  br i1 %cmp15, label %if.then16, label %if.else18

if.then16:                                        ; preds = %if.else
  %call17 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3)
  br label %for.inc

if.else18:                                        ; preds = %if.else
  %call19 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4)
  br label %for.inc

if.else21:                                        ; preds = %for.body
  br i1 %cmp11, label %if.then24, label %if.else26

if.then24:                                        ; preds = %if.else21
  %puts11 = call i32 @puts(ptr noundef nonnull dereferenceable(1) @str.2) #5
  br label %for.inc

if.else26:                                        ; preds = %if.else21
  %sub27 = fsub double %div, %div7
  %cmp28 = fcmp ogt double %sub27, 5.000000e-02
  br i1 %cmp28, label %if.then29, label %if.else31

if.then29:                                        ; preds = %if.else26
  %puts10 = call i32 @puts(ptr noundef nonnull dereferenceable(1) @str.1) #5
  br label %for.inc

if.else31:                                        ; preds = %if.else26
  %puts = call i32 @puts(ptr noundef nonnull dereferenceable(1) @str) #5
  br label %for.inc

for.inc:                                          ; preds = %if.then16, %if.else18, %if.then12, %if.then29, %if.else31, %if.then24
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %y) #5
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %x) #5
  %inc = add nuw nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %b) #5
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %a) #5
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #5
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) #3

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { nofree nounwind willreturn }
attributes #5 = { nounwind }

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
