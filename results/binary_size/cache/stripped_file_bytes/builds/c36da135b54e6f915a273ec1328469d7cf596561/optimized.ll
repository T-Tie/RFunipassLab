; ModuleID = '<stdin>'
source_filename = "/tmp/tmp0czara1s.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%d %d\00", align 1
@stdin = external local_unnamed_addr global ptr, align 8
@str = private unnamed_addr constant [6 x i8] c"worse\00", align 1
@str.1 = private unnamed_addr constant [7 x i8] c"better\00", align 1
@str.2 = private unnamed_addr constant [5 x i8] c"same\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %all = alloca i32, align 4
  %valid = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %all) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %valid) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %all, ptr noundef nonnull %valid)
  %0 = load i32, ptr %valid, align 4, !tbaa !5
  %conv = sitofp i32 %0 to double
  %1 = load i32, ptr %all, align 4, !tbaa !5
  %conv2 = sitofp i32 %1 to double
  %div = fdiv double %conv, %conv2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 1, %entry ], [ %inc, %for.inc ]
  %2 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %i.0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call3 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %all, ptr noundef nonnull %valid)
  %3 = load i32, ptr %valid, align 4, !tbaa !5
  %conv4 = sitofp i32 %3 to double
  %4 = load i32, ptr %all, align 4, !tbaa !5
  %conv5 = sitofp i32 %4 to double
  %div6 = fdiv double %conv4, %conv5
  %sub = fsub double %div, %div6
  %cmp7 = fcmp ogt double %sub, 5.000000e-02
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %sub9 = fsub double %div6, %div
  %cmp10 = fcmp ogt double %sub9, 5.000000e-02
  br i1 %cmp10, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end
  %puts8 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end
  %cmp15 = fcmp olt double %sub, 5.000000e-02
  %cmp17 = fcmp olt double %sub9, 5.000000e-02
  %or.cond = and i1 %cmp15, %cmp17
  br i1 %or.cond, label %if.then18, label %for.inc

if.then18:                                        ; preds = %if.end13
  %puts9 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %for.inc

for.inc:                                          ; preds = %if.end13, %if.then18
  %inc = add nuw nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %5 = load ptr, ptr @stdin, align 8, !tbaa !12
  %call.i = call i32 @getc(ptr noundef %5)
  %6 = load ptr, ptr @stdin, align 8, !tbaa !12
  %call.i10 = call i32 @getc(ptr noundef %6)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %valid) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %all) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #5
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
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
!12 = !{!13, !13, i64 0}
!13 = !{!"p1 _ZTS8_IO_FILE", !14, i64 0}
!14 = !{!"any pointer", !7, i64 0}
