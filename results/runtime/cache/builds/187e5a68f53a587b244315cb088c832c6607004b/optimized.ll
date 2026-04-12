; ModuleID = '<stdin>'
source_filename = "/tmp/tmphozh3j_e.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%d\0A%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main(i32 noundef %argc, ptr nofree noundef readnone captures(none) %argv) local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %a = alloca [100 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #5
  call void @llvm.lifetime.start.p0(i64 noundef 400, ptr noundef nonnull align 16 %a) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %n)
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv, %1
  br i1 %cmp, label %for.body, label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %for.cond
  %smax34 = call i64 @llvm.smax.i64(i64 %1, i64 noundef 1)
  br label %for.cond5

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %indvars.iv
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond

for.cond5:                                        ; preds = %for.body7, %for.cond2.preheader
  %indvars.iv28 = phi i64 [ %indvars.iv.next29, %for.body7 ], [ 1, %for.cond2.preheader ]
  %index.0 = phi i32 [ %spec.select, %for.body7 ], [ 0, %for.cond2.preheader ]
  %exitcond35.not = icmp eq i64 %indvars.iv28, %smax34
  br i1 %exitcond35.not, label %for.end15, label %for.body7

for.body7:                                        ; preds = %for.cond5
  %arrayidx9 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %indvars.iv28
  %2 = load i32, ptr %arrayidx9, align 4, !tbaa !5, !invariant.load !9
  %idxprom10 = sext i32 %index.0 to i64
  %arrayidx11 = getelementptr inbounds [100 x i32], ptr %a, i64 0, i64 %idxprom10
  %3 = load i32, ptr %arrayidx11, align 4, !tbaa !5, !invariant.load !9
  %cmp12 = icmp sgt i32 %2, %3
  %4 = trunc nuw nsw i64 %indvars.iv28 to i32
  %spec.select = select i1 %cmp12, i32 %4, i32 %index.0
  %indvars.iv.next29 = add nuw nsw i64 %indvars.iv28, 1
  br label %for.cond5

for.end15:                                        ; preds = %for.cond5
  %idxprom16 = sext i32 %index.0 to i64
  %arrayidx17 = getelementptr inbounds [100 x i32], ptr %a, i64 0, i64 %idxprom16
  %5 = load i32, ptr %arrayidx17, align 4, !tbaa !5, !invariant.load !9
  store i32 %5, ptr %a, align 16, !tbaa !5
  %smax = call i64 @llvm.smax.i64(i64 %1, i64 noundef 2)
  br label %for.cond5.1

for.cond5.1:                                      ; preds = %for.body7.1, %for.end15
  %indvars.iv28.1 = phi i64 [ %indvars.iv.next29.1, %for.body7.1 ], [ 2, %for.end15 ]
  %index.0.1 = phi i32 [ %spec.select.1, %for.body7.1 ], [ 1, %for.end15 ]
  %exitcond.not = icmp eq i64 %indvars.iv28.1, %smax
  br i1 %exitcond.not, label %for.end26, label %for.body7.1

for.body7.1:                                      ; preds = %for.cond5.1
  %arrayidx9.1 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %indvars.iv28.1
  %6 = load i32, ptr %arrayidx9.1, align 4, !tbaa !5, !invariant.load !9
  %idxprom10.1 = sext i32 %index.0.1 to i64
  %arrayidx11.1 = getelementptr inbounds [100 x i32], ptr %a, i64 0, i64 %idxprom10.1
  %7 = load i32, ptr %arrayidx11.1, align 4, !tbaa !5, !invariant.load !9
  %cmp12.1 = icmp sgt i32 %6, %7
  %8 = trunc nuw nsw i64 %indvars.iv28.1 to i32
  %spec.select.1 = select i1 %cmp12.1, i32 %8, i32 %index.0.1
  %indvars.iv.next29.1 = add nuw nsw i64 %indvars.iv28.1, 1
  br label %for.cond5.1

for.end26:                                        ; preds = %for.cond5.1
  %idxprom16.1 = sext i32 %index.0.1 to i64
  %arrayidx17.1 = getelementptr inbounds [100 x i32], ptr %a, i64 0, i64 %idxprom16.1
  %9 = load i32, ptr %arrayidx17.1, align 4, !tbaa !5, !invariant.load !9
  %arrayidx19.1 = getelementptr inbounds nuw i8, ptr %a, i64 4
  store i32 %9, ptr %arrayidx19.1, align 4, !tbaa !5
  %call29 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %5, i32 noundef %9)
  call void @llvm.lifetime.end.p0(i64 noundef 400, ptr noundef nonnull %a) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #6
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
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
!9 = !{}
