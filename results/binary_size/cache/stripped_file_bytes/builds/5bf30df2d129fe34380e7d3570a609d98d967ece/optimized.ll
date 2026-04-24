; ModuleID = '<stdin>'
source_filename = "/tmp/tmpgvijkr2e.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c",%d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %a = alloca [300 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #4
  call void @llvm.lifetime.start.p0(i64 noundef 1200, ptr noundef nonnull align 16 %a) #4
  %call1.peel = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp.peel = icmp sgt i32 %0, 0
  call void @llvm.assume(i1 noundef %cmp.peel)
  br label %for.cond

for.cond:                                         ; preds = %entry, %for.cond
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %a)
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %for.cond, label %for.end29.loopexit, !llvm.loop !9

for.end29.loopexit:                               ; preds = %for.cond
  %.pre = load i32, ptr %a, align 16, !tbaa !5
  %call30 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %.pre)
  %add.ptr35 = getelementptr inbounds nuw i8, ptr %a, i64 4
  %2 = load i32, ptr %add.ptr35, align 4
  %cmp36.not = icmp eq i32 %2, 797
  br label %for.cond31

for.cond31:                                       ; preds = %if.end41, %for.end29.loopexit
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end41 ], [ 1, %for.end29.loopexit ]
  %3 = load i32, ptr %n, align 4, !tbaa !5
  %cmp32 = icmp sgt i32 %3, 1
  br i1 %cmp32, label %for.body33, label %for.end44

for.body33:                                       ; preds = %for.cond31
  br i1 %cmp36.not, label %if.end41, label %if.then37

if.then37:                                        ; preds = %for.body33
  %add.ptr39 = getelementptr inbounds nuw i32, ptr %a, i64 %indvars.iv
  %4 = load i32, ptr %add.ptr39, align 4, !tbaa !5, !invariant.load !11
  %call40 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %4)
  br label %if.end41

if.end41:                                         ; preds = %if.then37, %for.body33
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond31

for.end44:                                        ; preds = %for.cond31
  call void @llvm.lifetime.end.p0(i64 noundef 1200, ptr noundef nonnull %a) #5
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #5
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #3

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
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
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.peeled.count", i32 1}
!11 = !{}
