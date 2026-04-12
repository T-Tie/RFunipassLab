; ModuleID = '<stdin>'
source_filename = "/tmp/tmpteyt61t1.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c",%d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %N = alloca i32, align 4
  %sz = alloca [501 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %N) #5
  call void @llvm.lifetime.start.p0(i64 noundef 2004, ptr noundef nonnull align 16 %sz) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %N)
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %0 = load i32, ptr %N, align 4, !tbaa !5
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %for.body, label %for.cond33.preheader

for.cond33.preheader:                             ; preds = %for.cond
  %1 = load i32, ptr %sz, align 16
  %2 = and i32 %1, 1
  %cmp39.not = icmp eq i32 %2, 0
  br label %for.cond33

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [501 x i32], ptr %sz, i64 0, i64 %indvars.iv
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond

for.cond33:                                       ; preds = %for.cond33.preheader, %if.end50
  %3 = phi i32 [ %0, %for.cond33.preheader ], [ %.pre, %if.end50 ]
  %indvars.iv9 = phi i64 [ 0, %for.cond33.preheader ], [ %indvars.iv.next10, %if.end50 ]
  %flag.0 = phi i32 [ 0, %for.cond33.preheader ], [ %flag.1, %if.end50 ]
  %cmp34 = icmp sgt i32 %3, 0
  br i1 %cmp34, label %for.body36, label %for.end53

for.body36:                                       ; preds = %for.cond33
  br i1 %cmp39.not, label %if.end50, label %if.then40

if.then40:                                        ; preds = %for.body36
  %cmp41 = icmp eq i32 %flag.0, 0
  %4 = getelementptr inbounds nuw [501 x i32], ptr %sz, i64 0, i64 %indvars.iv9
  %5 = load i32, ptr %4, align 4, !tbaa !5, !invariant.load !9
  %.str..str.1 = select i1 %cmp41, ptr @.str, ptr @.str.1
  %.flag.0 = call i32 @llvm.umax.i32(i32 %flag.0, i32 1)
  %call45 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %.str..str.1, i32 noundef %5)
  br label %if.end50

if.end50:                                         ; preds = %if.then40, %for.body36
  %flag.1 = phi i32 [ %flag.0, %for.body36 ], [ %.flag.0, %if.then40 ]
  %indvars.iv.next10 = add nuw nsw i64 %indvars.iv9, 1
  %.pre = load i32, ptr %N, align 4, !tbaa !5
  br label %for.cond33

for.end53:                                        ; preds = %for.cond33
  call void @llvm.lifetime.end.p0(i64 noundef 2004, ptr noundef nonnull %sz) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %N) #6
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
