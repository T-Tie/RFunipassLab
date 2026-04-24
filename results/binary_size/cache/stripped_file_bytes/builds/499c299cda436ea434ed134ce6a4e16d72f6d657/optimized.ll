; ModuleID = '<stdin>'
source_filename = "/tmp/tmpib6jlq58.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d,\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %sz = alloca [300 x i32], align 16
  %f = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %n)
  call void @llvm.lifetime.start.p0(i64 noundef 1200, ptr noundef nonnull %sz) #6
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull %f) #6
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %sz)
  %.pr = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %if.end12, %entry
  %0 = phi i32 [ %dec9, %if.end12 ], [ %.pr, %entry ]
  %cmp = icmp sgt i32 %0, 1
  br i1 %cmp, label %if.end12, label %for.cond16

if.end12:                                         ; preds = %for.cond
  %call2 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %f)
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %dec9 = add nsw i32 %1, -1
  store i32 %dec9, ptr %n, align 4, !tbaa !5
  br label %for.cond

for.cond16:                                       ; preds = %for.cond, %if.end31
  %.pre13 = phi i32 [ %.pre, %if.end31 ], [ %0, %for.cond ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end31 ], [ 0, %for.cond ]
  %cmp17 = icmp sgt i32 %.pre13, 0
  br i1 %cmp17, label %for.body18, label %for.end34

for.body18:                                       ; preds = %for.cond16
  %cmp19.not = icmp eq i32 %.pre13, 1
  br i1 %cmp19.not, label %if.end24, label %if.then20

if.then20:                                        ; preds = %for.body18
  %arrayidx22 = getelementptr inbounds nuw [300 x i32], ptr %sz, i64 0, i64 %indvars.iv
  %2 = load i32, ptr %arrayidx22, align 4, !tbaa !5, !invariant.load !9
  %call23 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %2) #6
  %.pre11 = load i32, ptr %n, align 4, !tbaa !5
  br label %if.end24

if.end24:                                         ; preds = %if.then20, %for.body18
  %.pre12 = phi i32 [ %.pre11, %if.then20 ], [ 1, %for.body18 ]
  %sub25 = add nsw i32 %.pre12, -1
  %3 = zext i32 %sub25 to i64
  %cmp26 = icmp eq i64 %indvars.iv, %3
  br i1 %cmp26, label %if.then27, label %if.end31

if.then27:                                        ; preds = %if.end24
  %arrayidx29 = getelementptr inbounds nuw [300 x i32], ptr %sz, i64 0, i64 %indvars.iv
  %4 = load i32, ptr %arrayidx29, align 4, !tbaa !5, !invariant.load !9
  %call30 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %4) #6
  %.pre.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %if.end31

if.end31:                                         ; preds = %if.then27, %if.end24
  %.pre = phi i32 [ %.pre.pre, %if.then27 ], [ %.pre12, %if.end24 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond16

for.end34:                                        ; preds = %for.cond16
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %f) #6
  call void @llvm.lifetime.end.p0(i64 noundef 1200, ptr noundef nonnull %sz) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #6
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #5 = { nofree nounwind }
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
!9 = !{}
