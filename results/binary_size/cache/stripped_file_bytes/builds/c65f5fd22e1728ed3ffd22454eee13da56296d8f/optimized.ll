; ModuleID = '<stdin>'
source_filename = "/tmp/tmp9fog3c0p.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%d%d\00", align 1
@str = private unnamed_addr constant [7 x i8] c"better\00", align 1
@str.1 = private unnamed_addr constant [6 x i8] c"worse\00", align 1
@str.2 = private unnamed_addr constant [5 x i8] c"same\00", align 1
@switch.table.main = private unnamed_addr constant [3 x ptr] [ptr @str, ptr @str.1, ptr @str.2], align 8

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %result = alloca [100 x i32], align 16
  %temp1 = alloca i32, align 4
  %temp2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #4
  call void @llvm.lifetime.start.p0(i64 400, ptr nonnull %result) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp1) #4
  store i32 0, ptr %temp1, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp2) #4
  store i32 0, ptr %temp2, align 4, !tbaa !5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %temp1, ptr noundef nonnull %temp2)
  %0 = load i32, ptr %temp2, align 4, !tbaa !5
  %conv = sitofp i32 %0 to double
  %1 = load i32, ptr %temp1, align 4, !tbaa !5
  %conv2 = sitofp i32 %1 to double
  %div = fdiv double %conv, %conv2
  %2 = load i32, ptr %n, align 4, !tbaa !5
  %cmp.not.not16 = icmp sgt i32 %2, 1
  br i1 %cmp.not.not16, label %for.body, label %for.end42

for.cond18.preheader:                             ; preds = %for.inc
  %3 = icmp sgt i32 %6, 1
  br i1 %3, label %for.body21, label %for.end42

for.body:                                         ; preds = %entry, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 1, %entry ]
  %call3 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %temp1, ptr noundef nonnull %temp2)
  %4 = load i32, ptr %temp2, align 4, !tbaa !5
  %conv4 = sitofp i32 %4 to double
  %5 = load i32, ptr %temp1, align 4, !tbaa !5
  %conv5 = sitofp i32 %5 to double
  %div6 = fdiv double %conv4, %conv5
  %sub7 = fsub double %div6, %div
  %cmp8 = fcmp ogt double %sub7, 5.000000e-02
  br i1 %cmp8, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %arrayidx = getelementptr inbounds nuw [100 x i32], ptr %result, i64 0, i64 %indvars.iv
  store i32 1, ptr %arrayidx, align 4, !tbaa !5
  br label %for.inc

if.else:                                          ; preds = %for.body
  %sub9 = fsub double %div, %div6
  %cmp10 = fcmp ogt double %sub9, 5.000000e-02
  %arrayidx13 = getelementptr inbounds nuw [100 x i32], ptr %result, i64 0, i64 %indvars.iv
  br i1 %cmp10, label %if.then11, label %if.else14

if.then11:                                        ; preds = %if.else
  store i32 2, ptr %arrayidx13, align 4, !tbaa !5
  br label %for.inc

if.else14:                                        ; preds = %if.else
  store i32 3, ptr %arrayidx13, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %if.then, %if.else14, %if.then11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %6 = load i32, ptr %n, align 4, !tbaa !5
  %7 = sext i32 %6 to i64
  %cmp.not.not = icmp slt i64 %indvars.iv.next, %7
  br i1 %cmp.not.not, label %for.body, label %for.cond18.preheader, !llvm.loop !9

for.body21:                                       ; preds = %for.cond18.preheader, %for.inc40
  %indvars.iv21 = phi i64 [ %indvars.iv.next22, %for.inc40 ], [ 1, %for.cond18.preheader ]
  %arrayidx23 = getelementptr inbounds nuw [100 x i32], ptr %result, i64 0, i64 %indvars.iv21
  %8 = load i32, ptr %arrayidx23, align 4, !tbaa !5
  %switch.tableidx = add i32 %8, -1
  %9 = icmp ult i32 %switch.tableidx, 3
  br i1 %9, label %switch.lookup, label %for.inc40

switch.lookup:                                    ; preds = %for.body21
  %10 = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [3 x ptr], ptr @switch.table.main, i64 0, i64 %10
  %switch.load = load ptr, ptr %switch.gep, align 8
  %puts12 = call i32 @puts(ptr nonnull dereferenceable(1) %switch.load)
  br label %for.inc40

for.inc40:                                        ; preds = %for.body21, %switch.lookup
  %indvars.iv.next22 = add nuw nsw i64 %indvars.iv21, 1
  %11 = load i32, ptr %n, align 4, !tbaa !5
  %12 = sext i32 %11 to i64
  %cmp20.not.not = icmp slt i64 %indvars.iv.next22, %12
  br i1 %cmp20.not.not, label %for.body21, label %for.end42, !llvm.loop !12

for.end42:                                        ; preds = %for.inc40, %entry, %for.cond18.preheader
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp2) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp1) #4
  call void @llvm.lifetime.end.p0(i64 400, ptr nonnull %result) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #4
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #3

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
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
!12 = distinct !{!12, !10, !11}
