; ModuleID = '<stdin>'
source_filename = "/tmp/tmpl3sedmew.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [4 x i8] c"%lf\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"no\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %a = alloca [501 x i8], align 16
  %b = alloca [501 x i8], align 16
  %c = alloca double, align 8
  call void @llvm.lifetime.start.p0(i64 noundef 501, ptr noundef nonnull align 16 %a) #5
  call void @llvm.lifetime.start.p0(i64 noundef 501, ptr noundef nonnull align 16 %b) #5
  call void @llvm.lifetime.start.p0(i64 noundef 8, ptr noundef nonnull align 8 %c) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 8 %c)
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %a)
  %call3 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %b)
  %call5 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %a) #6
  %conv = uitofp i64 %call5 to double
  %call7 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %b) #6
  %conv8 = uitofp i64 %call7 to double
  %cmp = fcmp une double %conv, %conv8
  %t.0 = zext i1 %cmp to i32
  br label %for.cond

for.cond:                                         ; preds = %if.end29, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end29 ], [ 0, %entry ]
  %t.1 = phi i32 [ %t.2, %if.end29 ], [ %t.0, %entry ]
  %0 = trunc nuw nsw i64 %indvars.iv to i32
  %conv9 = uitofp nneg i32 %0 to double
  %cmp10 = fcmp olt double %conv9, %conv
  br i1 %cmp10, label %for.body, label %for.cond30

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [501 x i8], ptr %a, i64 0, i64 %indvars.iv
  %1 = load i8, ptr %arrayidx, align 1, !tbaa !5, !invariant.load !8
  switch i8 %1, label %if.then27 [
    i8 84, label %if.end29
    i8 67, label %if.end29
    i8 71, label %if.end29
    i8 65, label %if.end29
  ]

if.then27:                                        ; preds = %for.body
  %add28 = add nsw i32 %t.1, 1
  br label %if.end29

if.end29:                                         ; preds = %for.body, %for.body, %for.body, %for.body, %if.then27
  %t.2 = phi i32 [ %add28, %if.then27 ], [ %t.1, %for.body ], [ %t.1, %for.body ], [ %t.1, %for.body ], [ %t.1, %for.body ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond

for.cond30:                                       ; preds = %for.cond, %if.end55
  %indvars.iv21 = phi i64 [ %indvars.iv.next22, %if.end55 ], [ 0, %for.cond ]
  %t.3 = phi i32 [ %t.4, %if.end55 ], [ %t.1, %for.cond ]
  %2 = trunc nuw nsw i64 %indvars.iv21 to i32
  %conv31 = uitofp nneg i32 %2 to double
  %cmp32 = fcmp olt double %conv31, %conv8
  br i1 %cmp32, label %for.body33, label %for.end58

for.body33:                                       ; preds = %for.cond30
  %arrayidx35 = getelementptr inbounds nuw [501 x i8], ptr %b, i64 0, i64 %indvars.iv21
  %3 = load i8, ptr %arrayidx35, align 1, !tbaa !5, !invariant.load !8
  switch i8 %3, label %if.then53 [
    i8 84, label %if.end55
    i8 67, label %if.end55
    i8 71, label %if.end55
    i8 65, label %if.end55
  ]

if.then53:                                        ; preds = %for.body33
  %add54 = add nsw i32 %t.3, 1
  br label %if.end55

if.end55:                                         ; preds = %for.body33, %for.body33, %for.body33, %for.body33, %if.then53
  %t.4 = phi i32 [ %add54, %if.then53 ], [ %t.3, %for.body33 ], [ %t.3, %for.body33 ], [ %t.3, %for.body33 ], [ %t.3, %for.body33 ]
  %indvars.iv.next22 = add nuw nsw i64 %indvars.iv21, 1
  br label %for.cond30

for.end58:                                        ; preds = %for.cond30
  %cmp59.not = icmp eq i32 %t.3, 0
  br i1 %cmp59.not, label %for.cond62, label %if.end85

for.cond62:                                       ; preds = %for.end58, %for.body65
  %indvars.iv24 = phi i64 [ %indvars.iv.next25, %for.body65 ], [ 0, %for.end58 ]
  %n.0 = phi double [ %n.1, %for.body65 ], [ 0.000000e+00, %for.end58 ]
  %4 = trunc nuw nsw i64 %indvars.iv24 to i32
  %conv63 = uitofp nneg i32 %4 to double
  %cmp64 = fcmp olt double %conv63, %conv8
  br i1 %cmp64, label %for.body65, label %for.end78

for.body65:                                       ; preds = %for.cond62
  %arrayidx67 = getelementptr inbounds nuw [501 x i8], ptr %a, i64 0, i64 %indvars.iv24
  %5 = load i8, ptr %arrayidx67, align 1, !tbaa !5, !invariant.load !8
  %arrayidx70 = getelementptr inbounds nuw [501 x i8], ptr %b, i64 0, i64 %indvars.iv24
  %6 = load i8, ptr %arrayidx70, align 1, !tbaa !5, !invariant.load !8
  %cmp72 = icmp eq i8 %5, %6
  %add74 = fadd double %n.0, 1.000000e+00
  %n.1 = select i1 %cmp72, double %add74, double %n.0
  %indvars.iv.next25 = add nuw nsw i64 %indvars.iv24, 1
  br label %for.cond62

for.end78:                                        ; preds = %for.cond62
  %div = fdiv double %n.0, %conv8
  %7 = load double, ptr %c, align 8, !tbaa !9
  %cmp79 = fcmp ogt double %div, %7
  %.str.3..str.4 = select i1 %cmp79, ptr @.str.3, ptr @.str.4
  br label %if.end85

if.end85:                                         ; preds = %for.end78, %for.end58
  %.str.3.sink = phi ptr [ @.str.2, %for.end58 ], [ %.str.3..str.4, %for.end78 ]
  %call81 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %.str.3.sink)
  call void @llvm.lifetime.end.p0(i64 noundef 8, ptr noundef nonnull %c) #7
  call void @llvm.lifetime.end.p0(i64 noundef 501, ptr noundef nonnull %b) #7
  call void @llvm.lifetime.end.p0(i64 noundef 501, ptr noundef nonnull %a) #7
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) local_unnamed_addr #3

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #5 = { nofree nounwind }
attributes #6 = { nounwind willreturn memory(read) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.1.8 (https://github.com/llvm/llvm-project.git 2078da43e25a4623cab2d0d60decddf709aaea28)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{}
!9 = !{!10, !10, i64 0}
!10 = !{!"double", !6, i64 0}
